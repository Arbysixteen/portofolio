import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  // Tambahkan modifier static pada user
  static final UserModel user = UserModel.sample;
  
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Portfolio', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primaryPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => Navigator.pushNamed(context, '/profile'),
          ),
          IconButton(
            icon: Icon(Icons.contact_mail),
            onPressed: () => Navigator.pushNamed(context, '/contact'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: AppColors.purpleGradient,
              ),
              child: Center(
                child: Text(
                  user.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              user.title,
              style: TextStyle(
                fontSize: 18,
                color: AppColors.textSecondary,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/contact'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryPurple,
              ),
              child: Text('Get in Touch'),
            ),
          ],
        ),
      ),
    );
  }
}