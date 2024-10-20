class NetworkResponse{
  final bool isSuccess;
  final String errorMessage;
  final int statusCode;
  final dynamic responseData;

  NetworkResponse(
      {required this.isSuccess,
      this.errorMessage = 'something went wrong',
      required this.statusCode,
      this.responseData});
}