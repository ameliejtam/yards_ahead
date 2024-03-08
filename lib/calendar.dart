part of 'main.dart'; 

class CalendarPage extends StatefulWidget {
    @override
    State<CalendarPage> createState() => _CalendarPageState();
}


class _CalendarPageState extends State<CalendarPage> {
  //CHANGE
  CalendarFormat _calendarFormat = CalendarFormat.month;
  // Create variable called "today" to store the date and time of today
  DateTime today = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Center the title
      appBar: AppBar(
        title: Center(
          child: Text("Clients Calendar"),
        ),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Center(
          child: Text("Click on days to add events and click on already-added events to edit them!"),
        ),
        Container(
          //Customize the calendar
          child: TableCalendar(
            //Set "today" as focusedDay so that calendar always opens up to the current day
            focusedDay: today,
            firstDay: DateTime.utc(2024, 3, 1),
            lastDay: DateTime.utc(2025, 3, 1),
            //Highlight a selected day
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                today = focusedDay; 
              });
            },
            //Change calendar formatting
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          ),
        ),
      ]
    );
  }
}