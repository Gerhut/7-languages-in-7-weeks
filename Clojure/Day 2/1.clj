(defmacro unless [cond, iffalse, iftrue]
  (list 'if(list 'not cond) iffalse iftrue))

(unless (< 1 3) (println "false") (println "true"))

