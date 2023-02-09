class MuscleTagRelation < ApplicationRecord
  belongs_to :muscle
  belongs_to :tag
end
