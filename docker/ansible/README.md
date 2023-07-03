Packer docker image builder:

Files:

  env.auto.pkrvars.hcl: Packer environment varialbes file that will be automatically read in without specifying.
  env.pkrvars.hcl: Packer environment variables that will require the -- flag in order to read in
  playbook.yml: The playbook that will be used as the provisioner
  template.pkr.hcl: The main Packer template file. This is the main file where you specify  the builder, plugins, & all the processing pre, during, & post.


