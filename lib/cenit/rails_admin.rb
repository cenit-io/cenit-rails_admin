require 'cenit/rails_admin/version'
require 'cenit/rails_admin/engine'

module Cenit
  module RailsAdmin

    Cenit['rails_admin:route:draw:listener'] = Engine.to_s

  end
end
