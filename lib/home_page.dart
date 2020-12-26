import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1F28),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    color: Color(0xFF34353D),
                    borderRadius: BorderRadius.circular(15)),
                margin: EdgeInsets.symmetric(vertical: 40),
                alignment: Alignment.center,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wb_sunny_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.cloud_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '308 ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'x ',
                style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '42',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '12,936',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 30,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
                color: Color(0xFF262732),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15))),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton('AC', Colors.greenAccent),
                    _buildButton('+/-', Colors.greenAccent),
                    _buildButton('%', Colors.greenAccent),
                    _buildButton('/', Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton('7', Colors.white),
                    _buildButton('8', Colors.white),
                    _buildButton('9', Colors.white),
                    _buildButton('X', Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton('4', Colors.white),
                    _buildButton('5', Colors.white),
                    _buildButton('6', Colors.white),
                    _buildButton('-', Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton('1', Colors.white),
                    _buildButton('2', Colors.white),
                    _buildButton('3', Colors.white),
                    _buildButton('+', Colors.redAccent)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildButton('1', Colors.white),
                    _buildButton('0', Colors.white),
                    _buildButton('.', Colors.white),
                    _buildButton('=', Colors.redAccent)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildButton(String title, Color titleColor) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Color(0xFF1E1F28),
          boxShadow: [
            BoxShadow(
                color: Color(0xFF4A4B52),
                blurRadius: 0.4,
                offset: Offset(0.1, 0.0))
          ],
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        title,
        style: TextStyle(
            color: titleColor, fontSize: 20, fontWeight: FontWeight.w600),
      ),
    );
  }
}
