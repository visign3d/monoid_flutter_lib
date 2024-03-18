

import '../../../abstract/model/a_object.dart';
import 'link/selected_item_from_link_model.dart';

class ItemModel extends AObject {
  ItemModel(
      {this.name = '',
      this.text = '',
      this.iconUrl = '',
      this.imgUrl = '',
      this.imgXLUrl = '',
      this.link = '',
      this.youTube = '',
      this.api = '',
      this.mesh = '',
      this.richText = '',
      this.chat = '',
      this.geoMap = '',
      DateTime? dateTime,
      this.likes = 0,
      this.dislikes = 0,
      this.viewCount = 0,
      this.clickCount = 0,
      this.reference = '',
      this.isSingleton = false,
      this.script = '',
      required super.id})
      : dateTime = dateTime ?? DateTime.now();

  ///todo
  final String name;

  ///todo
  final String text;

  ///todo
  final String iconUrl;

  ///todo
  final String imgUrl;

  ///todo
  final String imgXLUrl;

  ///todo
  final String link;

  ///todo
  final List<SelectedLinkItemModel> selectedLinkItemModels = [];

  ///todo
  final String youTube;

  final String api;

  ///todo
  final String mesh;

  ///todo chat ritchtext

  final String richText;

  ///todo chat model

  final String chat;

  ///todo map_model

  final String geoMap;

  final DateTime dateTime;

  ///todo datetime interval


  ///todo user rating system
  final int likes;

  final int dislikes;

  final int viewCount;

  final int clickCount;
///todo reference implementation
  ///reference of another item from another topic. Items inside of the topic cannot be refernced , becouse of no-dublicates policy
  final String reference;
///todo singleton implementation
  ///cannot be referenced in other topics
  final bool isSingleton;

  ///monoid script
  final String script;

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
