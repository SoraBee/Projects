#include <iostream>

//		CONSTANTS
const char TOP = 't';
const char MID = 'm';
const char BOT = 'b';

const char LEFT = 'l';
const char RIGHT = 'r';

//------------------------

char square[9] = {
	' ',
	' ',
	' ',
	' ',
	' ',
	' ',
	' ',
	' ',
	' '
};


using namespace std;

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void board()	{

	cout << "  " << square[0] << "  |  " << square[1] << "  |  " << square[2] << endl;
	cout << "-----|-----|-----" << endl;
	cout << "  " << square[3] << "  |  " << square[4] << "  |  " << square[5] << endl;
	cout << "-----|-----|-----" << endl;
	cout << "  " << square[6] << "  |  " << square[7] << "  |  " << square[8] << endl;

}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void player()	{

	int choise = '';

	cout << "Player 1 (X) - Enter a number from 1 to 9: ";
	cin >> choise;

	if (choise == 1)	{
		square[0] = 'x'
	}

	else if (choise == 2)	{
		square[1] = 'x'
	}

	else if (choise == 3)	{
		square[2] = 'x'
	}

	else if (choise == 4)	{
		square[3] = 'x'
	}

	else if (choise == 5)	{
		square[4] = 'x'
	}

	else if (choise == 6)	{
		square[5] = 'x'
	}

	else if (choise == 7)	{
		square[6] = 'x'
	}

	else if (choise == 8)	{
		square[7] = 'x'
	}

	else if (choise == 9)	{
		square[8] = 'x'
	}
	
}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

void comp();	{

	srand(time(0));
	int choise = rand() % 9 + 1;


	if (choise == 1)	{
		square[0] = 'o'
	}

	else if (choise == 2)	{
		square[1] = 'o'
	}

	else if (choise == 3)	{
		square[2] = 'o'
	}

	else if (choise == 4)	{
		square[3] = 'o'
	}

	else if (choise == 5)	{
		square[4] = 'o'
	}

	else if (choise == 6)	{
		square[5] = 'o'
	}

	else if (choise == 7)	{
		square[6] = 'o'
	}

	else if (choise == 8)	{
		square[7] = 'o'
	}

	else if (choise == 9)	{
		square[8] = 'o'
	}
}


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


void check()	{

	
	if (square[0] == square[1] && square[1] == square[2])	{

		if (square[0] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[0] == 'o')	{
			cout << "Computer wins!" << endl;
		}
		
	}

		
	else if (square[3] == square[4] && square[4] == square[5])	{

		if (square[3] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[3] == 'o')	{
			cout << "Computer wins!" << endl;
		}
		
	}

		
	else if (square[6] == square[7] && square[7] == square[8])	{

		if (square[6] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[6] == 'o')	{
			cout << "Computer wins!" << endl;
		}

	}

		
	//------------------------
	//------------------------
	//------------------------

		
	else if (square[0] == square[3] && square[3] == square[6])	{

		if (square[0] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[0] == 'o')	{
			cout << "Computer wins!" << endl;
		}
		
	}

		
	else if (square[1] == square[4] && square[4] == square[7])	{

		if (square[1] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[1] == 'o')	{
			cout << "Computer wins!" << endl;
		}

	}

		
	else if (square[2] == square[5] && square[5] == square[8])	{

		if (square[2] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[2] == 'o')	{
			cout << "Computer wins!" << endl;
		}

	}

		
	//------------------------
	//------------------------
	//------------------------

	
	else if (square[0] == square[4] && square[4] == square[8])	{

		if (square[0] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[0] == 'o')	{
			cout << "Computer wins!" << endl;
		}

	}

		
	else if (square[2] == square[4] && square[4] == square[6])	{

		if (square[2] == 'x')	{
			cout << "Player wins!" << endl;
		}

		else if (square[2] == 'o')	{
			cout << "Computer wins!" << endl;
		}

	}

}

	
//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


int main() {

	cout << "Welcome to Tic Tac Toe!" << endl;

	while (True)	{
		
		board();
		player();
		comp();
		check();	
		
	}
	
}
