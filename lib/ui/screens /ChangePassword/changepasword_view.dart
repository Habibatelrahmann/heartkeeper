import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Password> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        // ignore: prefer_const_constructors
        title: Text("change password"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_left,
              size: 35,
            )),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 320,
          child: ListView(
            children: <Widget>[
              Container(
                height: 30,
              ),
              Container(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Current password",
                      hintStyle: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 161, 159, 159)),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 24, 24, 24)),
                      )),
                ),
              ),
              Container(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "New password",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
              Container(
                height: 30,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Confirm new password",
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    )),
              ),
              Container(
                height: 80,
              ),
              Container(
                child: MaterialButton(
                  color: Color.fromARGB(255, 0, 150, 187),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text("Change"),
                ),
              ),
              Container(
                height: 40,
              ),
              Container(
                child: Container(
                  child: MaterialButton(
                    color: Color.fromARGB(255, 0, 150, 187),
                    textColor: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text("Cancel"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 80, 220, 255),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 0, 150, 187)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
              backgroundColor: Color.fromARGB(255, 0, 150, 187)),
          BottomNavigationBarItem(
              icon: Icon(Icons.record_voice_over),
              label: 'Record',
              backgroundColor: Color.fromARGB(255, 0, 150, 187)),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
              backgroundColor: Color.fromARGB(255, 0, 150, 187)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
