(defn collection-type [col]
  (if (= (type col) clojure.lang.PersistentList) :list
    (if (= (type col) clojure.lang.PersistentVector) :vector :map)
  )
)
(collection-type `(1))
(collection-type [1])
(collection-type {1 1})
