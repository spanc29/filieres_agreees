class Filiere < ActiveRecord::Base
  #attr_accessible :mes,:dbo5,:dco,:photo,:actif,:lien_legifrance, :date_JO, :email, :num_agrement, :denomination_commerciale, :titulaire, :adresse, :organisme_test, :num_avis_jo, :texte_NOR_jo, :type_filiere, :description_sommaire, :description, :eq_hab_mini, :eq_hab_max, :intermittence, :avec_nappe, :test_bacterio, :ref_guide_util, :site_web, :pourcent_vidange, :ouvrage_vidange, :periode_vidange, :conso_elect_an, :cout_quinze_ans
  stampable
  is_impressionable
  has_many :impressions, :as => :impressionable, :dependent => :destroy

  has_many :techniques
  accepts_nested_attributes_for :techniques, :allow_destroy => true
  has_many :entretiens
  accepts_nested_attributes_for :entretiens, :allow_destroy => true
  has_many :poses
  accepts_nested_attributes_for :poses, :allow_destroy => true
  has_many :couts
  accepts_nested_attributes_for :couts, :allow_destroy => true
  has_many :photos
  accepts_nested_attributes_for :photos, :allow_destroy => true

  serialize :eq_hab

end
