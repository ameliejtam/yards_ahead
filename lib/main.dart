import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(164, 195, 133, 1)),
          scaffoldBackgroundColor: const Color.fromRGBO(164, 195, 133, 1),
        ),
        home: MyHomePage(),
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

  // adding functionality tutorial 
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


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    // like button 
    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    }
    else {
      icon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text('A random AWESOME idea:'),
            BigCard(pair: pair), 
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite();
                  }, 
                  icon: Icon(icon), 
                  label: Text('Like'), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(243, 251, 236, 1), 
                  ),
                ),

                SizedBox(width:10), 

                ElevatedButton( 
                  onPressed: () { 
                    appState.getNext();
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(243, 251, 236, 1), 
                  ),
                  child: Text('Next'),
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ...

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
    );

    return Card(
      color: Color.fromRGBO(243, 251, 236, 1),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair.asPascalCase, style: style),
      ),
    );
  }
}


