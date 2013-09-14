import scala.io.Source 

trait Censor {
  val replaceWords = Map(
    "Pucky" -> "Shoot",
    "Beans" -> "Darn"
  )

  def replace(str:String) = {
    replaceWords.foldLeft(str){(str, entry) => str.replaceAll(entry._1, entry._2)}
  }
}

class CensorFile() extends Censor {
  def replaceFile(filename:String) = {
    Source.fromFile("foo").getLines.foldLeft(new StringBuilder()) {
      (content, line) => content.append(replace(line) + "\n")
    }.toString
  }
}

println(new CensorFile().replaceFile("foo"))
