* Дефинирайте следните функции работещи върху списъци (и измислете техните типове):

1. len l, която намира дължината на списъка l

2. exists p l, която проверява дали съществува елемент в l, за който е изпълнен предикатът p.

3. forall p l, която проверява дали предикатът p е изпълнен за всички елементи на списъка l

4. member x l, която проверява дали елементът x се съдържа в списъка l (какво значи "съдържа"?)

5. listMap f l, която прилага f върху всеки елемент на списъка l

6. listFilter p l, която съставя нов списък, съдържащ само елементите на l, за които е изпълнен предикатът p

7. push x l, която добавя елемента x на края на списъка l

8. reverse l, която връща списък с елементите на l в обратен ред

9. insert x n l, която вкарва елемента x на позиция n в списъка l

10. append l1 l2, която връща конкатенацията на двата подадени списъка (ако n е след края на l, вкарваме x накрая)

11. listFoldr op init l, която пресмята op l[0] (op l[1] (op l[2] ... (op l[n] init) ... ))) (ако имаме подаден празен списък, резултатът е init).

12. listFoldl op init l, която пресмята op ( ... (op (op (op l[0]) l[1]) l[2]) ... l[n] ) init (ако имаме подаден празен списък, резултатът е init).

13. sum, която намира сумата на елементите в списък от числа, използвайки listFoldr

14. quickSort l, която връща сортиран списък, съдържащ елементите на l. Упътване за алгоритъма QuickSort при не-тривиален входен списък:
- Избираме някой (напр. първия) елемент на l за pivot
- Разпределяме елементите на l в два списъка l1 и l2, в зависимост дали са по-малки или по-големи на pivot
- Резултатът е конкатенация на рекурсивно-сортираните l1 и l2
