Packer docker image builder:

I did a better walk through software versions at work, but that doesn't track here soooo patience pls. 
Software requirements:
	packer 1.8.x
	docker 1.5.x  
	ansible >= 2.9.6 
Files:

  env.auto.pkrvars.hcl: Packer environment varialbes file that will be automatically read in without specifying.
  env.pkrvars.hcl: Packer environment variables that will require the -- flag in order to read in
  playbook.yml: The playbook that will be used as the provisioner
  template.pkr.hcl: The main Packer template file. This is the main file where you specify  the builder, plugins, & all the processing pre, during, & post.


