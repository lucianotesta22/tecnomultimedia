class bloque{
 int x, y, toque;
 bloque(int x, int y, int toque){
  this.x = x;
  this.y = y;
  this.toque = toque;
 }
 void mostrar(){
  stroke(1);
  if(toque == 1)
   fill(255,0,0);
  if(toque == 2)
   fill(255,127,0);
  if(toque == 3)
   fill(255,255,0);
  if(toque == 4)
   fill(0,255,0);
  if(toque == 5)
   fill(0,0,255);
  if (toque == 6)
   fill(75,0,130);
  if(toque == 7)
   fill(148,0,211);
  rect(x,y,35,15); 
 }
 boolean colision(float px, float py){
  boolean resp = false;
  if ( (px + 5) < x || px > ( x + 30))
   resp = false;
  else if ( (py+ 5) < y || py > ( y + 15))
   resp = false;
  else
   resp = true;
  if(resp)
   toque--;
  return resp;
 }
}
