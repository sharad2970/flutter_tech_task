import 'package:contacts_service/contacts_service.dart';
import 'package:data/source/contact/contact_data_source.dart';

class ContactLocalDSImpl extends ContactLocalDS {
  ContactLocalDSImpl();

  @override
  Future<List<Contact>> getContactList({String query}) async {
    final Iterable<Contact> contacts = await ContactsService.getContacts(
        withThumbnails: false, query: query.isEmpty ? null : query);
    return contacts.toList();
  }
}
