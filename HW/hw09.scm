;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw09testing) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; AFFAN JASIM
; The Java Shop if applicable
; Foundations in CS
; HW09 -- Automate
; 2026-09-21
; time spent: 2.7hr


;;Function that adds two inputs
(define addition
  (lambda (a b)
    (string-append "...should be " (number->string (+ a b)))
    ))

;;Function that multiplies three inputs
(define multiplication
  (lambda (x y z)
    (string-append "...should be " (number->string (* x y z)))
    ))

