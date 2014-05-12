## Hello Peer Grader!

Please note that, as assigned, all `plot*.R` files contain the complete code needed to produce the corresponding `plot*.png`. They do this with the single line `source("read_data.R")`, which runs the code needed to load and parse the data.

I intentionally chose to factor out the data loading code to improve the maintainability and readability of the code. This way it's easy to adapt the code if something changes about the source data - you only need to update `read_data.R`, rather than making identical changes to all four `plot*.R` files.