# Bank tech test

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
### User stories
```
As a user 
I want to be able to deposit money
So I can store it in my account
```
```
As a user
I want to be able to withdraw money
So I can get it out of my account
```
```
As a user 
I want to be able to see my balance
So I know how much money I have
```
```
As a user 
I want to see a statement 
So I can chek my interations with my account
```
```
As a user
I want to see dates and value of interations on my statement
So I can check them against my records
```