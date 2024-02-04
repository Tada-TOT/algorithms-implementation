--[[
	DO COMPLEXITY ANALYSIS
]]--

function BinarySearch(x, A)
	high = #A
	low = 1
	j = 0
	while (low <= high) and (j == 0) do
		mid = (low + high) // 2
		if x == A[mid] then
			j = mid
		elseif x < A[mid] then
			high = mid - 1
		else 
			low = mid + 1
		end
	end
	return j
end 

function main() -- IGNORE
	n = 0
	A = {}
	x = nil
	
	print("Enter the length of the array: \t")
	n = io.read()
	
	print("Enter the elements of the array (each on a line): \n")
	for i = 1, n do
		A[i] = io.read()
	end
	
	print("Enter search element X: \t")
	x = io.read()
	
	index = BinarySearch(x, A)
	print("The element is at index: \t"..index)
end

main()