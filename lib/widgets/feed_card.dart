import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  const FeedCard({ Key? key, required this.date, required this.city, required this.image, required this.maxlines }) : super(key: key);
  final String date;
  final String city;
  final String image;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 15,
          color: Color.fromARGB(255, 197, 196, 196),
          
        ),
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  width: 35,
                  height: 35,
                  clipBehavior: Clip.hardEdge,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.asset("assets/6.jpg",
                  fit: BoxFit.cover,
                  ),
                ),
              ),
              // SizedBox(
              //   width: 20,

              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width-120,
                    margin: EdgeInsets.all(5),
                    child: RichText(
                    text:TextSpan(
                      text:"Prince Joshua Oyeniyi",
                    style: TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500, 
                                   color: Colors.black),
                                   children: const <TextSpan>[
      TextSpan(text: ' is at', style: TextStyle(fontWeight: FontWeight.w300)),
      TextSpan(text: ' Google NYC', style: TextStyle(fontWeight: FontWeight.bold))
                                   ]
                    ),
                  ),

                  
                  
                  ),
                   Container(                    
                     margin: EdgeInsets.only(left:5),
                     child: Row(
        children: [
          Text("$date . $city, Nigeria. "),
          Icon(Icons.people)
        ],
      ),
                   )
                ],
              ),
              Icon(Icons.more_horiz_rounded),
              Icon(Icons.close_outlined),
              
              ],

          ),
          
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          style: TextStyle(),
          maxLines: maxlines,
          ),
        
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(
            maxHeight: 300),
          child: 
          Image.asset("assets/$image", fit: BoxFit.cover,)),
     
      ],
      
    );

  }
}