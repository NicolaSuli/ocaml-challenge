let guess5 n =
  if n < 1 || n > 5 then failwith "n must be between 1 and 5"
  else
    let r = Random.int 5 + 1 in
    (n = r, r)
