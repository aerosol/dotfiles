((query
	 (pattern
		 (seq
			 "<<<<<<< HEAD"
			 (opt white_space)
			 (any_chars)
			 (opt white_space)
			 "======="
			 (opt white_space)
			 (any_chars)
			 (opt white_space)
			 ">>>>>>>"
			 )))
 (highlight
	 (face error)))
