import 'package:core/core.dart';
import '../domain.dart';

class ShopConfirmUseCase extends UseCase<DataState<void>, ShopConfirmUseCaseParams> {
  final OrderRepository repository;

  const ShopConfirmUseCase(this.repository);

  @override
  Future<DataState<void>> call(ShopConfirmUseCaseParams params) {
    return repository.shopConfirm(params.confirmEntities);
  }
} 

class ShopConfirmUseCaseParams {
  final List<ShopConfirmEntity> confirmEntities;

  const ShopConfirmUseCaseParams({
    required this.confirmEntities,
  });
}
