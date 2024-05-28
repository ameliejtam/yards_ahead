part of 'main.dart'; 

class CalendarPage extends StatefulWidget {
    @override
    //Initialize an additional page for the calendar
    State<CalendarPage> createState() => _CalendarPageState();
}


class _CalendarPageState extends State<CalendarPage> {
  //Set default calendar format to month
  CalendarFormat _calendarFormat = CalendarFormat.month;
  //Initialize private variable called "_focusedDay" to store the date for today
  DateTime _focusedDay = DateTime.now();
  //Initialize private variable called "_selectedDay" to store the date that the user clicked on
  DateTime? _selectedDay;
  //Initialize dictionary called "events" to store the date and title information for created events (dictionaries are called "Maps" in Dart)
  Map<DateTime, List<String>> events = {};
  //Initialize a text input controller called "_eventController" to allow the user to input the event name
  TextEditingController _eventController = TextEditingController();
  //Use the "ValueNotifier" function to notify other parts of the program when a new event is added
  late final ValueNotifier<List<String>> _selectedEvents;

  //Instance method to set up calendar display 
  @override
  void initState() {
    super.initState();
    //Set the day that is being selected on the calendar as the day today
    _selectedDay = _focusedDay;
    //Notify program to retrieve events for a given day when a new day has been selected
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  //"dispose" method to optimize resource use (get rid of no-longer-used resources in widgets)
  @override 
  void dispose() {
    super.dispose();
  }

  //Create function _getEventsForDay to retrieve events for a given day
  //Function should return a list of events for a given day
  List<String> _getEventsForDay(DateTime day){
    //Return a list of the events that take place on the given day
    return events[day] ?? [];
  }
  
  //This function was adapted from source [2] to ensure that the app display is up-to-date with regards to the day that the user is clicking on in the calendar
  //Function to keep program display up-to-date with the day that the user has clicked on
  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    //If the day that the user has clicked on in the calendar does not match the value of the private variables the program used to store the selected day and focused day, change those private variables to match what the user is currently clicking on
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        //Make sure that events listed are only the events that occur on the day that the user clicked on
        _selectedEvents.value = _getEventsForDay(selectedDay);
      });
    }
  }

  //Widget to display the calendar and allow the user to add events to the calendar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Create the calendar title and subtitle
      //Center the title
      appBar: AppBar(
        title: Center(
          child: Text("Clients Calendar"),
        ),
      ),
      //ADD NEW EVENTS FEATURE:
      //Create button to add new events
      //This code was adapted from source [2] to create a button to add appointments to the calendar
      floatingActionButton: FloatingActionButton(
        //When button is pressed, open a box on the screen with a place where the user can enter the name of their event
        onPressed: () {
          //Dialogue to tell user to input an event name
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: Text("Appointment Name"),
                content: Padding(
                  padding: EdgeInsets.all(8),
                  //Get text input from the user using the text input controller created previously
                  child:TextField(
                    controller: _eventController,
                  ),
                ),
                //Add a submit button to the add event floating button screen
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      //When the submit button is pressed, add submitted events to the selected day in the events dictionary in the form of a key:value pair
                      events.addAll({
                        _selectedDay!: [_eventController.text]
                      });
                      //Exit the adding events pop-up
                      Navigator.of(context).pop();
                      //Display the event on the screen
                      _selectedEvents.value = _getEventsForDay(_selectedDay!);
                    }, 
                  //Set submit button text
                  child: Text("Submit"),
                  )
                ],
              );
            });
        }, 
        // Set an icon for the add events button
        child: Icon(Icons.add),
      ),
      //CALENDAR DISPLAY
      body: Column(
        children: [
          Center(
            child: Text("Click on days to add events/appointments!"),
          ),
          //Use TableCalendar widget to create a calendar
          TableCalendar(
            //Set focusedDay as "_focusedDay" so that calendar always opens up to the current day
            focusedDay: _focusedDay,
            //Range of calendar display pages
            firstDay: DateTime.utc(2024, 3, 1),
            lastDay: DateTime.utc(2095, 3, 1),
            //Highlight the selected day
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: _onDaySelected,
            //Load events into calendar
            eventLoader: _getEventsForDay,
            //Change calendar formatting
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
          ),
          SizedBox(height: 8.0),
          Expanded(
            //Create list to display events below the table
            //This section of the code was adapted from source [2] to build a table in which the appointments for a given day could be viewed
            child: ValueListenableBuilder<List<String>>(
              valueListenable: _selectedEvents, 
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    //Return and display events on screen
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      //Display title of event
                      child: 
                      ListTile(
                        //Command that runs when user taps an event in the list (will be programmed to allow the user to edit events later!)
                        onTap: () => print(""), 
                        title: Text('${value[index]}'),
                      ),
                    );
                  });
            })
          )
        ], //Children
      ),
    );
  }
}