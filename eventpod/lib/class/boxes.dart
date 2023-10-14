import '/class/edtail.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<edtail> getinstance() => Hive.box<edtail>('analyzer');
}
