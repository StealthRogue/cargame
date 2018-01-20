

//otkazah se ot praveneto na collision zashtoto prosto ne moga da razbera function-a

//controls : W A S D
//burza i simple igra, bez nikakva cel zashotot ne mojah da izmislq cel :D

PImage car, background,rain;
Objective[] objectives = new Objective[50]; 
int start = 0;
int score = 0;
float player_x = 250;
float player_y = 500;
void setup(){
   size(600,600);
   background(0,175,23);
   car = loadImage("car.png");
   background = loadImage("bg.png");
   rain = loadImage("tear.png");
   background(175);
   for(int i =0; i <objectives.length; i+=2){
     objectives[i] = new Objective();
   }
   
}
void draw(){
   /*  start = 1;
   textSize(35);
   text("Press any key to start", width/2, height/2);
   if(keyPressed){
     start= 0;
   }*/ //this is not working.. 
  if(start == 0){
  //println(mouseX, mouseY);
  image(background,0,0);
  textSize(20);
  text("Score:", width/4,40);
  text(score, width/4 +65, 40);
  image(car,player_x,player_y);
 if(keyPressed && key== 100){
    player_x = player_x +25; 
   image(car,player_x,player_y);
   keyPressed = false;
 }
 
 if(keyPressed && key == 97){
   player_x = player_x -25;
   image(car,player_x,player_y);
   keyPressed = false;
 }
 
 if(keyPressed && key == 119){
   player_y = player_y - 25;
   image(car,player_x, player_y);
   keyPressed = false;
 }
 
 if(keyPressed && key == 115){
   player_y = player_y +25;
  image(car,player_x, player_y);
  keyPressed = false;
 }
 
 if(player_x <= -1 || player_x <=50){
   player_x = player_x +25;
 }
 if(player_x >= 425){
   player_x = player_x -25;
 }
 if(player_y <= -1) {
   player_y = 500;
 }
 if(player_y > 500){
   player_y= player_y -25;
 }
 if(player_y <= 119){
   score = score+1;
 }
}
  for(int i =0; i< objectives.length; i+=2){
    objectives[i].move();
    objectives[i].display();
  }
}