
#--------- Geral ---------

variable "az_a"							    { type = string }

variable "az_b"							    { type = string }

#--------- VPC INSPECTION ---------

variable "tag_name_vpc_inspection"                                             { type = string }

variable "cidr_block_vpc_inspection"                                   { type = string }


#--------- SUBNETS INSPECTION ---------

variable "cidr_block_inspection_snet_tgw_aza"					       { type = string }

variable "tag_name_inspection_snet_tgw_aza"					           { type = string }

variable "cidr_block_inspection_snet_firewall_aza"				       { type = string }

variable "tag_name_inspection_snet_firewall_aza"				       { type = string }

variable "cidr_block_inspection_snet_tgw_azb"					       { type = string }

variable "tag_name_inspection_snet_tgw_azb"	                           { type = string }

variable "cidr_block_inspection_snet_firewall_azb"				       { type = string }

variable "tag_name_inspection_snet_firewall_azb"				       { type = string }


#--------- ROUTING TABLE VPC INSPECTION ---------

variable "tag_name_rt_inspection_snet_tgw_aza"                                 { type = string }

variable "tag_name_rt_inspection_snet_firewall_aza"                            { type = string }

variable "tag_name_rt_inspection_snet_tgw_azb"                                 { type = string }

variable "tag_name_rt_inspection_snet_firewall_azb"                            { type = string }

   
#-------------------------------------------------------------------------------------------------------------



#--------- VPC INBOUND ---------

variable "tag_name_vpc_inbound"                                             { type = string }

variable "cidr_block_vpc_inbound"                                           { type = string }

#--------- SUBNETS INBOUND ---------

variable "cidr_block_inbound_snet_tgw_aza"					       { type = string }

variable "tag_name_inbound_snet_tgw_aza"					       { type = string }

variable "cidr_block_inbound_snet_firewall_aza"				              { type = string }

variable "tag_name_inbound_snet_firewall_aza"				              { type = string }

variable "cidr_block_inbound_snet_pub_aza"				              { type = string }

variable "tag_name_inbound_snet_pub_aza"				              { type = string }

variable "cidr_block_inbound_snet_tgw_azb"					       { type = string }

variable "tag_name_inbound_snet_tgw_azb"					       { type = string }

variable "cidr_block_inbound_snet_firewall_azb"				              { type = string }

variable "tag_name_inbound_snet_firewall_azb"				              { type = string }

variable "cidr_block_inbound_snet_pub_azb"				              { type = string }

variable "tag_name_inbound_snet_pub_azb"				              { type = string }


#--------- ROUTING TABLE VPC INBOUND ---------

variable "tag_name_rt_inbound_snet_tgw_aza"                                 { type = string }

variable "tag_name_rt_inbound_snet_firewall_aza"                            { type = string }

variable "tag_name_rt_inbound_snet_pub_aza"                                 { type = string }

variable "tag_name_rt_inbound_snet_tgw_azb"                                 { type = string }

variable "tag_name_rt_inbound_snet_firewall_azb"                            { type = string }

variable "tag_name_rt_inbound_snet_pub_azb"                                 { type = string }


#--------- INTERNET GATEWAY VPC INBOUND ---------

variable "tag_name_igw_vpc_inbound_noprod"                                 { type = string }


#--------- NAT GATEWAY VPC INBOUND ---------

variable "tag_name_eip_natgw_inbound_noprod_01"                                  { type = string }

variable "tag_name_eip_natgw_inbound_noprod_02"                                  { type = string }

variable "tag_name_natgw_inbound_noprod_aza"                                      { type = string }

variable "tag_name_natgw_inbound_noprod_azb"                                      { type = string }


#--------- VPC OUTBOUND ---------

variable "tag_name_vpc_outbound"                                             { type = string }

variable "cidr_block_vpc_outbound"                                           { type = string }


#--------- SUBNETS OUTBOUND ---------

variable "cidr_block_outbound_snet_tgw_aza"					       { type = string }

variable "tag_name_outbound_snet_tgw_aza"					       { type = string }

variable "cidr_block_outbound_snet_firewall_aza"				              { type = string }

variable "tag_name_outbound_snet_firewall_aza"				              { type = string }

variable "cidr_block_outbound_snet_pub_aza"				              { type = string }

variable "tag_name_outbound_snet_pub_aza"				              { type = string }

variable "cidr_block_outbound_snet_tgw_azb"					       { type = string }

variable "tag_name_outbound_snet_tgw_azb"					       { type = string }

variable "cidr_block_outbound_snet_firewall_azb"				              { type = string }

variable "tag_name_outbound_snet_firewall_azb"				              { type = string }

variable "cidr_block_outbound_snet_pub_azb"				              { type = string }

variable "tag_name_outbound_snet_pub_azb"				              { type = string }


#--------- ROUTING TABLE VPC OUTBOUND ---------

variable "tag_name_rt_outbound_snet_tgw_aza"                                 { type = string }

variable "tag_name_rt_outbound_snet_firewall_aza"                            { type = string }

variable "tag_name_rt_outbound_snet_pub_aza"                                 { type = string }

variable "tag_name_rt_outbound_snet_tgw_azb"                                 { type = string }

variable "tag_name_rt_outbound_snet_firewall_azb"                            { type = string }

variable "tag_name_rt_outbound_snet_pub_azb"                                 { type = string }


#--------- INTERNET GATEWAY VPC OUTBOUND ---------

variable "tag_name_igw_vpc_outbound_noprod"                                 { type = string }


#--------- NAT GATEWAY VPC OUTBOUND ---------

variable "tag_name_eip_natgw_outbound_dev_01"                                  { type = string }

variable "tag_name_eip_natgw_outbound_dev_02"                                  { type = string }

variable "tag_name_natgw_outbound_dev_aza"                                      { type = string }

variable "tag_name_natgw_outbound_dev_azb"                                      { type = string }


#--------- TGW NOPROD ---------

variable "tag_name_tgw_noprod"                                             { type = string }

variable "tag_name_tgw_att_inspection_noprod"                                 { type = string }

variable "tag_name_tgw_att_outbound_noprod"                                 { type = string }

variable "tag_name_tgw_att_inbound_noprod"                                 { type = string }
