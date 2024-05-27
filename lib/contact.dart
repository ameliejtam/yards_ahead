// an extension of the main.dart file
part of 'main.dart'; 

// create the contact page 
class ContactPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
  // create a table with all the contact information of a client
  return Column(
    children: [
      Container(
        // design of the table, including border colour and curved corners 
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Color.fromRGBO(211, 222, 188, 1)),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        // the following code that creates the table is modified from source [10]
        child: Table(
          // set a width for the table columns 
          border: TableBorder.all(color: Color.fromRGBO(243, 251, 236, 1)),
          columnWidths: const <int, TableColumnWidth>{
              0: FixedColumnWidth(180),
              1: FixedColumnWidth(180),
              2: FixedColumnWidth(180),
              3: FixedColumnWidth(180), 
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: <TableRow>[
            // display client name 
            TableRow(
              children: [
                Name(),
                // a sized box is an empty box that often creates space between widgets
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                SizedBox(height: 10, width: 10,),
                ]
            ),
            // display the subheadings of client info 
            TableRow(
              children:[
                AddressTitle(), 
                NextTrimTitle(), 
                PhoneTitle(),
                EmailTitle(),
                NotesTitle(), 
              ],
            ),
            // display personalised client info 
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
      // button to add a contact
      Expanded(
          child: Align(
            alignment: Alignment(0.9, 0.9),
            // the following code that switches the page when a button is clicked was modified from source [11]
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
  }
}

// all the designs and text for the subheadings in the table 
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

// all the designs and text for specific information on the client within the table 
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

class Notes extends StatelessWidget {
  const Notes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400, 
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0), 
        child: Flexible(child: Text('This is just a random chunk of text to show how you can add notes to this webapp so additional information can be added for the client and user!!'),
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
      child: Text('May 2, 2024'),
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

// class for the input page where information can be added for a new client 
class InputPage extends StatefulWidget {
  const InputPage({super.key});
  @override
  State<InputPage> createState() => _InputPageState(); 
}

// input new client information 
class _InputPageState extends State<InputPage> {

  // set controllers for text input (controllers help to access the information that was recently inputed, they aren't currently used due to time restrictions in allowing further coding progress)
  // this code was modified from source [12]
  final nameController = TextEditingController();
  final addressController = TextEditingController(); 
  final trimController = TextEditingController(); 
  final phoneController = TextEditingController(); 
  final emailController = TextEditingController(); 
  final notesController = TextEditingController(); 

  // key for the database 
  final _formKey = GlobalKey<FormState>();

  // add info to database, funciton modified from source [15]
  void _submit() async{
    if (_formKey.currentState!.validate()) { 

      const String scriptURL = 'https://script.google.com/macros/s/AKfycbxpbOXdVs8W6_Js6S89gIuf4iiMyYC2WpfJ4TMekSYLA3kV48Sc1DvNFVVx4_ngekC9/exec';

      String tempName = nameController.text;
      String tempAddress = addressController.text;
      String tempTrim = trimController.text;
      String tempNotes = notesController.text;
      String tempPhone = phoneController.text;
      String tempEmail = emailController.text;

      String queryString  = "?name=$tempName&address=$tempAddress&trim=$tempTrim&phone=$tempPhone&email=$tempEmail&notes=$tempNotes";

      var finalURI = Uri.parse(scriptURL + queryString); 
      var response = await http.get(finalURI);

      if (response.statusCode == 200) {
        var bodyR = convert.jsonDecode(response.body);
        print(bodyR);
      }
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed, modified from source [13]
    nameController.dispose();
    addressController.dispose();
    trimController.dispose();
    phoneController.dispose();
    emailController.dispose();
    notesController.dispose();
    super.dispose();
  }

  // create the layout of the client info input page 
  @override
  Widget build(BuildContext context) {
    const formTitle = 'Contact Information';
    // set the colour scheme and background colour of the input page  
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(243, 251, 236, 1)),
        scaffoldBackgroundColor: const Color.fromRGBO(243, 251, 236, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(formTitle),
        ), 
        // form allows for a text input page layout 
        body: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                // client name subheading
                NameInputTitle(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // the following function designs a user input box and takes in user input, and was modified from source [13]
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the name',
                  ),
                  controller: nameController,
                  ),
                ), 
                SizedBox(height: 16, width: 10,), 
                // client address subheading 
                AdressInputTitle(),
                // user input for client adress 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // following function takes in user input 
                  child: TextFormField(
                    // promts the user to enter a value if no value was originally inptued, modifed from source [14]
                    validator: (value) {
                      if (value == "") {
                        return 'Enter a value';
                      }
                    }, 
                    // design of the input box 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the address',
                    ),
                    controller: addressController,
                  ),
                ), 
                SizedBox(height: 16, width: 10,),
                // client next trimming appointment subheading 
                TrimInputTitle(),
                // user input for next trimming appointment 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // take user input 
                  child: TextFormField(
                    // promts the user to enter a value if no value was originally inptued, modifed from source [14]
                    validator: (value) {
                      if (value == "") {
                        return 'Enter a value';
                      }
                    },
                    // design of the input box 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the next appointment date',
                    ),
                    controller: trimController,
                  ),
                ), 
                SizedBox(height: 20, width: 10,),
                // client phone number subheading
                PhoneInputTitle(),
                // user input for the client phone number 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // take user input 
                  child: TextFormField(
                    // promts the user to enter a value if no value was originally inptued, modifed from source [14]
                    validator: (value) {
                      if (value == "") {
                        return 'Enter a value';
                      }
                    },
                    // design of the input box 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the phone number',
                    ),
                    controller: phoneController,
                  ),
                ), 
                SizedBox(height: 20, width: 10,),
                // client email subheading
                EmailInputTitle(),
                // user input for the client email
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // take user input 
                  child: TextFormField(
                    // promts the user to enter a value if no value was originally inptued, modifed from source [14]
                    validator: (value) {
                      if (value == "") {
                        return 'Enter a value';
                      }
                    },
                    // design of the input box 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the email',
                    ),
                    controller: emailController,
                  ),
                ), 
                SizedBox(height: 20, width: 10,), 
                // additional notes on the client 
                NotesInputTitle(),
                // user input for notes on the client  
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  // take user input 
                  child: TextFormField(
                    // promts the user to enter a value if no value was originally inptued, modifed from source [14]
                    validator: (value) {
                      if (value == "") {
                        return 'Enter a value';
                      }
                    },
                    // design of the input box 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter some notes',
                    ),
                    controller: notesController,
                  ),
                ), 
                SizedBox(height: 20, width: 10,),
                // button that submits the data to the database 
                ElevatedButton(
                  onPressed: (){
                    _submit();
                  },
                  child: Text('Save information')
                ),
                SizedBox(height: 20, width: 10,),
                // button that returns user to contact page (without saving info), modified from source [11]
                ElevatedButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Return')
                ),
              ],
            )
          ),
        ),
      )
    );
  } 
} 

// design for all the text in the input page, including colour, text size and text alignment 
class TrimInputTitle extends StatelessWidget {
  const TrimInputTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
    final style = theme.textTheme.titleLarge!.copyWith(
      color: Color.fromRGBO(108, 129, 88, 1),
    );

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: Align( 
        alignment: Alignment.bottomLeft,
        child: Text('Next appointment', style: style),
      )
    );
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


