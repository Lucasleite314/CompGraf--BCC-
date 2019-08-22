


float SolDiam = 80;

float TerraDiam = 35; //diametro
float TerraR =200; // raio da orbita da terra em relacao ao sol
float TerraAng = 0; //angulo de rotação da terra


float LuaDiam = 12;
float LuaR = 30; 
float LuaAng=0;  //angulo de rotação da lua

void setup() {
  size(600,600);
}

void draw() {
  background(0); 
 
  
  // sol
  translate(width/2, height/2);
  fill(255, 200, 50);
  ellipse(0, 0, SolDiam, SolDiam);
  pushMatrix();
  
  //Terra
  rotate(TerraAng);
  translate(100, 0);
  fill(64,64,255);
  ellipse(0, 0, TerraDiam, TerraDiam);



  //Lua
  pushMatrix(); 
  rotate(LuaAng);
  translate(LuaR, 0);
  fill(167);
  ellipse(0, 0, LuaDiam, LuaDiam);
  popMatrix();


  popMatrix(); 
  
  TerraAng += 0.009;
  LuaAng += 0.02;
}
