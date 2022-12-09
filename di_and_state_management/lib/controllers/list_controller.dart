import 'package:di_and_state_management/repositories/list_repository.dart';

class ListController {
  final ListRepository listRepository;

  ListController({required this.listRepository});

  bool isLoading = false;
  bool hasError = false;
  final List<String> stringList = [];
  bool get isListLoaded =>
      isLoading == false && hasError == false && stringList.isNotEmpty;

  Future<void> getStringList() async {
    try {
      isLoading = true;
      final list = await listRepository.getStringList();
      isLoading = false;
      stringList.addAll(list);
    } catch (e) {
      isLoading = false;
      hasError = true;
    }
  }
}
