import scala.io.StdIn.readLine

object App {
  val startString: String = "Hello Scala!"

  def main(args: Array[String]): Unit = {
    println(startString) // 2. вывод фразы
    println(startString.reverse) // 3a(i). вывод фразы слева направо
    println(startString.toLowerCase()) // 3a(ii). вывод фразы в нижнем регистре
    println(startString.replace("!", "")) // 3a(iii). удаление символа "!"
    println(startString.dropRight(1)) // 3a(iii). удаление символа "!"

    println(startString.replace("!", "") + " and goodbye Python!") // 3a(iv).
    println(startString.replace("!", "").concat(" and goodbye Python!")) // 3a(iv).

    println(startString.dropRight(1) + " and goodbye Python!") // 3a(iv).
    println(startString.dropRight(1).concat(" and goodbye Python!")) // 3a(iv).


    // 3b.
    println("Введите размер годового дохода: ")
    val yearSalary = readLine().toFloat
    println("Введите размер премии (в процентах): ")
    val bonus = readLine().toFloat
    println("Введите размер компенсации питания: ")
    val eatCompensation = readLine().toFloat

    val monthSalary = (yearSalary * ((100 + bonus) / 100) + eatCompensation) * 0.87 / 12
    println("Ежемесячный оклад сотрудника: " + monthSalary)
    println()


    // 3c.
    // список окладов сотрудников отдела
    val listSalary = List(100, 150, 200, 80, 120, 75)

    // среднее значение оклада отдела
    val avgSalary = listSalary.sum / listSalary.size
    println("Среднее значение оклада отдела: " + avgSalary)

    val varianceSalary = (monthSalary / avgSalary) * 100 - 100
    println("Отклонение ежемесячного оклада сотрудника от среднего значения оклада отдела (примерно): " + varianceSalary.toInt + "%")
    println()


    // 3d.
    // Новую зарплату сотрудника рассчитаем на основе полученного отклонения:
    // прибавим или отнимем рассчитанный процент от 100%,
    // полученный процент умножим на исходный ежемесячный оклад сотрудника,
    // округлим в большую сторону.
    val newMonthSalary = (((100 + varianceSalary) / 100) * monthSalary).ceil.toInt
    var newListSalary = listSalary.appended(newMonthSalary)

    // минимальная и максимальная зарплаты
    println("Минимальная зарплата сотрудников: " + newListSalary.min)
    println("Максимальная зарплата сотрудников: " + newListSalary.max)
    println()


    // 3e.
    val newWorkersSalary = List(350, 90)
    newListSalary = newListSalary.appendedAll(newWorkersSalary).sorted
    print("Зарплаты сотрудников, отсортированные в порядке возрастания: ")
    var outputString = ""
    for (n <- newListSalary) outputString += (n + ", ")
    outputString = outputString.dropRight(2)
    println(outputString)
    println()


    // 3f.
    val newWorkerSalary = 130
    var newWorkerNumber = 0
    var flag = true
    for (n <- newListSalary) {
      if (n > newWorkerSalary && flag) {
        newWorkerNumber = newListSalary.indexOf(n)
        flag = false
      }
    }
    val (front, back) = newListSalary.splitAt(newWorkerNumber)
    newListSalary = front ++ List(newWorkerSalary) ++ back
    outputString = ""
    print("Зарплаты сотрудников вместе с новым (в порядке возрастания): ")
    for (n <- newListSalary) outputString += (n + ", ")
    outputString = outputString.dropRight(2)
    println(outputString)
    println()


    // 3g.
    println("Введите нижнюю границу зарплаты middle: ")
    val minMiddle = readLine().toFloat
    println("Введите верхнюю границу зарплаты middle: ")
    val maxMiddle = readLine().toFloat
    println("Номера сотрудников из полученного списка, которые попадают под категорию middle: ")
    for (n <- newListSalary) {
      if ((n >= minMiddle) && (n <= maxMiddle)) {
        println(f"номер: ${newListSalary.indexOf(n) + 1}, зарплата: $n")
      }
    }
    println()


    // 3h.
    // Новые зарплаты будем округлять в большую сторону до целого.
    print("Исходные зарплаты сотрудников: ")
    outputString = ""
    for (n <- newListSalary) outputString += (n + ", ")
    outputString = outputString.dropRight(2)
    println(outputString)

    val increase = (x: Float) => 1.07 * x
    val modifiedListSalary = newListSalary.map(x => increase(x))
    print("Проиндексированные на 7% зарплаты сотрудников: ")
    outputString = ""
    for (n <- modifiedListSalary) outputString += (n + ", ")
    outputString = outputString.dropRight(2)
    println(outputString)
  }
}
