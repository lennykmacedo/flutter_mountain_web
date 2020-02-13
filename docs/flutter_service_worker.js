'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets\AssetManifest.json": "b63aeded37a1e0b88cedf48992b2b1f0",
"/assets\assets\images\background_computer.jpg": "7f8959612706609b1b7754d1fc3005e4",
"/assets\assets\images\background_mobile.jpg": "03940cf803946be13b9f3cf7e2b7f713",
"/assets\FontManifest.json": "b77d8a411faac56ea7a1937ad761563d",
"/assets\fonts\MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets\fonts\Merriweather-Bold.ttf": "9ccb885c9cf8e503d557f15e0b2cbf24",
"/assets\fonts\Merriweather-Light.ttf": "9341552d8cbfd150ac426cbd065c51a0",
"/assets\fonts\Merriweather-Regular.ttf": "c97a9fc29652bb4afcdac68020e5d0f7",
"/assets\LICENSE": "1a80be6c5724a31e6f9c9e06dba53b63",
"/assets\packages\cupertino_icons\assets\CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/icons\Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons\Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/index.html": "a09a75756f462834be68aba890cfbb1e",
"/main.dart.js": "3ee51e258bd9dfaec4f6682eca19141d",
"/manifest.json": "db70d29c0e8a6ce83e514cf428855553"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
