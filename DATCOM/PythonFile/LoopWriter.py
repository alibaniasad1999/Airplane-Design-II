# Write Data in max 8 data in one line
def loop_writer(name, list_of_num, file):
    counter = 0
    file.write('%s(1) = ' % name)
    for i in list_of_num:
        file.write('%s, ' % str(i))
        counter = counter + 1
        if counter == 8:
            file.write('\n\t\t ')
    file.write('\n\t\t ')