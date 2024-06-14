{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Redundant bracket" #-}


sayHi :: String -> Integer-> IO()
sayHi name age = putStrLn ("TWEAKFENTCART " ++ name ++ show age)

cube :: Integer -> Integer
cube num1= num1 * num1 * num1  

sayDerp :: String -> String
sayDerp derp = "Derp" ++ derp

travelWork :: String -> IO() 
travelWork weather = do 
    if weather == "sunny"
        then putStrLn "finna wok"
        else putStrLn "yop yop"

cores :: [Int]
cores = [23, 23, 23]

data Student = Student{ 
    name :: String,
    age :: Integer , 
    major :: String , 
    gpa :: Double 
}deriving Show

printTo100 :: Int -> IO ()
printTo100 num = do 
    if num <= 100
    then do
        print num
        printTo100 (num+1) 
    else putStrLn "completed"

students :: [String]
students = ["yop", "super", "hello ya"]

printArr :: Int -> IO () 
printArr num = do
    if num <= 2
        then do
        putStrLn (students !! num)
        printArr (num+1)
    else
        putStrLn "completd ya "


runGame :: Integer -> IO ()
runGame count = do
    let sNum = "34"
    putStrLn "Enter guess 1 - 10"
    userIN <- getLine
    
    if userIN /= sNum 
        then do
            if(count > 2)
                then putStrLn "kys"
            else do 
                runGame (count+1)
    else putStrLn "CONGRATS"  

double :: Int -> Int
double x = x * 2 

super :: [Int]
super = [1, 2, 3, 4 ,5 ,6 ,7 ]



main :: IO()     
main = do
    runGame 1 
    print(map double super )