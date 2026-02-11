# Day 16 – Shell Scripting Basics

## Objective
To understand the basics of shell scripting including shebang, variables,
user input, and conditional logic.

---

## Scripts Created
- hello.sh
- variables.sh
- greet.sh
- check_number.sh
- file_check.sh
- server_check.sh

---

## Task 1: First Script
- Used shebang `#!/bin/bash`
- Learned why interpreter declaration matters

![Day16 Hello Script](screenshots/Day16_hello_sh.jpg)

---

## Task 2: Variables
- Used variables to store name and role
- Observed difference between single and double quotes

![Day16 Variables Script](screenshots/Day16_variables_sh.jpg)

---

## Task 3: User Input
- Used `read` to accept user input
- Printed dynamic messages

![Day16 Greet User Inputs](screenshots/Day16_greet_sh_user_inputs.jpg)

---

## Task 4: Conditional Logic
- Used if-elif-else for number check
- Used file existence check with `-f`

![Day16 Check Number Script](screenshots/Day16_check_number_sh.jpg)
![Day16 Search File Script](screenshots/Day16_search_file.jpg)

---

## Task 5: Service Status Script
- Give space to enter the service name
- Stored service name in variable
- Used `systemctl is-active`
- Implemented decision-based execution

![Day16 Service Status Script](screenshots/Day16_service_status.jpg)

---

## What I Learned
- Shell scripts automate repetitive tasks
- Shebang defines script execution behavior
- Conditionals make scripts intelligent
