--[[
	DO COMPLEXITY ANALYSIS
]]--

function Candidate(m, A)
	j = m
	c = A[m]
	count = 1
	while (j < n) and (count > 0) do 
		j = j + 1
		if A[j] == c then 
			count = count + 1
		else 
			count = count - 1
		end
	end
	if j == n then 
		return c 
	else 
		return Candidate(j + 1, A)
	end 
end 

function MajorityElement(A)
	n = #A
	c = Candidate(1, A)
	count = 0
	for j = 1, n do
		if A[j] == c then 
			count = count + 1
		end
	end
	if count > (n // 2) then 
		return c 
	else 
		return nil 
	end 
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
	
	print("\n\tFinding the majority...")
	majority = MajorityElement(A)
	print("The majority element is: \t"..majority)
end

main()