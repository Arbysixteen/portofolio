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
    name: 'Amy Awesome',
    title: 'Director of Marketing',
    email: 'amy@buzzystudios.com',
    phone: '+1 (415) 555 - 1010',
    description: 'I lead the growth team at a top marketing studio. Email me if you want to discuss growth traffic.',
    socialLinks: [
      'LinkedIn',
      'Twitter',
      'GitHub'
    ],
  );
}