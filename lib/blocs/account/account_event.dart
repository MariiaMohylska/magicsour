part of 'account_bloc.dart';

@freezed
class AccountEvent {
  const factory AccountEvent.logIn() = _AccountLogInEvent;
  const factory AccountEvent.logOut() = _AccountLogOutEvent;
  const factory AccountEvent.updateStatusToLoggedIn() = _AccountUpdateStatusToLoggedIn;
  const factory AccountEvent.updateStatusToLoggedOut() = _AccountUpdateStatusToLoggedOut;
  const factory AccountEvent.updateRestrictedProducts({
    required Map<SelectableModel<ProductType>,
        List<SelectableModel<Ingredient>>>
    restrictedProducts}) = _AccountUpdateRestrictedProductsEvent;
  const factory AccountEvent.updateAllergens({required List<SelectableModel<Allergens>> allergensList}) = _AccountUpdateAllergensEvent;
}