import 'package:flutter/material.dart';

class ProfileSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18, // Slightly smaller font size for title
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Push the button to the bottom
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Profile Icon (Circle Avatar)
                    CircleAvatar(
                      radius: 50, // Avatar size
                      backgroundColor:
                          Colors.grey.shade300, // Light grey background
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Colors.grey.shade700, // Dark grey icon color
                      ),
                    ),
                    SizedBox(
                        height: 30), // Spacing between avatar and text fields

                    // First Name TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'First Name (Required)',
                        labelStyle: TextStyle(
                          color: Colors.grey, // Light grey label text color
                          fontSize: 16, // Font size for the label
                        ),
                        filled: true,
                        fillColor: Colors
                            .grey.shade100, // Background color for text fields
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded borders
                          borderSide: BorderSide.none, // No border line
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20), // Adjust padding
                      ),
                    ),
                    SizedBox(height: 20), // Spacing between the two text fields

                    // Last Name TextField
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name (Optional)',
                        labelStyle: TextStyle(
                          color: Colors.grey, // Light grey label text color
                          fontSize: 16, // Font size for the label
                        ),
                        filled: true,
                        fillColor: Colors
                            .grey.shade100, // Background color for text fields
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Rounded borders
                          borderSide: BorderSide.none, // No border line
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20), // Adjust padding
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Save Button
            Padding(
              padding: const EdgeInsets.only(
                  bottom:
                      30.0), // Adds spacing from the bottom edge of the screen
              child: ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 18, // Larger font size for button text
                    fontWeight: FontWeight.bold, // Bold text for the button
                    color: Colors.white, // White text color
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(
                      255, 2, 53, 155), // Blue button background color
                  minimumSize: Size(double.infinity, 50), // Full-width button
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30), // Rounded button corners
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
