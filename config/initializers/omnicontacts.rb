# require 'omnicontacts'
# Rails.application.middleware.use OmniContacts::Builder do
# 	importer :gmail, '508422697501-9q1tvdoibe9491s4fq4vjb1tuveq3cj7.apps.googleusercontent.com', 'c4lNrvbt0KdnfzrYBEQgT0d6', {:redirect_path => '/users/gmail/contact_callback'}
# end

OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '508422697501-5gs0jhknie7jfqa8g2ootres5307kgoc.apps.googleusercontent.com', 'lUWPnjK1qJjZt2Ykst0-C0z-', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end