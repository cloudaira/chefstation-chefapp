import 'package:chefstation_chefapp/features/addon/domain/models/addon_category_model.dart';
import 'package:chefstation_chefapp/features/restaurant/domain/models/product_model.dart';
import 'package:chefstation_chefapp/interface/repository_interface.dart';

abstract class AddonRepositoryInterface<T> implements RepositoryInterface<AddOns> {
  Future<List<AddonCategoryModel>?> getAddonCategory({required int moduleId});
  Future<bool> updateAddon(AddOns addonModel);
}