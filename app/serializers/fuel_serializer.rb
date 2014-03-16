class FuelSerializer < ActiveModel::Serializer
  attributes :id, :name, :caveats, :formula
end
