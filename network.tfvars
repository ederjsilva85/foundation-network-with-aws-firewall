#--------- GERAL ---------

az_a  			   = "us-east-1a"

az_b			   = "us-east-1b"			

#--------- VPC INSPECTION ---------

tag_name_vpc_inspection		   	   = "vpc-us-east-1-inspection-noprod-01"

cidr_block_vpc_inspection 		   = "10.0.194.0/25"


#--------- SUBNETS INSPECTION ---------

cidr_block_inspection_snet_tgw_aza	   	           = "10.0.194.0/28"

tag_name_inspection_snet_tgw_aza 			       = "snet-us-east-1-inspection-noprod-tgw-aza-01"

cidr_block_inspection_snet_firewall_aza             = "10.0.194.16/28"

tag_name_inspection_snet_firewall_aza               = "snet-us-east-1-inspection-noprod-firewall-aza-01"

cidr_block_inspection_snet_tgw_azb	   	            = "10.0.194.32/28"

tag_name_inspection_snet_tgw_azb 			        = "claroti-snet-us-east-1-inspection-noprod-tgw-azb-01"

cidr_block_inspection_snet_firewall_azb             = "10.0.194.48/28"

tag_name_inspection_snet_firewall_azb               = "snet-us-east-1-inspection-noprod-firewall-azb-01"


#--------- ROUTING TABLE VPC INSPECTION ---------


tag_name_rt_inspection_snet_tgw_aza                           = "rt-us-east-1-inspection-noprod-tgw-aza-01"
                           
tag_name_rt_inspection_snet_firewall_aza                      = "rt-us-east-1-inspection-noprod-firewall-aza-01"                                      

tag_name_rt_inspection_snet_tgw_azb   			    		  = "rt-us-east-1-inspection-noprod-tgw-azb-01"                              

tag_name_rt_inspection_snet_firewall_azb 	          		  = "rt-us-east-1-inspection-noprod-firewall-azb-01" 
	

#--------- VPC INBOUND ---------

tag_name_vpc_inbound		   	   = "vpc-us-east-1-inbound-noprod-01"

cidr_block_vpc_inbound 		           = "10.0.192.0/23"


#--------- SUBNETS INBOUND ---------

cidr_block_inbound_snet_tgw_aza	   	    		       = "10.0.192.0/28"

tag_name_inbound_snet_tgw_aza 			  				 = "snet-us-east-1-inbound-noprod-tgw-aza-01"

cidr_block_inbound_snet_firewall_aza                    = "10.0.192.16/28"

tag_name_inbound_snet_firewall_aza                      = "snet-us-east-1-inbound-noprod-firewall-aza-01"

cidr_block_inbound_snet_pub_aza                         = "10.0.193.0/25"

tag_name_inbound_snet_pub_aza                           = "snet-us-east-1-inbound-noprod-pub-aza-01"

cidr_block_inbound_snet_tgw_azb	   	     		        = "10.0.192.32/28"

tag_name_inbound_snet_tgw_azb 							= "snet-us-east-1-inbound-noprod-tgw-azb-01"

cidr_block_inbound_snet_firewall_azb                    = "10.86.192.48/28"

tag_name_inbound_snet_firewall_azb                      = "snet-us-east-1-inbound-noprod-firewall-azb-01"

cidr_block_inbound_snet_pub_azb                         = "10.86.193.128/25"

tag_name_inbound_snet_pub_azb                           = "snet-us-east-1-inbound-noprod-pub-azb-01"


#--------- ROUTING TABLE VPC INBOUND ---------

tag_name_rt_inbound_snet_tgw_aza                           = "rt-us-east-1-inbound-noprod-tgw-aza-01"
                           
tag_name_rt_inbound_snet_firewall_aza                      = "rt-us-east-1-inbound-noprod-firewall-aza-01"                           

tag_name_rt_inbound_snet_pub_aza                           = "rt-us-east-1-inbound-noprod-pub-aza-01"                               

tag_name_rt_inbound_snet_tgw_azb   			      		  = "rt-us-east-1-inbound-noprod-tgw-azb-01"                              

tag_name_rt_inbound_snet_firewall_azb 	                  = "rt-us-east-1-inbound-noprod-firewall-azb-01" 
			                              
tag_name_rt_inbound_snet_pub_azb 			              = "rt-us-east-1-inbound-noprod-pub-azb-01"  

#--------- INTERNET GATEWAY VPC INBOUND ---------

tag_name_igw_vpc_inbound_noprod                               =  "igw-vpc-us-east-1-inbound-noprod"


