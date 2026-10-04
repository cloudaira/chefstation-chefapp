import 'package:get/get_connect/connect.dart';
import 'package:chefstation_chefapp/features/business/domain/models/business_plan_body.dart';
import 'package:chefstation_chefapp/interface/repository_interface.dart';

abstract class BusinessRepositoryInterface<T> implements RepositoryInterface<T> {
  Future<Response> setUpBusinessPlan(BusinessPlanBody businessPlanBody);
}