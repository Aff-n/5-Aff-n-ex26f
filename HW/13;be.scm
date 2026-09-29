;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |13;be|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;AFFAN JASIM
;THE JAVA SHOP
;Foundations in CS
;HW13 -- True|False
;2026-09-24
;time spent: 1hr

;First FN: XOR
(define XOR
  (lambda (a b)
    (or
     (and a (not b)) (and (not a) b)
     )))
;Test
(XOR #t #t) ;-> #f
(XOR #t #f) ;-> #t
(XOR #f #t) ;-> #t
(XOR #f #f) ;-> #f


;Second FN: bic
(define bic
  (lambda (a b)
    (or
     (and a b) (and (not a) (not b))
     )))
;Test
(bic #t #t)
(bic #f #t)
(bic #t #f)
(bic #f #f)

;Third FN: XOR3
(define XOR3
  (lambda (a b c)
    (or
     ;all negated
     (and (not a) (not b) (not c)) ;may need to be removed
     ;two negated
     (and a (not b) (not c))
     (and (not a) b (not c))
     (and (not a) (not b) c)
    )))
;Test
(XOR3 #t #t #t) ;-> #f
(XOR3 #t #t #f) ;-> #f
(XOR3 #t #f #t) ;-> #f
(XOR3 #t #f #f) ;-> #t
(XOR3 #f #t #t) ;-> #f
(XOR3 #f #t #f) ;-> #t
(XOR3 #f #f #t) ;-> #t
(XOR3 #f #f #f) ;-> #t

;Fourth FN: NAND
;; Takes Boolean inputs a, b and returns
;; true if at least one input is false
(define NAND
  (lambda (a b)
    (or (not a) (not b))
        ))
;Test
(NAND #f #f) ;-> #t
(NAND #f #t) ;-> #t
(NAND #t #f) ;-> #t
(NAND #t #t) ;-> #f