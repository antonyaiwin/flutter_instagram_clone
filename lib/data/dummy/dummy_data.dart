import 'dart:math';

class DummyData {
  static List<String> firstNames = [
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Emma',
    'Frank',
    'Grace',
    'Henry',
    'Ivy',
    'Jack',
  ];
  static List<String> lastNames = [
    'Smith',
    'Johnson',
    'Williams',
    'Jones',
    'Brown',
    'Davis',
    'Miller',
    'Wilson',
    'Moore',
    'Taylor',
  ];

  static const List monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  static String generateRandomDate() {
    int monthNumber = Random().nextInt(monthNames.length);
    int day = 1;
    switch (monthNumber + 1) {
      case 2:
        day = Random().nextInt(28) + 1;
        break;
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        day = Random().nextInt(31) + 1;
        break;
      default:
        day = Random().nextInt(30) + 1;
        break;
    }

    return '${monthNames[monthNumber]} $day';
  }

  static List<String> separators = ['.', '_'];

  static String generateRandomUsername() {
    String firstName = firstNames[Random().nextInt(firstNames.length)];
    String lastName = lastNames[Random().nextInt(lastNames.length)];
    String separator = separators[Random().nextInt(separators.length)];
    String username = '$firstName$separator$lastName${Random().nextInt(100)}';

    return username;
  }

  static String? generateRandomPlace() {
    int index = Random().nextInt(placesAndCountries.length);
    if (index.isEven) {
      return null;
    }
    return placesAndCountries[index];
  }

  static List<String> realtimeComments = [
    "Great content! 🚀",
    "I learned a lot from this!",
    "Can you explain the third point in more detail?",
    "Awesome tutorial!",
    "This is so helpful, thanks!",
    "I have a question about the second paragraph.",
    "Looking forward to more updates!",
    "You make it so easy to understand.",
    "Not clear on the example, can you provide another one?",
    "I appreciate your effort in creating this.",
    "Helpful information, thanks for sharing!",
    "Excellent explanation!",
    "I wish I found this sooner.",
    "Any suggestions for further reading?",
    "Very well written!",
    "Clear and concise. Thanks!",
    "Thanks for the valuable insights!",
    "This is exactly what I was looking for.",
    "Kudos to the author!",
    "I love your writing style.",
    "Could you cover topic X in your next post?",
    "You've made a complex topic easy to grasp.",
    "Thanks for the step-by-step guide!",
    "I'm sharing this with my colleagues.",
    "Can you do a tutorial on topic Y?",
    "You've saved me a lot of time. Appreciate it!",
    "I have a question about the conclusion.",
    "Great examples provided!",
    "Your expertise shines through. Well done!",
    "I've bookmarked this page for future reference.",
    "You've answered all my questions.",
    "Do you have a newsletter I can subscribe to?",
    "Mind-blowing insights!",
    "I'm implementing this right away.",
    "Thanks for the code snippets!",
    "Could you elaborate on point number four?",
    "You've simplified a complex subject. Bravo!",
    "Can I contact you for further clarification?",
    "I've never understood this concept until now.",
    "You're a fantastic teacher!",
    "I appreciate the real-world examples.",
    "I'm recommending this to my peers.",
    "Can you do a deep dive into topic Z?",
    "Your writing is engaging and informative.",
    "Thanks for sharing your knowledge!",
    "I look forward to your future posts.",
    "Can you provide more details on the third technique?",
    "You've made a difference in my understanding.",
  ];

  static List<String> placesAndCountries = [
    'Tokyo, Japan',
    'Mumbai, India',
    'New York, USA',
    'London, UK',
    'Paris, France',
    'Beijing, China',
    'Sydney, Australia',
    'Cairo, Egypt',
    'Rio de Janeiro, Brazil',
    'Moscow, Russia',
    'Berlin, Germany',
    'Dubai, UAE',
    'Seoul, South Korea',
    'Toronto, Canada',
    'Rome, Italy',
    'Cape Town, South Africa',
    'Bangkok, Thailand',
    'Mexico City, Mexico',
    'Hanoi, Vietnam',
    'Lisbon, Portugal',
    'Stockholm, Sweden',
    'Buenos Aires, Argentina',
    'Amsterdam, Netherlands',
    'Singapore, Singapore',
    'Istanbul, Turkey',
    'Sydney, Australia',
    'Nairobi, Kenya',
    'Athens, Greece',
    'Auckland, New Zealand',
    'Copenhagen, Denmark',
    'Helsinki, Finland',
    'Oslo, Norway',
    'Prague, Czech Republic',
    'Vienna, Austria',
    'Brussels, Belgium',
    'Budapest, Hungary',
    'Warsaw, Poland',
    'Zurich, Switzerland',
    'Madrid, Spain',
    'Lima, Peru',
    'Santiago, Chile',
    'Manila, Philippines',
    'Jakarta, Indonesia',
    'Havana, Cuba',
    'Panama City, Panama',
    'Dakar, Senegal',
    'Accra, Ghana',
    'Kathmandu, Nepal',
  ];
}
