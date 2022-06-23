import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Colon extends StatelessWidget {
  const Colon({ Key? key, required this.text, this.icon }) : super(key: key);
 final String text;
 final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal:10,
                                                  vertical: 2
                                                  ),
                      decoration: 
                      BoxDecoration(
                        color: Colors.black.withOpacity(0.05),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                        child:
                        Row(
                          children: [
                            Visibility(
                            visible: icon != null,
                              child: Icon(icon,
                                  size: 20,
                              ),
                            ),
                            Visibility(
                              visible: icon!= null,
                              child: SizedBox(
                                width: 2,
                              ),
                            ),
                            Text(text),
                          ],
                        ),
                    );
  }
}