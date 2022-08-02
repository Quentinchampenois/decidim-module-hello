# frozen_string_literal: true

module Decidim
  module Hello
    # This is the engine that runs on the public interface of `Hello`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::Hello::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :hello do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "hello#index"
      end

      def load_seed
        nil
      end
    end
  end
end
