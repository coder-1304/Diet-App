import 'package:floor/floor.dart';
//DAO= Data Access Object 
@entity
class User{
  @PrimaryKey(autoGenerate: true)
  final int id;
  String firstName, lastName;
  User({required this.id, required this.firstName, required this.lastName});
}