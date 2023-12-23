 #!/bin/bash

 # Optimum Configuration

optimal_ialu=2
optimal_imult=1
optimal_fpalu=4
optimal_fpmult=1
optimal_btb_sets=256
optimal_btb_assoc=2
optimal_ras=8
optimal_ifqsize=8
optimal_decodewidth=2
optimal_issuewidth=2
optimal_commitwidth=4

optimal_dl1_nsets=64
optimal_dl1_bsize=32
optimal_dl1_assoc=1

optimal_il1_nsets=64
optimal_il1_bsize=32
optimal_il1_assoc=2

optimal_dl2_nsets=256
optimal_dl2_bsize=64
optimal_dl2_assoc=4

bpredictor=comb

ruu_size=16
lsq_size=16

for il2_nsets in 256; do  
  for il2_bsize in 64; do 
    for il2_assoc in 1; do 

      echo -n "Optimum Configuration: "

      export SSFLAGS="\
      -fetch:ifqsize $optimal_ifqsize \
      -decode:width $optimal_decodewidth \
      -issue:width $optimal_issuewidth \
      -commit:width $optimal_commitwidth \
      -bpred $bpredictor \
      -bpred:btb $optimal_btb_sets $optimal_btb_assoc \
      -bpred:ras $optimal_ras \
      -res:ialu $optimal_ialu \
      -res:imult $optimal_imult \
      -res:fpalu $optimal_fpalu \
      -res:fpmult $optimal_fpmult \
      -ruu:size $ruu_size \
      -lsq:size $lsq_size \
      -cache:dl1 dl1:$optimal_dl1_nsets:$optimal_dl1_bsize:$optimal_dl1_assoc:l \
      -cache:il1 il1:$optimal_il1_nsets:$optimal_il1_bsize:$optimal_il1_assoc:l \
      -cache:dl2 ul2:$optimal_dl2_nsets:$optimal_dl2_bsize:$optimal_dl2_assoc:l \
      -cache:il2 il2:$il2_nsets:$il2_bsize:$il2_assoc:l"

      ./run-wattch 2>&1 | ./scripts/tabulate

    done
  done
done