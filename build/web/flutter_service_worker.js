'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "0582921cb98c67955d5f1fc767b4a54a",
"assets/AssetManifest.bin.json": "0c5ebff3d4e2e80ef5c6d8dfcc817daf",
"assets/AssetManifest.json": "c0dede45de5c264d622812ef4498d275",
"assets/assets/icons_dark/activity_outlined_dark.png": "658129fc383df75cb6f4d464c2e8d69f",
"assets/assets/icons_dark/archive_outlined_dark.png": "98271e1f3b3273697078079d4fa074c2",
"assets/assets/icons_dark/camera_outlined_dark.png": "1fe5df21874ee868f5e808da856e646c",
"assets/assets/icons_dark/close_friends_outlined_dark.png": "ade415822460bda7de41e3d4c85274a5",
"assets/assets/icons_dark/comment_outlined_dark.png": "d2d0328f573916ce12f3a0426745d88d",
"assets/assets/icons_dark/discover_outlined_dark.png": "a92ca8f0ded9c935176beab6f8c4877d",
"assets/assets/icons_dark/facebook_outlined_dark.png": "3a5b3d45ef0ef6f4bdb19415f7b42172",
"assets/assets/icons_dark/grid_outlined_dark.png": "74c1ecdbd39c12ee0502f5a31ebec738",
"assets/assets/icons_dark/home_filled_dark.png": "7c233235d218993e1d0da22bf79c0078",
"assets/assets/icons_dark/home_outlined_dark.png": "24e7b6e01153c2ddaa5aa6093fd08a80",
"assets/assets/icons_dark/igtv_filled_dark.png": "6a50c7f814011ccbe9148ada0e10e565",
"assets/assets/icons_dark/igtv_outlined_dark.png": "c39a40c40678595c7d31e08aa1dac0d9",
"assets/assets/icons_dark/like_filled_dark.png": "e3f18c5022c9d9dc1585e61be17d76cc",
"assets/assets/icons_dark/like_outlined_dark.png": "b337a9b0df1fbeb1d622e20d389778f9",
"assets/assets/icons_dark/live_outlined_dark.png": "d20f3c6d2175669487846bd1814affe6",
"assets/assets/icons_dark/lock_filled_dark.png": "7ba08bb2bf84ad0ff5bc272dbb03411b",
"assets/assets/icons_dark/messenger_outlined_dark.png": "01188c090c18101a10e183afa2ec1669",
"assets/assets/icons_dark/nametag_outlined_dark.png": "a1b6fee1e54c019d0a4ead9863ad96af",
"assets/assets/icons_dark/new_post_dark.png": "d58cd3441d86e4ca7ca2d79853cf307a",
"assets/assets/icons_dark/save_outlined_dark.png": "dacac370eb406e6d860dee91754b90cb",
"assets/assets/icons_dark/search_filled_dark.png": "d59bcbb0470b29ae6fbd14bedeb7f401",
"assets/assets/icons_dark/search_outlined_dark.png": "a919b4e190dbbab76b8aa031058f7e55",
"assets/assets/icons_dark/settings_outlined_dark.png": "6574de712a1d26ac470dbfe4991d6603",
"assets/assets/icons_dark/shop_filled_dark.png": "2af71034eacf39810264dc0b4d4bc583",
"assets/assets/icons_dark/tags_outlined_dark.png": "d10fa9c6ac412d37739c9b5840ab1ce4",
"assets/assets/icons_light/activity_outlined.png": "21a537f9049da0ee42b6800f50f035c8",
"assets/assets/icons_light/add_outlined.png": "a192651d7e1b9931dd180c1b9aa38a9d",
"assets/assets/icons_light/archive_outlined.png": "f6b1834ca044b14961cc06e70f9aacae",
"assets/assets/icons_light/camera_change_outlined.png": "86962cbe8c3f3e88b9d7ec80880ef039",
"assets/assets/icons_light/camera_filled.png": "f7fa39072f7d1fc7ef40392e5aa7be54",
"assets/assets/icons_light/camera_filled_blue.png": "dd304bea1dfea7b1cff34c1df170dfb4",
"assets/assets/icons_light/camera_outlined.png": "04e9b994d3559f3847ad29a458ac4ffa",
"assets/assets/icons_light/close_friends_outlined.png": "0fa09e95c063f4f3e9febb84b15edf0c",
"assets/assets/icons_light/close_outlined.png": "9e89fa511eced6a7ccc9b72f7b9a005e",
"assets/assets/icons_light/collage_outlined.png": "468a927d9587249b8a592729e1267cf4",
"assets/assets/icons_light/comment_outlined.png": "8a086c6ec6f5bf49f1ecd8720c5708e4",
"assets/assets/icons_light/discover.png": "879896b9095cb8a4c4b7a4a1cea6618e",
"assets/assets/icons_light/emoji_outlined.png": "0e95b90e9ea0cd5dd06cf693734e9c2c",
"assets/assets/icons_light/facebook_outlined.png": "f5bd693fe91f30ae0586757b7313860f",
"assets/assets/icons_light/face_masks2_outlined.png": "b6d86c6a752fd823c4d2530b349842f7",
"assets/assets/icons_light/face_masks_outlined.png": "d26d0a6c218ccc592a94841dad82c46d",
"assets/assets/icons_light/flash_outlined.png": "0b03130bbf5500fc7bb145eca47b20b4",
"assets/assets/icons_light/gallery_filled.png": "ffc4caeb2259e7a47397468e5347157b",
"assets/assets/icons_light/gallery_outlined.png": "c5286ebb95757dacc63e4306da8d5fe8",
"assets/assets/icons_light/grid_outlined.png": "ba7234ed9dc4348e2b23447ff6788613",
"assets/assets/icons_light/home_filled.png": "0b18b65b9d95cf9ac4cfabc6c54a97ac",
"assets/assets/icons_light/home_outlined.png": "6e07892db87e6cdb63e212f39f92325d",
"assets/assets/icons_light/igtv_filled.png": "10ff60a417c775b6e47173d727b1b0bd",
"assets/assets/icons_light/igtv_outlined.png": "2f88b09c00e440f603f6ba48abebf8fb",
"assets/assets/icons_light/infinity_outlined.png": "b1ca6443e9b1d04a460e2d872d2a387c",
"assets/assets/icons_light/like_filled.png": "d81d5fe99e30af174b91e1524ccc5360",
"assets/assets/icons_light/like_outlined.png": "8df32a80059a8335933f9e14ac6db02a",
"assets/assets/icons_light/live_outlined.png": "e602d793f066bde98adc00038ccf4617",
"assets/assets/icons_light/lock_filled.png": "5f0f7d4a1c4fed8478fb3fdc9a1bdff7",
"assets/assets/icons_light/messenger_outlined.png": "7cb4b70a9190d147144c8b4312c45c39",
"assets/assets/icons_light/nametag_outlined.png": "db96e204ead5624ec49a67168953a9c7",
"assets/assets/icons_light/new_post_outlined.png": "83ab8783238d84f7af67c20305a4a54d",
"assets/assets/icons_light/questions_outlined.png": "5998f5c14613f7e413d2bfe2f39d5a1a",
"assets/assets/icons_light/save_outlined.png": "a9fa7db4ac7333ff7ca846e353303b28",
"assets/assets/icons_light/search_filled.png": "685c3a8389c270a4a10110925603cd74",
"assets/assets/icons_light/search_outlined.png": "93664452fc9cc35905d7a747c1ccac72",
"assets/assets/icons_light/settings_outlined.png": "33dc85cba15cbe045104bb6c5f921e35",
"assets/assets/icons_light/shop_filled.png": "7d1a7589100be639f0f4368659688b26",
"assets/assets/icons_light/tags_outlined.png": "17301513627aea4eb7e77d9e3c38fbf9",
"assets/assets/icons_light/video_filled.png": "ae928c407759a451b480e2f8d2049f6b",
"assets/assets/icons_light/views_filled.png": "f4a73d3f78f9cb5e27a149862c7aebdb",
"assets/assets/images/account_avatar.png": "0e0b34bcfa2ad09eda670f1a4eb20eb1",
"assets/assets/images/app_icon.png": "af635cf8302dd434355623094cd0e366",
"assets/assets/images/dummy_image.png": "60836b7a1fe3f5aaa2ac61b265820ca6",
"assets/assets/images/Instagram_logo.png": "4b0fb2be467c3621a91bf59ef758b756",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "c765b14882d69cdfb192ef0896731d75",
"assets/NOTICES": "2fd160908cb5a1c3a491418668a238cf",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "189d576077b425743d12c7648cb46f2c",
"/": "189d576077b425743d12c7648cb46f2c",
"main.dart.js": "09bebdc64e26e4bc544031410a92bdfa",
"manifest.json": "601072936d7986894200808c01e26d36",
"version.json": "311aab6e31a2bae6ae75835c1de55f80"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.bin.json",
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
