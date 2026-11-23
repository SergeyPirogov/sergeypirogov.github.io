// Gruppetto's old offline worker: on its next update check it drops its saved copies and unregisters itself.
self.addEventListener('install', () => self.skipWaiting());
self.addEventListener('activate', (e) => e.waitUntil(caches.keys()
  .then((keys) => Promise.all(keys.map((k) => caches.delete(k))))
  .then(() => self.registration.unregister())));
