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

**Note:** Replace `<stack-name>` with name of your choice `ex: ./create.sh vpn pptp.yaml pptp.json`

**Note:** If permission denied run `chmod +x create.sh` and then `./create.sh vpn pptp.yaml pptp.json`
