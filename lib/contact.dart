part of 'main.dart'; 

// // Database 
// void contactMain() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final database = openDatabase(
  //   join(await getDatabasesPath(), 'clientele_database.db'),
  //   onCreate: (db, version) {
  //     return db.execute(
  //       'CREATE TABLE clients(name TEXT, address TEXT, trim TEXT, phone TEXT, email TEXT, notes TEXT)',
  //     );
  //   },
  //   version: 1,
  // );

  // Future<void> insertClient(Client client) async {

  //   final db = await database;

  //   await db.insert(
  //     'clients',
  //     client.toMap(),
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   );
  // }

  // // A method that retrieves all the dogs from the dogs table.
  // Future<List<Client>> clients() async {
  //   // Get a reference to the database.
  //   final db = await database;

  //   // Query the table for all the dogs.
  //   final List<Map<String, Object?>> clientMaps = await db.query('clients');

  //   // Convert the list of each dog's fields into a list of `Dog` objects.
  //   return [
  //     for (final {
  //           'name': name as String,
  //           'address': address as String,
  //           'trim': trim as String,
  //           'phone': phone as String,
  //           'email': email as String,
  //           'notes': notes as String,
  //         } in clientMaps)
  //       Client(name: name, address: address, trim: trim, phone: phone, email: email, notes: notes),
  //   ];
  // }

  // Future<void> updateClient(Client client) async {
  //   // Get a reference to the database.
  //   final db = await database;

  //   // Update the given Dog.
  //   await db.update(
  //     'clients',
  //     client.toMap(),
  //     // Ensure that the Dog has a matching id.
  //     where: 'name = ?',
  //     // Pass the Dog's id as a whereArg to prevent SQL injection.
  //     whereArgs: [client.name],
  //   );
  // }

  // Future<void> deleteClient(name) async {
  //   // Get a reference to the database.
  //   final db = await database;

  //   // Remove the Dog from the database.
  //   await db.delete(
  //     'clients',
  //     // Use a `where` clause to delete a specific dog.
  //     where: 'name = ?',
  //     // Pass the Dog's id as a whereArg to prevent SQL injection.
  //     whereArgs: [name],
  //   );
  // }

  // // Create a Dog and add it to the dogs table
  // var newerClient = Client(
  //   name: 'Larry Jane',
  //   address: '123 Magical Tree Street',
  //   trim: 'January 20, 2024',
  //   phone: '123-456-7890',
  //   email: 'larryjane@email.com',
  //   notes: 'This is just a random chunck of text to show how you can add notes to this webapp so additional information can be added for the client and user!!',
  // );

  // await insertClient(newerClient);

  // // Now, use the method above to retrieve all the dogs.
  // print(await clients()); // Prints a list that include Fido.

  // // Update Fido's age and save it to the database.
  // newerClient = Client(
  //   name: 'Larry Jane',
  //   address: '123 Magical Tree Street',
  //   trim: 'April 12, 2024', 
  //   phone: '123-456-7890',
  //   email: 'larryjane@email.com',
  //   notes: 'Words no longer needed!',
  // );

  // await updateClient(newerClient);

  // // Print the updated results.
  // print(await clients()); // Prints Fido with age 42.

  // // Delete Fido from the database.
  // await deleteClient(newerClient.name);

  // // Print the list of dogs (empty).
  // print(await clients());
// }



class Client {
  final String name;
  final String address;
  final String trim;
  final String phone;
  final String email;
  final String notes;

  Client({
    required this.name,
    required this.address,
    required this.trim,
    required this.phone,
    required this.email,
    required this.notes,
  });

