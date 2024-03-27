//Import packages for functionality purposes later on in the code
// import 'dart:html';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async'; 
import 'package:table_calendar/table_calendar.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

import 'event.dart';


import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


//Different parts, or "pages" of the web app - links to other dart files in this project
part 'contact.dart';
part 'home.dart';
part 'map.dart';
part 'calendar.dart';

//Run and debug the app
void main() {
  //Get rid of debug mode banner
  // debugShowCheckedModeBanner: false;
  runApp(const MyApp());
}

//StatelessWidget is used to give us more freedom with UI design
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Yards Ahead',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(243, 251, 236, 1)),
          scaffoldBackgroundColor: const Color.fromRGBO(243, 251, 236, 1), 
        ),
        home: SplashScreen(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();

  void getNext() {
    current = WordPair.random(); 
    notifyListeners();
  } 

  // like button saving favourite words 
  var favorites = <WordPair>[];

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } 
    else {
      favorites.add(current);
    }
    notifyListeners(); 
  }
}


class SplashScreen extends StatefulWidget { 
@override 
_SplashScreenState createState() => _SplashScreenState(); 
} //homepage create a state

class _SplashScreenState extends State<SplashScreen> { 
@override 
void initState() { 
	super.initState(); 
	Timer(Duration(seconds: 1), //timer, splashscreen lasts 3 seconds
		()=>Navigator.pushReplacement(context, 
										MaterialPageRoute(builder: 
														(context) => 
														HomePage() //push the second (main) screen
														) 
									) 
		); 
} 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: Color.fromARGB(255, 180, 196, 142), 
	child:Icon(Icons.home) 
	); 
} 
} 

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedTab = 0;

  List _pages = [
    Center(
      child: GeneratorPage(),
    ),
    Center(
      child: ContactPage(),
    ),
    Center(
      child: MapPage(),
    ),
    Center(
      child: CalendarPage(),
    ),
  ]; 

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _pages[_selectedTab],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(164, 195, 133, 1),
        ),
      child: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Color.fromRGBO(108, 129, 88, 1),
        unselectedItemColor: Color.fromRGBO(243, 251, 236, 1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.map), label: "Map"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Calendar"),
        
        ],
      ),
      ),
    );
  }
}



