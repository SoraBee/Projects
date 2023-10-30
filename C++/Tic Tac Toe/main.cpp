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



}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

string compOne(char choise);	{

	string choiseFinal;

	srand(time(0));
	int num = rand() % 3 + 1;

//------------------------
//------------------------

	if choise == TOP {

		if (num == 1)	{
			choiseFinal = 'Top Left';
		}	

		else if (num == 2)	{
			choiseFinal = 'Top Mid';
		}

		else if (num == 3) {
			choiseFinal = 'Top Right';
		}

	}

//------------------------
//------------------------

	else if choise == MID {

			if (num == 1)	{
				choiseFinal = 'Mid Left';
			}	

			else if (num == 2)	{
				choiseFinal = 'Mid';
			}

			else if (num == 3) {
				choiseFinal = 'Mid Right';
			}

		}

//------------------------
//------------------------

	else if choise == BOT	{

			if (num == 1)	{
				choiseFinal = 'Bot Left';
			}	

			else if (num == 2)	{
				choiseFinal = 'Bot Mid';
			}

			else if (num == 3) {
				choiseFinal = 'Bot Right';
			}

	}


}


//------------------------
//------------------------
//------------------------


char compTwo() {

	srand(time(0));
	char cChoiseP1 = ' ';

	int num = rand() % 3 + 1;		// Random number between 1 and 3

	if (num == 1)	{
		cChoiseP1 = 't';
	}	

	else if (num == 2)	{
		cChoiseP1 = 'm';
	}

	else if (num == 3) {
		cChoiseP1 = 'b';
	}

	string cChoiseP2 = compOne(cChoiseP1);
	return 0;

}


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------

int main() {

}