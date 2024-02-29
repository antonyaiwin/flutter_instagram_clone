class DummyDb {
  // dummy profile Picture URL
  static const String currentUserProfilePic =
      'https://images.pexels.com/photos/1812634/pexels-photo-1812634.jpeg?auto=compress&cs=tinysrgb&w=600';

// Dummy avatar image URL List
  static const List images = [
    'https://images.pexels.com/photos/1520760/pexels-photo-1520760.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/698532/pexels-photo-698532.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/15019490/pexels-photo-15019490/free-photo-of-portrait-of-a-smiling-man.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/14995438/pexels-photo-14995438/free-photo-of-portrait-of-woman-in-hat.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748239/pexels-photo-2748239.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2738919/pexels-photo-2738919.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2748242/pexels-photo-2748242.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2649165/pexels-photo-2649165.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1003979/pexels-photo-1003979.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1988686/pexels-photo-1988686.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3054535/pexels-photo-3054535.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3756985/pexels-photo-3756985.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3762802/pexels-photo-3762802.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3328058/pexels-photo-3328058.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  // Dummy Story List
  static List<Map<String, dynamic>> storyList = [
    {
      'profile_pic': currentUserProfilePic,
      'user_name': 'Your Story',
      'is_live': false,
    },
    {
      'profile_pic': images[0],
      'user_name': 'John Doe',
      'is_live': true,
    },
    {
      'profile_pic': images[1],
      'user_name': 'Alice Smith',
      'is_live': true,
    },
    {
      'profile_pic': images[2],
      'user_name': 'Bob Johnson',
      'is_live': true,
    },
    {
      'profile_pic': images[3],
      'user_name': 'Emily Davis',
      'is_live': false,
    },
    {
      'profile_pic': images[4],
      'user_name': 'Daniel Wilson',
      'is_live': false,
    },
    {
      'profile_pic': images[5],
      'user_name': 'Sophia Brown',
      'is_live': false,
    },
    {
      'profile_pic': images[6],
      'user_name': 'Matthew Miller',
      'is_live': false,
    },
    {
      'profile_pic': images[7],
      'user_name': 'Olivia Jones',
      'is_live': false,
    },
    {
      'profile_pic': images[8],
      'user_name': 'William Garcia',
      'is_live': false,
    },
    {
      'profile_pic': images[9],
      'user_name': 'Emma Martinez',
      'is_live': false,
    },
  ];
}
