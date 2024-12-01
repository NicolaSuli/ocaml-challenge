type suit = S | H | D | C  (* Semi: Spades, Hearts, Diamonds, Clubs *)
type card = Card of int * suit  (* Una carta è un numero con un seme *)

let rndHand () =
  let rand_suit () = match Random.int 4 with
    | 0 -> S
    | 1 -> H
    | 2 -> D
    | _ -> C
  in
  let rand_card () = Card (Random.int 13 + 1, rand_suit ()) in
  (rand_card (), rand_card (), rand_card (), rand_card (), rand_card ())

let poker (c1, c2, c3, c4, c5) =
  (* Estrai i valori e i semi delle carte *)
  let extract_card (Card (value, suit)) = (value, suit) in
  let v1, s1 = extract_card c1 in
  let v2, s2 = extract_card c2 in
  let v3, s3 = extract_card c3 in
  let v4, s4 = extract_card c4 in
  let v5, s5 = extract_card c5 in

  (* Contare quanti semi distinti ci sono per ciascun valore *)
  let count_suits v = 
    let count = ref 0 in
    if v = v1 then count := !count + 1;
    if v = v2 then count := !count + 1;
    if v = v3 then count := !count + 1;
    if v = v4 then count := !count + 1;
    if v = v5 then count := !count + 1;
    !count
  in

  (* Verifica se almeno uno dei valori ha 4 carte con semi distinti *)
  let check_poker value = count_suits value >= 4 in

  (* Controlla per ogni valore da 1 a 13 se soddisfa la condizione della poker *)
  let result = check_poker 1 || check_poker 2 || check_poker 3 || check_poker 4 ||
              check_poker 5 || check_poker 6 || check_poker 7 || check_poker 8 ||
              check_poker 9 || check_poker 10 || check_poker 11 || check_poker 12 || check_poker 13 in
  result
