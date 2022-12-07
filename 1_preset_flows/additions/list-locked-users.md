This flow looks up for users with a specific attribute name/value combination (`locks` contains `logout`) and 
then uses conditional filtering to build two lists of users: "hidden" ones (that are basically the temporary identifiers
associated with each public link) and the standard ones.