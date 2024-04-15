part of 'main.dart'; 

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset("assets/images/unnamed.png"), 
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg"),
            ],
          ),
    );
}
}



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
      color: Color.fromRGBO(164, 195, 133, 1),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text("Yards Ahead"),
      ),
    );
  }
}


