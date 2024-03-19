class Repository {
 static  Repository? _instance;


  static Repository? getInstance() {
    return _instance;
  }

    String getDateStr(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }
}