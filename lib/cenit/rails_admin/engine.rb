module Cenit
  module RailsAdmin
    class Engine < ::Rails::Engine
      isolate_namespace Cenit::RailsAdmin

      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( cenit/**/* )
      end

      def self.on_route_draw(routing_mapper)
        routing_mapper.instance_eval do

          root to: 'rails_admin/main#dashboard'

          get ':group/dashboard', to: 'rails_admin/main#dashboard', as: :dashboard_group
          get 'dashboard', to: 'rails_admin/main#dashboard'
          get 'terms', to: 'rails_admin/main#dashboard'

          get 'remote_shared_collection/:id', to: 'rails_admin/main#remote_shared_collection'
          get 'remote_shared_collection/:id/pull', to: 'rails_admin/main#remote_shared_collection'

          match '/:model_name/:id/swagger/*path' => 'rails_admin/main#swagger', via: [:all]

          get '/:model_name/*id', to: 'rails_admin/main#show'

          mount ::RailsAdmin::Engine => '/', as: 'rails_admin'

          mount ::Cenit::RailsAdmin::Engine => ''
        end
      end
    end
  end
end
