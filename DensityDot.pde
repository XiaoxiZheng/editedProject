class DensityDot{
  float x;
  float y;
  float w;
  color dotColor;
  float opacity;
  float mouseDist;

 DensityDot(float x, float y, float w, float opacity){
   this.x = x;
   this.y =y;
   this.w = w;
   dotColor = color(188,97,112);
   this.opacity = opacity;
 }
 void displayDensityDot(){
     fill(dotColor, opacity);
     ellipse(x,y,w,w);
  }  
} 
