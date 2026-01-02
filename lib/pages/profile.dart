import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  final double coverHeight = 280;
  final double profileRadius = 72;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Image.network(
                    'https://blog.gskinner.com/wp-content/uploads/2022/09/wonderous-flutter-ide_crop-1536x750.jpg',
                    width: double.infinity,
                    height: coverHeight,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: -profileRadius,
                    child: CircleAvatar(
                      radius: profileRadius,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('assets/img/profile.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: profileRadius + 16),
              Column(
                children: const [
                  Text(
                    'Alchemy Codes',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Flutter Software Developer',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialIcon(Icons.discord, onTap: () {}),
                  SizedBox(width: 12),
                  _socialIcon(Icons.code, onTap: () {}),
                  SizedBox(width: 12),
                  _socialIcon(Icons.alternate_email, onTap: () {}),
                  SizedBox(width: 12),
                  _socialIcon(Icons.business, onTap: () {}),
                  SizedBox(width: 12),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(child: _buildStatItem('39', 'Projects')),
                    Container(width: 1, height: 40, color: Colors.grey[300]),
                    Expanded(child: _buildStatItem('200', 'Following')),
                    Container(width: 1, height: 40, color: Colors.grey[300]),
                    Expanded(child: _buildStatItem('12K', 'Followers')),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Softwar Developer with years of experience in programming and app development',
                      style: TextStyle(fontSize: 15, height: 1.4),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialIcon(IconData icon, {required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.blue,
        child: Icon(icon, color: Colors.white),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
