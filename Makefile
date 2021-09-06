install:
	# install go, safe-rm and folderify
	brew install go safe-rm folderify
	# install rmapi
	GO111MODULE=on go get github.com/juruen/rmapi@latest
	
	# create drop folder on the Desktop
	mkdir -p "$$HOME/Desktop/Send to reMarkable..."
	# add a folder icon
	folderify --no-trim reMarkable.png $$HOME/Desktop/Send\ to\ reMarkable... 

	# ensure log file is writable
	touch /usr/local/var/log/send2remarkable.log

	# install the Automator workflow 
	open "Send to reMarkable.workflow"

