# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'epel' do
  let(:manifest) do
    'include epel'
  end

  it_behaves_like 'an idempotent resource'
  it_behaves_like 'EPEL is available'
end
