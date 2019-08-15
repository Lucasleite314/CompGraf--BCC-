void setup(){
  size(500,500);

}
void draw(){
 
  strokeWeight(4);
  background(90);
  translate(width/2,height/2);
  int r = 200;
  int n = 60; // 60 pontos(minutos) no relógio
  float angulo = TWO_PI/n;
//  color c = color(255, 204, 0);
  fill(255);
  ellipse(0,0,r*2,r*2);
  
  //
  int radius = min(width, height) / 2;
  float secondsR = radius * 0.60;  //tamanho raio do minuto(para o ponteiro)
  float minutesR = radius * 0.45;
  float hoursR = radius * 0.30;
  
  
  
  //
  for(int i = 1; i<=n; i++)
  {
    float x = r*cos(angulo*i-HALF_PI);
    float y = r*sin(angulo*i-HALF_PI);
    if(i%5==0)
      {
      
        stroke(255,0,0);
        line(x,y,0.85*x,0.85*y);
        fill(255,0,0);
        text(i/5,0.8*x,0.8*y);
        textAlign(CENTER);
        textSize(14);
      }
    else
      {
       
        stroke(0,0,0);
        line(x,y,0.9*x,0.9*y);  
      }
  }
  
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  

  //S
  stroke(0);
  strokeCap(ROUND);
  line(0,0,cos(s)*secondsR,sin(s)*secondsR);
  //M
  stroke(255, 204, 0);
  strokeCap(ROUND);
  line(0,0,cos(m)*minutesR,sin(m)*minutesR);
  //H
  stroke(204, 102, 0);  
  strokeCap(ROUND);
  line(0,0,cos(h)*hoursR,sin(h)*hoursR);
  
}

 // Originalmente o tamanho dos segundos,minutos e horas seriam 33,66,100
 // seguindo a seção minutes() no site, mas acabei optando pelo metodo dos tamanhos
 // dos ponteiros sendo feitos através de raios,como estava no tutorial clock().
 // Considerei os tamanhos mais satisfatórios do que estavam anteriormente.


// Me baseei em tutoriais/códigos diferentes e fui testando até chegar nesse resultado
// devo-me aprofundar mais nas próximas semanas pois tive dificuldade na tarefa
