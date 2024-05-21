import 'package:flutter/material.dart';

class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<help> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Help"),
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
                height: 20,
              ),
              Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                  child: TextField(                  
                    decoration: InputDecoration(                    
                        hintText: "Amira Ramadan",                        
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 161, 159, 159)),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        filled: true,
                        fillColor: Color.fromARGB(255, 255, 255, 255),                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 24, 24, 24)),
                        )),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                child: TextField(
                                    
                  decoration: InputDecoration(
                      hintText: "Amira.Ramadan@mail.com",
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
              ),
              Container(
                height: 10,
              ),
              Text(
                "Topic",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Problem",
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
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 1200),
                height: 10,
              ),
              Text(
                "Message",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1, vertical: 5),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: TextField(
                    minLines: 1,
                    maxLines: 10,                    
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "Message",
                        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 255, 255, 255),                      
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        )),
                  ),
                ),
              ),
              Container(
                height: 70,
              ),
              Container(
                child: MaterialButton(
                  color: Color.fromARGB(255, 0, 150, 187),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(horizontal: 1, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text(
                    "Submit",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                  ),
                ),
              ),
              Container(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 0, 150, 187),
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
