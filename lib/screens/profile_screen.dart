import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  final UserModel user = UserModel.sample;
  
  const ProfileScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: AppColors.primaryPurple,
        
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: AppColors.purpleGradient,
                ),
                child: Center(
                  child: Text(
                    user.name[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                user.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            Center(
              child: Text(
                user.title,
                style: TextStyle(
                  fontSize: 18,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              user.description,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.textSecondary,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Social Links',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: user.socialLinks.map((link) => 
                ListTile(
                  leading: Icon(
                    _getIconForSocialLink(link),
                    color: AppColors.primaryPurple,
                  ),
                  title: Text(
                    link,
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                )
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
  
  IconData _getIconForSocialLink(String link) {
    switch (link.toLowerCase()) {
      case 'linkedin':
        return Icons.linkedin;
      case 'twitter':
        return Icons.twitter;
      case 'github':
        return Icons.code;
      default:
        return Icons.link;
    }
  }
}