##### RBM Aliases #############################################################

alias get_pcs_feed="sftp pcs-usfi@sftp.rbmtechnologies.com:inbound/content/rbmCatalog.txt"
alias rbm_laptop="ssh jhuynh@dhcp-3-110.hq.rbm.local"
alias rhn="rbm_hostname"

##### RBM Functions ###########################################################

# rbm_hostname
# Usage: rbm_hostame vmm-test OR vmm-test 1 OR vmm-test 01
# returns the full hostname for that box
# used by ct
function rbm_hostname {
  N=$(printf "%0.2d" "$2")   # If $2 is empty, this returns 00

  case "$1" in
  *-test) SITE="hq" ;;
  vzw-*) SITE="vzw" ;;
  *) SITE="dc-00" ;;
  esac

  if [[ "$1" != *-cmp ]]; then
          SERVER="app@$1-app-$N.$SITE.rbm.local"
  else
          SERVER="app@$1-$N.$SITE.rbm.local"
  fi
  echo $SERVER
}

# ct - Connect To
# Usage: ct att-stg OR ct vmm-test 1 OR ct vmm-test 01
# expects two params, with the 2nd one optional
# 1) the environment name
# 2) the num of the box to connect to
function ct {
  SERVER=$(rbm_hostname $1 $2)
  echo "connecting to $SERVER"
  ssh $SERVER
}

