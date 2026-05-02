//
//  AdvancedConcurrency.swift
//  MasteringSwift
//
//  Capítulo 13 — Concurrencia y asincronía.
//  Nivel AVANZADO: UserService — fetchUser, fetchUserPosts, fetchUserComments; combinar resultados.
//
//  Llamar desde la app: Task { await runAdvancedConcurrencyExamples() }
//

import Foundation

fileprivate enum UserService {
    static func fetchUser() async -> String {
        try? await Task.sleep(nanoseconds: 80_000_000)
        return "User(id=1, name=Alice)"
    }

    static func fetchUserPosts(userId: Int) async -> [String] {
        try? await Task.sleep(nanoseconds: 100_000_000)
        return ["Post 1", "Post 2"]
    }

    static func fetchUserComments(userId: Int) async -> [String] {
        try? await Task.sleep(nanoseconds: 120_000_000)
        return ["Comment A", "Comment B"]
    }
}

func runAdvancedConcurrencyExamples() async {
    print("========================================")
    print("       ASYNC USER WORKFLOW")
    print("========================================")

    let user = await UserService.fetchUser()
    print("User: \(user)")

    // --- Ejecutar posts y comments en paralelo ---
    async let posts = UserService.fetchUserPosts(userId: 1)
    async let comments = UserService.fetchUserComments(userId: 1)
    let (postsResult, commentsResult) = await (posts, comments)
    print("Posts: \(postsResult)")
    print("Comments: \(commentsResult)")
    print("----------------------------------------")
    print("Done.")
    print("========================================")
}
