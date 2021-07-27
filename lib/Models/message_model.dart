import 'package:chat_ui/Models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;
  final int unreadCount;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
    this.unreadCount,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
  online: true,
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
  online: true,
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
  online: false,
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
  online: false,
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
  online: true,
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
  online: true,
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
  online: false,
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
  online: true,
);

// FAVORITE CONTACTS
List<User> online = [sam, steven, olivia, john, greg];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: james,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
    unreadCount: 3,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'What to Do?',
    isLiked: false,
    unread: true,
    unreadCount: 2,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'See You Tomorrow! Bye',
    isLiked: false,
    unread: false,
    unreadCount: 0,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
    unreadCount: 0,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
    unreadCount: 0,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
    unreadCount: 0,
  ),
  Message(
    sender: greg,
    time: '11:30 AM',
    text: 'Hey, how are you?',
    isLiked: false,
    unread: true,
    unreadCount: 1,
  ),
];
