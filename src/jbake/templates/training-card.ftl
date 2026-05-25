<#assign usdPrice = content.price?replace("$", "")?replace("/h", "")?trim />
<a class="training-card-modern-link" href="/${content.uri}">
  <div class="training-card-modern">
    <h4 class="training-title-modern">${content.title}</h4>
    <p class="training-tech-modern">${content.summary}</p>
    <div class="training-footer-modern">
      <span class="training-price-modern" data-price-usd="${usdPrice}">завантаження...</span>
      <i class="fa-solid fa-arrow-right"></i>
    </div>
  </div>
</a>
