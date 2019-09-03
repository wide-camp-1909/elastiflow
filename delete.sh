docker run \
                          --rm \
                          --entrypoint=/usr/bin/curator_cli \
                          bobrik/curator \
                          --host=172.16.1.117 \
                          delete_indices \
                          --filter_list '[{"filtertype":"age","source":"creation_date","direction":"older","unit":"hours","unit_count":1}]'
