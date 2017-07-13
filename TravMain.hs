module Main where
  
    import LexGram
    import ParGram
    import AbsGram
    import TravGram 

    import ErrM
 
    main = do
      interact calc
      putStrLn ""

    calc s = 
      let Ok e = pProgram (myLexer s) 
      in transProgram e
