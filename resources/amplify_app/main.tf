module "localhost_amplify_app" {
  source           = "../../modules/amplify_app"
  amplify_app_name = "localhost_amplify_app"
  repository_url   = "https://github.com/aditya-sridhar/simple-reactjs-app"
}
