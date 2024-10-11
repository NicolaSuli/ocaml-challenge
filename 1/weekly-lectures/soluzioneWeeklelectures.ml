type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

let isLecture (d: weekday) (c: course) =
match (d,c) with
|(We,LIP) -> true
|(Th,LIP) -> true
|(Tu,ALF) -> true
|(Th,ALF) -> true
|(Fr,ALF) -> true
|_-> false;;