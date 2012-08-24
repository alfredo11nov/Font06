/**
*  A Super Simple 'F' drawn by rectangle matrixes.
*  parameters are defined as sets of x and y coordinates
*  yuta nakayama 23/08/2012
*  didny@nus.edu.sg
*/

size(400,400);
background(205);
noStroke();
fill(0);


/*
  parameters 
  
   X -->          
   x[0] x[2]x[3]x[1]   
   |    x[4]|  |      
    ____|______  _ y[0] Y
   |           |        |
   |    x[2]___| _ y[1] v
   |    |    
   |    |___x3   _ y[2]    
   |         |
   |     ____|   _ y[3]
   |    x[4]   
   |    |
   |____|        _ y[4]
*/

int [] x = {120,290,180,270,180};
int [] y = {80,130,180,230,320};

int Y; //index variable for Y
int X; //index variable for X 
float grain_size = 5; // <- try to change this
float dot_size = grain_size * .9; 
smooth();

int i;
for(i = 0; i < 4; i++ ){
  for(Y = y[i]; Y < y[i+1]; Y = Y + int(grain_size)){
    for(X = x[0]; X < x[i+1]; X = X + int(grain_size)){
    //rect(X,  Y , grain_size, grain_size);
    float d = map(X,x[0],x[i+1],dot_size,dot_size * 0.2);
    //rect( X , Y , d, d);
    ellipse( X  , Y  , d, d);
    }
  }
}

save("font06.jpg");

