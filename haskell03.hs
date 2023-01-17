add10toall :: [Int] -> [Int]
add10toall list = map (\x -> x + 10) list

multN :: Int -> [Int] -> [Int]
multN n list = [x * n | x <- list]

multN' :: Int -> [Int] -> [Int]
multN' n list = map (\x -> x * n) list

applyExpr :: [Int] -> [Int]
applyExpr list = [3 * x + 2 | x <- list]

applyExpr' :: [Int] -> [Int]
applyExpr' list = map (\x -> 3 * x + 2) list

addSuffix :: String -> [String] -> [String]
addSuffix suffix list = [s ++ suffix | s <- list]

selectgt5 :: [Int] -> [Int]
selectgt5 list = [x | x <- list, x > 5]

sumOdds :: [Int] -> Int
sumOdds list = sum [x | x <- list, odd x]

sumOdds' :: [Int] -> Int
sumOdds' list = sum (filter odd list)

selectExpr :: [Int] -> [Int]
selectExpr list = [x | x <- list, odd x, x > 20, x < 50]

-- countShorts :: [String] -> Int
-- countShorts list = [if length list > 5]

calcExpr :: [Float] -> [Float]
calcExpr list = filter (>10) [(x^2)/2 | x <- list]

space :: Char -> Char
space c = '-'

trSpaces :: String -> String
trSpaces s = [if x == ' ' then space x else x | x <- s]

selectSnd :: [(Int,Int)] -> [Int]
selectSnd list = [x | (_,x) <- list]

-- Apenas consegui pesquisando e sem list comprehension
dotProd :: [Int] -> [Int] -> Int
dotProd list1 list2 = sum $ zipWith (*) list1 list2

main = do
  putStrLn "haskell03"
