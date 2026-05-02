package com.devlokos.masteringkotlin.chapters.chapter14.intermediate;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Utilidad Java para formatear fechas — usada por Kotlin para demostrar interop.
 * Las APIs de plataforma/Java se llaman desde Kotlin a través de estas utilidades.
 */
public final class JavaDateFormatter {

    private JavaDateFormatter() {}

    /** Formatea la fecha dada como yyyy-MM-dd. */
    public static String formatDate(long timestamp) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        return sdf.format(new Date(timestamp));
    }

    /** Devuelve la hora actual formateada. */
    public static String formatNow() {
        return formatDate(System.currentTimeMillis());
    }
}
