require 'rails_helper'

RSpec.describe Comment, type: :model do

  it_behaves_like "a crud model", factory: :comment,
      creates: {content: :string},
      updates: {content: "string"}

end
