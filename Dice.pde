//global variables (declare counts of dice rolls 1-6 and total count)
int rollOne, rollTwo, rollThree, rollFour, rollFive, rollSix, total;

void setup()
  {
      size(500,530);
      noLoop();
      textAlign(CENTER);
  }
  void draw() //draw multiple dice
  {

      background(240,240,240);
        for(int i = 35; i <= 450; i+=50){
          for(int j = 25; j <= 450; j+=50){
            Die deuce = new Die(i,j);
            deuce.show();
            deuce.roll();
          }
        }
      //counts text
      textSize(13);
      text("One: " + rollOne, 75,480);
      text("Two: " + rollTwo, 145,480);
      text("Three: " + rollThree, 215,480);
      text("Four: " + rollFour, 285,480);      
      text("Five: " + rollFive, 355,480);      
      text("Six: " + rollSix, 425,480);
      textSize(20);
      text("Total: " + total, 250,510);
  }
  void mousePressed() //set counts to 0 and reroll dice
  {
      redraw();
      rollOne = 0;
      rollTwo = 0;
      rollThree = 0;
      rollFour = 0;
      rollFive = 0;
      rollSix = 0;
      total = 0;
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int xCoord, yCoord, diceRoll;
      Die(int x, int y) //constructor
      {
        //variable initializations
        xCoord = x;
        yCoord = y;
        diceRoll = (int)(Math.random()*6)+1; 
      }
      void roll() //increase count for dice
      {
        total = total + diceRoll;
          if(diceRoll == 1){
            rollOne++;
          } else if(diceRoll == 2){
            rollTwo++;
          } else if(diceRoll == 3){
            rollThree++;
          } else if(diceRoll == 4){
            rollFour++;
          } else if(diceRoll == 5){
            rollFive++;
          } else{
            rollSix++;
          }
          
          
      }
      void show() //show dice
      {
          if(diceRoll == 1){
               fillColor(#FFA2CE);
               ellipse(xCoord+12.5,yCoord+12.5,3,3);
          } else if(diceRoll == 3){
               fillColor(#FFFBA2);
               ellipse(xCoord+12.5,yCoord+12.5,3,3);
               ellipse(xCoord+7.5,yCoord+17.5,3,3);
               ellipse(xCoord+17.5,yCoord+7.5,3,3);                 
          } else if(diceRoll == 5){
               fillColor(#A2CBFF);
               ellipse(xCoord+12.5,yCoord+12.5,3,3); 
               ellipse(xCoord+7.5,yCoord+17.5,3,3);
               ellipse(xCoord+17.5,yCoord+7.5,3,3);                 
               ellipse(xCoord+7.5,yCoord+7.5,3,3);
               ellipse(xCoord+17.5,yCoord+17.5,3,3);            
          } else if (diceRoll == 2){
               fillColor(#FFB95D);
               ellipse(xCoord+7.5,yCoord+17.5,3,3);
               ellipse(xCoord+17.5,yCoord+7.5,3,3);
          } else if(diceRoll == 4){
               fillColor(#A0EA79);
               ellipse(xCoord+7.5,yCoord+17.5,3,3);
               ellipse(xCoord+17.5,yCoord+7.5,3,3);
               ellipse(xCoord+7.5,yCoord+7.5,3,3);
               ellipse(xCoord+17.5,yCoord+17.5,3,3);
          } else {
               fillColor(#CF83FF);
               ellipse(xCoord+7.5,yCoord+17.5,3,3);
               ellipse(xCoord+17.5,yCoord+7.5,3,3);
               ellipse(xCoord+7.5,yCoord+7.5,3,3);
               ellipse(xCoord+17.5,yCoord+17.5,3,3);
               ellipse(xCoord+7.5,yCoord+12.5,3,3);
               ellipse(xCoord+17.5,yCoord+12.5,3,3);
          }
      }               
  
      void fillColor(int colour){ //change colors of dice according to number
        fill(colour);
        rect(xCoord,yCoord,24,24);
        fill(0,0,0);
      }
  }
