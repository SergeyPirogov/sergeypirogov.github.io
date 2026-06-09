(function () {
  const FALLBACK_RATE = 42;
  const CACHE_KEY = 'uah_rate';
  const CACHE_TTL = 24 * 60 * 60 * 1000;
  const PAYMENT_API = 'https://payment-proxy-iota.vercel.app/api/generate-payment-url';

  async function getRate() {
    const cached = JSON.parse(localStorage.getItem(CACHE_KEY) || 'null');
    if (cached && Date.now() < cached.exp) return cached.rate;
    try {
      const r = await fetch('https://api.exchangerate-api.com/v4/latest/USD');
      const rate = (await r.json()).rates.UAH;
      localStorage.setItem(CACHE_KEY, JSON.stringify({ rate, exp: Date.now() + CACHE_TTL }));
      return rate;
    } catch {
      console.warn('Failed to fetch exchange rate, using fallback:', FALLBACK_RATE);
      return FALLBACK_RATE;
    }
  }

  function formatUah(uah) {
    return uah.toLocaleString('uk-UA') + ' UAH';
  }

  async function initButtons() {
    const allElements = document.querySelectorAll('[data-price-usd]');
    if (!allElements.length) return;
    const rate = await getRate();
    allElements.forEach(el => {
      const usd = parseFloat(el.dataset.priceUsd);
      const uah = Math.ceil(usd * rate / 10) * 10;
      el.dataset.uahAmount = uah;

      const payAmountSpan = el.querySelector('.pay-amount');
      if (payAmountSpan) {
        payAmountSpan.textContent = formatUah(uah);
      } else {
        el.textContent = formatUah(uah);
      }
    });
  }

  window.handlePortmonePayment = async function (btn) {
    try {
      const emailInput = btn.parentElement.querySelector('.payment-email-input');
      const email = emailInput ? emailInput.value.trim() : '';

      if (!email) {
        if (emailInput) {
          emailInput.focus();
          emailInput.classList.add('is-invalid');
        }
        return;
      }

      btn.disabled = true;

      const rate = await getRate();
      const usd = parseFloat(btn.dataset.priceUsd);
      const amountUah = Math.ceil(usd * rate / 10) * 10;
      const desc = btn.dataset.description;
      const bill = btn.dataset.billNumber + '_' + Date.now();

      // Call backend API to generate secure payment URL
      const response = await fetch(PAYMENT_API, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          amount: amountUah,
          description: desc,
          attribute1: email
        })
      });

      if (!response.ok) {
        throw new Error('Failed to generate payment URL');
      }

      const data = await response.json();
      console.log('Redirecting to Portmone:', data.paymentUrl);
      window.location.href = data.paymentUrl;
    } catch (error) {
      console.error('Payment error:', error);
      btn.disabled = false;
      alert('Помилка при обробці платежу: ' + error.message + '. Спробуйте ще раз.');
    }
  };

  document.addEventListener('DOMContentLoaded', initButtons);
})();
