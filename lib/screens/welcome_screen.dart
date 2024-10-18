// welcome_screen.dart
import 'package:flutter/material.dart';
import 'phone_number_screen.dart'; // Import the phone number screen

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),

              // Add the image as per the interface
              Container(
                height: 200,
                child: Image.asset(
                  'lib/assests/welcome_image.png', // Ensure the path is correct
                ),
              ),

              Spacer(),

              // Text widget for the main message in bold
              Text(
                'Connect easily with your family and friends over countries',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0, // Font size matches the given interface
                  fontWeight: FontWeight.bold, // Bold text style
                  fontFamily: 'Sans-serif', // A similar font style
                ),
              ),

              SizedBox(height: 20),

              // "Terms & Privacy Policy" text
              TextButton(
                onPressed: () {
                  // Handle terms & privacy click
                },
                child: Text(
                  'Terms & Privacy Policy',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Button for "Start Messaging"
              ElevatedButton(
                onPressed: () {
                  // Navigate to PhoneNumberScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhoneNumberScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 2, 53, 155), // Matches the button color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                ),
                child: Text(
                  'Start Messaging',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // White text color
                    fontWeight: FontWeight.bold, // Bold text style
                  ),
                ),
              ),

              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
