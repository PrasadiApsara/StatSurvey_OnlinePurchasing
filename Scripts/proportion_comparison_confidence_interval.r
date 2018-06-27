#finding confidence intervals

male = c(rep(1, 55), rep(0, 3))
female = c(rep(1, 30), rep(0, 22))

original_diff = 55/58 - 30/52
print(original_diff)

bootstrap_array = numeric(10000)
for(i in 1:10000){
  bootstrap_male = sample(male, 58, replace = TRUE)
  bootstrap_female = sample(female, 52, replace = TRUE)
  
  sum_male = sum(bootstrap_male)
  p_male = sum_male/58
  
  sum_female = sum(bootstrap_female)
  p_female = sum_female/52
  
  diff = p_male - p_female
  bootstrap_array[i] = diff
}
hist(bootstrap_array)
sd_proportion = sd(bootstrap_array)

ul = original_diff + (2 * sd_proportion)
ll = original_diff - (2 * sd_proportion)


print(ul)
print(ll)

