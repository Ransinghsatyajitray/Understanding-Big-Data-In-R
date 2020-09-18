# The beauty of R is that it is built for performing data analysis. The downside is that sometimes R can be slow, thereby obstructing our analysis. For this reason, it is essential to become familiar with the main techniques for speeding up your analysis, so you can reduce computational time and get insights as quickly as possible.

version


# Benchmarking:

# system.time(function(....))
# user time is the CPU time charged for execution of the user instructions
# system time is the CPU time charged for execution by the system on behalf of the calling process

# system time is taken generally considered


library(microbenchmark)
n <- 1e8

microbenchmark(seq(n),times=10)



# Load the benchmarkme package
library(benchmarkme)

# Assign the variable ram to the amount of RAM on this machine
ram <- get_ram()
ram

# Assign the variable cpu to the cpu specs
cpu <- get_cpu()
cpu


# The benchmarkme package allows you to run a set of standardized benchmarks and compare your results to other users. 


# Run the io benchmark
res <- benchmark_io(runs = 1, size = 50)  # Find the time it takes to read and write a 5 MB file. 

# Plot the results
plot(res)





# Memory Allocation:
# growing a vector takes a lot of time

# Importance of vectorizing your code


mtcars_df <- mtcars
mtcars_matrix <- data.matrix(mtcars)

microbenchmark(mtcars_df,mtcars_matrix,times=10)
microbenchmark(mtcars_df[,1],mtcars_matrix[,1],times=10)



# What is code profiling
library("profvis")


profvis({
  data(movies,package = "ggplot2movies")
  brave_heart <- movies[7288,]
  plot(movies$year, movies$rating, xlab = "Year", ylab = "Rating")
})



