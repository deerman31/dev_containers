let rec fizzbuzz n1 n2 =
  if n1 > n2 then []
  else
    (match (n1 mod 3, n1 mod 5) with
    | 0, 0 -> "FizzBuzz"
    | 0, _ -> "Fizz"
    | _, 0 -> "Buzz"
    | _, _ -> string_of_int n1)
    :: fizzbuzz (n1 + 1) n2

let () = List.iter (fun x -> Printf.printf "%s\n" x) (fizzbuzz 1 100)
