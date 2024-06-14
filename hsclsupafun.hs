
--FUNCTION NESTING, LIST COMPRHENSION, && TUPPLES 


doubleMe x = x +x 
superlist = [1, 2, 3, 4, 30, 39 , 2, 3] 
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]  
length' xs = sum [1 | _ <- xs]  
awesomeTuple = (zip [1..] superlist)
math = fromIntegral (length [1,2,3,4]) + 3.2

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

inc x = x+1 
supa = map inc [1.. 10]

--add (x, y) = x+y 
--add x = \y -> x+y
add = \x -> (\y -> x+y) 
tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

quicksort :: (Ord a) => [a] -> [a] --takes in a order type and it has to be a list and returns a list back 
quicksort [] = []  -- edging condition 
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted 

flip :: (a -> b -> c) -> b -> a -> c 
flip f = \x y -> f y x
hvac = sum (takeWhile (<10000) [n^2 | n <- [1..], odd (n^2)]) 
-- this is just like a math equation...

--triangle fun 
{- let triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10] ]  

let rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

let rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24]  -}
 
main :: IO ()
main = do
    print(doubleMe 2)
    print (boomBangs [7.. 13])
    print[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  
    -- one list is asigned x one list is assigned y and when they are output
    -- they are multiplied against eachother , with a predicate saying it has
    -- to be less then 50 (if the result is less then 50)
    print(length superlist);
    print(zip superlist [7..13])
    print(factorial 4)
            


