import 'dart:convert';
import 'dart:convert';
import 'package:chashy_app/models/city.dart';

class Villa {
  int id;
  String name;
  String imageUrl;
  String place;
  String city;
  int price;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfKitchens;
  int numberOfBed;
  int numberOfCupboards;

  Villa(
      {required this.id,
      required this.price,
      required this.imageUrl,
      required this.name,
      required this.place,
      required this.city,
      required this.rating,
      required this.address,
      required this.phone,
      required this.mapUrl,
      required this.photos,
      required this.numberOfBed,
      required this.numberOfKitchens,
      required this.numberOfCupboards});

  factory Villa.fromJson(Map<String, dynamic>json) {
    return Villa(
    id = json['id'] as int;
    name = json['name'] as String;
    imageUrl = json['imageUrl'];
    place = json['place'];
    city = json['city'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['mapUrl'];
    numberOfBed = json['numberOfBed'];
    numberOfCupboards = json['numberOfCupboards'];
    numberOfKitchens = json['numberOfKitchens'];
    photos = json['photos'];
    );
  }
}
