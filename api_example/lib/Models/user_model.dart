
class UserModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company});

  UserModel.fromJson(dynamic json) {
  // UserModel.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int)
      this.id = json["id"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["username"] is String)
      this.username = json["username"];
    if(json["email"] is String)
      this.email = json["email"];
    if(json["address"] is Map)
      this.address = json["address"] == null ? null : Address.fromJson(json["address"]);
    if(json["phone"] is String)
      this.phone = json["phone"];
    if(json["website"] is String)
      this.website = json["website"];
    if(json["company"] is Map)
      this.company = json["company"] == null ? null : Company.fromJson(json["company"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["name"] = this.name;
    data["username"] = this.username;
    data["email"] = this.email;
    if(this.address != null)
      data["address"] = this.address!.toJson();
    data["phone"] = this.phone;
    data["website"] = this.website;
    if(this.company != null)
      data["company"] = this.company!.toJson();
    return data;
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs
  });

  Company.fromJson(dynamic json) {
  // Company.fromJson(Map<String, dynamic> json) {
    if(json["name"] is String)
      this.name = json["name"];
    if(json["catchPhrase"] is String)
      this.catchPhrase = json["catchPhrase"];
    if(json["bs"] is String)
      this.bs = json["bs"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["name"] = this.name;
    data["catchPhrase"] = this.catchPhrase;
    data["bs"] = this.bs;
    return data;
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo
  });

  Address.fromJson(dynamic json) {
  // Address.fromJson(Map<String, dynamic> json) {
    if(json["street"] is String)
      this.street = json["street"];
    if(json["suite"] is String)
      this.suite = json["suite"];
    if(json["city"] is String)
      this.city = json["city"];
    if(json["zipcode"] is String)
      this.zipcode = json["zipcode"];
    if(json["geo"] is Map)
      this.geo = json["geo"] == null ? null : Geo.fromJson(json["geo"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["street"] = this.street;
    data["suite"] = this.suite;
    data["city"] = this.city;
    data["zipcode"] = this.zipcode;
    if(this.geo != null)
      data["geo"] = this.geo!.toJson();
    return data;
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo({
    required this.lat,
    required this.lng});

  Geo.fromJson(dynamic json) {
  // Geo.fromJson(Map<String, dynamic> json) {
    if(json["lat"] is String)
      this.lat = json["lat"];
    if(json["lng"] is String)
      this.lng = json["lng"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["lat"] = this.lat;
    data["lng"] = this.lng;
    return data;
  }
}