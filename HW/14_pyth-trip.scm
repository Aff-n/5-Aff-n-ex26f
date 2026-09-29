;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 14_pyth-trip) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;AFFAN JASIM
;THE JAVA SHOP
;Foundations in CS
;HW14 -- Some Triples Are More Equal Than Others
;2026-09-17
;time spent 0.5hr

(define isPythTriple
  (lambda (a b c)
    (or
     (if (= (+ (expt a 2) (expt b 2)) (expt c 2))
         #t #f)
     (if (= (+ (expt c 2) (expt b 2)) (expt a 2))
         #t #f)
     (if (= (+ (expt a 2) (expt c 2)) (expt b 2))
         #t #f)
     )))

;Test
(isPythTriple 3 4 5)
"should be true"
(isPythTriple 3 2 5)
"should be false"

(isPythTriple 4 3 5)
"should be true"
(isPythTriple 5 3 4)
"should be true"