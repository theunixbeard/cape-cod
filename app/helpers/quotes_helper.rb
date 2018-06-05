module QuotesHelper
  def add_commas(amount)
    separated = amount.to_s.split('.')

    dollars = separated[0]
    decimal = separated[1].slice(0, 2)

    comma_splits = dollars.reverse.chars.each_slice(3).map(&:join).reverse

    comma_splits.map {|x| x.reverse!}.join(',') + ".#{decimal}"
  end
end
