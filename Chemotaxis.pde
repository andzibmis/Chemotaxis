Bacteria [] number1;

void setup () {
	size (500, 500);
	number1 = new Bacteria [500];
	for (int a = 0; a < number1.length; a ++) {
		number1 [a] = new Bacteria ();
	}
}

void draw () {
	background (0);
	stroke (0);
	fill (255, 0, 0);
	rect (mouseX - 10, mouseY - 10, 20, 20);
	for (int i = 0; i < number1.length; i ++) {
		number1 [i].show ();
		number1 [i].walk ();
	}
}

class Bacteria {
	int mySize, startX, startY;
	Bacteria () {
		mySize = 10;
		startX = (int)(Math.random () * 500 + 1);
		startY = (int)(Math.random () * 500 + 1);
	}
	void show () {
		stroke ((int) (Math.random () * 155 + 100));
		fill ((int) (Math.random () * 155 + 100));
		rect (startX, startY, mySize, mySize);
	}
	void walk () {
		if (mouseX > startX) {
			startX = startX + (int) (Math.random () * 5) - 3;
		}
		else {
			startX = startX + (int) (Math.random () * 5) - 1;
		}
		if (mouseY > startY) {
			startY = startY + (int) (Math.random () * 5) - 3;
		}
		else {
			startY = startY + (int) (Math.random () * 5) - 1;
		}
		if (startX > 475) {
			startX = 475;
		}
		if (startX < 25) {
			startX = 25;
		}
		if (startY > 475) {
			startY = 475;
		}
		if (startY < 25) {
			startY = 25;
		}
	}
}