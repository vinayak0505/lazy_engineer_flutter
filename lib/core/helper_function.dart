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
