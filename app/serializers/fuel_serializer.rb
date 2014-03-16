class FuelSerializer < ActiveModel::Serializer
  attributes :id, :rocket_id, :name, :caveats, :formula
end
