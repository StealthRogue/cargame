PImage car;
int start = 0;
float player_x = 225;
float player_y = 500;
void setup(){
   size(600,600);
   background(0,175,23);
   car = loadImage("car.png");
   
}
void draw(){
  background(0,175,23);
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
}