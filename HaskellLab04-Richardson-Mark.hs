--1. make an unzip function

unzip' :: [(a,b)]->([a],[b])

unzip' xs = (unzipFst xs, unzipSnd xs)

unzipFst [] = []
unzipFst (x:xs) =[fst x]++ unzipFst xs 

unzipSnd [] = []
unzipSnd (x:xs) =[snd x] ++ unzipSnd xs

--2.a function that tells if a character is a digit or not

isDigit :: Char->Bool
isDigit x = head [True|y<-['0'..'9'],x==y]

--3.a function that converts a character digit to a generic num (fromIntegral)
--toDigit :: Char->Num

--toDigit x = fromIntegral (findDigit x)

findDigit x = 