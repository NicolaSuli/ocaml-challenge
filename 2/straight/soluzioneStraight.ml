type suit = S | H | D | C;;
type card = Card of int * suit;;

let straight (Card (v1, _), Card (v2, _), Card (v3, _), Card (v4, _), Card (v5, _)) =
  (* Verifica che i valori siano in ordine crescente e consecutivi *)
  v2 = v1 + 1 && v3 = v2 + 1 && v4 = v3 + 1 && v5 = v4 + 1
;;