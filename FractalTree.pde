private double fractionLength = 0.8; 
private int lBranch = 6; 
private double bAngle = 0.60;  
public void setup() 
{   
  size ( 600, 600 );    
  noLoop(); 
} 
public void draw() 
{ 
  background ( 255, 255, 255 );
  strokeWeight ( 1 );
  stroke ( 150, 10, 10 );   
  line ( 300, 500, 300, 600 );   
  drawBranches ( 300, 500, 300, 3 * Math.PI/2 );
} 
public void drawBranches ( int x, int y, double branchLength, double angle ) 
{   
  double angle1;
  double angle2;
  int endX1, endX2, endY1, endY2;
  branchLength = branchLength * fractionLength;
  angle1 = angle + bAngle;
  angle2 = angle - bAngle;
  endX1 = ( int )( branchLength * Math.cos( angle1 ) + x );
  endY1 = ( int )( branchLength * Math.sin( angle1 ) + y );
  endX2 = ( int )( branchLength * Math.cos( angle2 ) + x );
  endY2 = ( int )( branchLength * Math.sin( angle2 ) + y );
  line ( x, y, endX1, endY1 );
  line ( x, y, endX2, endY2 );
  if ( branchLength > lBranch )
  {
    stroke ( 150, 10, 10 );   
    drawBranches ( endX1, endY1, branchLength, angle1 );
    drawBranches ( endX2, endY2, branchLength, angle2 );
  }
}
