// This is Singleton class;
// it is used for save data and user id;

class SessionController{

  static final SessionController _session=SessionController._internal();


  String? userId;
  factory SessionController(){
    return _session;
  }

  SessionController._internal(){


  }

}