import 'package:hive/hive.dart';

part 'edtail.g.dart';

@HiveType(typeId: 0)
class edtail extends HiveObject {
  @HiveField(0)
  late String eventname;
  @HiveField(1)
  late String startdate;
  @HiveField(2)
  late String enddate;
  @HiveField(3)
  late String collegename;
  @HiveField(4)
  late String image;
  @HiveField(5)
  late List<String> skillslist;
}
