float circleX = 450;
float circleY = 650;
int bananaX = 325;
int bananaY = 525;
PImage maze;
PImage monke;
PImage banana;
PFont font;
int bananas = 0;
int actualScore = 500;
int[] topScore = {0, 0, 0};
boolean inGame = true;
boolean victory = false;

void setup() {
  size(800, 800);
  background(0);
  strokeWeight(8);
  stroke(255);
  maze = loadImage("Mazerunner127.png");
  monke = loadImage("Monke2.png");
  banana = loadImage("Banana.png");
  font = createFont("MazeFont.TTF", 128);
  textFont(font);
  textSize(40);
}

void draw() {
  if (inGame) {
    image(maze, 0, 0);
    fill(255);
    image(monke, circleX-25, circleY-25);
    stroke(255, 0, 0);
    noStroke();
    stroke(255);
    textSize(30);
    fill(50, 0, 0);
    text("Score: " + actualScore, 15, 60);
    image(banana, bananaX, bananaY);
    fill(255);
  } else {
      background(0);
      if(victory) {
        text("You made it. Congrats!", 48, 240);
        text("Top Score:", 48, 340);
        for(int i = 0; i < topScore.length; i++) {
          text(topScore[i], 48, 370+(i*30));
        }
      } else {
          background(0);
          textSize(17);
          text("You have to collect all of the bananas. Try again.", 48, 240);
          text("Press 'r' to restart the game", CENTER+40, 500);
      }
      text("Press 'r' to restart the game", CENTER+40, 500);
  }
}

void keyPressed() {
  if (inGame) {
      if (keyCode == UP) {
        circleY -= 50;
        actualScore--;
      }
      
      if (keyCode == DOWN) {
        circleY += 50;
        actualScore--;
      }
      
      if (keyCode == LEFT) {
        circleX -= 50;
        actualScore--;
      }
      
      if (keyCode == RIGHT) {
        circleX += 50;
        actualScore--;
      }
      
      if (circleX > 310  && circleX < 390 && circleY > 510 && circleY < 590) {
        bananas = 1;
        bananaX = 425;
        bananaY = 425;
      }
      
      if (circleX > 410  && circleX < 490 && circleY > 410 && circleY < 490 && bananas == 1){
        bananas = 2;
        bananaX = 900;
        bananaY = 900;
      }
      
      if (circleX > 310  && circleX < 390 && circleY < 100 && bananas == 2) {
        finishGame(true);
      }
      
      if (circleX > 310  && circleX < 390 && circleY < 100 && (bananas == 1 || bananas == 0)) {
        finishGame(false);
      }
      
      if (circleX > 700  || circleX < 100 || circleY > 700){
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 200  && circleX < 600 && circleY < 210 && circleY > 190) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 190  && circleX < 800 && circleY < 210 && circleY > 190) {
          circleX = 450;
          circleY = 650; 
      }
      if (circleX > 190  && circleX < 210 && circleY < 410 && circleY > 190) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 390  && circleX < 410 && circleY < 310 && circleY > 190) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 490  && circleX < 610 && circleY < 310 && circleY > 290) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 290  && circleX < 310 && circleY < 610 && circleY > 290) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 390  && circleX < 510 && circleY < 410 && circleY > 390) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 590  && circleX < 700 && circleY < 410 && circleY > 390) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 490  && circleX < 510 && circleY < 510 && circleY > 290) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 190  && circleX < 610 && circleY < 510 && circleY > 490) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 190  && circleX < 210 && circleY < 700 && circleY > 590) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 390  && circleX < 410 && circleY < 700 && circleY > 490) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 490  && circleX < 510 && circleY < 700 && circleY > 590) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 590  && circleX < 610 && circleY < 610 && circleY > 490) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 20  && circleX < 310 && circleY < 110 && circleY > 10) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 10  && circleX < 110) {
          circleX = 450;
          circleY = 650; 
      }
      
      if (circleX > 690  && circleX < 800) {
          circleX = 450;
          circleY = 650; 
      }
      
       if (circleX > 390  && circleX < 800 && circleY > 0 && circleY < 110) {
          circleX = 450;
          circleY = 650; 
      }
      
       if (circleX > 0  && circleX < 410 && circleY > 690 && circleY < 800) {
          circleX = 450;
          circleY = 650; 
      }
      
       if (circleX > 490  && circleX < 800 && circleY > 690 && circleY < 800) {
          circleX = 450;
          circleY = 650; 
      }
  } else {
      if (keyCode == 'r' || keyCode == 'R') {
        restartGame();
      }
  }
}

void finishGame(boolean result) {
    inGame = false;
    victory = result;
    if(victory) {
      topScore = append(topScore, actualScore);
      topScore = sort(topScore);
      topScore = reverse(topScore);
      topScore = shorten(topScore);
    }
}

void restartGame() {
    inGame = true;
    victory = false;
    actualScore = 500;
    bananas = 0;
    bananaX = 325;
    bananaY = 525;
    circleX = 450;
    circleY = 650;
}
