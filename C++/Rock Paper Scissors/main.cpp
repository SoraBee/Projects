#include <iostream>

// Constant variables
const char ROCK = 'r';
const char PAPER = 'p';
const char SCISSORS = 's';

using namespace std;


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


char computer() {

	srand(time(0));

	int num = rand() % 3 + 1;		// Random number between 1 and 3

	if (num == 1)	{
		return 'r';
	}	

	else if (num == 2)	{
		return 'p';
	}

	else if (num == 3) {
		return 's';
	}

}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


char input() {

	char c;
	cout << "(r) for rock " << endl << "(p) for paper" << endl << "(s) for scissors" << endl;
	cin >> c;

	while (c!='r' && c!='p' && c!='s' )		{

		cout << "Please enter one of the following options only." << endl;
		cout << "(r) for rock " << endl << "(p) for paper" << endl << "(s) for scissors" << endl;
		cin >> c;

	}

	return c;

}


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


void showSelectedOption(char option) {

	if (option  ==  'r')	{
		cout << "Rock" << endl;
	}		

	else if (option  ==  'p')	{
		cout << "Paper" << endl;
	}	

	else if (option  ==  's')	{
		cout << "Scissors" << endl;
	}

}

//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


void chooseWinner(char uChoice, char cChoice) {

	if (uChoice  ==  ROCK && cChoice  ==  PAPER) {
		cout << "Computer Wins! Paper wraps Rock."<< endl;
	}

	else if (uChoice  ==  PAPER && cChoice  ==  SCISSORS) {
		cout << "Computer Wins! Scissors cut Paper."<< endl;
	}

	else if (uChoice  ==  SCISSORS && cChoice  ==  ROCK) {
		cout << "Computer Wins! Rock smashes Scissors."<< endl;
	}

		//------------------------

	else if (uChoice  ==  ROCK && cChoice  ==  SCISSORS) {
		cout << "You Win! Rock smashes Scissors."<< endl;
	}

	else if (uChoice  ==  PAPER && cChoice  ==  ROCK) {
		cout << "You Win! Paper wraps Rock."<< endl;
	}

	else if (uChoice  ==  SCISSORS && cChoice  ==  PAPER) {
		cout << "You Win! Scissors cut Paper."<< endl;
	}

//------------------------

	else{
		cout << "Tie. Play again win the Game." << endl;
	}

}


//--------------------------------------------------------------------------
//--------------------------------------------------------------------------


int main() {

	while (true)	{

		char uChoice;			//User's choice 
		char cChoice;			//Compter's choice	

		uChoice = input();
		cout << "Your choice is: "<< endl;
		showSelectedOption(uChoice);

		cout << "Computer's choice is: "<< endl;
		cChoice = computer();
		showSelectedOption(cChoice);

		chooseWinner(uChoice, cChoice);

		return 0;

		}

	}
