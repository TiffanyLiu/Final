Img img;
Dessert dessert;
int childrenX = 20;
int childrenY = 435;
int dessertSize =100;
int dessertX = 85;
int dessertY = 100;
int childrenXsize=250;
int childrenYsize=250;
int cakenum;

//Game state
int game_state ;
final int GAME_INITIAL = 1;
final int GAME_RUN     = 2;
final int GAME_LOSE    = 3;



void setup(){
  size (600,640);
  img = new Img();
  dessert = new Dessert(dessertX,dessertY,0);
  game_state = 1;
   
    }


void draw(){
  switch(game_state){
   case GAME_INITIAL:
   img.startshow();  
   life = 3;
   break;
   
   case GAME_RUN:
   img.show();
   dessert.show(img);
   dessert.move();
   life();
   count();
   break;
   
   case GAME_LOSE :
   img.endshow();
   break;
  }
}
}

void life(){
   int []life = new int[3];
   for (int n = 0; n < 3; n++ ) {
   life[n] =n;
   image(img.heart,400+50*n,60);
   }
}

void keyPressed() {
  if(key == ENTER &&  (game_state == GAME_INITIAL)){
    game_state = GAME_RUN ;
  }
  if(key == 'z' && (game_state == GAME_RUN)){
    img.boyeat();

  }
  if(key == 'x' && (game_state == GAME_RUN)){
    img.ggirleat();
  }
  if(key == 'c' && (game_state == GAME_RUN)){
    img.rgirleat();
  }
}

   
void count(){
  fill(104,37,138);
  text("1000",80,85);
  textSize(30);
}
 
  
  
  


 
