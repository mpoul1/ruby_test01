class Comment < ApplicationRecord
  belongs_to :commentable, :polymorphic =>
      belongs_to :user
end
