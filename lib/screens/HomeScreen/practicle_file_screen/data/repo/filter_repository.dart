class FilterRepository {
  
  Future<bool?> getFilter(List<String> multiOption, String singleOption) async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      return true;
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
