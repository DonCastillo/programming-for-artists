size(600, 600);
strokeWeight(10);

// verticals
line(300, 0, 300, 570);  // 1st long
line(500, 0, 500, 600);  // 2nd long
line(70, 320, 70, 600);  // bottom left
line(410, 570, 410, 600); // very bottom

// horizontals
line(0, 30, 300, 30);    // top-left
line(500, 70, 600, 70);  // top-right
line(500, 260, 600, 260); // mid-right
line(0, 320, 600, 320);  // mid section
line(70, 470, 300, 470);  // bottom-middle
line(70, 570, 500, 570); // bottom

// shapes
noFill();
rect(0, 0, 600, 600);

// red
fill(249,79,67);
rect(0, 0, 300, 30);

// blue
fill(42,46,120);
rect(70, 320, 230, 150);

// top black
fill(55,44,58);
rect(500, 0, 100, 70);
rect(410, 570, 90, 30);

fill(235,182,42);
rect(500, 320, 100, 280);
