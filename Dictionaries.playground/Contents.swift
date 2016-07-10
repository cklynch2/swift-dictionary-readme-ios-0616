var favoriteWords = [
    "rigmarole": "a lengthy and complicated procedure",
    "gobbledygook": "language that is meaningless; nonsense",
    "lollygag": "spend time aimlessly",
    "wabbit": "weary, exhausted",
]

var numberWords = [1: "one"]

var definition = favoriteWords["rigmarole"]

var nonexistentDefinition = favoriteWords["strategery"]

if let definition = definition {
    print("The definition of 'rigmarole' is '\(definition)'")
} else {
    print("'rigmarole' isn't a word!")
}

if let definition = nonexistentDefinition {
    print("The definition of 'strategery' is '\(definition)'")
} else {
    print("'strategery' isn't a word")
}

favoriteWords["strategery"] = "strategy"
definition = favoriteWords["strategery"]

favoriteWords["strategery"] = nil
print(favoriteWords)

// Adding an element to a dictionary with subscript syntax:
favoriteWords["petrichor"] = "smell of rain"
print(favoriteWords)

// Accessing a value from a dictionary using its key. Note that the return type is an optional, to account for the case of a key that does not exist. Hence this will print Optional("smell of rain")
let newDefinition = favoriteWords["petrichor"]
print(newDefinition)

// You can 'uwrap' the string value associated with a given key with optional binding:
if let newDefinition = favoriteWords["petrichor"] {
    print("The definition is \(newDefinition).")
} else {
    print("This word is not in the dictionary.")
}

if let missingDefinition = favoriteWords["fleer"] {
    print("The definition is 'to laugh jeeringly'.")
} else {
    print("This word is not in the dictionary.")
}

// Remove element from the dictionary by reassigning its value to nil:
favoriteWords["wabbit"] = nil
print("No time for feeling wabbit, time to greet the day!\n\(favoriteWords)")
