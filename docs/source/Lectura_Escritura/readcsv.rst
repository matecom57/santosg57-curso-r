Leer archivos de texto de Disco
===============================

Funciones para leer archivos de disco de algun  formato:

.. code:: R
   
   [1] "read.csv"
   read.table                package:utils                R Documentation

   Data Input

   Description:

     Reads a file in table format and creates a data frame from it,
     with cases corresponding to lines and variables to fields in the
     file.

   Usage:

     read.table(file, header = FALSE, sep = "", quote = "\"'",
                dec = ".", numerals = c("allow.loss", "warn.loss", "no.loss"),
                row.names, col.names, as.is = !stringsAsFactors,
                na.strings = "NA", colClasses = NA, nrows = -1,
                skip = 0, check.names = TRUE, fill = !blank.lines.skip,
                strip.white = FALSE, blank.lines.skip = TRUE,
                comment.char = "#",
                allowEscapes = FALSE, flush = FALSE,
                stringsAsFactors = FALSE,
                fileEncoding = "", encoding = "unknown", text, skipNul = FALSE)
     
     read.csv(file, header = TRUE, sep = ",", quote = "\"",
              dec = ".", fill = TRUE, comment.char = "", ...)
     
     read.csv2(file, header = TRUE, sep = ";", quote = "\"",
               dec = ",", fill = TRUE, comment.char = "", ...)
     
     read.delim(file, header = TRUE, sep = "\t", quote = "\"",
                dec = ".", fill = TRUE, comment.char = "", ...)
     
     read.delim2(file, header = TRUE, sep = "\t", quote = "\"",
                 dec = ",", fill = TRUE, comment.char = "", ...)
     
