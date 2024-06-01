# quote_app_daily_tasks

# Factory Constructor

`Factort Constructor` : Factory constructors provide the flexibility to return instances of subclasses instead of the class itself.

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
