original_diff = 55/58 - 30/52
print(original_diff)

arr = c(rep(1, 85), rep(0, 25))
print(length(arr))


arr_diff = numeric(10000)
count = 0;

for(i in 1:10000){
  shuffled = sample(arr)
  d = head(shuffled, -52)
  h = tail(shuffled, 52)
  
  
  sum_d = sum(d)
  p_d = sum_d/52
  
  sum_h = sum(h)
  p_h = sum_h/58
  
  diff = p_h - p_d
  arr_diff[i] = diff
  if(diff >= original_diff){
    count = count + 1
  }
}
hist(arr_diff)

p_val = count/10000
print(p_val)

