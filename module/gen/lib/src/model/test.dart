import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

@JsonSerializable()
class Test {
    @JsonKey(name: "id")
    final int id;
    @JsonKey(name: "name")
    final String name;
    @JsonKey(name: "username")
    final String username;
    @JsonKey(name: "email")
    final String email;
    @JsonKey(name: "address")
    final Address address;
    @JsonKey(name: "phone")
    final String phone;
    @JsonKey(name: "website")
    final String website;
    @JsonKey(name: "company")
    final Company company;

    Test({
        required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
        required this.phone,
        required this.website,
        required this.company,
    });

    Test copyWith({
        int? id,
        String? name,
        String? username,
        String? email,
        Address? address,
        String? phone,
        String? website,
        Company? company,
    }) => 
        Test(
            id: id ?? this.id,
            name: name ?? this.name,
            username: username ?? this.username,
            email: email ?? this.email,
            address: address ?? this.address,
            phone: phone ?? this.phone,
            website: website ?? this.website,
            company: company ?? this.company,
        );

    factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);

    Map<String, dynamic> toJson() => _$TestToJson(this);
}

@JsonSerializable()
class Address {
    @JsonKey(name: "street")
    final String street;
    @JsonKey(name: "suite")
    final String suite;
    @JsonKey(name: "city")
    final String city;
    @JsonKey(name: "zipcode")
    final String zipcode;
    @JsonKey(name: "geo")
    final Geo geo;

    Address({
        required this.street,
        required this.suite,
        required this.city,
        required this.zipcode,
        required this.geo,
    });

    Address copyWith({
        String? street,
        String? suite,
        String? city,
        String? zipcode,
        Geo? geo,
    }) => 
        Address(
            street: street ?? this.street,
            suite: suite ?? this.suite,
            city: city ?? this.city,
            zipcode: zipcode ?? this.zipcode,
            geo: geo ?? this.geo,
        );

    factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

    Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Geo {
    @JsonKey(name: "lat")
    final String lat;
    @JsonKey(name: "lng")
    final String lng;

    Geo({
        required this.lat,
        required this.lng,
    });

    Geo copyWith({
        String? lat,
        String? lng,
    }) => 
        Geo(
            lat: lat ?? this.lat,
            lng: lng ?? this.lng,
        );

    factory Geo.fromJson(Map<String, dynamic> json) => _$GeoFromJson(json);

    Map<String, dynamic> toJson() => _$GeoToJson(this);
}

@JsonSerializable()
class Company {
    @JsonKey(name: "name")
    final String name;
    @JsonKey(name: "catchPhrase")
    final String catchPhrase;
    @JsonKey(name: "bs")
    final String bs;

    Company({
        required this.name,
        required this.catchPhrase,
        required this.bs,
    });

    Company copyWith({
        String? name,
        String? catchPhrase,
        String? bs,
    }) => 
        Company(
            name: name ?? this.name,
            catchPhrase: catchPhrase ?? this.catchPhrase,
            bs: bs ?? this.bs,
        );

    factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

    Map<String, dynamic> toJson() => _$CompanyToJson(this);
}
