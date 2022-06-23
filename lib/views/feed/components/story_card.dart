import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
   StoryCard({ Key? key, required this.number }) : super(key: key);
 int number;
  @override
  Widget build(BuildContext context) {
    return 
    
                  Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                          margin: const EdgeInsets.fromLTRB(5, 5 ,0, 0),
                          height: 120,
                          width: 80,
                          decoration: BoxDecoration(
                            
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Image.asset("assets/1.png")
                          //  CachedNetworkImage(
                          //   fit: BoxFit.cover,
                          //   imageUrl: "https://images.pexels.com/photos/12175850/pexels-photo-12175850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" ),
                        ),
                        Positioned(
                          top: 10,
                          right: 10,
                          child: Container(

                            height: 15,
                            width: 15,
                            
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                           child: Center(
                             child: Text(number.toString(),
                             style: TextStyle(fontSize: 10, 
                             color: Colors.white),
                             ),
                           ),
                        )),
                         Positioned(
                           bottom: 0,
                           child: Container(
                             margin: const EdgeInsets.fromLTRB(5, 5 ,0, 0),
                              height: 120,
                           width: 80,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                
                                colors: [Colors.black.withOpacity(0.4),
                                      Colors.black.withOpacity(0.3),    
                                      Colors.black.withOpacity(0.2),
                                      Colors.transparent,
                                      Colors.transparent,
                                      Colors.transparent,                             
                                ]),
                            
                            borderRadius: BorderRadius.circular(10),
                            
                          ),),
                          
                           
                           ),
                          Positioned(
                          bottom: 10,
                          left:10,
                          child: Text("Abraham \n Aigbovo",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 10,
                            color: Colors.white),
                          ),
                         ),
                      
                    ],
                  );
  }
}