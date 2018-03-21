(define 
    (problem galaxy_pb1)
    (:domain galaxy)
    (:objects tiefigher - spaceship)
    (:init
        (republic)
    )
    (:goal 
        (and
            (destroyedDeathStar)
        )
    )
)