# submission184

## Requirements

* Uppaal v4.1.24 ([link](https://uppaal.org/downloads/))

## Models

* _concerete/\*.xml_ - original models
* _abstaction_1/\*.xml_ - globally removes variables `mem_sg` and `mem_vt` (i.e. voters memory of the cast vote and whether the voting declaration has been signed);
* _abstaction_2/\*.xml_ - sums the detailed voting results from the array `tally` into a single variable `tally_sum`;
* _abstaction_3/\*.xml_ - removes the variables `mem_dec` at locations {`has`, `voted`} and `dec_recv` at {`coll_vts`};
* _abstaction_1+2/\*.xml_ - combines abstactions 1 and 2
* _abstaction_1+2+3/\*.xml_ -  combines abstactions 1, 2 and 3

## Queries

Verification can be done either using GUI or command-line tool `verifyta.exe`.

1. bstuff
```A[](ballots_received()<=(sum(vi:v_t)Authority.pack_sent[vi]) && ((sum(vi:v_t)Authority.pack_sent[vi]))<=N_V)```
2. dispath
```A[](Authority.coll_vts imply forall(i:v_t)Authority.pack_sent[i]==1)```
