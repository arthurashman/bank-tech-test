# Bank tech test
[Description](#Description) | [Getting started](#Getting-Started) | [Running tests](#Running-Tests) | [Usage](#Usage) | [Acceptance criteria](#Acceptance-Criteria)
| [User Stories](#User-Stories) | [Approach](#Approach)

##Description
This is a REPL run program that allows users to interact with a virtual mock bank account, opening it, making deposits and withdrawals, and requesting and viewing statements of interactions.

##Getting Started
```
git clone git@github.com:arthurashman/bank-tech-test.git
gem install bundle
bundle
```
##Running Tests
```
rspec
```
##Usage
```
irb
load './lib/account'
load './lib/statement_entry'
load './lib/statement_printer'
```

##Acceptance criteria

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
##User stories
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

##Approach

I started this project by extracting out the user stories from the given acceptance criteria.

I then modelled the classes I expected to create, their methods, and their interactions with each other. 

I wrote a feature test to cover the acceptance criteria that would interact with all the classes.

From here, I TDD's the account class first which I expected to be the class that the user would interact directly with. Allowing my unit tests to drive my code.

Then I moved on to the entry and printer classes that account delegated to.