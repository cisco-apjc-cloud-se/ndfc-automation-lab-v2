# ndfc-automation-lab-v2

Ansible and Terraform code for use with a NDFC-built NXOS VXLAN EVPN multi-site fabric.

## Terraform

Install Terraform binary from <https://www.terraform.io/downloads>

## Ansible (To be completed)

Install Python3 from <https://www.python.org/downloads/>

Install client side libraries in a Python virtual environment.

```bash
# python3 -m venv venv
# source venv/bin/activate
(venv) # python3 -m pip install --upgrade pip
(venv) # python3 -m pip install ansible==2.9.10 jinja2==3.0.3 requests
(venv) # ansible-galaxy collection install cisco.dcnm --force-with-deps
```
