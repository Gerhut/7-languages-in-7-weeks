def sumLength(strList: List[String]) = {
  (0 /: strList) {(sum, str) => sum + str.length}
}

println(sumLength(List("foo", "bar")))
