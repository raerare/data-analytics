
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

department_code = 18

match department_code:
    case 1:
        department_name = 'Marketing'
    case 5:
        department_name = 'Human Resources'
    case 10:
        department_name = 'Accounting'
    case 12:
        department_name = 'Legal'
    case 18:
        department_name = 'IT'
    case 20:
        department_name = 'Customer Relations'
    case _:
        department_name = '<unknown>'

print(f'Department code {department_code} is {department_name}')

