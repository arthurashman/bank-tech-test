require 'statement_entry'

describe StatementEntry do
  # subject(:statement_entry) { described_class.new }

  it 'returns a statement entry object' do
    allow(Time).to receive(:now).and_return Time.new(2019,1,1)
    expect(StatementEntry.new(date: Time.now, credit: "500.00", balance: "500.00")).to be_a_kind_of(StatementEntry)
  end

  it 'returns a statement entry object with the right credit attribute' do
    statement_entry = StatementEntry.new(date: Time.now, credit: "500.00", balance: "500.00")
    expect(statement_entry.credit).to eq("500.00")
  end
  it 'returns a statement entry object with the right balance attribute' do
    statement_entry = StatementEntry.new(date: Time.now, credit: "500.00", balance: "500.00")
    expect(statement_entry.balance).to eq("500.00")
  end
end