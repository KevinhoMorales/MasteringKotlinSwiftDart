//
//  BasicFunctional.swift
//  MasteringSwift
//
//  Capítulo 15 — Programación funcional.
//  Nivel BÁSICO: Funciones puras — misma entrada → misma salida; sin efectos secundarios.
//

import Foundation

/// Función pura: duplica un número.
func double(_ n: Int) -> Int { n * 2 }

/// Función pura: devuelve el cuadrado de un número.
func square(_ n: Int) -> Int { n * n }

/// Función pura: formatea una cadena con un prefijo.
func formatWithPrefix(_ s: String, prefix: String) -> String { prefix + s }

func runBasicFunctionalExamples() {
    print("double(5) = \(double(5))")
    print("square(4) = \(square(4))")
    print("formatWithPrefix(\"world\", prefix: \"Hello, \") = \(formatWithPrefix("world", prefix: "Hello, "))")
}
