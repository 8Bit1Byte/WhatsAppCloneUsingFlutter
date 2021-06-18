import 'package:flutter/material.dart';
import 'package:flutterwhatsapp/pages/store_page_view.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: Text(
                  "My Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://images.generated.photos/Nb1rrL4HxQJBd4EsjTS3KCotaLIz0BgdSN_dyuct65A/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/Z3M6Ly9nZW5lcmF0/ZWQtcGhvdG9zL3Yz/XzA4ODg0NjcuanBn.jpg"),
                    ),
                    title: Text(
                      "Amanat Kaur",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Today, 20:16 PM"),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StoryPageView())),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
