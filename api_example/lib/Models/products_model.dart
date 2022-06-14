
class ProductsModel {
  String? id;
  bool? onSale;
  int? salePercent;
  int? sold;
  bool? sliderNew;
  bool? sliderRecent;
  bool? sliderSold;
  String? date;
  String? title;
  Categories? categories;
  Subcate? subcate;
  Shop? shop;
  String? price;
  String? saleTitle;
  String? salePrice;
  String? description;
  String? colors;
  String? size;
  List<Images>? images;
  int? v;
  bool? inWishlist;

  ProductsModel({
    required this.id,
    required this.onSale,
    required this.salePercent,
    required this.sold,
    required this.sliderNew,
    required this.sliderRecent,
    required this.sliderSold,
    required this.date,
    required this.title,
    required this.categories,
    required this.subcate,
    required this.shop,
    required this.price,
    required this.saleTitle,
    required this.salePrice,
    required this.description,
    required this.colors,
    required this.size,
    required this.images,
    required this.v,
    required this.inWishlist
  });
  ProductsModel.fromJson(dynamic json) {
  // ProductsModel.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String)
      this.id = json["_id"];
    if(json["on_sale"] is bool)
      this.onSale = json["on_sale"];
    if(json["sale_percent"] is int)
      this.salePercent = json["sale_percent"];
    if(json["sold"] is int)
      this.sold = json["sold"];
    if(json["slider_new"] is bool)
      this.sliderNew = json["slider_new"];
    if(json["slider_recent"] is bool)
      this.sliderRecent = json["slider_recent"];
    if(json["slider_sold"] is bool)
      this.sliderSold = json["slider_sold"];
    if(json["date"] is String)
      this.date = json["date"];
    if(json["title"] is String)
      this.title = json["title"];
    if(json["categories"] is Map)
      this.categories = json["categories"] == null ? null : Categories.fromJson(json["categories"]);
    if(json["subcate"] is Map)
      this.subcate = json["subcate"] == null ? null : Subcate.fromJson(json["subcate"]);
    if(json["shop"] is Map)
      this.shop = json["shop"] == null ? null : Shop.fromJson(json["shop"]);
    if(json["price"] is String)
      this.price = json["price"];
    if(json["sale_title"] is String)
      this.saleTitle = json["sale_title"];
    if(json["sale_price"] is String)
      this.salePrice = json["sale_price"];
    if(json["description"] is String)
      this.description = json["description"];
    if(json["colors"] is String)
      this.colors = json["colors"];
    if(json["size"] is String)
      this.size = json["size"];
    if(json["images"] is List)
      this.images = json["images"]==null ? null : (json["images"] as List).map((e)=>Images.fromJson(e)).toList();
    if(json["__v"] is int)
      this.v = json["__v"];
    if(json["in_wishlist"] is bool)
      this.inWishlist = json["in_wishlist"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["on_sale"] = this.onSale;
    data["sale_percent"] = this.salePercent;
    data["sold"] = this.sold;
    data["slider_new"] = this.sliderNew;
    data["slider_recent"] = this.sliderRecent;
    data["slider_sold"] = this.sliderSold;
    data["date"] = this.date;
    data["title"] = this.title;
    if(this.categories != null)
      data["categories"] = this.categories!.toJson();
    if(this.subcate != null)
      data["subcate"] = this.subcate!.toJson();
    if(this.shop != null)
      data["shop"] = this.shop!.toJson();
    data["price"] = this.price;
    data["sale_title"] = this.saleTitle;
    data["sale_price"] = this.salePrice;
    data["description"] = this.description;
    data["colors"] = this.colors;
    data["size"] = this.size;
    if(this.images != null)
      data["images"] = this.images!.map((e)=>e.toJson()).toList();
    data["__v"] = this.v;
    data["in_wishlist"] = this.inWishlist;
    return data;
  }
}

class Images {
  String? id;
  String? filename;
  String? url;

  Images({
    required this.id,
    required this.filename,
    required this.url
    });

  Images.fromJson(dynamic json) {
  // Images.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String)
      this.id = json["_id"];
    if(json["filename"] is String)
      this.filename = json["filename"];
    if(json["url"] is String)
      this.url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["filename"] = this.filename;
    data["url"] = this.url;
    return data;
  }
}

class Shop {
  String? id;
  bool? isActive;
  String? createdAt;
  String? name;
  String? description;
  String? shopemail;
  String? shopaddress;
  String? shopcity;
  String? userid;
  String? image;
  int? v;

  Shop({
  required this.id,
  required this.isActive,
  required this.createdAt,
  required this.name,
  required this.description,
  required this.shopemail,
  required this.shopaddress,
  required this.shopcity,
  required this.userid,
  required this.image,
  required this.v
  });

  Shop.fromJson(dynamic json) {
  // Shop.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String)
      this.id = json["_id"];
    if(json["is_active"] is bool)
      this.isActive = json["is_active"];
    if(json["created_at"] is String)
      this.createdAt = json["created_at"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["description"] is String)
      this.description = json["description"];
    if(json["shopemail"] is String)
      this.shopemail = json["shopemail"];
    if(json["shopaddress"] is String)
      this.shopaddress = json["shopaddress"];
    if(json["shopcity"] is String)
      this.shopcity = json["shopcity"];
    if(json["userid"] is String)
      this.userid = json["userid"];
    if(json["image"] is String)
      this.image = json["image"];
    if(json["__v"] is int)
      this.v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["is_active"] = this.isActive;
    data["created_at"] = this.createdAt;
    data["name"] = this.name;
    data["description"] = this.description;
    data["shopemail"] = this.shopemail;
    data["shopaddress"] = this.shopaddress;
    data["shopcity"] = this.shopcity;
    data["userid"] = this.userid;
    data["image"] = this.image;
    data["__v"] = this.v;
    return data;
  }
}

class Subcate {
  String? id;
  String? date;
  String? name;
  String? parentid;
  int? v;

  Subcate({
    required this.id,
    required this.date,
    required this.name,
    required this.parentid,
    required this.v
  });

  Subcate.fromJson(dynamic json) {
  // Subcate.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String)
      this.id = json["_id"];
    if(json["date"] is String)
      this.date = json["date"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["parentid"] is String)
      this.parentid = json["parentid"];
    if(json["__v"] is int)
      this.v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["date"] = this.date;
    data["name"] = this.name;
    data["parentid"] = this.parentid;
    data["__v"] = this.v;
    return data;
  }
}

class Categories {
  String? id;
  String? type;
  String? date;
  String? name;
  String? image;
  int? v;

  Categories({
    required this.id,
    required this.type,
    required this.date,
    required this.name,
    required this.image,
    required this.v
  });

  Categories.fromJson(dynamic json) {
  // Categories.fromJson(Map<String, dynamic> json) {
    if(json["_id"] is String)
      this.id = json["_id"];
    if(json["type"] is String)
      this.type = json["type"];
    if(json["date"] is String)
      this.date = json["date"];
    if(json["name"] is String)
      this.name = json["name"];
    if(json["image"] is String)
      this.image = json["image"];
    if(json["__v"] is int)
      this.v = json["__v"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["_id"] = this.id;
    data["type"] = this.type;
    data["date"] = this.date;
    data["name"] = this.name;
    data["image"] = this.image;
    data["__v"] = this.v;
    return data;
  }
}