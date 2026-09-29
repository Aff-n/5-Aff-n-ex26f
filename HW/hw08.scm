;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname hw08) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; AFFAN JASIM
; THE JAVA SHOP
; Foundations in CS
; HW08 -- Saving for Posterity
; 2026-09-17
; time spent: 0.6hr

;;Five Defined Expressions

(define a (+ 3 5))
;should be ... 8
(define b (* 3 (+ 3 7)))
;should be ... 30
(define c (* (/ 3 5) (- 10 (+ 3 2))))
;should be ... 3
(define d (/ (* 6 231)(* 9 77)))
;should be ... 2
(define i (expt 6 5)) ;I used 'i' because 'e' wouldn't work
;should be ... 7776

;;Three Expressions

(* (+ a b) (- a c))
;should be ... 190
(/ (* i d) (+ b c))
;should be ... 5184/11
(/ (expt a c) (/ i (* d b)))
;should be ... 320/81
