resource "aws_networkfirewall_firewall" "outbound_firewall_noprod" {
  name                = "aws-firewall-us-east-1-outbound-noprod"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.outbound_firewall_policy_noprod.arn
  vpc_id              = aws_vpc.vpc_outbound_noprod.id
 
  subnet_mapping {
    subnet_id = aws_subnet.snet_outbound_firewall_aza.id
  }
 
  subnet_mapping {
    subnet_id = aws_subnet.snet_outbound_firewall_azb.id
  }
}
 
resource "aws_networkfirewall_firewall_policy" "outbound_firewall_policy_noprod" {
  name = "aws-fw-policy-us-east-1-outbound-noprod"
 
  firewall_policy {
    stateless_default_actions          = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:pass"]
  }
 
}
