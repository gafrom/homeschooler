class Post < ApplicationRecord
  belongs_to :user

  def self.render
    # Initializes a Markdown parser
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

    markdown.render take.body
  end
end
