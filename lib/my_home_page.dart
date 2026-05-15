import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 93, 210, 233),
        leading: Icon(Icons.arrow_back),

        actions: [Icon(Icons.settings)],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 12, 47, 75),
              border: Border.all(color: Color.fromARGB(255, 93, 210, 233)),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.person_outline_outlined,
              color: Color.fromARGB(255, 93, 210, 233),
              size: 40,
            ),
          ),
          SizedBox(height: 30),
          Text(
            "Creative Developer",
            style: TextStyle(
              color: Color.fromARGB(255, 93, 210, 233),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: .center,
            children: [
              // SizedBox(width: 10),
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 47, 75),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromARGB(255, 93, 210, 233)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.verified, color: Colors.deepPurple),
                    SizedBox(height: 10),
                    Text(
                      "TASKS",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "142",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 47, 75),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromARGB(255, 93, 210, 233)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.star, color: Colors.deepPurple),
                    SizedBox(height: 10),
                    Text(
                      "LEVEL",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "42",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 12, 47, 75),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color.fromARGB(255, 93, 210, 233)),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Icon(Icons.star_border, color: Colors.deepPurple),
                    SizedBox(height: 10),
                    Text(
                      "POINTS",
                      style: TextStyle(color: Colors.white70, fontSize: 15),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "8.4K",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
