import 'package:flutter/material.dart';
import 'package:preventive_measurement/contact_us.dart';
import 'package:preventive_measurement/first_page.dart';
import 'package:preventive_measurement/second_page.dart';

class DangerMotor extends StatelessWidget {
  const DangerMotor({super.key});
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
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text(
                'BACK',
                style: TextStyle(
                    color: Color.fromARGB(255, 254, 136, 51), fontSize: 18),
              ),
            ),
            const SizedBox(width: 20),
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
          child: const SizedBox(
            height: 100,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 500,
                      ),
                      Text(
                        'MOTOR-3',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '\t\t\t3 Problems found',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 235),
                      Text(
                        'DANGER MOTOR',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 575,
                      ),
                      Text(
                        'LOCATION: CH-7',
                        style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '1. Over Heating',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '\nPossible Problems: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 510),
                      Text(
                        '\nRemedial Solutions',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  //SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            '1. Refrigerant Issues: Low refrigerant levels, refrigerant leaks, or improper \n    refrigerant charge can lead to high temperatures in the HVAC system. \n\n2. Dirty or Clogged Filters: Dirty or clogged air filters restrict airflow, \n    causing the system to overheat as it struggles to maintain desired temperatures.\n\n3. Faulty Components: Malfunctioning components such as the compressor,\n   condenser fan, or evaporator coil can result in insufficient cooling and high temperatures.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 163, 88, 2),
                              fontWeight: FontWeight.bold,
                              //decoration: TextDecoration.underline,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Text(
                        '1. Refrigerant Inspection and Recharge: Check refrigerant levels, repair any leaks,\n    and recharge the system to ensure proper refrigerant charge and optimal cooling. \n\n2. Regular Filter Maintenance: Clean or replace air filters regularly to maintain proper\n    airflow and prevent overheating.\n\n3. Component Inspection and Replacement: Inspect HVAC components for signs of \n	  malfunction or damage and replace any faulty parts to restore proper cooling.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 163, 88, 2),
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '2. More Power Consumption',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '\nPossible Problems: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 510),
                      Text(
                        '\nRemedial Solutions',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            '1. Refrigerant Issues: Low refrigerant levels, refrigerant leaks, or improper \n    refrigerant charge can lead to high temperatures in the HVAC system. \n\n2. Dirty or Clogged Filters: Dirty or clogged air filters restrict airflow, \n    causing the system to overheat as it struggles to maintain desired temperatures.\n\n3. Poor Insulation: Inadequate building insulation increases heating/cooling demand.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 163, 88, 2),
                              fontWeight: FontWeight.bold,
                              //decoration: TextDecoration.underline,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 70),
                      Text(
                        '1. Refrigerant Inspection and Recharge: Check refrigerant levels, repair any leaks,\n    and recharge the system to ensure proper refrigerant charge and optimal cooling. \n\n2. Regular Filter Maintenance: Clean or replace air filters regularly to maintain proper\n    airflow and prevent overheating.\n\n3. Improve Insulation: Enhance building insulation to reduce heating/cooling load.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 163, 88, 2),
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '3. Less CFM',
                        style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        '\nPossible Problems: ',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                      SizedBox(width: 510),
                      Text(
                        '\nRemedial Solutions',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 254, 136, 512),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  //SizedBox(height: 50),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text(
                            '1. Dirty Air Filters: Accumulation of dirt and debris on air filters restricts airflow,\n   reducing CFM.\n\n2. Blocked Vents or Registers: Blocked or closed vents and registers restrict\n 	 airflow, leading to decreased CFM.\n\n3. Ductwork Issues: Leaks, kinks, or improper design of ductwork can impede\n	  airflow, resulting in decreased CFM.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 163, 88, 2),
                              fontWeight: FontWeight.bold,
                              //decoration: TextDecoration.underline,
                              //fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100),
                      Text(
                        '1. Replace Air Filters: Regularly clean or replace air filters to ensure\n	  unrestricted airflow and increase CFM.\n\n2. Clear Vents or Registers: Ensure vents and registers are not blocked or closed\n	  to allow for proper airflow and increase CFM.\n\n3. Ductwork Inspection and Repair: Inspect ductwork for leaks, kinks,\n    design, and repair or replace as needed to improve airflow and increase CFM.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 163, 88, 2),
                          fontWeight: FontWeight.bold,
                          //decoration: TextDecoration.underline,
                          //fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
