# quote_app_daily_tasks

# Factory Constructor

`Factort Constructor` :- 
- Factory constructors provide the flexibility to return instances of subclasses instead of the class itself.
- This allows for dynamic object creation based on specific conditions.
- Unlike generative constructors that always return a new instance, factory constructors allow greater control over the creation of objects.
- They can return instances of subclasses, new instances, or even existing instances.

## Advantages

- Flexible alternatives to generative constructors.
- It is a named constructor.
- Returning Subclass Instances.
- Efficient Object Creation.
- Singleton Pattern.

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

## Advantages

- Readability
- Faster
- Safer
- Structure
- Related to the model
- Code generation
- Testing

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
# Dialogue Box

<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/1f0b7340-43c0-4483-a0a0-f40a14931438" height="550">
<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/159525d4-78c6-4da1-aa8f-70eb99ffdaf4" height="550">
<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/a9bf6f90-ac03-417f-933b-f5e700cd95b0" height="550">
<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/a75750c2-fca5-4390-afef-a7fc759ba8b9" height="550">

https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/495a5beb-e71d-4a7b-a10d-8771e8ab4263

# Invoice Generator

<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/61b58ed6-6483-4eb0-b4f2-43d3115dfc02" height="550">

<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/71411392-bcb8-4cc3-add1-a59aa48f7b5d" height="550">

<img src="https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/35b330d8-6f9b-47a3-bf55-5a31e15e10cc" height="550">

https://github.com/Vishalk0810/quote_app_daily_tasks/assets/149374506/bdba4dc3-9dca-4ac2-abb1-e1a68e37adae








