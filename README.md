# quote_app_daily_tasks

# Factory Constructor

`Factort Constructor` :- 
- Factory constructors provide the flexibility to return instances of subclasses instead of the class itself.
- This allows for dynamic object creation based on specific conditions.
- Unlike generative constructors that always return a new instance, factory constructors allow greater control over the creation of objects.
- They can return instances of subclasses, new instances, or even existing instances.

## Example

```bash
class Animal {
  String name;
Animal(this.name);
  factory Animal(String type, String name) {
    switch (type) {
      case "cat":
        return Cat(name);
      case "dog":
        return Dog(name);
      default:
        throw Exception("Invalid animal type");
    }
  }
}
class Cat extends Animal {
  Cat(String name) : super(name);
  void speak() {
    print("Meow!");
  }
}
class Dog extends Animal {
  Dog(String name) : super(name);
  void speak() {
    print("Woof!");
  }
}
void main() {
  Animal animal1 = Animal("cat", "Tom");
  animal1.speak(); // Output: Meow!
  Animal animal2 = Animal("dog", "Buddy");
  animal2.speak(); // Output: Woof!
}
```

# Modal Class

`Modal Class` :- 

- A model class is a blueprint for an object that encapsulates data and behavior related to that data.
- In the context of a user model, it defines the attributes and methods associated with a user entity in your application.
- Creating a dedicated user model class helps in maintaining clean, modular, and readable code.

```bash
class BankModel {
  bool? isActive;
  String? balance, eyeColor, name, gender, company, email, phone, address;
  int? age;

  BankModel({
    this.isActive,
    this.name,
    this.balance,
    this.eyeColor,
    this.gender,
    this.company,
    this.email,
    this.phone,
    this.address,
    this.age,
  });
  factory BankModel.frombanking({required Map Banking}) {
    return BankModel(
        address: Banking['address'],
        age: Banking['age'],
        balance: Banking['balance'],
        company: Banking['company'],
        email: Banking['email'],
        eyeColor: Banking['eyeColor'],
        gender: Banking['gender'],
        isActive: Banking['isActive'],
        name: Banking['name'],
        phone: Banking['phone']);
  }
}

import 'dart:io';
import 'bank.dart';
import 'factory_constructor.dart';

void main(){
  List <BankModel> bankModellist = [];

  for(int i = 0; i < bankData.length; i++){
    BankModel bm1 = BankModel.frombanking(Banking: bankData[i]);
    bankModellist.add(bm1);
  }
  for(int i = 0; i < bankModellist.length; i++){
    print(bankModellist[i].name);
    print(bankModellist[i].age);
    print(bankModellist[i].email);
    print(bankModellist[i].phone);
    print(bankModellist[i].isActive);
    print(bankModellist[i].balance);
    print(bankModellist[i].gender);
    print(bankModellist[i].eyeColor);
    print(bankModellist[i].address);
    print(bankModellist[i].company);
  }
  
}
```
