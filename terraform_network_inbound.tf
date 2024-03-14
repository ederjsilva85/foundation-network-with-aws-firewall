#--------------------------------------------------------------------------------#
#   TERRAFORM PARA CRIAÇÃO DE UMA FUNDAÇÃO DE REDE PARA O PROJETO AWS FIREWALL   #
#--------------------------------------------------------------------------------#

######## VPC INBOUND ########  

resource "aws_vpc" "vpc_inbound_noprod" {                       
    cidr_block = var.cidr_block_vpc_inbound                               
    enable_dns_hostnames = true                                
     tags = {
    Name = var.tag_name_vpc_inbound           
  }
}


######## SNETS VPC INBOUND ######## 

resource "aws_subnet" "snet_inbound_tgw_aza" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_tgw_aza                  
  availability_zone = var.az_a               
  tags = {
    Name = var.tag_name_inbound_snet_tgw_aza
  }

}

resource "aws_subnet" "snet_inbound_firewall_aza" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_firewall_aza                  
  availability_zone = var.az_a               
  tags = {
    Name = var.tag_name_inbound_snet_firewall_aza
  }

}

resource "aws_subnet" "snet_inbound_pub_aza" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_pub_aza                  
  availability_zone = var.az_a               
  tags = {
    Name = var.tag_name_inbound_snet_pub_aza 
  }

}


resource "aws_subnet" "snet_inbound_tgw_azb" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_tgw_azb                  
  availability_zone = var.az_b               
  tags = {
    Name = var.tag_name_inbound_snet_tgw_azb
  }

}

resource "aws_subnet" "snet_inbound_firewall_azb" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_firewall_azb                 
  availability_zone = var.az_b              
  tags = {
    Name = var.tag_name_inbound_snet_firewall_azb
  }

}

resource "aws_subnet" "snet_inbound_pub_azb" {         
vpc_id     = aws_vpc.vpc_inbound_noprod.id     
  cidr_block = var.cidr_block_inbound_snet_pub_azb                  
  availability_zone = var.az_b               
  tags = {
    Name = var.tag_name_inbound_snet_pub_azb
  }

}


######## ROUTING TABLES VPC INBOUND ######## 

resource "aws_route_table" "rt_inbound_tgw_aza" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_tgw_aza           
  }
}

resource "aws_route_table" "rt_inbound_firewall_aza" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_firewall_aza           
  }
}

resource "aws_route_table" "rt_inbound_pub_aza" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_pub_aza           
  }
}


resource "aws_route_table" "rt_inbound_tgw_azb" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_tgw_azb           
  }
}

resource "aws_route_table" "rt_inbound_firewall_azb" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_firewall_azb           
  }
}

resource "aws_route_table" "rt_inbound_pub_azb" { 
  vpc_id = aws_vpc.vpc_inbound_noprod.id                
  tags = {
    Name = var.tag_name_rt_inbound_snet_pub_azb           
  }
}


######## RT-SNET VPC inbound ASSOCIATION ######## 

resource "aws_route_table_association" "rt_assoc_snet_inbound_tgw_aza" { 
  subnet_id      = aws_subnet.snet_inbound_tgw_aza.id                         
  route_table_id = aws_route_table.rt_inbound_tgw_aza.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inbound_firewall_aza" { 
  subnet_id      = aws_subnet.snet_inbound_firewall_aza.id                         
  route_table_id = aws_route_table.rt_inbound_firewall_aza.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inbound_pub_aza" { 
  subnet_id      = aws_subnet.snet_inbound_pub_aza.id                         
  route_table_id = aws_route_table.rt_inbound_pub_aza.id         
}

resource "aws_route_table_association" "rt_assoc_snet_inbound_tgw_azb" { 
  subnet_id      = aws_subnet.snet_inbound_tgw_azb.id                         
  route_table_id = aws_route_table.rt_inbound_tgw_azb.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inbound_firewall_azb" { 
  subnet_id      = aws_subnet.snet_inbound_firewall_azb.id                         
  route_table_id = aws_route_table.rt_inbound_firewall_azb.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inbound_pub_azb" { 
  subnet_id      = aws_subnet.snet_inbound_pub_azb.id                         
  route_table_id = aws_route_table.rt_inbound_pub_azb.id         
}



######## INTERNET GATEWAY INBOUND ######## 


resource "aws_internet_gateway" "igw_vpc_inbound_noprod" {    
  vpc_id = aws_vpc.vpc_inbound_noprod.id                     
  tags = {
    Name = var.tag_name_igw_vpc_inbound_noprod                                        
  }
}


######## NAT GATEWAY INBOUND ######## 


resource "aws_eip" "eip_natgw_inbound_noprod_01" {          
tags = {
    Name = var.tag_name_eip_natgw_inbound_noprod_01                        
  }
}

resource "aws_eip" "eip_natgw_inbound_noprod_02" {          
tags = {
    Name = var.tag_name_eip_natgw_inbound_noprod_02                        
  }
}

resource "aws_nat_gateway" "natgw_inbound_noprod_aza" {    
  allocation_id = aws_eip.eip_natgw_inbound_noprod_01.id 
  subnet_id   = aws_subnet.snet_inbound_pub_aza.id   
  tags = {
    Name = var.tag_name_natgw_inbound_noprod_aza                          
  }
}

resource "aws_nat_gateway" "natgw_inbound_noprod_azb" {    
  allocation_id = aws_eip.eip_natgw_inbound_noprod_02.id 
  subnet_id   = aws_subnet.snet_inbound_pub_azb.id   
  tags = {
    Name = var.tag_name_natgw_inbound_noprod_azb                          
  }
}

