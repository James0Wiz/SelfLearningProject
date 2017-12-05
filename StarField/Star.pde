class Star {
  float x;
  float y;
  float z;
  float pz;
  float[] c = new float[3];
  
  Star(){
    x = random (-width,width);
    y = random (-height,height);
    z = random(width);
    pz = z;
    c[0] = parseInt(random(255));
    c[1] = parseInt(random(255));
    c[2] = parseInt(random(255));
  }
  
  void update (){
    z = z - 2;
    if(z < 1){
      z = width;
      x = random (-width,width);
      y = random (-height,height);
    }  
  }
  
  void show(){
    fill (c[0],c[1],c[2],600-pz);
    float sx = map (x/z, 0,1,0,width);
    float sy = map (y/z, 0,1,0,height);
    float r = map(z, 0, width, 16,0);

    pz = z ;
    float px = map (x/pz, 0,1,0,width);
    float py = map (y/pz, 0,1,0,height);
    stroke(255);
    line(px,py,sx,sy);
    noStroke();
    ellipse(sx,sy,2*r,2*r);

   
    
  }
}