--[[
	DO COMPLEXITY ANALYSIS
]]--

function MergeSort(A, p, q, r)
	B = {}
	for o = p, r do 
		B[o] = 0
	end
	
	s = p
	t = q + 1
	k = p 
	while (s <= q) and (t <= r) do
		if A[s] <= A[t] then
			B[k] = A[s]
			s = s + 1
		else	
			B[k] = A[t]
			t = t + 1
		end
		k = k + 1
	end
	if s == (q + 1) then 
		table.move(A, t, r, k, B)
	else 
		table.move(A, s, q, k, B)
	end
	table.move(B, p, r, p, A)
	return A
end 

function BottomUpMerge(A)
	n = #A
	t = 1
	while t < n do 
		s = t
		t = 2 * t
		i = 0 
		while (i + t) <= n do 
			MergeSort(A, i + 1, i + s, i + t)
			i = i + t
		end
		if (i + s) < n then 
			MergeSort(A, i + 1, i + s, n)
		end
	end
	return A
end

function main() -- IGNORE
	n = 0
	A = {}
	
	print("Enter the length of the array: \t")
	n = io.read()
	
	print("Enter the elements of the array (each on a line): \n")
	for i = 1, n do
		A[i] = io.read()
	end
	
	print("\n\tSorting...")
	sorted = BottomUpMerge(A)
	print("The sorted array: \t"..table.concat(sorted, ", "))
end

main()