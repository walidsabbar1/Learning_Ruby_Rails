class BlogPost < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :body, presence: true

  # Only validate for scheduling if the date is more than 2 minutes in the future.
  # This avoids "must be in the future" errors when picking a time that passes by the time you hit submit.
  validate :published_at_cannot_be_in_the_past, if: -> { 
    published_at.present? && 
    published_at_changed? && 
    published_at > Time.current + 2.minutes 
  }


  scope :sorted, -> { order(arel_table[:published_at].desc.nulls_first).order(updated_at: :desc) }
  scope :draft, -> { where(published_at: nil) }
  scope :published, -> { where("published_at <= ?", Time.current) }
  scope :scheduled, -> { where("published_at > ?", Time.current) }

  def draft?
    published_at.nil?
  end

  def published?
    published_at? && published_at <= Time.current
  end

  def scheduled? 
    published_at? && published_at > Time.current
  end

  private


  def published_at_cannot_be_in_the_past
    if published_at < Time.current
      errors.add(:published_at, "must be in the future")
    end
  end
end
