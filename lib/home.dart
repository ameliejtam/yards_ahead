part of 'main.dart'; 

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Create button to add new events
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Dialogue to tell user to input an event name
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
            Image.asset("assets/images/picture 1.png"), 
            Image.asset("assets/images/pciture 2.png"),
            Image.asset("assets/images/picture 3.png")
            ],
          ),
                ),
                //Add a submit button to the add event floating button screen
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
        CarouselSlider(
              items: [
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg"),
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg"), 
            Image.asset("assets/images/evergreen-shrubs-boxwood.jpg")
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