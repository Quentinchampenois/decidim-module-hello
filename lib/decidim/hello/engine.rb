# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module Hello
    # This is the engine that runs on the public interface of hello.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::Hello

      routes do
        # Add engine routes here
        # resources :hello
        # root to: "hello#index"
      end

      initializer "Hello.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
