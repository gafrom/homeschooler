# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  status     :integer          default(0)
#

class Post < ApplicationRecord
  belongs_to :user

  scope :visible, -> { where(status: 1) }
  scope :authored_by, -> (user) { where(user: user) }
  default_scope -> { order(created_at: :desc) }

  def render
    return '' unless body
    # Initializes a Markdown parser
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)

    markdown.render body
  end

  def visible?
    status == 1
  end

  def hidden?
    !visible?
  end
end
