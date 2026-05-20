import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> intersts = [
    "UX Design",
    "Photography",
    "Travel",
    "Fittnes",
    "Music",
  ];
  bool switchedOff = false;
  bool checked = false;
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbf6f0),
      appBar: AppBar(
        title: Center(child: Text("Profile Settings")),
        backgroundColor: Color(0xFFfbf6f0),
        leading: Icon(Icons.arrow_back, color: Color(0xFF598065)),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu, color: Color(0xFF4f5048)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset("images/profile.jpg", fit: BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 8,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF4b7d5a),
                      ),
                      child: Icon(Icons.edit, color: Colors.white, size: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Alex John",
              style: TextStyle(
                color: Color(0xFF262624),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),

            Text(
              "alex.John@gmail.com",
              style: TextStyle(color: Color(0xFF7d7e76), fontSize: 15),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: .centerLeft,

                child: Text(
                  "INTERESTS",

                  style: TextStyle(
                    color: Color(0xFF7d7e76),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: .centerLeft,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 5,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    shrinkWrap: true,
                    itemCount: intersts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF77a781),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          intersts[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: .centerLeft,

                child: Text(
                  "SETTINGS",

                  style: TextStyle(
                    color: Color(0xFF7d7e76),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                // height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.notifications_none,
                          color: Color(0xFF77a781),
                        ),

                        SizedBox(width: 10),
                        // Text("Enable Notification"),
                        Expanded(
                          child: SwitchListTile(
                            value: switchedOff,
                            onChanged: (bool val) {
                              setState(() {
                                switchedOff = val;
                              });
                            },
                            title: Text("Enable Notification"),
                            activeThumbColor: const Color(0xFF77a781),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(endIndent: 15, indent: 15),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.mail_outline, color: Color(0xFF77a781)),

                        SizedBox(width: 10),
                        // Text("Enable Notification"),
                        Expanded(
                          child: CheckboxListTile(
                            value: checked,
                            onChanged: (bool? val) {
                              setState(() {
                                checked = val!;
                              });
                            },
                            activeColor: Color(0xFF77a781),
                            title: Text("Subscribe to NewsLetter"),

                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(endIndent: 15, indent: 15),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(
                              Icons.color_lens_outlined,
                              color: Color(0xFF77a781),
                            ),

                            SizedBox(width: 10),
                            Text("App Theme"),
                          ],
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                value: "Light",
                                groupValue: selectedOption,
                                onChanged: (value) =>
                                    setState(() => selectedOption = value),
                                activeColor: const Color(0xFF77a781),
                                title: const Text(
                                  "Light Mode",
                                  style: TextStyle(fontSize: 14),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                              ),
                            ),

                            Expanded(
                              child: RadioListTile(
                                value: "Dark",
                                groupValue: selectedOption,
                                onChanged: (value) =>
                                    setState(() => selectedOption = value),
                                activeColor: const Color(0xFF77a781),
                                title: const Text(
                                  "Dark Mode",
                                  style: TextStyle(fontSize: 14),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF77a781),
                fixedSize: const Size(300, 45),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Icon(Icons.check_circle_outline, color: Colors.white),
                  SizedBox(width: 5),
                  Text("Save changes", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
