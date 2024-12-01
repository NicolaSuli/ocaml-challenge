type card = Joker | Val of int

let win (x: card) (y: card) =
  match (x, y) with
  | (Val a, Val b) when a >= 1 && a <= 10 && b >= 1 && b <= 10 -> 
      if a = b then false
      else if a > b then true
      else false
  | (_, Joker) -> false
  | (Joker, _) -> true 
  | _ -> failwith "range non valido"
