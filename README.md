# Private-VPN

Setting up a Private VPN on Amazon AWS Cloud using CloudFormation

## Requirements

- AWS Account
- AWS Cli

## How to setup VPN

- Configure aws cli on local computer using:

```
aws configure
```

**Note:** Set default region to us-west-2

- In `pptp.json` file change `ParameterValue` of `VPNUsername` and `VPNPassword`

- Run `create.sh` bash script using:

```
./create.sh <stack-name> pptp.yaml pptp.json
```

**You will get stack id in response if everything went right**

**Note:** Replace `<stack-name>` with name of your choice `ex: ./create.sh vpn pptp.yaml pptp.json`

**Note:** If permission denied run `chmod +x create.sh` and then `./create.sh vpn pptp.yaml pptp.json`

**Wait for a minute or two for AWS EC2 instance to setup**

- Run `getIp.sh` to get the ip address of the EC2 instance

```
./getIp.sh <stack-name>
```

![result](./images/ip.png)
**Note:** Replace `<stack-name>` with the name of stack `ex: ./getIp.sh vpn`

**Note:** If permission denied run `chmod +x getIp.sh` and then `./getIp.sh vpn`

- Run `delete.sh`to delte EC2 instance

```
./delete.sh <stack-name>
```

**Note:** It is important to delete the server when no longer using vpn because every time you run `create.sh` a new EC2 server will run and your cost will increase. AWS provide 750 hours in its freee tier so you won't occur charges as long as you delete the instance after you are no longer using it

**Note:** Replace `<stack-name>` with the name of stack `ex: ./delete.sh vpn`

**Note:** If permission denied run `chmod +x delete.sh` and then `./delete.sh vpn`
