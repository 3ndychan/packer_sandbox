Packer docker image builder using ansible to launch it. The benefits is that we get a way to better manage secrets than working with raw environment variables. In here we'll be giving the example of how to take advantage of ansible-vault in order to manage the keys required to post a completed docker image to an image repository:

Files:
  packer-builder.yml: This is the ansible file that will be used to build the environment files & template files using the jinja2 templating engine that way we have a pretty integrated way that can be passed variables to change the various required ones.
  env.auto.pkrvars.hcl: Packer environment varialbes file that will be automatically read in without specifying.
  env.pkrvars.hcl: Packer environment variables that will require the -- flag in order to read in
  playbook.yml: The playbook that will be used as the provisioner
  template.pkr.hcl: The main Packer template file. This is the main file where you specify  the builder, plugins, & all the processing pre, during, & post.


