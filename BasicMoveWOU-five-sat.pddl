(define (problem BasicMove)

    (:domain BasicMove)
    
    (:objects l1 l2 l3 l4 l5)
    
    (:init 
        (at l1)
        (conn l1 l2) (conn l2 l3) (conn l3 l4) (conn l4 l5)
        (conn l1 l3) (conn l3 l5)
        (free l1) (free l3) (free l5)
        (not-visited l2) (not-visited l3) (not-visited l4) (not-visited l5)
    )

    (:goal (at l5))

)