import 'package:fbclone/constants/pageslist.dart';
import 'package:fbclone/views/profile/component/profile.dart';
import 'package:fbclone/views/profile/component/profilemore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profileview extends StatelessWidget {
  const Profileview({Key? key, required}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Text(
                  "Menu",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 13,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              //width: 10,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    )
                  ]
                  //shape: BoxShape.circle,
                  ),
              child: Row(
                children: [
                  Container(
                    // height: 20,
                    // width: 20
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  Text(
                    pagesList.elementAt(3),
                  ),
                  Spacer(),
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      "assets/1.png",
                      fit: BoxFit.cover,
                      width: 30,
                      height: 30,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.expand_circle_down,
                  )
                  //color: Colors.grey,)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Your Shortcuts",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 15),
                 child: Container(
                   height: 70,
                   clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,),
                   child: 
                   //Column(
                    // children: [
                       Image.asset(
                              "assets/1.png",
                              fit: BoxFit.cover,
                              width: 70,
                            ),
                          //  Text(
                           //   pagesList.elementAt(3),
                           // ),
                     //],
                  // ),
                 ),
                
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 8),
                 child: Container(
                   height: 70,
                   clipBehavior: Clip.hardEdge,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10)
                   ),
                   child: Image.asset(
                            "assets/5.jpeg",
                            fit: BoxFit.cover,
                            width: 70,
                          ),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    height: 70,
                     clipBehavior: Clip.hardEdge,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10)
                     ),
                    child: Image.asset(
                            "assets/8.jpg",
                            fit: BoxFit.cover,
                            width: 70,
                          ),
                  ),
                )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Text(
                "All Shortcuts",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
          ),
          SizedBox(
            height: 15,),
          
          
            
          Profile(icon: Icons.search,
          ),
          profileMore()
          ],
      ),     
    );
  }
}
