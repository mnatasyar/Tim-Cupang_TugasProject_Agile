import 'package:flutter/material.dart';
import 'package:healthcare/screens/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Video Call',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: VideoCallScreen(),
    );
  }
}

class VideoCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Color(0xFF7165D6),
          leadingWidth: 30,
          title: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "images/doctor1.jpg",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Dr. Adit",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/doctor1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 15,
            right: 15,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                'images/doctor2.jpg',
                width: 100,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.only(
                        left: 30), // Mengubah margin saat ikon diperluas
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(
                          0.5), // Latar belakang untuk ikon videocam_off
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Padding(
                        padding: EdgeInsets.zero,
                        child: Icon(Icons.videocam_off),
                      ),
                      onPressed: () {
                        // Aksi saat tombol matikan video call ditekan
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(
                          0.5), // Latar belakang untuk ikon switch_camera
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Icon(Icons.switch_camera),
                      onPressed: () {
                        // Aksi saat tombol balik kamera ditekan
                      },
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(
                          0.5), // Latar belakang untuk ikon mic_off
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Icon(Icons.mic_off),
                      onPressed: () {
                        // Aksi saat tombol mute voice ditekan
                      },
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.only(
                        right: 35), // Mengubah margin saat ikon diperluas
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(
                          0.5), // Latar belakang untuk ikon call_end
                    ),
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Icon(
                        Icons.call_end,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        // Aksi saat tombol call end ditekan
                      },
                    ),
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
