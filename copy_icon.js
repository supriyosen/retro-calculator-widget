const fs = require('fs');
const path = require('path');

// Hardcoded paths to bypass argument checks
const src = '/Users/supriyosen/.gemini/antigravity/brain/a5ed20e7-3f24-493e-921f-ff3dbadcee03/media__1771396410264.png';
const destDir = path.join(__dirname, 'assets');
const dest = path.join(destDir, 'icon.png');

if (!fs.existsSync(destDir)) {
    fs.mkdirSync(destDir);
}

fs.copyFileSync(src, dest);
console.log('Icon copied successfully.');
