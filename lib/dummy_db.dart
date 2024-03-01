import 'dart:math';

import 'data/dummy/dummy_data.dart';

class DummyDb {
  // dummy profile Picture URL
  static const String currentUserProfilePic =
      'https://images.pexels.com/photos/1812634/pexels-photo-1812634.jpeg?auto=compress&cs=tinysrgb&w=600';

// Dummy avatar image URL List
  static const List personImages = [
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

  static const List postImages = [
    'https://images.pexels.com/photos/20147180/pexels-photo-20147180/free-photo-of-a-close-up-of-a-blue-glacier.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/19172555/pexels-photo-19172555/free-photo-of-woman-with-black-hair-sitting-in-city.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/20116345/pexels-photo-20116345/free-photo-of-postal-altiplano-chileno.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    'https://images.pexels.com/photos/12428121/pexels-photo-12428121.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/4005498/pexels-photo-4005498.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/20420447/pexels-photo-20420447/free-photo-of-a-person-wearing-a-blue-hoodie-with-a-flower-in-their-pocket.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/11958479/pexels-photo-11958479.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/18509324/pexels-photo-18509324/free-photo-of-blooming-white-buttecup-flower.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/18119535/pexels-photo-18119535/free-photo-of-aerial-view-of-a-winding-road-in-the-forest.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/19859148/pexels-photo-19859148/free-photo-of-wild-roes-in-forest.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/8630759/pexels-photo-8630759.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/20113974/pexels-photo-20113974/free-photo-of-a-person-holding-a-cup-of-coffee-on-a-white-blanket.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/20330740/pexels-photo-20330740/free-photo-of-a-dog-with-light-brown-fur-sitting-on-a-meadow.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/19399844/pexels-photo-19399844/free-photo-of-young-woman-in-white-blouse-and-black-waistcoat.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
    'https://images.pexels.com/photos/12672768/pexels-photo-12672768.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load',
  ];

  // Dummy Story List
  static List<Map<String, dynamic>> storyList = [
    {
      'profile_pic': currentUserProfilePic,
      'user_name': 'Your Story',
      'is_live': false,
    },
    {
      'profile_pic': personImages[0],
      'user_name': 'John Doe',
      'is_live': true,
    },
    {
      'profile_pic': personImages[1],
      'user_name': 'Alice Smith',
      'is_live': true,
    },
    {
      'profile_pic': personImages[2],
      'user_name': 'Bob Johnson',
      'is_live': true,
    },
    {
      'profile_pic': personImages[3],
      'user_name': 'Emily Davis',
      'is_live': false,
    },
    {
      'profile_pic': personImages[4],
      'user_name': 'Daniel Wilson',
      'is_live': false,
    },
    {
      'profile_pic': personImages[5],
      'user_name': 'Sophia Brown',
      'is_live': false,
    },
    {
      'profile_pic': personImages[6],
      'user_name': 'Matthew Miller',
      'is_live': false,
    },
    {
      'profile_pic': personImages[7],
      'user_name': 'Olivia Jones',
      'is_live': false,
    },
    {
      'profile_pic': personImages[8],
      'user_name': 'William Garcia',
      'is_live': false,
    },
    {
      'profile_pic': personImages[9],
      'user_name': 'Emma Martinez',
      'is_live': false,
    },
  ];

  static List<Map<String, dynamic>> get postsList {
    List users = [];
    users.addAll(storyList);
    users.removeAt(0);
    users.shuffle();
    return List.generate(50, (index) {
      Map user = storyList[Random().nextInt(storyList.length)];
      return {
        'user_name': user['user_name'],
        'place': DummyData.generateRandomPlace(),
        'profile_pic': user['profile_pic'],
        'is_verified': Random().nextBool(),
        'post_images': List.generate(Random().nextInt(10) + 1,
            (index) => postImages[Random().nextInt(postImages.length)]),
        'liked_user': DummyData.generateRandomUsername(),
        'liked_user_pic': personImages[Random().nextInt(personImages.length)],
        'caption': DummyData.realtimeComments[
            Random().nextInt(DummyData.realtimeComments.length)],
        'like_count': Random().nextInt(999) + 5,
        'comment_count': Random().nextInt(999) + 5,
        'date': DummyData.generateRandomDate(),
      };
    });
  }
}
