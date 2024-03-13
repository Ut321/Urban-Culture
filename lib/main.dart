import 'package:flutter/material.dart';

void main() {
  runApp(SkincareApp());
}

class SkincareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skincare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SkincareRoutinePage(),
    );
  }
}

class SkincareRoutinePage extends StatefulWidget {
  @override
  _SkincareRoutinePageState createState() => _SkincareRoutinePageState();
}

class _SkincareRoutinePageState extends State<SkincareRoutinePage> {
  bool faceWash = false;
  bool toner = false;
  bool moisturizer = false;
  bool sunscreen = false;
  bool lipBalm = false;

  int streak = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skincare Routine'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Face Wash'),
            trailing: Checkbox(
              value: faceWash,
              onChanged: (value) {
                setState(() {
                  faceWash = value!;
                  updateStreak();
                });
              },
            ),
          ),
          ListTile(
            title: Text('Toner'),
            trailing: Checkbox(
              value: toner,
              onChanged: (value) {
                setState(() {
                  toner = value!;
                  updateStreak();
                });
              },
            ),
          ),
          ListTile(
            title: Text('Moisturizer'),
            trailing: Checkbox(
              value: moisturizer,
              onChanged: (value) {
                setState(() {
                  moisturizer = value!;
                  updateStreak();
                });
              },
            ),
          ),
          ListTile(
            title: Text('Sunscreen'),
            trailing: Checkbox(
              value: sunscreen,
              onChanged: (value) {
                setState(() {
                  sunscreen = value!;
                  updateStreak();
                });
              },
            ),
          ),
          ListTile(
            title: Text('Lip Balm'),
            trailing: Checkbox(
              value: lipBalm,
              onChanged: (value) {
                setState(() {
                  lipBalm = value!;
                  updateStreak();
                });
              },
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text('Current Streak: $streak'),
          ),
        ],
      ),
    );
  }

  void updateStreak() {
    if (faceWash && toner && moisturizer && sunscreen && lipBalm) {
      streak++;
    } else {
      streak = 0;
    }
    setState(() {});
  }
}
