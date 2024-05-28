## create a user on all machines ( controller & all targets )

        sudo wget https://raw.githubusercontent.com/lerndevops/labs/master/scripts/setupUser.sh -P /tmp
	sudo bash /tmp/setupUser.sh
	
	Note: above script will setup username & password as below 
	
	USERNAME: devops
	PASSWORD: today@1234

### genereate ssh keys for above user on contrller machine 

```
1) switch to user ( su - devops )
2) run "ssh-keygen" command as user ( this will genereate ssh keys for the user ) 

validate:
     
  cd /home/devops/.ssh 
  cat id_rsa.pub 
```
### copy user ssh keys from ansible contrller to all target hosts

```
On Ansible Contoller:
	
  swith to the user OR be as devops user ( su - devops )
  
  ssh-copy-id devops@target1ip -- hit enter -- enter the password of target server when it prompted 
  ssh-copy-id devops@target2ip -- hit enter -- enter the password of target server when it prompted
  .
  .
  .
  .
  ssh-copy-id devops@targetnip -- hit enter -- enter the password of target server when it prompted

```

# own
```
ssh-keygen
```
Your public key has been saved in /home/ubuntu/.ssh/id_ed25519.pub
After generation keygen 

some location such as
```
sudo cat /home/ubuntu/.ssh/id_ed25519.pub
```
Copy ssh key

# And paste in slave machine or vm

```
cd /home
cd .ssh
sudo nano authorized_key
Paste here copied key







	

