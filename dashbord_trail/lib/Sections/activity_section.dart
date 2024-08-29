
// Activity Section Widget
import 'package:flutter/material.dart';

class ActivitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      
      // padding: EdgeInsets.only(top: 30.0),
      child: ListView(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left:50.0, right:20.0),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("All Activity", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ElevatedButton(
                onPressed: (){}, 
                child: Text("Sort", style: TextStyle(fontSize: 14)))],
              ),
          ),
          Divider(thickness: 3, color: Colors.black,),


          Padding(padding: EdgeInsets.only(top: 0)),
          ActivityItem(
            image: AssetImage('assets/images/photo_4.jpg'),
            title: 'Purchase at Store A',
            subtitle: 'Completed on 12 Aug 2024',
            amount: '-\$50.00',
          ),
          ActivityItem(
            image: AssetImage('assets/images/photo_5.jpg'),
            title: 'Deposit from Bank',
            subtitle: 'Completed on 11 Aug 2024',
            amount: '+\$200.00',
          ),
          ActivityItem(
            image: AssetImage('assets/images/photo_2.jpg'),
            title: 'Subscription Fee',
            subtitle: 'Completed on 10 Aug 2024',
            amount: '-\$20.00',
          ),
      
      
         Padding(
           padding: const EdgeInsets.only(top: 50.0),
           child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: BottomNavigationBar(
              fixedColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, color: Colors.black),
                  activeIcon: Icon(Icons.home, color: Colors.black),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined, color: Colors.black),
                  activeIcon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline, color: Colors.black),
                  activeIcon: Icon(Icons.add_circle),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline, color: Colors.black),
                  activeIcon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            )),
         )
        ],
      ),
    );
  }
}

class ActivityItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String amount;
  final AssetImage image;

  ActivityItem({Key? key, required this.title, required this.subtitle, required this.amount, required this.image});
  

  @override
  Widget build(BuildContext context) {
      // ActivityItem item = activityItems[index];
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundImage: image,
        // ActivityItem.image,
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text(subtitle),
      trailing: Text(
        amount,
        style: TextStyle(
          color: amount.startsWith('+') ? Colors.green : Colors.red,
          fontSize: 16,
        ),
      ),
    );
  }
}
