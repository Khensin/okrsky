configatron.secret_key_base = '2bd450959dad5e41f09c976e3ec9c91e5d7bb6f12e8774953c778389f984fc2b0dc64357e7e04498c55b2a03cb04c255fb2b864152fa9089143484c0703cac08'
configatron.our_email = "okrsky@svobodni.cz"
configatron.our_email_password = "heslo"
configatron.admin_email = "kubicek@svobodni.cz"

Okrsky::Application.config.action_mailer.smtp_settings = {
    address:              'mail.svobodni.cz',
    port:                 25,
    domain:               'svobodni.cz',
    user_name:            configatron.our_email,
    password:             configatron.our_email_password,
    authentication:       'login',
    openssl_verify_mode:  'none',
    enable_starttls_auto: true
}
