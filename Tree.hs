{-
-- EPITECH PROJECT, 2024
-- ppool3
-- File description:
-- Tree
-}

import Data.List (sort)

data Tree a = Empty | Node (Tree a) a (Tree a)
    deriving (Show)

addInTree :: Ord a => a -> Tree a -> Tree a
addInTree value Empty = Node Empty value Empty
addInTree value (Node left root right)
    | value < root = Node (addInTree value left) root right
    | otherwise = Node left root (addInTree value right)

instance Functor Tree where
    fmap _ Empty = Empty
    fmap f (Node left root right) = Node (fmap f left) (f root) (fmap f right)

listToTree :: Ord a => [a] -> Tree a
listToTree = foldr addInTree Empty

treeToList :: Tree a -> [a]
treeToList Empty = []
treeToList (Node left root right) = root : treeToList left ++ treeToList right

treeSort :: Ord a => Tree a -> [a]
treeSort = sort . treeToList
