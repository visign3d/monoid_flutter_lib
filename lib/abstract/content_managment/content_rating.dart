


import '../model/a_object.dart';

abstract class ContentRatingModel extends AObject {
  const ContentRatingModel(
      {this.contentId = '',
      this.likes = 0,
      this.dislikes = 0,
      this.viewCount = 0,
      this.latsViewed,
      required super.id});

  final String contentId;

  final int likes;

  final int dislikes;

  final int viewCount;

  final DateTime? latsViewed;

  ContentScore get score;
}


class ContentScore {
  ContentScore(this.score);
  int score;
}
