(define 
	(problem pb1blocks)
	(:domain dblocks)
	(:init
		(handsFree)
		(BonA)
		(ConB)
		(ontableA)
		(ontableB)
		(ontableC)
	)
	(:goal 
		(and 
			(BonC)
			(AonB)
		)
	)
)