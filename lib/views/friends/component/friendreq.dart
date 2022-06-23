import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friendrequest extends StatelessWidget {
  const Friendrequest({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
      
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  width: 60,
                  height: 60,
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
                    width: MediaQuery.of(context).size.width-110,
                    margin: EdgeInsets.all(5),
                    child:
                      Text("Prince Joshua Oyeniyi",
                    style: TextStyle(fontSize: 17,
                    fontWeight: FontWeight.w500, 
                                   color: Colors.black),
                                   
                    
                  
        
                  )
                  
                  ),
                  SizedBox(
                    height:10,
                  ),
                  Row(
                   children: [
                    Container(
                      width: MediaQuery.of(context).size.width/2 -60,
                    padding: EdgeInsets.all(8),
                      decoration: 
                      BoxDecoration(
                        color: Color.fromARGB(255, 2, 133, 240),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        child:
                        Center(child: Text("Confirm",
                        style: TextStyle(color: Colors.white),
                        )),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                                            width: MediaQuery.of(context).size.width/2 -60,

                      padding: EdgeInsets.all(8),
                      decoration: 
                      BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                        child:
                        Center(child: Text("Delete")),
                        

                    )
                  ],
                  )
                  ],

      
              )
            ]
          )
          )
      ]
    );


  }
}