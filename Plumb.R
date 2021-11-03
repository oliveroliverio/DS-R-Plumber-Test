library(plumber)

#* @apiTitle Plumber Example
#* @param msg The message to echo
#* @get /echo

function(msg="") {
  list(msg = paste0("message is", msg, ""))  
}

#* Plot a histogram
#* @serializer png
#* @get /plot

function() {
  rand <- norm(100)
  hist(rand)
}

#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum
function(a, b) {
  as.numeric(a) + as.numeric(b)
}