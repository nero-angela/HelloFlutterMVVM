class User {
  int id;
  String name;
  String username;

  User({this.id, this.name, this.username});

  User.initial()
      : id = 0,
        name = '',
        username = '';

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    username = map['username'];
  }
}
