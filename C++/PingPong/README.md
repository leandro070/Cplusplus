Como compilar en Linux
Necesario tener instalado g++ (sudo apt-get install g++)
Abrir terminal:
$ g++ -c main.cpp -I /include
$ g++ main.o -o sfml-app -L /lib -lsfml-graphics -lsfml-window -lsfml-system
$ ./sfml-app