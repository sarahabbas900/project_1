import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();
  String? selectedOption;
  bool switchedoffNotification = false;
  bool switchedoffDarkmode = false;
  bool isChecked = false;
  final List<Map<String, dynamic>> items = [
    {
      "icon": Icons.star,
      "text": "LEVEL",
      "number": "128",
      "color": Colors.purple,
    },
    {
      "icon": Icons.fire_extinguisher,
      "text": "STREAK",
      "number": "11",
      "color": Colors.blue,
    },
    {
      "icon": Icons.people_alt,
      "text": "FRIENDS",
      "number": "20",
      "color": Colors.pink,
    },
    {
      "icon": Icons.star,
      "text": "BADGES",
      "number": "80",
      "color": Colors.purple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Settings", style: TextStyle(color: Color(0xFF6c6296))),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Alex Morgan"),
              accountEmail: Text(
                "alex.morgan@example.com",
                style: TextStyle(
                  color: Color.fromARGB(255, 97, 93, 93),
                  fontSize: 12,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 238, 206, 244),
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10),
            ),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person_2_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10),
            ),

            ListTile(
              title: Text("Security"),
              leading: Icon(Icons.security_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10),
            ),
            ListTile(
              title: Text("Privacy"),
              leading: Icon(Icons.lock_outline),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10),
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined, size: 10),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentGeometry.bottomCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFF624fcd), Color(0xFF81b7f7)],
                    ),
                  ),
                ),
                Positioned(
                  bottom:
                      -40, // assuming radius = 40, adjust to your avatar size
                  left: 0,
                  right: 0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "Alex Morgan",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              "hagyjsbj hauagjbs shaby ihhsihsu hsjabusjhnua hsubjagsjsn hsjkbanhssjbkm sggshjahjnklh jbabjaxujahxnua bsxjkaj<Nsnak",
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1, // Adjust shape (1.0 = square)
                  crossAxisSpacing: 8, // Horizontal gap
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: .start,
                        children: [
                          Icon(item['icon'], size: 40, color: item['color']),
                          SizedBox(height: 8),
                          Text(item['text'], style: TextStyle(fontSize: 12)),
                          SizedBox(height: 8),
                          Text(
                            item['number'],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Contact Details",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email Address",

                            prefixIcon: Icon(Icons.mail_outline),
                            border: InputBorder.none,
                          ),
                          // style: const TextStyle(color: Colors.white),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'email  is requrired  ';
                            }
                            if (!value.contains('@')) {
                              return 'The email is not true';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 40),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Phone Number",

                            prefixIcon: Icon(Icons.phone),
                            border: InputBorder.none,
                          ),
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Phone number  is requrired  ';
                            }

                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 108,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Gender Identity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              value: "female",
                              groupValue: selectedOption,
                              onChanged: (value) =>
                                  setState(() => selectedOption = value),
                              activeColor: Colors.purple,
                              title: const Text(
                                "Female",
                                style: TextStyle(fontSize: 14),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              value: "male",
                              groupValue: selectedOption,
                              onChanged: (value) =>
                                  setState(() => selectedOption = value),
                              activeColor: Colors.purple,
                              title: const Text(
                                "Male",
                                style: TextStyle(fontSize: 14),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                            ),
                          ),
                          Expanded(
                            child: RadioListTile(
                              value: "Other",
                              groupValue: selectedOption,
                              onChanged: (value) =>
                                  setState(() => selectedOption = value),
                              activeColor: Colors.purple,
                              title: const Text(
                                "Other",
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        "Prefernces",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 15),
                      SwitchListTile(
                        value: switchedoffNotification,
                        onChanged: (bool val) {
                          setState(() {
                            switchedoffNotification = val;
                          });
                        },
                        title: Text("Push Notification"),
                        subtitle: Text("recive notification on your device"),
                        activeThumbColor: Colors.purple,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 15),
                      SwitchListTile(
                        value: switchedoffDarkmode,
                        onChanged: (bool val) {
                          setState(() {
                            switchedoffDarkmode = val;
                          });
                        },
                        title: Text("Dark Mode"),
                        subtitle: Text("Switch to Dark mode"),
                        activeThumbColor: Colors.purple,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                      ),
                      Divider(),
                      Expanded(
                        child: CheckboxListTile(
                          value: isChecked,
                          title: Text("News letter subscription"),
                          subtitle: Text("weekly update"),

                          onChanged: (bool? val) {
                            setState(() {
                              isChecked = val!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // ✅ Show the SnackBar correctly
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("The inforamtion is saved")),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                fixedSize: const Size(400, 45),
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
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
