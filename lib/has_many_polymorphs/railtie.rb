module HasManyPolymorphs
  class Railtie < Rails::Railtie
    initializer "has_many_polymorphs" do |app|
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.extend(ActiveRecord::Associations::PolymorphicClassMethods)
      end
    end
  end
end
