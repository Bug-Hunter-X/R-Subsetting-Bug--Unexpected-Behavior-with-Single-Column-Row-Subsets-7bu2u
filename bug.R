```R
# This code attempts to subset a data frame based on a condition,
# but it contains a subtle error that can lead to unexpected results.

df <- data.frame(a = 1:5, b = LETTERS[1:5])

# Incorrect subsetting:
wrong_subset <- df[df$a > 2 & df$b == "C", ]

# Correct subsetting:
correct_subset <- df[df$a > 2 & df$b == "C", , drop = FALSE]
```