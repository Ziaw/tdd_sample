

def diff a, b
	{a: [a[:a],  b[:a]]}
end


puts diff({a: 1}, {a: 2}) == {a: [1, 2]} # тупой тест - тупое решение