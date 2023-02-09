class Tag < ApplicationRecord
  has_many :muscle_tag_relations, dependent: :destroy
  
  has_many :muscles, through: :muscle_tag_relations, dependent: :destroy
end
