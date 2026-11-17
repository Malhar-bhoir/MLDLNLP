# def long_prefix(str): # func

#     if not string:  # if ti xheck empt 
#         return ""

#     prefix = str[0] # take first whole word as prefix first 

#     for i in str[1:] :  # iterate i from seconf word in list till end
#         while not i.startswith(prefix):
#             prefix = prefix[:-1] # slice the word if not amtch using while loop 

#             if prefix == "":
#                 return ""

#     return prefix

# str =  ["flower", "flow", "flight"]
# long_prefix(str)
def longest_prefix(str):

    if not  str:   # if string is empty return empty strin 
        return ""

    prefix = str[0] # take first word of the list as prefix 

    for i in str[1:]: # take the words from index 1 that is secnond word till end 
        while not i.startswith(prefix): # i.startswith(prefix) -- this checks if the word i starts with hte prefix ( that we deifne )
            prefix = prefix[:-1] # if above condition ocure remove the last word of te prefix everytime above condition occur 

            if prefix == "": # whil scling while if the owrd end return so 
                return ""
        

    return prefix 

str =  ["flower", "flow", "flight"]
print(longest_prefix(str))


