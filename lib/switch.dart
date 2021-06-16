import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {  
  @override  
  SwitchClass createState() => new SwitchClass();  
}  
  
class SwitchClass extends State {  
  bool isSwitched = false;  
  var textValue = 'Switch is OFF';  
  
  void toggleSwitch(bool value) {  
  
    if(isSwitched == false)  
    {  
      setState(() {  
        isSwitched = true;  
        textValue = 'Switch Button is ON';  
      });  
      print('Switch Button is ON');  
    }  
    else  
    {  
      setState(() {  
        isSwitched = false;  
        textValue = 'Switch Button is OFF';  
      });  
      print('Switch Button is OFF');  
    }  
  }  
  @override  
  Widget build(BuildContext context) {  
    return 
    // Column(  
    //     mainAxisAlignment: MainAxisAlignment.center,  
    //     children:[ Transform.scale(  
    //         scale: 1,  
    //         child:
             Switch(  
              onChanged: toggleSwitch,  
              value: isSwitched,  
              activeColor: Colors.white,  
              activeTrackColor: Colors.blue[600],  
              inactiveThumbColor: Colors.white,  
              inactiveTrackColor: Colors.grey,  
            ) ; 
           
  }  
}  




















// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';

// class Gesture extends StatefulWidget {
//   @override
//   _GestureState createState() => _GestureState();
  
// }

// class _GestureState extends State<Gesture> {
//   int vas = 0;
//   int vad = 0;

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: double.infinity,
//         child: GestureDetector(
//           onVerticalDragStart: (DragStartDetails details) {
//             vas = vas + 1;
//             // print(details);
//           },
//           onVerticalDragUpdate: (DragUpdateDetails details) {
//             setState(() {
//                 vad=1;          
//                         });
//             print(vad);
//             if (vad==1){
//               return Scaffold(body: Container(
//                 color: Colors.red,
//                 width: double.infinity,
//                 height: double.infinity,
//               ));
//             }
//           },
//           child: Container(
//             color: Colors.blue,
//             width: 200,
//             height: 500,
//           ),
//         ),
//       ),
//     );
//   }
// }
