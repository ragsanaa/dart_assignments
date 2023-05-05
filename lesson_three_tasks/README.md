# Lesson 3 Tasks
-----------------
> ### Homework 1
> See [Task 1](./lesson_three_tasks/hw3.dart)
>
> #### Description
> The program takes option from the user (login | guest)
>   - if login, then takes username and password from the user and checks if they are correct.
>   - if guest, then goes to the next step.
>
> Then the following happens:
> - prints a welcome message and shows the products list. Then starts shopping process.
> - takes product name from the user and checks if it is in the list.
> - asks the user if he/she wants to buy this product.
>   - if yes, then asks the user which payment method he/she wants to use (cash | credit card).
>     - if cash, then asks the user how to deliver the product (pickup | delivery).
>       - if pickup, then prints a message that about total price and other details.
>       - if delivery, then adds delivery price (+10) to the total price and prints a message about total price and other details.
>     - if credit card, then asks the user how to pay (full | installments).
>       - if full, then asks the user card details and prints a message about total price and other details.
>       - if installments, then asks the user which bank he/she wants to use (Birkart | Tamkart | Bolkart).
>         - if Birkart, then asks the user how many months he/she wants to pay (3 | 6 | 12 | 18 | 24) and prints a message about total price and other details.
>         - if Tamkart, then asks the user how many months he/she wants to pay (3 | 6 | 12).
>           - if 12, then add 25% to the total price and prints a message about total price and other details.
>         - if Bolkart, then asks the user how many months he/she wants to pay (3 | 6).
>          - if 6, then add 10 per month to the total price and prints a message about total price and other details.
>   - if no, then asks the user if he/she wants to continue shopping.
>     - if yes, then goes to the step where the user enters the product name.
>     - if no, then prints a goodbye message and ends the program.
>
> - after the shopping process, asks the user if he/she wants to continue shopping.
>   - if yes, then repeats the shopping process.
>   - if no, then prints a goodbye message and ends the program.


>
> #### Example
> ```dart
> Please enter your option (login | guest): login
> Please enter your username: admin
> Please enter your password: admin
> Welcome admin!, enjoy your shopping!
> Here is the list of products:
> Apple
> Banana
> Pineapple
> Kiwi
>
> Please enter product name: Apple
> You have selected Apple
> Price: 2.0 AZN
> Description: This is an apple
> Do you want to buy this product? (yes | no): yes
> Which payment method do you want to use? (cash | credit card): cash
> How do you want to deliver the product? (pickup | delivery): delivery
> You have bought Apple using cash and it will be delivered to you.
> Total payment: 12.0 AZN
> Do you want to continue shopping? (yes | no): no
> You spent 12.0 dollars today.
> Thank you for visiting us!
> ```
>

