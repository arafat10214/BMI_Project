import 'package:bmi_project/Screen/Details_Screen.dart';
import 'package:bmi_project/widgets/Counter_card.dart';
import 'package:bmi_project/widgets/Gender_selection.dart';
import 'package:bmi_project/widgets/Height_slider_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function(bool) toggleTheme;
  const HomeScreen({required this.toggleTheme});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int age = 30;
  int weight = 78;
  double height = 175;
  bool isMale = true;
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        actions: [
          Switch(
            value: isDark,
            onChanged: (v) {
              setState(() => isDark = v);
              widget.toggleTheme(v);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                CounterCard(
                  title: "Age",
                  value: age,
                  onAdd: () => setState(() => age++),
                  onRemove: () => setState(() => age--),
                ),
                CounterCard(
                  title: "Weight (KG)",
                  value: weight,
                  onAdd: () => setState(() => weight++),
                  onRemove: () => setState(() => weight--),
                ),
              ],
            ),
            HeightSlider(
              height: height,
              onChanged: (v) => setState(() => height = v),
            ),
            GenderSelector(
              isMale: isMale,
              onChanged: (v) => setState(() => isMale = v),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  double bmi = weight / ((height / 100) * (height / 100));
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 500),
                      pageBuilder: (_, __, ___) => DetailsScreen(bmi: bmi),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: Text("Calculate BMI"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
