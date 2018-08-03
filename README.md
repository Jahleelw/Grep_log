# log_grep
a simple log filter

Install:

cp grep_log.sh /usr/bin



Introductions:

Due to the format of company is:

TIME	MODULE		DETAILS

According to the MODULE to filter the log

If there are three log files in the directory "Log"

copy the shell to the directory

then run the shell.

It will creat the same number of filtered files and a consolidated file by the filtered files.

The shell can enter one arguments.

When the count of arguments is not equal to one, filter MODULE is "GUI" in default.

You can select the MODULE as:

MEDIA,NETWORK,4G,STORAGE,MAIN,MTD,and so on.

