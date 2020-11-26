(define (problem Align) (:domain Mining)
(:objects
p1 - place
p2 - place
p3 - place
p4 - place
p5 - place
ev1 - event
ev2 - event
ev3 - event
ev4 - event
ev5 - event
ev6 - event
ev7 - event
ev8 - event
ev9 - event
evEND - event
)
(:init
(tracePointer ev1)
(allowed)
(token p1)
(token p1)
(token p1)
(= (total-cost) 0)
)
(:goal
(and
(not (token p1))
(not (token p2))
(not (token p3))
(not (token p4))
(token p5)
(not (token p1))
(not (token p2))
(not (token p3))
(not (token p4))
(token p5)
(not (token p1))
(not (token p2))
(not (token p3))
(not (token p4))
(token p5)
(tracePointer evEND)
))
(:metric minimize (total-cost))
)