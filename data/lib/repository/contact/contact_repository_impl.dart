import 'package:contacts_service/contacts_service.dart';
import 'package:dartz/dartz.dart';
import 'package:data/source/contact/contact_data_source.dart';
import 'package:domain/error/database_error.dart';
import 'package:domain/model/contact.dart';
import 'package:domain/repository/contact/contact_repository.dart';

class ContactRepositoryImpl extends ContactRepository {
  ContactLocalDS localDS;

  ContactRepositoryImpl(this.localDS);

  @override
  Future<Either<DatabaseError, List<LocalContact>>> getContactList(
      {String query}) async {
    final contactList = await localDS.getContactList(query: query);
    List<LocalContact> localContactList = [];
    for (Contact contact in contactList) {
      if (contact.phones.isNotEmpty) {
        for (Item item in contact.phones) {
          localContactList.add(
              LocalContact(name: contact.displayName, mobNumber: item.value));
        }

        // Set<String> numberSet = localContactList.map((e) => e.mobNumber).toSet();
        // localContactList.retainWhere((element) => numberSet.remove(element.mobNumber));
      }
    }
    return Right(localContactList);
  }
}
