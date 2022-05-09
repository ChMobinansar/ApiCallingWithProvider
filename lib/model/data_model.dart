class UserDataModel {
  int? id;
  String? name;
  String? userName;
  String? email;
  double? phone;
  String? website;
  Address? address;
  Geo? geo;

  UserDataModel({this.id, this.name, this.userName, this.email});
  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'] as int,
      name: json['name'] as String,
      userName: json['username'] as String,
      email: json['email'] as String,
    );
  }
}

class Address {
  Address({this.street, this.suite, this.city, this.zipcode});
  String? street;
  String? suite;
  String? city;
  double? zipcode;
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as double,
    );
  }
}

class Geo {
  double? lat;
  double? lng;
  Geo({this.lat, this.lng});
  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(
      lat: json['lat'] as double,
      lng: json['lng'] as double,
    );
  }
}

class Company {
  String? companyName;
  String? catchPhrase;
  String? bs;
  Company({this.companyName, this.catchPhrase, this.bs});
  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyName: json['company'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );
  }
}
