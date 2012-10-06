

def diff a, b
	Hash[
		a.keys.map do |key|
			[key, [a[key],  b[key]]]
		end
	]
end


puts diff({a: 1}, {a: 2}) == {a: [1, 2]} # тупой тест - тупое решение
puts diff({a: 1, b: 2}, {a: 2, b: 3})  == {a: [1, 2], b: [2, 3]} # ключей стало много - пускаем в цикле и превращаем в хеш рехультат
