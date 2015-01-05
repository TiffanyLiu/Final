class Img{
      PImage background;
      PImage boy;
      PImage boyopen;
      PImage greengirl;
      PImage greengirlopen;
      PImage redgirl;
      PImage redgirlopen;
      PImage chococake;
      PImage strawcake;
      PImage house;
      PImage heart;
      PImage ccake;
      PImage scake;
      PImage donet;
      
      Img(){
        this.background = loadImage("data/background.png") ;
        this.boy        = loadImage("data/boy.png"); 
        this.greengirl  = loadImage("data/ggirl.png");
        this.redgirl    = loadImage("data/rgirl.png");
        this.house      = loadImage("data/house.png");
        this.heart      = loadImage("data/heart.png");
        this.ccake      = loadImage("data/ccake.png");
        this.scake      = loadImage("data/scake.png");
        this.donet      = loadImage("data/donet.png");
      }
      
      void show(){
       image(this.background,0,0);
       image(this.house,0,0);
       image(this.boy,20,435,250,250);
       image(this.greengirl,childrenX+155,childrenY,childrenXsize,childrenYsize);
       image(this.redgirl,  childrenX+310,childrenY,childrenXsize,childrenYsize);
      }
}
