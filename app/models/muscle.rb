class Muscle < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :muscle_tag_relations, dependent: :destroy
    has_many :tags, through: :muscle_tag_relations, dependent: :destroy
    mount_uploader :image, ImageUploader
end
