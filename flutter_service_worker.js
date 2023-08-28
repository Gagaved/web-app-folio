'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/assets/in_mind_logo.png": "c538fe65e16074d50480b509688c0ec3",
"assets/assets/google_play_img.png": "37f35cc42d8799b7723ad3f790c5b39b",
"assets/assets/in_mind_logo_with_background.png": "1c583e5a8dbd152d1cf005ff4d768cfa",
"assets/assets/google_fonts/Roboto-Thin.ttf": "66209ae01f484e46679622dd607fcbc5",
"assets/assets/google_fonts/Roboto-Black.ttf": "d6a6f8878adb0d8e69f9fa2e0b622924",
"assets/assets/google_fonts/Roboto-Medium.ttf": "68ea4734cf86bd544650aee05137d7bb",
"assets/assets/google_fonts/Roboto-Italic.ttf": "cebd892d1acfcc455f5e52d4104f2719",
"assets/assets/google_fonts/Roboto-MediumItalic.ttf": "c16d19c2c0fd1278390a82fc245f4923",
"assets/assets/google_fonts/Roboto-Light.ttf": "881e150ab929e26d1f812c4342c15a7c",
"assets/assets/google_fonts/Roboto-ThinItalic.ttf": "7bcadd0675fe47d69c2d8aaef683416f",
"assets/assets/google_fonts/Roboto-Bold.ttf": "b8e42971dec8d49207a8c8e2b919a6ac",
"assets/assets/google_fonts/Roboto-BlackItalic.ttf": "c3332e3b8feff748ecb0c6cb75d65eae",
"assets/assets/google_fonts/Roboto-LightItalic.ttf": "5788d5ce921d7a9b4fa0eaa9bf7fec8d",
"assets/assets/google_fonts/Roboto-Regular.ttf": "8a36205bd9b83e03af0591a004bc97f4",
"assets/assets/google_fonts/Roboto-BoldItalic.ttf": "fd6e9700781c4aaae877999d09db9e09",
"assets/assets/avatar.png": "f632b981b36723cab05570f623289270",
"assets/assets/terms_of_use.txt": "f097cdffbc987291ee19ea971ca9f972",
"assets/assets/private_policy.txt": "0d6dafe57909f45b0641b4491e1ddddc",
"assets/fonts/MaterialIcons-Regular.otf": "62ec8220af1fb03e1c20cfa38781e17e",
"assets/AssetManifest.json": "b06fd78e2a497415f6da86b5bc868cd7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "2a33cd750ad8b814b2cf589d1a58a0c4",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/NOTICES": "692f78a552847eab21b12438ba7e9f79",
"splash/style-dark.css": "c0f8385592df6f6b3cc32c9cea5b8e27",
"splash/style.css": "8933c6b9b0ba44f67ae7472f9866bad5",
"splash/img/dark-3x.png": "f4fceef7d001a3d6845897a4b889ae84",
"splash/img/dark-2x.png": "b7cd0fa95b1c048440690aa3a792a7a6",
"splash/img/light-1x.png": "0549a2e976a7fb7527a349a3753ff812",
"splash/img/dark-4x.gif": "b522ce5e45a0ceb015ca2e99348f8731",
"splash/img/light-3x.gif": "bc1460be3531514053e7e4144b1404c2",
"splash/img/dark-2x.gif": "beb38ec4fbca59f3d7250b39cf744007",
"splash/img/dark-1x.png": "0549a2e976a7fb7527a349a3753ff812",
"splash/img/light-4x.png": "b322408d32ab30efcba8dc7445e0e8db",
"splash/img/light-2x.gif": "beb38ec4fbca59f3d7250b39cf744007",
"splash/img/light-1x.gif": "bac77a448728ce8c4c22027b345c7c05",
"splash/img/light-4x.gif": "b522ce5e45a0ceb015ca2e99348f8731",
"splash/img/dark-1x.gif": "bac77a448728ce8c4c22027b345c7c05",
"splash/img/light-2x.png": "b7cd0fa95b1c048440690aa3a792a7a6",
"splash/img/dark-4x.png": "b322408d32ab30efcba8dc7445e0e8db",
"splash/img/dark-3x.gif": "bc1460be3531514053e7e4144b1404c2",
"splash/img/light-3x.png": "f4fceef7d001a3d6845897a4b889ae84",
"splash/splash.json": "9e3031b0910a766ea7a8c8dae614e66f",
"splash/style-light.css": "980d30b6cbd1f520d6159fe0310fd70a",
"style.css": "d41d8cd98f00b204e9800998ecf8427e",
"version.json": "e2ea1355f4539788db8a12ac75718a40",
"manifest.json": "31fa5b1291f3cc4face6db2874566176",
"index.html": "4d9910ba023f4634d7b1db6b7ed91df1",
"/": "4d9910ba023f4634d7b1db6b7ed91df1",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"googlec1fb7ebb447390af.html": "73c895d4f298e01b99f04af2ed9b0b40",
"icons/Icon-192.png": "7cd9b224513ec4e0ece210c5d3b48c51",
"icons/Icon-maskable-192.png": "7cd9b224513ec4e0ece210c5d3b48c51",
"icons/Icon-512.png": "77228d312560e6ed384486a3f6d030ea",
"icons/Icon-maskable-512.png": "77228d312560e6ed384486a3f6d030ea",
"main.dart.js": "3b4cfd4161e2a76ceacd478a70a2985c",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
