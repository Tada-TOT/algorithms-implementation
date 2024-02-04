--[[
	DO COMPLEXITY ANALYSIS
]]--

function SelectionSort(A)
	n = #A
	for i = 1, n do
		k = i
		for j = (i + 1), n do
			if A[j] < A[k] then
				k = j
			end
		end
		if k ~= i then
			temp = A[i]
			A[i] = A[k]
			A[k] = temp
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
	sorted = SelectionSort(A)
	print("The sorted array: \t"..table.concat(sorted, ", "))
end

main()