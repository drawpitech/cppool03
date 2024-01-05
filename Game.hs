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
    deriving (Eq)

instance Show Mob where
    show Mummy = "mummy"
    show (Sketeleton Bow) = "doomed archer"
    show (Sketeleton Sword) = "dead knight"
    show (Sketeleton item) = "sketeleton holding a " ++ show item
    show (Witch Nothing) = "witch"
    show (Witch (Just MagicWand)) = "sorceress"
    show (Witch (Just item)) = "witch holding a " ++ show item

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

create :: String -> Maybe Mob
create "mummy" = Just createMummy
create "doomed archer" = Just createArcher
create "dead knight" = Just createKnight
create "witch" = Just createWitch
create "sorceress" = Just createSorceress
create _ = Nothing

equip :: Item -> Mob -> Maybe Mob
equip item (Sketeleton _) = Just $ Sketeleton item
equip item (Witch _) = Just $ Witch (Just item)
equip _ _ = Nothing
