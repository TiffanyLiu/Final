Img img;
Dessert dessert;
Dessert dessert1;
Dessert dessert2;

int childrenX = 20;
int childrenY = 435;
int dessertSize =100;
int dessertX = 85;
int dessertY = 100;
int childrenXsize=250;
int childrenYsize=250;
int cakenum;
int lifeCount;

int game_state ;
final int GAME_INITIAL = 1;
final int GAME_RUN     = 2;
final int GAME_LOSE    = 3;


void setup(){
  size (600,640);
  img = new Img();
  dessert = new Dessert(dessertX,dessertY,0,3,0.6);
  dessert1 = new Dessert(dessertX+155,dessertY,2,4.5,0.3);
  dessert2 = new Dessert(dessertX+310,dessertY,1,6,0.45);
   game_state = 1;
    }

void draw(){
  
  switch(game_state){
   case GAME_INITIAL:
   img.startshow();  
   lifeCount = 3;
   break;
   
   case GAME_RUN:
  img.show();
  life();
  img.show();
  dessert.show(img);
  dessert.move(); 
  dessert1.show(img);
  dessert1.move(); 
  dessert2.show(img);
  dessert2.move(); 
  count();
  break;
   
   case GAME_LOSE :
   img.endshow();
   break;
}
}

void life(){
   if(lifeCount==3){
   image(img.heart,400+50*3,60);}
   if(lifeCount==2){
   image(img.heart,400+50*2,60);}
   if(lifeCount==1){
   image(img.heart,400+50*1,60);}
}
void count(){
  fill(104,37,138);
  text("1000",80,85);
  textSize(30);
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
 
  
  


 
