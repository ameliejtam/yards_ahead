# Yards Ahead
Program that runs the Yards Ahead web application designed for Yards Ahead hedge-trimming business owner, Bryan Doherty. Offers efficient organisational features to make tracking business records quick and easy. The client can track personal contact information, locate clients, and schedule meetings, as well as benefit from the customised user interface. 


## Features
- Contact book that keeps track of client information, including name, address, phone number, email 
- Maps with client address search and display, location tracking, zoom in and out and panning functions.
- Calendar that organises client appointments and features different display options for users
- Bottom task bar menu to easily navigate between Home, Calendar, Contacts and Map pages
- Easy-to-use UI with green colour scheme and built-in Help feature
- Dynamic splash screen
- Homepage with picture carousel


## Installation
Please follow the following instructions to install the downloads, kits, and packages required to run the project:
1. Download the Flutter SDK (link: https://docs.flutter.dev/get-started/install)
2. Open the project with VS Code
3. Install the Flutter Extension and Dart Extension in VS Code
4. Open the main.dart file of the project
5. Run pub get --> (In terminal) “dart pub get” (without the quotations)
7. Run Flutter Doctor, and download the any missing prerequisites required to run Flutter and VS Code --> (In terminal) “flutter doctor” (without the quotations)
8. Double-check that the following dependencies are present in the pubspec.yaml file under the title “dependencies”:
    - carousel_slider
    - english_words
    - provider
    - cupertino_icons
    - table_calendar
    - flutter_map
    - location_picker_flutter_map
    - http


## Known Bugs
- Contact Book:
    - Validation of the input page only appears on proceeding text boxes. Basically, when the user is adding information about a new client, the validation that prompts the user to enter a value if the textbox is empty will only show on the bottom text boxes. For example, if the user were to input information about the client’s Address, Next Appointment, and Phone Number and clicks the “Save Information” button, the validation error would only appear for the Email and Notes text box, and not appear for the Name text box. 
    - Once the user clicks the “Save Information” button when adding a new client, the information will get saved to the database. However, the functionality that would actually display the newly added client information on the contact book page has not yet been written.  
    - If the size of the tab is too small, the table showing the client information on the contact page will overflow and the page will give you a warning (often in the form of a bright yellow warning box). If this occurs, simply make the tab a larger size or zoom out of the page. 
- Maps: 
    - The location picker does not always work after using other map functions. Ideally, the user will allow the site to access location before the use of the tracking function, but occasionally will take extra time to load, or require a general reload.
- Calendar:
    - Number of appointment boxes that can be added in one day: Due to the nature of the data type used to display the calendar appointments to be a dictionary (known as a “map” in dart), only one appointment box can appear for a given day. As such, when adding appointments to the calendar, the user should add all of their appointments for a given day all at once
    - The calendar has not yet been linked to the database, meaning that data will not save after the user moves off of the calendar page
- Note: If the images from the main page overflow, simply zoom out your page using command then (-). 


## Support
For any inquiries or support, please contact the developers through the following emails:
- Chloe Wei: wei.chloe55@gmail.com 
- Amelie Tam: ameliejtam@gmail.com 
- Christina Zhou: cxzhou567@gmail.com 


## Sources
- [1] “Creating a flutter app with a google sheets database,” YouTube, https://www.youtube.com/watch?v=iZPICyh05wU (accessed May 24, 2024). 
- [2] “How to add event in table calendar flutter,” YouTube, https://www.youtube.com/watch?v=ASCs_g8RJ9s (accessed May 24, 2024). 
- [3] “Retrieve the value of a text field,” Flutter, https://docs.flutter.dev/cookbook/forms/retrieve-input#:~:text=Create%20a%20TextEditingController-,To%20retrieve%20the%20text%20a%20user%20has%20entered%20into%20a,resources%20used%20by%20the%20object (accessed May 24, 2024). 
- [4] “Table_calendar library,” table_calendar library - Dart API, https://pub.dev/documentation/table_calendar/latest/table_calendar/table_calendar-library.html (accessed May 24, 2024). 
- [5] “Tablecalendar,” table_calendar - Dart API docs, https://pub.dev/documentation/table_calendar/latest/ (accessed May 24, 2024). 
- [6] “Title property,” title property - AppBar class - material library - Dart API, https://api.flutter.dev/flutter/material/AppBar/title.html (accessed May 24, 2024). 
- [7] B. Ahmad, “How to center align text using Alignwidget Flutter?,” FlutterDesk, https://flutterdesk.com/how-to-center-align-text/#:~:text=By%20wrapping%20your%20text%20in,to%20common%20text%20alignment%20challenges (accessed May 24, 2024). 
- [8] “Layout widgets,” Flutter, https://docs.flutter.dev/ui/widgets/layout (accessed May 24, 2024). 
- [9] “How to create a flutter table calendar in just 5 minutes!,” YouTube, https://www.youtube.com/watch?v=6Gxa-v7Zh7I (accessed May 24, 2024). 
- [10] “Table class,” Flutter - widgets library, https://api.flutter.dev/flutter/widgets/Table-class.html (accessed May 24, 2024). 
- [11] “Navigate to a new screen and back,” Flutter, https://docs.flutter.dev/cookbook/navigation/navigation-basics (accessed May 24, 2024). 
- [12] True Coders, “Flutter - get data from text field | text input widgets | input text and access data | textfield,” YouTube, https://www.youtube.com/watch?v=wCs4Y6HPVg4&ab_channel=TrueCoders (accessed May 24, 2024). 
- [13] “Create and style a text field,” Flutter, https://docs.flutter.dev/cookbook/forms/text-input (accessed May 24, 2024). 
- [14] “Create and style a text field,” Flutter, https://docs.flutter.dev/cookbook/forms/validation (accessed May 24, 2024).   
- [15] R. Verma, “How to store data in Google Sheets using flutter?,” Rajiv Verma, https://rajivverma.me/blog/tech/store-data-google-sheets-flutter/ (accessed May 25, 2024). 
- [16] “GeeksforGeeks | A computer science portal for geeks,” GeeksforGeeks, 2019. https://www.geeksforgeeks.org/splash-screen-in-flutter/  (accessed May 26, 2024).
- [17] R. D. Lio, “Getting Started with Flutter Map,” Medium, Feb. 27, 2024. https://raphaeldelio.medium.com/getting-started-with-flutter-map-9cf4113f22e9 (accessed May 26, 2024).
- [18] “location_picker_flutter_map | Flutter package,” Dart packages. https://pub.dev/packages/location_picker_flutter_map (accessed May 26, 2024).
- [19] N. Sehan, “Carousel Slider in Flutter,” Medium, Jul. 22, 2023. https://medium.com/@nishal.sehan/carousel-slider-in-flutter-660e9ca4b155 (accessed May 26, 2024).
‌
‌
‌##images
- [1]R. P. Inc, “Evergreen Shrubs: Pros and Cons – Gardening Tips,” www.rootwell.com, Jun. 06, 2018. https://www.rootwell.com/blogs/evergreen-shrubs
‌

