# gradient.vim
Generating hex colours for a gradient between two colours and n steps.

# Source the File:

```:so gradient.vim```

# Input (Red to Green):

```:call Gradient("#ff0000", "#00ff00", "16")```

# Output:

```['#ff0000', '#ee1100', '#dd2200', '#cc3300', '#bb4400', '#aa5500', '#996600', '#887700', '#778800', '#669900', '#55aa00', '#44bb00', '#33cc00', '#22dd00', '#11ee00', '#00ff00']```

# Todo: 

* Get it to insert result in a nicer format into the current buffer.
* Get it to autoload
* More plugin like features?
