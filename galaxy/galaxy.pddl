(define 
    (domain galaxy) 
    (:requirements :strips :negative-preconditions :typing)
    (:types spaceship lightsaber jedi sith)

    (:predicates
        (republic)
        (order66)
        (empire)
        (darthVader)
        (deathStar)
        (hope)
        (rogueOne)
        (hasSecretData)
        (rescuedPrincess)
        (interpretedSecretData)
        (rebelAlliance)
        (destroyedDeathStar)

        (x-wing)
    )
    (:action order66
        :parameters ()
        :precondition 
            (and
                (republic)
                (not (order66))
            )
        :effect 
            (and
                (order66)
                (empire)
                (darthVader)
                (not(republic))
            )
    )

    (:action buildDeathStar
        :parameters ()
        :precondition 
            (and
                (darthVader)
                (not (deathStar))
            )
        :effect 
            (and
                (deathStar)
            )
    )

    (:action rebelion
        :parameters ()
        :precondition 
            (and
                (not(hope))
            )
        :effect 
            (and
                (hope)
            )
    )

    (:action organizeSquad
        :parameters ()
        :precondition 
            (and
                (hope)
                (not(rogueOne))
            )
        :effect 
            (and
                (rogueOne)
            )
    )
    
    (:action getSecretTape
        :parameters ()
        :precondition 
            (and
                (hope)
                (rogueOne)
                (not(hasSecretData))
            )
        :effect 
            (and
                (hasSecretData)
                (not(rogueOne))
            )
    )

    (:action readSecretData
        :parameters()
        :precondition
            (and
                (hasSecretData)
                (rescuedPrincess)
            )
        :effect
            (and
                (interpretedSecretData)
            )
    )

    (:action rescuePrincess
        :parameters()
        :precondition
            (and
                (empire)
                (darthVader)
                (deathStar)
                (not(rescuedPrincess))
            )
        :effect
            (and
                (rescuedPrincess)
            )
    )

    (:action formRebelAlliance
        :parameters()
        :precondition
            (and
                (empire)
                (not(rebelAlliance))
            )
        :effect
            (and
                (rebelAlliance)
            )
    )

    (:action attack
        :parameters()
        :precondition
            (and
                (empire)
                (rebelAlliance)
                (deathStar)
                (interpretedSecretData)
            )
        :effect
            (and
                (destroyedDeathStar)
                (not(deathStar))
            )
    )

    (:action useForce
        :parameters (?j2 ?j1 - jedi)
        :precondition
            (and
                (empire)
                (empire)
                (rebelAlliance)
                (deathStar)
                (interpretedSecretData)
            )
        :effect
            (and
                (destroyedDeathStar)
                (not(deathStar))
            )
    )
)
