//This file was generated from (Academic) UPPAAL 4.1.24 (rev. 29A3ECA4E5FB0808), November 2019

/*
bstuff
*/
A[](ballots_received()<=(sum(vi:v_t)Authority.pack_sent[vi]) && ((sum(vi:v_t)Authority.pack_sent[vi]))<=N_V)

/*
dispath
*/
A[](Authority.coll_vts imply forall(i:v_t)Authority.pack_sent[i]==1)