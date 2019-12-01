require 'rails_helper'

RSpec.describe Article, type: :model do

  it_behaves_like "a crud model", factory: :article,
      creates: {content: :string},
      updates: {content: "string"}

end
