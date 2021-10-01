filepath = 'db-1-made-pretty.json'
substring = "jpg"
cnt = 1
with open(filepath) as fp:
   line = fp.readline()
   while line:
        if substring in line:
            print(line)
            # line.rsplit();
        line = fp.readline()
        cnt += 1

print(f"number jpeg: {cnt}")