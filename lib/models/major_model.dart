import 'package:uuid/uuid.dart';

class Major {
  Major({
    required this.title,
    required this.numOfCredits,
    required this.type,
    required this.majorId,
  }) : majorid = const Uuid().v1();
  String majorid;
  String title;
  int numOfCredits;
  String type;
  String majorId;
}
