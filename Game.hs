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

createMummy :: Mob
createMummy = Mummy

createArcher :: Mob
createArcher = Sketeleton Bow

createKnight :: Mob
createKnight = Sketeleton Sword

createWitch :: Mob
createWitch = Witch Nothing

createSorceress :: Mob
createSorceress = Witch (Just MagicWand)
