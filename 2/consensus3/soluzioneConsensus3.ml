let consensus3 (f1, f2, f3) n =
  let r1 = try Some (f1 n) with _ -> None in
  let r2 = try Some (f2 n) with _ -> None in
  let r3 = try Some (f3 n) with _ -> None in
  match (r1, r2, r3) with
  | (Some v1, Some v2, Some v3) when v1 = v2 || v1 = v3 -> Some v1
  | (Some v1, Some v2, Some v3) when v2 = v3 -> Some v2
  | (None, _, _) | (_, None, _) | (_, _, None) -> None
  | _ -> None
