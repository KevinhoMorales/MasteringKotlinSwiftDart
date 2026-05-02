//
//  BasicInteroperability.swift
//  MasteringSwift
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel BÁSICO: Código Swift compatible con Objective-C (@objc).
//
//  Los métodos marcados con @objc pueden llamarse desde Objective-C cuando este código
//  se expone mediante un bridging header o target mixto. Aquí los llamamos desde Swift.
//

import Foundation

/// Clase Swift expuesta a Objective-C: @objcMembers hace visibles todos los miembros a Obj-C.
@objcMembers
public final class ObjCCompatibleStringUtils: NSObject {

    /// Llamable desde Swift (o desde Obj-C como [ObjCCompatibleStringUtils toUpperCase:@"hello"]).
    public static func toUpperCase(_ s: String) -> String {
        return s.uppercased()
    }

    public static func capitalize(_ s: String) -> String {
        guard !s.isEmpty else { return s }
        return s.prefix(1).uppercased() + s.dropFirst().lowercased()
    }
}

func runBasicInteroperabilityExamples() {
    // --- Swift usando la utilidad compatible con Obj-C (la misma API se usaría desde Obj-C) ---
    let upper = ObjCCompatibleStringUtils.toUpperCase("hello")
    print("ObjCCompatibleStringUtils.toUpperCase(\"hello\") = \(upper)")

    let cap = ObjCCompatibleStringUtils.capitalize("world")
    print("ObjCCompatibleStringUtils.capitalize(\"world\") = \(cap)")
}
