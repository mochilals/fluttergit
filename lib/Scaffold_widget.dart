import 'package:flutter/material.dart';
import 'package:flutter_application_2/button.dart';
import 'package:flutter_application_2/date_widget.dart';
import 'package:flutter_application_2/dialog.dart';
import 'package:flutter_application_2/image.dart';
import 'package:flutter_application_2/input_selection.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sample Code"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
        actions: [
          Text("Android"),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 100, 10, 90),
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "You have pressed button",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          DialogWdiget(),
          InputSelection(),
          tanggal(),
          ImageWidget(),
          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: "profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user_sharp),
            label: "User",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout_outlined), label: "logout"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        tooltip: 'increment counter',
        child: Icon(Icons.plus_one),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}





























































// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class ScaffoldWidget extends StatelessWidget {
//   const ScaffoldWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sampel Code"),
//         leading: IconButton(
//           onPressed:() {}, 
//           icon: Icon(Icons.home)
//         ),
//         actions: [
//           Text("Android"),
//           IconButton(onPressed: () {}
//           , icon: Icon(Icons.more_vert)
//           ),
//         ],
//         backgroundColor: Color.fromARGB(255, 100, 10, 90),
//         foregroundColor: Colors.white,
//       ),
//       body: const Center(
//         child: Text(
//           "You have pressed the button",
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.red,
//             fontWeight: FontWeight.bold
//           ),bottomNavigationBar: BottomAppBar(
//             child: Container(

//             ),
//           )
//         ),
//       ),
//     );
//   }
// }
