import 'package:lazy_engineer/features/home/data/models/multioption_model/multioption_model.dart';

String addOrdinals(int num) {
  final String ans = num.toString();
  switch (num) {
    case 1:
      return '${ans}st';
    case 2:
      return '${ans}nd';
    case 3:
      return '${ans}rd';
    default:
      return '${ans}th';
  }
}

bool filterTextfeildCheck({
  required List<String> filterList,
  required List<String?> elementList,
}) {
  bool check = true;
  for (int i = 0; i < filterList.length; i++) {
    if (elementList[i] != null) {
      final String filter = filterList[i].trim().toLowerCase();
      final String element = elementList[i]!.trim().toLowerCase();
      check = check && (filter == '' || element.contains(filter));
    } else {
      check = check && filterList[i].trim() == '';
    }
  }
  return check;
}

bool filterMultiOptionCheck({
  required List<MultioptionModel> filterList,
  required List<String?> elementList,
}) {
  bool check = true;
  for (int i = 0; i < filterList.length; i++) {
    if (elementList[i] != null) {
      final filter = filterList[i].body;
      final String element = elementList[i]!;
      check = check && (filter.isEmpty || filter.contains(element));
    } else {
      check = check && filterList[i].body.isEmpty;
    }
  }
  return check;
}

String? workingLink(String? str) {
  if (str == null) return null;
  final int end1 = str.indexOf('generation');
  final String str1 = str.substring(0, end1);
  String str2 = str.substring(end1);
  final int end2 = str2.indexOf('&');
  str2 = str2.substring(end2 + 1);
  const String str3 = '&token=3198f78f-e10b-4296-bd40-bd5cee4001fe';
  print('~~@@@@@@@@@@@@@@@@@@@@@@@');
  print(str1 + str2 + str3);
  return str1 + str2 + str3;
}
