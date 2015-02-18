class Question < ActiveRecord::Base
  belongs_to :test

  has_many :testsessions

  has_attached_file :image, :styles => { :medium => "800x800>", :thumb => "500x500>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
