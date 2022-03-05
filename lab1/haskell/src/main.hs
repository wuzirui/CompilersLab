import Data.Char (digitToInt)

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = []
merge list [] = list
merge [] list = list
merge (x : xtail) (y : ytail)
    | x < y = x : (merge xtail (y : ytail))
    | otherwise = y : (merge (x : xtail) ytail)

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []
mergeSort [a] = [a]
mergeSort list = merge (mergeSort l) (mergeSort r)
    where (l, r) = splitAt (div (length list) 2) list


readIntArray :: String -> [Int]
readIntArray xs = map func (lines xs)
    where func str = read str :: Int

{-
main = do
    input <- (readFile "in.in")
    putStrLn "ReadOK"
    let {ret = mergeSort (readIntArray input) } in 
        do
            putStrLn ("Merge OK" ++ show(length ret))
            writeFile "out.out" (show (length ret))

 -}
