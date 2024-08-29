// User Balance Section Widget
import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';

class UserBalanceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(15.0),
       child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          // color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(25),
             
        ),
        // color: Colors.blueGrey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Balance and Country Flag
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'USD',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    // Image.asset("Icon(Icons.flag_circle)", width: 30, height: 20), 
                    // Replace with your country flag image
                    CountryFlag.fromLanguageCode('en', shape: Circle(),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 0),
            // Balance Amount
            const Text(
              '\$5,432.00',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 5),
            // Options Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement Add Money functionality
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      minimumSize: Size(60, 30),
                    ),
                    child: Text('+ Add money', style: TextStyle(fontSize: 14)),

                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      // Implement Transfer functionality
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      minimumSize: Size(60, 30),
                      maximumSize: Size(100, 30),
                    ),
                    child: Text('Transfer', style: TextStyle(fontSize: 14)),
                  ),
                ),
                SizedBox(width: 10),
                // Expanded(
                //   child: OutlinedButton(
                //     onPressed: () {
                //       // Implement Send functionality
                //     },
                //     style: OutlinedButton.styleFrom(
                //       backgroundColor: Colors.lightBlue,
                //       foregroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                //       minimumSize: Size(50, 30),
                //       ),
                //     child: Text('...'),
                //   ),
                // ),
              ],
            ),
          ],
        ),
           ),
     );
  }
}