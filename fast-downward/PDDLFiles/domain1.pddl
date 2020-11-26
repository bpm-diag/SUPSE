(define (domain Mining)
(:requirements :typing :equality)
(:types place event)

(:predicates
(token ?p - place)
(tracePointer ?e - event)
(allowed)
)

(:functions
(total-cost)
)

(:action moveInTheModel#clickcopia
:precondition (token p2)
:effect (and (not (allowed)) (not (token p2)) (token p3) (increase (total-cost) 1)
)
)

(:action moveInTheModel#tastodestro
:precondition (token p3)
:effect (and (not (allowed)) (not (token p3)) (token p4) (increase (total-cost) 1)
)
)

(:action moveInTheModel#clickincolla
:precondition (token p4)
:effect (and (not (allowed)) (not (token p4)) (token p5) (increase (total-cost) 1)
)
)

(:action moveInTheModel#tastodestro
:precondition (token p1)
:effect (and (not (allowed)) (not (token p1)) (token p2) (increase (total-cost) 1)
)
)

(:action moveInTheLog#typegoogle#ev1-ev2
:precondition (and (tracePointer ev1) (allowed))
:effect (and (not (tracePointer ev1)) (tracePointer ev2) (increase (total-cost) 1)
))

(:action moveInTheLog#clickgoogle#ev2-ev3
:precondition (and (tracePointer ev2) (allowed))
:effect (and (not (tracePointer ev2)) (tracePointer ev3) (increase (total-cost) 1)
))

(:action moveInTheLog#doubleclick#ev3-ev4
:precondition (and (tracePointer ev3) (allowed))
:effect (and (not (tracePointer ev3)) (tracePointer ev4) (increase (total-cost) 1)
))

(:action moveInTheLog#typegoogle#ev4-ev5
:precondition (and (tracePointer ev4) (allowed))
:effect (and (not (tracePointer ev4)) (tracePointer ev5) (increase (total-cost) 1)
))

(:action moveInTheLog#clickgoogle#ev5-ev6
:precondition (and (tracePointer ev5) (allowed))
:effect (and (not (tracePointer ev5)) (tracePointer ev6) (increase (total-cost) 1)
))

(:action moveInTheLog#typegoogle#ev6-ev7
:precondition (and (tracePointer ev6) (allowed))
:effect (and (not (tracePointer ev6)) (tracePointer ev7) (increase (total-cost) 1)
))

(:action moveInTheLog#clickgoogle#ev7-ev8
:precondition (and (tracePointer ev7) (allowed))
:effect (and (not (tracePointer ev7)) (tracePointer ev8) (increase (total-cost) 1)
))

(:action moveInTheLog#typegoogle#ev8-ev9
:precondition (and (tracePointer ev8) (allowed))
:effect (and (not (tracePointer ev8)) (tracePointer ev9) (increase (total-cost) 1)
))

(:action moveInTheLog#clickgoogle#ev9-evEND
:precondition (and (tracePointer ev9) (allowed))
:effect (and (not (tracePointer ev9)) (tracePointer evEND) (increase (total-cost) 1)
))

)