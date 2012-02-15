class PsSearch < ActiveRecord::Base
  attr_accessible :manufacturer, :group, :category, :model, :os1, :os2, :os3, :district, :panchayat, :place
end
