class Fuel < ActiveRecord::Base
  include Robin::Rails

  belongs_to :rocket
end
