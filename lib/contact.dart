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

  // return Center(
  //   child: Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       Name(),
  //       Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           AddressTitle(), 
  //           SizedBox(width:60),
  //           NextTrimTitle(), 
  //           SizedBox(width: 60),
  //           NotesTitle(), 
  //         ],
  //       ),
  //       Row(
  //         mainAxisSize: MainAxisSize.min,
  //         children: [
  //           Address(),
  //           SizedBox(width:60),
  //           NextTrim(), 
  //           SizedBox(width: 60),
  //           Notes(), 
  //         ],
  //       ),
  //       Expanded(
  //         child: Align(
  //           alignment: Alignment(0.9, 0.9),
  //           child: FloatingActionButton(
  //             onPressed: () {
  //             Navigator.push(
  //               context,
  //               MaterialPageRoute(builder :(context) => const InputPage()),
  //             );
  //             },
  //             child: Text('+', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.5),),
  //             ),
  //           ),
  //       ),
  //     ],
  //   )
  // );

  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(211, 222, 188, 1)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        // alignment: Alignment.topCenter,
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(243, 251, 236, 1)),
          columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(250),
              1: FixedColumnWidth(250),
              2: FixedColumnWidth(350),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: <TableRow>[
            TableRow(
              children: [
                Name(),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                ]
            ),
            TableRow(
              children:[
                AddressTitle(), 
                NextTrimTitle(), 
                Text('Phone'),
                Text('Email'),
              ],
            ),
            TableRow(
              children: [
                Address(),
                NextTrim(), 
                Text('123-456-7890'), 
                Text('larryjane@email.com'),
              ],
            ),
            TableRow(
              children: [
                NotesTitle(),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
              ]
            ),
            TableRow(
              children: [
                Notes(),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
              ]
            ),
          ],
        ),
      ),
      Expanded(
          child: Align(
            alignment: Alignment(0.9, 0.9),
            child: FloatingActionButton(
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder :(context) => const InputPage()),
              );
              },
              child: Text('+', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.5),),
              ),
            ),
        ),
    ],
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

class Notes extends StatelessWidget {
  const Notes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400, 
      // color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Flexible(child: Text('This is just a random chunck of text to show how you can add notes to this webapp so additional information can be added for the client and user!!'),
        ),
      ),
    );
  }
}

class NextTrim extends StatelessWidget {
  const NextTrim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text('January 20, 2024'),
    );
  }
}

class Address extends StatelessWidget {
  const Address({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text('123 Street'),
    );
  }
}


class Name extends StatelessWidget {
  const Name({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.headlineSmall!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Larry Jane', style: style),
    );
  }
}


class AddressTitle extends StatelessWidget {
  const AddressTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Address', style: style),
    );
  }
}


class NextTrimTitle extends StatelessWidget {
  const NextTrimTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Next Trimming', style: style),
    );
  }
}


class NotesTitle extends StatelessWidget {
  const NotesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final style = theme.textTheme.titleMedium!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Notes', style: style),
    );
  }
}



class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState(); 
}


class _InputPageState extends State<InputPage> {

  final nameController = TextEditingController();
  final addressController = TextEditingController(); 

  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   nameController.dispose();
  //   ageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    const formTitle = 'Contact Information';
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(243, 251, 236, 1)),
        scaffoldBackgroundColor: const Color.fromRGBO(243, 251, 236, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(formTitle),
        ),
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameInputTitle(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
                controller: nameController,
                ),
              ), 
              SizedBox(height: 16, width: 10,),
              AdressInputTitle(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                    hintText: 'Enter a search term',
                  ),
                  controller: addressController,
                ),
              ), 
              SizedBox(height: 20, width: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                  print(nameController.text);
                  print(addressController.text);
                },
                child: Text('Submit')
              ),
            ],
          )
        ),
      )
    );
  } 
}

class AdressInputTitle extends StatelessWidget {
  const AdressInputTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final style = theme.textTheme.titleLarge!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      // fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Align( 
        alignment: Alignment.bottomLeft,
        child: Text('Address', style: style),
      )
    );
  }
}

class NameInputTitle extends StatelessWidget {
  const NameInputTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final style = theme.textTheme.titleLarge!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
      // fontWeight: FontWeight.bold, 
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Align( 
        alignment: Alignment.bottomLeft,
        child: Text('Name', style: style),
      )
    );
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


