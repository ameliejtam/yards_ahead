part of 'main.dart';  

//Map feature
class MapPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //get rid of debug mode
      home: Scaffold( //map placed in primary scaffold
        body: FlutterLocationPicker( //import the location picker package, general format taken from [18]
          initPosition: LatLong(45.4215, -75.6972),//setting the initial region to ottawa
          initZoom: 14, //set the initial zoom
          minZoomLevel: 5,
          maxZoomLevel: 80,
          searchBarBackgroundColor: Colors.white, //cutsomize the reatures
          selectedLocationButtonTextstyle: const TextStyle(fontSize: 18),
          mapLanguage: 'en', //language of map is customizabel
          onError: (e) => print(e),
          selectLocationButtonLeadingIcon: const Icon(Icons.check),
          onPicked: (pickedData) { //the data is displayed depending on where the user picks a location
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          onChanged: (pickedData) {//the updated data is displayed depending on where the user picks a location
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          showContributorBadgeForOSM: false,//maps taken from general open street maps (since google maps not a possibility)
        ),
      ),
    );
  }
}