import 'package:char_app/AppStyleModeNotifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appStyleMode = Provider.of<AppStyleModeNotifier>(context);

    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Container for the header name

          Container(
            margin: EdgeInsets.only(top: 32, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, size: 30, color: Colors.white,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                Text("Maaz Aftab", style: GoogleFonts.roboto(fontSize: 30, fontWeight: FontWeight.w500, textStyle: TextStyle(color: Colors.white)),),

                Icon(Icons.search, size: 30, color: Colors.white,)
              ],
            ),
          ),

          SizedBox(height: 16,),

          //DraggableContainer for messages
          Expanded(
            child: DraggableScrollableSheet(
              builder: (context, scrollController){
                return Container(
                  decoration: BoxDecoration(
                    color: appStyleMode.primaryBackgroundColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50))
                  ),
                  padding: EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text("Today", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColor, fontWeight: FontWeight.w500)),),

                        SizedBox(height: 32,),

                        //Container for msg
                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)),
                                    color: appStyleMode.primaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.primaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomRight,
                        ),

                        SizedBox(height: 32,),

                        //container for msg 2

                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
                                    color: appStyleMode.secondaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.secondaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomLeft,
                        ),
                        SizedBox(height: 32,),

                        //Container for msg
                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)),
                                    color: appStyleMode.primaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.primaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomRight,
                        ),

                        SizedBox(height: 32,),

                        //container for msg 2

                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
                                    color: appStyleMode.secondaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.secondaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomLeft,
                        ),
                        SizedBox(height: 32,),

                        //Container for msg
                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)),
                                    color: appStyleMode.primaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.primaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomRight,
                        ),

                        SizedBox(height: 32,),

                        //container for msg 2

                        Align(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(32), topLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
                                    color: appStyleMode.secondaryMessageBoxColor
                                ),
                                child: Text("Yes I am just leaving my home, and i will be right there", style: GoogleFonts.roboto(textStyle: TextStyle(
                                    color: appStyleMode.secondaryMessageTextColor
                                )),),

                              ),
                              //paste it

                              SizedBox(height: 4,),
                              Text("02:12 AM", style: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight)),)

                            ],
                          ),
                          alignment: Alignment.bottomLeft,
                        ),


                      ],
                    ),
                  ),
                );
              },
              initialChildSize: 1.0,
              maxChildSize: 1.0,
              expand: true,
            ),
          ),

          //Conatiner for typing message

          Container(
            padding: EdgeInsets.all(16),
            color: appStyleMode.primaryBackgroundColor,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            borderSide: BorderSide(color: Colors.transparent)
                        ),
                        filled : true,
                        fillColor: appStyleMode.typeMessageBoxColor,
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                        hintText: "Type message",
                        hintStyle: GoogleFonts.roboto(textStyle: TextStyle(color: appStyleMode.primaryTextColorLight))

                    ),
                  ),
                ),
                SizedBox(width: 16,),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.blue,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
