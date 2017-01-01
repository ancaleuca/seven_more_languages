function ends_in_3(num)
	return (num - 3) % 10 == 0
end

function is_prime(num)
	for i = 2, num / 2 do
		if num % i == 0 then
			return false
		end
	end
	return true
end

function print_first_n(n)
	local count = 0
	local i = 2
	while count < n do
		if is_prime(i) and ends_in_3(i) then
			count = count + 1
			print(i)
		end
		i = i + 1
	end
end

function for_loop(a, b, f)
	while a <= b do
		f(a)
		a = a + 1
	end
end

function reduce(max, init, f)
	for i = 1, max do
		init = f(init, i)
	end
	return init
end

function factorial(n)
	function multiply(a, b)
		return a * b
	end
	return reduce(n, 1, multiply)
end


