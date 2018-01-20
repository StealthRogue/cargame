class Objective{
float x;
float speed;
float y;


Objective() {
    x = random(255,400);
    speed = random(1);
    y=0;

  }
  void display(){
    noStroke();
    rect(x,y,50,120);
    }
  
  void move(){
    x += speed;
    if(x > 500 ) x=125;
    
    y += speed;
    if(y > 550) y = 0;
    }
}