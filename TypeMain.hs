module Main where
  
    import LexGram
    import ParGram
    import AbsGram
    import TypeGram 

    import ErrM
 
    main = do
      interact chk
      putStrLn ""

    chk s = case pProgram (myLexer s) of
		Bad err -> "syntax error; " ++ err

		Ok tree -> case checkPrg tree of
			Bad err -> "type error; " ++ err
			Ok _ -> "ok"
