(* Collatz sequence implementation *)
let rec collatz_sequence (n : int) : int list = 
  (* Now compute the length of the Collatz sequence. *)
  (* Base case: n = 0 *)
  if n = 0 then invalid_arg "n must be greater than 0"
  (* Base case: n = 1 *)
  else if n = 1 then [1]
  (* Recursive case: n is even *)
  else if n mod 2 = 0 then n :: collatz_sequence (n / 2)
  (* Recursive case: n is odd *)
  else n :: collatz_sequence (3 * n + 1)

let rec collatz_length (n : int) : int = 
  if n = 0 then invalid_arg "n must be greater than 0"
  else
  List.length(collatz_sequence n)

(* Binary search tree implementation *)

(* Tree type *)
type 'a tree = Nil | Node of 'a tree * 'a * 'a tree 

(* Function tests whether a tree is a valid binary search tree *)

let rec bst_valid (t : 'a tree) : bool = 
    match t with
    (* Null case *)
    | Nil -> true
    (* Leaf *)
    | Node (Nil, n, Nil) -> true
    (* Right subtree -- must check that left subtree of right tree is greater than node *)
    | Node (Nil, n, Node (l, m, r)) -> if n < m then bst_valid (Node (l, m, r)) && bst_valid(Node (Nil, n, l)) else false
    (* Left subtree -- must check that right subtree of left tree is less than node *)
    | Node (Node (l, m, r), n, Nil) -> if m < n then bst_valid (Node (l, m, r)) && bst_valid(Node (r, n, Nil)) else false
    (* Both subtrees -- must check both conditions above*)
    | Node (Node (l, m, r), n, Node (l', m', r')) -> if m < n && n < m' then bst_valid (Node (l, m, r)) && bst_valid(Node (l', m', r')) && bst_valid(Node (r, n, Nil)) && bst_valid(Node (Nil, n, r')) else false
;;

(* Searching a binary tree *)

(* Direction type *)

type direction = Left | Right

(* Function to search a binary tree with exceptions *)
let rec tree_search_exn (t : 'a tree) (ds : direction list) : 'a = 
  match ds with

  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> raise Not_found
    | Node (l, n, r) -> n)

  (* Iterate over the list of directions *)
  | d :: ds' -> 
    (match t with
    | Nil -> raise Not_found
    | Node (l, n, r) -> 
      if d = Left then tree_search l ds'
      else tree_search r ds')
  ;;

(* Default function to search a binary tree *)
let rec tree_search_def (t : 'a tree) (ds : direction list) (d : 'a) : 'a = 
  match ds with

  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> d
    | Node (l, n, r) -> n)

  (* Iterate over the list of directions *)
  | head :: ds' -> 
    (match t with
    | Nil -> d
    | Node (l, n, r) -> 
      if head = Left then tree_search_def l ds' d
      else tree_search_def r ds' d)
  ;;

(* Function to search a binary tree and retrurn an option type*)
let rec tree_search_opt (t : 'a tree) (ds : direction list) : 'a option = 
  match ds with

  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> None
    | Node (l, n, r) -> Some n)

  (* Iterate over the list of directions *)
  | d :: ds' -> 
    (match t with
    | Nil -> None
    | Node (l, n, r) -> 
      if d = Left then tree_search_opt l ds'
      else tree_search_opt r ds')
  ;;
  
(* Function that takes a list of trees of integers and 
   returns the sum of the values at the given directions. *)

(* Helper function for a single tree in the list  throwing an exception*)
let rec single_tree_exn(t : int tree) (ds : direction list) : int = 
  match ds with
  
  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> raise Not_found
    | Node (l, n, r) -> n)

  (* Iterate over the list of directions *)
  | d :: ds' -> 
    (match t with
    | Nil -> raise Not_found
    | Node (l, n, r) -> 
      if d = Left then single_tree_exn l ds'
      else single_tree_exn r ds')
  ;;

(* Main function *)
let rec tree_sum_exn (ts : int tree list) (ds : direction list) : int = 
  match ts with
  | [] -> 0
  | t :: ts' -> single_tree_exn t ds + tree_sum_exn ts' ds
  ;;

(* Helper function for a single tree in the list  returning 0 *)
let rec single_tree_def(t : int tree) (ds : direction list) : int = 
  match ds with

  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> 0
    | Node (l, n, r) -> n)
  
  (* Iterate over the list of directions *)
  | d :: ds' -> 
    (match t with
    | Nil -> 0
    | Node (l, n, r) -> 
      if d = Left then single_tree_def l ds'
      else single_tree_def r ds')
  ;;

(* Main function *)
let rec tree_sum_def (ts : int tree list) (ds : direction list) : int = 
  match ts with
  | [] -> 0
  | t :: ts' -> single_tree_def t ds + tree_sum_def ts' ds
  ;;

(* Helper function for a single tree in the list returning None *)
let rec single_tree_opt(t : int tree) (ds : direction list) : 'a option = 
  match ds with
  
  (*"Base case"*)
  | [] -> 
    (match t with
    | Nil -> None
    | Node (l, n, r) -> Some n)

  (* Iterate over the list of directions *)
  | d :: ds' -> 
    (match t with
    | Nil -> None
    | Node (l, n, r) -> 
      if d = Left then single_tree_opt l ds'
      else single_tree_opt r ds')
  ;;

(* Main function *)
let rec tree_sum_opt (ts : int tree list) (ds : direction list) : 'a option = 
  (* Output obtained by matching helper function result*)
  match ts with
  | [] -> Some 0
  | t :: ts' -> match single_tree_opt t ds with
                | None -> None
                | Some n -> match tree_sum_opt ts' ds with
                            | None -> None
                            | Some m -> Some (n + m)
  ;;

(* Reversing lists -- more efficient method *)
(* Helper function with accumulator *)
let rec accumulate (l : 'a list) (acc : 'a list) : 'a list = 
  (* Works by merging the current element of the list with the 
     accumulator to reverse the list's order*)
  match l with
  | [] -> acc
  | h :: t -> accumulate t (h :: acc)
  ;;

(* Main function *)
let reverse_fast (l : 'a list) = 
  accumulate l []
  ;;


(* Convert integer to binary function *)
type digit = Zero | One

exception Negative
let rec int_digits (n : int) : digit list = 
  (* Edge case *)
  if n < 0 then raise Negative
  (* Base case *)
  else if n = 0 then []
  (* Divisable by two *)
  else if n mod 2 = 0 then Zero :: int_digits (n / 2)
  (* Not divisable by two *)
  else One :: int_digits (n / 2)
  ;;

(* int_of_digits converts a list of digits into a machine integer *)
let rec int_of_digits (digits : digit list) : int = 
  match digits with
  | [] -> 0
  (* Zero case *)
  | h :: t -> if h = Zero then 2 * int_of_digits t
  (* One case *)
  else 2 * int_of_digits t + 1
  ;;

(* Compute the successor of a bianry number. For example,
  successsor [Zero]      = [One]
  successsor [Zero; One] = [One; One]
  successsor [One; One]  = [Zero; Zero; One] *)
let rec successsor (digits : digit list) : digit list = 
match digits with
(* Base case *)
| [] -> [One]
(* List iteration case *)
| h :: t -> if h = Zero then One :: t
  else Zero :: successsor t
;;


(* Tic Tac Toe function *)

exception Invalid_input

type player = X | O

(* Implementation if tic tac toe that "reads the board "*)
(* Helper function to check if there is a winner in the current position  *)
let rec current_winner (board : string) (count : int) (winner : player option) (challenger : char) : player option = 
  (* Horizontal line *)
  if (count mod 3 = 0 && board.[count + 1] = challenger && board.[count + 2] = challenger)
    (* Vertical line *)
    || (count < 3 && board.[count + 3] = challenger && board.[count + 6] = challenger)
    (* Diagonal left-right *)
    || (count = 0 && board.[count + 4] = challenger && board.[count + 8] = challenger)
    (* Diagonal right-left *)
    || (count = 2 && board.[count + 4] = challenger && board.[count + 6] = challenger )
    then match challenger with
          | 'X' -> (match winner with
                    | None -> Some X
                    | Some _ -> raise Invalid_input)
          | 'O' -> (match winner with
                    | None -> Some O
                    | Some _ -> raise Invalid_input)
          | _ -> raise Invalid_input
  else None

(* Helper function to check if there is a winner *)
let rec find_winner (board : string) (count : int) (winner : player option) : player option = 
  
  (* End of board *)
  if count = 9 then winner
  
  (* X is a winner *)
  else if board.[count] = 'X'
    then match current_winner board count winner 'X' with
          | None -> find_winner board (count + 1) winner
          | Some _ as w-> find_winner board (count + 1) w

  (* O is a winner *)
  else if board.[count] = 'O' 
    then match current_winner board count winner 'O' with
          | None -> find_winner board (count + 1) winner
          | Some _ as w -> find_winner board (count + 1) w

  (* Invalid input *)
  else raise Invalid_input

let tic_tac_toe (filename : string) : player option = 

  (* Read lines in the file  *)
  let file = open_in filename in
  let row1 = input_line file in
  let row2 = input_line file in 
  let row3 = input_line file in

  (* Game board , given by the three rows *)
  let board = row1 ^ row2 ^ row3 in

  (* Call helper function to obtain a winner or return an error *)
  find_winner board 0 None
  ;;
