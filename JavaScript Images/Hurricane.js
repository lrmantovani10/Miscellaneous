noStroke();
translate(200,200);
background(240, 62, 17);
var y = 200;
var dir = 1;
var len = 500;
var angle = 0;

var draw= function() {
    fill(random(0,255), random(0,255),random(0,255));
    rotate(17);
    ellipse(translate*len,-len,4*len,2*len);
    y = y + dir;
    angle = angle + 23;
    len = len/random(1.1,1.001);
};
