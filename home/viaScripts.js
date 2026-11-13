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
//const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
//(async function() {
    //'use strict';
    //await sleep(24000);
    //prompt("Please enter your name:", "Guest");
    // Your code here...
//})();
function handler() {
    //prompt("Please enter your name:", "Guest");
    //const userAgentString = navigator.userAgent;
    //alert(userAgentString);
    const video = document.querySelector("video"); video.playbackRate = 2.94; // Sets playback speed to 8x
    
}

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
// @name         googleTest
// @namespace    https://viayoo.com/wn4z2e
// @version      0.1
// @description  try to take over the world!
// @author       You
// @run-at       document-end
// @match        https://*.google.com/
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Your code here...
    // const bel2 = document.querySelector('#body#head');
    
    var sel = document.createElement("style"); sel.innerText = ".pStyle { color: #2a75d3; font-size: 1.2rem; font-weight: bold; }";
    var hel = document.head; hel.appendChild(sel);

    const del = document.createElement("div");
    const pel = document.createElement("p"); pel.innerText = "test"; pel.className = "pStyle"; pel.id = "pid";
    del.appendChild(pel);
    const bel = document.body; bel.appendChild(del); bel.prepend(del);
    // document.body.appendChild(del);
    // bel2.appendChild(del); bel2.prepend(del);
    alert(bel.innerText);
})();

(async () => {
    var pel = document.getElementById("pid"); await setTimeout( () => pel.removeAttribute("class"),10000);
    var durl = document.URL; var regex = /https\:\/\/www\.google\.com\//
    if ( regex.test(durl) )
    {
        alert(document.URL);
    }
})();

window.onload = function() {
    alert("test");
};

// ==UserScript==
// @name         youtubeSeeker
// @namespace    https://viayoo.com/mi986e
// @version      0.1
// @description  timeSlider
// @author       You
// @run-at       document-end
// @match        https://*.youtube.com/*
// @grant        none
// ==/UserScript==

(function() {
    'use strict';

    // Your code here...
})();
(async () => {
    var durl = document.URL; var regex = /https\:\/\/[a-z]*\.youtube\.com\/[a-z]*/;
    if ( regex.test(durl) )
    {
        var vel = document.querySelector('video');
        vel.addEventListener('seeked', () => {
            //document.cookie = '' + durl + '=' + vel.currentTime + '; max-age=2592000; path=/; SameSite=Lax; Secure';
            //document.cookie = '' + durl + '=' + vel.currentTime + '; max-age=-1; path=/; SameSite=Lax; Secure';
            //document.cookie = '##yc=' + vel.currentTime + '; max-age=2592000; path=/; SameSite=Lax; Secure';
            document.cookie = '#$#' + durl + '=' + '#$#' + vel.currentTime + '; max-age=2592000; path=/; SameSite=Lax; Secure';
            //alert(document.cookie);
        });
        var dc = document.cookie; // null terminated string with semi colons at end
        //var seekTime = dc.search(/\#\#yc\=/g); var seekTime = dc.substring(seekTime); // all cookies after ##... with semicolons
        //var seekTime = seekTime.substring(seekTime.search(/\;/),-99); // required cookie
        //var seekTime = seekTime.substring(seekTime.search(/\=/),+99); // contains = at start
        //var seekTime = seekTime.slice(1,99); vel.currentTime = seekTime;

        var seekTime = dc.search(/\#\$\#https/g); var seekTime = dc.substring(seekTime); // all cookies after ##... with semicolons
        var seekTime = seekTime.substring(seekTime.search(/\;/),-99); // required cookie
        var splitStringArray = seekTime.split("#$#"); var surl = splitStringArray[1].slice(0,splitStringArray[1].length-1);
        if ( surl === document.URL ) vel.currentTime = splitStringArray[2];
        //alert(surl+' '+splitStringArray[2]);
        vel.addEventListener('ended', (event) => {
            if ( dc.includes(surl) )
                document.cookie = '#$#' + durl + '=' + '#$#' + vel.currentTime + '; max-age=-1; path=/; SameSite=Lax; Secure';
                document.exitFullscreen();
                //alert(document.cookie);
        });
        //alert(document.cookie);
    }
    //document.cookie = "userTheme=dark; max-age=2592000; path=/; SameSite=Lax; Secure";
})();
