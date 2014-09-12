Die one;
Die two;
void setup()
{
	noLoop();
	size(300,300);
	background(150);
	one = new Die(50,100);
	two = new Die(200,100);
}
void draw()
{
	background(150);
	one.roll();
	one.show();
	two.roll();
	two.show();
	textSize(32);
	text("Total:", 90 , 250);
	text(one.value + two.value, 188, 250);
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, value;
	Die(int diceX, int diceY) //constructor
	{
		myX = diceX;
		myY = diceY;
		value = 0;
	}
	void roll()
	{
		//your code here
		value = (int)(Math.random()*6)+1;
		println(value);
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,50,50);
		if (value == 1)
		{
			fill(0);
			ellipse(myX+25, myY+25, 10, 10);
		}
		if (value == 2)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
		}
		if (value == 3)
		{
			fill(0);
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+40, myY+40, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		if (value == 4)
		{
			fill(0);
			ellipse(myX+15, myY+15, 10, 10);
			ellipse(myX+15, myY+35, 10, 10);
			ellipse(myX+35, myY+35, 10, 10);
			ellipse(myX+35, myY+15, 10, 10);
		}
		if (value == 5)
		{
			fill(0);
			ellipse(myX+10, myY+40, 10, 10);
			ellipse(myX+10, myY+10, 10, 10);
			ellipse(myX+40, myY+10, 10, 10);
			ellipse(myX+40, myY+40, 10, 10);
			ellipse(myX+25, myY+25, 10, 10);
		}
		if (value == 6)
		{
			fill(0);
			ellipse(myX+10, myY+9, 10, 10);
			ellipse(myX+10, myY+25, 10, 10);
			ellipse(myX+10, myY+41, 10, 10);
			ellipse(myX+40, myY+9, 10, 10);
			ellipse(myX+40, myY+25, 10, 10);
			ellipse(myX+40, myY+41, 10, 10);
		}
	}
}
