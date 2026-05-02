package com.devlokos.masteringkotlin.chapters.chapter13.advanced

import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking

/**
 * Capítulo 13 — Concurrencia y Asincronía.
 * Nivel AVANZADO: UserService — fetchUser, fetchUserPosts, fetchUserComments; combinar resultados.
 */
fun main() = runBlocking {
    runAdvancedConcurrencyExamples()
}

object UserService {
    suspend fun fetchUser(): String {
        delay(80)
        return "User(id=1, name=Alice)"
    }

    suspend fun fetchUserPosts(userId: Int): List<String> {
        delay(100)
        return listOf("Post 1", "Post 2")
    }

    suspend fun fetchUserComments(userId: Int): List<String> {
        delay(120)
        return listOf("Comment A", "Comment B")
    }
}

suspend fun runAdvancedConcurrencyExamples() = coroutineScope {
    println("========================================")
    println("       ASYNC USER WORKFLOW")
    println("========================================")

    // --- Ejecutar fetchUser y usar el resultado ---
    val user = UserService.fetchUser()
    println("User: $user")

    // --- Ejecutar posts y comments en paralelo, luego combinar ---
    val postsDef = async { UserService.fetchUserPosts(1) }
    val commentsDef = async { UserService.fetchUserComments(1) }
    val (posts, comments) = awaitAll(postsDef, commentsDef)
    println("Posts: $posts")
    println("Comments: $comments")
    println("----------------------------------------")
    println("Done.")
    println("========================================")
}
