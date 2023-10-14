// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edtail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class edtailAdapter extends TypeAdapter<edtail> {
  @override
  final int typeId = 0;

  @override
  edtail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return edtail()
      ..eventname = fields[0] as String
      ..startdate = fields[1] as String
      ..enddate = fields[2] as String
      ..collegename = fields[3] as String
      ..image = fields[4] as String
      ..skillslist = (fields[5] as List).cast<String>();
  }

  @override
  void write(BinaryWriter writer, edtail obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.eventname)
      ..writeByte(1)
      ..write(obj.startdate)
      ..writeByte(2)
      ..write(obj.enddate)
      ..writeByte(3)
      ..write(obj.collegename)
      ..writeByte(4)
      ..write(obj.image)
      ..writeByte(5)
      ..write(obj.skillslist);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is edtailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
