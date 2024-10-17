type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let count_accept v1 v2 v3 =
  let rec count acc = function
    | [] -> acc
    | StrongAccept :: tail | WeakAccept :: tail -> count (acc + 1) tail
    | _ :: tail -> count acc tail
  in
  count 0 [v1; v2; v3]

let has_strong_reject (v1:vote) (v2:vote) (v3:vote) =
  match (v1, v2, v3) with
  | (StrongReject, _, _) | (_, StrongReject, _) | (_, _, StrongReject) -> true
  | _ -> false

let decide_exam v1 v2 v3 =
  let count_accepts = count_accept v1 v2 v3 in
  let strong_reject_exists = has_strong_reject v1 v2 v3 in
  (count_accepts >= 2) && not strong_reject_exists
