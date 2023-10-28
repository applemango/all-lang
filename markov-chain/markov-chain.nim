import tables, random, std/strutils

randomize()

var dic = initTable[string, seq[string]]()

proc readTextAndCreateDic() =
    for line in lines "train.txt":
        var tokens = split(line, " ")
        tokens.insert("@")
        tokens.add(";")
        for i in 1..len(tokens) - 1:
            if not dic.contains(tokens[i - 1]):
                dic[tokens[i - 1]] = @[]
            dic[tokens[i - 1]].insert(tokens[i])

proc chainText(): string =
    var
        next = "@"
        text = ""
        limit = 1000
    while next != ";" and limit > 0:
        if not dic.contains(next):
            break
        next = sample(dic[next])
        text = text & next & " "
        limit = limit - 1
    return text

readTextAndCreateDic()
echo chainText()