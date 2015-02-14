## This function simulates rolling n dice for x trials, and returns a histogram
## showing the distribution of mean die values for each trial. The "sides"
## variable determines how many sides each die has.

roll <- function(n, x = 10000, sides = 6) {
        dice <- c(1:sides)
        results <- numeric()
        for (i in 1:x) {
                results[i] <- mean(sample(dice, n, replace = TRUE))
        }
        xlabel <- paste(n, "-Dice Average", sep = "")
        title <- paste(x, " ", sides, "-sided dice rolls", sep = "")
        rolldist <<- results
        hist(results, xlab = xlabel, xlim = range(1:sides), main = title,
             col = "deepskyblue")
}
