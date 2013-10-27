#Archivo de Configuración para Facebook Connect
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['590665314327187'], ENV['aec6e4a05c317567ae4606f65fe25c79']
  provider :facebook, '590665314327187', 'aec6e4a05c317567ae4606f65fe25c79'
end
