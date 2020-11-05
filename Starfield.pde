class Star {   
  double myX, myY, myAngle, mySpeed;
  float mySize;
  int myColor;

  Star() {
    myX = myY = 250.00;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    mySize = (int)(Math.random() * 10) + 5;
  }

  // void move(); moves the stars
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  
  // void show(); shows the stars
  void show() {
    noStroke();
    fill(myColor, 1000);
    ellipse((float) myX, (float)myY, mySize, mySize);
  }

}

class oddballStar extends Star //inherits from Star
 {
   
   oddballStar() {
    myX = myY = 250.00;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    mySize = (int)(Math.random() * 100) + 50;
  }
  
  void move() {
    myX = myX + (int)(Math.random()*5) - 2;
  }
  
  void show() {
    noStroke();
    fill(myColor, 1000);
    ellipse((float) myX, (float) myY, mySize, mySize);
  }
 }
 
 Star [] piece = new Star[1000];
  void setup() {     
    size(500, 500);
    for (int i = 0; i < piece.length; i++) {
      piece[i] = new Star();
      piece[0] = new oddballStar();
    }
  }

void draw() {    
  background(0);
  for (int i = 0; i < piece.length; i++) {
    piece[i].move();
    piece[i].show();
  }
}


