part of 'main.dart';  

class MapPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    // var appState = context.watch<MyAppState>();
    
   return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: latLng.LatLng(45.4215,-75.6972),
              zoom: 11,
            ),
            children: [
              TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
