

import '../../../abstract/model/a_object.dart';
import '../../../abstract/social_network/social_network_model.dart';
import '../../../abstract/tag/a_tag.dart';

class BusinessModel extends AObject<BusinessModel> {
  BusinessModel(
      {required this.name,
      required this.text,
        required this.email,
      required this.website,
      required this.businessAddress,
      required this.ownerName,
      required this.logoUrl,
      required this.est,
      required this.location,
        required this.socialNetworks,
      required super.id});

  final String name;

  final String text;

  final String email;

  final String logoUrl;

  final String ownerName;

  final String businessAddress;

  final String website;

  final List<ATag> tags = [];

  final DateTime est;

  final String location;

  final List<ASocialNetworkModel> socialNetworks;

  @override
  List<Object?> get props => [id];
}
