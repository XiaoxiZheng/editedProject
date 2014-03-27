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
  float detect(){
    mouseDist = dist(x,y,mouseX,mouseY);
    return mouseDist;
  }
 void displayDensityDot(){
   if(mouseDist < w/2){
     fill(dotColor, opacity);
     ellipse(x,y,w,w);
   }
  }  
} 
