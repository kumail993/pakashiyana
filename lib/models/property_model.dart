class PropertyModel {
  Map<String, dynamic> amenities;
  int areaSize;
  int areaUnit;
  int bathrooms;
  int bedrooms;
  String category;
  String description;
  bool isApproved;
  bool isBlacklisted;
  bool isConstructed;
  bool isFurnished;
  bool isPromoted;
  bool isRejected;
  String location;
  int phoneNo;
  int price;
  String propertyFor;
  String propertyId;
  List<String> propertyImages;
  String propertyTitle;
  String propertyType;
  String uid;

  PropertyModel({
    required this.amenities,
    required this.areaSize,
    required this.areaUnit,
    required this.bathrooms,
    required this.bedrooms,
    required this.category,
    required this.description,
    required this.isApproved,
    required this.isBlacklisted,
    required this.isConstructed,
    required this.isFurnished,
    required this.isPromoted,
    required this.isRejected,
    required this.location,
    required this.phoneNo,
    required this.price,
    required this.propertyFor,
    required this.propertyId,
    required this.propertyImages,
    required this.propertyTitle,
    required this.propertyType,
    required this.uid,
  });

  // Convert a PropertyModel instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'amenities': amenities,
      'area_size': areaSize,
      'area_unit': areaUnit,
      'bathrooms': bathrooms,
      'bedrooms': bedrooms,
      'category': category,
      'description': description,
      'is_approved': isApproved,
      'is_blacklisted': isBlacklisted,
      'is_constructed': isConstructed,
      'is_furnished': isFurnished,
      'is_promoted': isPromoted,
      'is_rejected': isRejected,
      'location': location,
      'phone_no': phoneNo,
      'price': price,
      'property_for': propertyFor,
      'property_id': propertyId,
      'property_images': propertyImages,
      'property_title': propertyTitle,
      'property_type': propertyType,
      'uid': uid,
    };
  }

  // Create a PropertyModel instance from a Map
  factory PropertyModel.fromMap(Map<String, dynamic> map) {
    return PropertyModel(
      amenities: Map<String, dynamic>.from(map['amenities']),
      areaSize: map['area_size'] ?? 0,
      areaUnit: map['area_unit'] ?? 0,
      bathrooms: map['bathrooms'] ?? 0,
      bedrooms: map['bedrooms'] ?? 0,
      category: map['category'] ?? '',
      description: map['description'] ?? '',
      isApproved: map['is_approved'] ?? false,
      isBlacklisted: map['is_blacklisted'] ?? false,
      isConstructed: map['is_constructed'] ?? false,
      isFurnished: map['is_furnished'] ?? false,
      isPromoted: map['is_promoted'] ?? false,
      isRejected: map['is_rejected'] ?? false,
      location: map['location'] ?? '',
      phoneNo: map['phone_no'] ?? 0,
      price: map['price'] ?? 0,
      propertyFor: map['property_for'] ?? '',
      propertyId: map['property_id'] ?? '',
      propertyImages: List<String>.from(map['property_images'] ?? []),
      propertyTitle: map['property_title'] ?? '',
      propertyType: map['property_type'] ?? '',
      uid: map['uid'] ?? '',
    );
  }
}
