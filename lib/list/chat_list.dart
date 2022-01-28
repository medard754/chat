import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:message/list/widgetPage.dart';
import 'package:message/models/generale.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                elevation: 2,
                leading: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 5, top: 5, bottom: 5),
                  child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/v.jpeg"),
                      backgroundColor: Colors.transparent),
                ),
                backgroundColor: Colors.black12,
                title: const Text(
                  "Chat",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        iconSize: 33,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu_open,
                          color: Colors.white,
                        ),
                        iconSize: 33,
                      )
                    ],
                  )
                ],
              ),
              backgroundColor: Colors.black12,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height:12,),
                  Center(
                    child: Container(
                      height:50,
                      width:MediaQuery.of(context).size.width*0.9,
                      decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(30)
                      ),
                      child: TextFormField(
                        
                        style:TextStyle(color:Colors.white),
                        decoration:InputDecoration(
                          labelText:  "Recherche ",
                          labelStyle:TextStyle(
                            color:Colors.white
                          ),
                          fillColor:Colors.white.withOpacity(0.5),
                          filled:true,
                          focusedBorder:OutlineInputBorder(
                            borderRadius:BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.white, ),
                          ),
                         prefixIcon:Icon(Icons.search_rounded,color:Colors.white),
                          hintText: "Recherche",
                          hintStyle:TextStyle(
                            color:Colors.white
                          )
                          
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 8),
                    child: Text("Recherche récentes",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: discussions.length,
                        itemBuilder: (context, index) {
                          return Container(
                              height: 150,
                              child: Stack(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                discussions[index].image),
                                            backgroundColor: Colors.transparent,
                                          ),
                                          SizedBox(
                                            height: 12,
                                          ),
                                          Text(
                                            discussions[index].name,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            discussions[index].prenom,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ))
                                ],
                              ));
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Amis (100)",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: discussion.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => User(
                                                  discussion[index].name,
                                                  discussion[index].prenom,
                                                  discussion[index].image)));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 55,
                                          width: 55,
                                          child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  discussions[index].image
                                                  //"assets/images/v1.jpeg"
                                                  ),
                                              backgroundColor:
                                                  Colors.transparent),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          // height: MediaQuery.of(context).size.height*0.2,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 5,
                                              top: 3,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                Text(
                                                  discussion[index].name,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Text(
                                                  discussion[index].message,
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8, top: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                discussion[index].heure,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 18,
                                              ),
                                              Container(
                                                  height: 16,
                                                  width: 16,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors
                                                        .blueAccent.shade100,
                                                  ),
                                                  child: CircleAvatar(
                                                    child: Text(
                                                      discussion[index].nbreSms,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              })))
                ],
              ))),
    );
  }
}

/*
class ChatsDiscuss extends StatefulWidget {
  ChatsDiscuss({Key? key}) : super(key: key);

  @override
  _ChatsDiscussState createState() => _ChatsDiscussState();
}

class _ChatsDiscussState extends State<ChatsDiscuss> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 30,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                itemCount: discussion.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            child: CircleAvatar(
                                //backgroundImage:AssetImage("assets/images/icon.png"),
                                //backgroundColor:Colors.transparent
                                ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            // height: MediaQuery.of(context).size.height*0.2,
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                                top: 3,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    discussion[index].name,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    discussion[index].message,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  discussion[index].heure,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Container(
                                    height: 16,
                                    width: 16,
                                    color: Colors.blueAccent.shade100,
                                    child: CircleAvatar(
                                      child: Text(
                                        discussion[index].nbreSms,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                })),
      ],
    );
  }
}
*/