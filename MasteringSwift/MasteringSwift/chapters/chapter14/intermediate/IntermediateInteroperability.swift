//
//  IntermediateInteroperability.swift
//  MasteringSwift
//
//  Capítulo 14 — Interoperabilidad.
//  Nivel INTERMEDIO: Función Swift marcada @objc para integración con la plataforma.
//
//  @objc expone código Swift al runtime de Objective-C; se usa al integrar
//  con UIKit/AppKit o código legacy en Obj-C.
//

import Foundation

/// Utilidad de formateo de fechas — marcada @objc para poder llamarse desde Objective-C.
@objcMembers
public final class ObjCDateFormatter: NSObject {

    public static func formatDate(timestamp: TimeInterval) -> String {
        let date = Date(timeIntervalSince1970: timestamp)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter.string(from: date)
    }

    public static func formatNow() -> String {
        return formatDate(timestamp: Date().timeIntervalSince1970)
    }
}

func runIntermediateInteroperabilityExamples() {
    // --- Swift llamando al formateador expuesto con @objc (patrón de integración de plataforma) ---
    let now = ObjCDateFormatter.formatNow()
    print("ObjCDateFormatter.formatNow() = \(now)")

    let formatted = ObjCDateFormatter.formatDate(timestamp: 0)
    print("ObjCDateFormatter.formatDate(0) = \(formatted)")
}
