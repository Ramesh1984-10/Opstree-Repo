output "vpc" {
value = aws_vpc.main.id 
}



output "Internet_Gateway" {
   value = aws_internet_gateway.IGW.id
  
}


output "Nat_Gateway" {
   value = aws_nat_gateway.nat.id  
}

