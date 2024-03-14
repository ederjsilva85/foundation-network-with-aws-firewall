#--------------------------------------------------------------------------------#
#       TERRAFORM PARA CRIAÇÃO DE UMA FUNDAÇÃO DE REDE NO AMBIENTE AWS           #
#--------------------------------------------------------------------------------#

######## VPC INSPECTION ########  

resource "aws_vpc" "vpc_inspection_noprod" {                       
    cidr_block = var.cidr_block_vpc_inspection                               
    enable_dns_hostnames = true                                
     tags = {
    Name = var.tag_name_vpc_inspection           
  }
  }


######## SNETS VPC INSPECTION ######## 

resource "aws_subnet" "snet_inspection_tgw_aza" {         
vpc_id     = aws_vpc.vpc_inspection_noprod.id     
  cidr_block = var.cidr_block_inspection_snet_tgw_aza                  
  availability_zone = var.az_a               
  tags = {
    Name = var.tag_name_inspection_snet_tgw_aza
  }

}

resource "aws_subnet" "snet_inspection_firewall_aza" {         
vpc_id     = aws_vpc.vpc_inspection_noprod.id     
  cidr_block = var.cidr_block_inspection_snet_firewall_aza                  
  availability_zone = var.az_a               
  tags = {
    Name = var.tag_name_inspection_snet_firewall_aza
  }

}


resource "aws_subnet" "snet_inspection_tgw_azb" {         
vpc_id     = aws_vpc.vpc_inspection_noprod.id     
  cidr_block = var.cidr_block_inspection_snet_tgw_azb                  
  availability_zone = var.az_b               
  tags = {
    Name = var.tag_name_inspection_snet_tgw_azb
  }

}

resource "aws_subnet" "snet_inspection_firewall_azb" {         
vpc_id     = aws_vpc.vpc_inspection_noprod.id     
  cidr_block = var.cidr_block_inspection_snet_firewall_azb                 
  availability_zone = var.az_b              
  tags = {
    Name = var.tag_name_inspection_snet_firewall_azb
  }

}


######## RT VPC INSPECTION ######## 

resource "aws_route_table" "rt_inspection_tgw_aza" { 
  vpc_id = aws_vpc.vpc_inspection_noprod.id                
  tags = {
    Name = var.tag_name_rt_inspection_snet_tgw_aza           
  }
}

resource "aws_route_table" "rt_inspection_firewall_aza" { 
  vpc_id = aws_vpc.vpc_inspection_noprod.id                
  tags = {
    Name = var.tag_name_rt_inspection_snet_firewall_aza           
  }
}


resource "aws_route_table" "rt_inspection_tgw_azb" { 
  vpc_id = aws_vpc.vpc_inspection_noprod.id                
  tags = {
    Name = var.tag_name_rt_inspection_snet_tgw_azb           
  }
}

resource "aws_route_table" "rt_inspection_firewall_azb" { 
  vpc_id = aws_vpc.vpc_inspection_noprod.id                
  tags = {
    Name = var.tag_name_rt_inspection_snet_firewall_azb           
  }
}


######## RT-SNET VPC INSPECTION ASSOCIATION ######## 

resource "aws_route_table_association" "rt_assoc_snet_inspection_tgw_aza" { 
  subnet_id      = aws_subnet.snet_inspection_tgw_aza.id                         
  route_table_id = aws_route_table.rt_inspection_tgw_aza.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inspection_firewall_aza" { 
  subnet_id      = aws_subnet.snet_inspection_firewall_aza.id                         
  route_table_id = aws_route_table.rt_inspection_firewall_aza.id         
}


resource "aws_route_table_association" "rt_assoc_snet_inspection_tgw_azb" { 
  subnet_id      = aws_subnet.snet_inspection_tgw_azb.id                         
  route_table_id = aws_route_table.rt_inspection_tgw_azb.id         
}

resource "aws_route_table_association" "rt_assoc_snet_inspection_firewall_azb" { 
  subnet_id      = aws_subnet.snet_inspection_firewall_azb.id                         
  route_table_id = aws_route_table.rt_inspection_firewall_azb.id         
}