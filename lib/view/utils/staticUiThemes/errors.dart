class NullAuthException implements Exception{
  String nullAuthMessage()=> 'User Not Found';
}

class ApiStatusException implements Exception{
  String apiStatusMessage()=> 'Network Error';
}

class LocalDBException implements Exception{
    String ldbStatusMessage()=> 'Please Try Again';
}