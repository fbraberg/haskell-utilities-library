
{-|
    Utilities library. This library was made for personal, and now public,
    use to facilitate haskell program development. It contains quality-of-life
    functions that may be useful when developing haskell programs.

    Copyright (C) 2020  Felix Bråberg & Robin Sandblom

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-}

module Utils where


import Data.List

-----------------------------------Math-----------------------------------
-- |Calculates the median value of a list
median :: (Fractional a, Ord a) => [a] -> a
median lst | odd (length lst) = midItem1
           | otherwise        = midItem2
   where
       sortedLst = sort lst
       midItem1  = head $ take 1 $ drop (div (length sortedLst) 2) sortedLst
       midItem2  = mean $ take 2 $ drop (div (length sortedLst) 2-1) sortedLst

-- |Calculates the mean value of a list
mean :: Fractional a => [a] -> a
mean lst = sum lst / fromIntegral (length lst)

-- |Calculates the fibonacci sequence given a length
fibs :: Int -> [Int]
fibs n = map fib [1..n]

-- |Calculates the n:th fibonacci number
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- |Indentity matrix of given size
idMatrix = undefined


-----------------------------------Conversion-----------------------------------
toBinary :: Integer -> Integer
toBinary = undefined

fromBinary :: Integer -> Integer
fromBinary = undefined

toHex :: Integer -> Integer
toHex = undefined

fromHex :: Integer -> Integer
fromHex = undefined

toOcta :: Integer -> Integer
toOcta = undefined

fromOcta :: Integer -> Integer
fromOcta = undefined
