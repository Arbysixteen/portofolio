class UserModel {
  final String name;
  final String title;
  final String email;
  final String phone;
  final String description;
  final List<String> socialLinks;

  UserModel({
    required this.name,
    required this.title,
    required this.email,
    required this.phone,
    required this.description,
    required this.socialLinks,
  });

  // Sample user data
  static UserModel get sample => UserModel(
    name: 'Arbi Sixteen',
    title: 'SUPERVISOR PROJECT',
    email: 'arbychristian19@gmail.com',
    phone: '+62 811 582 7700',
    description: 'I lead the growth team at a top marketing studio. Email me if you want to discuss growth traffic.',
    socialLinks: [
      'LinkedIn',
      'Twitter',
      'GitHub'
    ],
  );
}