library(plumber)

function(msg="") {
  list(msg = paste0("message is", msg, ""))  
}

function() {
  rand <- norm(100)
  hist(rand)
}