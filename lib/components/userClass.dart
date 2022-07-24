class User {
  User(
      {required this.email,
      required this.name,
      required this.id,
      required this.username,
      required this.phone,
      required this.profilePicture});
  String username, email, name, id, profilePicture;
  int phone;
}

List<String> participantsProPic = [
  'profile1.jpg',
  'profile2.jpg',
  'profile3.jpg',
  'profile4.jpg',
  'profile5.jpg',
];

List<User> users = [
  User(
      email: 'shruti@gmail.com',
      name: 'Shruti Pokharel',
      id: '2',
      username: 'shruti',
      phone: 123456,
      profilePicture: participantsProPic[1]),
  User(
      email: 'shruti@gmail.com',
      name: 'Shruti Pokharel',
      id: '3',
      username: 'shruti',
      phone: 123456,
      profilePicture: participantsProPic[2]),
  User(
      email: 'shruti@gmail.com',
      name: 'Shruti Pokharel',
      id: '4',
      username: 'shruti',
      phone: 123456,
      profilePicture: participantsProPic[3]),
  User(
      email: 'shruti@gmail.com',
      name: 'Shruti Pokharel',
      id: '5',
      username: 'shruti',
      phone: 123456,
      profilePicture: participantsProPic[4]),
  User(
      email: 'shruti@gmail.com',
      name: 'Shruti Pokharel',
      id: '1',
      username: 'shruti',
      phone: 123456,
      profilePicture: participantsProPic[0]),
];
