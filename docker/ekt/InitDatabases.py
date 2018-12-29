import os,sys

def run_mysql(sql_file):
    os.system('mysql -h 192.168.128.75 -u root -pP@ssw0rd -e %s'%sql_file)

for root,dir,file in os.walk('./ekt'):
    'table->trigger->data->update'
    if sys.argv[1] in root:
        for file_name in file:
            run_mysql('%s/%s'%(root,file_name))