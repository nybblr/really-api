class Rocket < ActiveRecord::Base
  include Robin::Rails

  has_many :fuels
end
