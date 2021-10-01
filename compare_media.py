# filepath = 'db-1-made-pretty.json'
matches = ["jpg", "png"]

# cnt = 1

# with open(filepath) as fp:
#    line = fp.readline()
#    while line:
#         if any(x in line for x in matches):
#             arr =  line.rsplit();
#             filename = arr[1]
#             a_filename = filename.replace('"', '').replace(',', '')
#             print(a_filename);
#             cnt +=1
#         line = fp.readline()


filepath = 'old_media_backup_list.txt'
cnt = 1

with open(filepath) as fp:
   line = fp.readline()
   while line:
        if any(x in line for x in matches):
            a_filename = line.replace('/home/nick/CIVAM/CIVAM_BACKUP/civam-media-backup/media_10-22-2020/', '')
            print(a_filename)
            cnt += 1
        line = fp.readline()