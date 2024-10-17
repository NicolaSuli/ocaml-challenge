type season = Spring | Summer | Autumn | Winter

let squirrel_play (x:int) (y:season) : bool = if y = Summer && (x >= 15 && x < 35) then true else if y != Summer && (x >= 15 && x < 31) then true else false;;