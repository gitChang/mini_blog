class Post < ApplicationRecord
  validates :title, :content, :published_at, presence: true
  validate  :title_uniqueness, if: -> { title.present? }

  scope :published, -> { where("published_at <= ?", Time.current).order(published_at: :desc) }

  private

  def title_uniqueness
    normalized_title = title.strip.downcase
    condition = "TRIM(LOWER(title)) = ?"

    if Post.where.not(id: id).where(condition, normalized_title).exists?
      errors.add(:title, "already exists!")
    end
  end
end