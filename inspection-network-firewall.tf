resource "aws_networkfirewall_firewall" "inspection_firewall_noprod" {
  name                = "claroti-aws-firewall-us-east-1-inspection-noprod"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.inspection_firewall_policy_noprod.arn
  vpc_id              = aws_vpc.vpc_inspection_noprod.id
 
  subnet_mapping {
    subnet_id = aws_subnet.snet_inspection_firewall_aza.id
  }
 
  subnet_mapping {
    subnet_id = aws_subnet.snet_inspection_firewall_azb.id
  }
}
 
resource "aws_networkfirewall_firewall_policy" "inspection_firewall_policy_noprod" {
  name = "claroti-aws-fw-policy-us-east-1-inspection-noprod"
 
  firewall_policy {
    stateless_default_actions          = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:pass"]
  }
 
}