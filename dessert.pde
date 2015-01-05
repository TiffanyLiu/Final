class Dessert{
  int type;
  float x,y;
  int some_properties_you_can_implement;  
  float speed=3;
  
  Dessert(float x, float y,int type){
    this.x=x;
    this.y=y;
    this.type=type;
  }
  void move(){
    this.y=y+speed;
    
   if(this.y>=640-childrenYsize){
      this.y = dessertY;
      speed=speed+0.5;
      dessert.type=(int) random(3);
   }
  }
  void show(Img img){
       
       switch(type){
         case 0:
              image(img.ccake,this.x,this.y,dessertSize,dessertSize);
              break;
         case 1:
              image(img.scake,this.x,this.y,dessertSize,dessertSize);         
              break;
         case 2:
              image(img.donet,this.x,this.y,dessertSize,dessertSize);         
              break;
         default:
              break;
       }
  }
  
}

