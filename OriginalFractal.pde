
public void setup(){
  frameRate(10);
  size(2000,1300);
  backGround();
  phrog3(centerX,centerY+500,1);

}
void mouseClicked() {
     textSize(128);
     text("DOMAIN EXPANDSION", 400, 120);
     shrine();
     phrogDraw(1000,600,2);
     
     
     
      
}
void draw(){

  
}
void backGround(){
background (0,0,100);
fill(0,100,0);
rect(0,500,2000,800);}void phrog3(int x, int y, float z) {
  fill(204, 255, 204);
   if (Math.random()<.5)
    fill(((int) Math.random())/2,225,((int)Math.random())/4);
  strokeWeight(0);
  ellipse(x, y, 360/z, 300/z); //body
  fill(252, 255, 221); //belly
   if (Math.random()<.5)
    fill(((int) Math.random())/2,200,((int)Math.random())/4);
  ellipse(x, y, 220/z, 220/z);
  fill(((int) Math.random())/2,225,((int)Math.random())/4);
  ellipse(x - (90/z), y - (110/z), 100/z, 100/z); //left eye socket
  ellipse(x + (90/z), y - (110/z), 100/z, 100/z); //right eye socket

  strokeWeight(.5);
  arc(x - (70/z), y + (140/z), 60/z, 80/z, -20, 200, OPEN); //legs
  arc(x + (70/z), y + (140/z), 60/z, 80/z, -20, 200, OPEN);
  noFill();
  strokeWeight(.5);
  fill(((int) Math.random())/2,225,((int)Math.random())/4); //legs

  arc(x - (70/z), y, 60/z, 80/z, -20, 200, OPEN); //left arm
  arc(x + (70/z), y, 60/z, 80/z, -20, 200, OPEN); //right arm
  fill(0, 0, 0);
  ellipse(x - (94/z), y - (120/z), 40/z, 40/z); //left pupil
  ellipse(x + (94/z), y - (120/z), 40/z, 40/z); //right pupil
}public void phrogDraw(int x, int y, float len) 
{
  if (len>=50) //BASE CASE
  ellipse(0,0,0,0);
 else {
   
    phrog3(x,y,len);
    phrogDraw(x,y,len + 1);
    
    //phrogDraw(x-35,y-35,len +1);
    
    
    //RECURSIVE CALL
    
    
}
}int centerX = 1000;
int centerY=150;
void shrine(){ 
   fill (0,0,0);//black

   hornL(0,0,1);
   hornL(-100,50,1);
   hornR(0,0,1);
   hornR(100,50,1);
   hornL(3050,420,.25);
   hornR(2950,420,.25);
   fill (0,0,0);//black
   ellipse(centerX, centerY+600,1600,400);
   stroke(12, 87, 32);//green
   strokeWeight(4);
   triangle(centerX, centerY, centerX-320, centerY+200, centerX+320, centerY+200);
   border(0,0,1);
   stroke(201, 55, 14);//red
   border(0,30,1);
   strokeWeight(0);
   fill(201, 55, 14);
   border(260,205,.8);

   mouths(-410,380,1);
   pillars();
   
   
}

void hornL (int x, int y, float size){
beginShape();
      vertex((centerX-90+x)*size, (centerY-80+y)*size);
      vertex((centerX-150+x)*size, (centerY+y)*size);
      vertex((centerX-160+x)*size, (centerY+130+y)*size);
      vertex((centerX-100+x)*size,(centerY+130+y)*size);
      vertex((centerX-120+x)*size,(centerY+10+y)*size);
  endShape(CLOSE);
}
void hornR (int x, int y, float size){
beginShape();
      vertex((centerX+90+x)*size, (centerY-80+y)*size);
      vertex((centerX+150+x)*size, (centerY+y)*size);
      vertex((centerX+160+x)*size, (centerY+130+y)*size);
      vertex((centerX+100+x)*size,(centerY+130+y)*size);
      vertex((centerX+120+x)*size,(centerY+10+y)*size);
  endShape(CLOSE);
}

void border (int x, int y, float size){
 beginShape();
       vertex((centerX-400+x)*size,(centerY+150+y)*size);
       vertex((centerX-370+x)*size,(centerY+200+y)*size);
       vertex((centerX+370+x)*size,(centerY+200+y)*size);
       vertex((centerX+400+x)*size,(centerY+150+y)*size);
       vertex((centerX+350+x)*size,(centerY+170+y)*size);
       vertex((centerX-350+x)*size,(centerY+170+y)*size);
   endShape();
}
void pillars (){
   
   fill(232, 83, 42);
   rect(680,370,650,50);
   rect(780, 370,50,400);
   rect(1165, 370,50,400);
   fill(91, 105, 95);//grey
   rect(755, 750,100,50);
   rect(1145,750,100,50);
}
void mouths (int x, int y, int flip){
  int w=30;
  int p=10;
  
  for (int i =0; i<6;i++){//top teeth 
      fill(185, 199, 189);
      ellipse(centerX+x+w+p-10, centerY+y+w+10, 35,55);
     
        
      w+=17;
      p+=18;
  }
  w=15;
  p=-5;
  for (int i =0; i<6;i++){//top teeth grey
  
      
      fill(255,255,255);   
      ellipse(centerX+x+w+p, centerY+y+w, 40,60);
        
      w+=17;
      p+=18;
  }
 
  for (int i =0; i<6;i++){//bottom teeth grey 
      fill(185, 199, 189); 
      ellipse(centerX+x+w+p-210, centerY+300+y-w, 35,55);
      w+=2;
      p+=35;
  }
  w=200;
  p=10;
  for (int i =0; i<6;i++){//bottom teeth white 
      fill(255,255,255);
      ellipse(centerX+x+w+p-210, centerY+400+y-w, 40,60);
      w+=2;
      p+=35;
  }

// fill(185, 199, 189); //grey
}
