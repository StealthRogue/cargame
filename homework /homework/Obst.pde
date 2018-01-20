class Objective{
float x;
float speed;
float y;


Objective() {
    x = random(255,400);
    speed = random(10);
    y=0;

  }
  void display(){
    noStroke();
    image(rain,x,y);
    }
  
  void move(){
    x += speed;
    if(x > 500 ) x=125;
    
    y += speed;
    if(y > 550) y = 0;
    }
}