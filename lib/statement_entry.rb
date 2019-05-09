class StatementEntry
  attr_reader :date, :credit, :debit, :balance

  def initialize(date:, credit: '', debit: '', balance:)
    @date = date.strftime('%d/%m/%y')
    @credit = credit
    @debit = debit
    @balance = balance
  end
end
