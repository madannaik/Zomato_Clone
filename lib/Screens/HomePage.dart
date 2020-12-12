import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/564x/8f/10/54/8f1054a0dc180c56bc3d05a18c804b3c.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: height * 0.06,
            left: width * 0.8,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              child: Text("Skip"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                margin: EdgeInsets.all(12),
                child: Container(
                  width: width,
                  height: height * 0.07,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.add_call,
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '+91 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.07,
                        width: 1,
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        margin: EdgeInsets.symmetric(vertical: 6),
                      ),
                      Container(
                        width: width * 0.6,
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Phone Number',
                            hintStyle:
                                TextStyle(color: Color.fromRGBO(0, 0, 0, 0.15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: ButtonTheme(
                  height: height * 0.07,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  minWidth: width,
                  child: RaisedButton(
                    color: Colors.black,
                    onPressed: () {},
                    child: Text(
                      "Send OTP",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
// Card(
// margin: EdgeInsets.all(10),
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(50)),
// elevation: 6,
// child: ListTile(
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(50)),
// tileColor: Colors.white,
// leading: Icon(Icons.add_call),
// ),
// ),
