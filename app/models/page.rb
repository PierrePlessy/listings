class Page < ApplicationRecord

  def self.footer(loc)
    Page.where(['language = ?', loc])
  end
  
end
