

Normalization is a collection of scripts that maps tokens to a configuration of characters determined by linuguistic, and contextual rules.

normalize.R calls all files in this folder.



Converters is a collection of tools that the normalizers call to form their specific configurations of characters to arrive at a fully normalized text.

The normalize scripts call these converters.

Note that there are a few data files and csv's in this folder. The scripts following from the normalize.R script call upon these sets.
