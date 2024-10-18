import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:intl_phone_field/intl_phone_field.dart';
import 'profile_setup_screen.dart'; // Import the profile setup screen

class PhoneNumberScreen extends StatefulWidget {
  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  String? phoneNumber; // Store the valid phone number

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // Assign the form key
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Main Heading
              Text(
                'Enter Your Phone Number',
                style: TextStyle(
                  fontSize: 22, // Increased font size
                  fontWeight: FontWeight.bold, // Bold text
                  color: Colors.black, // Set text color to black
                ),
              ),
              SizedBox(height: 10),

              // Subheading / Instruction Text
              Text(
                'Please confirm your country code and enter your phone number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16, // Slightly larger font size
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),

              // Phone number input field
              IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  labelStyle: TextStyle(
                    fontSize: 16, // Input label text size
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'US', // Set initial country code
                onChanged: (phone) {
                  phoneNumber = phone.completeNumber; // Store full phone number
                },
                validator: (value) {
                  if (value == null || value.number.isEmpty) {
                    return 'Please enter a valid phone number';
                  }
                  return null; // Return null if valid
                },
              ),
              SizedBox(height: 30),

              // Continue Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileSetupScreen(),
                      ),
                    );
                  }
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16, // Button text size
                    fontWeight: FontWeight.bold, // Bold button text
                    color: Colors.white, // Text color
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 2, 53, 155), // Blue button background
                  minimumSize: Size(double.infinity, 50), // Full-width button
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Rounded corners
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
