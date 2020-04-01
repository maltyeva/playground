class List < ApplicationRecord
  # default_scope {where{company_id: Company.current_id}}
  belongs_to :company
  has_many :columns, dependent: :destroy
end
