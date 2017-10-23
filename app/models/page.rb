class Page < ApplicationRecord

  def self.footer(language)
    Page.where(['language = ?', language])
  end
end
