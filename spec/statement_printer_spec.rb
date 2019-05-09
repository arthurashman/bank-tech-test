require 'statement_printer'

describe StatementPrinter do
  subject(:statement_printer) { described_class.new }
  
  describe '#print' do
    it 'responds to print when no statement entry present' do
      expect(statement_printer.print([]))
        .to eq("date || credit || debit || balance")
    end
  
    it 'responds to print when single statement entry present' do
      statement_entry = object_double("statement_entry", :date => "01/01/19", :credit => "500.00", :debit => "", :balance => "500.00")
      expect(statement_printer.print([statement_entry]))
        .to eq("date || credit || debit || balance\n01/01/19 || 500.00 ||  || 500.00")
    end
    it 'responds to print when multile statement entries present' do
      statement_entry = object_double("statement_entry", :date => "01/01/19", :credit => "500.00", :debit => "", :balance => "500.00")
      statement_entry_2 = object_double("statement_entry", :date => "04/01/19", :credit => "1000.00", :debit => "", :balance => "1500.00")
      statement_entry_3 = object_double("statement_entry", :date => "09/01/19", :credit => "", :debit => "500.00", :balance => "1000.00")
      expect(statement_printer.print([statement_entry, statement_entry_2, statement_entry_3]))
        .to eq("date || credit || debit || balance\n09/01/19 ||  || 500.00 || 1000.00\n04/01/19 || 1000.00 ||  || 1500.00\n01/01/19 || 500.00 ||  || 500.00")
    end
  end
end


