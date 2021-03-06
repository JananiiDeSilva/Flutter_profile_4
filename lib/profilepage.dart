// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget textfield({@required hintText}) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              letterSpacing: 2,
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide.none)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 1.5,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue.shade900,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ListTile(
                    //   leading: Icon(Icons.settings),
                    //   title: Text('SETTINGS'),
                    // ),
                    TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(
                          Icons.settings,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                        labelText: "SETTINGS",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(
                          Icons.info_outline,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                        labelText: "INFO",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(
                          Icons.help_outline_rounded,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                        labelText: "HELP & SUPPORT",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(
                          Icons.share,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                        labelText: "SHARE",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    TextField(
                      decoration: new InputDecoration(
                        prefixIcon: new Icon(
                          Icons.logout_rounded,
                          color: Colors.blueGrey,
                          size: 30,
                        ),
                        labelText: "LOGOUT",
                        suffixIcon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blueGrey,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: const BorderSide(
                            color: Colors.blueAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),

                    // textfield(
                    //    hintText: 'Settings',
                    //   ),

                    // textfield(
                    //   hintText: 'Info',
                    // ),
                    // textfield(
                    //   hintText: 'Help & Support',
                    // ),
                    // textfield(
                    //   hintText: 'Share',
                    // ),
                    // textfield(
                    //   hintText: 'Logout',
                    // ),

                    Container(
                      height: 40,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      width: double.infinity,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Colors.blue.shade900,
                        child: Center(
                          child: Text(
                            "Edit profile",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1.5,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            painter: HeaderCurvedContainer(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                // child: Text(
                //   "Profile",
                //   style: TextStyle(
                //     fontSize: 20,
                //     letterSpacing: 1.5,
                //     color: Colors.white,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
              ),
              Container(
                padding: EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://static1.bigstockphoto.com/9/1/3/large1500/319568026.jpg'),
                    //AssetImage('images/profile.jpg')
                  ),
                ),
              ),
              Text(
                'John smith',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                'johnsmith93@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                '+94785612907',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                'Kandy',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 440, left: 80),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue.shade900;
    Path path = Path()
      ..relativeLineTo(0, 140)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 140)
      ..relativeLineTo(0, -140)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
