--[[
	DO COMPLEXITY ANALYSIS
]]--

function InsertionSort(A)
	n = #A
	for i = 2, n do
		x = A[i]
		j = i - 1
		while (j > 0) and (A[j] > x) do
			A[j + 1] = A[j]
			j = j - 1
		end
		A[j + 1] = x
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
	sorted = InsertionSort(A)
	print("The sorted array: \t"..table.concat(sorted, ", "))
end

main()