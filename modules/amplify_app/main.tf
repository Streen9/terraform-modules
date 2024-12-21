resource "aws_amplify_app" "amplify_app" {
  name       = var.amplify_app_name
  repository = var.repository_url

  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 0.1
    frontend:
      phases:
        preBuild:
          commands:
            - npm install
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: build
        files:
          - '**/*'
      cache:
        paths:
          - node_modules/**/*
  EOT

  # The default rewrites and redirects added by the Amplify Console.
  custom_rule {
    source = "/<*>"
    status = "404"
    target = "/index.html"
  }

  custom_headers = <<-EOT
    customHeaders:
      - pattern: '**'
        headers:
          - key: 'Strict-Transport-Security'
            value: 'max-age=31536000; includeSubDomains'
          - key: 'X-Frame-Options'
            value: 'SAMEORIGIN'
          - key: 'X-XSS-Protection'
            value: '1; mode=block'
          - key: 'X-Content-Type-Options'
            value: 'nosniff'
          - key: 'Content-Security-Policy'
            value: "default-src 'self'"
  EOT

  environment_variables = {
    ENV = "test"
  }
}
