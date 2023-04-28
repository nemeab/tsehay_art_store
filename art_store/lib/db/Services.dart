import 'package:art_store/db/Repository.dart';
import 'package:art_store/Models/Products.dart';

class Service {
  Repository? _repository;

  Service() {
    _repository = Repository();
  }

  save_product(Products product) async {
    return await _repository!.insertData('product', product.toJson());
  }

  read_product() async {
    return await _repository!.readData('product');
  }

  update_product(Products product) async {
    return await _repository!.updateData('product', product.toJson());
  }

  delete_product(dispatchId) async {
    return await _repository!.deleteData('product', dispatchId);
  }
}
