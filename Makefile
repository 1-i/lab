done:
	bnfc gram.bnfc
	alex LexGram.x
	happy ParGram.y
	ghc TestGram.hs
