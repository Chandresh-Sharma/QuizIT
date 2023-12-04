# QuizIT

A Flutter quiz application.

## Getting Started

### Installing requisite

- Install Flutter.
- Install Android Studio(We need it for Virtual Android Devices)
- Install cmdline-tools from Android Studio SDK Manager.
- Install VScode.
- Install Git and Github.
- Install Dart extension in VScode.
- Install node.

### How to Run this application

- Install Pre-requisite.
- First go to the global variables file and change IP address to your there. (Steps to find your own IP v4 address -> Go to start  -> Type terminal -> Type "ipconfig" -> Check wireless LAN adaptor -> There u can find IP address)
- Now in VS code right click on server folder open integrated terminal.
- Then in terminal type "npm run dev".
- Now run your application it's ready to use.

### Folder Structure

- Common folder - This folder consist of all common things that will be used throughout the application.
	- Widgets (This folder is place for a all common widgets we will use through out the app. stateless widgets are used)

- Constants folder - This folder consist thing that are gonna be constants throughout the program.
	- Global_variables.dart (This file consist of all those variables which will be used through out the program.)
	- error_handling.dart (In this we will define all those function which will tackle error handling throughout the application.)
	- utils.dart (This file consist of some boiler-plate code that we dont want to type again and again.)

- Features - This folder consist of features we gonna provide in our application this folder follows a process to make any features i.e whenever anyone makes a feature there should be 3 folder's inside that feature folder named (Screens, Service, widgets)
	- Screens (This folder consist the screens that your gonna make for your feature.)
	- Service (Files in this folder will handle all networking related tasks such as calling an API for data posting or fetching.)
	- Widgets (This will consist of files we make for custom widgets for that particular feature.)

- Models - This folder will cosist of Models(Basically a class for your table data so u can fetch data of any user in its model and perform action.)

- Provider - Basically consist of those functions which are gonna affect Provider Package(used for storing data locally for some user.)

- main.dart - It's starting point of our application from where app begins.

- router.dart - In this file we define all the routes which we will use.
