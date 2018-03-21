(define 
    (domain dinner)
    (:requirements :strips :negative-preconditions)
    (:predicates
        (clean)
        (dinner)
        (quiet)
        (present)
        (garbage)
    )

    (:action cook
        :parameters ()
        :precondition 
            (and
                (clean)
            )
        :effect 
            (and
                (dinner)
            )
    )

    (:action wrap
        :parameters ()
        :precondition
            (and
                (quiet)
            )
        :effect 
            (and
                (present)
            )
    )

    (:action carry
        :parameters ()
        :precondition 
            (and
                (garbage)
            )
        :effect 
            (and
                (not 
                    (garbage)
                    (clean)
                )
            )
    )

    (:action dolly
        :parameters ()
        :precondition 
            (and
                (garbage)
            )
        :effect 
            (and
                (not 
                    (garbage)
                    (quiet)
                )
            )
        )
)