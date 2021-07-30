void main(List<String> arguments) {
  // Animal cat = Animal(numOfLegs: 4, numOfEyes: 2, numOfMouth: 1);

  // cat.eat();
  // cat.makeSound();
  // Animal manus = Animal(numOfLegs: 2, numOfEyes: 2, numOfMouth: 1);
  // manus.makeSound();

  LivingThings sakil = Human();  //DownCast 
  sakil.grow();

  dynamic manik = Human();
  (manik as Human).eat();

  Cat tyson = Cat();
  tyson.eat();
  tyson.makeSound();

  Dog tom = Dog();
  tom.eat();
  tom.makeSound();

  Animal odvut = Animal();
  odvut.eat();
}

mixin LivingThings {
  grow() {
    print("Growing");
  }
}

//Parent / Super class

class Animal with LivingThings{
  eat() {
    print("Eating");
  }
}

//Child/Sub classes
class Human extends Animal implements LivingThings {
  makeSound() {
    print("Talking");
  }

  @override
  grow() {
    print("Growing slowly");
  }
}

class Cat extends Animal {
  makeSound() {
    print("Meow");
  }
}

class Dog extends Animal {
  makeSound() {
    print("Barks");
  }
}
