import 'package:diet_recall3/Database/Entity/user.dart';
import 'package:floor/floor.dart';

@dao
abstract class UserDAO{
  @Query('Select * from User')
  Stream <List<User>> getAllUser();

  @Query('Select * from User WHERE id=:id')
  Stream <User> getAllUserByID(int id);

  @Query('DELETE FROM User')
  Stream <void> deleteAllUser(int id);

  @insert
  Future <void> insertUser(User user);

  @update
  Future <void> updateUser(User user);

  @delete
  Future <void> deleteUser(User user);

  
  
}