let best_offer (x: int option) (y: int option) (z: int option) = if ( x = None) && ( y = None ) && ( z = None ) then None else 
                                                                if Some x > Some y && Some x > Some z then  x else
                                                                if Some z > Some x && Some z > Some y then  z else  y