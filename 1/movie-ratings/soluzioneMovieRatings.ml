let movie_rating r1 r2 r3 =
  (* Verifica che tutti i voti siano nell'intervallo 1-5 *)
  if r1 < 1 || r1 > 5 || r2 < 1 || r2 > 5 || r3 < 1 || r3 > 5 then
    failwith "Invalid rating"
  else
    (* Classificazione in base ai voti *)
    match (r1, r2, r3) with
    | (5, 5, 5) -> "Masterpiece"
    | (5, 5, r) | (5, r, 5) | (r, 5, 5) when r >= 4 -> "Highly Recommended"
    | (r1, r2, r3) when r1 >= 4 && r2 >= 4 && r3 >= 3 -> "Recommended"
    | (r1, r2, r3) when r1 >= 4 && r3 >= 4 && r2 >= 3 -> "Recommended"
    | (r1, r2, r3) when r2 >= 4 && r3 >= 4 && r1 >= 3 -> "Recommended"
    | _ -> "Mixed Reviews"
