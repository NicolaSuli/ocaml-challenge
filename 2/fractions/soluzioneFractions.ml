let is_posfrac (x, y) =
  y <> 0 && ((x > 0 && y > 0) || (x < 0 && y < 0))

let compare_posfrac (x, y) (a, b) =
  if not (is_posfrac (x, y)) || not (is_posfrac (a, b)) then
    failwith "One of the fractions is not positive"
  else
    if x * b = a * y then 0     (* Se le frazioni sono uguali *)
    else if x * b > a * y then 1 (* La prima frazione è maggiore *)
    else -1                      (* La seconda frazione è maggiore *)

let compare_frac (x, y) (a, b) =
  if y = 0 || b = 0 then failwith "Division by zero"
  else
    if x * b = a * y then 0     (* Le frazioni sono uguali *)
    else if x * b > a * y then 1 (* La prima frazione è maggiore *)
    else -1                      (* La seconda frazione è maggiore *)
