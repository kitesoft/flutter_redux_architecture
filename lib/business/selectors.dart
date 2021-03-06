import 'package:cls_mobile/models/models.dart';

List<NameCard> searchCardByKeyword(List<NameCard> cards, String keyword) {
  if (keyword == null || keyword.isEmpty) {
    return cards;
  }
  var key = keyword.toLowerCase();
  return cards.where((card) {
    return (card.name != null && card.name.toLowerCase().contains(key)) ||
        (card.company != null && card.company.toLowerCase().contains(key));
  }).toList();
}
