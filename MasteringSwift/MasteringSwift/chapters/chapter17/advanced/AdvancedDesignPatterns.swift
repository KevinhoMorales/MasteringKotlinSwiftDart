//
//  AdvancedDesignPatterns.swift
//  MasteringSwift
//
//  Capítulo 17 — Patrones de diseño.
//  Nivel AVANZADO: Observer — NewsPublisher notifica a los suscriptores cuando se publican artículos.
//

import Foundation

typealias Subscriber = (String) -> Void

class NewsPublisher {
    private var subscribers: [Subscriber] = []

    func subscribe(_ handler: @escaping Subscriber) {
        subscribers.append(handler)
    }

    func publish(_ article: String) {
        subscribers.forEach { $0(article) }
    }
}

func runAdvancedDesignPatternExamples() {
    print("========================================")
    print("       OBSERVER PATTERN")
    print("========================================")
    let publisher = NewsPublisher()
    publisher.subscribe { article in print("  Subscriber A: \(article)") }
    publisher.subscribe { article in print("  Subscriber B: \(article)") }
    publisher.publish("Hello World")
    publisher.publish("Breaking News")
    print("========================================")
}
