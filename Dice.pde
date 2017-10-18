Die[] myDice; // This is a global variable
int score = 0;
void setup() {
  noLoop();// make the draw function not loop
  size(800, 800);
  myDice = new Die[9];// tells me that I willhave 9 differetn dice in the program
  int counter = 0;// This variable will be counting the number of Dice
  for (int x = 100; x <=600; x = x + 200) {// places the dice in the right rows
    for (int y = 100; y <= 600; y = y + 200) {// places the dice in the right columns
      myDice[counter] = new Die (x, y);// creates a new dice when counter changes
      counter++;// adds one to counter
    }
  }
}
 void draw() {
   background(220);
    score = 0;
    for (int i = 0; i < 9; i++ ) {
      myDice[i].roll(); // This is where I call the show and roll functions
      myDice[i].show();
    }
    textSize(30);
    text("Sum:", 665, 200);// Theses Funtions create the Text that displays the Score and where it is
    text(score, 750, 200);
  }



void mousePressed() {
 redraw();
}

class Die { //models one single dice cube
  int num; 
  int x; // My class variables
  int y; 




  Die(int myX, int myY) { //constructor
    x = myX; // Declaring the variables to something
    y = myY;
  }

  void roll() {
    num = (int)(Math.random()*6)+1; 
    System.out.print("Rolling the Die"); 
    System.out.println(); 
    System.out.print(num);// print the score,rolling the Die, adn the Num
    System.out.print(score);
  }
  void show() {
    rect(x, y, 100, 100, 7); 
    if (num == 1) { // If statement that draws the dice with one cirlcle if num equals 1
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+50, y+50, 25, 25);
      fill(255);
      score = score +1;
    }
    if (num == 2) {//If statement that draws the dice with 2 cirlcles if num equals 2
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+30, y+30, 25, 25); 
      ellipse(x+70, y+70, 25, 25);
      fill(255);
      score = score + 2;
    }
    if (num == 3) {//If statement that draws the dice with 3 cirlcles if num equals 3
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+25, y+25, 25, 25); 
      ellipse(x+50, y+50, 25, 25); 
      ellipse(x+75, y+75, 25, 25);
      fill(255);
      score = score + 3;
    }
    if (num == 4) {//If statement that draws the dice with 4 cirlcles if num equals 4
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+25, y+25, 25, 25); 
      ellipse(x+25, y+75, 25, 25); 
      ellipse(x+75, y+75, 25, 25); 
      ellipse(x+75, y+25, 25, 25);
      fill(255);
      score = score + 4;
    }
    if (num == 5) {//If statement that draws the dice with 5 cirlcles if num equals 5
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+25, y+25, 25, 25); 
      ellipse(x+25, y+75, 25, 25); 
      ellipse(x+50, y+50, 25, 25); 
      ellipse(x+75, y+75, 25, 25); 
      ellipse(x+75, y+25, 25, 25);
      fill(255);
      score = score + 5;
    }
    if (num == 6) {//If statement that draws the dice with 6 cirlcles if num equals 6
      rect(x, y, 100, 100, 7); 
      fill(0); 
      ellipse(x+25, y+20, 25, 25); 
      ellipse(x+25, y+50, 25, 25); 
      ellipse(x+25, y+80, 25, 25); 
      ellipse(x+75, y+80, 25, 25); 
      ellipse(x+75, y+20, 25, 25); 
      ellipse(x+75, y+50, 25, 25);
      fill(255);
      score = score + 6;
    }
  }
}
