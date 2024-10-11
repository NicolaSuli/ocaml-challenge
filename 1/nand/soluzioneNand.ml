let nand a b = not (a && b);;

let nand2 (a : bool) (b : bool) : bool = if a then (if b then false else true) else true

let nand3 (a : bool) (b : bool) : bool =
  match (a,b) with
  | (true,true) -> false 
  |_ -> true