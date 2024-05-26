part of 'main.dart'; 

//homepage-default page one splash screen ends
class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Create button to access the tutorial
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Creating the tutorial, loading in the images with associated features and explainations
          //Customization of the user experiences (title, padding, alignment)
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                scrollable: true,
                title: Text("Features"),
                content: Padding(
                  padding: EdgeInsets.all(2),
                  child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Image.asset("assets/images/picture 1.png"), //retrieving icon images from the assets folder
            Image.asset("assets/images/pciture 2.png"),
            Image.asset("assets/images/picture 3.png")
            ],
          ),
                ),
                //Add a return button to return to the homescreen when finished reading tutorial
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                  }, 
                  child: Text("Return"),
                  )
                ],
              );
            });
        }, 
        child: Icon(Icons.question_mark),
      ),
      body: Center(
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset("assets/images/unnamed.png"),
        CarouselSlider( //carousel package, general formating taken from [19]
              items: [
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg"),
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg"), 
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg")//items witin the carousel
            ],
              options: CarouselOptions(
                height: 180.4, // Customize the height of the carousel
                autoPlay: true, // Enable auto-play
                enlargeCenterPage: true, // Increase the size of the center item
                enableInfiniteScroll: true, // Enable infinite scroll
                onPageChanged: (index, reason) {
                  // Optional callback when the page changes
                  // You can use it to update any additional UI components
                },
              )
        )]
          ),
    )
    );
}
}