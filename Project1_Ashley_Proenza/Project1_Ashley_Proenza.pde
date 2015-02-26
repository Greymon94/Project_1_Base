import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer sou; // variable name;

float x, y;
float angle1 = 0.0;
float angle2 = 0.0;
float segLength = 100;






void setup() {
  // Music Loop
  minim = new Minim(this);
  sou = minim.loadFile("FULLY STACKED [FULL VERSION].mp3");
  sou.loop();
  
  size(500, 500);
  //background(255);
    frameRate(30); 
    
  x = width * 0.600;
  y = height *0.500;
  

  
  
  
  
}








void draw(){
  //Right Arm
  strokeWeight(30);
  stroke(124, 252, 0);
  
  
   background(0);
  
  angle1 = (mouseX/float(width) - 0.5) * -PI;
  angle2 = (mouseY/float(height) - 0.5) * PI;
  
  pushMatrix();
  segment(x, y, angle1); 
  segment(segLength, 0, angle2);
  popMatrix();
  
  
  //Right Foot
  fill(124, 252, 0);
  noStroke();
  rect(287, 430, 30, 20, 7);
 
  
  //Left Foot
  fill(124, 252, 0);
  noStroke();
  rect(180, 430, 30, 20, 7); 
  
  
  //Right leg
  fill(124, 252, 0);
  noStroke();
  rect(265, 350, 30, 100, 7);
  
  
  
   //Left leg
   fill(124, 252, 0);
   noStroke();
   rect(205, 350, 30, 100, 7);
  
  
  // Body
  fill(124, 252, 0);
    ellipse(250, 250, 220, 220); 
  
   //Blink
   if (mousePressed){
     fill(124, 252, 0);
     ellipse(250, 200, 80, 90); // eye
     ellipse(250, 200, 60, 70); // pupil
     ellipse(248, 203, 20, 20); // middle eye hole
   }
     
    
  //eye
 fill(255);
   ellipse(250, 200, 80, 90);
   
   
   
   //pupil
   fill(0);
   ellipse(250, 200, 60, 70);
   
   
   //middle eye hole
   fill(255);
   ellipse(248, 203, 20, 20);
   
   
   //mouth
   beginShape(TRIANGLE_STRIP);
vertex(220, 325);
vertex(230, 260);
vertex(240, 325);
vertex(250, 260);
vertex(260, 325);
vertex(270, 260);
vertex(280, 325);
endShape();
   
   
   
   //horn   
   stroke(0);
   strokeWeight(3);
     triangle(225, 140, 255, 100, 275, 140);
     noStroke(); 
     
     // Right Arm
     stroke(124, 252, 0);
     strokeWeight(30);
     line(30, 390, 150, 255);
     
       //Blink
   if (mousePressed){
     fill(124, 252, 0);
     ellipse(250, 200, 80, 90); // eye
     ellipse(250, 200, 60, 70); // pupil
     ellipse(248, 203, 20, 20); // middle eye hole
   }
   
  
   
  
}

//waveing motion 
void segment(float x, float y, float a) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}


