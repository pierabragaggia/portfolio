'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "bece56ce72103532c48af6cc680116a0",
"/": "bece56ce72103532c48af6cc680116a0",
"main.dart.js": "fc21120cb1ac87716150f62abebef726",
"profiloIG.jpg": "80f0c48588a8fe11ff732f307b31fb23",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192%202.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512%202.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "3450c0f1decd9b158aa1189a362b5160",
"assets/bao1.jpeg": "54a667bca0ddb36b3bdcac56ba9b4624",
"assets/wak4%202.jpeg": "ddf51cdd3a19c3e1164204a47a7f1d48",
"assets/mediakit.pdf": "bd37bc7e4914ef804e8a158997304379",
"assets/bao2.JPG": "9319982d0870abf036ac625866f69eb4",
"assets/unive.png": "b00a8cdda04d20d1fc7357e72a7bc5cc",
"assets/unive%202.png": "b00a8cdda04d20d1fc7357e72a7bc5cc",
"assets/profiloIG%202.jpg": "80f0c48588a8fe11ff732f307b31fb23",
"assets/ig2.png": "95194373ffa91414e6e4f3f27c11d97f",
"assets/instagram.png": "cd99e5a6eb1be9cdef8a10576cf05320",
"assets/mouseHint.png": "78189babe54575141d5029027ab857a3",
"assets/profiloCV.jpg": "8c520d8e4176dd4c2fb98d440bfc08e7",
"assets/wak.jpeg": "376f120fd55c7d0cbe3723e44d155a07",
"assets/AmericanTypewriter.ttc": "a44b553eca8f6bffcca5babdc2f5ab60",
"assets/web/assets/bao1.jpeg": "54a667bca0ddb36b3bdcac56ba9b4624",
"assets/web/assets/mediakit.pdf": "bd37bc7e4914ef804e8a158997304379",
"assets/web/assets/youtube%25202.png": "5ed3dd04d5a88eca3439b102c920ffc1",
"assets/web/assets/bao2.JPG": "9319982d0870abf036ac625866f69eb4",
"assets/web/assets/unive.png": "b00a8cdda04d20d1fc7357e72a7bc5cc",
"assets/web/assets/wak%25202.jpeg": "376f120fd55c7d0cbe3723e44d155a07",
"assets/web/assets/ig2.png": "95194373ffa91414e6e4f3f27c11d97f",
"assets/web/assets/instagram.png": "cd99e5a6eb1be9cdef8a10576cf05320",
"assets/web/assets/wak4%25202.jpeg": "ddf51cdd3a19c3e1164204a47a7f1d48",
"assets/web/assets/mouseHint.png": "78189babe54575141d5029027ab857a3",
"assets/web/assets/profiloCV.jpg": "8c520d8e4176dd4c2fb98d440bfc08e7",
"assets/web/assets/wak.jpeg": "376f120fd55c7d0cbe3723e44d155a07",
"assets/web/assets/AmericanTypewriter.ttc": "a44b553eca8f6bffcca5babdc2f5ab60",
"assets/web/assets/bao.jpeg": "b9e2a7a86c87ca0368979034da503bf2",
"assets/web/assets/wak3%25202.jpeg": "93dbbd3e92bcf8060a2c561d0f03a172",
"assets/web/assets/wak2%25202.jpeg": "30d444753053cb4d074d21b45f34f877",
"assets/web/assets/profiloIG.jpg": "80f0c48588a8fe11ff732f307b31fb23",
"assets/web/assets/eo.JPG": "c4ba881fa0453251280cdaf1654704ae",
"assets/web/assets/bompiani.JPG": "587feeca9bf8dca10ce71d80c2319f2a",
"assets/web/assets/unive%25202.png": "b00a8cdda04d20d1fc7357e72a7bc5cc",
"assets/web/assets/dame.jpg": "ee797f142db110f0a7fbea8152259072",
"assets/web/assets/wak4.jpeg": "ddf51cdd3a19c3e1164204a47a7f1d48",
"assets/web/assets/lalalab2.JPG": "1b0abce676be497c111bc0daacbd1c31",
"assets/web/assets/linkedin.png": "87ceb12224dab8b5714faeb50f003f95",
"assets/web/assets/profile.jpg": "8516fdea63771010ba412530ff2b5c73",
"assets/web/assets/lalalab.JPG": "b875ce2ee636ba34272cc7ac33de842b",
"assets/web/assets/youtube.png": "5ed3dd04d5a88eca3439b102c920ffc1",
"assets/web/assets/feltrinelli.JPG": "cefb1f7fb779409b7ffdf44b372a680c",
"assets/web/assets/profiloIG%25202.jpg": "80f0c48588a8fe11ff732f307b31fb23",
"assets/web/assets/pinterest.png": "b1c66aade38b438315d72517ee35c158",
"assets/web/assets/wak2.jpeg": "30d444753053cb4d074d21b45f34f877",
"assets/web/assets/wak3.jpeg": "93dbbd3e92bcf8060a2c561d0f03a172",
"assets/web/assets/cv.pdf": "a844b99a523d13f62cc7ba5d6d34e44a",
"assets/wak2%202.jpeg": "30d444753053cb4d074d21b45f34f877",
"assets/bao.jpeg": "b9e2a7a86c87ca0368979034da503bf2",
"assets/profiloIG.jpg": "80f0c48588a8fe11ff732f307b31fb23",
"assets/eo.JPG": "c4ba881fa0453251280cdaf1654704ae",
"assets/AssetManifest.json": "900fcbd93129bdd001ac84df9d2e22b0",
"assets/bompiani.JPG": "587feeca9bf8dca10ce71d80c2319f2a",
"assets/wak%202.jpeg": "376f120fd55c7d0cbe3723e44d155a07",
"assets/NOTICES": "74bfd532673d31cc4668864f8ae4f94a",
"assets/dame.jpg": "ee797f142db110f0a7fbea8152259072",
"assets/wak4.jpeg": "ddf51cdd3a19c3e1164204a47a7f1d48",
"assets/lalalab2.JPG": "1b0abce676be497c111bc0daacbd1c31",
"assets/FontManifest.json": "00086008889b1079112048888fb6cf50",
"assets/linkedin.png": "87ceb12224dab8b5714faeb50f003f95",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "6a2ddad1092a0a1c326b6d0e738e682b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/outline_material_icons/lib/outline_material_icons.ttf": "6b94994fffd9868330d830fcb18a6026",
"assets/packages/social_media_buttons/fonts/SocialMediaIcons.ttf": "6483bf9fdd106eb77d6f3c04dfe35057",
"assets/profile.jpg": "8516fdea63771010ba412530ff2b5c73",
"assets/lalalab.JPG": "b875ce2ee636ba34272cc7ac33de842b",
"assets/youtube.png": "5ed3dd04d5a88eca3439b102c920ffc1",
"assets/feltrinelli.JPG": "cefb1f7fb779409b7ffdf44b372a680c",
"assets/wak3%202.jpeg": "93dbbd3e92bcf8060a2c561d0f03a172",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/pinterest.png": "b1c66aade38b438315d72517ee35c158",
"assets/wak2.jpeg": "30d444753053cb4d074d21b45f34f877",
"assets/wak3.jpeg": "93dbbd3e92bcf8060a2c561d0f03a172",
"assets/cv.pdf": "a844b99a523d13f62cc7ba5d6d34e44a",
"assets/youtube%202.png": "5ed3dd04d5a88eca3439b102c920ffc1"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/LICENSE",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      // Provide a no-cache param to ensure the latest version is downloaded.
      return cache.addAll(CORE.map((value) => new Request(value, {'cache': 'no-cache'})));
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
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#')) {
    key = '/';
  }
  // If the URL is not the the RESOURCE list, skip the cache.
  if (!RESOURCES[key]) {
    return event.respondWith(fetch(event.request));
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache. Ensure the resources are not cached
        // by the browser for longer than the service worker expects.
        var modifiedRequest = new Request(event.request, {'cache': 'no-cache'});
        return response || fetch(modifiedRequest).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.message == 'skipWaiting') {
    return self.skipWaiting();
  }

  if (event.message = 'downloadOffline') {
    downloadOffline();
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
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.add(resourceKey);
    }
  }
  return Cache.addAll(resources);
}
