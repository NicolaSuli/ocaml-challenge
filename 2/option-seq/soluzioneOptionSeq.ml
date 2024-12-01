let (<*>) f g =
  match f,g with
  | Some f, Some g -> Some (f g)
  | _ -> None
