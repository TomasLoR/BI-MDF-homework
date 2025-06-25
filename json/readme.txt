Q 1
Query: .["@graph"] | map(select(.age < 30) | {given_name: .given_name["en"], family_name: .family_name["en"], age})

Description: This query extracts information about visitors who are younger than 30 years old. It maps each visitor's given name, family name, and age into a new object.

Q 2
Query: .["@graph"] | map(select(.works_at) | {given_name: .given_name, family_name: .family_name})

Description: This query filters and extracts information about caretakers who work somewhere. It creates a new object for each caretaker, including their given name and family name.

Q 3
Query: .["@graph"] | map(select(.price >= 16)) | length

Description: This query calculates and returns the count of tickets that cost at least $16.

Q 4
Query: .["@graph"] | map(select(.type == "ex:zoo" and .name."en" == "Wildlife Park") | .has_employed) | length

Description: This query counts the number of caretakers employed at the "Wildlife Park" zoo.