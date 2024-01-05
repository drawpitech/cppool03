{-
-- EPITECH PROJECT, 2024
-- ppool3
-- File description:
-- Tree
-}

data Tree a = Empty | Node (Tree a) a (Tree a)
    deriving (Show)
