(defn collection-type [col]
  (if (= (type col) clojure.lang.PersistentList) :list
    (if (= (type col) clojure.lang.PersistentVector) :vector :map)
  )
)
(println (collection-type (list 1)))
(println (collection-type [1]))
(println (collection-type {1 1}))
