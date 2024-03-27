part of 'main.dart'; 

class CalendarPage extends StatefulWidget {
    @override
    State<CalendarPage> createState() => _CalendarPageState();
}


class _CalendarPageState extends State<CalendarPage> {
  //CHANGE
  CalendarFormat _calendarFormat = CalendarFormat.month;
  // Create variable called "_focusedDay" to store the date and time of today
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  //Store the events that were created
  Map<DateTime, List<Event>> events = {};
  //Create text input
  TextEditingController _eventController = TextEditingController();
  //Add a list to display the events on a given day
  //By using the "ValueNotifier" function, the list will refresh every time a new event is added
  late final ValueNotifier<List<Event>> _selectedEvents;

  //Initialize variables
  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    //Variable to store a list of events in the calendar
    //GetEvents will store a DateTime variable, and through this it will retrieve events from a certain given day
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override 
  void dispose() {
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  //Create function _getEventsForDay to retrieve events for a given day
  //Function should return a list of events for a given day
  List<Event> _getEventsForDay(DateTime day){
    //Return the events that take place on the given day
    return events[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Center the title
      appBar: AppBar(
        title: Center(
          child: Text("Clients Calendar"),
        ),
      ),
      //Create button to add new events
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Dialogue to tell user to input an event name
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: Text("Event Name"),
                content: Padding(
                  padding: EdgeInsets.all(8),
                  //Get text input from the user
                  child:TextField(
                    //Set controller to the text input controller created previously
                    controller: _eventController,
                  ),
                ),
                //Add a submit button to the add event floating button screen
                actions: [
                  ElevatedButton(
                    onPressed: () {
                    //Use the calendar's addEvents function to add submitted events to the selected day
                    events.addAll({
                      _selectedDay!: [Event(_eventController.text)]
                    });
                    //Store the event name to the calendar
                    // Navigator.of(context).pop();
                    //Display the event on the screen
                    _selectedEvents.value = _getEventsForDay(_selectedDay!);
                  }, 
                  child: Text("Submit"),
                  )
                ],
              );
            });
        }, 
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Center(
            child: Text("Click on days to add events and click on already-added events to edit them!"),
          ),
          TableCalendar(
            //Set "_focusedDay" as focusedDay so that calendar always opens up to the current day
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2024, 3, 1),
            lastDay: DateTime.utc(2025, 3, 1),
            //Highlight a selected day
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            // onDaySelected: (selectedDay, focusedDay) {
            //   setState(() {
            //     _selectedDay = selectedDay;
            //     today = focusedDay; 
            //   });
            // },
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
            // eventLoader: (day) {
            //   return _getEventsForDay(day);
            // },
          ),
          SizedBox(height: 8.0),
          Expanded(
            //Create list to display table calendar elements below the table
            child: ValueListenableBuilder<List<Event>>(
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
                      child: ListTile(
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