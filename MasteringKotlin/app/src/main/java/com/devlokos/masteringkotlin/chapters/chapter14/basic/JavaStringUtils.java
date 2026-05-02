package com.devlokos.masteringkotlin.chapters.chapter14.basic;

/**
 * Clase de utilidades Java simple — llamada desde Kotlin para demostrar interoperabilidad Kotlin/Java.
 * Kotlin puede llamar a código Java directamente; no se necesitan wrappers.
 */
public final class JavaStringUtils {

    private JavaStringUtils() {}

    /** Devuelve el string en mayúsculas (implementación Java). */
    public static String toUpperCase(String s) {
        return s != null ? s.toUpperCase() : "";
    }

    /** Devuelve el string con la primera letra en mayúscula. */
    public static String capitalize(String s) {
        if (s == null || s.isEmpty()) return s;
        return s.substring(0, 1).toUpperCase() + s.substring(1);
    }
}
