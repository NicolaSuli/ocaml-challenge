let option_map f opt =
  match opt with
  | None -> None
  | Some x -> Some (f x)
