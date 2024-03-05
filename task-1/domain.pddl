(define (domain scheduling)
  (:requirements :negative-preconditions)
  (:types time inhabitant room)
  (:predicates
    (canArrive ?i - inhabitant ?t - time)
    (isOpen ?r - room ?i - inhabitant ?t - time)
    (joined ?r - room)
    (inRoom ?i - inhabitant ?r - room)
    (available ?t - time)
  )
  (:action unlock
      :parameters (?t - time ?r - room ?i - inhabitant)
      :precondition (and
          (available ?t)
          (not (isOpen ?r ?i ?t))
          (canArrive ?i ?t)
          ;(not (inRoom ?i ?r))
		  ;(not (joined ?r))
      )
      :effect
	  (and
          (isOpen ?r ?i ?t)
      )
  )
  (:action join
      :parameters (?t - time ?r - room ?i - inhabitant)
      :precondition (and
		  (available ?t)
          (isOpen ?r ?i ?t)
          (canArrive ?i ?t)
          ;(not (inRoom ?i ?r))
		  ;(not (joined ?r))
      )
      :effect
	  (and
          (joined ?r)
      )
  )
  (:action showRoom
      :parameters (?t - time ?i - inhabitant ?r - room)
      :precondition (and
          (joined ?r)
          (isOpen ?r ?i ?t)
          (canArrive ?i ?t)
          ;(not (inRoom ?i ?r))
		  (available ?t)
      )
      :effect
	  (and
          (inRoom ?i ?r)
          (not (available ?t))
      )
  )
)
