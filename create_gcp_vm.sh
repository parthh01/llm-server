gcloud compute instances create llm-server-1 \
    --project=llm-proj-411219 \
    --zone=us-central1-a \
    --machine-type=n1-highmem-2 \
    --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
    --metadata=^,@^ssh-keys=pdb307:ecdsa-sha2-nistp256\ \
AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBEGhiZzTCrx\+w1Ws0\+iO3Ou8vclNiwEVFpYKPXMLjkbwWCl88t6GlUvzQa4BY4Y/h7NICo/tDutUGN7inz\+0b8o=\ google-ssh\ \{\"userName\":\"pdb307@nyu.edu\",\"expireOn\":\"2024-01-15T05:28:19\+0000\"\}$'\n'pdb307:ssh-rsa\ AAAAB3NzaC1yc2EAAAADAQABAAABAQCpqP4m5TmGtuetCp4AYRabM4V0dwbbLBH1PXnjp0xb\+deRUqaXhPykM\+ytUO\+Sq7\+1qAEQApJxweTdOodAyafN7Coj7rr8r08YiykKPKfHXIBVcmzoOWtQ7g4vaNrshxK2Md4f9brJGzvFg3D1sZ032WASqUj1Hm4XVxZ2VQxHhCTgZPgSOJK2X26nryHHsLC1bXXxSCYeYSQcW3EsldYYwNwYk9kv4f8HfvAw\+fvD4JvX4i7T1w0D3/kYlf8Ps4OmEtE67ubB0cyIf\+0T1StPPWsfv6q8FsqrA3/siAtTmrs3E/SluPkq1dvxDb8M90E1fM\+F6t1lW2In6iYJy4Y5\ google-ssh\ \{\"userName\":\"pdb307@nyu.edu\",\"expireOn\":\"2024-01-15T05:28:34\+0000\"\} \
    --can-ip-forward \
    --maintenance-policy=TERMINATE \
    --provisioning-model=STANDARD \
    --service-account=484074536721-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
    --accelerator=count=1,type=nvidia-tesla-v100 \
    --tags=http-server,https-server \
    --create-disk=auto-delete=yes,boot=yes,device-name=llm-server,image=projects/ml-images/global/images/c0-deeplearning-common-gpu-v20231209-debian-11-py310,mode=rw,size=500,type=projects/llm-proj-411219/zones/us-central1-a/diskTypes/pd-standard \
    --no-shielded-secure-boot \
    --shielded-vtpm \
    --shielded-integrity-monitoring \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any
