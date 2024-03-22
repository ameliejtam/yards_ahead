part of 'main.dart';  

class MapPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FlutterLocationPicker(
          initPosition: LatLong(45.4215, -75.6972),
          initZoom: 14,
          minZoomLevel: 5,
          maxZoomLevel: 80,
          searchBarBackgroundColor: Colors.white,
          selectedLocationButtonTextstyle: const TextStyle(fontSize: 18),
          mapLanguage: 'en',
          onError: (e) => print(e),
          selectLocationButtonLeadingIcon: const Icon(Icons.check),
          onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          onChanged: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          showContributorBadgeForOSM: false,
        ),
      ),
    );
  }
}