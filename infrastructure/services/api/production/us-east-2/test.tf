module "test" {
  ## This ensures that the SQS queue is not FIFO
  fifo = false

  ## This ensures that content-based deduplication is not enabled
  content_based_deduplication = false

  ## The delay in seconds before a message can be received
  delay_seconds = 0

  ## Duration (in seconds) that the received messages are retained in the queue
  message_retention_seconds = 345600

  ## The duration (in seconds) that the ReceiveMessage action call waits for a message to arrive
  receive_wait_time_seconds = 0

  ## Source git repository for the module with the appropriate URL format
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"

  ## Environment name
  env_name = "production-us-east-2"

  ## Layer name for the environment
  layer_name = "production-us-east-2"

  ## Name of the module
  module_name = "test"
}