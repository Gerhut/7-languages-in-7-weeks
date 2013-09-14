trait Censor {
  val replaceWords = Map(
    "Pucky" -> "Shoot",
    "Beans" -> "Darn"
  )

  def replace(str:String) = {
    replaceWords.foldLeft(str){(str, entry) => str.replaceAll(entry._1, entry._2)}
  }
}

class CensorClass() extends Censor {}

println(new CensorClass().replace("Pucky is Beans"))