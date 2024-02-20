import 'package:flutter/material.dart';
import 'package:preventive_measurement/contact_us.dart';
import 'package:preventive_measurement/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage> {
  final _pidController = TextEditingController();

  @override
  void dispose() {
    _pidController.dispose();
    super.dispose();
  }

  void _openConatctUsOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const ContactUs(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.square(50),
        child: AppBar(
          toolbarHeight: 45.0,
          backgroundColor: Colors.white,
          title: const Text(
            'MOTORAMA',
            style: TextStyle(
                color: Color.fromARGB(255, 254, 136, 51), fontSize: 25),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'HOME',
                style: TextStyle(
                    color: Color.fromARGB(255, 254, 136, 51), fontSize: 18),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: _openConatctUsOverlay,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                padding: const EdgeInsets.all(8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text('CONTACT US'),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
      body: Container(
        height: 1000,
        width: double.infinity,
        decoration: BoxDecoration(
          //shape: BoxShape.rectangle,
          border: Border.all(width: 25, color: const Color.fromARGB(255, 254, 136, 512)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 100),
                const Text(
                  'Preventive \nMaintenance Portal',
                  style: TextStyle(
                      fontSize: 50,
                      color: Color.fromARGB(255, 254, 136, 512),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(width: 200),
                Image.asset(
                  'assets/images/hvac_image.png',
                  alignment: Alignment.centerRight,
                  height: 400,
                  width: 600,
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(height: 50, width: 100),
                Text(
                  'The one stop destination for protection of \nyour system before the damage is done',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(150, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                SizedBox(height: 55, width: 100),
                Text(
                  'Enter your PID Number:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(197, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
            const Row(
              children: [
                SizedBox(width: 100),
                Expanded(
                  child: TextField(
                    // controller: _amountController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'PID NUMBER',
                      hintText: 'Enter Your PID Number',
                    ),
                  ),
                ),
                SizedBox(width: 800),
              ],
            ),
            Row(
              children: [
                const SizedBox(height: 55, width: 600),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SecondPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                    padding: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  child: const Text('CLICK HERE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
