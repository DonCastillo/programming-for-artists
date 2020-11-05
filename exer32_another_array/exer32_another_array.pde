boolean[] choice = new boolean[4];
color[] colors = {#FF0303, #FF03A3, #AA056E, #74064C};

void setup(){
  size(400, 400);
  noStroke();
}


void draw(){
  background(255);
  int space = 50;
  int c = 0;
  
  for(int i = 0; i < choice.length; i++){
    if(choice[i]){
      fill(colors[c]); 
      ellipse(i*100 + space, height/2, 100, 100);
      c++;
    }
  }
}

void keyPressed(){
  if(key=='a'){
    choice[0] = true;
  }
  if(key=='s'){
    choice[1] = true;
  }
  if(key=='d'){
    choice[2] = true;
  }
  if(key=='f'){
    choice[3] = true;
  }
}

void keyReleased(){
  if(key=='a'){
    choice[0] = false;
  }
  if(key=='s'){
    choice[1] = false;
  }
  if(key=='d'){
    choice[2] = false;
  }
  if(key=='f'){
    choice[3] = false;
  }
}
