resource "aws_flow_log" "pc_flow" {
  iam_role_arn    = var.flow_role_arn
  log_destination = aws_cloudwatch_log_group.pc_flow_log.arn
  traffic_type    = "ALL"
  vpc_id          = aws_vpc.tpot.id
}

resource "aws_cloudwatch_log_group" "pc_flow_log" {
  name = "tpot_flow_log"
}