class Label < ActiveRecord::Base
  has_and_belongs_to_many :concepts
  validates :value, presence: true
  validates :language, presence: true
  validates :label_type, presence: true
  # The theory here is that only one preferred label value exists for a particular language.
  validates_uniqueness_of :value, scope: :language, conditions: -> { where(label_type: 'Preferred') }
  scope :preferred, -> { where(label_type: 'Preferred') }

  def self.for_locale(locale)
    if locale
      where(language: locale.upcase)
    else
      where(language: "EN")
    end
  end
end
