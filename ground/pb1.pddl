;; problem file: para objetos, estado inicial e espeficacao do goal

(define (problem pb1)
    (:domain 
    	gripper ;;gripper.pddl
    )
  	(:objects
  		roomA roomB Ball1 Ball2 Ball3 Ball4 left right
  	)

	(:init ;; estado inicial -> como o nosso mundo comeca
		(room roomA) (room roomB)
		(ball Ball1) (ball Ball2) (ball Ball3) (ball Ball4)
		(gripper left) (gripper right) 
		(free left) (free right)  
		(atRobby roomA) ;; robo na sala A
		(at Ball1 roomA) (at Ball2 roomA) ;; bolas na sala A
		(at Ball3 roomA) (at Ball4 roomA)
	)
	(:goal ;; goal specification -> o que queremos que seja verdade
		(and
			(at Ball1 roomB)
			(at Ball2 roomB)
			(at Ball3 roomB)
			(at Ball4 roomB)
		) 
	)
)