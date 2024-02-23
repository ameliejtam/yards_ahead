part of 'main.dart'; 

class CalendarPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    
    return Center(
      child: Text('Calendar!'),
    );
  }
}
