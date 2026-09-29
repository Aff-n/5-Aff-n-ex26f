;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 12_calc_fns) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; AFFAN JASIM
; THE JAVA SHOP
; Foundations in CS
; HW12 -- CRUNCHING NUMBERS
; 2026-23-09
; time spent: 1hr

;First Function: ArithMean3
;; Takes numeric inputs a, b, c,
;; and returns their arithmetic mean

; FN Definition
(define ArithMean3
  (lambda (a b c)
    (/ (+ a b c ) 3 )))

;;Test
(ArithMean3 0 0 0) ; should be 0
(ArithMean3 1 2 3) ; should be 2
(ArithMean3 5 -10 20) ;should be 5


;Second Function: HarMean3
;;  Takes numeric inputs a, b, c
;;  and returns their harmonic mean

;FN Definition
(define HarMean3
  (lambda (a b c)
  (/ 1
   (/ (+ (/ 1 a) (/ 1 b) (/ 1 c)) 3)
   )))

;;Test
(HarMean3 5 5 5) ; should be 5
(HarMean3 3 6 18) ; should be 5.4
(HarMean3 5 -10 20) ; should be 20


;Third Function: CartDist
;;  Takes numeric inputs, X1, Y1, X2, Y2
;;  representing coordinate pairs (x1, y1)
;;  and x2, y2) and returns the distance
;;  betweeen the two points

;FN Definition
 (define CartDist
   (lambda (x1 y1 x2 y2)
     (sqrt
           (+ (expt (- x2 x1) 2) (expt (- y2 y1) 2)
              ))))
;;Test
(CartDist 0 0 0 0) ; should be 0
(CartDist 4 4 4 4) ; should be 0
(CartDist 0 0 3 -4) ; should be 5

;Challenge Function: MAX2
;;  Takes numeric inputs, a, b
;;  and returns the greater of the two

;FN Definition
(define MAX2
  (lambda (a b)
     (/(+
      (abs (+ a b))
      (abs (- a b))
      ) 2)
       ))
;Test
(MAX2 4 7)
(MAX2 7 4)
(MAX2  9 8)
(MAX2 4 4)
(MAX2 69 -2)