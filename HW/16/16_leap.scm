;AFFAN JASIM
;The Java Shop
;Foundations in CS
;HW12 -- Decision Tree as Development & Debugging Tool
;2026-09-29
;time spent 0.4hr

(define isLeapYr
  (lambda (y)
    (if (= (remainder y 4) 0)
        (if (= (remainder y 100) 0)
            (if (= (remainder y 400) 0)
                #t #f)
            #t)
        #f)
    ))
;Test Cases
(isLeapYr 2000) "-> true"
(isLeapYr 2004) "-> true"
(isLeapYr 2008) "-> true"
(isLeapYr 2009) "-> false"
(isLeapYr 2100) "-> false" 
(isLeapYr 2104) "-> true"
(isLeapYr 2200) "-> false"
(isLeapYr 2300) "-> false"
(isLeapYr 2400) "-> true"


(define daysInMonth
  (lambda (m y)
    (if (or (= m 1) (= m 3) (= m 5) (= m 7)
            (= m 8) (= m 10) (= m 12))
        "31"
        (if (or (= m 4) (= m 6)
                (= m 9) (= m 11))
            "30"
            (if (isLeapYr y)
                "29"
                "28")
            ))))
;Test Cases
(daysInMonth 1 2010) "-> 31"
(daysInMonth 2 2011) "-> 28"
(daysInMonth 2 2000) "-> 29"
(daysInMonth 4 2011) "-> 30"





          
