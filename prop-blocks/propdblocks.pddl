(define 
    (domain dblocks)
    (:requirements :strips :negative-preconditions)
    (:predicates
        (handsFree)
        (holdingA)
        (holdingB)
        (holdingC)
        (ontableA)
        (ontableB)
        (ontableC)
        (AonB)
        (AonC)
        (BonA)
        (BonC)
        (ConA)
        (ConB)
    )
    
    (:action pickA
        :parameters ()
        :precondition 
            (and
                (ontableA)
                (handsFree)
                (not (BonA))
                (not (ConA))
                (not(holdingA))
            )
        :effect 
            (and
                (holdingA)
                (not(ontableA))
                (not(AonB))
                (not(AonC))
                (not(handsFree))
            )
    )

    (:action pickB
        :parameters ()
        :precondition 
            (and
                (ontableB)
                (handsFree)
                (not (AonB))
                (not (ConB))
                (not(holdingB))
            )
        :effect 
            (and
                (holdingB)
                (not(ontableB))
                (not(BonA))
                (not(BonC))
                (not(handsFree))
            )
    )

    (:action pickC
        :parameters ()
        :precondition 
            (and
                (ontableC)
                (handsFree)
                (not (BonC))
                (not (AonC))
                (not(holdingC))
            )
        :effect 
            (and
                (holdingC)
                (not(ontableC))
                (not(ConA))
                (not(ConB))
                (not(handsFree))
            )
    )

    (:action putDownA
        :parameters ()
        :precondition 
            (and
                (holdingA)
            )
        :effect 
            (and
                (ontableA)
                (handsFree)
                (not(holdingA))
            )
    )

    (:action putDownB
        :parameters ()
        :precondition 
            (and
                (holdingB)
            )
        :effect 
            (and
                (ontableB)
                (handsFree)
                (not(holdingB))
            )
    )

    (:action putDownC
        :parameters ()
        :precondition 
            (and
                (holdingC)
            )
        :effect 
            (and
                (ontableC)
                (handsFree)
                (not(holdingC))
            )
    )

    (:action stackAonB
        :parameters ()
        :precondition 
            (and
                (holdingA)
                (ontableB)
                (not(ConB))
                (not(AonB))
                (not(ontableA))
            )
        :effect 
            (and
                (ontableA)
                (handsFree)
                (AonB)
                (not(holdingA))
            )
    )

    (:action stackAonC
        :parameters ()
        :precondition 
            (and
                (holdingA)
                (ontableC)
                (not(BonC))
                (not(AonC))
                (not(ontableA))
            )
        :effect 
            (and
                (ontableA)
                (handsFree)
                (AonC)
                (not(holdingA))
            )
    )

    (:action stackBonA
        :parameters ()
        :precondition 
            (and
                (holdingB)
                (ontableA)
                (not(ConA))
                (not(BonA))
                (not(ontableB))
            )
        :effect 
            (and
                (ontableB)
                (handsFree)
                (BonA)
                (not(holdingB))
            )
    )

    (:action stackBonC
        :parameters ()
        :precondition 
            (and
                (holdingB)
                (ontableC)
                (not(BonC))
                (not(AonC))
                (not(ontableB))
            )
        :effect 
            (and
                (ontableB)
                (handsFree)
                (BonC)
                (not(holdingB))
            )
    )


    (:action stackConA
        :parameters ()
        :precondition 
            (and
                (holdingC)
                (ontableA)
                (not(ConA))
                (not(ConB))
                (not(ontableC))
            )
        :effect 
            (and
                (ontableC)
                (handsFree)
                (ConA)
                (not(holdingC))
            )
    )

    (:action stackConB
        :parameters ()
        :precondition 
            (and
                (holdingC)
                (ontableB)
                (not(ConB))
                (not(AonB))
                (not(ontableC))
            )
        :effect 
            (and
                (ontableC)
                (handsFree)
                (ConB)
                (not(holdingC))
            )
    )
)