class PersonInfo {
  final int id;
  final String name;
  final String username;
  final String email;

  const PersonInfo({this.id, this.name, this.username, this.email});

  factory PersonInfo.fromJson(Map<String, dynamic> json) {
    final personJson = json['person'];
    return PersonInfo(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
    );
  }
}

class Person {
  final int courseId;
  final String name;
  final String username;
  final String birthday;
  final String email;
  final String city;
  final String country;
  final String phone;

  const Person({this.courseId, this.name, this.username, this.birthday,
      this.email, this.city, this.country, this.phone});

  factory Person.fromJson(Map<String, dynamic> json) {
    final personJson = json['person'];
    return Person(
      courseId: json['course_id'],
      name: json['name'],
      username: json['username'],
      birthday: json['birthday'],
      email: json['email'],
      city: json['city'],
      country: json['country'],
      phone: json['phone'],
    );
  }
}
