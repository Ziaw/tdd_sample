
class Array
	def to_hash # рефакторим лишний отступ
		Hash[self]
	end
end


def diff a, b
	(a.keys + b.keys).uniq.map do |key| # теперь нужны ключи из обоих массивов
		[key, [a[key],  b[key]]]
	end.to_hash
end


puts diff({a: 1}, {a: 2}) == {a: [1, 2]} # тупой тест - тупое решение
puts diff({a: 1, b: 2}, {a: 2, b: 3})  == {a: [1, 2], b: [2, 3]} # ключей стало много - пускаем в цикле и превращаем в хеш рехультат
puts diff({a: 1}, {b: 3})  == {a: [1, nil], b: [nil, 3]} # усложним задачу, ключи различаются

