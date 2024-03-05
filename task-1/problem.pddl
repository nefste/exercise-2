(define (problem scheduling-problem)
  (:domain scheduling)
  (:objects
    room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
    inh1 inh2 inh3 inh4 inh5 inh6 inh7 inh8 inh9 inh10 - inhabitant
    am0800 am0815 am0830 am0845 am0900 am0915 am0930 am0945 am1000 am1015 am1030 - time
  )

  (:init
    ; Verfügbarkeit der Zeiten
    (available am0800) (available am0815) (available am0830) (available am0845)
    (available am0900) (available am0915) (available am0930) (available am0945)
    (available am1000) (available am1015) (available am1030)

    ; Jeder kann zu jedem Zeitpunkt ankommen
    (canArrive inh1 am0800) (canArrive inh1 am0815) (canArrive inh1 am0830) (canArrive inh1 am0845)
    (canArrive inh1 am0900) (canArrive inh1 am0915) (canArrive inh1 am0930) (canArrive inh1 am0945)
    (canArrive inh1 am1000) (canArrive inh1 am1015) (canArrive inh1 am1030)
    
    (canArrive inh2 am0800) (canArrive inh2 am0815) (canArrive inh2 am0830) (canArrive inh2 am0845)
    (canArrive inh2 am0900) (canArrive inh2 am0915) (canArrive inh2 am0930) (canArrive inh2 am0945)
    (canArrive inh2 am1000) (canArrive inh2 am1015) (canArrive inh2 am1030)
    
    (canArrive inh3 am0800) (canArrive inh3 am0815) (canArrive inh3 am0830) (canArrive inh3 am0845)
    (canArrive inh3 am0900) (canArrive inh3 am0915) (canArrive inh3 am0930) (canArrive inh3 am0945)
    (canArrive inh3 am1000) (canArrive inh3 am1015) (canArrive inh3 am1030)
    
    (canArrive inh4 am0800) (canArrive inh4 am0815) (canArrive inh4 am0830) (canArrive inh4 am0845)
    (canArrive inh4 am0900) (canArrive inh4 am0915) (canArrive inh4 am0930) (canArrive inh4 am0945)
    (canArrive inh4 am1000) (canArrive inh4 am1015) (canArrive inh4 am1030)
    
    (canArrive inh5 am0800) (canArrive inh5 am0815) (canArrive inh5 am0830) (canArrive inh5 am0845)
    (canArrive inh5 am0900) (canArrive inh5 am0915) (canArrive inh5 am0930) (canArrive inh5 am0945)
    (canArrive inh5 am1000) (canArrive inh5 am1015) (canArrive inh5 am1030)
    
    (canArrive inh6 am0800) (canArrive inh6 am0815) (canArrive inh6 am0830) (canArrive inh6 am0845)
    (canArrive inh6 am0900) (canArrive inh6 am0915) (canArrive inh6 am0930) (canArrive inh6 am0945)
    (canArrive inh6 am1000) (canArrive inh6 am1015) (canArrive inh6 am1030)
    
    (canArrive inh7 am0800) (canArrive inh7 am0815) (canArrive inh7 am0830) (canArrive inh7 am0845)
    (canArrive inh7 am0900) (canArrive inh7 am0915) (canArrive inh7 am0930) (canArrive inh7 am0945)
    (canArrive inh7 am1000) (canArrive inh7 am1015) (canArrive inh7 am1030)
    
    (canArrive inh8 am0800) (canArrive inh8 am0815) (canArrive inh8 am0830) (canArrive inh8 am0845)
    (canArrive inh8 am0900) (canArrive inh8 am0915) (canArrive inh8 am0930) (canArrive inh8 am0945)
    (canArrive inh8 am1000) (canArrive inh8 am1015) (canArrive inh8 am1030)
    
    (canArrive inh9 am0800) (canArrive inh9 am0815) (canArrive inh9 am0830) (canArrive inh9 am0845)
    (canArrive inh9 am0900) (canArrive inh9 am0915) (canArrive inh9 am0930) (canArrive inh9 am0945)
    (canArrive inh9 am1000) (canArrive inh9 am1015) (canArrive inh9 am1030)
    
    (canArrive inh10 am0800) (canArrive inh10 am0815) (canArrive inh10 am0830) (canArrive inh10 am0845)
    (canArrive inh10 am0900) (canArrive inh10 am0915) (canArrive inh10 am0930) (canArrive inh10 am0945)
    (canArrive inh10 am1000) (canArrive inh10 am1015) (canArrive inh10 am1030)
    
  )

  (:goal
    (and
      (inRoom inh1 room1) (inRoom inh2 room2) (inRoom inh3 room3) (inRoom inh4 room4)
      (inRoom inh5 room5) (inRoom inh6 room6) (inRoom inh7 room7) (inRoom inh8 room8)
      (inRoom inh9 room9) (inRoom inh10 room10)
    )
  )
)
