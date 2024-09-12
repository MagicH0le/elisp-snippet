(defun remove-lowest (lst)
  (cdr (sort lst #'<)))

(defun dice-roll ()
  (+ 1 (random (- 6 1 -1))))

(defun modifier (score)
  (floor (/ (- (* 1.0 score) 10) 2)))

(defun ability ()
  (apply #'+ (remove-lowest (list (dice-roll) (dice-roll) (dice-roll) (dice-roll)))))

(defun generate-dnd-character ()
  (let* ((strength (ability))
	 (dexterity (ability))
	 (constitution (ability))
	 (intelligence (ability))
	 (wisdom (ability))
	 (charisma (ability))
	 (hitpoints (+ 10 (modifier constitution))))
    (record 'dnd strength dexterity constitution intelligence wisdom charisma hitpoints)))
