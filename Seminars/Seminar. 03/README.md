*  Дефинирайте следните функции работещи върху списъци:
1. (is-list? x), която проверява дали обектът x е списък
1. (len l), която намира дължината на списък
2. (repeat n x), връща списък с n елемента, всеки от който е x
3. (my-member? l x), която проверява дали елементът x се съдържа в списъка l (какво значи "съдържа"?)
4. (at n l), която връща елементът, намиращ се на позиция n (броим от 0) в списъка l или #f, ако позицията е извън списъка
5. (push-back x l), която добавя елемента x на края на списъка l
6. (my-reverse l), която връща списък с елементите на l в обратен ред
7. (insert x n l), която вкарва елемента x на позиция n в списъка l (ако n е след края на l, вкарваме x накрая)
8. (all-prefixes l), която по подаден списък l връща списък от списъците, които са префикси на l

*  Задачи с функции от по-висок ред:
   Дефинирайте следните функции:
10. (my-map f l), която прилага f върху всеки елемент на списъка l
10. (my-filter p l), която съставя нов списък, съдържащ само елементите на l, за които е изпълнен предикатът p
11. (foldr l op init), която пресмята (op l[0] (op l[1] (op l[2] ... (op l[n] init) ... ))) (ако имаме подаден празен списък, резултатът е 
    init). Тази функция е аналогична на функцията accumulate, която правихме миналия път.

*  Използвайки тези функции, и без използване на друга рекурсия, дефинирайте:
13. (sum l), която намира сумата на числата в списък
13. (forall? p l), която връща #t или #f в зависимост от това дали предикатът p е върнал #t за всеки елемент на l
14. (exists? p l), която връща #t или #f в зависимост от това дали предикатът p е върнал #t за поне един елемент на l
15. (my-member2? l x), която проверява дали елементът x се съдържа в списъка l (може да използвате exists?)
16. (unique l), която превръща всеки няколко последователни срещания на една и съща стойност в списъка в единствено срещане на тази стойност

*  Допълнителни задачи
   Дефинирайте функциите:

18. (is-bijection-over f items), която проверява дали функцията f е биекция върху множеството, представено като списък items (приемете, че в 
    items няма повторения)
18. (fixpoints-of-some-func fs xs), която връща тези елементи x от списъка xs, такива че съществува функция f от списъка fs, така че (f x) 
    дава x. Мислете си, че fs е списък от функции, а xs е списък от стойности.