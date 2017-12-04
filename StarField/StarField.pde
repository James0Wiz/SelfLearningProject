
float speed;
Star[] stars = new Star [800];
int backColor = 250;
int backFlag = 1;

void setup(){
  size(800,800);
  for(int i = 0; i < stars.length; i++){
      stars[i] = new Star();
  }
}

void draw (){
  speed = map(mouseX,0,width,0,20);
  if(frameCount%230==0){
     backFlag= - backFlag;
  }
  backColor = backColor + backFlag;
    background (backColor);
    translate(width/2, height/2);
    for (int i = 0; i < stars.length; i++){
      stars[i].update();
      stars[i].show();
    }
}