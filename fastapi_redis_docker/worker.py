import time


def runTask(group_name, group_owner, group_description):
    print('starting runTask')
    time.sleep(5)
    print('finished runTask')
    return {group_name: 'task complete'}
