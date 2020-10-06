float project1 = 96;

void setup(){
  
}

void draw(){
  if(project1 >= 95){
    println("Superb!");
  }
  else if(project1 >= 85){
    println("Wonderful!");
  }
  else if(project1 >= 70){
    println("Some more work needed!");
  }
  else if(project1 >= 60){
    println("Keep Trying");
  }
  else {
    println("It's a process!"); 
  }
}
