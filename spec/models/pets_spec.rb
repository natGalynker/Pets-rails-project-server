require 'rails_helper'

RSpec.describe Pet do
  describe 'associations' do
    def association
      described_class.reflect_on_association(:comments)
    end
    it 'has an association with comments' do
      p association

      expect(association).to_not be_nil
      expect(association.name).to eq(:comments)
    end

    it 'has a set of record' do
      expect(association.options[:inverse_of]).not_to be_nil
      expect(association.options[:inverse_of]).to eq(:article)
    end
    it 'destoys associated comments when deleted' do
      expect(association.options[:dependent]).to eq(:destroy)
    end
  end

  describe 'validations' do
    it 'validates the presence of title and content for new articles' do
      expect(
        Article.create(title: 'Test title', content: 'This is valid.')
      ).to be_valid

      expect(
        Article.create(content: 'This is invalid')
      ).to be_invalid
    end
  end
end
