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

bool filterCheck({
  required List<String> filterList,
  required List<String?> elementList,
}) {
  bool check = true;
  for (int i = 0; i < filterList.length; i++) {
    if (elementList[i] != null) {
      final String filter = filterList[i].trim().toLowerCase();
      final String element = elementList[i]!.trim().toLowerCase();
      check = check && filter == '' || element.contains(filter);
    } else {
      check &= filterList[i].trim() == '';
    }
  }
  return check;
}
