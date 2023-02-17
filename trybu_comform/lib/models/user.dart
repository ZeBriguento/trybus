class User {
  int? id;
  String? first_name;
  String? last_name;
  String? image;
  String? email;
  String? token;

  User({
    this.id,
    this.first_name,
    this.last_name,
    this.image,
    this.email,
    this.token
  });


  // function to convert json data to user model
  factory User.fromJson(Map<String, dynamic> json){
    return User(
        id: json['user']['id'],
        first_name: json['user']['first_name'],
        last_name: json['user']['last_name'],
        image: json['user']['image'],
        email: json['user']['email'],
        token: json['token']
    );
  }
}