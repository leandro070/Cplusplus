#include <SFML/Audio.hpp>
#include <SFML/Graphics.hpp>
#include <cstdlib>
#include <string>
#include <cmath>
#include <iostream>
#include <stdlib.h>     //for using the function sleep

using namespace sf;





int main()
{


    // Create the main window
    RenderWindow window(VideoMode(800, 600), "Ping Pong");
    window.setFramerateLimit(60);


	// Load a sprit1e to display
	sf::Texture barra;
    if (!barra.loadFromFile("barra.png"))
        return EXIT_FAILURE;
    const sf::Texture *pbarra = &barra;

    RectangleShape paddleLeft;
    paddleLeft.setSize(sf::Vector2f(15, 100));
    paddleLeft.setTexture(pbarra);
    paddleLeft.setOutlineThickness(0);
    paddleLeft.setPosition(15, 250);

    sf::Texture barra2;
    if (!barra2.loadFromFile("barra2.png"))
        return EXIT_FAILURE;
    const sf::Texture *pbarra2 = &barra2;

    sf::RectangleShape paddleRight;
    paddleRight.setSize(sf::Vector2f(15, 100));
    paddleRight.setTexture(pbarra2);
    paddleRight.setOutlineThickness(0);
    paddleRight.setPosition(775, 250);

    sf::Texture ball;
    if (!ball.loadFromFile("bola.png"))
        return EXIT_FAILURE;
    const sf::Texture *pball = &ball;

    sf::CircleShape ballPlay;
    ballPlay.setRadius(7);
    ballPlay.setTexture(pball);
    ballPlay.setOutlineThickness(0);
    ballPlay.setPosition(400, 300);


    // Create a graphical text to display
    Font font;
    if (!font.loadFromFile("font/FFF_Tusj.ttf")){
        system("echo No se puede cargar el texto&pause");
        return EXIT_FAILURE;}

    Text FueraDeJuego("Preciona espacio para jugar", font, 30);
    FueraDeJuego.setColor(sf::Color::Green);
    FueraDeJuego.setPosition(200,200);




	// Load a music to play

    sf::SoundBuffer buffer1;
	// Load it from a file
	if (!buffer1.loadFromFile("audio/background_music.ogg"))
		{
   		system("echo No se puede cargar la musica&pause");
        return EXIT_FAILURE;
		}
	// Create a sound source and bind it to the buffer
	sf::Sound background_music;
	background_music.setBuffer(buffer1);
    background_music.setVolume(50);

	// Play the sound
    background_music.play();
	


    sf::SoundBuffer pelota;
    // Load it from a file
    pelota.loadFromFile("audio/pelota_pingpong.ogg");
    
    // Create a sound source and bind it to the buffer
    sf::Sound ballSound;
    ballSound.setBuffer(pelota);
    ballSound.setVolume(50);






    int playerMovementSpeed=400.f;
    int IAMovementSpeed=200.f;
    bool GamePlay = false;
    bool GameStop=false;
    bool MovePaddleDown=false;
    bool MovePaddleUp=false;
    float ballSpeed   = 400.f;
    float ballAngle = 0.f;
    sf::Clock AITimer;
    const sf::Time AITime = sf::seconds(0.04f);
    sf::Clock clock;
    const float pi = 3.1415;
    int pointLeft=0, pointRight=0;
    float factor = 3;
    float angx=0.f;
    float angy=0.f;


	// Start the game loop

    while (window.isOpen())
    {


		// ################# EVENTOS ######################
		// ################################################
        Event event;
        while (window.pollEvent(event))
        {

               // Close window: exit
            if (event.type == Event::Closed)
                window.close();

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down)){
                MovePaddleDown=true;
            }

            if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up)){
                MovePaddleUp=true;

            }



			if (event.type == sf::Event::KeyPressed) {

                if (event.key.code == sf::Keyboard::Space)
                    {

                        GamePlay=true;
                        
                    }

				if (event.key.code == sf::Keyboard::Escape)
                    GameStop=true;
				}

        }

        // ################# LOGICA######################
		// ################################################
        if(GamePlay){



            float deltaTime = clock.restart().asSeconds();

            //###### MOVIMIENTO PALETAS ######
            if(MovePaddleDown&&paddleLeft.getPosition().y<500){
            paddleLeft.move(0,playerMovementSpeed * deltaTime);
            MovePaddleDown=false;

            }
            if(MovePaddleUp&&paddleLeft.getPosition().y>1){
            paddleLeft.move(0,-playerMovementSpeed * deltaTime);
            MovePaddleUp=false;
            }

            //###### MOVIMIENTO BOLA #######

            ballPlay.move(std::cos(ballAngle) * factor, std::sin(ballAngle) * factor);

            //###### COLISION BOLA CON PANTALLA ######

            if(ballPlay.getPosition().y - ballPlay.getRadius() < 0){
                ballAngle=-ballAngle;
            }

            if(ballPlay.getPosition().y  > window.getSize().y - ballPlay.getRadius()*2){
                ballAngle=-ballAngle;
            }

            if(ballPlay.getPosition().x < 0){
                GamePlay=false;
            }

            if(ballPlay.getPosition().x  > window.getSize().x ){
                GamePlay=false;
            }




            //###### COLISION BOLA CON PALETAS ######

            if(ballPlay.getPosition().x - ballPlay.getRadius() < paddleLeft.getPosition().x + paddleLeft.getSize().x && ballPlay.getPosition().y > paddleLeft.getPosition().y && paddleLeft.getPosition().y + paddleLeft.getSize().y > ballPlay.getPosition().y){
                ballAngle=-ballAngle+((-20+std::rand() % 40)  * pi / 360);
                factor=-factor*1.12;
                ballSound.play();
                }
            if(ballPlay.getPosition().x + 3*ballPlay.getRadius()> paddleRight.getPosition().x  && paddleRight.getPosition().y < ballPlay.getPosition().y && paddleRight.getPosition().y + paddleRight.getSize().y > ballPlay.getPosition().y){
                ballAngle=-ballAngle+((-20+std::rand() % 40)  * pi / 360);
                factor=-factor*1.12;
                ballSound.play();

                }

            //###### IA DE LA COMPUTADORA ######

            if(ballPlay.getPosition().y < paddleRight.getPosition().y + paddleRight.getSize().y/2 &&paddleRight.getPosition().y>1){
            paddleRight.move(0,-IAMovementSpeed * deltaTime);
            }
            if(ballPlay.getPosition().y > paddleRight.getPosition().y + paddleRight.getSize().y/2 &&paddleRight.getPosition().y<499){
            paddleRight.move(0,+IAMovementSpeed * deltaTime);
            }




        }






        // ################# DIBUJADO ######################
		// ################################################

        window.clear();
        if(!GamePlay){
            window.draw(FueraDeJuego);
        // ############## ACOMODADO DE PALETAS ###############
            
            ballAngle = (-45+std::rand() % 91)  * pi / 360;
            ballPlay.setPosition(400, 300);
            paddleRight.setPosition(775, 250);
            paddleLeft.setPosition(15, 250 );
            angx=std::cos(ballAngle);
            angy=std::sin(ballAngle);
            factor=3;
        }

        if(GamePlay){
            window.draw(paddleLeft);
            window.draw(paddleRight);
            window.draw(ballPlay);
         }



        // Update the window
        window.display();

        if(GameStop){
            window.close();
        }
    }
    return EXIT_SUCCESS;


}


