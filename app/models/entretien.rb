class Entretien < ActiveRecord::Base
belongs_to :filiere

default_scope :order => ("efrequence ASC")
end
