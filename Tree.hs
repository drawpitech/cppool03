{-
-- EPITECH PROJECT, 2024
-- ppool3
-- File description:
-- Tree
-}

data Tree a = Empty | Node (Tree a) a (Tree a)
    deriving (Show, Functor, Foldable)

addInTree :: Ord a => a -> Tree a -> Tree a
addInTree value Empty = Node Empty value Empty
addInTree value (Node left root right)
    | value < root = Node (addInTree value left) root right
    | otherwise = Node left root (addInTree value right)

listToTree :: Ord a => [a] -> Tree a
listToTree = foldr addInTree Empty

treeToList :: Tree a -> [a]
treeToList = foldr (:) []

treeSort :: Ord a => [a] -> [a]
treeSort = treeToList . listToTree
