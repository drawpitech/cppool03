{-
-- EPITECH PROJECT, 2024
-- ppool3
-- File description:
-- Game
-}

data Item = Sword | Bow | MagicWand
    deriving (Eq)

instance Show Item where
    show Sword = "sword"
    show Bow = "bow"
    show MagicWand = "magic wand"

data Mob = Mummy | Sketeleton Item | Witch (Maybe Item)
    deriving (Eq, Show)
