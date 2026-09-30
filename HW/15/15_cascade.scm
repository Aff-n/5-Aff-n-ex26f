;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 15_cascade) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;AFFAN JASIM
;THE JAVA SHOP
;Foundations in CS
;HW15 -- Deciding Between Multiple Options
;2026-09-28
;time spent: 0.5hr

(define >or=
  (lambda (a b)
    (or (= a b) (> a b))))

(define gradeConvCascade
  (lambda (g)
     (if (> g 100) "Error"
         (if (>or= g 90) "A"
             (if (>or= g 80) "B"
                 (if (>or= g 70) "C"
                     (if (>or= g 65) "D"
                         (if (>or= g 0) "F" "Error")
)))))))

"should be Error"
(gradeConvCascade 694)
"should be A"
(gradeConvCascade 90)
"should be B"
(gradeConvCascade 89.5)
"should be C"
(gradeConvCascade 70.5)
"should be D"
(gradeConvCascade 69.9)
"should be F"
(gradeConvCascade 51)
"should be Error"
(gradeConvCascade -1)
