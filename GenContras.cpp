//============================================================================
// Name        : GenContras.cpp
// Author      : Leandro
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================
#include <time.h>
#include <cstdlib>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>     /* srand, rand */
using namespace std;

string GeneradorConCaracteres(int cant){
	int elementos[]={33,35,36,37,38,48,49,50,51,52,53,54,55,56,57,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122};
		int i;
		int s;
		char a;
		string contra;
		srand(time(NULL));


	for(i=0;i<cant;i++){
			int s;
			   s = rand()% 68;
			   a=elementos[s];
			   contra+=a;
		}

	return contra;
}
string GeneradorSinCaracteres(int cant){
	int elementos[]={48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122};
		int i;
		int s;
		char a;
		string contra;
		srand(time(NULL));

	for(i=0;i<cant;i++){
			int s;
			   s = rand()% 61;
			   a=elementos[s];
			   contra+=a;
		}

	return contra;
}

int main() {

	string contra;
	int cant;
	char respuesta;
	bool valido;
	cout << "¿Cuantos caracteres quiere en su contraseña?" << endl;
			cin >> cant;
	cout << "¿Quieres caracteres especiales en tu contraseña? y=si n=no" << endl;
	do{
		cin>>respuesta;
		if(respuesta=='y')
			{valido=true;
			contra = GeneradorConCaracteres(cant);}

			else if (respuesta=='n')
					{valido=true;
					contra =GeneradorSinCaracteres(cant);}

				else
					{cout<<"No ingresaste un caracter valido, asegurate de escribir 'y' para 'si' y 'n' para 'no'"<<endl;
						valido=false;}
	}while(not(valido));

	cout<<"Contraseña: "<<contra<<endl;

	return 0;
}
