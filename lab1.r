# Please use this source file to complete the lab1 assignment.  
# To submit, commit and push your source file.
#
# There is information in our M&S Bootcamp persistent WebCourse
# about using Git
#   https://webcourses.ucf.edu/courses/1249560
#
# You can use git directly from RStudio if you want!  Here is more
# information about that:
#   https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html
#
# You are *not permitted* to share your code with others for this 
# assignment.
#

#  vvvvv Put your code down here vvvvvv
# Part 2:
lab1_data <- read.table("./lab1.dat", header=TRUE, sep=",", comment.char="")

# Part 3:
print(colnames(lab1_data))
print(summary(lab1_data))

# Part 4:
factor_winetype <- factor(lab1_data$WineType)
print(factor_winetype)
print(levels(factor_winetype))
# print(summary(factor_winetype))
print(table(factor_winetype))

# Part 5:
color_intensity <- lab1_data$ColorIntensity
print(mean(color_intensity))
print(var(color_intensity))
print(sd(color_intensity))
print(t.test(color_intensity)) # computes 95% by default

# Part 6:
hue_var_class1 <- subset(lab1_data$Hue, factor_winetype == "Class1")
print(var(hue_var_class1))
print(sd(hue_var_class1))
print(t.test(lab1_data$Hue))
print(t.test(hue_var_class1))

# Part 7:
print(536-120)
print(3 * 7)
print(12/3)
print(log2(128))
print(9^3)


# Part 8:
hue_into_colorintesity <- lab1_data$Hue * lab1_data$ColorIntensity
print(sum(hue_into_colorintesity))


# Part 9:
print(runif(10, min = 0.0, max = 10.0))
print(rnorm(10, mean = 1.0, sd = 0.3))


# Part 10:

