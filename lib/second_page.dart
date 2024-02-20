import 'package:flutter/material.dart';
import 'package:preventive_measurement/contact_us.dart';
import 'package:preventive_measurement/first_page.dart';
import 'package:preventive_measurement/motor_danger.dart';
import 'package:preventive_measurement/motor_fault.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    void openConatctUsOverlaynow() {
      showModalBottomSheet(
        context: context,
        builder: (ctx) => const ContactUs(),
      );
    }

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
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstPage(),
                  ),
                );
              },
              child: const Text(
                'HOME',
                style: TextStyle(
                    color: Color.fromARGB(255, 254, 136, 51), fontSize: 18),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: openConatctUsOverlaynow,
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
        width: double.infinity,
        height: 1000,
        decoration: BoxDecoration(
          //shape: BoxShape.rectangle,
          border: Border.all(
              width: 25, color: const Color.fromARGB(255, 254, 136, 512)),
        ),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Preventive Maintenance Portal',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 254, 136, 512),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PID Number: ABC123',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 254, 136, 512),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(width: 40),
                Text(
                  'No. Of Motors: 5',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 254, 136, 512),
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 100),
                Image.asset(
                  'assets/images/motor_parameters_table.png',
                  alignment: Alignment.centerRight,
                  height: 500,
                  width: 1250,
                ),
              ],
            ),
            //const SizedBox(height: 1),
            // After
            OverflowBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text('MOTOR 1'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text(
                            'Working Fine !',
                            style: TextStyle(color: Colors.orange),
                          ),
                          content:
                              const Text('Motor 1 is working absolutely fine.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      );
                    }),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text('MOTOR 2'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text(
                            'Working Fine !',
                            style: TextStyle(color: Colors.orange),
                          ),
                          content:
                              const Text('Motor 2 is working absolutely fine.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      );
                    }),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text('MOTOR 3'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DangerMotor(),
                        ),
                      );
                    }),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text('MOTOR 4'),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                          title: const Text(
                            'Working Fine !',
                            style: TextStyle(color: Colors.orange),
                          ),
                          content:
                              const Text('Motor 4 is working absolutely fine.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctx);
                              },
                              child: const Text('Okay'),
                            ),
                          ],
                        ),
                      );
                    }),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 136, 51),
                      padding: const EdgeInsets.all(8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    child: const Text('MOTOR 5'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FaultMotor(),
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
