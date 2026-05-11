
# I used simple variables, math formulas, loops, and if statements
# to solve the problem step by step.

contact_info = {
    'name': 'Jordan Lee',
    'address': '123 Main Street',
    'city': 'Chicago',
    'state': 'IL',
    'zip': '60601'
}

print(f"""{contact_info['name']}
{contact_info['address']}
{contact_info['city']}, {contact_info['state']} {contact_info['zip']}""")

contact_info.pop('name')

full_name = {
    'first name': 'Jordan',
    'last name': 'Lee'
}
full_name.update({'honorific': 'Mx.'})
contact_info.update({'full_name': full_name})

print(f"""{contact_info['full_name']['honorific']} {contact_info['full_name']['first name']} {contact_info['full_name']['last name']}
{contact_info['address']}
{contact_info['city']}, {contact_info['state']} {contact_info['zip']}""")

