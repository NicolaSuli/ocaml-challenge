(* Funzione tris: verifica se almeno tre elementi del quadruplo sono uguali *)
let tris (a, b, c, d) =
  (a = b && a = c) || (a = b && a = d) || (a = c && a = d) || (b = c && b = d)

(* Funzione hand: genera un quadruplo casuale di interi tra 1 e 10 *)
let hand () =
  let a = Random.int 10 + 1 in
  let b = Random.int 10 + 1 in
  let c = Random.int 10 + 1 in
  let d = Random.int 10 + 1 in
  (a, b, c, d)

(* Funzione di test per tris e hand *)
let test () =
  Random.self_init (); (* Inizializza il generatore di numeri casuali *)
  let quadruplo = hand () in
  let result = tris quadruplo in
  (* Mostra il risultato dei test *)
  (quadruplo, result)
