import '../../../invoice/data/model/client_request.dart';
import '../../data/models/client_response.dart';
import '../entities/client_enitity.dart';

extension ClientResponseMapper on ClientResponse {
  ClientEntity toEntity() {
    return ClientEntity(
      id: id,
      name: name,
      email: email,
      phone: phone,
      address: address,
    );
  }
}


extension ClientEntityMapper on ClientEntity {
  ClientRequest toRequest() {
    return ClientRequest(
      name: name,
      email: email,
      phone: phone,
      address: address,
    );
  }
}