  Map<String, Object?> toMap() {
    return {
      'name': name,
      'address': address,
      'trim': trim,
      'phone': phone, 
      'email': email, 
      'notes': notes, 
    };
  }
}


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
              0: FixedColumnWidth(180),
              1: FixedColumnWidth(180),
              2: FixedColumnWidth(180),
              3: FixedColumnWidth(180), 
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: <TableRow>[
            TableRow(
              children: [
                Name(),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                ]
            ),
            TableRow(
              children:[
                AddressTitle(), 
                NextTrimTitle(), 
                PhoneTitle(),
                EmailTitle(),
                NotesTitle(), 
              ],
            ),
            TableRow(
              children: [
                Address(),
                NextTrim(), 
                Phone(), 
                Email(),
                Notes(),
              ],
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

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text('larryjane@email.com'),
    );
  }
}

class Phone extends StatelessWidget {
  const Phone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text('123-456-7890'),
    );
  }
}

class EmailTitle extends StatelessWidget {
  const EmailTitle({
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
      child: Text('Email', style: style),
    );
  }
}

class PhoneTitle extends StatelessWidget {
  const PhoneTitle({
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
      child: Text('Phone', style: style),
    );
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
      child: Text('123 Magical Tree Street'),
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
  final phoneController = TextEditingController(); 
  final emailController = TextEditingController(); 
  final notesController = TextEditingController(); 

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    emailController.dispose();
    notesController.dispose();
    super.dispose();
  }


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
                  border: OutlineInputBorder(),
                  hintText: 'Enter the name',
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
                    border: OutlineInputBorder(),
                    hintText: 'Enter the address',
                  ),
                  controller: addressController,
                ),
              ), 
              SizedBox(height: 20, width: 10,),
              PhoneInputTitle(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the phone number',
                  ),
                  controller: phoneController,
                ),
              ), 
              SizedBox(height: 20, width: 10,),
              EmailInputTitle(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the email',
                  ),
                  controller: emailController,
                ),
              ), 
              SizedBox(height: 20, width: 10,),
              NotesInputTitle(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter some notes',
                  ),
                  controller: notesController,
                ),
              ), 
              SizedBox(height: 20, width: 10,),
              ElevatedButton(
                onPressed: (){
                  DatabaseHelper.insertClient(Client(name: nameController.text,
                      address: addressController.text,
                      trim: 'null', 
                      phone: phoneController.text,
                      email: emailController.text,
                      notes: notesController.text,));

                  // print(DatabaseHelper.clients()); 
                },
                child: Text('Save information')
              ),
              SizedBox(height: 20, width: 10,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Return')
              ),
            ],
          )
        ),
      )
    );
  } 
} 

class DatabaseHelper{
  static const String _dbName = 'clientele_database.db';

  static Future<Database> _getDB() async {
    print('ARGGGGGG');
    return openDatabase(join(await getDatabasesPath(), _dbName),
      onCreate: (db, version) async => await db.execute(
        'CREATE TABLE clients(name TEXT, address TEXT, trim TEXT, phone TEXT, email TEXT, notes TEXT)'),
    version: 1,
    ); 
  }

  static Future<void> insertClient(Client client) async {
    print('BURNNNN'); 

    print(_getDB());

    final db = await _getDB();

    print('ORANGE');

    await db.insert(
      'clients',
      client.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    ); 

    print('YELLOW');
  }

   static Future<List<Client>> clients() async {
    final db = await _getDB();
    final List<Map<String, Object?>> clientMaps = await db.query('clients');
    return [
      for (final {
            'name': name as String,
            'address': address as String,
            'trim': trim as String,
            'phone': phone as String,
            'email': email as String,
            'notes': notes as String,
          } in clientMaps)
        Client(name: name, address: address, trim: trim, phone: phone, email: email, notes: notes),
    ];
  }

}


class NotesInputTitle extends StatelessWidget {
  const NotesInputTitle({
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
        child: Text('Notes', style: style),
      )
    );
  }
}

class EmailInputTitle extends StatelessWidget {
  const EmailInputTitle({
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
        child: Text('Email', style: style),
      )
    );
  }
}

class PhoneInputTitle extends StatelessWidget {
  const PhoneInputTitle({
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
        child: Text('Phone', style: style),
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


