resource "aws_lambda_function" "function" {
	function_name = "test_function"
	runtime = "python3.9"
}