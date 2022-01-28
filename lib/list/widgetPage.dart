import 'package:flutter/material.dart';

class User extends StatefulWidget {
  final String prenom;
  final String image;
  final String name;

  User(this.name, this.prenom, this.image);
  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      )),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_ic_call_rounded,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    backgroundColor: Colors.transparent,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 50,
                  width: 200,
                  child: Row(
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.prenom,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  width: 250,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.call, color: Colors.white)),
                          Text(
                            "Audio",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon:
                                  Icon(Icons.video_call, color: Colors.white)),
                          Text(
                            "Video",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.person_add_rounded,
                                  color: Colors.white)),
                          Text(
                            "Profil",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications,
                                  color: Colors.white)),
                          Text(
                            "Sourdine",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
