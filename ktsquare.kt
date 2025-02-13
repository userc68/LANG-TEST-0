import java.util.Scanner

fun main() {
  val scan = Scanner(System.`in`)

  print("Height: ")
  val height = scan.nextInt()

  print("Width: ")
  val width = scan.nextInt()

  for (i in 0 until height) {
    for (j in 0 until width) {
      print("#")
    }
    println()
  }
}