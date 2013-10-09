class Url < ActiveRecord::Base
  validates :long_url, presence: true
  belongs_to :user

  before_create :shorten

  def shorten
    temp_ary = []
    8.times { temp_ary << rand(65..90).chr}
    8.times { temp_ary << rand(97..122).chr}
    self.short_url = temp_ary.sample(8).join('')
  end
end
