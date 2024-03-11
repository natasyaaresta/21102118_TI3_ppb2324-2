//[8].Properties & Methods
      class Animal {
      String _name = '';
      int _age = 0;
      double _weight = 0;
 
      Animal(this._name, this._age, this._weight);
 
      // Setter
      set name(String value) {
        _name = value;
      }

      // Getter
      double get weight => _weight;
    
      void eat() {
        print('$_name is eating.');
        _weight = _weight + 0.2;
      }
    
      void sleep() {
        print('$_name is sleeping.');
      }
      void poop() {
        print('$_name is pooping.');
        _weight = _weight - 0.1;
      }
    }

    void main() {
    var myPet = Animal('Fluffy', 2, 2.5);
    myPet.eat();
    myPet.sleep();
    myPet.poop();

    print('Name: ${myPet._name}');
    print('Age: ${myPet._age} years');
    print('Weight: ${myPet.weight} kg');
}
