{-
-- EPITECH PROJECT, 2024
-- ppool3
-- File description:
-- Tree
-}

data Tree a = Empty | Node (Tree a) a (Tree a)
    deriving (Show)

addInTree :: Ord a => a -> Tree a -> Tree a
addInTree value Empty = Node Empty value Empty
addInTree value (Node left root right)
    | value < root = Node (addInTree value left) root right
    | value > root = Node left root (addInTree value right)
