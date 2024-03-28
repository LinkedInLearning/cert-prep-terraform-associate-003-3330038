#NUMERIC FUNCTIONS

#abs - Returns the absolute value of a number:

> abs(10)
10
> abs(0)
0
> abs(-13.2)
13.2

..............................................
ceil - returns the closest whole number that is greater than or equal to the given value, which may be a fraction.

> ceil(5.1)
6
.............................................
floor - Rounds a number down to the nearest integer:

> floor(8.9)
8

.............................................
log - Returns the natural logarithm of a number:

> log(2.71828)
1

.............................................
max - Returns the maximum value from a list of numbers:

> max(14, 8, 23, 5, 19)
23
.............................................
min - Returns the minimum value from a list of numbers:

> min(14, 8, 23, 5, 19)
5

parseint - Converts a string to an integer:
.............................................
> parseint("42")
42

.............................................
pow - Raises a number to a specified power:

> pow(2, 3)
8

signum - Returns the sign of a number (-1, 0, or 1):

> signum(-7)
-1


STRING FUNCTIONS


chomp - Removes trailing newline characters from a string:

> chomp("Hello\n")
"Hello"

.............................................
endswith - Checks if a string ends with a specified substring:

> endswith("Terraform", "form")
true

.............................................
format - Formats a string based on a format specifier:

> format("Hello, %s!", "Terraform")
"Hello, Terraform!"

.............................................
formatlist - Formats strings based on a format specifier and a list of values:

> formatlist("Hello, %s!", ["Alice", "Bob"])
["Hello, Alice!", "Hello, Bob!"]

.............................................
indent - Adds a multi-line string into an already-indented context in another string

> "  items: ${indent(2, "[\n  foo,\n  bar,\n]\n")}"
  items: [
    foo,
    bar,
  ]

.............................................
join - Concatenates elements of a list into a single string:


> join(", ", ["apple", "orange", "banana"]) 
"apple, orange, banana"

.............................................
lower - Converts a string to lowercase:

> lower("Hello")
"hello"

.............................................
upper - Converts a string to uppercase:

> upper("world")
"WORLD"

.............................................
regex - Performs regular expression matching and returns the first match:

> regex("Terraform", "erra")
"erra"
.............................................
regexall - Performs regular expression matching and returns all matches as a list:

> regexall("[a-z]+", "1234abcd5678efgh9")
tolist([
  "abcd",
  "efgh",
])

.............................................
replace - Replaces occurrences of a substring with another substring:

> replace("Hello, Terraform!", "Terraform", "World")
"Hello, World!"

.............................................
split - Splits a string into a list based on a delimiter:

> split(", ", "apple, orange, banana")
["apple", "orange", "banana"]

.............................................
startswith - Checks if a string starts with a specified substring. The function returns true if the string begins with that exact prefix.

> startswith("Terraform", "Terra")
true

.............................................
strcontains - Checks if a string contains a specified substring.

> strcontains("example", "amp")
true

.............................................
strrev - Reverses a string:

> strrev("abcd")
"dcba"

.............................................
substr - extracts a substring from a given string by offset and (maximum) length

> substr("Terraform", 3, 5)
"rafor"

.............................................
title - Converts the first character of each word to uppercase:

> title("terraform is great")
"Terraform Is Great"

.............................................
trim - Removes leading and trailing whitespace from a string:

> trim("footbar", "foo")
"footwear"

.............................................
trimprefix - Removes the specified set of characters from the start and end of the given string.

> trimprefix("Terraform", "T")
"erraform"

.............................................
trimsuffix - Removes a specified suffix from a string:

> trimsuffix("Terraform", "form")
"Terra"


COLLECTION FUNCTIONS

alltrue - Returns true if all elements within the provided collection evaluate to true 
Additionally, if the collection is empty, it also yields true.

> alltrue([true, true, false])
false

....................................................
anytrue - 
Returns true if any element within the provided collection evaluates to true or "true". If the collection is empty, it returns false.

> anytrue([false, false, true])
true

....................................................
chunklist - Splits a list into chunks of a specified size:

> chunklist([1, 2, 3, 4, 5], 2)
[[1, 2], [3, 4], [5]]

....................................................
coalesce - take any number of arguments and returns the first non-null or non-empty string among them

> coalesce([null, "hello", null, "world"])
"hello"

....................................................
coalescelist - Returns the first non-empty list from a list of lists:

> coalescelist([[], [1, 2], [], [3, 4]])
[1, 2]

....................................................
compact - Removes null elements and empty string from a list:

> compact([1, null, 2, null, 3])
[1, 2, 3]

....................................................
concat - combines two or more lists into a single list.

> concat([1, 2], [3, 4])
[1, 2, 3, 4]

....................................................
contains - Checks if a list or given set contains  a specified value:

> contains(["apple", "banana", "orange"], "banana")
true

....................................................
distinct - Removes duplicate elements from a list:

> distinct([1, 2, 2, 3, 3, 3, 4])
[1, 2, 3, 4]

....................................................
element - Returns the element at a specified index in a list:

> element(["apple", "banana", "orange"], 1)
"banana"

....................................................
flatten - Flattens a nested list:

> flatten([[1, 2], [3, [4, 5]], 6])
[1, 2, 3, 4, 5, 6]