#--------- NAT GATEWAY VPC INBOUND ---------

tag_name_eip_natgw_inbound_noprod_01                                  = "eip-natgw-vpc-us-east-1-inbound-noprod-aza"

tag_name_eip_natgw_inbound_noprod_02                                  = "eip-natgw-vpc-us-east-1-inbound-noprod-azb"

tag_name_natgw_inbound_noprod_aza                                     = "natgw-vpc-us-east-1-inbound-noprod-aza"

tag_name_natgw_inbound_noprod_azb                                     = "natgw-vpc-us-east-1-inbound-noprod-azb"

#--------- VPC OUTBOUND ---------

tag_name_vpc_outbound		   	 					  = "vpc-us-east-1-outbound-noprod-01"

"cidr_block_vpc_outbound"		  			         = "10.0.194.0/25"


#--------- SUBNETS OUTBOUND ---------

cidr_block_outbound_snet_tgw_aza	   	           = "10.0.194.128/28"

tag_name_outbound_snet_tgw_aza 			   = "snet-us-east-1-outbound-noprod-tgw-aza-01"

cidr_block_outbound_snet_firewall_aza                    = "10.0.194.144/28"

tag_name_outbound_snet_firewall_aza                      = "snet-us-east-1-outbound-noprod-firewall-aza-01"

cidr_block_outbound_snet_pub_aza                         = "10.0.194.160/28"

tag_name_outbound_snet_pub_aza                           = "snet-us-east-1-outbound-noprod-pub-aza-01"

cidr_block_outbound_snet_tgw_azb	   	           = "10.0.194.174/28"

tag_name_outbound_snet_tgw_azb 			   = "snet-us-east-1-outbound-noprod-tgw-azb-01"

cidr_block_outbound_snet_firewall_azb                    = "10.0.194.192/28"

tag_name_outbound_snet_firewall_azb                      = "snet-us-east-1-outbound-noprod-firewall-azb-01"

cidr_block_outbound_snet_pub_azb                         = "10.0.194.208/28"

tag_name_outbound_snet_pub_azb                           = "snet-us-east-1-outbound-noprod-pub-azb-01"


#--------- ROUTING TABLE VPC OUTBOUND ---------


tag_name_rt_outbound_snet_tgw_aza                           = "claroti-rt-us-east-1-outbound-noprod-tgw-aza-01"
                           
tag_name_rt_outbound_snet_firewall_aza                      = "claroti-rt-us-east-1-outbound-noprod-firewall-aza-01"                           

tag_name_rt_outbound_snet_pub_aza                           = "claroti-rt-us-east-1-outbound-noprod-pub-aza-01"                               

tag_name_rt_outbound_snet_tgw_azb   			            = "claroti-rt-us-east-1-outbound-noprod-tgw-azb-01"                              

tag_name_rt_outbound_snet_firewall_azb 	                    = "claroti-rt-us-east-1-outbound-noprod-firewall-azb-01" 
			                              
tag_name_rt_outbound_snet_pub_azb 			                = "claroti-rt-us-east-1-outbound-noprod-pub-azb-01"  

#--------- INTERNET GATEWAY VPC OUTBOUND ---------

tag_name_igw_vpc_outbound_noprod                            =  "claroti-igw-vpc-us-east-1-outbound-noprod"

#--------- NAT GATEWAY VPC OUTBOUND ---------

tag_name_eip_natgw_outbound_noprod_01                                  = "claroti-eip-natgw-vpc-us-east-1-outbound-noprod-aza"

tag_name_eip_natgw_outbound_noprod_02                                  = "claroti-eip-natgw-vpc-us-east-1-outbound-noprod-azb"

tag_name_natgw_outbound_noprod_aza                                     = "claroti-natgw-vpc-us-east-1-outbound-noprod-aza"

tag_name_natgw_outbound_noprod_azb                                     = "claroti-natgw-vpc-us-east-1-outbound-noprod-azb"


#--------- TGW NOPROD ---------

tag_name_tgw_noprod                                                = "claroti-tgw-us-east-1-noprod"

tag_name_tgw_att_inspection_noprod                                 = "claroti-attach-tgw-vpc-us-east-1-inspection-noprod"

tag_name_tgw_att_outbound_noprod                                   = "claroti-attach-tgw-vpc-us-east-1-outbound-noprod"

tag_name_tgw_att_inbound_noprod                                    = "claroti-attach-tgw-vpc-us-east-1-inbound-noprod"


