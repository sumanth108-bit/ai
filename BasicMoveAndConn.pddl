(define (domain BasicMove)

    (:requirements :strips)

    (:predicates
        (at ?l)
        (free ?l)
        (conn ?l1 ?l2)
        (not-conn ?l1 ?l2)
        (not-visited ?l1)
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and (at ?from) (conn ?from ?to))
        :effect (and (at ?to) (not (at ?from)) (not (not-visited ?to)))
    )
    
    (:action connect
        :parameters (?from ?to)
        :precondition (not-conn ?from ?to)
        :effect (conn ?from ?to)
    )
)