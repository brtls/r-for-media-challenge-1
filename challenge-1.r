# Bartels_Challange_1 

library(assertthat)

# Complete the following statements following the the assignment below:
# * Namen der sieben Hamburger Bezirke (Nicht Stadtteile!)
# * Einwohner
# * Bevölkerungsdichte in km2
# * Nachname Bezirkamtsleiter
# * Mehr als 100km2 Fläche (TRUE oder FALSE)
#
# **Beantworte darüber hinaus folgende Fragen und nutze dafür dein neues R-Wissen:**
#
#   * Wie viele Menschen leben insgesamt in den Stadtteilen?
#   * Wie hoch ist die Bevökerungsdichte im Durchschnitt?

# hamburg_df <- …
# inhabitants_sum <- …
# density <- …

# Erstellung der Vektoren
bezirk <- c("Wandsbek", "Hamburg-Nord", "Hamburg-Mitte", "Altona", "Eimsbüttel", "Harburg", "Bergedorf")
einwohner <- c(441012, 314593, 301543, 275264, 267051, 169426, 130260)
bevoelkerungsdichte <- c(2990, 5443, 2121, 3534, 5362, 1353, 841)
bezirksamtsleiter <- c("Ritzenhoff", "Boelz", "Droßmann", "von Berg", "Gätgens", "Fredenhagen", "Dornquast")
flaeche <- c(TRUE, FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)

# Erstellung des Data-Frames
hamburg_df <- data.frame(bezirk, einwohner, bevoelkerungsdichte, bezirksamtsleiter, flaeche)

# groeße der Gesamtbevoelkerung berechnen 
inhabitants_sum <- sum(einwohner)

# durchschnittliche Bevoelkerungsdichte berechnen 
density <- mean(bevoelkerungsdichte)

if(
  assert_that(
    has_name(hamburg_df, "bezirk"),
    msg = "Die Spalte 'bezirk' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "einwohner"),
    msg = "Die Spalte 'einwohner' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bevoelkerungsdichte"),
    msg = "Die Spalte 'bevoelkerungsdichte' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "bezirksamtsleiter"),
    msg = "Die Spalte 'bezirksamtsleiter' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_df, "flaeche"),
    msg = "Die Spalte 'flaeche' fehlt"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirk),
    msg = "Die Spalte 'bezirk' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.character(hamburg_df$bezirksamtsleiter),
    msg = "Die Spalte 'bezirksamtsleiter' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.logical(hamburg_df$flaeche),
    msg = "Die Spalte 'flaeche' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$einwohner),
    msg = "Die Spalte 'einwohner' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    is.numeric(hamburg_df$bevoelkerungsdichte),
    msg = "Die Spalte 'bevoelkerungsdichte' ist vom flaschen Datentyp"
  ) &&
  assert_that(
    inhabitants_sum == 1899149,
    msg = "Die Summe der Einwohner is nicht richtig"
  ) &&
  assert_that(
    density == 3092,
    msg = "Die durchschnittliche Bevölkerungsdichte ist falsch"
  )
) {
  writeLines("Congrats! 10/10 points!")
}


