let xor (a : bool) (b : bool) : bool = (a || b) && not (a && b)

let xor2 (a : bool) (b : bool) : bool = if a then if b then false else true else if b then true else false

let xor3 (a : bool) (b : bool) : bool =
match (a,b) with
|(true,false) -> true
|(false,true) -> true
|_-> false