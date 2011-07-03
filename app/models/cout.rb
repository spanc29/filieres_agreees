class Cout < ActiveRecord::Base
belongs_to :filiere

default_scope :order => "duree ASC"
end