....................................................
index - Returns the index of the first occurrence of a value in a list:

> index(["apple", "banana", "orange"], "banana")
1

....................................................
keys - Returns the keys of a map:

> keys({ name = "Alice", age = 30 })
["name", "age"]

....................................................
length - Returns the length of a list:

> length([1, 2, 3, 4, 5])
5

....................................................
list - Creates a list from individual arguments:

> list(1, 2, 3, 4, 5)
[1, 2, 3, 4, 5]

....................................................
lookup - Retrieves a value from a map using a key:

> lookup({ name = "Alice", age = 30 }, "name")
"Alice"

....................................................
# map - Applies a function to each element of a list but now DEPRECATED 

#> map([1, 2, 3], x -> x * 2)
#[2, 4, 6]

....................................................
matchkeys -matchkeys constructs a new list by selecting elements from one list based on the corresponding indexes of values in another list
> matchkeys(["i-123", "i-abc", "i-def"], ["us-west", "us-east", "us-east"], ["us-east"])
[
  "i-abc",
  "i-def",
]


....................................................
merge - Merges multiple maps into a single map that contains a merged set of elements from all arguments.

> merge({ name = "Alice" }, { age = 30 })
{ name = "Alice", age = 30 }

....................................................
one - returns the sole element if a list, set, or tuple contains only one element, null if empty, and throws an error if there are multiple elements.

Note: This function is available only in Terraform v0.15 and later.

> one([])
null
> one(["Thanks"])
"Thanks"
> one(["hello", "goodies"])

Error: Invalid function argument

....................................................
range - Generates a sequence of numbers:

> range(1, 5)
[1, 2, 3, 4, 5]

....................................................
reverse - Reverses the elements of a list:

> reverse([1, 2, 3])
[3, 2, 1]

....................................................
setintersection - Returns the intersection of two sets ie returns the items that is common in the given lists

> setintersection([1, 8, 5, 3], [2, 4, 5, 8])
[5,8]

....................................................
setproduct - Returns the Cartesian product of multiple sets, meaning it generates all possible combinations of elements from the input sets.

> setproduct([1, 2], [3, 4])
[[1, 3], [1, 4], [2, 3], [2, 4]]

....................................................
setsubtract - Returns the difference between two sets:

> setsubtract([1, 2, 3, 4], [2, 3])
[1, 4]

....................................................
setunion - Returns the union of multiple sets:

> setunion([1, 2], [2, 3])
[1, 2, 3]

....................................................
slice - Operates by selecting elements from a list within a specified range of indices In the slice function, the end index parameter is exclusive, meaning it does not include the element at that index in the result.

> slice([1, 2, 3, 4, 5], 1, 3)
[2, 3, ]

....................................................
sort - Sorts a list of strings in lexicographical order and returns the sorted lis

> sort(["g", "d", "t", "a"])
["a", "d", "g", "t" ]

....................................................
sum - Calculates the sum of elements in a list:

> sum([1, 2, 3, 4, 5])
15

....................................................
transpose - The transpose function reorganizes the structure of a map of lists by flipping the keys and values

> transpose({"a" = ["1", "2"], "b" = ["2", "3"]})
{
  "1" = [
    "a",
  ],
  "2" = [
    "a",
    "b",
  ],
  "3" = [
    "b",
  ],
}

....................................................
values - Returns the values of a map:

> values({ name = "Alice", age = 30 })
["Alice", 30]

....................................................
zipmap - Creates a map from two lists, where one list becomes keys and the other values:

> zipmap(["name", "age"], ["Alice", 30])
{ name = "Alice", age = 30 }



FILESYSTEM FUNCTIONS

abspath: Computes the absolute path of a given relative path.

> abspath("../folder/file.txt")
"/home/user/project/folder/file.txt"

..................................................
dirname: Extracts the directory component from a file path.

> dirname("/home/user/project/folder/file.txt")
"/home/user/project/folder"

..................................................
pathexpand: Expands a tilde (~) in a path to the user's home directory.

> pathexpand("~/project/file.txt")
"/home/user/project/file.txt"

..................................................
basename: Extracts the base name (file name) from a file path.

> basename("/home/user/project/folder/file.txt")
"file.txt"

..................................................
file: Reads the contents of a file and returns it as a string. This function can be used only with files that already exist on disk at the beginning of a Terraform run

> file("/path/to/file.txt")
"Contents of the file"

..................................................
fileexists: Checks if a file exists at the specified path. This function works only with regular files. If used with a directory, FIFO, or other special mode, it will return an error.

> fileexists("/path/to/file.txt")
true

..................................................
fileset: Creates a set of files matching a given pattern.

> fileset("/path/to/directory/*.txt")
["/path/to/directory/file1.txt", "/path/to/directory/file2.txt"]

..................................................
filebase64: Reads the contents of a file and returns it as a Base64-encoded string. this function works only with files that are distributed as part of the configuration source code

> filebase64("/path/to/file.txt")
"Q29udGVudHMgb2YgdGhlIGZpbGU="

..................................................
templatefile: reads the file at the given path and renders its content as a template using a supplied set of template variables.

> templatefile("${path.module}/template.tpl", { key = "value" })
"Rendered template content"

# Ensure that the paths you're using point to valid files or directories within your Terraform project. Also, make sure that Terraform has appropriate permissions to access these files and directories.
