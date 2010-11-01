module HasManyPolymorphs
  class Railtie < Rails::Railtie
    initializer "has_many_polymorphs" do |app|
      require 'has_many_polymorphs/autoload'
      if defined?(Spork)
        Spork.trap_class_method(HasManyPolymorphs, :setup)
      end
      HasManyPolymorphs.setup
    end
  end
end
