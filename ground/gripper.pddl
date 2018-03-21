;; para rodar basta abrir o diretorio no terminal:

;; ~/Jonathan-T3-2014-2/Planning_PDDL/ 
;; digitar: java -jar javagp.jar -d pddl_files/grid.pddl -p pddl_files/pb1.pddl
;; digitar: java -jar javagp.jar -d pddl_files/grid.pddl -p pddl_files/pb2.pddl
;; digitar: java -jar javagp.jar -d pddl_files/grid.pddl -p pddl_files/pb3.pddl
;; digitar: java -jar javagp.jar -d pddl_files/grid.pddl -p pddl_files/pb4.pddl

;; domain file: predicados e acoes

(define (domain gripper) ;; griper -> domain name
(:requirements :strips)

	(:predicates ;; propriedades dos objetos->true/false
		(room ?r) ;; true se r eh uma room
		(ball ?b) ;; true se b eh uma ball
		(gripper ?g) ;; true se g eh um gripper -> robot arm
		(atRobby ?r) ;; true se eh uma sala com um robo dentro
		(at ?b ?r) ;; true se b eh uma bola e r eh uma sala e b estah em r
		(free ?g) ;; true se g eh um gripper e g nao segura a bola
		(carry ?b ?g)
	) ;; true se b eh uma bola e g um gripper e g segura b
		
	;; actions and operators -> meios para mudar o estado do mundo
	(:action move 
		:parameters  (?from ?to)
		:precondition 
			(and 
				(room ?from) (room ?to) (atRobby ?from)
			)
		:effect 
			(and
				(atRobby ?to) (not (atRobby ?from))
			)
	)
		
	(:action pick 
		:parameters 
			(?obj ?room ?gripper) ;; o robo pode segurar obj com gripper estando em room
		:precondition 
			(and
				(ball ?obj)
				(room ?room)
				(gripper ?gripper)
				(at ?obj ?room)
				(atRobby ?room)
				(free ?gripper)
			)
		:effect ;; carry vira true se at(ball,room) eh true e se free(gripper) at(ball,room) sao falsos
			(and 
				(carry ?obj ?gripper) 
				(not (at ?obj ?room)) 
				(not (free ?gripper))
			)
	)
 
	(:action drop
		:parameters
			(?obj  ?room ?gripper)
		:precondition
			(and
				(ball ?obj)
				(room ?room)
				(gripper ?gripper)
				(carry ?obj ?gripper)
				(atRobby ?room)
			)
	:effect 
		(and 
			(at ?obj ?room)
			(free ?gripper)
			(not (carry ?obj ?gripper))
		)
	)
)