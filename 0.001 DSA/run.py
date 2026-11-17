# 17. inary search alogo rithm 

# [-1, 0, 3, 5, 9, 12]

def binary(n ,target):
    size = len(n)

    start = 0 
    end = size-1

    

    while start<=end :
        mid = (start + end)//2 
        if n[mid] == target : 
            return mid 

        
        elif n[mid] < target:
            start = mid + 1

        else:
            end = mid-1

    return -1 

print(binary([-1, 0, 3, 5, 9, 12], 9))