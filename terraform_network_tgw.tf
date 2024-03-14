######## CRIAR TRANSIT GATEWAY NOPROD ######## 

resource "aws_ec2_transit_gateway" "tgw_noprod" {
  description                     = "Transit Gateway para o ambiente de NoProd Região Virginia - us-east-1"
  default_route_table_association = "disable"
  default_route_table_propagation = "disable"
  tags                            = {
    Name                          = var.tag_name_tgw_noprod
  }
}


######## CRIAR TRANSIT GATEWAY ATTACHMENTS ######## 

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_att_vpc_inspection_noprod" {
  subnet_ids         = [aws_subnet.snet_inspection_tgw_aza.id, aws_subnet.snet_inspection_tgw_azb.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw_noprod.id
  vpc_id             = aws_vpc.vpc_inspection_noprod.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags               = {
    Name             = var.tag_name_tgw_att_inspection_noprod
      }
  depends_on = ["aws_ec2_transit_gateway.tgw_noprod"]
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_att_vpc_inbound_noprod" {
  subnet_ids         = [aws_subnet.snet_inbound_tgw_aza.id, aws_subnet.snet_inbound_tgw_azb.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw_noprod.id
  vpc_id             = aws_vpc.vpc_inbound_noprod.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags               = {
    Name             = var.tag_name_tgw_att_inbound_noprod
      }
  depends_on = ["aws_ec2_transit_gateway.tgw_noprod"]
}

resource "aws_ec2_transit_gateway_vpc_attachment" "tgw_att_vpc_outbound_noprod" {
  subnet_ids         = [aws_subnet.snet_outbound_tgw_aza.id, aws_subnet.snet_outbound_tgw_azb.id]
  transit_gateway_id = aws_ec2_transit_gateway.tgw_noprod.id
  vpc_id             = aws_vpc.vpc_outbound_noprod.id
  transit_gateway_default_route_table_association = false
  transit_gateway_default_route_table_propagation = false
  tags               = {
    Name             = var.tag_name_tgw_att_outbound_noprod
      }
  depends_on = ["aws_ec2_transit_gateway.tgw_noprod"]
}

######## CRIAR TRANSIT GATEWAY ROUTE TABLE ########
resource "aws_ec2_transit_gateway_route_table" "tgw_rt_spoke_noprod" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw_noprod.id
}

resource "aws_ec2_transit_gateway_route_table" "tgw_rt_firewall_noprod" {
  transit_gateway_id = aws_ec2_transit_gateway.tgw_noprod.id
}


######## CRIAR TRANSIT GATEWAY ROUTE TABLE ASSOCIATION ########

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rt_assoc_spoke_noprod" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_att_vpc_inbound_noprod.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt_spoke_noprod.id
  }

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rt_assoc_firewall_outbound_noprod" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_att_vpc_outbound_noprod.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt_firewall_noprod.id
  }

resource "aws_ec2_transit_gateway_route_table_association" "tgw_rt_assoc_firewall_inspection_noprod" {
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_vpc_attachment.tgw_att_vpc_inspection_noprod.id
  transit_gateway_route_table_id = aws_ec2_transit_gateway_route_table.tgw_rt_firewall_noprod.id
  }