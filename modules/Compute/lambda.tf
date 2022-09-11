resource "aws_lambda_function" "function" {
	function_name = "test_function"
	role = "test_role"
	runtime = "python2.7"
}