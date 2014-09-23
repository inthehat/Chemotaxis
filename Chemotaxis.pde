Bacteria [] bact;//declare bacteria variables here   
 void setup()   
 {     
 	size(300,300);//initialize bacteria variables here   
 	bact = new Bacteria[500];
 	for(int i=0; i<bact.length; i++)
 	{
 		bact[i] = new Bacteria(150,150);
 	}
 }   
 void draw()   
 {    
 	background(0);
 	for(int i=0; i<bact.length; i++)
 	{
 		bact[i].move();//move and show the bacteria 
 		bact[i].show();  
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor1, myColor2, myColor3;//lots of java!  
 	Bacteria(int x,int y)
 	{
 		myColor1 = (int)(Math.random()*255+1);
 		myColor2 = (int)(Math.random()*255+1);
 		myColor3 = (int)(Math.random()*255+1);
 		myX = x;
 		myY = y;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*4-2);
 		myY = myY + (int)(Math.random()*4-2);
 	} 
 	void show()
 	{
 		fill(myColor1,myColor2,myColor3);
 		ellipse(myX,myY,10,10);
 	}
 }     
