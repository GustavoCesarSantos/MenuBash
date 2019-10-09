#!/bin/bash

# variables
pwd=$PWD
choice="main"

while [ $choice = "main" ]
do
  clear
  echo "//******** appsafe **********\\"
  echo "*        MAIN - MENU          *"
  echo "*                             *"
  echo "*  down- Menu Down            *"
  echo "*                             *"
  echo "*  build- Menu Build          *"
  echo "*                             *"
  echo "*  up- Menu Up                *"
  echo "*                             *"
  echo "*  exit- To quit              *"
  echo "*                             *"
  echo "\\******** appsafe **********//"
  read answerMainMenu

    case "$answerMainMenu" in
      "down")
        choice="down"

        while [ $choice = "down" ]
        do
          clear

          echo "//********* appsafe ************\\"
          echo "*         MENU - DOWN            *"
          echo "*                                *"
          echo "*  1- Compose down all services  *"
          echo "*                                *"
          echo "*  2- Compose down Databases     *"
          echo "*                                *"
          echo "*  3- Compose down Beholder      *"
          echo "*                                *"
          echo "*  4- Compose down Chronograf    *"
          echo "*                                *"
          echo "*  5- Compose down Havel         *"
          echo "*                                *"
          echo "*  6- Compose down Alf           *"
          echo "*                                *"
          echo "*  7- Compose down Hoover        *"
          echo "*                                *"
          echo "*  8- Compose down Nito          *"
          echo "*                                *"
          echo "*  9- Compose down Cortex        *"
          echo "*                                *"
          echo "*  10- Compose down Newton       *"
          echo "*                                *"
          echo "*  11- Compose down Robin        *"
          echo "*                                *"
          echo "*  12- Compose down Drakkar      *"
          echo "*                                *"
          echo "*  13- Compose down STF          *"
          echo "*                                *"
          echo "*  back- Back to main menu       *"
          echo "*                                *"
          echo "*  exit- To quit                 *"
          echo "*                                *"
          echo "\\********* appsafe ************//"
          read answerMenuDown
            
            clear
          
            case "$answerMenuDown" in
              1)
                ./stop.sh
                choice="main"
                sleep 2
              ;;
              2)
                cd "${pwd}/databases"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              3)
                cd "${pwd}/beholder"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              4)
                cd "${pwd}/chronograf"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              5)
                cd "${pwd}/havel"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              6)
                cd "${pwd}/alf"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              7)
                cd "${pwd}/hoover"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              8)
                cd "${pwd}/nito"
                docker-compose -f local.yml down
                choice="down"
                cd ..
                sleep 2
              ;;
              9)
                cd "${pwd}/cortex"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              10)
                cd "${pwd}/newton"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              11)
                cd "${pwd}/robin"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              12)
                cd "${pwd}/drakkar"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              13)
                cd "${pwd}/stf-berghem"
                docker-compose down
                choice="down"
                cd ..
                sleep 2
              ;;
              back)
                choice="main"
                echo "Back to main menu..."
                sleep 2
              ;;
              exit)
                choice="exit"
                echo "Exiting..."
                sleep 3
              ;;
            esac
        done
      ;;
      "build")
        choice="build"

        while [ $choice = "build" ]
        do
          clear

          echo "//********* appsafe ************\\"
          echo "*         MENU - BUILD           *"
          echo "*                                *"
          echo "*  1- Compose build all services *"
          echo "*                                *"
          echo "*  2- Compose build Databases    *"
          echo "*                                *"
          echo "*  3- Compose build Beholder     *"
          echo "*                                *"
          echo "*  4- Compose build Chronograf   *"
          echo "*                                *"
          echo "*  5- Compose build Havel        *"
          echo "*                                *"
          echo "*  6- Compose build Alf          *"
          echo "*                                *"
          echo "*  7- Compose build Hoover       *"
          echo "*                                *"
          echo "*  8- Compose build Nito         *"
          echo "*                                *"
          echo "*  9- Compose build Cortex       *"
          echo "*                                *"
          echo "*  10- Compose build Newton      *"
          echo "*                                *"
          echo "*  11- Compose build Robin       *"
          echo "*                                *"
          echo "*  12- Compose build Drakkar     *"
          echo "*                                *"
          echo "*  13- Compose build STF         *"
          echo "*                                *"
          echo "*  back- Back to main menu       *"
          echo "*                                *"
          echo "*  exit- To quit                 *"
          echo "*                                *"
          echo "\\********* appsafe ************//"
          read answerMenuBuild

            clear

            case "$answerMenuBuild" in
              1)
                ./buildServices.sh
                choice="main"
                sleep 2
              ;;
              2)
                cd "${pwd}/databases"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              3)
                cd "${pwd}/beholder"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              4)
                cd "${pwd}/chronograf"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              5)
                cd "${pwd}/havel"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              6)
                cd "${pwd}/alf"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              7)
                cd "${pwd}/hoover"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              8)
                cd "${pwd}/nito"
                docker-compose -f local.yml build
                choice="build"
                cd ..
                sleep 2
              ;;
              9)
                cd "${pwd}/cortex"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              10)
                cd "${pwd}/newton"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              11)
                cd "${pwd}/robin"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              12)
                cd "${pwd}/drakkar"
                npm run-script build
                sleep 30
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              13)
                cd "${pwd}/stf-berghem"
                docker-compose build
                choice="build"
                cd ..
                sleep 2
              ;;
              back)
                choice="main"
                echo "Back to main menu..."
                sleep 2
              ;;
              exit)
                choice="exit"
                echo "Exiting..."
                sleep 3
              ;;
            esac
        done
      ;;
      "up")
        choice="up"

        while [ $choice = "up" ]
        do
          clear

          echo "//********* appsafe ************\\"
          echo "*         MENU - UP              *"
          echo "*                                *"
          echo "*  1- Compose up all services    *"
          echo "*                                *"
          echo "*  2- Compose up Databases       *"
          echo "*                                *"
          echo "*  3- Compose up Beholder        *"
          echo "*                                *"
          echo "*  4- Compose up Chronograf      *"
          echo "*                                *"
          echo "*  5- Compose up Havel           *"
          echo "*                                *"
          echo "*  6- Compose up Alf             *"
          echo "*                                *"
          echo "*  7- Compose up Hoover          *"
          echo "*                                *"
          echo "*  8- Compose up Nito            *"
          echo "*                                *"
          echo "*  9- Compose up Cortex          *"
          echo "*                                *"
          echo "*  10- Compose up Newton         *"
          echo "*                                *"
          echo "*  11- Compose up Robin          *"
          echo "*                                *"
          echo "*  12- Compose up Drakkar        *"
          echo "*                                *"
          echo "*  13- Compose up STF            *"
          echo "*                                *"
          echo "*  back- Back to main menu       *"
          echo "*                                *"
          echo "*  exit- To quit                 *"
          echo "*                                *"
          echo "\\********* appsafe ************//"
          read answerMenuUp

            clear

            case "$answerMenuUp" in
              1)
                ./start.sh
                choice="exit"
                sleep 2
              ;;
              2)
                cd "${pwd}/databases"
                gnome-terminal --title="Databases" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              3)
                cd "${pwd}/beholder"
                gnome-terminal --title="Beholder" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              4)
                cd "${pwd}/chronograf"
                gnome-terminal --title="Chronograf" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              5)
                cd "${pwd}/havel"
                gnome-terminal --title="Havel" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              6)
                cd "${pwd}/alf"
                gnome-terminal --title="Alf" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              7)
                cd "${pwd}/hoover"
                gnome-terminal --title="Hoover" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              8)
                cd "${pwd}/nito"
                gnome-terminal --title="Nito" -- docker-compose -f local.yml up
                choice="up"
                cd ..
                sleep 2
              ;;
              9)
                cd "${pwd}/cortex"
                gnome-terminal --title="Cortex" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              10)
                cd "${pwd}/newton"
                gnome-terminal --title="Newton" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              11)
                cd "${pwd}/robin"
                gnome-terminal --title="Robin" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              12)
                cd "${pwd}/drakkar"
                gnome-terminal --title="Drakkar" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              13)
                cd "${pwd}/stf-berghem"
                gnome-terminal --title="STF" -- docker-compose up
                choice="up"
                cd ..
                sleep 2
              ;;
              back)
                choice="main"
                echo "Back to main menu..."
                sleep 2
              ;;
              exit)
                choice="exit"
                echo "Exiting..."
                sleep 3
              ;;
            esac
        done
      ;;
      exit)
        clear

        choice="exit"
        echo "Exiting..."
        sleep 3
      ;;
      *)
        clear

        echo "Thats is not an option"
        sleep 3
      ;;
    esac
done