String formatRelativeTime(DateTime? date) {
  if (date == null) return '';

  final now = DateTime.now();
  final diff = now.difference(date);

  if (diff.inDays == 0) {
    // 같은 날이면 시간 단위
    return '${diff.inHours}시간 전';
  } else if (diff.inDays < 7) {
    // 1주일 이내 → 일 단위
    return '${diff.inDays}일 전';
  } else if (diff.inDays < 30) {
    final weeks = (diff.inDays / 7).floor();
    return '$weeks주 전';
  } else {
    // 월, 년 계산
    int years = now.year - date.year;
    int months = now.month - date.month;
    int days = now.day - date.day;

    if (days < 0) {
      // 이전 달의 일 수를 빼서 보정
      final prevMonth = DateTime(now.year, now.month, 0);
      days += prevMonth.day;
      months -= 1;
    }
    if (months < 0) {
      months += 12;
      years -= 1;
    }

    if (years == 0) {
      return '$months달 전';
    } else {
      return '$years년 전';
    }
  }
}
