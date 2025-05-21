#upload() { n=${1:-1} && latest_files=`ls -t | grep -v upload.sh | head -$n` && echo "copying $latest_files" && scp $latest_files john@sdn:dev/climate/talk/imgs && touch last_upload ; }
upload() { n=${1:-1} && latest_files=`find . -type f -newer last_upload | grep -v -e ^.$ -e .vim.sess` && echo "copying $latest_files" && scp $latest_files john@sdn:dev/climate/talk/imgs && touch last_upload ; }
