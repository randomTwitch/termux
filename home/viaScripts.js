// ==UserScript==
// @name         A/V mute
// @namespace    https://viayoo.com/o6kk4b
// @version      0.1
// @description  try to take over the world!
// @author       You
// @run-at       document-end
// @match        https://m.youtube.com/*
// @match        https://m.twitch.tv/*
// @grant        none
// ==/UserScript==

const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
(async function() {
    'use strict';
    await sleep(24000);
    document.querySelectorAll('audio, video').forEach(media => { media.muted = true; });
    // Your code here...
})();
// ==UserScript==
// @name         youtubeSpeeder
// @namespace    https://viayoo.com/vfthvz
// @version      0.1
// @description  try to take over the world!
// @author       You
// @run-at       document-end
// @match        https://m.youtube.com/*
// @grant        none
// ==/UserScript==

document.addEventListener('focus', handler, true);
const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
(async function() {
    'use strict';
    //await sleep(24000);
    //prompt("Please enter your name:", "Guest");
    // Your code here...
})();
function handler() {
    prompt("Please enter your name:", "Guest");
    const userAgentString = navigator.userAgent;
    alert(userAgentString);
    const video = document.querySelector("video"); video.playbackRate = 2.9; // Sets playback speed to 8x
    
}
