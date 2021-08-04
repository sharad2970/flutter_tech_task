import 'package:contacts_service/contacts_service.dart';

abstract class ContactLocalDS {
  Future<List<Contact>> getContactList({String query});
}
