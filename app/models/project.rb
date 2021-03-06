class Project < ApplicationRecord
    validates :name, presence: true
    validates :desription, presence: true
    validates :status, presence: true
  
    enum status: [:proposal, :progress, :finished]
  end
  