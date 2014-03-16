class RocketSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :title, :thrusters, :speed, :decommissioned

  has_many :fuels, embed: :ids
end
