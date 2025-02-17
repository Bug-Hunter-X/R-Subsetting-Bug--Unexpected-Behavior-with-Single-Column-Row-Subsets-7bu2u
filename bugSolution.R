```R
# This code demonstrates the correct way to subset a data frame
# using logical indexing, ensuring the data frame structure is preserved

df <- data.frame(a = 1:5, b = LETTERS[1:5])

# Correct subsetting, preserving data frame structure:
correct_subset <- df[df$a > 2 & df$b == "C", , drop = FALSE]

# Verify the structure:
print(str(correct_subset))

# Incorrect subsetting (drops dimension):
wrong_subset <- df[df$a > 2 & df$b == "C", ]

# Verify that the structure is lost and is no longer a data frame
print(str(wrong_subset))

# Another example, with a single-row result:
correct_subset2 <- df[df$a == 1, , drop = FALSE]
print(str(correct_subset2))
wrong_subset2 <- df[df$a ==1, ]
print(str(wrong_subset2))
```