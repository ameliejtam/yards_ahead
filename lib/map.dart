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
              center: latLng.LatLng(51.509364, -0.128928),
              zoom: 3.2,
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
