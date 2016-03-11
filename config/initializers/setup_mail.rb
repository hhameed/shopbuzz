ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => 'shopbuzz.noreply@gmail.com',
    :password             => 'sep12345',
    :authentication       => "plain",
    :enable_starttls_auto => true
}


