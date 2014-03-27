class Population {
  float numOfPeople;
  float totalArea;
  
 Population(float numOfPeople, float totalArea){
    this.numOfPeople = numOfPeople;
    this.totalArea = totalArea;
  }
  
 float getNumOfPeople(){
   return numOfPeople;
 }
 float getTotalArea(){
    return totalArea;
 }   
 
 float calcDensity(float numOfPeople, float totalArea){
    float density = numOfPeople/totalArea;
    return density;
  }
} 
      
