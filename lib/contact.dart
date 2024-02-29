part of 'main.dart'; 

class ContactPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();

    // if (appState.favorites.isEmpty) {
    // return Center(
    //   child: Text('Contact page'),
    // );
  // }

  // return ListView(
  //   children: [
  //     Padding(
  //       padding: const EdgeInsets.all(20),
  //       child: Text('You have ' '${appState.favorites.length} favorites:'),
  //     ),
  //     for (var pair in appState.favorites)
  //       ListTile(
  //         leading: Icon(Icons.favorite),
  //         title: Text(pair.asLowerCase),
  //       )
  //     ],
  //   );
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Name(),
        SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Address(), 
            SizedBox(width: 10),
            NextTrim(), 
            SizedBox(width: 10),
            Notes(), 
          ],
        ),
      ],
    )
  );
  
  // return Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         contactInfo(pair: pair),
  //         SizedBox(height: 10),
  //         Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             ElevatedButton.icon(
  //               onPressed: () {
  //                 appState.toggleFavorite();
  //               },
  //               icon: Icon(icon),
  //               label: Text('Like'),
  //             ),
  //             SizedBox(width: 10),
  //             ElevatedButton(
  //               onPressed: () {
  //                 appState.getNext();
  //               },
  //               child: Text('Next'),
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );

  }
}

class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1), 
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('name'),
    );
  }
}


class Address extends StatelessWidget {
  const Address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Address");
  }
}


class NextTrim extends StatelessWidget {
  const NextTrim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Next Trimming");
  }
}


class Notes extends StatelessWidget {
  const Notes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Notes");
  }
}


// class contactInfo extends StatelessWidget {
//   const contactInfo({
//     super.key,
//     required this.pair,
//   });

//   final WordPair pair;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     final style = theme.textTheme.displayMedium!.copyWith(
//       color: Color.fromRGBO(108, 129, 88, 1),
//     );

//     return Card(
//       color: Color.fromRGBO(164, 195, 133, 1),
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Text(pair.asPascalCase, style: style),
//       ),
//     );
  // }
// }
