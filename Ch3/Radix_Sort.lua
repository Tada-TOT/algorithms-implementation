--[[
	DO COMPLEXITY ANALYSIS
]]--

function RadixSort(k, A)
	n = #A 
	j = k 
	while j >= 1 do 
		A0 = {}
		A1 = {}
		A2 = {}
		A3 = {}
		A4 = {}
		A5 = {}
		A6 = {}
		A7 = {}
		A8 = {}
		A9 = {}
		for index = 1, n do 
			a = A[index]
			i = string.sub(a, j, 1)
			print("i; "..i.." "..(j))
			if i == 0 then 
				table.insert(A0, a)
			elseif i == 1 then 
				table.insert(A1, a)
			elseif i == 2 then 
				table.insert(A2, a)
			elseif i == 3 then 
				table.insert(A3, a)
			elseif i == 4 then 
				table.insert(A4, a)
			elseif i == 5 then 
				table.insert(A5, a)
			elseif i == 6 then 
				table.insert(A6, a)
			elseif i == 7 then 
				table.insert(A7, a)
			elseif i == 8 then 
				table.insert(A8, a)
			elseif i == 9 then 
				table.insert(A9, a)
			end 
		end 
		A = {}
		A = {table.unpack(A), table.unpack(A0)}
		A = {table.unpack(A), table.unpack(A1)}
		A = {table.unpack(A), table.unpack(A2)}
		A = {table.unpack(A), table.unpack(A3)}
		A = {table.unpack(A), table.unpack(A4)}
		A = {table.unpack(A), table.unpack(A5)}
		A = {table.unpack(A), table.unpack(A6)}
		A = {table.unpack(A), table.unpack(A7)}
		A = {table.unpack(A), table.unpack(A8)}
		A = {table.unpack(A), table.unpack(A9)}
		j = j - 1
	end
	return A
end 

function main() -- IGNORE
	n = 0
	k = nil 
	A = {}
	
	print("Enter the length of the array: \t")
	n = io.read()
	
	print("Enter the number of digits: \t")
	k = tonumber(io.read())
	
	print("Enter the elements of the array (each on a line): \n")
	for i = 1, n do
		A[i] = io.read()
	end
	
	print("\n\tSorting...")
	sorted = RadixSort(k, A)
	print("The sorted array: \t"..table.concat(sorted, ", "))
end

main()