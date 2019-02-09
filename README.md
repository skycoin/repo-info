# Skycoin Official Images "Extended Information"

This repository includes the "metadata" or "Extended Information" for all the official images of the Skycoin project; also host the script to make that possible.

The metadata is scraped and parsed with the help of [repo-info tools](https://github.com/simelo/repo-info-tools)

## Updating Skycoin repository metadate

### Supported environments and assumptions

* The workspace is assumed to be any recent Linux or MacOS, no Windows instructions yet
* It is recommended to have at least 10GB of free space in the partition used used by Docker to store container data.
* A minimum of 2Mbit per second (256Kbyte/s) bandwidth is recommended. Otherwise the update process will take non-trivial time.
* It is necessary to install a git client in advance, and configure it to push commits to Github an behalf of a Github account.

### Initial steps

The following one-time configuration is required prior to scraping image metadata.

0. Log into github.com
0. [Configure your SSH client](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
0. Follow the steps in [Github guide to setup SSH keys](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)
0. Navigate to this repository at https://github.com/skycoin/repo-info
0. Fork it under the Github account namespace of your preference. Beware of the SSH clone URL e.g. `git@github.com:simelo/skycoin-repo-info.git`.
0. Clone your fork e.g. `git clone git@github.com:simelo/skycoin-repo-info.git`

### Updating the info

0. Change working directory to repository folder to start working on it e.g. `cd skycoin-repo-info`
0. Run the update script `./update.sh`
0. Once the script finishes it's job is time to review the data. Just `git diff` and review the new and modified files, if you spot an omission or a blank file: just repeat the last step.
0. If all the data is ok, then commit it & push your data to your repository fork.
0. Submit a pull request against the main `skycoin/repo-info` repository.

After these steps wait for feedback from the community for your changes to be merged with upstream branch.

## Understanding update script

The update script will take care of the following tasks:

* Download [repo-info tools](https://github.com/simelo/repo-info-tools) utility
* Search and gather all the Docker images published in the Skycoin's dockerhub organization.
  - "Relevant images" are the ones with at least one of the following tags `latest, develop, release, arm & dind` this list can be widened on demand tweaking it on the `update.sh` script
* Iterate over each repository and its tags to scrape requested metadata
  - This effectively downloads the images and extracts metadata from them (`local`) and also by issuing requests to [Docker Hub API](https://docs.docker.com/registry/spec/api/) (`remote`)

If your internet speed is low; updating might take a while and connection issues can lead to incomplete/broken information. Errors will be reported in the logs.

