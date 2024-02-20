import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 10,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 254, 136, 51),
      ),
      child: Column(
        children: [
          const Text(
            'CONTACT US',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: 52,),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.web),
                label: const Text('motorama.in'),
              ),
              const SizedBox(width: 150),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.call),
                label: const Text('Abhishek Gupta: 9910328922'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.mail),
                label: const Text('motoramaev@gmail.com'),
              ),
              const SizedBox(width: 100),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.linked_camera),
                label: const Text('MOTORAMA EV'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
