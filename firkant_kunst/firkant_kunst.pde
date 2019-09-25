int boxsize = 40;
void setup() {
  size(400, 400);
  noStroke();
}
void draw(){
  clear();
  float x = 2;
  while (x < width) { //fortæller at mens x er mindre end bredden skal denne her komando laves, vi vil ikke have at den skal lave flere kasser end hvad der kan være i vinduet 
    float y = 2;
    while (y < height) { //her beder vi om det samme som før, det er bare med højden i stedet
       fill(1*x*y+200,0.002*x*y,0.005*x*y); //wuhu sej farve
      rect(x+random(-2,2), y+random(-2,2), boxsize-2, boxsize-2); //en rektangel
      y = y + boxsize; //her fortæller vi den at den skal sætte 40 til y, det gør at kassen bliver lavet et nyt sted så den ikke ligger oven i den gamle
    }
    x = x + boxsize; //her gør vi det samme men med x
  }  
}
