//
//  BasicInheritance.swift
//  MasteringSwift
//
//  Capítulo 09 — Herencia y polimorfismo.
//  Nivel BÁSICO: Animal, Dog, Cat con makeSound().
//

import Foundation

/// Clase base: Animal.
class Animal {
    let name: String
    init(name: String) { self.name = name }
    func makeSound() {
        print("\(name) makes a sound.")
    }
}

/// Dog extiende Animal, sobrescribe makeSound().
class Dog: Animal {
    override func makeSound() {
        print("\(name) says: Woof!")
    }
}

/// Cat extiende Animal, sobrescribe makeSound().
class Cat: Animal {
    override func makeSound() {
        print("\(name) says: Meow!")
    }
}

func runBasicInheritanceExamples() {
    let dog = Dog(name: "Rex")
    let cat = Cat(name: "Whiskers")
    dog.makeSound()
    cat.makeSound()
}
