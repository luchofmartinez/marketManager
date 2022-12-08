
class User {
  final String _nombre;
  final String _email;
  final String _telefono;
  
  User(this._nombre,this._email,this._telefono);
    
  String get getNombre { return _nombre; }
  String get getEmail { return _email; }
  String get getTelefono { return _telefono; }

}
