//genesis
// kkit Version 11 flat dumpfile

// Saved on 100
include kkit {argv 1}
FASTDT = 0.001
SIMDT = 0.001
CONTROLDT = 0.1
PLOTDT = 0.1
MAXTIME = 100
TRANSIENT_TIME = 2
VARIABLE_DT_FLAG = 0
DEFAULT_VOL = 9.823730180521691e-15
VERSION = 11.0 
setfield /file/modpath value ~/scripts/modules
kparms

//genesis
initdump -version 3 -ignoreorphans 1
simobjdump table input output alloced step_mode stepsize x y z
simobjdump xtree path script namemode sizescale
simobjdump xcoredraw xmin xmax ymin ymax
simobjdump xtext editable
simobjdump xgraph xmin xmax ymin ymax overlay
simobjdump xplot pixflags script fg ysquish do_slope wy
simobjdump group xtree_fg_req xtree_textfg_req plotfield expanded movealone \
  link savename file version md5sum mod_save_flag x y z
simobjdump geometry size dim shape outside xtree_fg_req xtree_textfg_req x y z
simobjdump kpool DiffConst CoInit Co n nInit mwt nMin vol slave_enable \
  geomname xtree_fg_req xtree_textfg_req x y z
simobjdump kreac kf kb notes xtree_fg_req xtree_textfg_req x y z
simobjdump kenz CoComplexInit CoComplex nComplexInit nComplex vol k1 k2 k3 \
  keepconc usecomplex notes xtree_fg_req xtree_textfg_req link x y z
simobjdump stim level1 width1 delay1 level2 width2 delay2 baselevel trig_time \
  trig_mode notes xtree_fg_req xtree_textfg_req is_running x y z
simobjdump xtab input output alloced step_mode stepsize notes editfunc \
  xtree_fg_req xtree_textfg_req baselevel last_x last_y is_running x y z
simobjdump kchan perm gmax Vm is_active use_nernst notes xtree_fg_req \
  xtree_textfg_req x y z
simobjdump transport input output alloced step_mode stepsize dt delay clock \
  kf xtree_fg_req xtree_textfg_req x y z
simobjdump proto x y z
simundump geometry /kinetics/geometry 0 9.823730180521691e-15 3 sphere  "" white black 4 8001 0
simundump group /kinetics/mTORC1_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/S6K_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/_4EBP_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/_43S_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/protein_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/CaMKIII_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/TransInit_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/TransElong_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/_40S_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/TSC1_TSC2_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/CaseinKinase_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/FMRP_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/AMPAR_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PP1_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PKA_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/CaMKII_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Ras_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PP2B_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/synGAP_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Ca_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Ligands_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/CaM_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Phosphatase_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PI3K_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PLCb_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/AC_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PKC_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PLA2_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Gq_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/DHPG_mGluR_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Gs_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/b2AR_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/MAPK_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/mGluR5_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/HomerPIKE_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/AKT_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/EGFR_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/Sos_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/PLCg_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/mGluR1_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/TrKB_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/NMDAR_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump group /kinetics/barr2_g 0 blue green x 0 0 "" defaultfile \
  defaultfile.g 0 0 0 1 8001 0
simundump kpool /kinetics/mTORC1_g/Rheb_GTP 0 0.0 0 0 0 5982071.41579171 0 0 5915989.320492217 0 /kinetics/geometry 28 22 3942 4934 0
simundump kpool /kinetics/mTORC1_g/Rheb_GDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 39 22 3942 4605 0
simundump kpool /kinetics/mTORC1_g/TOR_clx 0 0.0 0 0 0 3588955.5360172014 0 0 5915989.320492217 0 /kinetics/geometry 25 22 3942 4934 0
simundump kpool /kinetics/mTORC1_g/TOR_Rheb_GTP_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 22 3942 4605 0
simundump kpool /kinetics/mTORC1_g/Rapamycin 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 53 black 3942 4934 0
simundump kpool /kinetics/mTORC1_g/Rapa_mTORC1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 3942 4605 0
simundump kpool /kinetics/S6K_g/S6K_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 23 3017 3804 0
simundump kpool /kinetics/S6K_g/S6K 0 0.0 0 0 0 7477640.575714247 0 0 5915989.320492217 0 /kinetics/geometry Pink 23 3017 4102 0
simundump kpool /kinetics/S6K_g/S6K_thr_412 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 23 3023 3804 0
simundump kpool /kinetics/S6K_g/S6K_thr_252 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 23 3032 3804 0
simundump kpool /kinetics/S6K_g/S6K_basal 0 0.0 0 0 0 5982.071415791701 0 0 5915989.320492217 0 /kinetics/geometry 45 23 3023 4124 0
simundump kpool /kinetics/S6K_g/PF4708671 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 41 black 3032 4102 0
simundump kpool /kinetics/S6K_g/Blocked_S6K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 3032 3804 0
simundump kpool /kinetics/S6K_g/FS115 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 49 black 3032 4102 0
simundump kpool /kinetics/_4EBP_g/_4E_BP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 47 24 3901 4124 0
simundump kpool /kinetics/_4EBP_g/_4E_BP_t37_46_s65 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 59 24 3901 3846 0
simundump kpool /kinetics/_4EBP_g/eIF4E_BP 0 0.0 0 0 0 1183218.3864882872 0 0 5915989.320492217 0 /kinetics/geometry 52 24 3901 4124 0
simundump kpool /kinetics/_4EBP_g/eIF4E_BP_t37_46 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 24 3901 3846 0
simundump kpool /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 39 24 3901 3846 0
simundump kpool /kinetics/_4EBP_g/_4E_BP_t37_46 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 24 3901 3846 0
simundump kpool /kinetics/_43S_g/Q_R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry blue 25 1608 3179 0
simundump kpool /kinetics/_43S_g/RM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 25 1608 3460 0
simundump kpool /kinetics/_43S_g/Quaternary_clx 0 0.0 0 0 0 278047.59880906384 0 0 5915989.320492217 0 /kinetics/geometry 28 25 1608 3460 0
simundump kpool /kinetics/_43S_g/_43Scomplex 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry hotpink 25 1608 3179 0
simundump kpool /kinetics/protein_g/AA 0 0.0 0 0 0 118321838.6488288 0 0 5915989.320492217 4 /kinetics/geometry cyan 26 3997 1964 0
simundump kpool /kinetics/protein_g/peptide 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry brown 26 4130 1965 0
simundump kpool /kinetics/protein_g/degraded_protein 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 52 26 3997 1739 0
simundump kpool /kinetics/protein_g/protein 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 26 3997 1739 0
simundump kpool /kinetics/CaMKIII_g/CaMKIII 0 0.0 0 0 0 358895.5536017204 0 0 5915989.320492217 0 /kinetics/geometry 32 28 1921 4096 0
simundump kpool /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 58 28 1921 3809 0
simundump kpool /kinetics/CaMKIII_g/CaMKIII_basal 0 0.0 0 0 0 591.5989320492214 0 0 5915989.320492217 0 /kinetics/geometry 45 28 1928 4096 0
simundump kpool /kinetics/CaMKIII_g/CaMKIII_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 28 1936 4096 0
simundump kpool /kinetics/TransInit_g/eIF4E 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 42 29 3854 3487 0
simundump kpool /kinetics/TransInit_g/eIF4G_A_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry cyan 29 3854 3209 0
simundump kpool /kinetics/TransInit_g/eIF4A 0 0.0 0 0 0 1196352.715988808 0 0 5915989.320492217 0 /kinetics/geometry pink 29 3854 3487 0
simundump kpool /kinetics/TransInit_g/eIF4G 0 0.0 0 0 0 239270.5431977616 0 0 5915989.320492217 0 /kinetics/geometry 21 29 3862 3487 0
simundump kpool /kinetics/TransInit_g/eIF4F 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 29 3862 3487 0
simundump kpool /kinetics/TransInit_g/mRNA 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 60 29 3862 3487 0
simundump kpool /kinetics/TransInit_g/eIF4F_mRNA_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 59 29 3854 3209 0
simundump kpool /kinetics/TransInit_g/eIF4E_mRNA_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 7 black 3862 3209 0
simundump kpool /kinetics/TransElong_g/eEF2 0 0.0 0 0 0 2990933.0959466286 0 0 5915989.320492217 0 /kinetics/geometry 27 30 3805 2868 0
simundump kpool /kinetics/TransElong_g/eEFthr_56 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 2 30 3805 2868 0
simundump kpool /kinetics/TransElong_g/_60S_R 0 0.0 0 0 0 402290.1469280492 0 0 5915989.320492217 4 /kinetics/geometry 46 30 3811 2868 0
simundump kpool /kinetics/TransElong_g/Translation_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 52 30 3805 2498 0
simundump kpool /kinetics/TransElong_g/_80S_ribos_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry blue 30 3805 2498 0
simundump kpool /kinetics/TransElong_g/Basal_Translation 0 0.0 0 0 0 118321.83864882884 0 0 5915989.320492217 0 /kinetics/geometry 57 30 3885 2468 0
simundump kpool /kinetics/_40S_g/_40S_inact 0 0.0 0 0 0 119635.2715988808 0 0 5915989.320492217 4 /kinetics/geometry 3 31 2861 3460 0
simundump kpool /kinetics/_40S_g/_40S 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 7 31 2861 3193 0
simundump kpool /kinetics/TSC1_TSC2_g/TSC1_TSC2_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 32 2974 4611 0
simundump kpool /kinetics/TSC1_TSC2_g/TSC1_TSC2 0 0.0 0 0 0 5982071.41579171 0 0 5915989.320492217 0 /kinetics/geometry 51 32 2974 4928 0
simundump kpool /kinetics/CaseinKinase_g/CKII 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 6 23 5214 3219 0
simundump kpool /kinetics/FMRP_g/FMRP 0 0.0 0 0 0 59159.89320492217 0 0 5915989.320492217 0 /kinetics/geometry 36 yellow 5664 2697 0
simundump kpool /kinetics/FMRP_g/degraded 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 8 yellow 5858 2697 0
simundump kpool /kinetics/FMRP_g/FMRP_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 47 yellow 5926 2697 0
simundump kpool /kinetics/FMRP_g/blocked_transl_cplx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry blue yellow 5622 2417 0
simundump kpool /kinetics/AMPAR_g/sAMPARpS845 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 yellow 0 6943 0
simundump kpool /kinetics/AMPAR_g/sAMPAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 yellow 119 6943 0
simundump kpool /kinetics/AMPAR_g/sAMPARpS845S831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 yellow 242 6943 0
simundump kpool /kinetics/AMPAR_g/PSD95 0 0.0 0 0 0 59159893.204922125 0 0 5915989.320492217 0 /kinetics/geometry 48 black 357 6943 0
simundump kpool /kinetics/AMPAR_g/intAMPARpS845 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 30 15 30 6619 0
simundump kpool /kinetics/AMPAR_g/intAMPAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 126 6619 0
simundump kpool /kinetics/AMPAR_g/intAMPARpS845S831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 black 230 6619 0
simundump kpool /kinetics/AMPAR_g/Bulk_AMPAR 0 0.0 0 0 0 4732791.456393774 0 0 5915989.320492217 0 /kinetics/geometry 53 black 339 6619 0
simundump kpool /kinetics/AMPAR_g/Glu_sAMPAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 black 57 7370 0
simundump kpool /kinetics/AMPAR_g/Glu_sAMPARpS845 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 54 black 161 7369 0
simundump kpool /kinetics/AMPAR_g/Glu_sAMPARpS845S831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 7 black 266 7369 0
simundump kpool /kinetics/AMPAR_g/AMPA_sAMPAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 61 black 28 7605 0
simundump kpool /kinetics/AMPAR_g/AMPA_sAMPARpS845 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 39 black 126 7605 0
simundump kpool /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 22 black 214 7604 0
simundump kpool /kinetics/AMPAR_g/aAMPAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 490 6942 0
simundump kpool /kinetics/AMPAR_g/Glu_sAMPARpS831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 366 7368 0
simundump kpool /kinetics/AMPAR_g/AMPA_sAMPARpS831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 9 black 310 7605 0
simundump kpool /kinetics/AMPAR_g/sAMPARpS831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 63 black 644 6942 0
simundump kpool /kinetics/AMPAR_g/intAMPARpS831 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 21 black 501 6619 0
simundump kpool /kinetics/PP1_g/PP1_active 0 0.0 0 0 0 10649068.090343814 0 0 5915989.320492217 0 /kinetics/geometry cyan yellow 8799 2816 0
simundump kpool /kinetics/PP1_g/I1 0 0.0 0 0 0 10768097.951442279 0 0 5915989.320492217 0 /kinetics/geometry 6 11 8359 3172 0
simundump kpool /kinetics/PP1_g/I1_p 0 0.0 0 0 0 5981.660967994823 0 0 5915989.320492217 0 /kinetics/geometry orange 11 8399 2781 0
simundump kpool /kinetics/PP1_g/PP1_I1_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 11 8470 2781 0
simundump kpool /kinetics/PP1_g/PP1_I1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry brown 11 8442 3172 0
simundump kpool /kinetics/PKA_g/PKA_active 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 47 black 9193 3781 0
simundump kpool /kinetics/PKA_g/R2C2 0 0.0 0 0 0 2957994.6602461115 0 0 5915989.320492217 0 /kinetics/geometry 52 13 9230 4204 0
simundump kpool /kinetics/PKA_g/R2C2_cAMP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 13 9257 4204 0
simundump kpool /kinetics/PKA_g/R2C2_cAMP2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 13 9278 4204 0
simundump kpool /kinetics/PKA_g/R2C2_cAMP3 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 13 9298 4204 0
simundump kpool /kinetics/PKA_g/R2C2_cAMP4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 13 9320 4204 0
simundump kpool /kinetics/PKA_g/R2C_cAMP4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 13 9350 4203 0
simundump kpool /kinetics/PKA_g/R2_cAMP4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 13 9445 4204 0
simundump kpool /kinetics/PKA_g/PKA_inhibitor 0 0.0 0 0 0 1495466.5479733143 0 0 5915989.320492217 0 /kinetics/geometry 63 13 9296 3781 0
simundump kpool /kinetics/PKA_g/inhibited_PKA 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry cyan 13 9356 3781 0
simundump kpool /kinetics/CaMKII_g/aCaMKII 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 53 2443 0
simundump kpool /kinetics/CaMKII_g/CaMKII 0 0.0 0 0 0 118321838.64882879 0 0 5915989.320492217 0 /kinetics/geometry 6 9 71 2830 0
simundump kpool /kinetics/CaMKII_g/CaMKII_CaM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 9 158 2830 0
simundump kpool /kinetics/CaMKII_g/CaMKII_thr286p_CaM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 55 9 251 2829 0
simundump kpool /kinetics/CaMKII_g/CaMKIIppp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry cyan 9 339 2829 0
simundump kpool /kinetics/CaMKII_g/CaMKII_thr286 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 9 431 2832 0
simundump kpool /kinetics/CaMKII_g/CaMKII_thr306 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 9 523 2832 0
simundump kpool /kinetics/CaMKII_g/tot_CaM_CaMKII 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 9 130 2443 0
simundump kpool /kinetics/CaMKII_g/tot_autonomous_CaMKII 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry green 9 187 2443 0
simundump kpool /kinetics/CaMKII_g/tot_CaMKIIT286 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 247 2443 0
simundump kpool /kinetics/CaMKII_g/KN62 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 616 2830 0
simundump kpool /kinetics/CaMKII_g/Blocked_CaMKII 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 309 2443 0
simundump kpool /kinetics/Ras_g/GEF_Gprot_bg 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 5 5976 5774 0
simundump kpool /kinetics/Ras_g/inact_GEF 0 0.0 0 0 0 598166.0967994818 0 0 5915989.320492217 0 /kinetics/geometry 3 5 5970 6208 0
simundump kpool /kinetics/Ras_g/GEF_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry hotpink 5 5970 5774 0
simundump kpool /kinetics/Ras_g/GTP_Ras 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry orange 5 5936 5774 0
simundump kpool /kinetics/Ras_g/GDP_Ras 0 0.0 0 0 0 1183218.3864882872 0 0 5915989.320492217 0 /kinetics/geometry 25 5 5936 6208 0
simundump kpool /kinetics/Ras_g/GAP_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 5 5944 5774 0
simundump kpool /kinetics/Ras_g/GAP 0 0.0 0 0 0 11832.18386488287 0 0 5915989.320492217 0 /kinetics/geometry 40 5 5950 5774 0
simundump kpool /kinetics/Ras_g/inact_GEF_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 5 5990 6208 0
simundump kpool /kinetics/Ras_g/CaM_GEF 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 5 5956 5774 0
simundump kpool /kinetics/PP2B_g/CaM(Ca)n_CaNAB 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 41 black 2273 2897 0
simundump kpool /kinetics/PP2B_g/CaNAB_Ca4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry tan 10 2369 2474 0
simundump kpool /kinetics/PP2B_g/CaNAB 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 23 12 2431 2474 0
simundump kpool /kinetics/PP2B_g/CaNAB_Ca2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 12 2487 2474 0
simundump kpool /kinetics/PP2B_g/CaMCa3_CaNAB 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 12 2306 2897 0
simundump kpool /kinetics/PP2B_g/CaMCa2_CaNAB 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 12 2328 2897 0
simundump kpool /kinetics/PP2B_g/CaMCa4_CaNAB 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry blue 12 2349 2897 0
simundump kpool /kinetics/synGAP_g/synGAP_PDZ 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 1921 6746 0
simundump kpool /kinetics/synGAP_g/synGAPp_PDZ 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 black 1997 6746 0
simundump kpool /kinetics/synGAP_g/synGAP 0 0.0 0 0 0 59159893.204922125 0 0 5915989.320492217 0 /kinetics/geometry 48 black 1938 6354 0
simundump kpool /kinetics/synGAP_g/synGAPp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 63 black 2078 6354 0
simundump kpool /kinetics/Ca_g/Ca 0 0.0 0 0 0 473277.0934003927 0 0 5915989.320492217 0 /kinetics/geometry red black 120 5280 0
simundump kpool /kinetics/Ca_g/Ca_leak_to_cytoplasm 0 0.0 0 0 0 141984.1541396101 0 0 5915989.320492217 0 /kinetics/geometry 53 darkgreen 36 4601 0
simundump kpool /kinetics/Ca_g/IP3R 0 0.0 0 0 0 887398.3980738319 0 0 5915989.320492217 0 /kinetics/geometry green darkgreen 272 5280 0
simundump kpool /kinetics/Ca_g/PMCA 0 0.0 0 0 0 59159.89320492217 0 0 5915989.320492217 0 /kinetics/geometry 57 darkgreen 821 5627 0
simundump kpool /kinetics/Ca_g/Ca_leak_from_extracell 0 0.0 0 0 0 4910.289606159401 0 0 5915989.320492217 0 /kinetics/geometry hotpink darkgreen 403 5977 0
simundump kpool /kinetics/Ca_g/Ca_ext 0 0.0 0 0 0 23664367729.765755 0 0 5915989.320492217 4 /kinetics/geometry 39 black 140 5977 0
simundump kpool /kinetics/Ca_g/Ca_ER 0 0.0 0 0 0 1478946.0241484423 0 0 5915989.320492217 0 /kinetics/geometry 6 black 166 4601 0
simundump kpool /kinetics/Ca_g/SERCA 0 0.0 0 0 0 8873983.980738323 0 0 5915989.320492217 0 /kinetics/geometry 49 black 42 4971 0
simundump kpool /kinetics/Ca_g/aSERCA 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 black 97 4971 0
simundump kpool /kinetics/Ca_g/aVGCC 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 9 5627 0
simundump kpool /kinetics/Ca_g/IP3_IP3R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 333 5280 0
simundump kpool /kinetics/Ca_g/inh_IP3R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 395 5280 0
simundump kpool /kinetics/Ca_g/aIP3R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 60 black 478 5280 0
simundump kpool /kinetics/Ca_g/VGCC 0 0.0 0 0 0 591598.932049221 0 0 5915989.320492217 0 /kinetics/geometry 9 black 97 5627 0
simundump kpool /kinetics/Ca_g/Ca_IP3_IP3R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 549 5280 0
simundump kpool /kinetics/Ca_g/Orai1_open 0 0.0 0 0 0 59159.89320492217 0 0 5915989.320492217 0 /kinetics/geometry 25 black 348 5627 0
simundump kpool /kinetics/Ca_g/Orai1_close 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 424 5627 0
simundump kpool /kinetics/Ca_g/Mirror_Ca_IP3_IP3R 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 631 5280 0
simundump kpool /kinetics/Ca_g/Calsequestrin 0 0.0 0 0 0 1301529.9639421948 0 0 5915989.320492217 0 /kinetics/geometry 15 black 299 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS5 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 55 black 433 4601 0
simundump kpool /kinetics/Ligands_g/NMDA 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 41 black 4341 7999 0
simundump kpool /kinetics/Ligands_g/EGF 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry red 6 4395 7999 0
simundump kpool /kinetics/Ligands_g/Glutamate 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry green 15 4450 7999 0
simundump kpool /kinetics/Ligands_g/BDNF 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 53 27 4521 7999 0
simundump kpool /kinetics/Ligands_g/DHPG 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 47 black 4588 7999 0
simundump kpool /kinetics/Ligands_g/Epinephrine 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 40 black 4651 7999 0
simundump kpool /kinetics/Ligands_g/Isoproterenol 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 4 black 4719 8000 0
simundump kpool /kinetics/Ligands_g/AMPA 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 53 black 4783 8000 0
simundump kpool /kinetics/Ligands_g/Forskolin 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 23 black 4845 8000 0
simundump kpool /kinetics/CaM_g/CaM_Ca4 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry blue 10 217 3445 0
simundump kpool /kinetics/CaM_g/CaM 0 0.0 0 0 0 118321838.64882879 0 0 5915989.320492217 0 /kinetics/geometry 53 10 219 3814 0
simundump kpool /kinetics/CaM_g/neurogranin_CaM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 10 239 3794 0
simundump kpool /kinetics/CaM_g/neurogranin_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 10 266 3724 0
simundump kpool /kinetics/CaM_g/neurogranin 0 0.0 0 0 0 59816609.67994816 0 0 5915989.320492217 0 /kinetics/geometry red 10 260 3814 0
simundump kpool /kinetics/CaM_g/CaM_Ca3 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry hotpink 10 266 3445 0
simundump kpool /kinetics/CaM_g/CaM_Ca2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 10 308 3445 0
simundump kpool /kinetics/CaM_g/CaM_Ca 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 10 350 3445 0
simundump kpool /kinetics/CaM_g/W7 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 black 232 4165 0
simundump kpool /kinetics/CaM_g/Blocked_CaM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 260 4165 0
simundump kpool /kinetics/Phosphatase_g/PP2A 0 0.0 0 0 0 1538153.1188500077 0 0 5915989.320492217 0 /kinetics/geometry red 17 5646 1693 0
simundump kpool /kinetics/Phosphatase_g/MKP_1 0 0.0 0 0 0 14198.415413961011 0 0 5915989.320492217 0 /kinetics/geometry 51 17 5690 1898 0
simundump kpool /kinetics/Phosphatase_g/Blocked_PP2A 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 24 black 5784 1898 0
simundump kpool /kinetics/Phosphatase_g/Okadaic_Acid 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 5722 1898 0
simundump kpool /kinetics/PI3K_g/PIP3 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 43 19 4013 5720 0
simundump kpool /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry brown 19 3783 6152 0
simundump kpool /kinetics/PI3K_g/PI3K 0 0.0 0 0 0 598166.0967994818 0 0 5915989.320492217 0 /kinetics/geometry cyan 19 4040 5720 0
simundump kpool /kinetics/PI3K_g/PI3K_basal 0 0.0 0 0 0 591.5989320492214 0 0 5915989.320492217 0 /kinetics/geometry 10 19 4069 5720 0
simundump kpool /kinetics/PI3K_g/PTEN 0 0.0 0 0 0 1615112.0807671212 0 0 5915989.320492217 0 /kinetics/geometry 60 19 4103 5720 0
simundump kpool /kinetics/PI3K_g/Ras_GTP_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 19 4124 5720 0
simundump kpool /kinetics/PI3K_g/aPI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 20 black 3790 6152 0
simundump kpool /kinetics/PI3K_g/tLRHomerPIKE_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 59 33 3811 6152 0
simundump kpool /kinetics/PI3K_g/LY294002 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 black 4150 5720 0
simundump kpool /kinetics/PI3K_g/LY294002_block_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 black 3832 6152 0
simundump kpool /kinetics/PI3K_g/Wortmannin 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 4173 5720 0
simundump kpool /kinetics/PI3K_g/Wortmannin_block_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 47 black 3854 6152 0
simundump kpool /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 19 black 3867 6152 0
simundump kpool /kinetics/PI3K_g/GluRHomerPIKE_PI3K 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 39 black 3887 6152 0
simundump kpool /kinetics/PLCb_g/PLC_Ca 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 19 black 7403 6212 0
simundump kpool /kinetics/PLCb_g/PLC_Ca_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 61 black 7411 5873 0
simundump kpool /kinetics/PLCb_g/PIP2 0 0.0 0 0 0 59750938.032445565 0 0 5915989.320492217 4 /kinetics/geometry 1 black 7396 5420 0
simundump kpool /kinetics/PLCb_g/DAG 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 7417 5420 0
simundump kpool /kinetics/PLCb_g/IP3 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 54 black 7436 5420 0
simundump kpool /kinetics/PLCb_g/PLCb 0 0.0 0 0 0 4785410.863955232 0 0 5915989.320492217 0 /kinetics/geometry cyan 2 7465 6212 0
simundump kpool /kinetics/PLCb_g/Inositol 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry green 2 7465 5420 0
simundump kpool /kinetics/PLCb_g/PC 0 0.0 0 0 0 5915989.320492224 0 0 5915989.320492217 4 /kinetics/geometry 40 2 7491 5420 0
simundump kpool /kinetics/PLCb_g/PLC_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 7521 6212 0
simundump kpool /kinetics/AC_g/PDE1 0 0.0 0 0 0 11950187.606489139 0 0 5915989.320492217 0 /kinetics/geometry 27 black 9920 6150 0
simundump kpool /kinetics/AC_g/cAMP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 black 9920 5514 0
simundump kpool /kinetics/AC_g/AMP 0 0.0 0 0 0 5915989320.492218 0 0 5915989.320492217 0 /kinetics/geometry 23 black 9920 5514 0
simundump kpool /kinetics/AC_g/ATP 0 0.0 0 0 0 29909330959.466297 0 0 5915989.320492217 4 /kinetics/geometry red 14 9920 5514 0
simundump kpool /kinetics/AC_g/AC1_CaM 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 14 9920 5832 0
simundump kpool /kinetics/AC_g/AC1 0 0.0 0 0 0 119635.2715988808 0 0 5915989.320492217 0 /kinetics/geometry orange 14 9920 6150 0
simundump kpool /kinetics/AC_g/AC2p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry yellow 14 9928 6150 0
simundump kpool /kinetics/AC_g/AC2_Gs 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 14 9920 5832 0
simundump kpool /kinetics/AC_g/AC2 0 0.0 0 0 0 89729.0189978912 0 0 5915989.320492217 0 /kinetics/geometry 1 14 9934 6161 0
simundump kpool /kinetics/AC_g/AC1_Gs 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry orange 14 9920 5842 0
simundump kpool /kinetics/AC_g/AC2p_Gs 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry green 14 9928 5842 0
simundump kpool /kinetics/AC_g/cAMP_PDE 0 0.0 0 0 0 2691819.2639621226 0 0 5915989.320492217 0 /kinetics/geometry 0 14 9920 5196 0
simundump kpool /kinetics/AC_g/cAMP_PDEp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry green 14 9920 5196 0
simundump kpool /kinetics/AC_g/CaM_PDE1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 14 9934 5842 0
simundump kpool /kinetics/AC_g/AC2_Gs_Fsk 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 black 9928 5514 0
simundump kpool /kinetics/AC_g/AC1_Gs_Fsk 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 56 black 9928 5514 0
simundump kpool /kinetics/PKC_g/PKC_Ca 0 0.0 0 0 0 2.225858402541318e-10 0 0 5915989.320492217 0 /kinetics/geometry red 0 5642 5243 0
simundump kpool /kinetics/PKC_g/PKC_DAG_AA_p 0 0.0 0 0 0 2.9391140615891084e-11 0 0 5915989.320492217 0 /kinetics/geometry cyan 0 5656 4893 0
simundump kpool /kinetics/PKC_g/PKC_Ca_AA_p 0 0.0 0 0 0 1.0468471059711659e-09 0 0 5915989.320492217 0 /kinetics/geometry orange 0 5691 5243 0
simundump kpool /kinetics/PKC_g/PKC_Ca_memb_p 0 0.0 0 0 0 8.312183558743411e-11 0 0 5915989.320492217 0 /kinetics/geometry 57 0 5705 4893 0
simundump kpool /kinetics/PKC_g/PKC_DAG_memb_p 0 0.0 0 0 0 5.643965043102531e-14 0 0 5915989.320492217 0 /kinetics/geometry yellow 0 5745 4893 0
simundump kpool /kinetics/PKC_g/PKC_basal_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 0 5734 5243 0
simundump kpool /kinetics/PKC_g/PKC_AA_p 0 0.0 0 0 0 1.0847109152343851e-10 0 0 5915989.320492217 0 /kinetics/geometry cyan 0 5780 5243 0
simundump kpool /kinetics/PKC_g/PKC_Ca_DAG 0 0.0 0 0 0 5.062565738806062e-16 0 0 5915989.320492217 0 /kinetics/geometry 21 0 5823 5243 0
simundump kpool /kinetics/PKC_g/PKC_DAG 0 0.0 0 0 0 6.945187171197051e-10 0 0 5915989.320492217 0 /kinetics/geometry 25 0 5880 5243 0
simundump kpool /kinetics/PKC_g/PKC_DAG_AA 0 0.0 0 0 0 1.5067538623878246e-12 0 0 5915989.320492217 0 /kinetics/geometry 53 0 5926 5243 0
simundump kpool /kinetics/PKC_g/PKC_cytosolic 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 0 0 5976 5243 0
simundump kpool /kinetics/PKC_g/PKC_active 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 0 6046 4893 0
simundump kpool /kinetics/PLA2_g/PLA2_cytosolic 0 0.0 0 0 0 2392705.431977616 0 0 5915989.320492217 0 /kinetics/geometry 53 1 7673 4510 0
simundump kpool /kinetics/PLA2_g/PLA2_Ca_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry yellow 1 7673 4510 0
simundump kpool /kinetics/PLA2_g/PIP2_PLA2_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry cyan 1 7673 4510 0
simundump kpool /kinetics/PLA2_g/PIP2_Ca_PLA2_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 1 7673 4510 0
simundump kpool /kinetics/PLA2_g/DAG_Ca_PLA2_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 1 7685 4510 0
simundump kpool /kinetics/PLA2_g/APC 0 0.0 0 0 0 179458037.99578232 0 0 5915989.320492217 4 /kinetics/geometry yellow 1 7673 4191 0
simundump kpool /kinetics/PLA2_g/PLA2_p_Ca 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 1 7685 4510 0
simundump kpool /kinetics/PLA2_g/PLA2_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry orange 1 7690 4510 0
simundump kpool /kinetics/PLA2_g/Arachidonic_Acid 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry darkgreen 1 7673 4191 0
simundump kpool /kinetics/Gq_g/BetaGamma 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry yellow 16 7334 6588 0
simundump kpool /kinetics/Gq_g/G_pGTP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 16 7397 6598 0
simundump kpool /kinetics/Gq_g/G_pGDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 16 7334 6988 0
simundump kpool /kinetics/Gq_g/G_GDP 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 6 16 7799 6844 0
simundump kpool /kinetics/DHPG_mGluR_g/Rec_DHPG 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 black 7036 7611 0
simundump kpool /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 7050 7231 0
simundump kpool /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 52 black 7147 7231 0
simundump kpool /kinetics/DHPG_mGluR_g/RecpS870_DHPG 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 7170 7610 0
simundump kpool /kinetics/DHPG_mGluR_g/DHPGR_MPEP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 7286 7610 0
simundump kpool /kinetics/DHPG_mGluR_g/DHPG_mGluRpT840 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 7250 7231 0
simundump kpool /kinetics/Gs_g/Gs_alpha_GTP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 16 9728 6554 0
simundump kpool /kinetics/Gs_g/Gs_GDP 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 23 black 9804 6882 0
simundump kpool /kinetics/Gs_g/Gs_alpha_GDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 25 black 9789 6554 0
simundump kpool /kinetics/b2AR_g/b2AR 0 0.0 0 0 0 591598.932049221 0 0 5915989.320492217 0 /kinetics/geometry 57 black 8456 7610 0
simundump kpool /kinetics/b2AR_g/Iso_b2AR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 50 black 8630 7609 0
simundump kpool /kinetics/b2AR_g/Iso_RGsGDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 black 8381 7335 0
simundump kpool /kinetics/b2AR_g/b2AR_GsGDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8511 7335 0
simundump kpool /kinetics/b2AR_g/Epi_b2AR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8821 7610 0
simundump kpool /kinetics/b2AR_g/Epi_RGsGDP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 42 black 8687 7335 0
simundump kpool /kinetics/b2AR_g/Int_b2ARp1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 8342 7062 0
simundump kpool /kinetics/b2AR_g/Int_b2AR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8562 7062 0
simundump kpool /kinetics/b2AR_g/Int_b2ARp2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 8727 7060 0
simundump kpool /kinetics/MAPK_g/craf_1_p_ser259 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 4 5746 3764 0
simundump kpool /kinetics/MAPK_g/MAPK_p_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 41 4 5768 3137 0
simundump kpool /kinetics/MAPK_g/craf_1 0 0.0 0 0 0 1196352.715988808 0 0 5915989.320492217 0 /kinetics/geometry 6 4 5816 3764 0
simundump kpool /kinetics/MAPK_g/craf_1_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 42 4 5880 3764 0
simundump kpool /kinetics/MAPK_g/MAPKK 0 0.0 0 0 0 1076809.7951442278 0 0 5915989.320492217 0 /kinetics/geometry 22 4 5768 3423 0
simundump kpool /kinetics/MAPK_g/MAPK 0 0.0 0 0 0 2153516.9783392316 0 0 5915989.320492217 0 /kinetics/geometry 57 4 5768 3137 0
simundump kpool /kinetics/MAPK_g/craf_1_p_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry hotpink 4 5946 3764 0
simundump kpool /kinetics/MAPK_g/MAPK_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry orange 4 5768 3137 0
simundump kpool /kinetics/MAPK_g/MAPKK_p_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 3 4 5865 3423 0
simundump kpool /kinetics/MAPK_g/MAPKK_p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 4 5940 3423 0
simundump kpool /kinetics/MAPK_g/Raf_p_GTP_Ras 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 4 6031 3764 0
simundump kpool /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 55 black 6121 3764 0
simundump kpool /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 6211 3764 0
simundump kpool /kinetics/MAPK_g/U0126_block_MEK 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 25 black 5752 4008 0
simundump kpool /kinetics/MAPK_g/U0126 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 5760 4008 0
simundump kpool /kinetics/MAPK_g/PD098059 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 5780 4008 0
simundump kpool /kinetics/MAPK_g/PD098059_Blocked_MEK1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 5795 4008 0
simundump kpool /kinetics/MAPK_g/Intb2ARp1barr2_craf1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 black 6301 3764 0
simundump kpool /kinetics/MAPK_g/Intb2ARp1barr2_craf1p 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 22 black 6387 3764 0
simundump kpool /kinetics/MAPK_g/Intb2ARp2barr2_craf1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 56 black 6552 3764 0
simundump kpool /kinetics/mGluR5_g/mGluR5 0 0.0 0 0 0 1774776.2737578203 0 0 5915989.320492217 0 /kinetics/geometry 61 15 5685 7611 0
simundump kpool /kinetics/mGluR5_g/Rec_Glu 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 15 5840 7611 0
simundump kpool /kinetics/mGluR5_g/Rec_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 18 15 5695 7214 0
simundump kpool /kinetics/mGluR5_g/Rec_Glu_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 15 5556 6960 0
simundump kpool /kinetics/mGluR5_g/intmGluR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 5510 6809 0
simundump kpool /kinetics/mGluR5_g/MPEP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 5640 7341 0
simundump kpool /kinetics/mGluR5_g/Int_mGluRpT840 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 5602 6809 0
simundump kpool /kinetics/mGluR5_g/RpS901 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 5560 6660 0
simundump kpool /kinetics/mGluR5_g/RecpS870 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 6039 7611 0
simundump kpool /kinetics/mGluR5_g/RecpS870_Glu 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 black 5832 7340 0
simundump kpool /kinetics/mGluR5_g/RecpS870_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 54 black 5846 7214 0
simundump kpool /kinetics/mGluR5_g/RecpS870_Glu_Gq 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 7 black 5745 6960 0
simundump kpool /kinetics/mGluR5_g/Int_RpS901 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 7 black 5692 6809 0
simundump kpool /kinetics/mGluR5_g/mGluR_MPEP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 38 black 6039 6809 0
simundump kpool /kinetics/mGluR5_g/GluR_MPEP 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 6004 6809 0
simundump kpool /kinetics/mGluR5_g/Glu_mGluRpT840 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 52 black 5698 6660 0
simundump kpool /kinetics/mGluR5_g/RpS870S901G 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 black 5845 6660 0
simundump kpool /kinetics/mGluR5_g/RpS901G 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 61 black 6007 6660 0
simundump kpool /kinetics/mGluR5_g/RpS870S901 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 2 black 6127 6661 0
simundump kpool /kinetics/mGluR5_g/intmGluR_Homer 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 0 black 5868 6809 0
simundump kpool /kinetics/HomerPIKE_g/Homer1c 0 0.0 0 0 0 1774776.2737578203 0 0 5915989.320492217 0 /kinetics/geometry 45 33 8173 6729 0
simundump kpool /kinetics/HomerPIKE_g/GluR_Homer_PIKE 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 33 8144 6408 0
simundump kpool /kinetics/HomerPIKE_g/PIKE_L 0 0.0 0 0 0 591598.932049221 0 0 5915989.320492217 0 /kinetics/geometry 52 33 8297 6729 0
simundump kpool /kinetics/HomerPIKE_g/HomerpS117 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 black 8502 6729 0
simundump kpool /kinetics/HomerPIKE_g/DHPGR_Homer_PIKE 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8323 6407 0
simundump kpool /kinetics/AKT_g/PDK1 0 0.0 0 0 0 5982071.41579171 0 0 5915989.320492217 0 /kinetics/geometry 37 19 2329 5833 0
simundump kpool /kinetics/AKT_g/PIP3_PDK1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 9 20 2335 5833 0
simundump kpool /kinetics/AKT_g/PIP3_AKT 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 20 2335 5833 0
simundump kpool /kinetics/AKT_g/PIP3_PDK2 0 0.0 0 0 0 17945.80379957824 0 0 5915989.320492217 0 /kinetics/geometry 39 20 2342 5833 0
simundump kpool /kinetics/AKT_g/PIP3_AKT_thr308 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 60 20 2329 5513 0
simundump kpool /kinetics/AKT_g/PIP3_AKT_t308_s473 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 25 20 2335 5513 0
simundump kpool /kinetics/AKT_g/AKT 0 0.0 0 0 0 1195018.7606489116 0 0 5915989.320492217 0 /kinetics/geometry 4 20 2342 5833 0
simundump kpool /kinetics/AKT_g/AKT_basal 0 0.0 0 0 0 5915.9893204922155 0 0 5915989.320492217 0 /kinetics/geometry 23 black 2342 5833 0
simundump kpool /kinetics/EGFR_g/EGFR 0 0.0 0 0 0 996936.6538691875 0 0 5915989.320492217 0 /kinetics/geometry red 6 3030 7605 0
simundump kpool /kinetics/EGFR_g/L_EGFR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 1 6 3242 7589 0
simundump kpool /kinetics/EGFR_g/Internal_L_EGFR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 51 6 3030 7297 0
simundump kpool /kinetics/Sos_g/Gab1 0 0.0 0 0 0 4187388.4238846633 0 0 5915989.320492217 0 /kinetics/geometry 51 19 3907 6774 0
simundump kpool /kinetics/Sos_g/SHCp_Grb2_Gab1_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 50 19 3900 6496 0
simundump kpool /kinetics/Sos_g/SHCp_SosGrb2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry brown 7 3907 6496 0
simundump kpool /kinetics/Sos_g/SHC 0 0.0 0 0 0 2990933.0959466286 0 0 5915989.320492217 0 /kinetics/geometry 40 7 3912 6774 0
simundump kpool /kinetics/Sos_g/SHCp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 57 7 3912 6774 0
simundump kpool /kinetics/Sos_g/Sosp_Grb2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 7 3912 6496 0
simundump kpool /kinetics/Sos_g/Grb2 0 0.0 0 0 0 5915989.320492223 0 0 5915989.320492217 0 /kinetics/geometry 1 7 3912 6774 0
simundump kpool /kinetics/Sos_g/Sos_Grb2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry orange 7 3912 6496 0
simundump kpool /kinetics/Sos_g/Sosp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 48 7 3912 6496 0
simundump kpool /kinetics/Sos_g/Sos 0 0.0 0 0 0 591598.932049221 0 0 5915989.320492217 0 /kinetics/geometry red 7 3912 6496 0
simundump kpool /kinetics/Sos_g/SHCp_Grb2_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 42 7 3912 6774 0
simundump kpool /kinetics/Sos_g/SHC_basal 0 0.0 0 0 0 2957.9946602461077 0 0 5915989.320492217 0 /kinetics/geometry 59 black 3919 6486 0
simundump kpool /kinetics/PLCg_g/PLCg 0 0.0 0 0 0 4851082.511457834 0 0 5915989.320492217 0 /kinetics/geometry 58 8 2980 6769 0
simundump kpool /kinetics/PLCg_g/PLCgp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 13 8 2974 6493 0
simundump kpool /kinetics/PLCg_g/Ca_PLCg 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry pink 8 3043 6493 0
simundump kpool /kinetics/PLCg_g/Ca_PLCgp 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 62 8 3119 6493 0
simundump kpool /kinetics/PLCg_g/PLCg_basal 0 0.0 0 0 0 4188.61976727534 0 0 5915989.320492217 0 /kinetics/geometry 33 8 3037 6769 0
simundump kpool /kinetics/mGluR1_g/LY367385 0 0.0 0 0 0 0.0 0 0 5915989.320492217 4 /kinetics/geometry 45 3 9679 7609 0
simundump kpool /kinetics/mGluR1_g/Blocked_mGluR1a 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry seagreen 3 9679 7322 0
simundump kpool /kinetics/mGluR1_g/mGluR1a 0 0.0 0 0 0 11832183.86488288 0 0 5915989.320492217 0 /kinetics/geometry 56 black 9686 7609 0
simundump kpool /kinetics/TrKB_g/Int_BDNF_TrKB2_p_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry yellow 21 4044 7280 0
simundump kpool /kinetics/TrKB_g/TrKB 0 0.0 0 0 0 1479048.636097665 0 0 5915989.320492217 0 /kinetics/geometry 3 21 4044 7608 0
simundump kpool /kinetics/TrKB_g/BDNF_TrKB2_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 38 21 4044 7608 0
simundump kpool /kinetics/TrKB_g/BDNF_TrKB_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 45 21 4044 7608 0
simundump kpool /kinetics/TrKB_g/BDNF_TrKB2_p_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry red 21 4044 7608 0
simundump kpool /kinetics/TrKB_g/Int_BDNF_TrKB2_clx 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 27 black 4044 7280 0
simundump kpool /kinetics/NMDAR_g/APV 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 1860 7214 0
simundump kpool /kinetics/NMDAR_g/Blocked_NMDAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 38 black 1922 7214 0
simundump kpool /kinetics/NMDAR_g/NMDAR 0 0.0 0 0 0 2366395.728196887 0 0 5915989.320492217 0 /kinetics/geometry 2 black 1970 7605 0
simundump kpool /kinetics/NMDAR_g/aNMDAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 8 black 2075 7605 0
simundump kpool /kinetics/NMDAR_g/Glu_NMDAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 1986 7214 0
simundump kpool /kinetics/NMDAR_g/NMDA_NMDAR 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 2054 7214 0
simundump kpool /kinetics/barr2_g/GRK5 0 0.0 0 0 0 591598.932049221 0 0 5915989.320492217 0 /kinetics/geometry 42 34 8096 6077 0
simundump kpool /kinetics/barr2_g/barr2 0 0.0 0 0 0 1893087.8512117276 0 0 5915989.320492217 0 /kinetics/geometry 19 34 8159 6077 0
simundump kpool /kinetics/barr2_g/GRK2_memb 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 50 black 8244 6077 0
simundump kpool /kinetics/barr2_g/Isob2ARp2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 6 black 8106 5755 0
simundump kpool /kinetics/barr2_g/Int_mGluRpT840_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 50 black 8156 5130 0
simundump kpool /kinetics/barr2_g/Isob2ARp1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 53 black 8228 5755 0
simundump kpool /kinetics/barr2_g/Glu_mGluRpT840_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 8088 5429 0
simundump kpool /kinetics/barr2_g/Isob2ARp1_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 19 black 8344 5755 0
simundump kpool /kinetics/barr2_g/Int_b2ARp1_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 39 black 8293 5130 0
simundump kpool /kinetics/barr2_g/Epib2ARp1 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 49 black 8466 5755 0
simundump kpool /kinetics/barr2_g/Epib2ARp2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 63 black 8597 5755 0
simundump kpool /kinetics/barr2_g/Epib2ARp1_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8719 5755 0
simundump kpool /kinetics/barr2_g/DHPG_mGluRpT840_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 21 black 8265 5429 0
simundump kpool /kinetics/barr2_g/GRK2_cytosolic 0 0.0 0 0 0 1183218.3864882872 0 0 5915989.320492217 0 /kinetics/geometry 53 black 8383 6077 0
simundump kpool /kinetics/barr2_g/Blocked_GRK2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8614 6077 0
simundump kpool /kinetics/barr2_g/Isob2ARp2_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 19 black 8839 5755 0
simundump kpool /kinetics/barr2_g/Epib2ARp2_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 8971 5755 0
simundump kpool /kinetics/barr2_g/Int_b2ARp2_barr2 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 8391 5130 0
simundump kpool /kinetics/Ca_g/Ca_CalS15 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 50 black 566 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS25 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 702 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS35 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 60 black 832 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS10 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 20 black 965 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS20 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 52 black 1098 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS30 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 40 black 1232 4601 0
simundump kpool /kinetics/Ca_g/Ca_CalS40 0 0.0 0 0 0 0.0 0 0 5915989.320492217 0 /kinetics/geometry 23 black 1370 4602 0
simundump kreac /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx 0 1.014209366338204e-06 3.0 "" white black 3942 4729 0
simundump kreac /kinetics/mTORC1_g/GDP_to_GTP 0 0.1 0.0 "" white black 3951 4740 0
simundump kreac /kinetics/mTORC1_g/Rapa_bind_mTORC1 0 1.6903489438970061e-06 0.035 "" white black 3951 4740 0
simundump kreac /kinetics/S6K_g/basal_S6K 0 0.01 0.0 "" white black 3032 3939 0
simundump kreac /kinetics/S6K_g/PF4708671_bind_S6Kp 0 1.6903489438970064e-09 0.0008 "" white black 3032 3939 0
simundump kreac /kinetics/S6K_g/FS115_bind_S6Kp 0 1.6903489438970067e-08 0.0018 "" white black 3032 3939 0
simundump kreac /kinetics/_4EBP_g/eIF4E_bind_BP2 0 8.451744719485031e-06 0.15 "" white 24 3901 3948 0
simundump kreac /kinetics/_4EBP_g/eIF4E_BP2_disso 0 4.0 1.6903489438970063e-07 "" white 24 3901 3948 0
simundump kreac /kinetics/_4EBP_g/eIF4E_BP_disso 0 4.0 1.6903489438970063e-07 "" white 24 3901 3948 0
simundump kreac /kinetics/_43S_g/Q_binds_R 0 8.113674930705631e-08 0.015 "" white 25 1608 3294 0
simundump kreac /kinetics/_43S_g/QR_binds_M 0 4.2258236324740267e-07 0.01 "" white 25 1616 3294 0
simundump kreac /kinetics/_43S_g/R_binds_M 0 2.1635881754659815e-07 0.0172 "" white 25 1616 3294 0
simundump kreac /kinetics/_43S_g/RM_binds_Q 0 4.2258236324740267e-07 0.01 "" white 25 1616 3294 0
simundump kreac /kinetics/protein_g/pep_elongation 0 50.1 0.001 "" white 26 4307 1804 0
simundump kreac /kinetics/protein_g/protein_deg 0 0.01 0.0 "" white 26 4393 1806 0
simundump kreac /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 0 1.6903489438970063e-05 1.0 "" white 10 1928 3930 0
simundump kreac /kinetics/CaMKIII_g/CaMKIII_dephospho 0 0.07 0.0 "" white 28 1936 3950 0
simundump kreac /kinetics/TransInit_g/eIF4F_clx 0 5.071046831691019e-06 0.1 "" white 29 3862 3323 0
simundump kreac /kinetics/TransInit_g/eIF4G_A_clx_formation 0 5.071046831691019e-08 1.0 "" white 29 3862 3323 0
simundump kreac /kinetics/TransInit_g/eIF4F_mRNA_clx_formation 0 3.380697887794013e-08 0.077 "" white 29 3862 3323 0
simundump kreac /kinetics/TransElong_g/elongation 0 6.761395775588025e-07 10.0 "" white 30 4134 2631 0
simundump kreac /kinetics/TransElong_g/activation 0 1.6903489438970063e-07 0.9 "" white 30 4296 2640 0
simundump kreac /kinetics/_40S_g/S6_dephosph 0 0.5 0.0 "" white black 2861 3305 0
simundump kreac /kinetics/TSC1_TSC2_g/TSC1_TSC2_dephospho 0 0.01 0.0 "" white 32 2982 4743 0
simundump kreac /kinetics/FMRP_g/degrade_FMRP 0 0.01 0.0 "" white yellow 5668 2538 0
simundump kreac /kinetics/FMRP_g/FMRP_inhib_translation 0 1.1409977189476017e-07 0.1 "" white yellow 5920 2540 0
simundump kreac /kinetics/FMRP_g/FMRP_synth 0 10.0 0.001 "" white black 6211 2541 0
simundump kreac /kinetics/AMPAR_g/to_memb 0 2.0284187326764076e-10 0.008 "" white black 274 7192 0
simundump kreac /kinetics/AMPAR_g/degradation_2 0 2e-05 0.0 "" white black 379 6813 0
simundump kreac /kinetics/AMPAR_g/degradation_1 0 2e-05 0.0 "" white black 317 6813 0
simundump kreac /kinetics/AMPAR_g/exchange 0 0.018 1.0 "" white black 345 6813 0
simundump kreac /kinetics/AMPAR_g/from_memb3 0 0.0008 0.0 "" white black 610 6814 0
simundump kreac /kinetics/AMPAR_g/to_memb_1 0 2.0284187326764076e-10 0.008 "" white black 319 7192 0
simundump kreac /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 0 1.6903343563115136e-06 5.0 "" white black 428 7193 0
simundump kreac /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 0 1.6903489438970061e-06 10.0 "" white black 394 7193 0
simundump kreac /kinetics/AMPAR_g/Glu_bind_sAMPAR 0 1.6903489438970061e-06 10.0 "" white black 461 7193 0
simundump kreac /kinetics/AMPAR_g/AMPA_bind_sAMPAR 0 8.451744719485033e-09 0.1 "" white black 497 7193 0
simundump kreac /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 0 1.6903489438970061e-06 10.0 "" white black 533 7193 0
simundump kreac /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 0 1.6903343563115136e-06 5.0 "" white black 358 7193 0
simundump kreac /kinetics/AMPAR_g/from_memb2 0 0.0008 0.0 "" white black 497 6813 0
simundump kreac /kinetics/AMPAR_g/from_memb 0 0.0008 0.0 "" white black 523 6813 0
simundump kreac /kinetics/AMPAR_g/from_memb1 0 0.0008 0.0 "" white black 466 6816 0
simundump kreac /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 0 1.6903343563115136e-06 5.0 "" white black 806 7193 0
simundump kreac /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 0 1.6903489438970061e-06 10.0 "" white black 768 7190 0
simundump kreac /kinetics/PP1_g/Inact_PP1 0 8.451354901337118e-05 0.1 "" white 11 8678 2971 0
simundump kreac /kinetics/PP1_g/dissoc_PP1_I1 0 1.0 0.0 "" white 11 8705 2971 0
simundump kreac /kinetics/PKA_g/Release_C1 0 60.0 3.042530644477633e-06 "" white black 9632 3999 0
simundump kreac /kinetics/PKA_g/Release_C2 0 60.0 3.042530644477633e-06 "" white black 9250 3988 0
simundump kreac /kinetics/PKA_g/cAMP_bind_site_B1 0 9.127786842506855e-06 33.0 "" white 13 9278 3988 0
simundump kreac /kinetics/PKA_g/cAMP_bind_site_B2 0 9.127786842506855e-06 33.0 "" white 13 9332 3999 0
simundump kreac /kinetics/PKA_g/cAMP_bind_site_A1 0 1.2677860715569993e-05 110.0 "" white 13 9672 3999 0
simundump kreac /kinetics/PKA_g/cAMP_bind_site_A2 0 1.2677860715569993e-05 32.5 "" white 13 9471 3999 0
simundump kreac /kinetics/PKA_g/inhib_PKA 0 1.0142093663382038e-05 1.0 "" white black 9514 3999 0
simundump kreac /kinetics/CaMKII_g/CaMKII_bind_CaM 0 8.451744719485031e-06 5.0 "" white 9 420 2626 0
simundump kreac /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM 0 0.0001690348943897006 0.1 "" white 9 361 2626 0
simundump kreac /kinetics/CaMKII_g/basal_activity 0 0.003 0.0 "" white 9 305 2624 0
simundump kreac /kinetics/CaMKII_g/KN62_block_CaMKII 0 1.6903489438970067e-08 0.09 "" white black 252 2618 0
simundump kreac /kinetics/Ras_g/bg_act_GEF 0 1.014209366338204e-06 1.0 "" white 5 6006 5939 0
simundump kreac /kinetics/Ras_g/dephosph_GEF 0 0.1 0.0 "" white 5 5990 5918 0
simundump kreac /kinetics/Ras_g/Ras_intrinsic_GTPase 0 0.0001 0.0 "" white 5 5950 5949 0
simundump kreac /kinetics/Ras_g/dephosph_GAP 0 0.1 0.0 "" white 5 5944 5949 0
simundump kreac /kinetics/Ras_g/CaM_bind_GEF 0 1.0142006137869081e-05 1.0 "" white 5 5944 5949 0
simundump kreac /kinetics/Ras_g/dephosph_inact_GEF_p 0 1.0 0.0 "" white 5 5990 5918 0
simundump kreac /kinetics/Ras_g/Ras_act_craf 0 3.3806978877940122e-06 0.5 "" white 5 5936 5949 0
simundump kreac /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 0 1.0285669880302334e-13 1.0 "" white 12 2353 2650 0
simundump kreac /kinetics/PP2B_g/Ca_bind_CaNAB 0 2.859568184912493e-10 1.0 "" white 12 2487 2654 0
simundump kreac /kinetics/PP2B_g/CaMCa2_bind_CaNAB 0 4.0568374653528154e-08 1.0 "" white 12 2453 2654 0
simundump kreac /kinetics/PP2B_g/CaMCa3_bind_CaNAB 0 3.782990216442434e-07 1.0 "" white 12 2420 2654 0
simundump kreac /kinetics/PP2B_g/CaMCa4_bind_CaNAB 0 0.00010142093663382042 1.0 "" white 12 2387 2654 0
simundump kreac /kinetics/synGAP_g/synGAPp_PDZ_dissoc 0 420.0 3.380697887794013e-11 "" white black 2275 6552 0
simundump kreac /kinetics/synGAP_g/synGAP_PDZ_assoc 0 7.099465564367426e-07 0.2 "" white black 2224 6552 0
simundump kreac /kinetics/synGAP_g/dephosph_synGAP 0 0.06 0.0 "" white black 2332 6552 0
simundump kreac /kinetics/Ca_g/IP3_bind_IP3R 0 2.0284012275738147e-06 8.0 "" white darkgreen 846 5459 0
simundump kreac /kinetics/Ca_g/Ca_act_IP3_IP3R 0 2.53547468857702e-06 1.65 "" white black 904 5458 0
simundump kreac /kinetics/Ca_g/Ca_inact_IP3_IP3R 0 3.0426280990146114e-07 0.6 "" white black 967 5459 0
simundump kreac /kinetics/Ca_g/VGCC_inact 0 1.0 0.0 "" white black 1033 5462 0
simundump kreac /kinetics/Ca_g/IP3Ract 0 1.4285969191090282e-11 5.0 "" white black 1087 5463 0
simundump kreac /kinetics/Ca_g/inactivate_cap_Ca 0 3.1598755548249214e-15 1.0 "" white black 1188 5082 0
simundump kreac /kinetics/Ca_g/Buffer_Ca5 0 6.899745908905255e-39 1.0 "" white black 985 4841 0
simundump kreac /kinetics/CaM_g/CaM_Ca3_bind_Ca 0 7.860098225486835e-08 10.0 "" white black 327 3577 0
simundump kreac /kinetics/CaM_g/neurogranin_bind_CaM 0 5.071046831691019e-08 1.0 "" white black 495 3960 0
simundump kreac /kinetics/CaM_g/ngp_deph 0 0.005 0.0 "" white black 316 3948 0
simundump kreac /kinetics/CaM_g/CaM_bind_Ca 0 1.434335875253741e-06 8.4853 "" white black 232 3568 0
simundump kreac /kinetics/CaM_g/CaM_Ca2_bind_Ca 0 6.085256198029223e-07 10.0 "" white black 301 3577 0
simundump kreac /kinetics/CaM_g/CaM_Ca_bind_Ca 0 1.434335875253741e-06 8.4853 "" white black 260 3568 0
simundump kreac /kinetics/CaM_g/W7_bind_CaM 0 1.6903489438970066e-10 0.014 "" white black 266 3960 0
simundump kreac /kinetics/Phosphatase_g/OA_inhib_PP2A 0 1.6903489438970061e-06 0.3 "" white black 5760 1778 0
simundump kreac /kinetics/PI3K_g/PI3K_act 0 8.451744719485031e-07 0.08 "" white black 4186 5926 0
simundump kreac /kinetics/PI3K_g/PI3K_bind_Ras_GTP 0 3.0426280990146114e-07 5.0 "" white 19 4193 5926 0
simundump kreac /kinetics/PI3K_g/LY294002_bind_PI3K 0 1.6903489438970064e-09 0.08 "" white black 4198 5926 0
simundump kreac /kinetics/PI3K_g/Wortmannin_bind_PI3K 0 1.6903489438970067e-08 0.0 "" white black 4292 5926 0
simundump kreac /kinetics/PLCb_g/Act_PLC_Ca 0 5.07104683169102e-07 1.0 "" white 2 7549 6027 0
simundump kreac /kinetics/PLCb_g/Degrade_IP3 0 1.0 0.0 "" white 2 7417 5616 0
simundump kreac /kinetics/PLCb_g/Degrade_DAG 0 0.15 0.0 "" white 2 7388 5616 0
simundump kreac /kinetics/PLCb_g/Act_PLC_by_Gq 0 4.259640356805663e-06 1.0 "" white 2 7528 6027 0
simundump kreac /kinetics/PLCb_g/Inact_PLC_Gq 0 0.0133 0.0 "" white 2 7501 6027 0
simundump kreac /kinetics/PLCb_g/PLC_Gq_bind_Ca 0 5.071046831691019e-06 1.0 "" white 2 7591 6027 0
simundump kreac /kinetics/PLCb_g/PLC_bind_Gq 0 4.259640356805664e-07 1.0 "" white black 7569 6027 0
simundump kreac /kinetics/AC_g/CaM_bind_AC1 0 8.451452355874095e-06 1.0 "" white 14 9955 5955 0
simundump kreac /kinetics/AC_g/dephosph_AC2 0 0.1 0.0 "" white 14 9970 5955 0
simundump kreac /kinetics/AC_g/dephosph_PDE 0 0.1 0.0 "" white 14 9928 5319 0
simundump kreac /kinetics/AC_g/CaM_bind_PDE1 0 0.00012170122577910532 5.0 "" white 14 9982 5955 0
simundump kreac /kinetics/AC_g/Gs_bind_AC2 0 8.451647264948054e-05 1.0 "" white 14 10000 5955 0
simundump kreac /kinetics/AC_g/Gs_bind_AC1 0 2.129771451134343e-05 1.0 "" white 14 9976 5955 0
simundump kreac /kinetics/AC_g/Gs_bind_AC2p 0 0.00014085104229543636 1.0 "" white 14 9991 5955 0
simundump kreac /kinetics/AC_g/Forskolin_act_AC1 0 1.6903489438970063e-07 0.008 "" white black 9934 5635 0
simundump kreac /kinetics/AC_g/Forskolin_act_AC2 0 1.6903489438970063e-07 0.0134 "" white black 9934 5635 0
simundump kreac /kinetics/PKC_g/PKC_act_by_Ca 0 1.0142093663382038e-07 0.5 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_act_by_DAG 0 1.3522791551176053e-09 8.6348 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_Ca_to_memb 0 1.2785 3.5026 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_DAG_to_memb 0 1.0 0.1 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_act_by_Ca_AA 0 2.0284187326764076e-10 0.1 "" white 0 5773 4995 0
simundump kreac /kinetics/PKC_g/PKC_act_by_DAG_AA 0 2.0 0.2 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_basal_act 0 1.0 50.0 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_act_by_AA 0 1.6903489438970064e-11 0.1 "" white 0 5766 4995 0
simundump kreac /kinetics/PKC_g/PKC_n_DAG 0 1.0142093663382038e-10 0.1 "" white 0 5773 4995 0
simundump kreac /kinetics/PKC_g/PKC_n_DAG_AA 0 3.042628099014613e-09 2.0 "" white 0 5773 5016 0
simundump kreac /kinetics/PLA2_g/PLA2_Ca_act 0 1.6903489438970063e-07 0.1 "" white 1 7685 4305 0
simundump kreac /kinetics/PLA2_g/PIP2_PLA2_act 0 2.0284187326764076e-10 0.5 "" white 1 7685 4305 0
simundump kreac /kinetics/PLA2_g/PIP2_Ca_PLA2_act 0 2.0284187326764072e-09 0.1 "" white 1 7685 4305 0
simundump kreac /kinetics/PLA2_g/DAG_Ca_PLA2_act 0 5.07094937715404e-10 4.0 "" white 1 7685 4305 0
simundump kreac /kinetics/PLA2_g/Degrade_AA 0 0.4 0.0 "" white 1 7690 4305 0
simundump kreac /kinetics/PLA2_g/PLA2_p_Ca_act 0 1.014209366338204e-06 0.1 "" white 1 7685 4305 0
simundump kreac /kinetics/PLA2_g/dephosphorylate_PLA2_p 0 0.17 0.0 "" white 1 7685 4305 0
simundump kreac /kinetics/Gq_g/Basal_Act_Gq 0 0.0001 0.0 "" white 16 7355 6765 0
simundump kreac /kinetics/Gq_g/Trimerize_G 0 1.014209366338204e-06 0.0 "" white 16 7355 6765 0
simundump kreac /kinetics/Gq_g/Inact_Gq 0 0.0133 0.0 "" white 16 7360 6765 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq 0 5.071046831691019e-08 6.0 "" khaki cyan 7180 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR 0 1.6903489438970061e-06 10.0 "" hotpink slategray 7009 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq 0 1.6903489438970061e-06 100.0 "" white black 7377 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq 0 5.0 0.0 "" indigo yellowgreen 7551 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR 0 3.3806004332570337e-10 0.2 "" white black 7698 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq 0 1.0142093663382038e-07 12.0 "" white black 7207 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 0 1.6903489438970061e-06 1.0 "" white black 7037 7375 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq 0 1.6903489438970061e-06 2.0 "" white black 7356 7384 0
simundump kreac /kinetics/DHPG_mGluR_g/DHPGRpS870G_act 0 2.0 0.0 "" white black 7524 7384 0
simundump kreac /kinetics/Gs_g/basalAct_Gs 0 0.0001 0.0 "" white black 9895 6687 0
simundump kreac /kinetics/Gs_g/Inact_Gs 0 0.00667 0.0 "" white black 9873 6687 0
simundump kreac /kinetics/Gs_g/Trimerize_Gs 0 1.014209366338204e-06 0.0 "" white black 9831 6687 0
simundump kreac /kinetics/b2AR_g/Iso_Act_Gs 0 0.2 0.0 "" white black 8646 7195 0
simundump kreac /kinetics/b2AR_g/Epi_Act_Gs 0 0.1 0.0 "" white black 8707 7196 0
simundump kreac /kinetics/b2AR_g/Epi_bind_b2AR 0 1.6903489438970063e-07 1.0 "" white black 8379 7475 0
simundump kreac /kinetics/b2AR_g/Iso_bind_b2AR 0 1.6903489438970063e-07 1.0 "" white black 8429 7475 0
simundump kreac /kinetics/b2AR_g/IsoR_bind_GsGDP 0 3.3806978877940127e-09 0.05 "" white black 8766 7474 0
simundump kreac /kinetics/b2AR_g/R_bind_GsGDP 0 3.380697887794013e-08 1.0 "" white black 8950 7475 0
simundump kreac /kinetics/b2AR_g/Iso_bind_RGs 0 3.3806978877940127e-07 1.0 "" white black 8578 7475 0
simundump kreac /kinetics/b2AR_g/Epi_bind_RGs 0 6.761395775588025e-07 2.0 "" white black 8627 7475 0
simundump kreac /kinetics/b2AR_g/EpiR_bind_GsGDP 0 3.3806978877940127e-09 0.05 "" white black 8815 7474 0
simundump kreac /kinetics/b2AR_g/b2AR_recycling 0 0.01 0.0 "" white black 8780 7196 0
simundump kreac /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding 0 2.53547468857702e-07 0.05 "" white 4 6051 3248 0
simundump kreac /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding 0 2.5354746885770195e-09 0.05 "" white black 6079 3248 0
simundump kreac /kinetics/MAPK_g/U0126_bind_MEKpp 0 0.033168 0.0072 "" white black 5865 3248 0
simundump kreac /kinetics/MAPK_g/PD098059_inhib_MEKp 0 1.6903489438970064e-09 0.01 "" white black 5838 3248 0
simundump kreac /kinetics/MAPK_g/U0126_bind_Raf_MEK 0 1.6903489438970067e-08 0.0072 "" white black 5896 3248 0
simundump kreac /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc 0 0.5 0.0 "" white black 6288 3248 0
simundump kreac /kinetics/MAPK_g/mGluR_barr2_craf_dissoc 0 0.5 0.0 "" white black 6260 3248 0
simundump kreac /kinetics/mGluR5_g/RecGq_bind_Glu 0 2.8397277530247836e-06 60.0 "" white black 5990 7464 0
simundump kreac /kinetics/mGluR5_g/RecGlu_bind_Gq 0 1.0142093663382038e-07 6.0 "" white 15 6139 7464 0
simundump kreac /kinetics/mGluR5_g/Activate_Gq 0 1.0 0.0 "" white 15 6375 7468 0
simundump kreac /kinetics/mGluR5_g/Rec_bind_Gq 0 5.071046831691019e-08 0.6 "" white black 5585 7460 0
simundump kreac /kinetics/mGluR5_g/RecLigandBinding 0 2.8397277530247836e-06 12.0 "" white black 5712 7460 0
simundump kreac /kinetics/mGluR5_g/Internalize_Rec 0 0.1 0.0 "" white black 5766 7085 0
simundump kreac /kinetics/mGluR5_g/mGluR5_recycling 0 1.6903489438970066e-10 0.0 "" white black 5840 7090 0
simundump kreac /kinetics/mGluR5_g/MPEP_bind_mGluR 0 3.3806004332570337e-10 0.2 "" white black 6511 7089 0
simundump kreac /kinetics/mGluR5_g/MPEP_bind_RGlu 0 3.3806004332570337e-10 0.2 "" white black 6451 7086 0
simundump kreac /kinetics/mGluR5_g/RecpS870Glu_bind_Gq 0 1.6903489438970067e-08 0.4 "" white black 6213 7468 0
simundump kreac /kinetics/mGluR5_g/RecpS870Gq_bind_Glu 0 1.6903489438970061e-06 4.0 "" white black 5926 7464 0
simundump kreac /kinetics/mGluR5_g/RecpS870_bind_Gq 0 1.6903489438970067e-08 1.0 "" white black 5532 7460 0
simundump kreac /kinetics/mGluR5_g/RecpS870_bind_Glu 0 1.6903489438970061e-06 10.0 "" white black 5778 7460 0
simundump kreac /kinetics/mGluR5_g/GluRpS870G_act 0 1.0 0.0 "" white black 6440 7468 0
simundump kreac /kinetics/mGluR5_g/Gq_release 0 0.0133 0.0 "" white black 5980 7087 0
simundump kreac /kinetics/mGluR5_g/basal_recycling 0 0.001 0.0 "" white black 6049 7089 0
simundump kreac /kinetics/mGluR5_g/imGluR_bind_Homer 0 1.6903489438970067e-08 0.01 "" white black 5910 7086 0
simundump kreac /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K 0 1.6903489438970063e-07 5.0 "" white 33 8644 6561 0
simundump kreac /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE 0 8.451744719485031e-07 5.0 "" white black 8504 6557 0
simundump kreac /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE 0 8.451744719485031e-07 5.0 "" white black 8575 6559 0
simundump kreac /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K 0 1.6903489438970063e-07 5.0 "" white black 8708 6563 0
simundump kreac /kinetics/AKT_g/PIP3_bind_PDK1 0 1.183195533459415e-07 0.5 "" white black 2342 5617 0
simundump kreac /kinetics/AKT_g/PIP3_bind_AKT 0 2.53547468857702e-07 1.0 "" white black 2342 5617 0
simundump kreac /kinetics/EGFR_g/act_EGFR 0 7.099465564367426e-07 0.025 "" white 6 3297 7387 0
simundump kreac /kinetics/EGFR_g/Internalize 0 0.002 0.0 "" white 6 3403 7393 0
simundump kreac /kinetics/EGFR_g/EGFR_recycling 0 0.001 0.0 "" white black 3434 7410 0
simundump kreac /kinetics/Sos_g/bind_Gab1 0 5.071046831691019e-08 1.0 "" white 19 3912 6607 0
simundump kreac /kinetics/Sos_g/SHCp_dephospho 0 0.01 0.0 "" white 7 3912 6619 0
simundump kreac /kinetics/Sos_g/SHC_bind_SosGrb2 0 8.451744719485031e-07 0.1 "" white 7 3912 6619 0
simundump kreac /kinetics/Sos_g/Grb2_bind_Sosp 0 4.225823632474026e-09 0.168 "" white 7 3912 6619 0
simundump kreac /kinetics/Sos_g/dephosph_Sos 0 0.001 0.0 "" white 7 3912 6619 0
simundump kreac /kinetics/Sos_g/Grb2_bind_Sos 0 4.225823632474026e-09 0.00168 "" white 7 3912 6619 0
simundump kreac /kinetics/Sos_g/Grb2_bind_SHC 0 1.6903489438970063e-07 1.0 "" white 7 3912 6619 0
simundump kreac /kinetics/PLCg_g/Ca_act_PLCg 0 3.0426280990146105e-05 10.0 "" white 8 3104 6606 0
simundump kreac /kinetics/PLCg_g/Ca_act_PLCgp 0 2.028418732676408e-06 10.0 "" white 8 3132 6606 0
simundump kreac /kinetics/PLCg_g/dephospho_PLCg 0 0.05 0.0 "" white 8 3154 6616 0
simundump kreac /kinetics/PLCg_g/PLCgp_dephospho 0 0.07 0.0 "" white 8 3174 6616 0
simundump kreac /kinetics/mGluR1_g/LY367385_bind_mGluR1a 0 1.6903489438970064e-09 0.044 "" white black 9679 7433 0
simundump kreac /kinetics/TrKB_g/LR_Internalize 0 0.005 0.0 "" white 21 4044 7424 0
simundump kreac /kinetics/TrKB_g/LR_cycling 0 0.002 0.0 "" white 21 4044 7434 0
simundump kreac /kinetics/TrKB_g/Autophos_TrKB 0 0.5 0.0 "" white 21 4044 7434 0
simundump kreac /kinetics/TrKB_g/Dimeriz_TrKB 0 1.6903489438970063e-07 0.01 "" white 21 4044 7434 0
simundump kreac /kinetics/TrKB_g/Ligand_binding 0 1.6903489438970061e-06 0.01 "" white 21 4044 7434 0
simundump kreac /kinetics/TrKB_g/IntTrKB2_deph 0 0.02 0.0 "" white black 4044 7434 0
simundump kreac /kinetics/NMDAR_g/APV_inhibit_NMDAR 0 1.6903489438970064e-09 0.03 "" white black 1922 7369 0
simundump kreac /kinetics/NMDAR_g/NMDA_act_NMDAR 0 3.3806978877940122e-06 120.0 "" white black 2046 7369 0
simundump kreac /kinetics/NMDAR_g/Glu_act_NMDAR 0 3.3806978877940122e-06 60.0 "" white black 2004 7369 0
simundump kreac /kinetics/NMDAR_g/NMDAR_inact 0 0.5 0.0 "" white black 1966 7369 0
simundump kreac /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc 0 3.3806978877940127e-07 0.05 "" white black 8416 5597 0
simundump kreac /kinetics/barr2_g/Isob2ARp2_barr2_assoc 0 3.3806978877940127e-09 0.005 "" white black 8696 5947 0
simundump kreac /kinetics/barr2_g/Isob2ARp1_barr2_assoc 0 3.3806978877940127e-09 0.005 "" white black 8638 5947 0
simundump kreac /kinetics/barr2_g/Epib2ARp2_barr2_assoc 0 3.3806978877940127e-09 0.005 "" white black 8483 5946 0
simundump kreac /kinetics/barr2_g/Epib2ARp1_barr2_assoc 0 3.3806978877940127e-09 0.005 "" white black 8425 5943 0
simundump kreac /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc 0 3.3806978877940127e-07 0.05 "" white black 8481 5597 0
simundump kreac /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize 0 0.01 0.0 "" white 34 8524 5281 0
simundump kreac /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize 0 0.05 0.0 "" white black 8633 5599 0
simundump kreac /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize 0 0.05 0.0 "" white black 8845 5604 0
simundump kreac /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize 0 0.01 0.0 "" white black 8647 5281 0
simundump kreac /kinetics/barr2_g/GRK2_to_memb 0 1.6903489438970063e-07 0.002 "" white black 8903 5951 0
simundump kreac /kinetics/barr2_g/GRK2_antag 0 1.6903489438970059e-12 0.0 "" white black 8967 5954 0
simundump kreac /kinetics/barr2_g/GRK2_Gq_inact 0 0.01 0.0 "" white black 8840 5951 0
simundump kreac /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize 0 0.05 0.0 "" white black 8702 5601 0
simundump kreac /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize 0 0.05 0.0 "" white black 8905 5604 0
simundump kreac /kinetics/barr2_g/b2ARp2barr2p_dissoc 0 0.05 0.0 "" white black 8754 5283 0
simundump kreac /kinetics/Ca_g/Buffer_Ca35 0 6.899745908905255e-39 1.0 "" white black 1333 4841 0
simundump kreac /kinetics/Ca_g/Buffer_Ca10 0 6.899745908905255e-39 1.0 "" white black 1043 4841 0
simundump kreac /kinetics/Ca_g/Buffer_Ca25 0 6.899745908905255e-39 1.0 "" white black 1214 4843 0
simundump kreac /kinetics/Ca_g/Buffer_Ca15 0 6.899745908905255e-39 1.0 "" white black 1099 4841 0
simundump kreac /kinetics/Ca_g/Buffer_Ca20 0 6.899745908905255e-39 1.0 "" white black 1154 4841 0
simundump kreac /kinetics/Ca_g/Buffer_Ca30 0 6.899745908905255e-39 1.0 "" white black 1273 4843 0
simundump kreac /kinetics/Ca_g/Buffer_Ca40 0 6.899745908905255e-39 1.0 "" white black 1399 4843 0
simundump kenz /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K 0 0 0 0.0 0 5915989.320492217 1.9058406046909242e-08 0.08 0.02 0 0 "" black black "" 3942 4779 0
simundump kenz /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho 0 0 0 0.0 0 5915989.320492217 4.2352646596694615e-07 4.0 1.0 0 0 "" 44 red "" 3942 4761 0
simundump kenz /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p 0 0 0 0.0 0 5915989.320492217 4.2352646596694615e-07 4.0 1.0 0 0 "" 44 red "" 3942 4779 0
simundump kenz /kinetics/S6K_g/S6K_thr_412/S6_phos 0 0 0 0.0 0 5915989.320492217 3.049420946599703e-06 4.0 1.0 0 0 "" 48 red "" 3023 3948 0
simundump kenz /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII 0 0 0 0.0 0 5915989.320492217 7.651569657493612e-07 4.0 1.0 0 0 "" 6 red "" 3017 3948 0
simundump kenz /kinetics/S6K_g/S6K_thr_252/S6_phospho 0 0 0 0.0 0 5915989.320492217 6.620628322768946e-07 4.0 1.0 0 0 "" 4 red "" 3032 3948 0
simundump kenz /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII 0 0 0 0.0 0 5915989.320492217 7.623457392631481e-07 4.0 1.0 0 0 "" 45 red "" 3032 3948 0
simundump kenz /kinetics/S6K_g/S6K_basal/S6K_act_bS6 0 0 0 0.0 0 5915989.320492217 3.049420946599703e-06 4.0 1.0 0 0 "" 2 27 "" 3023 3948 0
simundump kenz /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act 0 0 0 0.0 0 5915989.320492217 3.825832315680697e-06 40.0 10.0 0 0 "" 58 red "" 1921 3960 0
simundump kenz /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act 0 0 0 0.0 0 5915989.320492217 3.825832315680697e-07 4.0 1.0 0 0 "" 45 red "" 1928 3960 0
simundump kenz /kinetics/TransElong_g/Translation_clx/pro_syn 0 0 0 0.0 0 5915989.320492217 1.3911772152046976e-05 4.0 1.0 0 0 "" 52 red "" 3811 2682 0
simundump kenz /kinetics/TransElong_g/Basal_Translation/basal_syn 0 0 0 0.0 0 5915989.320492217 1.6694506477927492e-05 4.8 1.2 0 0 "" 53 red "" 3780 2586 0
simundump kenz /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb 0 0 0 0.0 0 5915989.320492217 5.082336586376907e-07 80.0 20.0 0 0 "" 51 red "" 2982 4774 0
simundump kenz /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP 0 0 0 0.0 0 5915989.320492217 8.606721845731846e-09 0.4 0.1 0 0 "" 6 red "" 5183 3215 0
simundump kenz /kinetics/AMPAR_g/aAMPAR/synAct_act_Glu_NMDAR 0 0 0 0 0 5915989.320492217 3.380668712623027e-05 160.0 40.0 0 1 "" 23 21 "" 1036 6690 0
simundump kenz /kinetics/AMPAR_g/aAMPAR/synAct_act_VGCC 0 0 0 0 0 5915989.320492217 2.53550153446727e-05 120.0 30.0 0 1 "" 51 49 "" 891 6702 0
simundump kenz /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 0 0 0 0.0 0 5915989.320492217 1.2960133996916508e-07 0.68 0.17 0 0 "" black cyan "" 8519 2985 0
simundump kenz /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 0 0 0 0.0 0 5915989.320492217 1.2960133996916508e-07 0.68 0.17 0 0 "" black cyan "" 8519 2963 0
simundump kenz /kinetics/PP1_g/PP1_active/Deph_thr286 0 0 0 0.0 0 5915989.320492217 4.8848859152675036e-08 1.4 0.35 0 0 "" red cyan "" 8349 2999 0
simundump kenz /kinetics/PP1_g/PP1_active/Deph_thr305 0 0 0 0.0 0 5915989.320492217 4.8848859152675036e-08 1.4 0.35 0 0 "" red cyan "" 8349 2979 0
simundump kenz /kinetics/PP1_g/PP1_active/Deph_thr306 0 0 0 0.0 0 5915989.320492217 4.8848859152675036e-08 1.4 0.35 0 0 "" red cyan "" 8349 2960 0
simundump kenz /kinetics/PP1_g/PP1_active/Deph_thr286c 0 0 0 0.0 0 5915989.320492217 4.8848859152675036e-08 1.4 0.35 0 0 "" red cyan "" 8349 2939 0
simundump kenz /kinetics/PP1_g/PP1_active/Deph_thr286b 0 0 0 0.0 0 5915989.320492217 4.8848859152675036e-08 1.4 0.35 0 0 "" red cyan "" 8349 2920 0
simundump kenz /kinetics/PP1_g/PP1_active/SERCA_inact 0 0 0 0.0 0 5915989.320492217 1.483586788552197e-07 2.0 0.5 0 0 "" 23 27 "" 8519 2941 0
simundump kenz /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 0 0 0 0.0 0 5915989.320492217 1.2960133996916508e-07 0.68 0.17 0 0 "" 27 20 "" 9100 3161 0
simundump kenz /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 0 0 0 0.0 0 5915989.320492217 1.2960133996916508e-07 0.68 0.17 0 0 "" 27 6 "" 9176 3036 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR 0 0 0 0.0 0 5915989.320492217 1.2197493838663252e-06 24.0 6.0 0 0 "" black 19 "" 9624 3514 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR 0 0 0 0.0 0 5915989.320492217 1.2197493838663252e-06 24.0 6.0 0 0 "" black 6 "" 9624 3535 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_phosph_GEF 0 0 0 0.0 0 5915989.320492217 7.894892706739547e-07 36.0 9.0 0 0 "" red yellow "" 9388 3503 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_phosph_I1 0 0 0 0.0 0 5915989.320492217 7.894892706739547e-07 36.0 9.0 0 0 "" red yellow "" 9388 3528 0
simundump kenz /kinetics/PKA_g/PKA_active/phosph_PDE 0 0 0 0.0 0 5915989.320492217 7.894892706739547e-07 36.0 9.0 0 0 "" red yellow "" 9388 3557 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_SERCA 0 0 0 0.0 0 5915989.320492217 3.5541120799692923e-06 40.0 10.0 0 0 "" 6 27 "" 9388 3589 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_R 0 0 0 0.0 0 5915989.320492217 2.608267330773253e-08 1.0 0.25 0 0 "" 27 23 "" 9505 3589 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_GluR 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 27 39 "" 9505 3557 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_RG 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 27 2 "" 9505 3526 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_GluRG 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 27 26 "" 9505 3494 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 27 6 "" 9505 3475 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_DHPGR 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 27 27 "" 9505 3443 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp 0 0 0 0.0 0 5915989.320492217 1.2197493838663252e-06 24.0 6.0 0 0 "" 27 52 "" 9624 3557 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp 0 0 0 0.0 0 5915989.320492217 1.2197493838663252e-06 24.0 6.0 0 0 "" 27 7 "" 9624 3589 0
simundump kenz /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 0 0 0 0.0 0 5915989.320492217 8.468344920380038e-07 24.0 6.0 0 0 "" 27 41 "" 9388 3621 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/AMPARpS845_act 0 0 0 0 0 5915989.320492217 9.39081663781261e-09 4.0 1.0 0 1 "" 27 23 "" 1213 2213 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/CaMKII_act_SERCA 0 0 0 0 0 5915989.320492217 4.2258236324740314e-07 20.0 5.0 0 1 "" 27 27 "" 606 2195 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact 0 0 0 0 0 5915989.320492217 8.451744719485047e-09 2.0 0.5 0 1 "" 27 22 "" 603 2171 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact 0 0 0 0 0 5915989.320492217 8.451744719485047e-09 2.0 0.5 0 1 "" 0 27 "" 609 2149 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/AMPAR_act 0 0 0 0 0 5915989.320492217 4.695359591637812e-09 2.0 0.5 0 1 "" black 2 "" 1214 2188 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/synGAP_act 0 0 0 0 0 5915989.320492217 1.0565046353869972e-08 4.0 1.0 0 1 "" 23 black "" 453 2366 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/synGAP_PDZ_act 0 0 0 0 0 5915989.320492217 1.0565046353869972e-08 4.0 1.0 0 1 "" 0 black "" 460 2394 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/CaMKII_act_Glu_sAMPARp 0 0 0 0 0 5915989.320492217 4.695359591637812e-09 2.0 0.5 0 1 "" black 19 "" 615 2064 0
simundump kenz /kinetics/CaMKII_g/aCaMKII/CaMKII_act_AMPA_sAMPARp 0 0 0 0 0 5915989.320492217 4.695359591637812e-09 2.0 0.5 0 1 "" black 23 "" 616 2037 0
simundump kenz /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305 0 0 0 0 0 5915989.320492217 4.4639050663132e-08 24.0 6.0 0 1 "" red green "" 958 2182 0
simundump kenz /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_286 0 0 0 0 0 5915989.320492217 3.719937131017163e-09 2.0 0.5 0 1 "" red green "" 958 2204 0
simundump kenz /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305 0 0 0 0 0 5915989.320492217 2.897713202527163e-08 24.0 6.0 0 1 "" red green "" 958 2227 0
simundump kenz /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_286 0 0 0 0 0 5915989.320492217 2.41472851726031e-09 2.0 0.5 0 1 "" red green "" 958 2254 0
simundump kenz /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras 0 0 0 0.0 0 5915989.320492217 3.029761355969762e-08 0.08 0.02 0 0 "" red hotpink "" 5976 5982 0
simundump kenz /kinetics/Ras_g/inact_GEF/basal_GEF_activity 0 0 0 0.0 0 5915989.320492217 1.00301901759809e-09 0.08 0.02 0 0 "" hotpink red "" 5970 5982 0
simundump kenz /kinetics/Ras_g/GEF_p/GEF_p_act_Ras 0 0 0 0.0 0 5915989.320492217 1.514880677984881e-08 0.04 0.01 0 0 "" red hotpink "" 5970 5982 0
simundump kenz /kinetics/Ras_g/GAP/GAP_inact_Ras 0 0 0 0.0 0 5915989.320492217 9.480291481549222e-09 0.08 0.02 0 0 "" red red "" 5970 5982 0
simundump kenz /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras 0 0 0 0.0 0 5915989.320492217 3.029761355969762e-08 0.08 0.02 0 0 "" red pink "" 5976 5982 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin 0 0 0 0 0 5915989.320492217 5.3979093487178685e-08 2.68 0.67 0 1 "" red darkblue "" 2533 2292 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_inhib1 0 0 0 0 0 5915989.320492217 5.4781144326514054e-08 1.36 0.34 0 1 "" red darkblue "" 2533 2267 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_PP1_I_p 0 0 0 0 0 5915989.320492217 5.4781144326514054e-08 1.36 0.34 0 1 "" 27 darkblue "" 2533 2245 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845_inact 0 0 0 0 0 5915989.320492217 3.380697887794016e-07 8.0 2.0 0 1 "" 53 27 "" 2856 2292 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845S831_inact 0 0 0 0 0 5915989.320492217 3.380697887794016e-07 8.0 2.0 0 1 "" 23 27 "" 2856 2270 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845_inact 0 0 0 0 0 5915989.320492217 3.380697887794016e-07 8.0 2.0 0 1 "" 4 27 "" 2859 2249 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845S831_inact 0 0 0 0 0 5915989.320492217 3.380697887794016e-07 8.0 2.0 0 1 "" 56 27 "" 2859 2229 0
simundump kenz /kinetics/PP2B_g/CaM(Ca)n_CaNAB/Homer_deph 0 0 0 0 0 5915989.320492217 1.690348943897008e-07 8.0 2.0 0 1 "" 19 black "" 3059 2657 0
simundump kenz /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM 0 0 0 0.0 0 5915989.320492217 3.223318098500286e-09 0.136 0.034 0 0 "" red tan "" 2701 2283 0
simundump kenz /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP 0 0 0 0.0 0 5915989.320492217 5.76196958419264e-07 4.0 1.0 0 0 "" 27 38 "" 2026 6575 0
simundump kenz /kinetics/Ca_g/Ca_leak_to_cytoplasm/leak_ER_to_cyt 0 0 0 0 0 5915989.320492217 3.380668712623027e-05 80.0 20.0 0 1 "" black 62 "" 193 4755 0
simundump kenz /kinetics/Ca_g/PMCA/Pump 0 0 0 0 0 5915989.320492217 0.00013522674850492106 128.0 32.0 0 1 "" 50 black "" 424 5424 0
simundump kenz /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt 0 0 0 0 0 5915989.320492217 6.411613075664362e-09 440.0 110.0 0 1 "" black 25 "" 557 5781 0
simundump kenz /kinetics/Ca_g/SERCA/bERPump 0 0 0 0 0 5915989.320492217 4.225835890778784e-07 0.4 0.1 0 1 "" 1 black "" 78 4755 0
simundump kenz /kinetics/Ca_g/aSERCA/ERPump 0 0 0 0 0 5915989.320492217 4.225835890778783e-06 4.0 1.0 0 1 "" 39 black "" 320 4766 0
simundump kenz /kinetics/Ca_g/aVGCC/VGCC_chan 0 0 0 0 0 5915989.320492217 1.6903343563115134e-09 80.0 20.0 0 1 "" black 0 "" 182 5432 0
simundump kenz /kinetics/Ca_g/aIP3R/IP3RChan 0 0 0 0 0 5915989.320492217 2.53550153446727e-07 120.0 30.0 0 1 "" black 57 "" 521 5054 0
simundump kenz /kinetics/Ca_g/Orai1_open/SOCE 0 0 0 0 0 5915989.320492217 2.112861900498564e-09 100.0 25.0 0 1 "" black 23 "" 299 5424 0
simundump kenz /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K 0 0 0 0.0 0 5915989.320492217 5.7557962827871036e-08 4.0 1.0 0 0 "" black black "" 6081 1489 0
simundump kenz /kinetics/Phosphatase_g/PP2A/dephos_S6K 0 0 0 0.0 0 5915989.320492217 5.7557962827871036e-08 4.0 1.0 0 0 "" black black "" 6081 1469 0
simundump kenz /kinetics/Phosphatase_g/PP2A/dephosp_S6K 0 0 0 0.0 0 5915989.320492217 5.7557962827871036e-08 4.0 1.0 0 0 "" black black "" 6081 1510 0
simundump kenz /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho 0 0 0 0.0 0 5915989.320492217 4.0866305565976905e-08 1.88 0.47 0 0 "" 4 red "" 6081 1531 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p 0 0 0 0.0 0 5915989.320492217 8.694952568897139e-08 4.0 1.0 0 0 "" 4 red "" 6081 1551 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p 0 0 0 0.0 0 5915989.320492217 8.694952568897139e-08 4.0 1.0 0 0 "" 4 red "" 6081 1562 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp 0 0 0 0.0 0 5915989.320492217 8.694952568897139e-08 4.0 1.0 0 0 "" 62 red "" 6081 1591 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp 0 0 0 0.0 0 5915989.320492217 8.694952568897139e-08 4.0 1.0 0 0 "" 62 red "" 6081 1612 0
simundump kenz /kinetics/Phosphatase_g/PP2A/dephos_FMRP 0 0 0 0.0 0 5915989.320492217 1.9406010402974878e-08 4.0 1.0 0 0 "" red red "" 6081 1633 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 0 0 0 0.0 0 5915989.320492217 3.740450808548731e-07 25.0 6.0 0 0 "" red red "" 6081 1654 0
simundump kenz /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p 0 0 0 0.0 0 5915989.320492217 3.740450808548731e-07 25.0 6.0 0 0 "" red red "" 6081 1665 0
simundump kenz /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho 0 0 0 0.0 0 5915989.320492217 1.8115315539878757e-07 24.0 6.0 0 0 "" 0 27 "" 6081 1685 0
simundump kenz /kinetics/Phosphatase_g/PP2A/craf_dephospho 0 0 0 0.0 0 5915989.320492217 1.8115315539878757e-07 24.0 6.0 0 0 "" 27 27 "" 6081 1695 0
simundump kenz /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 0 0 0 0.0 0 5915989.320492217 1.8197942804845172e-07 24.0 6.0 0 0 "" 25 27 "" 6081 1726 0
simundump kenz /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho 0 0 0 0.0 0 5915989.320492217 1.96244502988631e-07 26.0 6.5 0 0 "" 55 27 "" 6081 1736 0
simundump kenz /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser 0 0 0 0.0 0 5915989.320492217 1.96244502988631e-07 26.0 6.5 0 0 "" 23 27 "" 6081 1758 0
simundump kenz /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph 0 0 0 0.0 0 5915989.320492217 1.8197942804845172e-07 24.0 6.0 0 0 "" 27 59 "" 6525 1425 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 0 0 0 0.0 0 5915989.320492217 1.8993823816820545e-07 7.2 1.8 0 0 "" black black "" 6081 1429 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 0 0 0 0.0 0 5915989.320492217 1.8993823816820545e-07 7.2 1.8 0 0 "" black black "" 6081 1449 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 23 "" 6525 1443 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 3 "" 6525 1463 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 24 "" 6525 1482 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 53 "" 6525 1502 0
simundump kenz /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 39 27 "" 6308 1418 0
simundump kenz /kinetics/Phosphatase_g/PP2A/RpS870_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 54 "" 6291 1679 0
simundump kenz /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 24 "" 6291 1691 0
simundump kenz /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 23 "" 6291 1700 0
simundump kenz /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 23 "" 6512 1707 0
simundump kenz /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 27 "" 6291 1711 0
simundump kenz /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho 0 0 0 0.0 0 5915989.320492217 2.301406763984177e-07 32.0 8.0 0 0 "" 27 50 "" 6512 1719 0
simundump kenz /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 2 "" 6308 1434 0
simundump kenz /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 27 "" 6291 1741 0
simundump kenz /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 23 27 "" 6291 1753 0
simundump kenz /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 27 23 "" 6512 1749 0
simundump kenz /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph 0 0 0 0.0 0 5915989.320492217 1.7260550729881325e-07 24.0 6.0 0 0 "" 62 27 "" 6525 1521 0
simundump kenz /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph 0 0 0 0.0 0 5915989.320492217 1.4749441665844457e-07 4.0 1.0 0 0 "" 19 27 "" 5666 1945 0
simundump kenz /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph 0 0 0 0.0 0 5915989.320492217 7.88226118232514e-06 4.0 1.0 0 0 "" red hotpink "" 5870 1434 0
simundump kenz /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph 0 0 0 0.0 0 5915989.320492217 7.88226118232514e-06 4.0 1.0 0 0 "" red hotpink "" 5869 1453 0
simundump kenz /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 0 0 0 0.0 0 5915989.320492217 2.9260498923567395e-07 16.0 4.0 0 0 "" 4 27 "" 3902 5937 0
simundump kenz /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 0 0 0 0.0 0 5915989.320492217 2.9260498923567395e-07 16.0 4.0 0 0 "" 22 27 "" 3902 5904 0
simundump kenz /kinetics/PI3K_g/PTEN/PIP3_dephosp 0 0 0 0.0 0 5915989.320492217 1.1323734255110333e-05 22.0 5.5 0 0 "" 37 red "" 3902 5864 0
simundump kenz /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP 0 0 0 0.0 0 5915989.320492217 2.9260498923567395e-07 16.0 4.0 0 0 "" 9 27 "" 3902 5832 0
simundump kenz /kinetics/PI3K_g/tLRHomerPIKE_PI3K/PIP2phospho_HomerPIKE 0 0 0 0 0 5915989.320492217 3.9586032920782057e-07 16.0 4.0 0 1 "" 2 27 "" 4055 5926 0
simundump kenz /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr 0 0 0 0.0 0 5915989.320492217 3.0898798142729133e-07 40.0 10.0 0 0 "" black black "" 7417 6046 0
simundump kenz /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr 0 0 0 0.0 0 5915989.320492217 9.269544468950964e-06 300.0 75.0 0 0 "" black black "" 7485 5677 0
simundump kenz /kinetics/AC_g/PDE1/PDE1_enz 0 0 0 0.0 0 5915989.320492217 2.2066228439422423e-08 6.668 1.667 0 0 "" black 27 "" 9920 5996 0
simundump kenz /kinetics/AC_g/AC1_CaM/AC1CaM_form_cAMP 0 0 0 0 0 5915989.320492217 7.606326611194094e-07 72.0 18.0 0 1 "" red orange "" 9920 5667 0
simundump kenz /kinetics/AC_g/AC2p/AC2p_form_cAMP 0 0 0 0 0 5915989.320492217 2.958037560917032e-07 28.0 7.0 0 1 "" red yellow "" 9942 5945 0
simundump kenz /kinetics/AC_g/AC2_Gs/AC2Gs_form_cAMP 0 0 0 0 0 5915989.320492217 7.606326611194094e-07 72.0 18.0 0 1 "" red yellow "" 9920 5667 0
simundump kenz /kinetics/AC_g/AC1_Gs/AC1Gs_form_cAMP 0 0 0 0 0 5915989.320492217 7.606326611194094e-07 72.0 18.0 0 1 "" red orange "" 9920 5667 0
simundump kenz /kinetics/AC_g/AC2p_Gs/AC2pGs_form_cAMP 0 0 0 0 0 5915989.320492217 7.606326611194091e-07 216.0 54.0 0 1 "" red green "" 9920 5667 0
simundump kenz /kinetics/AC_g/cAMP_PDE/PDE 0 0 0 0.0 0 5915989.320492217 2.627547025932082e-07 40.0 10.0 0 0 "" red green "" 9920 5351 0
simundump kenz /kinetics/AC_g/cAMP_PDEp/PDE_p 0 0 0 0.0 0 5915989.320492217 5.255094051864164e-07 80.0 20.0 0 0 "" red green "" 9920 5351 0
simundump kenz /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz 0 0 0 0.0 0 5915989.320492217 1.323745769082679e-07 40.0 10.0 0 0 "" red green "" 9920 5667 0
simundump kenz /kinetics/AC_g/AC2_Gs_Fsk/AC2GsFsk_form_cAMP 0 0 0 0 0 5915989.320492217 1.6472740385523863e-06 368.0 92.0 0 1 "" black 4 "" 9920 5605 0
simundump kenz /kinetics/AC_g/AC1_Gs_Fsk/AC1GsFsk_form_cAMP 0 0 0 0 0 5915989.320492217 1.003294458196581e-06 66.0 16.5 0 1 "" black 54 "" 9928 5615 0
simundump kenz /kinetics/PKC_g/PKC_active/PKC_act_raf 0 0 0 0 0 5915989.320492217 2.5229030533067592e-08 8.0 2.0 0 1 "" red yellow "" 5760 5037 0
simundump kenz /kinetics/PKC_g/PKC_active/PKC_inact_GAP 0 0 0 0 0 5915989.320492217 1.0151839117079927e-06 16.0 4.0 0 1 "" red yellow "" 5760 5057 0
simundump kenz /kinetics/PKC_g/PKC_active/PKC_act_GEF 0 0 0 0 0 5915989.320492217 1.0244420927209774e-06 16.0 4.0 0 1 "" red yellow "" 5760 5057 0
simundump kenz /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin 0 0 0 0 0 5915989.320492217 1.713932941845874e-08 2.32 0.58 0 1 "" red red "" 5760 5047 0
simundump kenz /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM 0 0 0 0 0 5915989.320492217 1.0342850009558349e-08 1.4 0.35 0 1 "" red red "" 5760 5037 0
simundump kenz /kinetics/PKC_g/PKC_active/phosph_AC2 0 0 0 0 0 5915989.320492217 1.0244420927209778e-07 16.0 4.0 0 1 "" red red "" 5760 5047 0
simundump kenz /kinetics/PKC_g/PKC_active/mGluRbarr2_craf1_act 0 0 0 0 0 5915989.320492217 1.2676886170200226e-08 4.0 1.0 0 1 "" 27 47 "" 5760 5057 0
simundump kenz /kinetics/PKC_g/PKC_active/b2ARp1barr2_craf1_act 0 0 0 0 0 5915989.320492217 6.338443085100113e-09 2.0 0.5 0 1 "" 27 6 "" 5734 4512 0
simundump kenz /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 52 27 "" 6308 4553 0
simundump kenz /kinetics/PKC_g/PKC_active/LRG_phos_S901 0 0 0 0.0 0 5915989.320492217 1.5877731215041057e-08 4.0 1.0 0 0 "" 19 27 "" 6113 4543 0
simundump kenz /kinetics/PKC_g/PKC_active/mGluR_phos_S901 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 22 27 "" 6113 4512 0
simundump kenz /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 0 0 0 0.0 0 5915989.320492217 1.5877731215041057e-08 4.0 1.0 0 0 "" 2 27 "" 6210 4553 0
simundump kenz /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 0 0 0 0.0 0 5915989.320492217 nan 1e-15 0.0 0 0 "" 19 27 "" 6210 4512 0
simundump kenz /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA 0 0 0 0.0 0 5915989.320492217 1.279867842169478e-07 21.6 5.4 0 0 "" red yellow "" 7673 4347 0
simundump kenz /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA 0 0 0 0.0 0 5915989.320492217 2.616530057269893e-07 44.16 11.04 0 0 "" red cyan "" 7673 4347 0
simundump kenz /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA 0 0 0 0.0 0 5915989.320492217 8.532262333394293e-07 144.0 36.0 0 0 "" red cyan "" 7673 4347 0
simundump kenz /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA 0 0 0 0.0 0 5915989.320492217 1.4220437222323836e-06 240.0 60.0 0 0 "" red pink "" 7673 4347 0
simundump kenz /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA 0 0 0 0.0 0 5915989.320492217 2.844087444464767e-06 480.0 120.0 0 0 "" red orange "" 7673 4347 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho 0 0 0 0.0 0 5915989.320492217 6.839448114128284e-08 6.4 1.6 0 0 "" 27 6 "" 7154 3396 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p 0 0 0 0.0 0 5915989.320492217 6.839448114128284e-08 6.4 1.6 0 0 "" 27 2 "" 7154 3428 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K 0 0 0 0.0 0 5915989.320492217 2.9617600666410794e-07 40.0 10.0 0 0 "" 27 50 "" 7154 3455 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback 0 0 0 0.0 0 5915989.320492217 2.7722872004249815e-07 40.0 10.0 0 0 "" black black "" 7154 3480 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 0 0 0 0.0 0 5915989.320492217 5.544574400849963e-07 80.0 20.0 0 0 "" 27 7 "" 7154 3502 0
simundump kenz /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos 0 0 0 0.0 0 5915989.320492217 2.988922592825441e-06 40.0 10.0 0 0 "" 27 41 "" 7154 3524 0
simundump kenz /kinetics/MAPK_g/craf_1_p/MEK_phospho 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" black 57 "" 6295 3517 0
simundump kenz /kinetics/MAPK_g/craf_1_p/MEKp_phospho 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" black 1 "" 6301 3517 0
simundump kenz /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr 0 0 0 0.0 0 5915989.320492217 1.5680185570063889e-06 0.6 0.15 0 0 "" black black "" 7331 3490 0
simundump kenz /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr 0 0 0 0.0 0 5915989.320492217 1.5680185570063889e-06 0.6 0.15 0 0 "" black black "" 7331 3465 0
simundump kenz /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 0 0 0 0.0 0 5915989.320492217 4.442212717556619e-07 0.6 0.15 0 0 "" black 55 "" 6308 3517 0
simundump kenz /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 0 0 0 0.0 0 5915989.320492217 4.442212717556619e-07 0.6 0.15 0 0 "" black 51 "" 6317 3517 0
simundump kenz /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" 27 41 "" 6189 3538 0
simundump kenz /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" 27 1 "" 6189 3538 0
simundump kenz /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" 27 54 "" 6795 3517 0
simundump kenz /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK 0 0 0 0.0 0 5915989.320492217 1.0914396884989345e-07 0.42 0.105 0 0 "" 27 23 "" 6665 3517 0
simundump kenz /kinetics/AKT_g/PDK1/PDK1_act_S6K 0 0 0 0.0 0 5915989.320492217 3.811776183249629e-08 2.0 0.5 0 0 "" black black "" 2335 5669 0
simundump kenz /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 0 0 0 0.0 0 5915989.320492217 1.3137735129660424e-05 40.0 10.0 0 0 "" black black "" 2335 5659 0
simundump kenz /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 0 0 0 0.0 0 5915989.320492217 1.3137735129660424e-05 80.0 20.0 0 0 "" black black "" 2335 5669 0
simundump kenz /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho 0 0 0 0.0 0 5915989.320492217 2.2870657099497756e-07 12.0 3.0 0 0 "" 25 red "" 2335 5659 0
simundump kenz /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib 0 0 0 0.0 0 5915989.320492217 1.8392639233789036e-08 0.4 0.1 0 0 "" black black "" 2335 5669 0
simundump kenz /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal 0 0 0 0.0 0 5915989.320492217 2.2870657099497756e-07 12.0 3.0 0 0 "" 27 25 "" 2335 5669 0
simundump kenz /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg 0 0 0 0.0 0 5915989.320492217 4.316562290486996e-07 0.8 0.2 0 0 "" red red "" 3037 7449 0
simundump kenz /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC 0 0 0 0.0 0 5915989.320492217 1.725580203649245e-07 0.8 0.2 0 0 "" red red "" 3037 7449 0
simundump kenz /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg 0 0 0 0.0 0 5915989.320492217 4.316562290486996e-07 0.8 0.2 0 0 "" 23 27 "" 3037 7449 0
simundump kenz /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF 0 0 0 0.0 0 5915989.320492217 1.5152130865221018e-07 0.4 0.1 0 0 "" red brown "" 3907 6619 0
simundump kenz /kinetics/Sos_g/SHC_basal/bSHC_phospho 0 0 0 0.0 0 5915989.320492217 1.8307162752789283e-09 1.2 0.3 0 0 "" 56 27 "" 3907 6619 0
simundump kenz /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr 0 0 0 0 0 5915989.320492217 1.2171097123280332e-07 56.0 14.0 0 1 "" red pink "" 2980 6616 0
simundump kenz /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr 0 0 0 0 0 5915989.320492217 2.4340245155821086e-06 228.0 57.0 0 1 "" red pink "" 2980 6616 0
simundump kenz /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho 0 0 0 0.0 0 5915989.320492217 7.67056443104911e-09 2.0 0.5 0 0 "" 33 red "" 2980 6616 0
simundump kenz /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg 0 0 0 0.0 0 5915989.320492217 2.319356824994123e-06 6.0 1.5 0 0 "" red red "" 4044 7434 0
simundump kenz /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC 0 0 0 0.0 0 5915989.320492217 1.8307162752789289e-07 1.2 0.3 0 0 "" red red "" 4044 7434 0
simundump kenz /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg 0 0 0 0.0 0 5915989.320492217 2.319356824994123e-06 6.0 1.5 0 0 "" 27 47 "" 4272 7404 0
simundump kenz /kinetics/NMDAR_g/aNMDAR/Glu_NMDAR_Chan 0 0 0 0 0 5915989.320492217 5.071003068934542e-09 240.0 60.0 0 1 "" black 53 "" 2346 7379 0
simundump kenz /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan 0 0 0 0 0 5915989.320492217 5.071003068934543e-09 240.0 60.0 0 1 "" 1 black "" 2221 7389 0
simundump kenz /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR 0 0 0 0.0 0 5915989.320492217 3.4174446842374845e-07 8.0 2.0 0 0 "" 27 0 "" 9633 5939 0
simundump kenz /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR 0 0 0 0.0 0 5915989.320492217 3.4267521232796776e-07 8.0 2.0 0 0 "" 27 23 "" 9633 5960 0
simundump kenz /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 0 0 0 0.0 0 5915989.320492217 7.134436947445173e-07 40.0 10.0 0 0 "" 27 23 "" 9632 5975 0
simundump kenz /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR 0 0 0 0.0 0 5915989.320492217 3.4267521232796776e-07 8.0 2.0 0 0 "" 27 23 "" 9633 5992 0
simundump kenz /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR 0 0 0 0.0 0 5915989.320492217 3.4267521232796776e-07 8.0 2.0 0 0 "" 27 62 "" 9633 6009 0
simundump kenz /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 0 0 0 0.0 0 5915989.320492217 7.134436947445173e-07 40.0 10.0 0 0 "" 27 22 "" 9630 6027 0
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS831 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS831 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/Glu_sAMPAR /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/AMPA_sAMPAR /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS845S831 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS845 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS845 /kinetics/AMPAR_g/aAMPAR SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_CaM /kinetics/CaMKII_g/aCaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /kinetics/CaMKII_g/aCaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKIIppp /kinetics/CaMKII_g/aCaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/aCaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_CaM /kinetics/CaMKII_g/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /kinetics/CaMKII_g/tot_CaM_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/tot_autonomous_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKIIppp /kinetics/CaMKII_g/tot_autonomous_CaMKII SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/tot_CaMKIIT286 SUMTOTAL n nInit
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /kinetics/CaMKII_g/tot_CaMKIIT286 SUMTOTAL n nInit
addmsg /kinetics/PP2B_g/CaMCa4_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB SUMTOTAL n nInit
addmsg /kinetics/PP2B_g/CaMCa3_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB SUMTOTAL n nInit
addmsg /kinetics/PP2B_g/CaMCa2_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB SUMTOTAL n nInit
addmsg /kinetics/Ca_g/Ca_IP3_IP3R /kinetics/Ca_g/Mirror_Ca_IP3_IP3R SUMTOTAL n nInit
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx /kinetics/PI3K_g/aPI3K SUMTOTAL n nInit
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K /kinetics/PI3K_g/aPI3K SUMTOTAL n nInit
addmsg /kinetics/PI3K_g/tLRHomerPIKE_PI3K /kinetics/PI3K_g/aPI3K SUMTOTAL n nInit
addmsg /kinetics/PI3K_g/GluRHomerPIKE_PI3K /kinetics/PI3K_g/tLRHomerPIKE_PI3K SUMTOTAL n nInit
addmsg /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K /kinetics/PI3K_g/tLRHomerPIKE_PI3K SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_DAG_AA_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_Ca_memb_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_Ca_AA_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_DAG_memb_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_basal_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
addmsg /kinetics/PKC_g/PKC_AA_p /kinetics/PKC_g/PKC_active SUMTOTAL n nInit
simundump xgraph /graphs/conc1 0 0 99 0.001 0.999 0
simundump xgraph /graphs/conc2 0 0 100 0 1 0
 simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__tot_autonomous_CaMKII.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__aCaMKII.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__tot_CaM_CaMKII.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr286p_CaM.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr306.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr286.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKIIppp.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_CaM.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" 9 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__Ca_g_0__Ca.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAPp_PDZ.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAPp.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAP.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xplot /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAP_PDZ.Conc 3 524288 \
"delete_plot.w <s> <d>; edit_plot.D <w>" black 0 0 1
simundump xgraph /moregraphs/conc3 0 0 100 0 1 0
simundump xgraph /moregraphs/conc4 0 0 100 0 1 0
 simundump xcoredraw /edit/draw 0 -6 4 -2 6
simundump xtree /edit/draw/tree 0 \
  /kinetics/#[],/kinetics/#[]/#[],/kinetics/#[]/#[]/#[][TYPE!=proto],/kinetics/#[]/#[]/#[][TYPE!=linkinfo]/##[] "edit_elm.D <v>; drag_from_edit.w <d> <S> <x> <y> <z>" auto 0.6
simundump xtext /file/notes 0 1
addmsg /kinetics/mTORC1_g/Rheb_GTP /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx SUBSTRATE n 
addmsg /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx /kinetics/mTORC1_g/Rheb_GTP REAC A B 
addmsg /kinetics/mTORC1_g/TOR_clx /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx SUBSTRATE n 
addmsg /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx /kinetics/mTORC1_g/TOR_clx REAC A B 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx PRODUCT n 
addmsg /kinetics/mTORC1_g/Rheb_GTP_bind_TORclx /kinetics/mTORC1_g/TOR_Rheb_GTP_clx REAC B A
addmsg /kinetics/mTORC1_g/Rheb_GDP /kinetics/mTORC1_g/GDP_to_GTP SUBSTRATE n 
addmsg /kinetics/mTORC1_g/GDP_to_GTP /kinetics/mTORC1_g/Rheb_GDP REAC A B 
addmsg /kinetics/mTORC1_g/Rheb_GTP /kinetics/mTORC1_g/GDP_to_GTP PRODUCT n 
addmsg /kinetics/mTORC1_g/GDP_to_GTP /kinetics/mTORC1_g/Rheb_GTP REAC B A
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx /kinetics/mTORC1_g/Rapa_bind_mTORC1 SUBSTRATE n 
addmsg /kinetics/mTORC1_g/Rapa_bind_mTORC1 /kinetics/mTORC1_g/TOR_Rheb_GTP_clx REAC A B 
addmsg /kinetics/mTORC1_g/Rapamycin /kinetics/mTORC1_g/Rapa_bind_mTORC1 SUBSTRATE n 
addmsg /kinetics/mTORC1_g/Rapa_bind_mTORC1 /kinetics/mTORC1_g/Rapamycin REAC A B 
addmsg /kinetics/mTORC1_g/Rapa_mTORC1 /kinetics/mTORC1_g/Rapa_bind_mTORC1 PRODUCT n 
addmsg /kinetics/mTORC1_g/Rapa_bind_mTORC1 /kinetics/mTORC1_g/Rapa_mTORC1 REAC B A
addmsg /kinetics/S6K_g/S6K /kinetics/S6K_g/basal_S6K SUBSTRATE n 
addmsg /kinetics/S6K_g/basal_S6K /kinetics/S6K_g/S6K REAC A B 
addmsg /kinetics/S6K_g/S6K_p /kinetics/S6K_g/basal_S6K PRODUCT n 
addmsg /kinetics/S6K_g/basal_S6K /kinetics/S6K_g/S6K_p REAC B A
addmsg /kinetics/S6K_g/S6K_p /kinetics/S6K_g/PF4708671_bind_S6Kp SUBSTRATE n 
addmsg /kinetics/S6K_g/PF4708671_bind_S6Kp /kinetics/S6K_g/S6K_p REAC A B 
addmsg /kinetics/S6K_g/PF4708671 /kinetics/S6K_g/PF4708671_bind_S6Kp SUBSTRATE n 
addmsg /kinetics/S6K_g/PF4708671_bind_S6Kp /kinetics/S6K_g/PF4708671 REAC A B 
addmsg /kinetics/S6K_g/Blocked_S6K /kinetics/S6K_g/PF4708671_bind_S6Kp PRODUCT n 
addmsg /kinetics/S6K_g/PF4708671_bind_S6Kp /kinetics/S6K_g/Blocked_S6K REAC B A
addmsg /kinetics/S6K_g/S6K_p /kinetics/S6K_g/FS115_bind_S6Kp SUBSTRATE n 
addmsg /kinetics/S6K_g/FS115_bind_S6Kp /kinetics/S6K_g/S6K_p REAC A B 
addmsg /kinetics/S6K_g/FS115 /kinetics/S6K_g/FS115_bind_S6Kp SUBSTRATE n 
addmsg /kinetics/S6K_g/FS115_bind_S6Kp /kinetics/S6K_g/FS115 REAC A B 
addmsg /kinetics/S6K_g/Blocked_S6K /kinetics/S6K_g/FS115_bind_S6Kp PRODUCT n 
addmsg /kinetics/S6K_g/FS115_bind_S6Kp /kinetics/S6K_g/Blocked_S6K REAC B A
addmsg /kinetics/_4EBP_g/_4E_BP /kinetics/_4EBP_g/eIF4E_bind_BP2 SUBSTRATE n 
addmsg /kinetics/_4EBP_g/eIF4E_bind_BP2 /kinetics/_4EBP_g/_4E_BP REAC A B 
addmsg /kinetics/TransInit_g/eIF4E /kinetics/_4EBP_g/eIF4E_bind_BP2 SUBSTRATE n 
addmsg /kinetics/_4EBP_g/eIF4E_bind_BP2 /kinetics/TransInit_g/eIF4E REAC A B 
addmsg /kinetics/_4EBP_g/eIF4E_BP /kinetics/_4EBP_g/eIF4E_bind_BP2 PRODUCT n 
addmsg /kinetics/_4EBP_g/eIF4E_bind_BP2 /kinetics/_4EBP_g/eIF4E_BP REAC B A
addmsg /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 /kinetics/_4EBP_g/eIF4E_BP2_disso SUBSTRATE n 
addmsg /kinetics/_4EBP_g/eIF4E_BP2_disso /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 REAC A B 
addmsg /kinetics/_4EBP_g/_4E_BP_t37_46_s65 /kinetics/_4EBP_g/eIF4E_BP2_disso PRODUCT n 
addmsg /kinetics/_4EBP_g/eIF4E_BP2_disso /kinetics/_4EBP_g/_4E_BP_t37_46_s65 REAC B A
addmsg /kinetics/TransInit_g/eIF4E /kinetics/_4EBP_g/eIF4E_BP2_disso PRODUCT n 
addmsg /kinetics/_4EBP_g/eIF4E_BP2_disso /kinetics/TransInit_g/eIF4E REAC B A
addmsg /kinetics/_4EBP_g/eIF4E_BP_t37_46 /kinetics/_4EBP_g/eIF4E_BP_disso SUBSTRATE n 
addmsg /kinetics/_4EBP_g/eIF4E_BP_disso /kinetics/_4EBP_g/eIF4E_BP_t37_46 REAC A B 
addmsg /kinetics/_4EBP_g/_4E_BP_t37_46 /kinetics/_4EBP_g/eIF4E_BP_disso PRODUCT n 
addmsg /kinetics/_4EBP_g/eIF4E_BP_disso /kinetics/_4EBP_g/_4E_BP_t37_46 REAC B A
addmsg /kinetics/TransInit_g/eIF4E /kinetics/_4EBP_g/eIF4E_BP_disso PRODUCT n 
addmsg /kinetics/_4EBP_g/eIF4E_BP_disso /kinetics/TransInit_g/eIF4E REAC B A
addmsg /kinetics/_43S_g/Quaternary_clx /kinetics/_43S_g/Q_binds_R SUBSTRATE n 
addmsg /kinetics/_43S_g/Q_binds_R /kinetics/_43S_g/Quaternary_clx REAC A B 
addmsg /kinetics/_40S_g/_40S /kinetics/_43S_g/Q_binds_R SUBSTRATE n 
addmsg /kinetics/_43S_g/Q_binds_R /kinetics/_40S_g/_40S REAC A B 
addmsg /kinetics/_43S_g/Q_R /kinetics/_43S_g/Q_binds_R PRODUCT n 
addmsg /kinetics/_43S_g/Q_binds_R /kinetics/_43S_g/Q_R REAC B A
addmsg /kinetics/_43S_g/Q_R /kinetics/_43S_g/QR_binds_M SUBSTRATE n 
addmsg /kinetics/_43S_g/QR_binds_M /kinetics/_43S_g/Q_R REAC A B 
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx /kinetics/_43S_g/QR_binds_M SUBSTRATE n 
addmsg /kinetics/_43S_g/QR_binds_M /kinetics/TransInit_g/eIF4F_mRNA_clx REAC A B 
addmsg /kinetics/_43S_g/_43Scomplex /kinetics/_43S_g/QR_binds_M PRODUCT n 
addmsg /kinetics/_43S_g/QR_binds_M /kinetics/_43S_g/_43Scomplex REAC B A
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx /kinetics/_43S_g/R_binds_M SUBSTRATE n 
addmsg /kinetics/_43S_g/R_binds_M /kinetics/TransInit_g/eIF4F_mRNA_clx REAC A B 
addmsg /kinetics/_40S_g/_40S /kinetics/_43S_g/R_binds_M SUBSTRATE n 
addmsg /kinetics/_43S_g/R_binds_M /kinetics/_40S_g/_40S REAC A B 
addmsg /kinetics/_43S_g/RM /kinetics/_43S_g/R_binds_M PRODUCT n 
addmsg /kinetics/_43S_g/R_binds_M /kinetics/_43S_g/RM REAC B A
addmsg /kinetics/_43S_g/RM /kinetics/_43S_g/RM_binds_Q SUBSTRATE n 
addmsg /kinetics/_43S_g/RM_binds_Q /kinetics/_43S_g/RM REAC A B 
addmsg /kinetics/_43S_g/Quaternary_clx /kinetics/_43S_g/RM_binds_Q SUBSTRATE n 
addmsg /kinetics/_43S_g/RM_binds_Q /kinetics/_43S_g/Quaternary_clx REAC A B 
addmsg /kinetics/_43S_g/_43Scomplex /kinetics/_43S_g/RM_binds_Q PRODUCT n 
addmsg /kinetics/_43S_g/RM_binds_Q /kinetics/_43S_g/_43Scomplex REAC B A
addmsg /kinetics/protein_g/peptide /kinetics/protein_g/pep_elongation SUBSTRATE n 
addmsg /kinetics/protein_g/pep_elongation /kinetics/protein_g/peptide REAC A B 
addmsg /kinetics/protein_g/protein /kinetics/protein_g/pep_elongation PRODUCT n 
addmsg /kinetics/protein_g/pep_elongation /kinetics/protein_g/protein REAC B A
addmsg /kinetics/protein_g/protein /kinetics/protein_g/protein_deg SUBSTRATE n 
addmsg /kinetics/protein_g/protein_deg /kinetics/protein_g/protein REAC A B 
addmsg /kinetics/protein_g/degraded_protein /kinetics/protein_g/protein_deg PRODUCT n 
addmsg /kinetics/protein_g/protein_deg /kinetics/protein_g/degraded_protein REAC B A
addmsg /kinetics/CaMKIII_g/CaMKIII /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 SUBSTRATE n 
addmsg /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 /kinetics/CaMKIII_g/CaMKIII REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 SUBSTRATE n 
addmsg /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4 /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 PRODUCT n 
addmsg /kinetics/CaMKIII_g/CaMKIII_bind_CaM_Ca4 /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4 REAC B A
addmsg /kinetics/CaMKIII_g/CaMKIII_p /kinetics/CaMKIII_g/CaMKIII_dephospho SUBSTRATE n 
addmsg /kinetics/CaMKIII_g/CaMKIII_dephospho /kinetics/CaMKIII_g/CaMKIII_p REAC A B 
addmsg /kinetics/CaMKIII_g/CaMKIII /kinetics/CaMKIII_g/CaMKIII_dephospho PRODUCT n 
addmsg /kinetics/CaMKIII_g/CaMKIII_dephospho /kinetics/CaMKIII_g/CaMKIII REAC B A
addmsg /kinetics/TransInit_g/eIF4E /kinetics/TransInit_g/eIF4F_clx SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4F_clx /kinetics/TransInit_g/eIF4E REAC A B 
addmsg /kinetics/TransInit_g/eIF4G_A_clx /kinetics/TransInit_g/eIF4F_clx SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4F_clx /kinetics/TransInit_g/eIF4G_A_clx REAC A B 
addmsg /kinetics/TransInit_g/eIF4F /kinetics/TransInit_g/eIF4F_clx PRODUCT n 
addmsg /kinetics/TransInit_g/eIF4F_clx /kinetics/TransInit_g/eIF4F REAC B A
addmsg /kinetics/TransInit_g/eIF4A /kinetics/TransInit_g/eIF4G_A_clx_formation SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4G_A_clx_formation /kinetics/TransInit_g/eIF4A REAC A B 
addmsg /kinetics/TransInit_g/eIF4G /kinetics/TransInit_g/eIF4G_A_clx_formation SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4G_A_clx_formation /kinetics/TransInit_g/eIF4G REAC A B 
addmsg /kinetics/TransInit_g/eIF4G_A_clx /kinetics/TransInit_g/eIF4G_A_clx_formation PRODUCT n 
addmsg /kinetics/TransInit_g/eIF4G_A_clx_formation /kinetics/TransInit_g/eIF4G_A_clx REAC B A
addmsg /kinetics/TransInit_g/eIF4F /kinetics/TransInit_g/eIF4F_mRNA_clx_formation SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx_formation /kinetics/TransInit_g/eIF4F REAC A B 
addmsg /kinetics/TransInit_g/mRNA /kinetics/TransInit_g/eIF4F_mRNA_clx_formation SUBSTRATE n 
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx_formation /kinetics/TransInit_g/mRNA REAC A B 
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx /kinetics/TransInit_g/eIF4F_mRNA_clx_formation PRODUCT n 
addmsg /kinetics/TransInit_g/eIF4F_mRNA_clx_formation /kinetics/TransInit_g/eIF4F_mRNA_clx REAC B A
addmsg /kinetics/TransElong_g/eEF2 /kinetics/TransElong_g/elongation SUBSTRATE n 
addmsg /kinetics/TransElong_g/elongation /kinetics/TransElong_g/eEF2 REAC A B 
addmsg /kinetics/TransElong_g/_80S_ribos_clx /kinetics/TransElong_g/elongation SUBSTRATE n 
addmsg /kinetics/TransElong_g/elongation /kinetics/TransElong_g/_80S_ribos_clx REAC A B 
addmsg /kinetics/TransElong_g/Translation_clx /kinetics/TransElong_g/elongation PRODUCT n 
addmsg /kinetics/TransElong_g/elongation /kinetics/TransElong_g/Translation_clx REAC B A
addmsg /kinetics/_43S_g/_43Scomplex /kinetics/TransElong_g/activation SUBSTRATE n 
addmsg /kinetics/TransElong_g/activation /kinetics/_43S_g/_43Scomplex REAC A B 
addmsg /kinetics/TransElong_g/_60S_R /kinetics/TransElong_g/activation SUBSTRATE n 
addmsg /kinetics/TransElong_g/activation /kinetics/TransElong_g/_60S_R REAC A B 
addmsg /kinetics/TransElong_g/_80S_ribos_clx /kinetics/TransElong_g/activation PRODUCT n 
addmsg /kinetics/TransElong_g/activation /kinetics/TransElong_g/_80S_ribos_clx REAC B A
addmsg /kinetics/_40S_g/_40S /kinetics/_40S_g/S6_dephosph SUBSTRATE n 
addmsg /kinetics/_40S_g/S6_dephosph /kinetics/_40S_g/_40S REAC A B 
addmsg /kinetics/_40S_g/_40S_inact /kinetics/_40S_g/S6_dephosph PRODUCT n 
addmsg /kinetics/_40S_g/S6_dephosph /kinetics/_40S_g/_40S_inact REAC B A
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2_p /kinetics/TSC1_TSC2_g/TSC1_TSC2_dephospho SUBSTRATE n 
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2_dephospho /kinetics/TSC1_TSC2_g/TSC1_TSC2_p REAC A B 
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2 /kinetics/TSC1_TSC2_g/TSC1_TSC2_dephospho PRODUCT n 
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2_dephospho /kinetics/TSC1_TSC2_g/TSC1_TSC2 REAC B A
addmsg /kinetics/FMRP_g/FMRP /kinetics/FMRP_g/degrade_FMRP SUBSTRATE n 
addmsg /kinetics/FMRP_g/degrade_FMRP /kinetics/FMRP_g/FMRP REAC A B 
addmsg /kinetics/FMRP_g/degraded /kinetics/FMRP_g/degrade_FMRP PRODUCT n 
addmsg /kinetics/FMRP_g/degrade_FMRP /kinetics/FMRP_g/degraded REAC B A
addmsg /kinetics/TransElong_g/Translation_clx /kinetics/FMRP_g/FMRP_inhib_translation SUBSTRATE n 
addmsg /kinetics/FMRP_g/FMRP_inhib_translation /kinetics/TransElong_g/Translation_clx REAC A B 
addmsg /kinetics/FMRP_g/FMRP_p /kinetics/FMRP_g/FMRP_inhib_translation SUBSTRATE n 
addmsg /kinetics/FMRP_g/FMRP_inhib_translation /kinetics/FMRP_g/FMRP_p REAC A B 
addmsg /kinetics/FMRP_g/blocked_transl_cplx /kinetics/FMRP_g/FMRP_inhib_translation PRODUCT n 
addmsg /kinetics/FMRP_g/FMRP_inhib_translation /kinetics/FMRP_g/blocked_transl_cplx REAC B A
addmsg /kinetics/protein_g/peptide /kinetics/FMRP_g/FMRP_synth SUBSTRATE n 
addmsg /kinetics/FMRP_g/FMRP_synth /kinetics/protein_g/peptide REAC A B 
addmsg /kinetics/FMRP_g/FMRP /kinetics/FMRP_g/FMRP_synth PRODUCT n 
addmsg /kinetics/FMRP_g/FMRP_synth /kinetics/FMRP_g/FMRP REAC B A
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/to_memb SUBSTRATE n 
addmsg /kinetics/AMPAR_g/to_memb /kinetics/AMPAR_g/PSD95 REAC A B 
addmsg /kinetics/AMPAR_g/intAMPAR /kinetics/AMPAR_g/to_memb SUBSTRATE n 
addmsg /kinetics/AMPAR_g/to_memb /kinetics/AMPAR_g/intAMPAR REAC A B 
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/AMPAR_g/to_memb PRODUCT n 
addmsg /kinetics/AMPAR_g/to_memb /kinetics/AMPAR_g/sAMPAR REAC B A
addmsg /kinetics/AMPAR_g/intAMPARpS845S831 /kinetics/AMPAR_g/degradation_2 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/degradation_2 /kinetics/AMPAR_g/intAMPARpS845S831 REAC A B 
addmsg /kinetics/AMPAR_g/Bulk_AMPAR /kinetics/AMPAR_g/degradation_2 PRODUCT n 
addmsg /kinetics/AMPAR_g/degradation_2 /kinetics/AMPAR_g/Bulk_AMPAR REAC B A
addmsg /kinetics/AMPAR_g/intAMPARpS845 /kinetics/AMPAR_g/degradation_1 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/degradation_1 /kinetics/AMPAR_g/intAMPARpS845 REAC A B 
addmsg /kinetics/AMPAR_g/Bulk_AMPAR /kinetics/AMPAR_g/degradation_1 PRODUCT n 
addmsg /kinetics/AMPAR_g/degradation_1 /kinetics/AMPAR_g/Bulk_AMPAR REAC B A
addmsg /kinetics/AMPAR_g/Bulk_AMPAR /kinetics/AMPAR_g/exchange SUBSTRATE n 
addmsg /kinetics/AMPAR_g/exchange /kinetics/AMPAR_g/Bulk_AMPAR REAC A B 
addmsg /kinetics/AMPAR_g/intAMPAR /kinetics/AMPAR_g/exchange PRODUCT n 
addmsg /kinetics/AMPAR_g/exchange /kinetics/AMPAR_g/intAMPAR REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS831 /kinetics/AMPAR_g/from_memb3 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/from_memb3 /kinetics/AMPAR_g/sAMPARpS831 REAC A B 
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/from_memb3 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb3 /kinetics/AMPAR_g/PSD95 REAC B A
addmsg /kinetics/AMPAR_g/intAMPARpS831 /kinetics/AMPAR_g/from_memb3 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb3 /kinetics/AMPAR_g/intAMPARpS831 REAC B A
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/to_memb_1 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/to_memb_1 /kinetics/AMPAR_g/PSD95 REAC A B 
addmsg /kinetics/AMPAR_g/intAMPARpS845 /kinetics/AMPAR_g/to_memb_1 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/to_memb_1 /kinetics/AMPAR_g/intAMPARpS845 REAC A B 
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/AMPAR_g/to_memb_1 PRODUCT n 
addmsg /kinetics/AMPAR_g/to_memb_1 /kinetics/AMPAR_g/sAMPARpS845 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845S831 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 /kinetics/AMPAR_g/sAMPARpS845S831 REAC A B 
addmsg /kinetics/Ligands_g/AMPA /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 /kinetics/Ligands_g/AMPA REAC A B 
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 PRODUCT n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831 /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845S831 /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 /kinetics/AMPAR_g/sAMPARpS845S831 REAC A B 
addmsg /kinetics/Ligands_g/Glutamate /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS845S831 /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 PRODUCT n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831 /kinetics/AMPAR_g/Glu_sAMPARpS845S831 REAC B A
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/AMPAR_g/Glu_bind_sAMPAR SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPAR /kinetics/AMPAR_g/sAMPAR REAC A B 
addmsg /kinetics/Ligands_g/Glutamate /kinetics/AMPAR_g/Glu_bind_sAMPAR SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPAR /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/AMPAR_g/Glu_sAMPAR /kinetics/AMPAR_g/Glu_bind_sAMPAR PRODUCT n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPAR /kinetics/AMPAR_g/Glu_sAMPAR REAC B A
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/AMPAR_g/AMPA_bind_sAMPAR SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPAR /kinetics/AMPAR_g/sAMPAR REAC A B 
addmsg /kinetics/Ligands_g/AMPA /kinetics/AMPAR_g/AMPA_bind_sAMPAR SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPAR /kinetics/Ligands_g/AMPA REAC A B 
addmsg /kinetics/AMPAR_g/AMPA_sAMPAR /kinetics/AMPAR_g/AMPA_bind_sAMPAR PRODUCT n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPAR /kinetics/AMPAR_g/AMPA_sAMPAR REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 /kinetics/AMPAR_g/sAMPARpS845 REAC A B 
addmsg /kinetics/Ligands_g/Glutamate /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS845 /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 PRODUCT n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS845 /kinetics/AMPAR_g/Glu_sAMPARpS845 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 /kinetics/AMPAR_g/sAMPARpS845 REAC A B 
addmsg /kinetics/Ligands_g/AMPA /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 /kinetics/Ligands_g/AMPA REAC A B 
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS845 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 PRODUCT n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845 /kinetics/AMPAR_g/AMPA_sAMPARpS845 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845S831 /kinetics/AMPAR_g/from_memb2 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/from_memb2 /kinetics/AMPAR_g/sAMPARpS845S831 REAC A B 
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/from_memb2 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb2 /kinetics/AMPAR_g/PSD95 REAC B A
addmsg /kinetics/AMPAR_g/intAMPARpS845S831 /kinetics/AMPAR_g/from_memb2 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb2 /kinetics/AMPAR_g/intAMPARpS845S831 REAC B A
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/AMPAR_g/from_memb SUBSTRATE n 
addmsg /kinetics/AMPAR_g/from_memb /kinetics/AMPAR_g/sAMPAR REAC A B 
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/from_memb PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb /kinetics/AMPAR_g/PSD95 REAC B A
addmsg /kinetics/AMPAR_g/intAMPAR /kinetics/AMPAR_g/from_memb PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb /kinetics/AMPAR_g/intAMPAR REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/AMPAR_g/from_memb1 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/from_memb1 /kinetics/AMPAR_g/sAMPARpS845 REAC A B 
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/AMPAR_g/from_memb1 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb1 /kinetics/AMPAR_g/PSD95 REAC B A
addmsg /kinetics/AMPAR_g/intAMPARpS845 /kinetics/AMPAR_g/from_memb1 PRODUCT n 
addmsg /kinetics/AMPAR_g/from_memb1 /kinetics/AMPAR_g/intAMPARpS845 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS831 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 /kinetics/AMPAR_g/sAMPARpS831 REAC A B 
addmsg /kinetics/Ligands_g/AMPA /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 /kinetics/Ligands_g/AMPA REAC A B 
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS831 /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 PRODUCT n 
addmsg /kinetics/AMPAR_g/AMPA_bind_sAMPARpS831 /kinetics/AMPAR_g/AMPA_sAMPARpS831 REAC B A
addmsg /kinetics/AMPAR_g/sAMPARpS831 /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 /kinetics/AMPAR_g/sAMPARpS831 REAC A B 
addmsg /kinetics/Ligands_g/Glutamate /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS831 /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 PRODUCT n 
addmsg /kinetics/AMPAR_g/Glu_bind_sAMPARpS831 /kinetics/AMPAR_g/Glu_sAMPARpS831 REAC B A
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/Inact_PP1 SUBSTRATE n 
addmsg /kinetics/PP1_g/Inact_PP1 /kinetics/PP1_g/PP1_active REAC A B 
addmsg /kinetics/PP1_g/I1_p /kinetics/PP1_g/Inact_PP1 SUBSTRATE n 
addmsg /kinetics/PP1_g/Inact_PP1 /kinetics/PP1_g/I1_p REAC A B 
addmsg /kinetics/PP1_g/PP1_I1_p /kinetics/PP1_g/Inact_PP1 PRODUCT n 
addmsg /kinetics/PP1_g/Inact_PP1 /kinetics/PP1_g/PP1_I1_p REAC B A
addmsg /kinetics/PP1_g/PP1_I1 /kinetics/PP1_g/dissoc_PP1_I1 SUBSTRATE n 
addmsg /kinetics/PP1_g/dissoc_PP1_I1 /kinetics/PP1_g/PP1_I1 REAC A B 
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/dissoc_PP1_I1 PRODUCT n 
addmsg /kinetics/PP1_g/dissoc_PP1_I1 /kinetics/PP1_g/PP1_active REAC B A
addmsg /kinetics/PP1_g/I1 /kinetics/PP1_g/dissoc_PP1_I1 PRODUCT n 
addmsg /kinetics/PP1_g/dissoc_PP1_I1 /kinetics/PP1_g/I1 REAC B A
addmsg /kinetics/PKA_g/R2C2_cAMP4 /kinetics/PKA_g/Release_C1 SUBSTRATE n 
addmsg /kinetics/PKA_g/Release_C1 /kinetics/PKA_g/R2C2_cAMP4 REAC A B 
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/Release_C1 PRODUCT n 
addmsg /kinetics/PKA_g/Release_C1 /kinetics/PKA_g/PKA_active REAC B A
addmsg /kinetics/PKA_g/R2C_cAMP4 /kinetics/PKA_g/Release_C1 PRODUCT n 
addmsg /kinetics/PKA_g/Release_C1 /kinetics/PKA_g/R2C_cAMP4 REAC B A
addmsg /kinetics/PKA_g/R2C_cAMP4 /kinetics/PKA_g/Release_C2 SUBSTRATE n 
addmsg /kinetics/PKA_g/Release_C2 /kinetics/PKA_g/R2C_cAMP4 REAC A B 
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/Release_C2 PRODUCT n 
addmsg /kinetics/PKA_g/Release_C2 /kinetics/PKA_g/PKA_active REAC B A
addmsg /kinetics/PKA_g/R2_cAMP4 /kinetics/PKA_g/Release_C2 PRODUCT n 
addmsg /kinetics/PKA_g/Release_C2 /kinetics/PKA_g/R2_cAMP4 REAC B A
addmsg /kinetics/PKA_g/R2C2 /kinetics/PKA_g/cAMP_bind_site_B1 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B1 /kinetics/PKA_g/R2C2 REAC A B 
addmsg /kinetics/AC_g/cAMP /kinetics/PKA_g/cAMP_bind_site_B1 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B1 /kinetics/AC_g/cAMP REAC A B 
addmsg /kinetics/PKA_g/R2C2_cAMP /kinetics/PKA_g/cAMP_bind_site_B1 PRODUCT n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B1 /kinetics/PKA_g/R2C2_cAMP REAC B A
addmsg /kinetics/PKA_g/R2C2_cAMP /kinetics/PKA_g/cAMP_bind_site_B2 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B2 /kinetics/PKA_g/R2C2_cAMP REAC A B 
addmsg /kinetics/AC_g/cAMP /kinetics/PKA_g/cAMP_bind_site_B2 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B2 /kinetics/AC_g/cAMP REAC A B 
addmsg /kinetics/PKA_g/R2C2_cAMP2 /kinetics/PKA_g/cAMP_bind_site_B2 PRODUCT n 
addmsg /kinetics/PKA_g/cAMP_bind_site_B2 /kinetics/PKA_g/R2C2_cAMP2 REAC B A
addmsg /kinetics/PKA_g/R2C2_cAMP2 /kinetics/PKA_g/cAMP_bind_site_A1 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A1 /kinetics/PKA_g/R2C2_cAMP2 REAC A B 
addmsg /kinetics/AC_g/cAMP /kinetics/PKA_g/cAMP_bind_site_A1 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A1 /kinetics/AC_g/cAMP REAC A B 
addmsg /kinetics/PKA_g/R2C2_cAMP3 /kinetics/PKA_g/cAMP_bind_site_A1 PRODUCT n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A1 /kinetics/PKA_g/R2C2_cAMP3 REAC B A
addmsg /kinetics/PKA_g/R2C2_cAMP3 /kinetics/PKA_g/cAMP_bind_site_A2 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A2 /kinetics/PKA_g/R2C2_cAMP3 REAC A B 
addmsg /kinetics/AC_g/cAMP /kinetics/PKA_g/cAMP_bind_site_A2 SUBSTRATE n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A2 /kinetics/AC_g/cAMP REAC A B 
addmsg /kinetics/PKA_g/R2C2_cAMP4 /kinetics/PKA_g/cAMP_bind_site_A2 PRODUCT n 
addmsg /kinetics/PKA_g/cAMP_bind_site_A2 /kinetics/PKA_g/R2C2_cAMP4 REAC B A
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/inhib_PKA SUBSTRATE n 
addmsg /kinetics/PKA_g/inhib_PKA /kinetics/PKA_g/PKA_active REAC A B 
addmsg /kinetics/PKA_g/PKA_inhibitor /kinetics/PKA_g/inhib_PKA SUBSTRATE n 
addmsg /kinetics/PKA_g/inhib_PKA /kinetics/PKA_g/PKA_inhibitor REAC A B 
addmsg /kinetics/PKA_g/inhibited_PKA /kinetics/PKA_g/inhib_PKA PRODUCT n 
addmsg /kinetics/PKA_g/inhib_PKA /kinetics/PKA_g/inhibited_PKA REAC B A
addmsg /kinetics/CaMKII_g/CaMKII /kinetics/CaMKII_g/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_g/CaMKII_bind_CaM /kinetics/CaMKII_g/CaMKII REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/CaMKII_g/CaMKII_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_g/CaMKII_bind_CaM /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/CaMKII_g/CaMKII_CaM /kinetics/CaMKII_g/CaMKII_bind_CaM PRODUCT n 
addmsg /kinetics/CaMKII_g/CaMKII_bind_CaM /kinetics/CaMKII_g/CaMKII_CaM REAC B A
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM /kinetics/CaMKII_g/CaMKII_thr286 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM PRODUCT n 
addmsg /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM /kinetics/CaMKII_g/CaMKII_thr286p_CaM REAC B A
addmsg /kinetics/CaMKII_g/CaMKII /kinetics/CaMKII_g/basal_activity SUBSTRATE n 
addmsg /kinetics/CaMKII_g/basal_activity /kinetics/CaMKII_g/CaMKII REAC A B 
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/basal_activity PRODUCT n 
addmsg /kinetics/CaMKII_g/basal_activity /kinetics/CaMKII_g/CaMKII_thr286 REAC B A
addmsg /kinetics/CaMKII_g/CaMKII /kinetics/CaMKII_g/KN62_block_CaMKII SUBSTRATE n 
addmsg /kinetics/CaMKII_g/KN62_block_CaMKII /kinetics/CaMKII_g/CaMKII REAC A B 
addmsg /kinetics/CaMKII_g/KN62 /kinetics/CaMKII_g/KN62_block_CaMKII SUBSTRATE n 
addmsg /kinetics/CaMKII_g/KN62_block_CaMKII /kinetics/CaMKII_g/KN62 REAC A B 
addmsg /kinetics/CaMKII_g/Blocked_CaMKII /kinetics/CaMKII_g/KN62_block_CaMKII PRODUCT n 
addmsg /kinetics/CaMKII_g/KN62_block_CaMKII /kinetics/CaMKII_g/Blocked_CaMKII REAC B A
addmsg /kinetics/Ras_g/inact_GEF /kinetics/Ras_g/bg_act_GEF SUBSTRATE n 
addmsg /kinetics/Ras_g/bg_act_GEF /kinetics/Ras_g/inact_GEF REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/Ras_g/bg_act_GEF SUBSTRATE n 
addmsg /kinetics/Ras_g/bg_act_GEF /kinetics/Gq_g/BetaGamma REAC A B 
addmsg /kinetics/Ras_g/GEF_Gprot_bg /kinetics/Ras_g/bg_act_GEF PRODUCT n 
addmsg /kinetics/Ras_g/bg_act_GEF /kinetics/Ras_g/GEF_Gprot_bg REAC B A
addmsg /kinetics/Ras_g/GEF_p /kinetics/Ras_g/dephosph_GEF SUBSTRATE n 
addmsg /kinetics/Ras_g/dephosph_GEF /kinetics/Ras_g/GEF_p REAC A B 
addmsg /kinetics/Ras_g/inact_GEF /kinetics/Ras_g/dephosph_GEF PRODUCT n 
addmsg /kinetics/Ras_g/dephosph_GEF /kinetics/Ras_g/inact_GEF REAC B A
addmsg /kinetics/Ras_g/GTP_Ras /kinetics/Ras_g/Ras_intrinsic_GTPase SUBSTRATE n 
addmsg /kinetics/Ras_g/Ras_intrinsic_GTPase /kinetics/Ras_g/GTP_Ras REAC A B 
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Ras_g/Ras_intrinsic_GTPase PRODUCT n 
addmsg /kinetics/Ras_g/Ras_intrinsic_GTPase /kinetics/Ras_g/GDP_Ras REAC B A
addmsg /kinetics/Ras_g/GAP_p /kinetics/Ras_g/dephosph_GAP SUBSTRATE n 
addmsg /kinetics/Ras_g/dephosph_GAP /kinetics/Ras_g/GAP_p REAC A B 
addmsg /kinetics/Ras_g/GAP /kinetics/Ras_g/dephosph_GAP PRODUCT n 
addmsg /kinetics/Ras_g/dephosph_GAP /kinetics/Ras_g/GAP REAC B A
addmsg /kinetics/Ras_g/inact_GEF /kinetics/Ras_g/CaM_bind_GEF SUBSTRATE n 
addmsg /kinetics/Ras_g/CaM_bind_GEF /kinetics/Ras_g/inact_GEF REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/Ras_g/CaM_bind_GEF SUBSTRATE n 
addmsg /kinetics/Ras_g/CaM_bind_GEF /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/Ras_g/CaM_GEF /kinetics/Ras_g/CaM_bind_GEF PRODUCT n 
addmsg /kinetics/Ras_g/CaM_bind_GEF /kinetics/Ras_g/CaM_GEF REAC B A
addmsg /kinetics/Ras_g/inact_GEF_p /kinetics/Ras_g/dephosph_inact_GEF_p SUBSTRATE n 
addmsg /kinetics/Ras_g/dephosph_inact_GEF_p /kinetics/Ras_g/inact_GEF_p REAC A B 
addmsg /kinetics/Ras_g/inact_GEF /kinetics/Ras_g/dephosph_inact_GEF_p PRODUCT n 
addmsg /kinetics/Ras_g/dephosph_inact_GEF_p /kinetics/Ras_g/inact_GEF REAC B A
addmsg /kinetics/Ras_g/GTP_Ras /kinetics/Ras_g/Ras_act_craf SUBSTRATE n 
addmsg /kinetics/Ras_g/Ras_act_craf /kinetics/Ras_g/GTP_Ras REAC A B 
addmsg /kinetics/MAPK_g/craf_1_p /kinetics/Ras_g/Ras_act_craf SUBSTRATE n 
addmsg /kinetics/Ras_g/Ras_act_craf /kinetics/MAPK_g/craf_1_p REAC A B 
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras /kinetics/Ras_g/Ras_act_craf PRODUCT n 
addmsg /kinetics/Ras_g/Ras_act_craf /kinetics/MAPK_g/Raf_p_GTP_Ras REAC B A
addmsg /kinetics/PP2B_g/CaNAB_Ca2 /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 /kinetics/PP2B_g/CaNAB_Ca2 REAC A B 
addmsg /kinetics/Ca_g/Ca /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/Ca_g/Ca /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PP2B_g/CaNAB_Ca4 /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 PRODUCT n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2 /kinetics/PP2B_g/CaNAB_Ca4 REAC B A
addmsg /kinetics/PP2B_g/CaNAB /kinetics/PP2B_g/Ca_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB /kinetics/PP2B_g/CaNAB REAC A B 
addmsg /kinetics/Ca_g/Ca /kinetics/PP2B_g/Ca_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/Ca_g/Ca /kinetics/PP2B_g/Ca_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PP2B_g/CaNAB_Ca2 /kinetics/PP2B_g/Ca_bind_CaNAB PRODUCT n 
addmsg /kinetics/PP2B_g/Ca_bind_CaNAB /kinetics/PP2B_g/CaNAB_Ca2 REAC B A
addmsg /kinetics/PP2B_g/CaNAB_Ca4 /kinetics/PP2B_g/CaMCa2_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa2_bind_CaNAB /kinetics/PP2B_g/CaNAB_Ca4 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca2 /kinetics/PP2B_g/CaMCa2_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa2_bind_CaNAB /kinetics/CaM_g/CaM_Ca2 REAC A B 
addmsg /kinetics/PP2B_g/CaMCa2_CaNAB /kinetics/PP2B_g/CaMCa2_bind_CaNAB PRODUCT n 
addmsg /kinetics/PP2B_g/CaMCa2_bind_CaNAB /kinetics/PP2B_g/CaMCa2_CaNAB REAC B A
addmsg /kinetics/PP2B_g/CaNAB_Ca4 /kinetics/PP2B_g/CaMCa3_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa3_bind_CaNAB /kinetics/PP2B_g/CaNAB_Ca4 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca3 /kinetics/PP2B_g/CaMCa3_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa3_bind_CaNAB /kinetics/CaM_g/CaM_Ca3 REAC A B 
addmsg /kinetics/PP2B_g/CaMCa3_CaNAB /kinetics/PP2B_g/CaMCa3_bind_CaNAB PRODUCT n 
addmsg /kinetics/PP2B_g/CaMCa3_bind_CaNAB /kinetics/PP2B_g/CaMCa3_CaNAB REAC B A
addmsg /kinetics/PP2B_g/CaNAB_Ca4 /kinetics/PP2B_g/CaMCa4_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa4_bind_CaNAB /kinetics/PP2B_g/CaNAB_Ca4 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/PP2B_g/CaMCa4_bind_CaNAB SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaMCa4_bind_CaNAB /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/PP2B_g/CaMCa4_CaNAB /kinetics/PP2B_g/CaMCa4_bind_CaNAB PRODUCT n 
addmsg /kinetics/PP2B_g/CaMCa4_bind_CaNAB /kinetics/PP2B_g/CaMCa4_CaNAB REAC B A
addmsg /kinetics/synGAP_g/synGAPp_PDZ /kinetics/synGAP_g/synGAPp_PDZ_dissoc SUBSTRATE n 
addmsg /kinetics/synGAP_g/synGAPp_PDZ_dissoc /kinetics/synGAP_g/synGAPp_PDZ REAC A B 
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/synGAP_g/synGAPp_PDZ_dissoc PRODUCT n 
addmsg /kinetics/synGAP_g/synGAPp_PDZ_dissoc /kinetics/AMPAR_g/PSD95 REAC B A
addmsg /kinetics/synGAP_g/synGAPp /kinetics/synGAP_g/synGAPp_PDZ_dissoc PRODUCT n 
addmsg /kinetics/synGAP_g/synGAPp_PDZ_dissoc /kinetics/synGAP_g/synGAPp REAC B A
addmsg /kinetics/AMPAR_g/PSD95 /kinetics/synGAP_g/synGAP_PDZ_assoc SUBSTRATE n 
addmsg /kinetics/synGAP_g/synGAP_PDZ_assoc /kinetics/AMPAR_g/PSD95 REAC A B 
addmsg /kinetics/synGAP_g/synGAP /kinetics/synGAP_g/synGAP_PDZ_assoc SUBSTRATE n 
addmsg /kinetics/synGAP_g/synGAP_PDZ_assoc /kinetics/synGAP_g/synGAP REAC A B 
addmsg /kinetics/synGAP_g/synGAP_PDZ /kinetics/synGAP_g/synGAP_PDZ_assoc PRODUCT n 
addmsg /kinetics/synGAP_g/synGAP_PDZ_assoc /kinetics/synGAP_g/synGAP_PDZ REAC B A
addmsg /kinetics/synGAP_g/synGAPp /kinetics/synGAP_g/dephosph_synGAP SUBSTRATE n 
addmsg /kinetics/synGAP_g/dephosph_synGAP /kinetics/synGAP_g/synGAPp REAC A B 
addmsg /kinetics/synGAP_g/synGAP /kinetics/synGAP_g/dephosph_synGAP PRODUCT n 
addmsg /kinetics/synGAP_g/dephosph_synGAP /kinetics/synGAP_g/synGAP REAC B A
addmsg /kinetics/Ca_g/IP3R /kinetics/Ca_g/IP3_bind_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/IP3_bind_IP3R /kinetics/Ca_g/IP3R REAC A B 
addmsg /kinetics/PLCb_g/IP3 /kinetics/Ca_g/IP3_bind_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/IP3_bind_IP3R /kinetics/PLCb_g/IP3 REAC A B 
addmsg /kinetics/Ca_g/IP3_IP3R /kinetics/Ca_g/IP3_bind_IP3R PRODUCT n 
addmsg /kinetics/Ca_g/IP3_bind_IP3R /kinetics/Ca_g/IP3_IP3R REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/Ca_g/Ca_act_IP3_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_act_IP3_IP3R /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/Ca_g/IP3_IP3R /kinetics/Ca_g/Ca_act_IP3_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_act_IP3_IP3R /kinetics/Ca_g/IP3_IP3R REAC A B 
addmsg /kinetics/Ca_g/Ca_IP3_IP3R /kinetics/Ca_g/Ca_act_IP3_IP3R PRODUCT n 
addmsg /kinetics/Ca_g/Ca_act_IP3_IP3R /kinetics/Ca_g/Ca_IP3_IP3R REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/Ca_g/Ca_inact_IP3_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_inact_IP3_IP3R /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/Ca_g/Ca_IP3_IP3R /kinetics/Ca_g/Ca_inact_IP3_IP3R SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_inact_IP3_IP3R /kinetics/Ca_g/Ca_IP3_IP3R REAC A B 
addmsg /kinetics/Ca_g/inh_IP3R /kinetics/Ca_g/Ca_inact_IP3_IP3R PRODUCT n 
addmsg /kinetics/Ca_g/Ca_inact_IP3_IP3R /kinetics/Ca_g/inh_IP3R REAC B A
addmsg /kinetics/Ca_g/aVGCC /kinetics/Ca_g/VGCC_inact SUBSTRATE n 
addmsg /kinetics/Ca_g/VGCC_inact /kinetics/Ca_g/aVGCC REAC A B 
addmsg /kinetics/Ca_g/VGCC /kinetics/Ca_g/VGCC_inact PRODUCT n 
addmsg /kinetics/Ca_g/VGCC_inact /kinetics/Ca_g/VGCC REAC B A
addmsg /kinetics/Ca_g/Mirror_Ca_IP3_IP3R /kinetics/Ca_g/IP3Ract SUBSTRATE n 
addmsg /kinetics/Ca_g/IP3Ract /kinetics/Ca_g/Mirror_Ca_IP3_IP3R REAC A B 
addmsg /kinetics/Ca_g/Mirror_Ca_IP3_IP3R /kinetics/Ca_g/IP3Ract SUBSTRATE n 
addmsg /kinetics/Ca_g/IP3Ract /kinetics/Ca_g/Mirror_Ca_IP3_IP3R REAC A B 
addmsg /kinetics/Ca_g/Mirror_Ca_IP3_IP3R /kinetics/Ca_g/IP3Ract SUBSTRATE n 
addmsg /kinetics/Ca_g/IP3Ract /kinetics/Ca_g/Mirror_Ca_IP3_IP3R REAC A B 
addmsg /kinetics/Ca_g/aIP3R /kinetics/Ca_g/IP3Ract PRODUCT n 
addmsg /kinetics/Ca_g/IP3Ract /kinetics/Ca_g/aIP3R REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/inactivate_cap_Ca SUBSTRATE n 
addmsg /kinetics/Ca_g/inactivate_cap_Ca /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/inactivate_cap_Ca SUBSTRATE n 
addmsg /kinetics/Ca_g/inactivate_cap_Ca /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Orai1_open /kinetics/Ca_g/inactivate_cap_Ca SUBSTRATE n 
addmsg /kinetics/Ca_g/inactivate_cap_Ca /kinetics/Ca_g/Orai1_open REAC A B 
addmsg /kinetics/Ca_g/Orai1_close /kinetics/Ca_g/inactivate_cap_Ca PRODUCT n 
addmsg /kinetics/Ca_g/inactivate_cap_Ca /kinetics/Ca_g/Orai1_close REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Calsequestrin /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Calsequestrin REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca5 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS5 /kinetics/Ca_g/Buffer_Ca5 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca5 /kinetics/Ca_g/Ca_CalS5 REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/CaM_g/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca3_bind_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca3 /kinetics/CaM_g/CaM_Ca3_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca3_bind_Ca /kinetics/CaM_g/CaM_Ca3 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/CaM_g/CaM_Ca3_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_g/CaM_Ca3_bind_Ca /kinetics/CaM_g/CaM_Ca4 REAC B A
addmsg /kinetics/CaM_g/CaM /kinetics/CaM_g/neurogranin_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaM_g/neurogranin_bind_CaM /kinetics/CaM_g/CaM REAC A B 
addmsg /kinetics/CaM_g/neurogranin /kinetics/CaM_g/neurogranin_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaM_g/neurogranin_bind_CaM /kinetics/CaM_g/neurogranin REAC A B 
addmsg /kinetics/CaM_g/neurogranin_CaM /kinetics/CaM_g/neurogranin_bind_CaM PRODUCT n 
addmsg /kinetics/CaM_g/neurogranin_bind_CaM /kinetics/CaM_g/neurogranin_CaM REAC B A
addmsg /kinetics/CaM_g/neurogranin_p /kinetics/CaM_g/ngp_deph SUBSTRATE n 
addmsg /kinetics/CaM_g/ngp_deph /kinetics/CaM_g/neurogranin_p REAC A B 
addmsg /kinetics/CaM_g/neurogranin /kinetics/CaM_g/ngp_deph PRODUCT n 
addmsg /kinetics/CaM_g/ngp_deph /kinetics/CaM_g/neurogranin REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/CaM_g/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_bind_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/CaM_g/CaM /kinetics/CaM_g/CaM_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_bind_Ca /kinetics/CaM_g/CaM REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca /kinetics/CaM_g/CaM_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_g/CaM_bind_Ca /kinetics/CaM_g/CaM_Ca REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/CaM_g/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca2_bind_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca2 /kinetics/CaM_g/CaM_Ca2_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca2_bind_Ca /kinetics/CaM_g/CaM_Ca2 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca3 /kinetics/CaM_g/CaM_Ca2_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_g/CaM_Ca2_bind_Ca /kinetics/CaM_g/CaM_Ca3 REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/CaM_g/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca_bind_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca /kinetics/CaM_g/CaM_Ca_bind_Ca SUBSTRATE n 
addmsg /kinetics/CaM_g/CaM_Ca_bind_Ca /kinetics/CaM_g/CaM_Ca REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca2 /kinetics/CaM_g/CaM_Ca_bind_Ca PRODUCT n 
addmsg /kinetics/CaM_g/CaM_Ca_bind_Ca /kinetics/CaM_g/CaM_Ca2 REAC B A
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/CaM_g/W7_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaM_g/W7_bind_CaM /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/CaM_g/W7 /kinetics/CaM_g/W7_bind_CaM SUBSTRATE n 
addmsg /kinetics/CaM_g/W7_bind_CaM /kinetics/CaM_g/W7 REAC A B 
addmsg /kinetics/CaM_g/Blocked_CaM /kinetics/CaM_g/W7_bind_CaM PRODUCT n 
addmsg /kinetics/CaM_g/W7_bind_CaM /kinetics/CaM_g/Blocked_CaM REAC B A
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/OA_inhib_PP2A SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/OA_inhib_PP2A /kinetics/Phosphatase_g/PP2A REAC A B 
addmsg /kinetics/Phosphatase_g/Okadaic_Acid /kinetics/Phosphatase_g/OA_inhib_PP2A SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/OA_inhib_PP2A /kinetics/Phosphatase_g/Okadaic_Acid REAC A B 
addmsg /kinetics/Phosphatase_g/Blocked_PP2A /kinetics/Phosphatase_g/OA_inhib_PP2A PRODUCT n 
addmsg /kinetics/Phosphatase_g/OA_inhib_PP2A /kinetics/Phosphatase_g/Blocked_PP2A REAC B A
addmsg /kinetics/PI3K_g/PI3K /kinetics/PI3K_g/PI3K_act SUBSTRATE n 
addmsg /kinetics/PI3K_g/PI3K_act /kinetics/PI3K_g/PI3K REAC A B 
addmsg /kinetics/Sos_g/SHCp_Grb2_Gab1_clx /kinetics/PI3K_g/PI3K_act SUBSTRATE n 
addmsg /kinetics/PI3K_g/PI3K_act /kinetics/Sos_g/SHCp_Grb2_Gab1_clx REAC A B 
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx /kinetics/PI3K_g/PI3K_act PRODUCT n 
addmsg /kinetics/PI3K_g/PI3K_act /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx REAC B A
addmsg /kinetics/Ras_g/GTP_Ras /kinetics/PI3K_g/PI3K_bind_Ras_GTP SUBSTRATE n 
addmsg /kinetics/PI3K_g/PI3K_bind_Ras_GTP /kinetics/Ras_g/GTP_Ras REAC A B 
addmsg /kinetics/PI3K_g/PI3K /kinetics/PI3K_g/PI3K_bind_Ras_GTP SUBSTRATE n 
addmsg /kinetics/PI3K_g/PI3K_bind_Ras_GTP /kinetics/PI3K_g/PI3K REAC A B 
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K /kinetics/PI3K_g/PI3K_bind_Ras_GTP PRODUCT n 
addmsg /kinetics/PI3K_g/PI3K_bind_Ras_GTP /kinetics/PI3K_g/Ras_GTP_PI3K REAC B A
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K /kinetics/PI3K_g/LY294002_bind_PI3K SUBSTRATE n 
addmsg /kinetics/PI3K_g/LY294002_bind_PI3K /kinetics/PI3K_g/Ras_GTP_PI3K REAC A B 
addmsg /kinetics/PI3K_g/LY294002 /kinetics/PI3K_g/LY294002_bind_PI3K SUBSTRATE n 
addmsg /kinetics/PI3K_g/LY294002_bind_PI3K /kinetics/PI3K_g/LY294002 REAC A B 
addmsg /kinetics/PI3K_g/LY294002_block_PI3K /kinetics/PI3K_g/LY294002_bind_PI3K PRODUCT n 
addmsg /kinetics/PI3K_g/LY294002_bind_PI3K /kinetics/PI3K_g/LY294002_block_PI3K REAC B A
addmsg /kinetics/PI3K_g/PI3K /kinetics/PI3K_g/Wortmannin_bind_PI3K SUBSTRATE n 
addmsg /kinetics/PI3K_g/Wortmannin_bind_PI3K /kinetics/PI3K_g/PI3K REAC A B 
addmsg /kinetics/PI3K_g/Wortmannin /kinetics/PI3K_g/Wortmannin_bind_PI3K SUBSTRATE n 
addmsg /kinetics/PI3K_g/Wortmannin_bind_PI3K /kinetics/PI3K_g/Wortmannin REAC A B 
addmsg /kinetics/PI3K_g/Wortmannin_block_PI3K /kinetics/PI3K_g/Wortmannin_bind_PI3K PRODUCT n 
addmsg /kinetics/PI3K_g/Wortmannin_bind_PI3K /kinetics/PI3K_g/Wortmannin_block_PI3K REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLCb_g/Act_PLC_Ca SUBSTRATE n 
addmsg /kinetics/PLCb_g/Act_PLC_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLCb_g/PLCb /kinetics/PLCb_g/Act_PLC_Ca SUBSTRATE n 
addmsg /kinetics/PLCb_g/Act_PLC_Ca /kinetics/PLCb_g/PLCb REAC A B 
addmsg /kinetics/PLCb_g/PLC_Ca /kinetics/PLCb_g/Act_PLC_Ca PRODUCT n 
addmsg /kinetics/PLCb_g/Act_PLC_Ca /kinetics/PLCb_g/PLC_Ca REAC B A
addmsg /kinetics/PLCb_g/IP3 /kinetics/PLCb_g/Degrade_IP3 SUBSTRATE n 
addmsg /kinetics/PLCb_g/Degrade_IP3 /kinetics/PLCb_g/IP3 REAC A B 
addmsg /kinetics/PLCb_g/Inositol /kinetics/PLCb_g/Degrade_IP3 PRODUCT n 
addmsg /kinetics/PLCb_g/Degrade_IP3 /kinetics/PLCb_g/Inositol REAC B A
addmsg /kinetics/PLCb_g/DAG /kinetics/PLCb_g/Degrade_DAG SUBSTRATE n 
addmsg /kinetics/PLCb_g/Degrade_DAG /kinetics/PLCb_g/DAG REAC A B 
addmsg /kinetics/PLCb_g/PC /kinetics/PLCb_g/Degrade_DAG PRODUCT n 
addmsg /kinetics/PLCb_g/Degrade_DAG /kinetics/PLCb_g/PC REAC B A
addmsg /kinetics/PLCb_g/PLC_Ca /kinetics/PLCb_g/Act_PLC_by_Gq SUBSTRATE n 
addmsg /kinetics/PLCb_g/Act_PLC_by_Gq /kinetics/PLCb_g/PLC_Ca REAC A B 
addmsg /kinetics/Gq_g/G_pGTP /kinetics/PLCb_g/Act_PLC_by_Gq SUBSTRATE n 
addmsg /kinetics/PLCb_g/Act_PLC_by_Gq /kinetics/Gq_g/G_pGTP REAC A B 
addmsg /kinetics/PLCb_g/PLC_Ca_Gq /kinetics/PLCb_g/Act_PLC_by_Gq PRODUCT n 
addmsg /kinetics/PLCb_g/Act_PLC_by_Gq /kinetics/PLCb_g/PLC_Ca_Gq REAC B A
addmsg /kinetics/PLCb_g/PLC_Ca_Gq /kinetics/PLCb_g/Inact_PLC_Gq SUBSTRATE n 
addmsg /kinetics/PLCb_g/Inact_PLC_Gq /kinetics/PLCb_g/PLC_Ca_Gq REAC A B 
addmsg /kinetics/PLCb_g/PLC_Ca /kinetics/PLCb_g/Inact_PLC_Gq PRODUCT n 
addmsg /kinetics/PLCb_g/Inact_PLC_Gq /kinetics/PLCb_g/PLC_Ca REAC B A
addmsg /kinetics/Gq_g/G_pGDP /kinetics/PLCb_g/Inact_PLC_Gq PRODUCT n 
addmsg /kinetics/PLCb_g/Inact_PLC_Gq /kinetics/Gq_g/G_pGDP REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLCb_g/PLC_Gq_bind_Ca SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_Gq_bind_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLCb_g/PLC_Gq /kinetics/PLCb_g/PLC_Gq_bind_Ca SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_Gq_bind_Ca /kinetics/PLCb_g/PLC_Gq REAC A B 
addmsg /kinetics/PLCb_g/PLC_Ca_Gq /kinetics/PLCb_g/PLC_Gq_bind_Ca PRODUCT n 
addmsg /kinetics/PLCb_g/PLC_Gq_bind_Ca /kinetics/PLCb_g/PLC_Ca_Gq REAC B A
addmsg /kinetics/PLCb_g/PLCb /kinetics/PLCb_g/PLC_bind_Gq SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_bind_Gq /kinetics/PLCb_g/PLCb REAC A B 
addmsg /kinetics/Gq_g/G_pGTP /kinetics/PLCb_g/PLC_bind_Gq SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_bind_Gq /kinetics/Gq_g/G_pGTP REAC A B 
addmsg /kinetics/PLCb_g/PLC_Gq /kinetics/PLCb_g/PLC_bind_Gq PRODUCT n 
addmsg /kinetics/PLCb_g/PLC_bind_Gq /kinetics/PLCb_g/PLC_Gq REAC B A
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/AC_g/CaM_bind_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/CaM_bind_AC1 /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/AC_g/AC1 /kinetics/AC_g/CaM_bind_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/CaM_bind_AC1 /kinetics/AC_g/AC1 REAC A B 
addmsg /kinetics/AC_g/AC1_CaM /kinetics/AC_g/CaM_bind_AC1 PRODUCT n 
addmsg /kinetics/AC_g/CaM_bind_AC1 /kinetics/AC_g/AC1_CaM REAC B A
addmsg /kinetics/AC_g/AC2p /kinetics/AC_g/dephosph_AC2 SUBSTRATE n 
addmsg /kinetics/AC_g/dephosph_AC2 /kinetics/AC_g/AC2p REAC A B 
addmsg /kinetics/AC_g/AC2 /kinetics/AC_g/dephosph_AC2 PRODUCT n 
addmsg /kinetics/AC_g/dephosph_AC2 /kinetics/AC_g/AC2 REAC B A
addmsg /kinetics/AC_g/cAMP_PDEp /kinetics/AC_g/dephosph_PDE SUBSTRATE n 
addmsg /kinetics/AC_g/dephosph_PDE /kinetics/AC_g/cAMP_PDEp REAC A B 
addmsg /kinetics/AC_g/cAMP_PDE /kinetics/AC_g/dephosph_PDE PRODUCT n 
addmsg /kinetics/AC_g/dephosph_PDE /kinetics/AC_g/cAMP_PDE REAC B A
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/AC_g/CaM_bind_PDE1 SUBSTRATE n 
addmsg /kinetics/AC_g/CaM_bind_PDE1 /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/AC_g/PDE1 /kinetics/AC_g/CaM_bind_PDE1 SUBSTRATE n 
addmsg /kinetics/AC_g/CaM_bind_PDE1 /kinetics/AC_g/PDE1 REAC A B 
addmsg /kinetics/AC_g/CaM_PDE1 /kinetics/AC_g/CaM_bind_PDE1 PRODUCT n 
addmsg /kinetics/AC_g/CaM_bind_PDE1 /kinetics/AC_g/CaM_PDE1 REAC B A
addmsg /kinetics/AC_g/AC2 /kinetics/AC_g/Gs_bind_AC2 SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC2 /kinetics/AC_g/AC2 REAC A B 
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/AC_g/Gs_bind_AC2 SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC2 /kinetics/Gs_g/Gs_alpha_GTP REAC A B 
addmsg /kinetics/AC_g/AC2_Gs /kinetics/AC_g/Gs_bind_AC2 PRODUCT n 
addmsg /kinetics/AC_g/Gs_bind_AC2 /kinetics/AC_g/AC2_Gs REAC B A
addmsg /kinetics/AC_g/AC1 /kinetics/AC_g/Gs_bind_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC1 /kinetics/AC_g/AC1 REAC A B 
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/AC_g/Gs_bind_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC1 /kinetics/Gs_g/Gs_alpha_GTP REAC A B 
addmsg /kinetics/AC_g/AC1_Gs /kinetics/AC_g/Gs_bind_AC1 PRODUCT n 
addmsg /kinetics/AC_g/Gs_bind_AC1 /kinetics/AC_g/AC1_Gs REAC B A
addmsg /kinetics/AC_g/AC2p /kinetics/AC_g/Gs_bind_AC2p SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC2p /kinetics/AC_g/AC2p REAC A B 
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/AC_g/Gs_bind_AC2p SUBSTRATE n 
addmsg /kinetics/AC_g/Gs_bind_AC2p /kinetics/Gs_g/Gs_alpha_GTP REAC A B 
addmsg /kinetics/AC_g/AC2p_Gs /kinetics/AC_g/Gs_bind_AC2p PRODUCT n 
addmsg /kinetics/AC_g/Gs_bind_AC2p /kinetics/AC_g/AC2p_Gs REAC B A
addmsg /kinetics/Ligands_g/Forskolin /kinetics/AC_g/Forskolin_act_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/Forskolin_act_AC1 /kinetics/Ligands_g/Forskolin REAC A B 
addmsg /kinetics/AC_g/AC1_Gs /kinetics/AC_g/Forskolin_act_AC1 SUBSTRATE n 
addmsg /kinetics/AC_g/Forskolin_act_AC1 /kinetics/AC_g/AC1_Gs REAC A B 
addmsg /kinetics/AC_g/AC1_Gs_Fsk /kinetics/AC_g/Forskolin_act_AC1 PRODUCT n 
addmsg /kinetics/AC_g/Forskolin_act_AC1 /kinetics/AC_g/AC1_Gs_Fsk REAC B A
addmsg /kinetics/Ligands_g/Forskolin /kinetics/AC_g/Forskolin_act_AC2 SUBSTRATE n 
addmsg /kinetics/AC_g/Forskolin_act_AC2 /kinetics/Ligands_g/Forskolin REAC A B 
addmsg /kinetics/AC_g/AC2_Gs /kinetics/AC_g/Forskolin_act_AC2 SUBSTRATE n 
addmsg /kinetics/AC_g/Forskolin_act_AC2 /kinetics/AC_g/AC2_Gs REAC A B 
addmsg /kinetics/AC_g/AC2_Gs_Fsk /kinetics/AC_g/Forskolin_act_AC2 PRODUCT n 
addmsg /kinetics/AC_g/Forskolin_act_AC2 /kinetics/AC_g/AC2_Gs_Fsk REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PKC_g/PKC_act_by_Ca SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PKC_g/PKC_cytosolic /kinetics/PKC_g/PKC_act_by_Ca SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca /kinetics/PKC_g/PKC_cytosolic REAC A B 
addmsg /kinetics/PKC_g/PKC_Ca /kinetics/PKC_g/PKC_act_by_Ca PRODUCT n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca /kinetics/PKC_g/PKC_Ca REAC B A
addmsg /kinetics/PLCb_g/DAG /kinetics/PKC_g/PKC_act_by_DAG SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_DAG /kinetics/PLCb_g/DAG REAC A B 
addmsg /kinetics/PKC_g/PKC_Ca /kinetics/PKC_g/PKC_act_by_DAG SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_DAG /kinetics/PKC_g/PKC_Ca REAC A B 
addmsg /kinetics/PKC_g/PKC_Ca_DAG /kinetics/PKC_g/PKC_act_by_DAG PRODUCT n 
addmsg /kinetics/PKC_g/PKC_act_by_DAG /kinetics/PKC_g/PKC_Ca_DAG REAC B A
addmsg /kinetics/PKC_g/PKC_Ca /kinetics/PKC_g/PKC_Ca_to_memb SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_Ca_to_memb /kinetics/PKC_g/PKC_Ca REAC A B 
addmsg /kinetics/PKC_g/PKC_Ca_memb_p /kinetics/PKC_g/PKC_Ca_to_memb PRODUCT n 
addmsg /kinetics/PKC_g/PKC_Ca_to_memb /kinetics/PKC_g/PKC_Ca_memb_p REAC B A
addmsg /kinetics/PKC_g/PKC_Ca_DAG /kinetics/PKC_g/PKC_DAG_to_memb SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_DAG_to_memb /kinetics/PKC_g/PKC_Ca_DAG REAC A B 
addmsg /kinetics/PKC_g/PKC_DAG_memb_p /kinetics/PKC_g/PKC_DAG_to_memb PRODUCT n 
addmsg /kinetics/PKC_g/PKC_DAG_to_memb /kinetics/PKC_g/PKC_DAG_memb_p REAC B A
addmsg /kinetics/PKC_g/PKC_Ca /kinetics/PKC_g/PKC_act_by_Ca_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca_AA /kinetics/PKC_g/PKC_Ca REAC A B 
addmsg /kinetics/PLA2_g/Arachidonic_Acid /kinetics/PKC_g/PKC_act_by_Ca_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca_AA /kinetics/PLA2_g/Arachidonic_Acid REAC A B 
addmsg /kinetics/PKC_g/PKC_Ca_AA_p /kinetics/PKC_g/PKC_act_by_Ca_AA PRODUCT n 
addmsg /kinetics/PKC_g/PKC_act_by_Ca_AA /kinetics/PKC_g/PKC_Ca_AA_p REAC B A
addmsg /kinetics/PKC_g/PKC_DAG_AA /kinetics/PKC_g/PKC_act_by_DAG_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_DAG_AA /kinetics/PKC_g/PKC_DAG_AA REAC A B 
addmsg /kinetics/PKC_g/PKC_DAG_AA_p /kinetics/PKC_g/PKC_act_by_DAG_AA PRODUCT n 
addmsg /kinetics/PKC_g/PKC_act_by_DAG_AA /kinetics/PKC_g/PKC_DAG_AA_p REAC B A
addmsg /kinetics/PKC_g/PKC_cytosolic /kinetics/PKC_g/PKC_basal_act SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_basal_act /kinetics/PKC_g/PKC_cytosolic REAC A B 
addmsg /kinetics/PKC_g/PKC_basal_p /kinetics/PKC_g/PKC_basal_act PRODUCT n 
addmsg /kinetics/PKC_g/PKC_basal_act /kinetics/PKC_g/PKC_basal_p REAC B A
addmsg /kinetics/PKC_g/PKC_cytosolic /kinetics/PKC_g/PKC_act_by_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_AA /kinetics/PKC_g/PKC_cytosolic REAC A B 
addmsg /kinetics/PLA2_g/Arachidonic_Acid /kinetics/PKC_g/PKC_act_by_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_act_by_AA /kinetics/PLA2_g/Arachidonic_Acid REAC A B 
addmsg /kinetics/PKC_g/PKC_AA_p /kinetics/PKC_g/PKC_act_by_AA PRODUCT n 
addmsg /kinetics/PKC_g/PKC_act_by_AA /kinetics/PKC_g/PKC_AA_p REAC B A
addmsg /kinetics/PLCb_g/DAG /kinetics/PKC_g/PKC_n_DAG SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_n_DAG /kinetics/PLCb_g/DAG REAC A B 
addmsg /kinetics/PKC_g/PKC_cytosolic /kinetics/PKC_g/PKC_n_DAG SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_n_DAG /kinetics/PKC_g/PKC_cytosolic REAC A B 
addmsg /kinetics/PKC_g/PKC_DAG /kinetics/PKC_g/PKC_n_DAG PRODUCT n 
addmsg /kinetics/PKC_g/PKC_n_DAG /kinetics/PKC_g/PKC_DAG REAC B A
addmsg /kinetics/PKC_g/PKC_DAG /kinetics/PKC_g/PKC_n_DAG_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_n_DAG_AA /kinetics/PKC_g/PKC_DAG REAC A B 
addmsg /kinetics/PLA2_g/Arachidonic_Acid /kinetics/PKC_g/PKC_n_DAG_AA SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_n_DAG_AA /kinetics/PLA2_g/Arachidonic_Acid REAC A B 
addmsg /kinetics/PKC_g/PKC_DAG_AA /kinetics/PKC_g/PKC_n_DAG_AA PRODUCT n 
addmsg /kinetics/PKC_g/PKC_n_DAG_AA /kinetics/PKC_g/PKC_DAG_AA REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLA2_g/PLA2_Ca_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_Ca_act /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLA2_g/PLA2_cytosolic /kinetics/PLA2_g/PLA2_Ca_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_Ca_act /kinetics/PLA2_g/PLA2_cytosolic REAC A B 
addmsg /kinetics/PLA2_g/PLA2_Ca_p /kinetics/PLA2_g/PLA2_Ca_act PRODUCT n 
addmsg /kinetics/PLA2_g/PLA2_Ca_act /kinetics/PLA2_g/PLA2_Ca_p REAC B A
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLA2_g/PIP2_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_PLA2_act /kinetics/PLCb_g/PIP2 REAC A B 
addmsg /kinetics/PLA2_g/PLA2_cytosolic /kinetics/PLA2_g/PIP2_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_PLA2_act /kinetics/PLA2_g/PLA2_cytosolic REAC A B 
addmsg /kinetics/PLA2_g/PIP2_PLA2_p /kinetics/PLA2_g/PIP2_PLA2_act PRODUCT n 
addmsg /kinetics/PLA2_g/PIP2_PLA2_act /kinetics/PLA2_g/PIP2_PLA2_p REAC B A
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLA2_g/PIP2_Ca_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_act /kinetics/PLCb_g/PIP2 REAC A B 
addmsg /kinetics/PLA2_g/PLA2_Ca_p /kinetics/PLA2_g/PIP2_Ca_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_act /kinetics/PLA2_g/PLA2_Ca_p REAC A B 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_p /kinetics/PLA2_g/PIP2_Ca_PLA2_act PRODUCT n 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_act /kinetics/PLA2_g/PIP2_Ca_PLA2_p REAC B A
addmsg /kinetics/PLCb_g/DAG /kinetics/PLA2_g/DAG_Ca_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_act /kinetics/PLCb_g/DAG REAC A B 
addmsg /kinetics/PLA2_g/PLA2_Ca_p /kinetics/PLA2_g/DAG_Ca_PLA2_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_act /kinetics/PLA2_g/PLA2_Ca_p REAC A B 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_p /kinetics/PLA2_g/DAG_Ca_PLA2_act PRODUCT n 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_act /kinetics/PLA2_g/DAG_Ca_PLA2_p REAC B A
addmsg /kinetics/PLA2_g/Arachidonic_Acid /kinetics/PLA2_g/Degrade_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/Degrade_AA /kinetics/PLA2_g/Arachidonic_Acid REAC A B 
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/Degrade_AA PRODUCT n 
addmsg /kinetics/PLA2_g/Degrade_AA /kinetics/PLA2_g/APC REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLA2_g/PLA2_p_Ca_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_p_Ca_act /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLA2_g/PLA2_p /kinetics/PLA2_g/PLA2_p_Ca_act SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_p_Ca_act /kinetics/PLA2_g/PLA2_p REAC A B 
addmsg /kinetics/PLA2_g/PLA2_p_Ca /kinetics/PLA2_g/PLA2_p_Ca_act PRODUCT n 
addmsg /kinetics/PLA2_g/PLA2_p_Ca_act /kinetics/PLA2_g/PLA2_p_Ca REAC B A
addmsg /kinetics/PLA2_g/PLA2_p /kinetics/PLA2_g/dephosphorylate_PLA2_p SUBSTRATE n 
addmsg /kinetics/PLA2_g/dephosphorylate_PLA2_p /kinetics/PLA2_g/PLA2_p REAC A B 
addmsg /kinetics/PLA2_g/PLA2_cytosolic /kinetics/PLA2_g/dephosphorylate_PLA2_p PRODUCT n 
addmsg /kinetics/PLA2_g/dephosphorylate_PLA2_p /kinetics/PLA2_g/PLA2_cytosolic REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/Gq_g/Basal_Act_Gq SUBSTRATE n 
addmsg /kinetics/Gq_g/Basal_Act_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/Gq_g/Basal_Act_Gq PRODUCT n 
addmsg /kinetics/Gq_g/Basal_Act_Gq /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/Gq_g/Basal_Act_Gq PRODUCT n 
addmsg /kinetics/Gq_g/Basal_Act_Gq /kinetics/Gq_g/G_pGTP REAC B A
addmsg /kinetics/Gq_g/BetaGamma /kinetics/Gq_g/Trimerize_G SUBSTRATE n 
addmsg /kinetics/Gq_g/Trimerize_G /kinetics/Gq_g/BetaGamma REAC A B 
addmsg /kinetics/Gq_g/G_pGDP /kinetics/Gq_g/Trimerize_G SUBSTRATE n 
addmsg /kinetics/Gq_g/Trimerize_G /kinetics/Gq_g/G_pGDP REAC A B 
addmsg /kinetics/Gq_g/G_GDP /kinetics/Gq_g/Trimerize_G PRODUCT n 
addmsg /kinetics/Gq_g/Trimerize_G /kinetics/Gq_g/G_GDP REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/Gq_g/Inact_Gq SUBSTRATE n 
addmsg /kinetics/Gq_g/Inact_Gq /kinetics/Gq_g/G_pGTP REAC A B 
addmsg /kinetics/Gq_g/G_pGDP /kinetics/Gq_g/Inact_Gq PRODUCT n 
addmsg /kinetics/Gq_g/Inact_Gq /kinetics/Gq_g/G_pGDP REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq /kinetics/DHPG_mGluR_g/Rec_DHPG REAC A B 
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Rec_bind_Gq /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq REAC B A
addmsg /kinetics/Ligands_g/DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR /kinetics/Ligands_g/DHPG REAC A B 
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR /kinetics/mGluR5_g/mGluR5 REAC A B 
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_mGluR /kinetics/DHPG_mGluR_g/Rec_DHPG REAC B A
addmsg /kinetics/Ligands_g/DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq /kinetics/Ligands_g/DHPG REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Gq /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq /kinetics/mGluR5_g/Rec_Gq REAC A B 
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecGq /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq REAC B A
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq /kinetics/Gq_g/G_pGTP REAC B A
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_Activate_Gq /kinetics/DHPG_mGluR_g/Rec_DHPG REAC B A
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR /kinetics/DHPG_mGluR_g/Rec_DHPG REAC A B 
addmsg /kinetics/mGluR5_g/MPEP /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR /kinetics/mGluR5_g/MPEP REAC A B 
addmsg /kinetics/DHPG_mGluR_g/DHPGR_MPEP /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/MPEP_bind_DHPGR /kinetics/DHPG_mGluR_g/DHPGR_MPEP REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq /kinetics/DHPG_mGluR_g/RecpS870_DHPG REAC A B 
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_RecpS870_bind_Gq /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq REAC B A
addmsg /kinetics/Ligands_g/DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 /kinetics/Ligands_g/DHPG REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870 /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 /kinetics/mGluR5_g/RecpS870 REAC A B 
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870 /kinetics/DHPG_mGluR_g/RecpS870_DHPG REAC B A
addmsg /kinetics/Ligands_g/DHPG /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq /kinetics/Ligands_g/DHPG REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Gq /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq /kinetics/mGluR5_g/RecpS870_Gq REAC A B 
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPG_bind_RecpS870_Gq /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq REAC B A
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq /kinetics/DHPG_mGluR_g/DHPGRpS870G_act SUBSTRATE n 
addmsg /kinetics/DHPG_mGluR_g/DHPGRpS870G_act /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/DHPG_mGluR_g/DHPGRpS870G_act PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPGRpS870G_act /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/DHPG_mGluR_g/DHPGRpS870G_act PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPGRpS870G_act /kinetics/Gq_g/G_pGTP REAC B A
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG /kinetics/DHPG_mGluR_g/DHPGRpS870G_act PRODUCT n 
addmsg /kinetics/DHPG_mGluR_g/DHPGRpS870G_act /kinetics/DHPG_mGluR_g/RecpS870_DHPG REAC B A
addmsg /kinetics/Gs_g/Gs_GDP /kinetics/Gs_g/basalAct_Gs SUBSTRATE n 
addmsg /kinetics/Gs_g/basalAct_Gs /kinetics/Gs_g/Gs_GDP REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/Gs_g/basalAct_Gs PRODUCT n 
addmsg /kinetics/Gs_g/basalAct_Gs /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/Gs_g/basalAct_Gs PRODUCT n 
addmsg /kinetics/Gs_g/basalAct_Gs /kinetics/Gs_g/Gs_alpha_GTP REAC B A
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/Gs_g/Inact_Gs SUBSTRATE n 
addmsg /kinetics/Gs_g/Inact_Gs /kinetics/Gs_g/Gs_alpha_GTP REAC A B 
addmsg /kinetics/Gs_g/Gs_alpha_GDP /kinetics/Gs_g/Inact_Gs PRODUCT n 
addmsg /kinetics/Gs_g/Inact_Gs /kinetics/Gs_g/Gs_alpha_GDP REAC B A
addmsg /kinetics/Gq_g/BetaGamma /kinetics/Gs_g/Trimerize_Gs SUBSTRATE n 
addmsg /kinetics/Gs_g/Trimerize_Gs /kinetics/Gq_g/BetaGamma REAC A B 
addmsg /kinetics/Gs_g/Gs_alpha_GDP /kinetics/Gs_g/Trimerize_Gs SUBSTRATE n 
addmsg /kinetics/Gs_g/Trimerize_Gs /kinetics/Gs_g/Gs_alpha_GDP REAC A B 
addmsg /kinetics/Gs_g/Gs_GDP /kinetics/Gs_g/Trimerize_Gs PRODUCT n 
addmsg /kinetics/Gs_g/Trimerize_Gs /kinetics/Gs_g/Gs_GDP REAC B A
addmsg /kinetics/b2AR_g/Iso_RGsGDP /kinetics/b2AR_g/Iso_Act_Gs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Iso_Act_Gs /kinetics/b2AR_g/Iso_RGsGDP REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/b2AR_g/Iso_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Iso_Act_Gs /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/b2AR_g/Iso_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Iso_Act_Gs /kinetics/Gs_g/Gs_alpha_GTP REAC B A
addmsg /kinetics/b2AR_g/Iso_b2AR /kinetics/b2AR_g/Iso_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Iso_Act_Gs /kinetics/b2AR_g/Iso_b2AR REAC B A
addmsg /kinetics/b2AR_g/Epi_RGsGDP /kinetics/b2AR_g/Epi_Act_Gs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Epi_Act_Gs /kinetics/b2AR_g/Epi_RGsGDP REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/b2AR_g/Epi_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Epi_Act_Gs /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gs_g/Gs_alpha_GTP /kinetics/b2AR_g/Epi_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Epi_Act_Gs /kinetics/Gs_g/Gs_alpha_GTP REAC B A
addmsg /kinetics/b2AR_g/Epi_b2AR /kinetics/b2AR_g/Epi_Act_Gs PRODUCT n 
addmsg /kinetics/b2AR_g/Epi_Act_Gs /kinetics/b2AR_g/Epi_b2AR REAC B A
addmsg /kinetics/Ligands_g/Epinephrine /kinetics/b2AR_g/Epi_bind_b2AR SUBSTRATE n 
addmsg /kinetics/b2AR_g/Epi_bind_b2AR /kinetics/Ligands_g/Epinephrine REAC A B 
addmsg /kinetics/b2AR_g/b2AR /kinetics/b2AR_g/Epi_bind_b2AR SUBSTRATE n 
addmsg /kinetics/b2AR_g/Epi_bind_b2AR /kinetics/b2AR_g/b2AR REAC A B 
addmsg /kinetics/b2AR_g/Epi_b2AR /kinetics/b2AR_g/Epi_bind_b2AR PRODUCT n 
addmsg /kinetics/b2AR_g/Epi_bind_b2AR /kinetics/b2AR_g/Epi_b2AR REAC B A
addmsg /kinetics/Ligands_g/Isoproterenol /kinetics/b2AR_g/Iso_bind_b2AR SUBSTRATE n 
addmsg /kinetics/b2AR_g/Iso_bind_b2AR /kinetics/Ligands_g/Isoproterenol REAC A B 
addmsg /kinetics/b2AR_g/b2AR /kinetics/b2AR_g/Iso_bind_b2AR SUBSTRATE n 
addmsg /kinetics/b2AR_g/Iso_bind_b2AR /kinetics/b2AR_g/b2AR REAC A B 
addmsg /kinetics/b2AR_g/Iso_b2AR /kinetics/b2AR_g/Iso_bind_b2AR PRODUCT n 
addmsg /kinetics/b2AR_g/Iso_bind_b2AR /kinetics/b2AR_g/Iso_b2AR REAC B A
addmsg /kinetics/Gs_g/Gs_GDP /kinetics/b2AR_g/IsoR_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/IsoR_bind_GsGDP /kinetics/Gs_g/Gs_GDP REAC A B 
addmsg /kinetics/b2AR_g/Iso_b2AR /kinetics/b2AR_g/IsoR_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/IsoR_bind_GsGDP /kinetics/b2AR_g/Iso_b2AR REAC A B 
addmsg /kinetics/b2AR_g/Iso_RGsGDP /kinetics/b2AR_g/IsoR_bind_GsGDP PRODUCT n 
addmsg /kinetics/b2AR_g/IsoR_bind_GsGDP /kinetics/b2AR_g/Iso_RGsGDP REAC B A
addmsg /kinetics/Gs_g/Gs_GDP /kinetics/b2AR_g/R_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/R_bind_GsGDP /kinetics/Gs_g/Gs_GDP REAC A B 
addmsg /kinetics/b2AR_g/b2AR /kinetics/b2AR_g/R_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/R_bind_GsGDP /kinetics/b2AR_g/b2AR REAC A B 
addmsg /kinetics/b2AR_g/b2AR_GsGDP /kinetics/b2AR_g/R_bind_GsGDP PRODUCT n 
addmsg /kinetics/b2AR_g/R_bind_GsGDP /kinetics/b2AR_g/b2AR_GsGDP REAC B A
addmsg /kinetics/Ligands_g/Isoproterenol /kinetics/b2AR_g/Iso_bind_RGs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Iso_bind_RGs /kinetics/Ligands_g/Isoproterenol REAC A B 
addmsg /kinetics/b2AR_g/b2AR_GsGDP /kinetics/b2AR_g/Iso_bind_RGs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Iso_bind_RGs /kinetics/b2AR_g/b2AR_GsGDP REAC A B 
addmsg /kinetics/b2AR_g/Iso_RGsGDP /kinetics/b2AR_g/Iso_bind_RGs PRODUCT n 
addmsg /kinetics/b2AR_g/Iso_bind_RGs /kinetics/b2AR_g/Iso_RGsGDP REAC B A
addmsg /kinetics/Ligands_g/Epinephrine /kinetics/b2AR_g/Epi_bind_RGs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Epi_bind_RGs /kinetics/Ligands_g/Epinephrine REAC A B 
addmsg /kinetics/b2AR_g/b2AR_GsGDP /kinetics/b2AR_g/Epi_bind_RGs SUBSTRATE n 
addmsg /kinetics/b2AR_g/Epi_bind_RGs /kinetics/b2AR_g/b2AR_GsGDP REAC A B 
addmsg /kinetics/b2AR_g/Epi_RGsGDP /kinetics/b2AR_g/Epi_bind_RGs PRODUCT n 
addmsg /kinetics/b2AR_g/Epi_bind_RGs /kinetics/b2AR_g/Epi_RGsGDP REAC B A
addmsg /kinetics/Gs_g/Gs_GDP /kinetics/b2AR_g/EpiR_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/EpiR_bind_GsGDP /kinetics/Gs_g/Gs_GDP REAC A B 
addmsg /kinetics/b2AR_g/Epi_b2AR /kinetics/b2AR_g/EpiR_bind_GsGDP SUBSTRATE n 
addmsg /kinetics/b2AR_g/EpiR_bind_GsGDP /kinetics/b2AR_g/Epi_b2AR REAC A B 
addmsg /kinetics/b2AR_g/Epi_RGsGDP /kinetics/b2AR_g/EpiR_bind_GsGDP PRODUCT n 
addmsg /kinetics/b2AR_g/EpiR_bind_GsGDP /kinetics/b2AR_g/Epi_RGsGDP REAC B A
addmsg /kinetics/b2AR_g/Int_b2AR /kinetics/b2AR_g/b2AR_recycling SUBSTRATE n 
addmsg /kinetics/b2AR_g/b2AR_recycling /kinetics/b2AR_g/Int_b2AR REAC A B 
addmsg /kinetics/b2AR_g/b2AR /kinetics/b2AR_g/b2AR_recycling PRODUCT n 
addmsg /kinetics/b2AR_g/b2AR_recycling /kinetics/b2AR_g/b2AR REAC B A
addmsg /kinetics/MAPK_g/craf_1 /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding SUBSTRATE n 
addmsg /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding /kinetics/MAPK_g/craf_1 REAC A B 
addmsg /kinetics/barr2_g/Int_mGluRpT840_barr2 /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding SUBSTRATE n 
addmsg /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding /kinetics/barr2_g/Int_mGluRpT840_barr2 REAC A B 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding PRODUCT n 
addmsg /kinetics/MAPK_g/mGluR_barr2_Raf_scaffolding /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 REAC B A
addmsg /kinetics/MAPK_g/craf_1 /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding SUBSTRATE n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding /kinetics/MAPK_g/craf_1 REAC A B 
addmsg /kinetics/barr2_g/Int_b2ARp1_barr2 /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding SUBSTRATE n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding /kinetics/barr2_g/Int_b2ARp1_barr2 REAC A B 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1 /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding PRODUCT n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_Raf_scaffolding /kinetics/MAPK_g/Intb2ARp1barr2_craf1 REAC B A
addmsg /kinetics/MAPK_g/U0126 /kinetics/MAPK_g/U0126_bind_MEKpp SUBSTRATE n 
addmsg /kinetics/MAPK_g/U0126_bind_MEKpp /kinetics/MAPK_g/U0126 REAC A B 
addmsg /kinetics/MAPK_g/U0126_block_MEK /kinetics/MAPK_g/U0126_bind_MEKpp PRODUCT n 
addmsg /kinetics/MAPK_g/U0126_bind_MEKpp /kinetics/MAPK_g/U0126_block_MEK REAC B A
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/PD098059_inhib_MEKp SUBSTRATE n 
addmsg /kinetics/MAPK_g/PD098059_inhib_MEKp /kinetics/MAPK_g/MAPKK_p REAC A B 
addmsg /kinetics/MAPK_g/PD098059 /kinetics/MAPK_g/PD098059_inhib_MEKp SUBSTRATE n 
addmsg /kinetics/MAPK_g/PD098059_inhib_MEKp /kinetics/MAPK_g/PD098059 REAC A B 
addmsg /kinetics/MAPK_g/PD098059_Blocked_MEK1 /kinetics/MAPK_g/PD098059_inhib_MEKp PRODUCT n 
addmsg /kinetics/MAPK_g/PD098059_inhib_MEKp /kinetics/MAPK_g/PD098059_Blocked_MEK1 REAC B A
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/U0126_bind_Raf_MEK SUBSTRATE n 
addmsg /kinetics/MAPK_g/U0126_bind_Raf_MEK /kinetics/MAPK_g/MAPKK_p REAC A B 
addmsg /kinetics/MAPK_g/U0126 /kinetics/MAPK_g/U0126_bind_Raf_MEK SUBSTRATE n 
addmsg /kinetics/MAPK_g/U0126_bind_Raf_MEK /kinetics/MAPK_g/U0126 REAC A B 
addmsg /kinetics/MAPK_g/U0126_block_MEK /kinetics/MAPK_g/U0126_bind_Raf_MEK PRODUCT n 
addmsg /kinetics/MAPK_g/U0126_bind_Raf_MEK /kinetics/MAPK_g/U0126_block_MEK REAC B A
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1 /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc SUBSTRATE n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc /kinetics/MAPK_g/Intb2ARp1barr2_craf1 REAC A B 
addmsg /kinetics/b2AR_g/Int_b2ARp1 /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc /kinetics/b2AR_g/Int_b2ARp1 REAC B A
addmsg /kinetics/MAPK_g/craf_1 /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc /kinetics/MAPK_g/craf_1 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/b2ARp1_barr2_craf_dissoc /kinetics/barr2_g/barr2 REAC B A
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 /kinetics/MAPK_g/mGluR_barr2_craf_dissoc SUBSTRATE n 
addmsg /kinetics/MAPK_g/mGluR_barr2_craf_dissoc /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 REAC A B 
addmsg /kinetics/MAPK_g/craf_1 /kinetics/MAPK_g/mGluR_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/mGluR_barr2_craf_dissoc /kinetics/MAPK_g/craf_1 REAC B A
addmsg /kinetics/mGluR5_g/Int_mGluRpT840 /kinetics/MAPK_g/mGluR_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/mGluR_barr2_craf_dissoc /kinetics/mGluR5_g/Int_mGluRpT840 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/MAPK_g/mGluR_barr2_craf_dissoc PRODUCT n 
addmsg /kinetics/MAPK_g/mGluR_barr2_craf_dissoc /kinetics/barr2_g/barr2 REAC B A
addmsg /kinetics/Ligands_g/Glutamate /kinetics/mGluR5_g/RecGq_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecGq_bind_Glu /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Gq /kinetics/mGluR5_g/RecGq_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecGq_bind_Glu /kinetics/mGluR5_g/Rec_Gq REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Glu_Gq /kinetics/mGluR5_g/RecGq_bind_Glu PRODUCT n 
addmsg /kinetics/mGluR5_g/RecGq_bind_Glu /kinetics/mGluR5_g/Rec_Glu_Gq REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/mGluR5_g/RecGlu_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecGlu_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/mGluR5_g/RecGlu_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecGlu_bind_Gq /kinetics/mGluR5_g/Rec_Glu REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Glu_Gq /kinetics/mGluR5_g/RecGlu_bind_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/RecGlu_bind_Gq /kinetics/mGluR5_g/Rec_Glu_Gq REAC B A
addmsg /kinetics/mGluR5_g/Rec_Glu_Gq /kinetics/mGluR5_g/Activate_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/Activate_Gq /kinetics/mGluR5_g/Rec_Glu_Gq REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/mGluR5_g/Activate_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/Activate_Gq /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/mGluR5_g/Activate_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/Activate_Gq /kinetics/Gq_g/G_pGTP REAC B A
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/mGluR5_g/Activate_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/Activate_Gq /kinetics/mGluR5_g/Rec_Glu REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/mGluR5_g/Rec_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/Rec_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/mGluR5_g/Rec_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/Rec_bind_Gq /kinetics/mGluR5_g/mGluR5 REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Gq /kinetics/mGluR5_g/Rec_bind_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/Rec_bind_Gq /kinetics/mGluR5_g/Rec_Gq REAC B A
addmsg /kinetics/Ligands_g/Glutamate /kinetics/mGluR5_g/RecLigandBinding SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecLigandBinding /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/mGluR5_g/RecLigandBinding SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecLigandBinding /kinetics/mGluR5_g/mGluR5 REAC A B 
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/mGluR5_g/RecLigandBinding PRODUCT n 
addmsg /kinetics/mGluR5_g/RecLigandBinding /kinetics/mGluR5_g/Rec_Glu REAC B A
addmsg /kinetics/mGluR5_g/RpS901 /kinetics/mGluR5_g/Internalize_Rec SUBSTRATE n 
addmsg /kinetics/mGluR5_g/Internalize_Rec /kinetics/mGluR5_g/RpS901 REAC A B 
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/mGluR5_g/Internalize_Rec PRODUCT n 
addmsg /kinetics/mGluR5_g/Internalize_Rec /kinetics/CaM_g/CaM_Ca4 REAC B A
addmsg /kinetics/mGluR5_g/Int_RpS901 /kinetics/mGluR5_g/Internalize_Rec PRODUCT n 
addmsg /kinetics/mGluR5_g/Internalize_Rec /kinetics/mGluR5_g/Int_RpS901 REAC B A
addmsg /kinetics/CaM_g/CaM_Ca4 /kinetics/mGluR5_g/mGluR5_recycling SUBSTRATE n 
addmsg /kinetics/mGluR5_g/mGluR5_recycling /kinetics/CaM_g/CaM_Ca4 REAC A B 
addmsg /kinetics/mGluR5_g/intmGluR_Homer /kinetics/mGluR5_g/mGluR5_recycling SUBSTRATE n 
addmsg /kinetics/mGluR5_g/mGluR5_recycling /kinetics/mGluR5_g/intmGluR_Homer REAC A B 
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/mGluR5_g/mGluR5_recycling PRODUCT n 
addmsg /kinetics/mGluR5_g/mGluR5_recycling /kinetics/mGluR5_g/mGluR5 REAC B A
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/mGluR5_g/MPEP_bind_mGluR SUBSTRATE n 
addmsg /kinetics/mGluR5_g/MPEP_bind_mGluR /kinetics/mGluR5_g/mGluR5 REAC A B 
addmsg /kinetics/mGluR5_g/MPEP /kinetics/mGluR5_g/MPEP_bind_mGluR SUBSTRATE n 
addmsg /kinetics/mGluR5_g/MPEP_bind_mGluR /kinetics/mGluR5_g/MPEP REAC A B 
addmsg /kinetics/mGluR5_g/mGluR_MPEP /kinetics/mGluR5_g/MPEP_bind_mGluR PRODUCT n 
addmsg /kinetics/mGluR5_g/MPEP_bind_mGluR /kinetics/mGluR5_g/mGluR_MPEP REAC B A
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/mGluR5_g/MPEP_bind_RGlu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/MPEP_bind_RGlu /kinetics/mGluR5_g/Rec_Glu REAC A B 
addmsg /kinetics/mGluR5_g/MPEP /kinetics/mGluR5_g/MPEP_bind_RGlu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/MPEP_bind_RGlu /kinetics/mGluR5_g/MPEP REAC A B 
addmsg /kinetics/mGluR5_g/GluR_MPEP /kinetics/mGluR5_g/MPEP_bind_RGlu PRODUCT n 
addmsg /kinetics/mGluR5_g/MPEP_bind_RGlu /kinetics/mGluR5_g/GluR_MPEP REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/mGluR5_g/RecpS870Glu_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870Glu_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Glu /kinetics/mGluR5_g/RecpS870Glu_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870Glu_bind_Gq /kinetics/mGluR5_g/RecpS870_Glu REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Glu_Gq /kinetics/mGluR5_g/RecpS870Glu_bind_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/RecpS870Glu_bind_Gq /kinetics/mGluR5_g/RecpS870_Glu_Gq REAC B A
addmsg /kinetics/Ligands_g/Glutamate /kinetics/mGluR5_g/RecpS870Gq_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870Gq_bind_Glu /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Gq /kinetics/mGluR5_g/RecpS870Gq_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870Gq_bind_Glu /kinetics/mGluR5_g/RecpS870_Gq REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Glu_Gq /kinetics/mGluR5_g/RecpS870Gq_bind_Glu PRODUCT n 
addmsg /kinetics/mGluR5_g/RecpS870Gq_bind_Glu /kinetics/mGluR5_g/RecpS870_Glu_Gq REAC B A
addmsg /kinetics/Gq_g/G_GDP /kinetics/mGluR5_g/RecpS870_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Gq /kinetics/Gq_g/G_GDP REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870 /kinetics/mGluR5_g/RecpS870_bind_Gq SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Gq /kinetics/mGluR5_g/RecpS870 REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Gq /kinetics/mGluR5_g/RecpS870_bind_Gq PRODUCT n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Gq /kinetics/mGluR5_g/RecpS870_Gq REAC B A
addmsg /kinetics/Ligands_g/Glutamate /kinetics/mGluR5_g/RecpS870_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Glu /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870 /kinetics/mGluR5_g/RecpS870_bind_Glu SUBSTRATE n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Glu /kinetics/mGluR5_g/RecpS870 REAC A B 
addmsg /kinetics/mGluR5_g/RecpS870_Glu /kinetics/mGluR5_g/RecpS870_bind_Glu PRODUCT n 
addmsg /kinetics/mGluR5_g/RecpS870_bind_Glu /kinetics/mGluR5_g/RecpS870_Glu REAC B A
addmsg /kinetics/mGluR5_g/RecpS870_Glu_Gq /kinetics/mGluR5_g/GluRpS870G_act SUBSTRATE n 
addmsg /kinetics/mGluR5_g/GluRpS870G_act /kinetics/mGluR5_g/RecpS870_Glu_Gq REAC A B 
addmsg /kinetics/Gq_g/BetaGamma /kinetics/mGluR5_g/GluRpS870G_act PRODUCT n 
addmsg /kinetics/mGluR5_g/GluRpS870G_act /kinetics/Gq_g/BetaGamma REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/mGluR5_g/GluRpS870G_act PRODUCT n 
addmsg /kinetics/mGluR5_g/GluRpS870G_act /kinetics/Gq_g/G_pGTP REAC B A
addmsg /kinetics/mGluR5_g/RecpS870_Glu /kinetics/mGluR5_g/GluRpS870G_act PRODUCT n 
addmsg /kinetics/mGluR5_g/GluRpS870G_act /kinetics/mGluR5_g/RecpS870_Glu REAC B A
addmsg /kinetics/mGluR5_g/RpS901G /kinetics/mGluR5_g/Gq_release SUBSTRATE n 
addmsg /kinetics/mGluR5_g/Gq_release /kinetics/mGluR5_g/RpS901G REAC A B 
addmsg /kinetics/Gq_g/G_GDP /kinetics/mGluR5_g/Gq_release PRODUCT n 
addmsg /kinetics/mGluR5_g/Gq_release /kinetics/Gq_g/G_GDP REAC B A
addmsg /kinetics/mGluR5_g/RpS901 /kinetics/mGluR5_g/Gq_release PRODUCT n 
addmsg /kinetics/mGluR5_g/Gq_release /kinetics/mGluR5_g/RpS901 REAC B A
addmsg /kinetics/mGluR5_g/intmGluR_Homer /kinetics/mGluR5_g/basal_recycling SUBSTRATE n 
addmsg /kinetics/mGluR5_g/basal_recycling /kinetics/mGluR5_g/intmGluR_Homer REAC A B 
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/mGluR5_g/basal_recycling PRODUCT n 
addmsg /kinetics/mGluR5_g/basal_recycling /kinetics/mGluR5_g/mGluR5 REAC B A
addmsg /kinetics/mGluR5_g/intmGluR /kinetics/mGluR5_g/imGluR_bind_Homer SUBSTRATE n 
addmsg /kinetics/mGluR5_g/imGluR_bind_Homer /kinetics/mGluR5_g/intmGluR REAC A B 
addmsg /kinetics/HomerPIKE_g/Homer1c /kinetics/mGluR5_g/imGluR_bind_Homer SUBSTRATE n 
addmsg /kinetics/mGluR5_g/imGluR_bind_Homer /kinetics/HomerPIKE_g/Homer1c REAC A B 
addmsg /kinetics/mGluR5_g/intmGluR_Homer /kinetics/mGluR5_g/imGluR_bind_Homer PRODUCT n 
addmsg /kinetics/mGluR5_g/imGluR_bind_Homer /kinetics/mGluR5_g/intmGluR_Homer REAC B A
addmsg /kinetics/PI3K_g/PI3K /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K /kinetics/PI3K_g/PI3K REAC A B 
addmsg /kinetics/HomerPIKE_g/GluR_Homer_PIKE /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K /kinetics/HomerPIKE_g/GluR_Homer_PIKE REAC A B 
addmsg /kinetics/PI3K_g/GluRHomerPIKE_PI3K /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K PRODUCT n 
addmsg /kinetics/HomerPIKE_g/GluRHomerPIKE_bind_PI3K /kinetics/PI3K_g/GluRHomerPIKE_PI3K REAC B A
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE /kinetics/mGluR5_g/mGluR5 REAC A B 
addmsg /kinetics/HomerPIKE_g/PIKE_L /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE /kinetics/HomerPIKE_g/PIKE_L REAC A B 
addmsg /kinetics/HomerPIKE_g/GluR_Homer_PIKE /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE PRODUCT n 
addmsg /kinetics/HomerPIKE_g/GluRHomer_bind_PIKE /kinetics/HomerPIKE_g/GluR_Homer_PIKE REAC B A
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE /kinetics/DHPG_mGluR_g/Rec_DHPG REAC A B 
addmsg /kinetics/HomerPIKE_g/PIKE_L /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE /kinetics/HomerPIKE_g/PIKE_L REAC A B 
addmsg /kinetics/HomerPIKE_g/DHPGR_Homer_PIKE /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE PRODUCT n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomer_bind_PIKE /kinetics/HomerPIKE_g/DHPGR_Homer_PIKE REAC B A
addmsg /kinetics/PI3K_g/PI3K /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K /kinetics/PI3K_g/PI3K REAC A B 
addmsg /kinetics/HomerPIKE_g/DHPGR_Homer_PIKE /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K SUBSTRATE n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K /kinetics/HomerPIKE_g/DHPGR_Homer_PIKE REAC A B 
addmsg /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K PRODUCT n 
addmsg /kinetics/HomerPIKE_g/DHPGRHomerPIKE_bind_PI3K /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K REAC B A
addmsg /kinetics/PI3K_g/PIP3 /kinetics/AKT_g/PIP3_bind_PDK1 SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_bind_PDK1 /kinetics/PI3K_g/PIP3 REAC A B 
addmsg /kinetics/AKT_g/PDK1 /kinetics/AKT_g/PIP3_bind_PDK1 SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_bind_PDK1 /kinetics/AKT_g/PDK1 REAC A B 
addmsg /kinetics/AKT_g/PIP3_PDK1 /kinetics/AKT_g/PIP3_bind_PDK1 PRODUCT n 
addmsg /kinetics/AKT_g/PIP3_bind_PDK1 /kinetics/AKT_g/PIP3_PDK1 REAC B A
addmsg /kinetics/PI3K_g/PIP3 /kinetics/AKT_g/PIP3_bind_AKT SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_bind_AKT /kinetics/PI3K_g/PIP3 REAC A B 
addmsg /kinetics/AKT_g/AKT /kinetics/AKT_g/PIP3_bind_AKT SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_bind_AKT /kinetics/AKT_g/AKT REAC A B 
addmsg /kinetics/AKT_g/PIP3_AKT /kinetics/AKT_g/PIP3_bind_AKT PRODUCT n 
addmsg /kinetics/AKT_g/PIP3_bind_AKT /kinetics/AKT_g/PIP3_AKT REAC B A
addmsg /kinetics/Ligands_g/EGF /kinetics/EGFR_g/act_EGFR SUBSTRATE n 
addmsg /kinetics/EGFR_g/act_EGFR /kinetics/Ligands_g/EGF REAC A B 
addmsg /kinetics/EGFR_g/EGFR /kinetics/EGFR_g/act_EGFR SUBSTRATE n 
addmsg /kinetics/EGFR_g/act_EGFR /kinetics/EGFR_g/EGFR REAC A B 
addmsg /kinetics/EGFR_g/L_EGFR /kinetics/EGFR_g/act_EGFR PRODUCT n 
addmsg /kinetics/EGFR_g/act_EGFR /kinetics/EGFR_g/L_EGFR REAC B A
addmsg /kinetics/EGFR_g/L_EGFR /kinetics/EGFR_g/Internalize SUBSTRATE n 
addmsg /kinetics/EGFR_g/Internalize /kinetics/EGFR_g/L_EGFR REAC A B 
addmsg /kinetics/EGFR_g/Internal_L_EGFR /kinetics/EGFR_g/Internalize PRODUCT n 
addmsg /kinetics/EGFR_g/Internalize /kinetics/EGFR_g/Internal_L_EGFR REAC B A
addmsg /kinetics/EGFR_g/Internal_L_EGFR /kinetics/EGFR_g/EGFR_recycling SUBSTRATE n 
addmsg /kinetics/EGFR_g/EGFR_recycling /kinetics/EGFR_g/Internal_L_EGFR REAC A B 
addmsg /kinetics/EGFR_g/EGFR /kinetics/EGFR_g/EGFR_recycling PRODUCT n 
addmsg /kinetics/EGFR_g/EGFR_recycling /kinetics/EGFR_g/EGFR REAC B A
addmsg /kinetics/Sos_g/Gab1 /kinetics/Sos_g/bind_Gab1 SUBSTRATE n 
addmsg /kinetics/Sos_g/bind_Gab1 /kinetics/Sos_g/Gab1 REAC A B 
addmsg /kinetics/Sos_g/SHCp_Grb2_clx /kinetics/Sos_g/bind_Gab1 SUBSTRATE n 
addmsg /kinetics/Sos_g/bind_Gab1 /kinetics/Sos_g/SHCp_Grb2_clx REAC A B 
addmsg /kinetics/Sos_g/SHCp_Grb2_Gab1_clx /kinetics/Sos_g/bind_Gab1 PRODUCT n 
addmsg /kinetics/Sos_g/bind_Gab1 /kinetics/Sos_g/SHCp_Grb2_Gab1_clx REAC B A
addmsg /kinetics/Sos_g/SHCp /kinetics/Sos_g/SHCp_dephospho SUBSTRATE n 
addmsg /kinetics/Sos_g/SHCp_dephospho /kinetics/Sos_g/SHCp REAC A B 
addmsg /kinetics/Sos_g/SHC /kinetics/Sos_g/SHCp_dephospho PRODUCT n 
addmsg /kinetics/Sos_g/SHCp_dephospho /kinetics/Sos_g/SHC REAC B A
addmsg /kinetics/Sos_g/SHCp /kinetics/Sos_g/SHC_bind_SosGrb2 SUBSTRATE n 
addmsg /kinetics/Sos_g/SHC_bind_SosGrb2 /kinetics/Sos_g/SHCp REAC A B 
addmsg /kinetics/Sos_g/Sos_Grb2 /kinetics/Sos_g/SHC_bind_SosGrb2 SUBSTRATE n 
addmsg /kinetics/Sos_g/SHC_bind_SosGrb2 /kinetics/Sos_g/Sos_Grb2 REAC A B 
addmsg /kinetics/Sos_g/SHCp_SosGrb2 /kinetics/Sos_g/SHC_bind_SosGrb2 PRODUCT n 
addmsg /kinetics/Sos_g/SHC_bind_SosGrb2 /kinetics/Sos_g/SHCp_SosGrb2 REAC B A
addmsg /kinetics/Sos_g/Grb2 /kinetics/Sos_g/Grb2_bind_Sosp SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_Sosp /kinetics/Sos_g/Grb2 REAC A B 
addmsg /kinetics/Sos_g/Sosp /kinetics/Sos_g/Grb2_bind_Sosp SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_Sosp /kinetics/Sos_g/Sosp REAC A B 
addmsg /kinetics/Sos_g/Sosp_Grb2 /kinetics/Sos_g/Grb2_bind_Sosp PRODUCT n 
addmsg /kinetics/Sos_g/Grb2_bind_Sosp /kinetics/Sos_g/Sosp_Grb2 REAC B A
addmsg /kinetics/Sos_g/Sosp /kinetics/Sos_g/dephosph_Sos SUBSTRATE n 
addmsg /kinetics/Sos_g/dephosph_Sos /kinetics/Sos_g/Sosp REAC A B 
addmsg /kinetics/Sos_g/Sos /kinetics/Sos_g/dephosph_Sos PRODUCT n 
addmsg /kinetics/Sos_g/dephosph_Sos /kinetics/Sos_g/Sos REAC B A
addmsg /kinetics/Sos_g/Grb2 /kinetics/Sos_g/Grb2_bind_Sos SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_Sos /kinetics/Sos_g/Grb2 REAC A B 
addmsg /kinetics/Sos_g/Sos /kinetics/Sos_g/Grb2_bind_Sos SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_Sos /kinetics/Sos_g/Sos REAC A B 
addmsg /kinetics/Sos_g/Sos_Grb2 /kinetics/Sos_g/Grb2_bind_Sos PRODUCT n 
addmsg /kinetics/Sos_g/Grb2_bind_Sos /kinetics/Sos_g/Sos_Grb2 REAC B A
addmsg /kinetics/Sos_g/SHCp /kinetics/Sos_g/Grb2_bind_SHC SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_SHC /kinetics/Sos_g/SHCp REAC A B 
addmsg /kinetics/Sos_g/Grb2 /kinetics/Sos_g/Grb2_bind_SHC SUBSTRATE n 
addmsg /kinetics/Sos_g/Grb2_bind_SHC /kinetics/Sos_g/Grb2 REAC A B 
addmsg /kinetics/Sos_g/SHCp_Grb2_clx /kinetics/Sos_g/Grb2_bind_SHC PRODUCT n 
addmsg /kinetics/Sos_g/Grb2_bind_SHC /kinetics/Sos_g/SHCp_Grb2_clx REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLCg_g/Ca_act_PLCg SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_act_PLCg /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLCg_g/PLCg /kinetics/PLCg_g/Ca_act_PLCg SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_act_PLCg /kinetics/PLCg_g/PLCg REAC A B 
addmsg /kinetics/PLCg_g/Ca_PLCg /kinetics/PLCg_g/Ca_act_PLCg PRODUCT n 
addmsg /kinetics/PLCg_g/Ca_act_PLCg /kinetics/PLCg_g/Ca_PLCg REAC B A
addmsg /kinetics/Ca_g/Ca /kinetics/PLCg_g/Ca_act_PLCgp SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_act_PLCgp /kinetics/Ca_g/Ca REAC A B 
addmsg /kinetics/PLCg_g/PLCgp /kinetics/PLCg_g/Ca_act_PLCgp SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_act_PLCgp /kinetics/PLCg_g/PLCgp REAC A B 
addmsg /kinetics/PLCg_g/Ca_PLCgp /kinetics/PLCg_g/Ca_act_PLCgp PRODUCT n 
addmsg /kinetics/PLCg_g/Ca_act_PLCgp /kinetics/PLCg_g/Ca_PLCgp REAC B A
addmsg /kinetics/PLCg_g/Ca_PLCgp /kinetics/PLCg_g/dephospho_PLCg SUBSTRATE n 
addmsg /kinetics/PLCg_g/dephospho_PLCg /kinetics/PLCg_g/Ca_PLCgp REAC A B 
addmsg /kinetics/PLCg_g/Ca_PLCg /kinetics/PLCg_g/dephospho_PLCg PRODUCT n 
addmsg /kinetics/PLCg_g/dephospho_PLCg /kinetics/PLCg_g/Ca_PLCg REAC B A
addmsg /kinetics/PLCg_g/PLCgp /kinetics/PLCg_g/PLCgp_dephospho SUBSTRATE n 
addmsg /kinetics/PLCg_g/PLCgp_dephospho /kinetics/PLCg_g/PLCgp REAC A B 
addmsg /kinetics/PLCg_g/PLCg /kinetics/PLCg_g/PLCgp_dephospho PRODUCT n 
addmsg /kinetics/PLCg_g/PLCgp_dephospho /kinetics/PLCg_g/PLCg REAC B A
addmsg /kinetics/mGluR1_g/LY367385 /kinetics/mGluR1_g/LY367385_bind_mGluR1a SUBSTRATE n 
addmsg /kinetics/mGluR1_g/LY367385_bind_mGluR1a /kinetics/mGluR1_g/LY367385 REAC A B 
addmsg /kinetics/mGluR1_g/mGluR1a /kinetics/mGluR1_g/LY367385_bind_mGluR1a SUBSTRATE n 
addmsg /kinetics/mGluR1_g/LY367385_bind_mGluR1a /kinetics/mGluR1_g/mGluR1a REAC A B 
addmsg /kinetics/mGluR1_g/Blocked_mGluR1a /kinetics/mGluR1_g/LY367385_bind_mGluR1a PRODUCT n 
addmsg /kinetics/mGluR1_g/LY367385_bind_mGluR1a /kinetics/mGluR1_g/Blocked_mGluR1a REAC B A
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx /kinetics/TrKB_g/LR_Internalize SUBSTRATE n 
addmsg /kinetics/TrKB_g/LR_Internalize /kinetics/TrKB_g/BDNF_TrKB2_p_clx REAC A B 
addmsg /kinetics/TrKB_g/Int_BDNF_TrKB2_p_clx /kinetics/TrKB_g/LR_Internalize PRODUCT n 
addmsg /kinetics/TrKB_g/LR_Internalize /kinetics/TrKB_g/Int_BDNF_TrKB2_p_clx REAC B A
addmsg /kinetics/TrKB_g/Int_BDNF_TrKB2_clx /kinetics/TrKB_g/LR_cycling SUBSTRATE n 
addmsg /kinetics/TrKB_g/LR_cycling /kinetics/TrKB_g/Int_BDNF_TrKB2_clx REAC A B 
addmsg /kinetics/TrKB_g/TrKB /kinetics/TrKB_g/LR_cycling PRODUCT n 
addmsg /kinetics/TrKB_g/LR_cycling /kinetics/TrKB_g/TrKB REAC B A
addmsg /kinetics/TrKB_g/TrKB /kinetics/TrKB_g/LR_cycling PRODUCT n 
addmsg /kinetics/TrKB_g/LR_cycling /kinetics/TrKB_g/TrKB REAC B A
addmsg /kinetics/TrKB_g/BDNF_TrKB2_clx /kinetics/TrKB_g/Autophos_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB_g/Autophos_TrKB /kinetics/TrKB_g/BDNF_TrKB2_clx REAC A B 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx /kinetics/TrKB_g/Autophos_TrKB PRODUCT n 
addmsg /kinetics/TrKB_g/Autophos_TrKB /kinetics/TrKB_g/BDNF_TrKB2_p_clx REAC B A
addmsg /kinetics/TrKB_g/TrKB /kinetics/TrKB_g/Dimeriz_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB_g/Dimeriz_TrKB /kinetics/TrKB_g/TrKB REAC A B 
addmsg /kinetics/TrKB_g/BDNF_TrKB_clx /kinetics/TrKB_g/Dimeriz_TrKB SUBSTRATE n 
addmsg /kinetics/TrKB_g/Dimeriz_TrKB /kinetics/TrKB_g/BDNF_TrKB_clx REAC A B 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_clx /kinetics/TrKB_g/Dimeriz_TrKB PRODUCT n 
addmsg /kinetics/TrKB_g/Dimeriz_TrKB /kinetics/TrKB_g/BDNF_TrKB2_clx REAC B A
addmsg /kinetics/Ligands_g/BDNF /kinetics/TrKB_g/Ligand_binding SUBSTRATE n 
addmsg /kinetics/TrKB_g/Ligand_binding /kinetics/Ligands_g/BDNF REAC A B 
addmsg /kinetics/TrKB_g/TrKB /kinetics/TrKB_g/Ligand_binding SUBSTRATE n 
addmsg /kinetics/TrKB_g/Ligand_binding /kinetics/TrKB_g/TrKB REAC A B 
addmsg /kinetics/TrKB_g/BDNF_TrKB_clx /kinetics/TrKB_g/Ligand_binding PRODUCT n 
addmsg /kinetics/TrKB_g/Ligand_binding /kinetics/TrKB_g/BDNF_TrKB_clx REAC B A
addmsg /kinetics/TrKB_g/Int_BDNF_TrKB2_p_clx /kinetics/TrKB_g/IntTrKB2_deph SUBSTRATE n 
addmsg /kinetics/TrKB_g/IntTrKB2_deph /kinetics/TrKB_g/Int_BDNF_TrKB2_p_clx REAC A B 
addmsg /kinetics/TrKB_g/Int_BDNF_TrKB2_clx /kinetics/TrKB_g/IntTrKB2_deph PRODUCT n 
addmsg /kinetics/TrKB_g/IntTrKB2_deph /kinetics/TrKB_g/Int_BDNF_TrKB2_clx REAC B A
addmsg /kinetics/NMDAR_g/APV /kinetics/NMDAR_g/APV_inhibit_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/APV_inhibit_NMDAR /kinetics/NMDAR_g/APV REAC A B 
addmsg /kinetics/NMDAR_g/NMDAR /kinetics/NMDAR_g/APV_inhibit_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/APV_inhibit_NMDAR /kinetics/NMDAR_g/NMDAR REAC A B 
addmsg /kinetics/NMDAR_g/Blocked_NMDAR /kinetics/NMDAR_g/APV_inhibit_NMDAR PRODUCT n 
addmsg /kinetics/NMDAR_g/APV_inhibit_NMDAR /kinetics/NMDAR_g/Blocked_NMDAR REAC B A
addmsg /kinetics/Ligands_g/NMDA /kinetics/NMDAR_g/NMDA_act_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/NMDA_act_NMDAR /kinetics/Ligands_g/NMDA REAC A B 
addmsg /kinetics/NMDAR_g/NMDAR /kinetics/NMDAR_g/NMDA_act_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/NMDA_act_NMDAR /kinetics/NMDAR_g/NMDAR REAC A B 
addmsg /kinetics/NMDAR_g/NMDA_NMDAR /kinetics/NMDAR_g/NMDA_act_NMDAR PRODUCT n 
addmsg /kinetics/NMDAR_g/NMDA_act_NMDAR /kinetics/NMDAR_g/NMDA_NMDAR REAC B A
addmsg /kinetics/Ligands_g/Glutamate /kinetics/NMDAR_g/Glu_act_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/Glu_act_NMDAR /kinetics/Ligands_g/Glutamate REAC A B 
addmsg /kinetics/NMDAR_g/NMDAR /kinetics/NMDAR_g/Glu_act_NMDAR SUBSTRATE n 
addmsg /kinetics/NMDAR_g/Glu_act_NMDAR /kinetics/NMDAR_g/NMDAR REAC A B 
addmsg /kinetics/NMDAR_g/Glu_NMDAR /kinetics/NMDAR_g/Glu_act_NMDAR PRODUCT n 
addmsg /kinetics/NMDAR_g/Glu_act_NMDAR /kinetics/NMDAR_g/Glu_NMDAR REAC B A
addmsg /kinetics/NMDAR_g/aNMDAR /kinetics/NMDAR_g/NMDAR_inact SUBSTRATE n 
addmsg /kinetics/NMDAR_g/NMDAR_inact /kinetics/NMDAR_g/aNMDAR REAC A B 
addmsg /kinetics/NMDAR_g/NMDAR /kinetics/NMDAR_g/NMDAR_inact PRODUCT n 
addmsg /kinetics/NMDAR_g/NMDAR_inact /kinetics/NMDAR_g/NMDAR REAC B A
addmsg /kinetics/mGluR5_g/Glu_mGluRpT840 /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc /kinetics/mGluR5_g/Glu_mGluRpT840 REAC A B 
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2 /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_assoc /kinetics/barr2_g/Glu_mGluRpT840_barr2 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/Isob2ARp2_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Isob2ARp2_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/Isob2ARp2 /kinetics/barr2_g/Isob2ARp2_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Isob2ARp2_barr2_assoc /kinetics/barr2_g/Isob2ARp2 REAC A B 
addmsg /kinetics/barr2_g/Isob2ARp2_barr2 /kinetics/barr2_g/Isob2ARp2_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/Isob2ARp2_barr2_assoc /kinetics/barr2_g/Isob2ARp2_barr2 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/Isob2ARp1_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Isob2ARp1_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/Isob2ARp1 /kinetics/barr2_g/Isob2ARp1_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Isob2ARp1_barr2_assoc /kinetics/barr2_g/Isob2ARp1 REAC A B 
addmsg /kinetics/barr2_g/Isob2ARp1_barr2 /kinetics/barr2_g/Isob2ARp1_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/Isob2ARp1_barr2_assoc /kinetics/barr2_g/Isob2ARp1_barr2 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/Epib2ARp2_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Epib2ARp2_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/Epib2ARp2 /kinetics/barr2_g/Epib2ARp2_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Epib2ARp2_barr2_assoc /kinetics/barr2_g/Epib2ARp2 REAC A B 
addmsg /kinetics/barr2_g/Epib2ARp2_barr2 /kinetics/barr2_g/Epib2ARp2_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/Epib2ARp2_barr2_assoc /kinetics/barr2_g/Epib2ARp2_barr2 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/Epib2ARp1_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Epib2ARp1_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/Epib2ARp1 /kinetics/barr2_g/Epib2ARp1_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/Epib2ARp1_barr2_assoc /kinetics/barr2_g/Epib2ARp1 REAC A B 
addmsg /kinetics/barr2_g/Epib2ARp1_barr2 /kinetics/barr2_g/Epib2ARp1_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/Epib2ARp1_barr2_assoc /kinetics/barr2_g/Epib2ARp1_barr2 REAC B A
addmsg /kinetics/DHPG_mGluR_g/DHPG_mGluRpT840 /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc /kinetics/DHPG_mGluR_g/DHPG_mGluRpT840 REAC A B 
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc SUBSTRATE n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc /kinetics/barr2_g/barr2 REAC A B 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2 /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc PRODUCT n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_assoc /kinetics/barr2_g/DHPG_mGluRpT840_barr2 REAC B A
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2 /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize /kinetics/barr2_g/Glu_mGluRpT840_barr2 REAC A B 
addmsg /kinetics/Ligands_g/Glutamate /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize /kinetics/Ligands_g/Glutamate REAC B A
addmsg /kinetics/barr2_g/Int_mGluRpT840_barr2 /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize /kinetics/barr2_g/Int_mGluRpT840_barr2 REAC B A
addmsg /kinetics/barr2_g/Isob2ARp1_barr2 /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize /kinetics/barr2_g/Isob2ARp1_barr2 REAC A B 
addmsg /kinetics/Ligands_g/Isoproterenol /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize /kinetics/Ligands_g/Isoproterenol REAC B A
addmsg /kinetics/barr2_g/Int_b2ARp1_barr2 /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Iso_b2ARp1_barr2_internalize /kinetics/barr2_g/Int_b2ARp1_barr2 REAC B A
addmsg /kinetics/barr2_g/Epib2ARp1_barr2 /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize /kinetics/barr2_g/Epib2ARp1_barr2 REAC A B 
addmsg /kinetics/Ligands_g/Epinephrine /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize /kinetics/Ligands_g/Epinephrine REAC B A
addmsg /kinetics/barr2_g/Int_b2ARp1_barr2 /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Epi_b2ARp1_barr2_internalize /kinetics/barr2_g/Int_b2ARp1_barr2 REAC B A
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2 /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize /kinetics/barr2_g/DHPG_mGluRpT840_barr2 REAC A B 
addmsg /kinetics/Ligands_g/DHPG /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize /kinetics/Ligands_g/DHPG REAC B A
addmsg /kinetics/barr2_g/Int_mGluRpT840_barr2 /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/DHPG_mGluRpT840_barr2_internalize /kinetics/barr2_g/Int_mGluRpT840_barr2 REAC B A
addmsg /kinetics/Gq_g/BetaGamma /kinetics/barr2_g/GRK2_to_memb SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_to_memb /kinetics/Gq_g/BetaGamma REAC A B 
addmsg /kinetics/barr2_g/GRK2_cytosolic /kinetics/barr2_g/GRK2_to_memb SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_to_memb /kinetics/barr2_g/GRK2_cytosolic REAC A B 
addmsg /kinetics/barr2_g/GRK2_memb /kinetics/barr2_g/GRK2_to_memb PRODUCT n 
addmsg /kinetics/barr2_g/GRK2_to_memb /kinetics/barr2_g/GRK2_memb REAC B A
addmsg /kinetics/Gq_g/G_pGTP /kinetics/barr2_g/GRK2_antag SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_antag /kinetics/Gq_g/G_pGTP REAC A B 
addmsg /kinetics/barr2_g/GRK2_cytosolic /kinetics/barr2_g/GRK2_antag SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_antag /kinetics/barr2_g/GRK2_cytosolic REAC A B 
addmsg /kinetics/barr2_g/Blocked_GRK2 /kinetics/barr2_g/GRK2_antag PRODUCT n 
addmsg /kinetics/barr2_g/GRK2_antag /kinetics/barr2_g/Blocked_GRK2 REAC B A
addmsg /kinetics/barr2_g/Blocked_GRK2 /kinetics/barr2_g/GRK2_Gq_inact SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_Gq_inact /kinetics/barr2_g/Blocked_GRK2 REAC A B 
addmsg /kinetics/Gq_g/G_pGDP /kinetics/barr2_g/GRK2_Gq_inact PRODUCT n 
addmsg /kinetics/barr2_g/GRK2_Gq_inact /kinetics/Gq_g/G_pGDP REAC B A
addmsg /kinetics/barr2_g/GRK2_cytosolic /kinetics/barr2_g/GRK2_Gq_inact PRODUCT n 
addmsg /kinetics/barr2_g/GRK2_Gq_inact /kinetics/barr2_g/GRK2_cytosolic REAC B A
addmsg /kinetics/barr2_g/Isob2ARp2_barr2 /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize /kinetics/barr2_g/Isob2ARp2_barr2 REAC A B 
addmsg /kinetics/Ligands_g/Isoproterenol /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize /kinetics/Ligands_g/Isoproterenol REAC B A
addmsg /kinetics/barr2_g/Int_b2ARp2_barr2 /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Iso_b2ARp2_barr2_internalize /kinetics/barr2_g/Int_b2ARp2_barr2 REAC B A
addmsg /kinetics/barr2_g/Epib2ARp2_barr2 /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize SUBSTRATE n 
addmsg /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize /kinetics/barr2_g/Epib2ARp2_barr2 REAC A B 
addmsg /kinetics/Ligands_g/Epinephrine /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize /kinetics/Ligands_g/Epinephrine REAC B A
addmsg /kinetics/barr2_g/Int_b2ARp2_barr2 /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize PRODUCT n 
addmsg /kinetics/barr2_g/Epi_b2ARp2_barr2_internalize /kinetics/barr2_g/Int_b2ARp2_barr2 REAC B A
addmsg /kinetics/barr2_g/Int_b2ARp2_barr2 /kinetics/barr2_g/b2ARp2barr2p_dissoc SUBSTRATE n 
addmsg /kinetics/barr2_g/b2ARp2barr2p_dissoc /kinetics/barr2_g/Int_b2ARp2_barr2 REAC A B 
addmsg /kinetics/b2AR_g/Int_b2ARp2 /kinetics/barr2_g/b2ARp2barr2p_dissoc PRODUCT n 
addmsg /kinetics/barr2_g/b2ARp2barr2p_dissoc /kinetics/b2AR_g/Int_b2ARp2 REAC B A
addmsg /kinetics/barr2_g/barr2 /kinetics/barr2_g/b2ARp2barr2p_dissoc PRODUCT n 
addmsg /kinetics/barr2_g/b2ARp2barr2p_dissoc /kinetics/barr2_g/barr2 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS30 /kinetics/Ca_g/Buffer_Ca35 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_CalS30 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS35 /kinetics/Ca_g/Buffer_Ca35 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca35 /kinetics/Ca_g/Ca_CalS35 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS5 /kinetics/Ca_g/Buffer_Ca10 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_CalS5 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS10 /kinetics/Ca_g/Buffer_Ca10 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca10 /kinetics/Ca_g/Ca_CalS10 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS20 /kinetics/Ca_g/Buffer_Ca25 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_CalS20 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS25 /kinetics/Ca_g/Buffer_Ca25 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca25 /kinetics/Ca_g/Ca_CalS25 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS10 /kinetics/Ca_g/Buffer_Ca15 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_CalS10 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS15 /kinetics/Ca_g/Buffer_Ca15 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca15 /kinetics/Ca_g/Ca_CalS15 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS15 /kinetics/Ca_g/Buffer_Ca20 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_CalS15 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS20 /kinetics/Ca_g/Buffer_Ca20 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca20 /kinetics/Ca_g/Ca_CalS20 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS25 /kinetics/Ca_g/Buffer_Ca30 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_CalS25 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS30 /kinetics/Ca_g/Buffer_Ca30 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca30 /kinetics/Ca_g/Ca_CalS30 REAC B A
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_ER REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS35 /kinetics/Ca_g/Buffer_Ca40 SUBSTRATE n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_CalS35 REAC A B 
addmsg /kinetics/Ca_g/Ca_CalS40 /kinetics/Ca_g/Buffer_Ca40 PRODUCT n 
addmsg /kinetics/Ca_g/Buffer_Ca40 /kinetics/Ca_g/Ca_CalS40 REAC B A
addmsg /kinetics/S6K_g/S6K_p /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K SUBSTRATE n 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K /kinetics/S6K_g/S6K_p REAC sA B 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K /kinetics/S6K_g/S6K_thr_412 MM_PRD pA
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K ENZYME n
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/mTOR_act_S6K /kinetics/mTORC1_g/TOR_Rheb_GTP_clx REAC eA B
addmsg /kinetics/_4EBP_g/eIF4E_BP /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho SUBSTRATE n 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho /kinetics/_4EBP_g/eIF4E_BP REAC sA B 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho /kinetics/_4EBP_g/eIF4E_BP_t37_46 MM_PRD pA
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho ENZYME n
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_phospho /kinetics/mTORC1_g/TOR_Rheb_GTP_clx REAC eA B
addmsg /kinetics/_4EBP_g/_4E_BP /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p SUBSTRATE n 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p /kinetics/_4EBP_g/_4E_BP REAC sA B 
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p /kinetics/_4EBP_g/_4E_BP_t37_46 MM_PRD pA
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p ENZYME n
addmsg /kinetics/mTORC1_g/TOR_Rheb_GTP_clx/TOR_4E_BP_p /kinetics/mTORC1_g/TOR_Rheb_GTP_clx REAC eA B
addmsg /kinetics/_40S_g/_40S_inact /kinetics/S6K_g/S6K_thr_412/S6_phos SUBSTRATE n 
addmsg /kinetics/S6K_g/S6K_thr_412/S6_phos /kinetics/_40S_g/_40S_inact REAC sA B 
addmsg /kinetics/S6K_g/S6K_thr_412/S6_phos /kinetics/_40S_g/_40S MM_PRD pA
addmsg /kinetics/S6K_g/S6K_thr_412 /kinetics/S6K_g/S6K_thr_412/S6_phos ENZYME n
addmsg /kinetics/S6K_g/S6K_thr_412/S6_phos /kinetics/S6K_g/S6K_thr_412 REAC eA B
addmsg /kinetics/CaMKIII_g/CaMKIII /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII SUBSTRATE n 
addmsg /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII /kinetics/CaMKIII_g/CaMKIII REAC sA B 
addmsg /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII /kinetics/CaMKIII_g/CaMKIII_p MM_PRD pA
addmsg /kinetics/S6K_g/S6K_thr_252 /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII ENZYME n
addmsg /kinetics/S6K_g/S6K_thr_252/S6Kp_act_CaMKIII /kinetics/S6K_g/S6K_thr_252 REAC eA B
addmsg /kinetics/_40S_g/_40S_inact /kinetics/S6K_g/S6K_thr_252/S6_phospho SUBSTRATE n 
addmsg /kinetics/S6K_g/S6K_thr_252/S6_phospho /kinetics/_40S_g/_40S_inact REAC sA B 
addmsg /kinetics/S6K_g/S6K_thr_252/S6_phospho /kinetics/_40S_g/_40S MM_PRD pA
addmsg /kinetics/S6K_g/S6K_thr_252 /kinetics/S6K_g/S6K_thr_252/S6_phospho ENZYME n
addmsg /kinetics/S6K_g/S6K_thr_252/S6_phospho /kinetics/S6K_g/S6K_thr_252 REAC eA B
addmsg /kinetics/CaMKIII_g/CaMKIII /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII SUBSTRATE n 
addmsg /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII /kinetics/CaMKIII_g/CaMKIII REAC sA B 
addmsg /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII /kinetics/CaMKIII_g/CaMKIII_p MM_PRD pA
addmsg /kinetics/S6K_g/S6K_basal /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII ENZYME n
addmsg /kinetics/S6K_g/S6K_basal/bS6Kp_act_CaMKIII /kinetics/S6K_g/S6K_basal REAC eA B
addmsg /kinetics/_40S_g/_40S_inact /kinetics/S6K_g/S6K_basal/S6K_act_bS6 SUBSTRATE n 
addmsg /kinetics/S6K_g/S6K_basal/S6K_act_bS6 /kinetics/_40S_g/_40S_inact REAC sA B 
addmsg /kinetics/S6K_g/S6K_basal/S6K_act_bS6 /kinetics/_40S_g/_40S MM_PRD pA
addmsg /kinetics/S6K_g/S6K_basal /kinetics/S6K_g/S6K_basal/S6K_act_bS6 ENZYME n
addmsg /kinetics/S6K_g/S6K_basal/S6K_act_bS6 /kinetics/S6K_g/S6K_basal REAC eA B
addmsg /kinetics/TransElong_g/eEF2 /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act SUBSTRATE n 
addmsg /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act /kinetics/TransElong_g/eEF2 REAC sA B 
addmsg /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act /kinetics/TransElong_g/eEFthr_56 MM_PRD pA
addmsg /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4 /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act ENZYME n
addmsg /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4/eEF2_act /kinetics/CaMKIII_g/CaMKIII_CaM_Ca4 REAC eA B
addmsg /kinetics/TransElong_g/eEF2 /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act SUBSTRATE n 
addmsg /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act /kinetics/TransElong_g/eEF2 REAC sA B 
addmsg /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act /kinetics/TransElong_g/eEFthr_56 MM_PRD pA
addmsg /kinetics/CaMKIII_g/CaMKIII_basal /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act ENZYME n
addmsg /kinetics/CaMKIII_g/CaMKIII_basal/beEF2_act /kinetics/CaMKIII_g/CaMKIII_basal REAC eA B
addmsg /kinetics/protein_g/AA /kinetics/TransElong_g/Translation_clx/pro_syn SUBSTRATE n 
addmsg /kinetics/TransElong_g/Translation_clx/pro_syn /kinetics/protein_g/AA REAC sA B 
addmsg /kinetics/TransElong_g/Translation_clx/pro_syn /kinetics/protein_g/peptide MM_PRD pA
addmsg /kinetics/TransElong_g/Translation_clx /kinetics/TransElong_g/Translation_clx/pro_syn ENZYME n
addmsg /kinetics/TransElong_g/Translation_clx/pro_syn /kinetics/TransElong_g/Translation_clx REAC eA B
addmsg /kinetics/protein_g/AA /kinetics/TransElong_g/Basal_Translation/basal_syn SUBSTRATE n 
addmsg /kinetics/TransElong_g/Basal_Translation/basal_syn /kinetics/protein_g/AA REAC sA B 
addmsg /kinetics/TransElong_g/Basal_Translation/basal_syn /kinetics/protein_g/peptide MM_PRD pA
addmsg /kinetics/TransElong_g/Basal_Translation /kinetics/TransElong_g/Basal_Translation/basal_syn ENZYME n
addmsg /kinetics/TransElong_g/Basal_Translation/basal_syn /kinetics/TransElong_g/Basal_Translation REAC eA B
addmsg /kinetics/mTORC1_g/Rheb_GTP /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb SUBSTRATE n 
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb /kinetics/mTORC1_g/Rheb_GTP REAC sA B 
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb /kinetics/mTORC1_g/Rheb_GDP MM_PRD pA
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2 /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb ENZYME n
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2/TSC_inact_Rheb /kinetics/TSC1_TSC2_g/TSC1_TSC2 REAC eA B
addmsg /kinetics/FMRP_g/FMRP /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP SUBSTRATE n 
addmsg /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP /kinetics/FMRP_g/FMRP REAC sA B 
addmsg /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP /kinetics/FMRP_g/FMRP_p MM_PRD pA
addmsg /kinetics/CaseinKinase_g/CKII /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP ENZYME n
addmsg /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP /kinetics/CaseinKinase_g/CKII REAC eA B
addmsg /kinetics/NMDAR_g/Glu_NMDAR /kinetics/AMPAR_g/aAMPAR/synAct_act_Glu_NMDAR SUBSTRATE n 
addmsg /kinetics/AMPAR_g/aAMPAR/synAct_act_Glu_NMDAR /kinetics/NMDAR_g/Glu_NMDAR REAC sA B 
addmsg /kinetics/AMPAR_g/aAMPAR/synAct_act_Glu_NMDAR /kinetics/NMDAR_g/aNMDAR MM_PRD pA 
addmsg /kinetics/AMPAR_g/aAMPAR /kinetics/AMPAR_g/aAMPAR/synAct_act_Glu_NMDAR ENZYME n 
addmsg /kinetics/Ca_g/VGCC /kinetics/AMPAR_g/aAMPAR/synAct_act_VGCC SUBSTRATE n 
addmsg /kinetics/AMPAR_g/aAMPAR/synAct_act_VGCC /kinetics/Ca_g/VGCC REAC sA B 
addmsg /kinetics/AMPAR_g/aAMPAR/synAct_act_VGCC /kinetics/Ca_g/aVGCC MM_PRD pA 
addmsg /kinetics/AMPAR_g/aAMPAR /kinetics/AMPAR_g/aAMPAR/synAct_act_VGCC ENZYME n 
addmsg /kinetics/AMPAR_g/sAMPARpS831 /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 /kinetics/AMPAR_g/sAMPARpS831 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 /kinetics/AMPAR_g/sAMPAR MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS831 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/AMPAR_g/sAMPARpS845S831 /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 /kinetics/AMPAR_g/sAMPARpS845S831 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 /kinetics/AMPAR_g/sAMPARpS845 MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_sAMPARpS845S831 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /kinetics/PP1_g/PP1_active/Deph_thr286 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286 /kinetics/CaMKII_g/CaMKII_thr286p_CaM REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286 /kinetics/CaMKII_g/CaMKII_CaM MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/Deph_thr286 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/CaMKII_g/CaMKIIppp /kinetics/PP1_g/PP1_active/Deph_thr305 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr305 /kinetics/CaMKII_g/CaMKIIppp REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr305 /kinetics/CaMKII_g/CaMKII_thr286 MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/Deph_thr305 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/Deph_thr305 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/CaMKII_g/CaMKII_thr306 /kinetics/PP1_g/PP1_active/Deph_thr306 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr306 /kinetics/CaMKII_g/CaMKII_thr306 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr306 /kinetics/CaMKII_g/CaMKII MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/Deph_thr306 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/Deph_thr306 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/CaMKII_g/CaMKIIppp /kinetics/PP1_g/PP1_active/Deph_thr286c SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286c /kinetics/CaMKII_g/CaMKIIppp REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286c /kinetics/CaMKII_g/CaMKII_thr306 MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/Deph_thr286c ENZYME n
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286c /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/PP1_g/PP1_active/Deph_thr286b SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286b /kinetics/CaMKII_g/CaMKII_thr286 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286b /kinetics/CaMKII_g/CaMKII MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/Deph_thr286b ENZYME n
addmsg /kinetics/PP1_g/PP1_active/Deph_thr286b /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/Ca_g/aSERCA /kinetics/PP1_g/PP1_active/SERCA_inact SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/SERCA_inact /kinetics/Ca_g/aSERCA REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/SERCA_inact /kinetics/Ca_g/SERCA MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/SERCA_inact ENZYME n
addmsg /kinetics/PP1_g/PP1_active/SERCA_inact /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/AMPAR_g/intAMPARpS831 /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 /kinetics/AMPAR_g/intAMPARpS831 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 /kinetics/AMPAR_g/intAMPAR MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS831 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/AMPAR_g/intAMPARpS845S831 /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 SUBSTRATE n 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 /kinetics/AMPAR_g/intAMPARpS845S831 REAC sA B 
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 /kinetics/AMPAR_g/intAMPARpS845 MM_PRD pA
addmsg /kinetics/PP1_g/PP1_active /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 ENZYME n
addmsg /kinetics/PP1_g/PP1_active/PP1_inact_intAMPARpS845S831 /kinetics/PP1_g/PP1_active REAC eA B
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR /kinetics/AMPAR_g/sAMPAR REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR /kinetics/AMPAR_g/sAMPARpS845 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_membAMPAR /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AMPAR_g/intAMPAR /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR /kinetics/AMPAR_g/intAMPAR REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR /kinetics/AMPAR_g/intAMPARpS845 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_intAMPAR /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/Ras_g/inact_GEF /kinetics/PKA_g/PKA_active/PKA_phosph_GEF SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_GEF /kinetics/Ras_g/inact_GEF REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_GEF /kinetics/Ras_g/inact_GEF_p MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_phosph_GEF ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_GEF /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/PP1_g/I1 /kinetics/PKA_g/PKA_active/PKA_phosph_I1 SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_I1 /kinetics/PP1_g/I1 REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_I1 /kinetics/PP1_g/I1_p MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_phosph_I1 ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_phosph_I1 /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AC_g/cAMP_PDE /kinetics/PKA_g/PKA_active/phosph_PDE SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/phosph_PDE /kinetics/AC_g/cAMP_PDE REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/phosph_PDE /kinetics/AC_g/cAMP_PDEp MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/phosph_PDE ENZYME n
addmsg /kinetics/PKA_g/PKA_active/phosph_PDE /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/Ca_g/SERCA /kinetics/PKA_g/PKA_active/PKA_act_SERCA SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_SERCA /kinetics/Ca_g/SERCA REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_SERCA /kinetics/Ca_g/aSERCA MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_SERCA ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_SERCA /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/PKA_g/PKA_active/PKA_act_R SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_R /kinetics/mGluR5_g/mGluR5 REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_R /kinetics/mGluR5_g/RecpS870 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_R ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_R /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/PKA_g/PKA_active/PKA_act_GluR SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluR /kinetics/mGluR5_g/Rec_Glu REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluR /kinetics/mGluR5_g/RecpS870_Glu MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_GluR ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluR /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/mGluR5_g/Rec_Gq /kinetics/PKA_g/PKA_active/PKA_act_RG SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_RG /kinetics/mGluR5_g/Rec_Gq REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_RG /kinetics/mGluR5_g/RecpS870_Gq MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_RG ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_RG /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/mGluR5_g/Rec_Glu_Gq /kinetics/PKA_g/PKA_active/PKA_act_GluRG SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluRG /kinetics/mGluR5_g/Rec_Glu_Gq REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluRG /kinetics/mGluR5_g/RecpS870_Glu_Gq MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_GluRG ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_GluRG /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGRG /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/PKA_g/PKA_active/PKA_act_DHPGR SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGR /kinetics/DHPG_mGluR_g/Rec_DHPG REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGR /kinetics/DHPG_mGluR_g/RecpS870_DHPG MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_DHPGR ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_DHPGR /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS831 /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp /kinetics/AMPAR_g/Glu_sAMPARpS831 REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp /kinetics/AMPAR_g/Glu_sAMPARpS845S831 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_Glu_membAMPARp /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS831 /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp /kinetics/AMPAR_g/AMPA_sAMPARpS831 REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_AMPA_membAMPARp /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AMPAR_g/sAMPARpS831 /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 SUBSTRATE n 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 /kinetics/AMPAR_g/sAMPARpS831 REAC sA B 
addmsg /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 /kinetics/AMPAR_g/sAMPARpS845S831 MM_PRD pA
addmsg /kinetics/PKA_g/PKA_active /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 ENZYME n
addmsg /kinetics/PKA_g/PKA_active/PKA_act_sAMPARpS831 /kinetics/PKA_g/PKA_active REAC eA B
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/CaMKII_g/aCaMKII/AMPARpS845_act SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/AMPARpS845_act /kinetics/AMPAR_g/sAMPARpS845 REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/AMPARpS845_act /kinetics/AMPAR_g/sAMPARpS845S831 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/AMPARpS845_act ENZYME n 
addmsg /kinetics/Ca_g/SERCA /kinetics/CaMKII_g/aCaMKII/CaMKII_act_SERCA SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_SERCA /kinetics/Ca_g/SERCA REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_SERCA /kinetics/Ca_g/aSERCA MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/CaMKII_act_SERCA ENZYME n 
addmsg /kinetics/PI3K_g/GluRHomerPIKE_PI3K /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/PI3K_g/GluRHomerPIKE_PI3K REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/Ligands_g/Glutamate MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/PI3K_g/PI3K MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/mGluR5_g/intmGluR MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/HomerPIKE_g/PIKE_L MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact /kinetics/HomerPIKE_g/HomerpS117 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/GluRHomerpPIKEPI3K_inact ENZYME n 
addmsg /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/PI3K_g/DHPGRHomerPIKE_PI3K REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/Ligands_g/DHPG MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/PI3K_g/PI3K MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/mGluR5_g/intmGluR MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/HomerPIKE_g/PIKE_L MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact /kinetics/HomerPIKE_g/HomerpS117 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/DHPGRHomerpPIKEPI3K_inact ENZYME n 
addmsg /kinetics/AMPAR_g/sAMPAR /kinetics/CaMKII_g/aCaMKII/AMPAR_act SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/AMPAR_act /kinetics/AMPAR_g/sAMPAR REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/AMPAR_act /kinetics/AMPAR_g/sAMPARpS831 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/AMPAR_act ENZYME n 
addmsg /kinetics/synGAP_g/synGAP /kinetics/CaMKII_g/aCaMKII/synGAP_act SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/synGAP_act /kinetics/synGAP_g/synGAP REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/synGAP_act /kinetics/synGAP_g/synGAPp MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/synGAP_act ENZYME n 
addmsg /kinetics/synGAP_g/synGAP_PDZ /kinetics/CaMKII_g/aCaMKII/synGAP_PDZ_act SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/synGAP_PDZ_act /kinetics/synGAP_g/synGAP_PDZ REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/synGAP_PDZ_act /kinetics/synGAP_g/synGAPp_PDZ MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/synGAP_PDZ_act ENZYME n 
addmsg /kinetics/AMPAR_g/Glu_sAMPARpS845 /kinetics/CaMKII_g/aCaMKII/CaMKII_act_Glu_sAMPARp SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_Glu_sAMPARp /kinetics/AMPAR_g/Glu_sAMPARpS845 REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_Glu_sAMPARp /kinetics/AMPAR_g/Glu_sAMPARpS845S831 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/CaMKII_act_Glu_sAMPARp ENZYME n 
addmsg /kinetics/AMPAR_g/AMPA_sAMPARpS845 /kinetics/CaMKII_g/aCaMKII/CaMKII_act_AMPA_sAMPARp SUBSTRATE n 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_AMPA_sAMPARp /kinetics/AMPAR_g/AMPA_sAMPARpS845 REAC sA B 
addmsg /kinetics/CaMKII_g/aCaMKII/CaMKII_act_AMPA_sAMPARp /kinetics/AMPAR_g/AMPA_sAMPARpS845S831 MM_PRD pA 
addmsg /kinetics/CaMKII_g/aCaMKII /kinetics/CaMKII_g/aCaMKII/CaMKII_act_AMPA_sAMPARp ENZYME n 
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305 SUBSTRATE n 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII_g/CaMKII_thr286 REAC sA B 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305 /kinetics/CaMKII_g/CaMKIIppp MM_PRD pA 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305 ENZYME n 
addmsg /kinetics/CaMKII_g/CaMKII_CaM /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_286 SUBSTRATE n 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII_g/CaMKII_CaM REAC sA B 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_286 /kinetics/CaMKII_g/CaMKII_thr286p_CaM MM_PRD pA 
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_286 ENZYME n 
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305 SUBSTRATE n 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305 /kinetics/CaMKII_g/CaMKII_thr286 REAC sA B 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305 /kinetics/CaMKII_g/CaMKIIppp MM_PRD pA 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305 ENZYME n 
addmsg /kinetics/CaMKII_g/CaMKII_CaM /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_286 SUBSTRATE n 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_286 /kinetics/CaMKII_g/CaMKII_CaM REAC sA B 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_286 /kinetics/CaMKII_g/CaMKII_thr286p_CaM MM_PRD pA 
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_286 ENZYME n 
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras SUBSTRATE n 
addmsg /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras /kinetics/Ras_g/GDP_Ras REAC sA B 
addmsg /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras /kinetics/Ras_g/GTP_Ras MM_PRD pA
addmsg /kinetics/Ras_g/GEF_Gprot_bg /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras ENZYME n
addmsg /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras /kinetics/Ras_g/GEF_Gprot_bg REAC eA B
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Ras_g/inact_GEF/basal_GEF_activity SUBSTRATE n 
addmsg /kinetics/Ras_g/inact_GEF/basal_GEF_activity /kinetics/Ras_g/GDP_Ras REAC sA B 
addmsg /kinetics/Ras_g/inact_GEF/basal_GEF_activity /kinetics/Ras_g/GTP_Ras MM_PRD pA
addmsg /kinetics/Ras_g/inact_GEF /kinetics/Ras_g/inact_GEF/basal_GEF_activity ENZYME n
addmsg /kinetics/Ras_g/inact_GEF/basal_GEF_activity /kinetics/Ras_g/inact_GEF REAC eA B
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Ras_g/GEF_p/GEF_p_act_Ras SUBSTRATE n 
addmsg /kinetics/Ras_g/GEF_p/GEF_p_act_Ras /kinetics/Ras_g/GDP_Ras REAC sA B 
addmsg /kinetics/Ras_g/GEF_p/GEF_p_act_Ras /kinetics/Ras_g/GTP_Ras MM_PRD pA
addmsg /kinetics/Ras_g/GEF_p /kinetics/Ras_g/GEF_p/GEF_p_act_Ras ENZYME n
addmsg /kinetics/Ras_g/GEF_p/GEF_p_act_Ras /kinetics/Ras_g/GEF_p REAC eA B
addmsg /kinetics/Ras_g/GTP_Ras /kinetics/Ras_g/GAP/GAP_inact_Ras SUBSTRATE n 
addmsg /kinetics/Ras_g/GAP/GAP_inact_Ras /kinetics/Ras_g/GTP_Ras REAC sA B 
addmsg /kinetics/Ras_g/GAP/GAP_inact_Ras /kinetics/Ras_g/GDP_Ras MM_PRD pA
addmsg /kinetics/Ras_g/GAP /kinetics/Ras_g/GAP/GAP_inact_Ras ENZYME n
addmsg /kinetics/Ras_g/GAP/GAP_inact_Ras /kinetics/Ras_g/GAP REAC eA B
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras SUBSTRATE n 
addmsg /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras /kinetics/Ras_g/GDP_Ras REAC sA B 
addmsg /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras /kinetics/Ras_g/GTP_Ras MM_PRD pA
addmsg /kinetics/Ras_g/CaM_GEF /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras ENZYME n
addmsg /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras /kinetics/Ras_g/CaM_GEF REAC eA B
addmsg /kinetics/CaM_g/neurogranin_p /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin /kinetics/CaM_g/neurogranin_p REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin /kinetics/CaM_g/neurogranin MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin ENZYME n 
addmsg /kinetics/PP1_g/I1_p /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_inhib1 SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_inhib1 /kinetics/PP1_g/I1_p REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_inhib1 /kinetics/PP1_g/I1 MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_inhib1 ENZYME n 
addmsg /kinetics/PP1_g/PP1_I1_p /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_PP1_I_p SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_PP1_I_p /kinetics/PP1_g/PP1_I1_p REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_PP1_I_p /kinetics/PP1_g/PP1_I1 MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_PP1_I_p ENZYME n 
addmsg /kinetics/AMPAR_g/intAMPARpS845 /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845_inact SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845_inact /kinetics/AMPAR_g/intAMPARpS845 REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845_inact /kinetics/AMPAR_g/intAMPAR MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845_inact ENZYME n 
addmsg /kinetics/AMPAR_g/intAMPARpS845S831 /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845S831_inact SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845S831_inact /kinetics/AMPAR_g/intAMPARpS845S831 REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845S831_inact /kinetics/AMPAR_g/intAMPARpS831 MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/intAMPARpS845S831_inact ENZYME n 
addmsg /kinetics/AMPAR_g/sAMPARpS845 /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845_inact SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845_inact /kinetics/AMPAR_g/sAMPARpS845 REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845_inact /kinetics/AMPAR_g/sAMPAR MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845_inact ENZYME n 
addmsg /kinetics/AMPAR_g/sAMPARpS845S831 /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845S831_inact SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845S831_inact /kinetics/AMPAR_g/sAMPARpS845S831 REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845S831_inact /kinetics/AMPAR_g/sAMPARpS831 MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/sAMPARpS845S831_inact ENZYME n 
addmsg /kinetics/HomerPIKE_g/HomerpS117 /kinetics/PP2B_g/CaM(Ca)n_CaNAB/Homer_deph SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/Homer_deph /kinetics/HomerPIKE_g/HomerpS117 REAC sA B 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB/Homer_deph /kinetics/HomerPIKE_g/Homer1c MM_PRD pA 
addmsg /kinetics/PP2B_g/CaM(Ca)n_CaNAB /kinetics/PP2B_g/CaM(Ca)n_CaNAB/Homer_deph ENZYME n 
addmsg /kinetics/PP1_g/I1_p /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM SUBSTRATE n 
addmsg /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM /kinetics/PP1_g/I1_p REAC sA B 
addmsg /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM /kinetics/PP1_g/I1 MM_PRD pA
addmsg /kinetics/PP2B_g/CaNAB_Ca4 /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM ENZYME n
addmsg /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM /kinetics/PP2B_g/CaNAB_Ca4 REAC eA B
addmsg /kinetics/Ras_g/GTP_Ras /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP SUBSTRATE n 
addmsg /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP /kinetics/Ras_g/GTP_Ras REAC sA B 
addmsg /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP /kinetics/Ras_g/GDP_Ras MM_PRD pA
addmsg /kinetics/synGAP_g/synGAP /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP ENZYME n
addmsg /kinetics/synGAP_g/synGAP/synGAP_GTPtoGDP /kinetics/synGAP_g/synGAP REAC eA B
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/Ca_leak_to_cytoplasm/leak_ER_to_cyt SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_leak_to_cytoplasm/leak_ER_to_cyt /kinetics/Ca_g/Ca_ER REAC sA B 
addmsg /kinetics/Ca_g/Ca_leak_to_cytoplasm/leak_ER_to_cyt /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/Ca_g/Ca_leak_to_cytoplasm /kinetics/Ca_g/Ca_leak_to_cytoplasm/leak_ER_to_cyt ENZYME n 
addmsg /kinetics/Ca_g/Ca /kinetics/Ca_g/PMCA/Pump SUBSTRATE n 
addmsg /kinetics/Ca_g/PMCA/Pump /kinetics/Ca_g/Ca REAC sA B 
addmsg /kinetics/Ca_g/PMCA/Pump /kinetics/Ca_g/Ca_ext MM_PRD pA 
addmsg /kinetics/Ca_g/PMCA /kinetics/Ca_g/PMCA/Pump ENZYME n 
addmsg /kinetics/Ca_g/Ca_ext /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt SUBSTRATE n 
addmsg /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt /kinetics/Ca_g/Ca_ext REAC sA B 
addmsg /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/Ca_g/Ca_leak_from_extracell /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt ENZYME n 
addmsg /kinetics/Ca_g/Ca /kinetics/Ca_g/SERCA/bERPump SUBSTRATE n 
addmsg /kinetics/Ca_g/SERCA/bERPump /kinetics/Ca_g/Ca REAC sA B 
addmsg /kinetics/Ca_g/SERCA/bERPump /kinetics/Ca_g/Ca_ER MM_PRD pA 
addmsg /kinetics/Ca_g/SERCA /kinetics/Ca_g/SERCA/bERPump ENZYME n 
addmsg /kinetics/Ca_g/Ca /kinetics/Ca_g/aSERCA/ERPump SUBSTRATE n 
addmsg /kinetics/Ca_g/aSERCA/ERPump /kinetics/Ca_g/Ca REAC sA B 
addmsg /kinetics/Ca_g/aSERCA/ERPump /kinetics/Ca_g/Ca_ER MM_PRD pA 
addmsg /kinetics/Ca_g/aSERCA /kinetics/Ca_g/aSERCA/ERPump ENZYME n 
addmsg /kinetics/Ca_g/Ca_ext /kinetics/Ca_g/aVGCC/VGCC_chan SUBSTRATE n 
addmsg /kinetics/Ca_g/aVGCC/VGCC_chan /kinetics/Ca_g/Ca_ext REAC sA B 
addmsg /kinetics/Ca_g/aVGCC/VGCC_chan /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/Ca_g/aVGCC /kinetics/Ca_g/aVGCC/VGCC_chan ENZYME n 
addmsg /kinetics/Ca_g/Ca_ER /kinetics/Ca_g/aIP3R/IP3RChan SUBSTRATE n 
addmsg /kinetics/Ca_g/aIP3R/IP3RChan /kinetics/Ca_g/Ca_ER REAC sA B 
addmsg /kinetics/Ca_g/aIP3R/IP3RChan /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/Ca_g/aIP3R /kinetics/Ca_g/aIP3R/IP3RChan ENZYME n 
addmsg /kinetics/Ca_g/Ca_ext /kinetics/Ca_g/Orai1_open/SOCE SUBSTRATE n 
addmsg /kinetics/Ca_g/Orai1_open/SOCE /kinetics/Ca_g/Ca_ext REAC sA B 
addmsg /kinetics/Ca_g/Orai1_open/SOCE /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/Ca_g/Orai1_open /kinetics/Ca_g/Orai1_open/SOCE ENZYME n 
addmsg /kinetics/S6K_g/S6K_p /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K /kinetics/S6K_g/S6K_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K /kinetics/S6K_g/S6K MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/dephos_clus_S6K /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/S6K_g/S6K_thr_412 /kinetics/Phosphatase_g/PP2A/dephos_S6K SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_S6K /kinetics/S6K_g/S6K_thr_412 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_S6K /kinetics/S6K_g/S6K_p MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/dephos_S6K ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/dephos_S6K /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/S6K_g/S6K_thr_252 /kinetics/Phosphatase_g/PP2A/dephosp_S6K SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/dephosp_S6K /kinetics/S6K_g/S6K_thr_252 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/dephosp_S6K /kinetics/S6K_g/S6K_thr_412 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/dephosp_S6K ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/dephosp_S6K /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/TransElong_g/eEFthr_56 /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho /kinetics/TransElong_g/eEFthr_56 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho /kinetics/TransElong_g/eEF2 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/eEF2thr_56_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/_4EBP_g/_4E_BP_t37_46_s65 /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p /kinetics/_4EBP_g/_4E_BP_t37_46_s65 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p /kinetics/_4EBP_g/_4E_BP_t37_46 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p_p /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/_4EBP_g/_4E_BP_t37_46 /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p /kinetics/_4EBP_g/_4E_BP_t37_46 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p /kinetics/_4EBP_g/_4E_BP MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_4E_BP_p /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp /kinetics/_4EBP_g/eIF4E_BP_t37_46 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPpp /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/_4EBP_g/eIF4E_BP_t37_46 /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp /kinetics/_4EBP_g/eIF4E_BP_t37_46 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp /kinetics/_4EBP_g/eIF4E_BP MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_eIF4EBPp /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/FMRP_g/FMRP_p /kinetics/Phosphatase_g/PP2A/dephos_FMRP SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_FMRP /kinetics/FMRP_g/FMRP_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/dephos_FMRP /kinetics/FMRP_g/FMRP MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/dephos_FMRP ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/dephos_FMRP /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/PP1_g/I1_p /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 /kinetics/PP1_g/I1_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 /kinetics/PP1_g/I1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1 /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/PP1_g/PP1_I1_p /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p /kinetics/PP1_g/PP1_I1_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p /kinetics/PP1_g/PP1_I1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/craf_1_p_p /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho /kinetics/MAPK_g/craf_1_p_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho /kinetics/MAPK_g/craf_1_p MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/craf_p_p_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/craf_1_p /kinetics/Phosphatase_g/PP2A/craf_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/craf_dephospho /kinetics/MAPK_g/craf_1_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/craf_dephospho /kinetics/MAPK_g/craf_1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/craf_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/craf_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/craf_1_p_ser259 /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 /kinetics/MAPK_g/craf_1_p_ser259 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 /kinetics/MAPK_g/craf_1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/deph_raf_ser259 /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p_p /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho /kinetics/MAPK_g/MAPKK_p_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho /kinetics/MAPK_g/MAPKK_p MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser /kinetics/MAPK_g/MAPKK_p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser /kinetics/MAPK_g/MAPKK MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/MAPKK_dephospho_ser /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/RpT840barr2craf1p_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473 /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 /kinetics/AKT_g/PIP3_AKT_t308_s473 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 /kinetics/AKT_g/PIP3_AKT_thr308 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Dephos_AKTser473 /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/AKT_g/PIP3_AKT_thr308 /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 /kinetics/AKT_g/PIP3_AKT_thr308 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 /kinetics/AKT_g/PIP3_AKT MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Dephosph_AKTthr308 /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/barr2_g/Isob2ARp2 /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph /kinetics/barr2_g/Isob2ARp2 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph /kinetics/b2AR_g/Iso_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp2_deph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/barr2_g/Epib2ARp1 /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph /kinetics/barr2_g/Epib2ARp1 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph /kinetics/b2AR_g/Epi_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp1_deph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/barr2_g/Epib2ARp2 /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph /kinetics/barr2_g/Epib2ARp2 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph /kinetics/b2AR_g/Epi_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Epib2ARp2_deph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/barr2_g/Isob2ARp1 /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph /kinetics/barr2_g/Isob2ARp1 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph /kinetics/b2AR_g/Iso_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Isob2ARp1_deph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/Int_mGluRpT840 /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph /kinetics/mGluR5_g/Int_mGluRpT840 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph /kinetics/mGluR5_g/intmGluR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpT840_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RecpS870 /kinetics/Phosphatase_g/PP2A/RpS870_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870_dephospho /kinetics/mGluR5_g/RecpS870 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870_dephospho /kinetics/mGluR5_g/mGluR5 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/RpS870_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/RpS870_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RecpS870_Gq /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho /kinetics/mGluR5_g/RecpS870_Gq REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho /kinetics/mGluR5_g/Rec_Gq MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/RpS870G_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RecpS870_Glu_Gq /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho /kinetics/mGluR5_g/RecpS870_Glu_Gq REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho /kinetics/mGluR5_g/Rec_Glu_Gq MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870G_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho /kinetics/DHPG_mGluR_g/RecpS870_DHPG REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho /kinetics/DHPG_mGluR_g/Rec_DHPG MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RecpS870_Glu /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho /kinetics/mGluR5_g/RecpS870_Glu REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho /kinetics/mGluR5_g/Rec_Glu MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/LRpS870_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/DHPGRpS870G_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/Int_RpS901 /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph /kinetics/mGluR5_g/Int_RpS901 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph /kinetics/mGluR5_g/intmGluR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/IntmGluRpS901_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RpS870S901 /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho /kinetics/mGluR5_g/RpS870S901 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho /kinetics/mGluR5_g/RpS901 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/mGluR5_g/RpS870S901G /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho /kinetics/mGluR5_g/RpS870S901G REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho /kinetics/mGluR5_g/RpS901G MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/RpS870S901G_dephospho /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/b2AR_g/Int_b2ARp1 /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph /kinetics/b2AR_g/Int_b2ARp1 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph /kinetics/b2AR_g/Int_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/Intb2ARp1_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph /kinetics/MAPK_g/Intb2ARp1barr2_craf1p REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph /kinetics/MAPK_g/Intb2ARp1barr2_craf1 MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp1barr2craf1p_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/b2AR_g/Int_b2ARp2 /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph /kinetics/b2AR_g/Int_b2ARp2 REAC sA B 
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph /kinetics/b2AR_g/Int_b2AR MM_PRD pA
addmsg /kinetics/Phosphatase_g/PP2A /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph ENZYME n
addmsg /kinetics/Phosphatase_g/PP2A/b2ARp2barr2p_dephosph /kinetics/Phosphatase_g/PP2A REAC eA B
addmsg /kinetics/MAPK_g/MAPK_p /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph /kinetics/MAPK_g/MAPK_p REAC sA B 
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph /kinetics/MAPK_g/MAPK MM_PRD pA
addmsg /kinetics/Phosphatase_g/MKP_1 /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph ENZYME n
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph /kinetics/Phosphatase_g/MKP_1 REAC eA B
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph SUBSTRATE n 
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph /kinetics/MAPK_g/MAPK_p_p REAC sA B 
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph /kinetics/MAPK_g/MAPK_p MM_PRD pA
addmsg /kinetics/Phosphatase_g/MKP_1 /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph ENZYME n
addmsg /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph /kinetics/Phosphatase_g/MKP_1 REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 SUBSTRATE n 
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 /kinetics/PI3K_g/PIP3 MM_PRD pA
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 ENZYME n
addmsg /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx/SHCpGrb2Gab1PI3K_phos_PIP2 /kinetics/PI3K_g/SHCp_Grb2_Gab1_PI3K_clx REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 SUBSTRATE n 
addmsg /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 /kinetics/PI3K_g/PIP3 MM_PRD pA
addmsg /kinetics/PI3K_g/PI3K_basal /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 ENZYME n
addmsg /kinetics/PI3K_g/PI3K_basal/bPI3K_phos_PIP2 /kinetics/PI3K_g/PI3K_basal REAC eA B
addmsg /kinetics/PI3K_g/PIP3 /kinetics/PI3K_g/PTEN/PIP3_dephosp SUBSTRATE n 
addmsg /kinetics/PI3K_g/PTEN/PIP3_dephosp /kinetics/PI3K_g/PIP3 REAC sA B 
addmsg /kinetics/PI3K_g/PTEN/PIP3_dephosp /kinetics/PLCb_g/PIP2 MM_PRD pA
addmsg /kinetics/PI3K_g/PTEN /kinetics/PI3K_g/PTEN/PIP3_dephosp ENZYME n
addmsg /kinetics/PI3K_g/PTEN/PIP3_dephosp /kinetics/PI3K_g/PTEN REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP SUBSTRATE n 
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP /kinetics/PI3K_g/PIP3 MM_PRD pA
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP ENZYME n
addmsg /kinetics/PI3K_g/Ras_GTP_PI3K/PIP2_phospho_Ras_GTP /kinetics/PI3K_g/Ras_GTP_PI3K REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PI3K_g/tLRHomerPIKE_PI3K/PIP2phospho_HomerPIKE SUBSTRATE n 
addmsg /kinetics/PI3K_g/tLRHomerPIKE_PI3K/PIP2phospho_HomerPIKE /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PI3K_g/tLRHomerPIKE_PI3K/PIP2phospho_HomerPIKE /kinetics/PI3K_g/PIP3 MM_PRD pA 
addmsg /kinetics/PI3K_g/tLRHomerPIKE_PI3K /kinetics/PI3K_g/tLRHomerPIKE_PI3K/PIP2phospho_HomerPIKE ENZYME n 
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr /kinetics/PLCb_g/DAG MM_PRD pA
addmsg /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr /kinetics/PLCb_g/IP3 MM_PRD pA
addmsg /kinetics/PLCb_g/PLC_Ca /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr ENZYME n
addmsg /kinetics/PLCb_g/PLC_Ca/PLC_Ca_PIP2_hydr /kinetics/PLCb_g/PLC_Ca REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr SUBSTRATE n 
addmsg /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr /kinetics/PLCb_g/DAG MM_PRD pA
addmsg /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr /kinetics/PLCb_g/IP3 MM_PRD pA
addmsg /kinetics/PLCb_g/PLC_Ca_Gq /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr ENZYME n
addmsg /kinetics/PLCb_g/PLC_Ca_Gq/PLC_Ca_Gq_PIP2_hydr /kinetics/PLCb_g/PLC_Ca_Gq REAC eA B
addmsg /kinetics/AC_g/cAMP /kinetics/AC_g/PDE1/PDE1_enz SUBSTRATE n 
addmsg /kinetics/AC_g/PDE1/PDE1_enz /kinetics/AC_g/cAMP REAC sA B 
addmsg /kinetics/AC_g/PDE1/PDE1_enz /kinetics/AC_g/AMP MM_PRD pA
addmsg /kinetics/AC_g/PDE1 /kinetics/AC_g/PDE1/PDE1_enz ENZYME n
addmsg /kinetics/AC_g/PDE1/PDE1_enz /kinetics/AC_g/PDE1 REAC eA B
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC1_CaM/AC1CaM_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC1_CaM/AC1CaM_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC1_CaM/AC1CaM_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC1_CaM /kinetics/AC_g/AC1_CaM/AC1CaM_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC2p/AC2p_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC2p/AC2p_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC2p/AC2p_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC2p /kinetics/AC_g/AC2p/AC2p_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC2_Gs/AC2Gs_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC2_Gs/AC2Gs_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC2_Gs/AC2Gs_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC2_Gs /kinetics/AC_g/AC2_Gs/AC2Gs_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC1_Gs/AC1Gs_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC1_Gs/AC1Gs_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC1_Gs/AC1Gs_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC1_Gs /kinetics/AC_g/AC1_Gs/AC1Gs_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC2p_Gs/AC2pGs_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC2p_Gs/AC2pGs_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC2p_Gs/AC2pGs_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC2p_Gs /kinetics/AC_g/AC2p_Gs/AC2pGs_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/cAMP /kinetics/AC_g/cAMP_PDE/PDE SUBSTRATE n 
addmsg /kinetics/AC_g/cAMP_PDE/PDE /kinetics/AC_g/cAMP REAC sA B 
addmsg /kinetics/AC_g/cAMP_PDE/PDE /kinetics/AC_g/AMP MM_PRD pA
addmsg /kinetics/AC_g/cAMP_PDE /kinetics/AC_g/cAMP_PDE/PDE ENZYME n
addmsg /kinetics/AC_g/cAMP_PDE/PDE /kinetics/AC_g/cAMP_PDE REAC eA B
addmsg /kinetics/AC_g/cAMP /kinetics/AC_g/cAMP_PDEp/PDE_p SUBSTRATE n 
addmsg /kinetics/AC_g/cAMP_PDEp/PDE_p /kinetics/AC_g/cAMP REAC sA B 
addmsg /kinetics/AC_g/cAMP_PDEp/PDE_p /kinetics/AC_g/AMP MM_PRD pA
addmsg /kinetics/AC_g/cAMP_PDEp /kinetics/AC_g/cAMP_PDEp/PDE_p ENZYME n
addmsg /kinetics/AC_g/cAMP_PDEp/PDE_p /kinetics/AC_g/cAMP_PDEp REAC eA B
addmsg /kinetics/AC_g/cAMP /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz SUBSTRATE n 
addmsg /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz /kinetics/AC_g/cAMP REAC sA B 
addmsg /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz /kinetics/AC_g/AMP MM_PRD pA
addmsg /kinetics/AC_g/CaM_PDE1 /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz ENZYME n
addmsg /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz /kinetics/AC_g/CaM_PDE1 REAC eA B
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC2_Gs_Fsk/AC2GsFsk_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC2_Gs_Fsk/AC2GsFsk_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC2_Gs_Fsk/AC2GsFsk_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC2_Gs_Fsk /kinetics/AC_g/AC2_Gs_Fsk/AC2GsFsk_form_cAMP ENZYME n 
addmsg /kinetics/AC_g/ATP /kinetics/AC_g/AC1_Gs_Fsk/AC1GsFsk_form_cAMP SUBSTRATE n 
addmsg /kinetics/AC_g/AC1_Gs_Fsk/AC1GsFsk_form_cAMP /kinetics/AC_g/ATP REAC sA B 
addmsg /kinetics/AC_g/AC1_Gs_Fsk/AC1GsFsk_form_cAMP /kinetics/AC_g/cAMP MM_PRD pA 
addmsg /kinetics/AC_g/AC1_Gs_Fsk /kinetics/AC_g/AC1_Gs_Fsk/AC1GsFsk_form_cAMP ENZYME n 
addmsg /kinetics/MAPK_g/craf_1 /kinetics/PKC_g/PKC_active/PKC_act_raf SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/PKC_act_raf /kinetics/MAPK_g/craf_1 REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/PKC_act_raf /kinetics/MAPK_g/craf_1_p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/PKC_act_raf ENZYME n 
addmsg /kinetics/Ras_g/GAP /kinetics/PKC_g/PKC_active/PKC_inact_GAP SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/PKC_inact_GAP /kinetics/Ras_g/GAP REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/PKC_inact_GAP /kinetics/Ras_g/GAP_p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/PKC_inact_GAP ENZYME n 
addmsg /kinetics/Ras_g/inact_GEF /kinetics/PKC_g/PKC_active/PKC_act_GEF SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/PKC_act_GEF /kinetics/Ras_g/inact_GEF REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/PKC_act_GEF /kinetics/Ras_g/GEF_p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/PKC_act_GEF ENZYME n 
addmsg /kinetics/CaM_g/neurogranin /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin /kinetics/CaM_g/neurogranin REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin /kinetics/CaM_g/neurogranin_p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin ENZYME n 
addmsg /kinetics/CaM_g/neurogranin_CaM /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM /kinetics/CaM_g/neurogranin_CaM REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM /kinetics/CaM_g/CaM MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM /kinetics/CaM_g/neurogranin_p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM ENZYME n 
addmsg /kinetics/AC_g/AC2 /kinetics/PKC_g/PKC_active/phosph_AC2 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/phosph_AC2 /kinetics/AC_g/AC2 REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/phosph_AC2 /kinetics/AC_g/AC2p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/phosph_AC2 ENZYME n 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 /kinetics/PKC_g/PKC_active/mGluRbarr2_craf1_act SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/mGluRbarr2_craf1_act /kinetics/MAPK_g/IntmGluRpT840barr2_craf1 REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/mGluRbarr2_craf1_act /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/mGluRbarr2_craf1_act ENZYME n 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1 /kinetics/PKC_g/PKC_active/b2ARp1barr2_craf1_act SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/b2ARp1barr2_craf1_act /kinetics/MAPK_g/Intb2ARp1barr2_craf1 REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/b2ARp1barr2_craf1_act /kinetics/MAPK_g/Intb2ARp1barr2_craf1p MM_PRD pA 
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/b2ARp1barr2_craf1_act ENZYME n 
addmsg /kinetics/mGluR5_g/RecpS870_Glu_Gq /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 /kinetics/mGluR5_g/RecpS870_Glu_Gq REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 /kinetics/Ligands_g/Glutamate MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 /kinetics/mGluR5_g/RpS870S901G MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 ENZYME n
addmsg /kinetics/PKC_g/PKC_active/LRpS870G_phos_S901 /kinetics/PKC_g/PKC_active REAC eA B
addmsg /kinetics/mGluR5_g/Rec_Glu_Gq /kinetics/PKC_g/PKC_active/LRG_phos_S901 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/LRG_phos_S901 /kinetics/mGluR5_g/Rec_Glu_Gq REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/LRG_phos_S901 /kinetics/Ligands_g/Glutamate MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active/LRG_phos_S901 /kinetics/mGluR5_g/RpS901G MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/LRG_phos_S901 ENZYME n
addmsg /kinetics/PKC_g/PKC_active/LRG_phos_S901 /kinetics/PKC_g/PKC_active REAC eA B
addmsg /kinetics/mGluR5_g/mGluR5 /kinetics/PKC_g/PKC_active/mGluR_phos_S901 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/mGluR_phos_S901 /kinetics/mGluR5_g/mGluR5 REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/mGluR_phos_S901 /kinetics/mGluR5_g/RpS901 MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/mGluR_phos_S901 ENZYME n
addmsg /kinetics/PKC_g/PKC_active/mGluR_phos_S901 /kinetics/PKC_g/PKC_active REAC eA B
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 /kinetics/DHPG_mGluR_g/Rec_DHPG_Gq REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 /kinetics/Ligands_g/DHPG MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 /kinetics/mGluR5_g/RpS901G MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 ENZYME n
addmsg /kinetics/PKC_g/PKC_active/DHPGRG_phos_S901 /kinetics/PKC_g/PKC_active REAC eA B
addmsg /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 SUBSTRATE n 
addmsg /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 /kinetics/DHPG_mGluR_g/RecpS870_DHPG_Gq REAC sA B 
addmsg /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 /kinetics/Ligands_g/DHPG MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 /kinetics/mGluR5_g/RpS870S901G MM_PRD pA
addmsg /kinetics/PKC_g/PKC_active /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 ENZYME n
addmsg /kinetics/PKC_g/PKC_active/DHPGRpS870G_phos_S901 /kinetics/PKC_g/PKC_active REAC eA B
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA /kinetics/PLA2_g/APC REAC sA B 
addmsg /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA /kinetics/PLA2_g/Arachidonic_Acid MM_PRD pA
addmsg /kinetics/PLA2_g/PLA2_Ca_p /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA ENZYME n
addmsg /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA /kinetics/PLA2_g/PLA2_Ca_p REAC eA B
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA /kinetics/PLA2_g/APC REAC sA B 
addmsg /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA /kinetics/PLA2_g/Arachidonic_Acid MM_PRD pA
addmsg /kinetics/PLA2_g/PIP2_PLA2_p /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA ENZYME n
addmsg /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA /kinetics/PLA2_g/PIP2_PLA2_p REAC eA B
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA /kinetics/PLA2_g/APC REAC sA B 
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA /kinetics/PLA2_g/Arachidonic_Acid MM_PRD pA
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_p /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA ENZYME n
addmsg /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA /kinetics/PLA2_g/PIP2_Ca_PLA2_p REAC eA B
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA /kinetics/PLA2_g/APC REAC sA B 
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA /kinetics/PLA2_g/Arachidonic_Acid MM_PRD pA
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_p /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA ENZYME n
addmsg /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA /kinetics/PLA2_g/DAG_Ca_PLA2_p REAC eA B
addmsg /kinetics/PLA2_g/APC /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA SUBSTRATE n 
addmsg /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA /kinetics/PLA2_g/APC REAC sA B 
addmsg /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA /kinetics/PLA2_g/Arachidonic_Acid MM_PRD pA
addmsg /kinetics/PLA2_g/PLA2_p_Ca /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA ENZYME n
addmsg /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA /kinetics/PLA2_g/PLA2_p_Ca REAC eA B
addmsg /kinetics/_4EBP_g/eIF4E_BP_t37_46 /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho /kinetics/_4EBP_g/eIF4E_BP_t37_46 REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho /kinetics/_4EBP_g/eIF4E_BP_t37_46_s65 MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_phospho /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/_4EBP_g/_4E_BP_t37_46 /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p /kinetics/_4EBP_g/_4E_BP_t37_46 REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p /kinetics/_4EBP_g/_4E_BP_t37_46_s65 MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_4E_BP_p_p /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/S6K_g/S6K /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K /kinetics/S6K_g/S6K REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K /kinetics/S6K_g/S6K_p MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/cluster_phospho_S6K /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/MAPK_g/craf_1_p /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback /kinetics/MAPK_g/craf_1_p REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback /kinetics/MAPK_g/craf_1_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_p_p_feedback /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/PLA2_g/PLA2_cytosolic /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 /kinetics/PLA2_g/PLA2_cytosolic REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 /kinetics/PLA2_g/PLA2_p MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPKpp_act_PLA2 /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/Sos_g/Sos /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos /kinetics/Sos_g/Sos REAC sA B 
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos /kinetics/Sos_g/Sosp MM_PRD pA
addmsg /kinetics/MAPK_g/MAPK_p_p /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos ENZYME n
addmsg /kinetics/MAPK_g/MAPK_p_p/MAPK_phos_Sos /kinetics/MAPK_g/MAPK_p_p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK /kinetics/MAPK_g/craf_1_p/MEK_phospho SUBSTRATE n 
addmsg /kinetics/MAPK_g/craf_1_p/MEK_phospho /kinetics/MAPK_g/MAPKK REAC sA B 
addmsg /kinetics/MAPK_g/craf_1_p/MEK_phospho /kinetics/MAPK_g/MAPKK_p MM_PRD pA
addmsg /kinetics/MAPK_g/craf_1_p /kinetics/MAPK_g/craf_1_p/MEK_phospho ENZYME n
addmsg /kinetics/MAPK_g/craf_1_p/MEK_phospho /kinetics/MAPK_g/craf_1_p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/craf_1_p/MEKp_phospho SUBSTRATE n 
addmsg /kinetics/MAPK_g/craf_1_p/MEKp_phospho /kinetics/MAPK_g/MAPKK_p REAC sA B 
addmsg /kinetics/MAPK_g/craf_1_p/MEKp_phospho /kinetics/MAPK_g/MAPKK_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/craf_1_p /kinetics/MAPK_g/craf_1_p/MEKp_phospho ENZYME n
addmsg /kinetics/MAPK_g/craf_1_p/MEKp_phospho /kinetics/MAPK_g/craf_1_p REAC eA B
addmsg /kinetics/MAPK_g/MAPK /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr /kinetics/MAPK_g/MAPK REAC sA B 
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr /kinetics/MAPK_g/MAPK_p MM_PRD pA
addmsg /kinetics/MAPK_g/MAPKK_p_p /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr ENZYME n
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKtyr /kinetics/MAPK_g/MAPKK_p_p REAC eA B
addmsg /kinetics/MAPK_g/MAPK_p /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr SUBSTRATE n 
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr /kinetics/MAPK_g/MAPK_p REAC sA B 
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr /kinetics/MAPK_g/MAPK_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/MAPKK_p_p /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr ENZYME n
addmsg /kinetics/MAPK_g/MAPKK_p_p/MAPKKthr /kinetics/MAPK_g/MAPKK_p_p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 SUBSTRATE n 
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 /kinetics/MAPK_g/MAPKK REAC sA B 
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 /kinetics/MAPK_g/MAPKK_p MM_PRD pA
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 ENZYME n
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_1 /kinetics/MAPK_g/Raf_p_GTP_Ras REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 SUBSTRATE n 
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 /kinetics/MAPK_g/MAPKK_p REAC sA B 
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 /kinetics/MAPK_g/MAPKK_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 ENZYME n
addmsg /kinetics/MAPK_g/Raf_p_GTP_Ras/Raf_p_GTP_Ras_2 /kinetics/MAPK_g/Raf_p_GTP_Ras REAC eA B
addmsg /kinetics/MAPK_g/MAPKK /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK SUBSTRATE n 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK /kinetics/MAPK_g/MAPKK REAC sA B 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK /kinetics/MAPK_g/MAPKK_p MM_PRD pA
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK ENZYME n
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEK /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp SUBSTRATE n 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp /kinetics/MAPK_g/MAPKK_p REAC sA B 
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp /kinetics/MAPK_g/MAPKK_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp ENZYME n
addmsg /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p/mGluRbarr2_phospho_MEKp /kinetics/MAPK_g/IntmGluRpT840barr2_craf1p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK_p /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp SUBSTRATE n 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp /kinetics/MAPK_g/MAPKK_p REAC sA B 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp /kinetics/MAPK_g/MAPKK_p_p MM_PRD pA
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp ENZYME n
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEKp /kinetics/MAPK_g/Intb2ARp1barr2_craf1p REAC eA B
addmsg /kinetics/MAPK_g/MAPKK /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK SUBSTRATE n 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK /kinetics/MAPK_g/MAPKK REAC sA B 
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK /kinetics/MAPK_g/MAPKK_p MM_PRD pA
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK ENZYME n
addmsg /kinetics/MAPK_g/Intb2ARp1barr2_craf1p/b2ARp1barr2_phospho_MEK /kinetics/MAPK_g/Intb2ARp1barr2_craf1p REAC eA B
addmsg /kinetics/S6K_g/S6K_thr_412 /kinetics/AKT_g/PDK1/PDK1_act_S6K SUBSTRATE n 
addmsg /kinetics/AKT_g/PDK1/PDK1_act_S6K /kinetics/S6K_g/S6K_thr_412 REAC sA B 
addmsg /kinetics/AKT_g/PDK1/PDK1_act_S6K /kinetics/S6K_g/S6K_thr_252 MM_PRD pA
addmsg /kinetics/AKT_g/PDK1 /kinetics/AKT_g/PDK1/PDK1_act_S6K ENZYME n
addmsg /kinetics/AKT_g/PDK1/PDK1_act_S6K /kinetics/AKT_g/PDK1 REAC eA B
addmsg /kinetics/AKT_g/PIP3_AKT /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 /kinetics/AKT_g/PIP3_AKT REAC sA B 
addmsg /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 /kinetics/AKT_g/PIP3_AKT_thr308 MM_PRD pA
addmsg /kinetics/AKT_g/PIP3_PDK1 /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 ENZYME n
addmsg /kinetics/AKT_g/PIP3_PDK1/phospho_thr308 /kinetics/AKT_g/PIP3_PDK1 REAC eA B
addmsg /kinetics/AKT_g/PIP3_AKT_thr308 /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 /kinetics/AKT_g/PIP3_AKT_thr308 REAC sA B 
addmsg /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 /kinetics/AKT_g/PIP3_AKT_t308_s473 MM_PRD pA
addmsg /kinetics/AKT_g/PIP3_PDK2 /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 ENZYME n
addmsg /kinetics/AKT_g/PIP3_PDK2/phosp_AKTser473 /kinetics/AKT_g/PIP3_PDK2 REAC eA B
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2 /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho /kinetics/TSC1_TSC2_g/TSC1_TSC2 REAC sA B 
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho /kinetics/TSC1_TSC2_g/TSC1_TSC2_p MM_PRD pA
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473 /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho ENZYME n
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/TSC2_phospho /kinetics/AKT_g/PIP3_AKT_t308_s473 REAC eA B
addmsg /kinetics/MAPK_g/craf_1 /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib SUBSTRATE n 
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib /kinetics/MAPK_g/craf_1 REAC sA B 
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib /kinetics/MAPK_g/craf_1_p_ser259 MM_PRD pA
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473 /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib ENZYME n
addmsg /kinetics/AKT_g/PIP3_AKT_t308_s473/Raf_inhib /kinetics/AKT_g/PIP3_AKT_t308_s473 REAC eA B
addmsg /kinetics/TSC1_TSC2_g/TSC1_TSC2 /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal SUBSTRATE n 
addmsg /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal /kinetics/TSC1_TSC2_g/TSC1_TSC2 REAC sA B 
addmsg /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal /kinetics/TSC1_TSC2_g/TSC1_TSC2_p MM_PRD pA
addmsg /kinetics/AKT_g/AKT_basal /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal ENZYME n
addmsg /kinetics/AKT_g/AKT_basal/TSC2_phospho_basal /kinetics/AKT_g/AKT_basal REAC eA B
addmsg /kinetics/PLCg_g/Ca_PLCg /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg SUBSTRATE n 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg /kinetics/PLCg_g/Ca_PLCg REAC sA B 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg /kinetics/PLCg_g/Ca_PLCgp MM_PRD pA
addmsg /kinetics/EGFR_g/L_EGFR /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg ENZYME n
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg /kinetics/EGFR_g/L_EGFR REAC eA B
addmsg /kinetics/Sos_g/SHC /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC SUBSTRATE n 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC /kinetics/Sos_g/SHC REAC sA B 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC /kinetics/Sos_g/SHCp MM_PRD pA
addmsg /kinetics/EGFR_g/L_EGFR /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC ENZYME n
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC /kinetics/EGFR_g/L_EGFR REAC eA B
addmsg /kinetics/PLCg_g/PLCg /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg SUBSTRATE n 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg /kinetics/PLCg_g/PLCg REAC sA B 
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg /kinetics/PLCg_g/PLCgp MM_PRD pA
addmsg /kinetics/EGFR_g/L_EGFR /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg ENZYME n
addmsg /kinetics/EGFR_g/L_EGFR/EGFR_act_PLCg /kinetics/EGFR_g/L_EGFR REAC eA B
addmsg /kinetics/Ras_g/GDP_Ras /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF SUBSTRATE n 
addmsg /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF /kinetics/Ras_g/GDP_Ras REAC sA B 
addmsg /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF /kinetics/Ras_g/GTP_Ras MM_PRD pA
addmsg /kinetics/Sos_g/SHCp_SosGrb2 /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF ENZYME n
addmsg /kinetics/Sos_g/SHCp_SosGrb2/Sos_Ras_GEF /kinetics/Sos_g/SHCp_SosGrb2 REAC eA B
addmsg /kinetics/Sos_g/SHC /kinetics/Sos_g/SHC_basal/bSHC_phospho SUBSTRATE n 
addmsg /kinetics/Sos_g/SHC_basal/bSHC_phospho /kinetics/Sos_g/SHC REAC sA B 
addmsg /kinetics/Sos_g/SHC_basal/bSHC_phospho /kinetics/Sos_g/SHCp MM_PRD pA
addmsg /kinetics/Sos_g/SHC_basal /kinetics/Sos_g/SHC_basal/bSHC_phospho ENZYME n
addmsg /kinetics/Sos_g/SHC_basal/bSHC_phospho /kinetics/Sos_g/SHC_basal REAC eA B
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr /kinetics/PLCb_g/DAG MM_PRD pA 
addmsg /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr /kinetics/PLCb_g/IP3 MM_PRD pA 
addmsg /kinetics/PLCg_g/Ca_PLCg /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr ENZYME n 
addmsg /kinetics/PLCb_g/PIP2 /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr SUBSTRATE n 
addmsg /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr /kinetics/PLCb_g/PIP2 REAC sA B 
addmsg /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr /kinetics/PLCb_g/DAG MM_PRD pA 
addmsg /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr /kinetics/PLCb_g/IP3 MM_PRD pA 
addmsg /kinetics/PLCg_g/Ca_PLCgp /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr ENZYME n 
addmsg /kinetics/PLCg_g/PLCg /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho SUBSTRATE n 
addmsg /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho /kinetics/PLCg_g/PLCg REAC sA B 
addmsg /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho /kinetics/PLCg_g/PLCgp MM_PRD pA
addmsg /kinetics/PLCg_g/PLCg_basal /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho ENZYME n
addmsg /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho /kinetics/PLCg_g/PLCg_basal REAC eA B
addmsg /kinetics/PLCg_g/PLCg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg SUBSTRATE n 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg /kinetics/PLCg_g/PLCg REAC sA B 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg /kinetics/PLCg_g/PLCgp MM_PRD pA
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg ENZYME n
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_PLCg /kinetics/TrKB_g/BDNF_TrKB2_p_clx REAC eA B
addmsg /kinetics/Sos_g/SHC /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC SUBSTRATE n 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC /kinetics/Sos_g/SHC REAC sA B 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC /kinetics/Sos_g/SHCp MM_PRD pA
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC ENZYME n
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_SHC /kinetics/TrKB_g/BDNF_TrKB2_p_clx REAC eA B
addmsg /kinetics/PLCg_g/Ca_PLCg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg SUBSTRATE n 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg /kinetics/PLCg_g/Ca_PLCg REAC sA B 
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg /kinetics/PLCg_g/Ca_PLCgp MM_PRD pA
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg ENZYME n
addmsg /kinetics/TrKB_g/BDNF_TrKB2_p_clx/TrKB_act_CaPLCg /kinetics/TrKB_g/BDNF_TrKB2_p_clx REAC eA B
addmsg /kinetics/Ca_g/Ca_ext /kinetics/NMDAR_g/aNMDAR/Glu_NMDAR_Chan SUBSTRATE n 
addmsg /kinetics/NMDAR_g/aNMDAR/Glu_NMDAR_Chan /kinetics/Ca_g/Ca_ext REAC sA B 
addmsg /kinetics/NMDAR_g/aNMDAR/Glu_NMDAR_Chan /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/NMDAR_g/aNMDAR /kinetics/NMDAR_g/aNMDAR/Glu_NMDAR_Chan ENZYME n 
addmsg /kinetics/Ca_g/Ca_ext /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan SUBSTRATE n 
addmsg /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan /kinetics/Ca_g/Ca_ext REAC sA B 
addmsg /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan /kinetics/Ca_g/Ca MM_PRD pA 
addmsg /kinetics/NMDAR_g/NMDA_NMDAR /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan ENZYME n 
addmsg /kinetics/b2AR_g/Iso_b2AR /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR /kinetics/b2AR_g/Iso_b2AR REAC sA B 
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR /kinetics/barr2_g/Isob2ARp1 MM_PRD pA
addmsg /kinetics/barr2_g/GRK5 /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR ENZYME n
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Iso_b2AR /kinetics/barr2_g/GRK5 REAC eA B
addmsg /kinetics/b2AR_g/Epi_b2AR /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR /kinetics/b2AR_g/Epi_b2AR REAC sA B 
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR /kinetics/barr2_g/Epib2ARp1 MM_PRD pA
addmsg /kinetics/barr2_g/GRK5 /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR ENZYME n
addmsg /kinetics/barr2_g/GRK5/GRK5_phos_Epi_b2AR /kinetics/barr2_g/GRK5 REAC eA B
addmsg /kinetics/mGluR5_g/Rec_Glu /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 /kinetics/mGluR5_g/Rec_Glu REAC sA B 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 /kinetics/mGluR5_g/Glu_mGluRpT840 MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 /kinetics/HomerPIKE_g/Homer1c MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 ENZYME n
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Glu_mGluR5 /kinetics/barr2_g/GRK2_memb REAC eA B
addmsg /kinetics/b2AR_g/Iso_b2AR /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR /kinetics/b2AR_g/Iso_b2AR REAC sA B 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR /kinetics/barr2_g/Isob2ARp2 MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR ENZYME n
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Iso_b2AR /kinetics/barr2_g/GRK2_memb REAC eA B
addmsg /kinetics/b2AR_g/Epi_b2AR /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR /kinetics/b2AR_g/Epi_b2AR REAC sA B 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR /kinetics/barr2_g/Epib2ARp2 MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR ENZYME n
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_Epi_b2AR /kinetics/barr2_g/GRK2_memb REAC eA B
addmsg /kinetics/DHPG_mGluR_g/Rec_DHPG /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 SUBSTRATE n 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 /kinetics/DHPG_mGluR_g/Rec_DHPG REAC sA B 
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 /kinetics/DHPG_mGluR_g/DHPG_mGluRpT840 MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 /kinetics/HomerPIKE_g/Homer1c MM_PRD pA
addmsg /kinetics/barr2_g/GRK2_memb /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 ENZYME n
addmsg /kinetics/barr2_g/GRK2_memb/GRK2_phos_DHPG_mGluR5 /kinetics/barr2_g/GRK2_memb REAC eA B
addmsg /kinetics/CaMKII_g/tot_autonomous_CaMKII /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__tot_autonomous_CaMKII.Conc PLOT Co *tot_autonomous_CaMKII *green
addmsg /kinetics/CaMKII_g/aCaMKII /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__aCaMKII.Conc PLOT Co *aCaMKII *40
addmsg /kinetics/CaMKII_g/tot_CaM_CaMKII /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__tot_CaM_CaMKII.Conc PLOT Co *tot_CaM_CaMKII *53
addmsg /kinetics/CaMKII_g/CaMKII_thr286p_CaM /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr286p_CaM.Conc PLOT Co *CaMKII_thr286p_CaM *55
addmsg /kinetics/CaMKII_g/CaMKII_thr306 /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr306.Conc PLOT Co *CaMKII_thr306 *23
addmsg /kinetics/CaMKII_g/CaMKII_thr286 /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_thr286.Conc PLOT Co *CaMKII_thr286 *red
addmsg /kinetics/CaMKII_g/CaMKIIppp /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKIIppp.Conc PLOT Co *CaMKIIppp *cyan
addmsg /kinetics/CaMKII_g/CaMKII /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII.Conc PLOT Co *CaMKII *6
addmsg /kinetics/CaMKII_g/CaMKII_CaM /graphs/conc1/model_0__kinetics_0__CaMKII_g_0__CaMKII_CaM.Conc PLOT Co *CaMKII_CaM *48
addmsg /kinetics/Ca_g/Ca /graphs/conc1/model_0__kinetics_0__Ca_g_0__Ca.Conc PLOT Co *Ca *red
addmsg /kinetics/synGAP_g/synGAPp_PDZ /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAPp_PDZ.Conc PLOT Co *synGAPp_PDZ *27
addmsg /kinetics/synGAP_g/synGAPp /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAPp.Conc PLOT Co *synGAPp *63
addmsg /kinetics/synGAP_g/synGAP /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAP.Conc PLOT Co *synGAP *48
addmsg /kinetics/synGAP_g/synGAP_PDZ /graphs/conc1/model_0__kinetics_0__synGAP_g_0__synGAP_PDZ.Conc PLOT Co *synGAP_PDZ *0

enddump
 // End of dump
call /kinetics/_43S_g/Q_R/notes LOAD \
"Q.R= Quaternary complex.Ribosome"
call /kinetics/_43S_g/Quaternary_clx/notes LOAD \
"Q= Quaternary complex"
call /kinetics/_43S_g/_43Scomplex/notes LOAD \
"40S_complex consist of Quaternary complex, mRNA complex, 40S Ribosomes."
call /kinetics/TransElong_g/Basal_Translation/notes LOAD \
"It will contribute to mTOR independent translation."
call /kinetics/_40S_g/_40S_inact/notes LOAD \
"Inactivated form of S6K"
call /kinetics/_40S_g/_40S/notes LOAD \
"Activated form of S6"
call /kinetics/AMPAR_g/intAMPARpS845/notes LOAD \
"_xMsg_/acc61[0]/model[0]/compartment_2[0]/from_memb prd /acc61[0]/model[0]/compartment_1[0]/IR reac"
call /kinetics/PP1_g/I1/notes LOAD \
"I1 is a 'mixed' inhibitor, but at high enz concs it looks like a non-compet inhibitor (Foulkes et al Eur J Biochem 132 309-313 9183). We treat it as non-compet, so it just turns the enz off without interacting with the binding site. Cohen et al ann rev bioch refer to results where conc is 1.5 to 1.8 uM. In order to get complete inhib of PP1, which is at 1.8 uM, we need >= 1.8 uM."
call /kinetics/PP1_g/I1_p/notes LOAD \
"Dephosph is mainly by PP2B"
call /kinetics/PKA_g/R2C2/notes LOAD \
"This is the R2C2 complex, consisting of 2 catalytic (C) subunits, and the R-dimer. See Taylor et al Ann Rev Biochem 1990 59:971-1005 for a review. The Doskeland and Ogreid review is better for numbers. Amount of PKA is about .5 uM."
call /kinetics/PKA_g/R2C2_cAMP/notes LOAD \
"CoInit was .0624"
call /kinetics/PKA_g/R2_cAMP4/notes LOAD \
"Starts at 0.15 for the test of fig 6 in Smith et al, but we aren't using that paper any more."
call /kinetics/PKA_g/PKA_inhibitor/notes LOAD \
"About 25% of PKA C subunit is dissociated in resting cells without having any noticable activity. Doskeland and Ogreid Int J biochem 13 pp1-19 suggest that this is because there is a corresponding amount of inhibitor protein."
call /kinetics/CaMKII_g/CaMKII/notes LOAD \
"Huge conc of CaMKII. In PSD it is 20-40% of protein, so we assume it is around 2.5% of protein in spine as a whole. This level is so high it is unlikely to matter much if we are off a bit. This comes to about 70 uM."
call /kinetics/CaMKII_g/CaMKII_thr286p_CaM/notes LOAD \
"From Hanson and Schulman, the thr286 is responsible for autonomous activation of CaMKII."
call /kinetics/CaMKII_g/CaMKIIppp/notes LOAD \
"From Hanson and Schulman, the CaMKII does a lot of autophosphorylation just after the CaM is released. This prevents further CaM binding and renders the enzyme quite independent of Ca."
call /kinetics/CaMKII_g/CaMKII_thr286/notes LOAD \
"I am not sure if we need to endow this one with a lot of enzs. It is likely to be a short-lived intermediate, since it will be phosphorylated further as soon as the CAM falls off."
call /kinetics/CaMKII_g/CaMKII_thr306/notes LOAD \
"This forms due to basal autophosphorylation, but I think it has to be considered as a pathway even if some CaM is floating around. In either case it will tend to block further binding of CaM, and will not display any enzyme activity. See Hanson and Schulman JBC 267:24 pp17216-17224 1992"
call /kinetics/Ras_g/GEF_Gprot_bg/notes LOAD \
"Guanine nucleotide exchange factor. This activates raf by exchanging bound GDP with GTP. I have left the GDP/GTP out of this reaction, it would be trivial to put them in. See Boguski & McCormick. Possible candidate molecules: RasGRF, smgGDS, Vav (in dispute). rasGRF: Kcat= 1.2/min Km = 680 nM smgGDS: Kcat: 0.37 /min, Km = 220 nM. vav: Turnover up over baseline by 10X,"
call /kinetics/Ras_g/inact_GEF/notes LOAD \
"Assume that SoS is present only at 50 nM. Revised to 100 nM to get equil to experimentally known levels."
call /kinetics/Ras_g/GEF_p/notes LOAD \
"phosphorylated and thereby activated form of GEF. See, e.g. Orita et al JBC 268:34 25542-25546 1993, Gulbins et al. It is not clear whether there is major specificity for tyr or ser/thr."
call /kinetics/Ras_g/GTP_Ras/notes LOAD \
"Only a very small fraction (7% unstim, 15% stim) of ras is GTP-bound. Gibbs et al JBC 265(33) 20437"
call /kinetics/Ras_g/GDP_Ras/notes LOAD \
"GDP bound form. See Rosen et al Neuron 12 1207-1221 June 1994. the activation loop is based on Boguski and McCormick Nature 366 643-654 93 Assume Ras is present at about the same level as craf-1, 0.2 uM. Hallberg et al JBC 269:6 3913-3916 1994 estimate upto 5-10% of cellular Raf is assoc with Ras. Given that only 5-10% of Ras is GTP-bound, we need similar amounts of Ras as Raf."
call /kinetics/Ras_g/GAP/notes LOAD \
"GTPase-activating proteins. See Boguski and McCormick. Turn off Ras by helping to hydrolyze bound GTP. This one is probably NF1, ie., Neurofibromin as it is inhibited by AA and lipids, and expressed in neural cells. p120-GAP is also a possible candidate, but is less regulated. Both may exist at similar levels. See Eccleston et al JBC 268(36) pp27012-19 Level=.002"
call /kinetics/Ras_g/inact_GEF_p/notes LOAD \
"Phosphorylation-inactivated form of GEF. See Hordijk et al JBC 269:5 3534-3538 1994 and Buregering et al EMBO J 12:11 4211-4220 1993"
call /kinetics/Ras_g/CaM_GEF/notes LOAD \
"See Farnsworth et al Nature 376 524-527 1995"
call /kinetics/PP2B_g/CaNAB/notes LOAD \
"We assume that the A and B subunits of PP2B are always bound under physiol conditions. Up to 1% of brain protein = 25 uM. I need to work out how it is distributed between cytosolic and particulate fractions. Tallant and Cheung '83 Biochem 22 3630-3635 have conc in many species, average for mammalian brain is around 1 uM."
call /kinetics/Ligands_g/Glutamate/notes LOAD \
"Varying the amount of (steady state) glu between .01 uM and up, the final amount of G*GTP complex does not change much. This means that the system should be reasonably robust wr to the amount of glu in the synaptic cleft. It would be nice to know how fast it is removed."
call /kinetics/CaM_g/CaM/notes LOAD \
"There is a LOT of this in the cell: upto 1% of total protein mass. (Alberts et al) Say 25 uM. Meyer et al Science 256 1199-1202 1992 refer to studies saying it is comparable to CaMK levels."
call /kinetics/CaM_g/neurogranin_p/notes LOAD \
"The phosph form does not bind CaM (Huang et al ABB 305:2 570-580 1993)"
call /kinetics/CaM_g/neurogranin/notes LOAD \
"Also known as RC3 and p17 and BICKS. Conc in brain _greaterthan__greaterthan_ 2 uM from Martzen and Slemmon J neurosci 64 92-100 1995 but others say less without any #s. Conc in dend spines is much higher than overall, so it could be anywhere from 2 uM to 50. We will estimate 10 uM as a starting point. Gerendasy et al JBC 269:35 22420-22426 1994 have a skeleton model (no numbers) indicating CaM-Ca(n) binding ...."
call /kinetics/CaM_g/CaM_Ca2/notes LOAD \
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/CaM_g/CaM_Ca/notes LOAD \
"This is the intermediate where the TR2 end (the high-affinity end) has bound the Ca but the TR1 end has not."
call /kinetics/Phosphatase_g/MKP_1/notes LOAD \
"MKP-1 dephosphoryates and inactivates MAPK in vivo: Sun et al Cell 75 487-493 1993. Levels of MKP-1 are regulated, and rise in 1 hour. Kinetics from Charles et al PNAS 90:5292-5296 1993. They refer to Charles et al Oncogene 7 187-190 who show that half-life of MKP1/3CH134 is 40 min. 80% deph of MAPK in 20 min Sep 17 1997: CoInit now 0.4x to 0.0032. See parm searches from jun96 on."
call /kinetics/PLCb_g/PLCb/notes LOAD \
"Total PLC = 0.8 uM see Ryu et al JBC 262 (26) pp 12511 1987"
call /kinetics/PLCb_g/PC/notes LOAD \
"Phosphatidylcholine is the main (around 55%) metabolic product of DAG, follwed by PE (around 25%). Ref is Welsh and Cabot, JCB35:231-245(1987)"
call /kinetics/AC_g/ATP/notes LOAD \
"ATP is present in all cells between 2 and 10 mM. See Lehninger."
call /kinetics/AC_g/AC1_CaM/notes LOAD \
"This version of cyclase is Calmodulin activated. Gs stims it but betagamma inhibits."
call /kinetics/AC_g/AC1/notes LOAD \
"Starting conc at 20 nM."
call /kinetics/AC_g/AC2p/notes LOAD \
"This version is activated by Gs and by a betagamma and phosphorylation."
call /kinetics/AC_g/AC2/notes LOAD \
"Starting at 0.015 uM."
call /kinetics/AC_g/cAMP_PDE/notes LOAD \
"The levels of the PDE are not known at this time. However, enough kinetic info and info about steady-state levels of cAMP etc are around to make it possible to estimate this."
call /kinetics/AC_g/cAMP_PDEp/notes LOAD \
"This form has about 2X activity as plain PDE. See Sette et al JBC 269:28 18271-18274 1994."
call /kinetics/AC_g/CaM_PDE1/notes LOAD \
"Activity up 6x following Ca-CaM binding."
call /kinetics/PKC_g/PKC_DAG/notes LOAD \
"CoInit was .0624"
call /kinetics/PKC_g/PKC_cytosolic/notes LOAD \
"Marquez et al J. Immun 149,2560(92) est 1e6/cell for chromaffin cells We will use 1 uM as our initial concen"
call /kinetics/PLA2_g/PLA2_cytosolic/notes LOAD \
"Calculated cytosolic was 20 nm from Wijkander and Sundler However, Leslie and Channon use about 400 nM. Need to confirm, but this is the value I use here. Another recalc of W&S gives 1uM"
call /kinetics/PLA2_g/APC/notes LOAD \
"arachodonylphosphatidylcholine is the favoured substrate from Wijkander and Sundler, JBC 202 pp 873-880, 1991. Their assay used 30 uM substrate, which is what the kinetics in this model are based on. For the later model we should locate a more realistic value for APC."
call /kinetics/PLA2_g/PLA2_p_Ca/notes LOAD \
"Phosphorylated form of PLA2. Still need to hook it up using kinases. PKA: Wightman et al JBC 257 pp6650 1982 PKC: Many refs, eg Gronich et al JBC 263 pp 16645, 1988 but see Lin etal MAPK: Lin et al, Cell 72 pp 269, 1993. Show 3x with MAPK but not PKC alone Do not know if there is a Ca requirement for active phosphorylated state."
call /kinetics/Gq_g/BetaGamma/notes LOAD \
"These exist in a nebulous sense in this model, basically only to balance the conservation equations. The details of their reassociation with G-GDP are not modeled Resting level =0.0094, stim level =.0236 from all42.g ish."
call /kinetics/Gq_g/G_pGTP/notes LOAD \
"Activated G protein. Berstein et al indicate that about 20-40% of the total Gq alpha should bind GTP at steady stim. This sim gives more like 65%."
call /kinetics/Gq_g/G_GDP/notes LOAD \
"From M&L, total Gprot = 1e5molecules/cell At equil, 92340 are here, 400 are in G*GTP, and another 600 are assoc with the PLC and 6475 are as G*GDP. This is OK. From Pang and Sternweis JBC 265:30 18707-12 1990 we get conc est 1.6 uM to 0.8 uM. A number of other factors are involved too."
call /kinetics/MAPK_g/craf_1/notes LOAD \
"Couldn't find any ref to the actual conc of craf-1 but I should try Strom et al Oncogene 5 pp 345 In line with the other kinases in the cascade, I estimate the conc to be 0.2 uM. To init we use 0.15, which is close to equil"
call /kinetics/MAPK_g/MAPKK/notes LOAD \
"Conc is from Seger et al JBC 267:20 pp14373 (1992) mwt is 45/46 Kd We assume that phosphorylation on both ser and thr is needed for activiation. See Kyriakis et al Nature 358 417 1992 Init conc of total is 0.18"
call /kinetics/MAPK_g/MAPK/notes LOAD \
"conc is from Sanghera et al JBC 265 pp 52 (1990) A second calculation gives 3.1 uM, from same paper. They est MAPK is 1e-4x total protein, and protein is 15% of cell wt, so MAPK is 1.5e-5g/ml = 0.36uM. which is closer to our first estimate. Lets use this."
call /kinetics/MAPK_g/craf_1_p_p/notes LOAD \
"Negative feedback by MAPK* by hyperphosphorylating craf-1* gives rise to this pool. Ueki et al JBC 269(22):15756-15761, 1994"
call /kinetics/MAPK_g/MAPK_p/notes LOAD \
"Haystead et al FEBS Lett. 306(1) pp 17-22 show that phosphorylation is strictly sequential, first tyr185 then thr183."
call /kinetics/MAPK_g/MAPKK_p_p/notes LOAD \
"MAPKK phosphorylates MAPK on both the tyr and thr residues, first tyr then thr. Refs: Seger et al JBC267:20 pp 14373 1992 The MAPKK itself is phosphorylated on ser as well as thr residues. Let us assume that the ser goes first, and that the sequential phosphorylation is needed. See Kyriakis et al Nature 358 417-421 1992"
call /kinetics/MAPK_g/MAPKK_p/notes LOAD \
"Intermediately phophorylated, assumed inactive, form of MAPKK"
call /kinetics/mGluR5_g/mGluR5/notes LOAD \
"From M_andL, Total # of receptors/cell = 1900 Vol of cell = 1e-15 (10 um cube). Navogadro = 6.023e23 so conversion from n to conc in uM is n/vol*nA * 1e3 = 1.66e-6 However, for typical synaptic channels the density is likely to be very high at the synapse. Use an estimate of 0.1 uM for now. this gives a total of about 60K receptors/cell, which is in line with Fay et at."
call /kinetics/mGluR5_g/Rec_Glu/notes LOAD \
"This acts like an enzyme to activate the g proteins Assume cell has vol 1e-15 m^3 (10 uM cube), conversion factor to conc in uM is 6e5"
call /kinetics/mGluR5_g/Rec_Gq/notes LOAD \
"Fraction of Rec-Gq is 44% of rec, from Fay et al. Since this is not the same receptor, this value is a bit doubtful. Still, we adjust the rate consts in Rec-bind-Gq to match."
call /kinetics/AKT_g/PIP3_AKT_t308_s473/notes LOAD \
"aaa"
call /kinetics/EGFR_g/EGFR/notes LOAD \
"Berkers et al JBC 266 say 22K hi aff recs. Sherrill and Kyte Biochemistry 35 use range 4-200 nM. These match, lets use them."
call /kinetics/EGFR_g/L_EGFR/notes LOAD \
"This is terribly simplified: there are many interesting intermediate stages, including dimerization and assoc with adapter molecules like Shc, that contribute to the activation of the EGFR."
call /kinetics/Sos_g/SHC/notes LOAD \
"There are 2 isoforms: 52 KDa and 46 KDa (See Okada et al JBC 270:35 pp 20737 1995). They are acted up on by the EGFR in very similar ways, and apparently both bind Grb2 similarly, so we'll bundle them together here. Sasaoka et al JBC 269:51 pp 32621 1994 show immunoprecs where it looks like there is at least as much Shc as Grb2. So we'll tentatively say there is 1 uM of Shc."
call /kinetics/Sos_g/Grb2/notes LOAD \
"There is probably a lot of it in the cell: it is also known as Ash (abundant src homology protein I think). Also Waters et al JBC 271:30 18224 1996 say that only a small fraction of cellular Grb is precipitated out when SoS is precipitated. As most of the Sos seems to be associated with Grb2, it would seem like there is a lot of the latter. Say 1 uM. I haven't been able to find a decent...."
call /kinetics/Sos_g/Sos/notes LOAD \
"I have tried using low (0.02 uM) initial concs, but these give a very flat response to EGF stim although the overall activation of Ras is not too bad. I am reverting to 0.1 because we expect a sharp initial response, followed by a decline. Sep 17 1997: The transient activation curve looks better with [Sos] = 0.05. Apr 26 1998: Some error there, it is better where it was at 0.1"
call /kinetics/PLCg_g/PLCg/notes LOAD \
"Amount from Homma et al JBC 263:14 6592-6598 1988"
call /kinetics/mGluR1_g/LY367385/notes LOAD \
"I am implementing this as acting only on the Rec-Gq complex, based on a more complete model PLC_Gq48.g which showed that the binding to the rec alone contributed only a small amount."
call /kinetics/barr2_g/GRK5/notes LOAD \
"Bychkov et al., 2011. 150ng/mg *0.5mg/ml /65000g/mol = 1.155385nM (which is too low, therefore increasing the concentration arbitrarily by 1000 fold)"
call /kinetics/barr2_g/barr2/notes LOAD \
"Bychkov et al., 2011. 30ng/mg *0.5mg/ml /40000g/mol = 0.375nM (which is too low, therefore increasing the concentration arbitrarily by 1000 fold)"
call /kinetics/AMPAR_g/AMPA_bind_sAMPARpS845S831/notes LOAD \
"PMID: 8557052"
call /kinetics/AMPAR_g/Glu_bind_sAMPARpS845S831/notes LOAD \
"PMID: 8557052"
call /kinetics/PP1_g/Inact_PP1/notes LOAD \
"K inhib = 1nM from Cohen Ann Rev Bioch 1989, 4 nM from Foukes et al Assume 2 nM. kf /kb = 8.333e-4"
call /kinetics/PP1_g/dissoc_PP1_I1/notes LOAD \
"Let us assume that the equil in this case is very far over to the right. This is probably safe."
call /kinetics/PKA_g/Release_C1/notes LOAD \
"This has to be fast, as the activation of PKA by cAMP is also fast. kf was 10"
call /kinetics/PKA_g/cAMP_bind_site_B1/notes LOAD \
"Hasler et al FASEB J 6:2734-2741 1992 say Kd =1e-7M for type II, 5.6e-8 M for type I. Take mean which comes to 2e-13 #/cell Smith et al PNAS USA 78:3 1591-1595 1981 have better data. First kf/kb=2.1e7/M = 3.5e-5 (#/cell). Ogreid and Doskeland Febs Lett 129:2 287-292 1981 have figs suggesting time course of complete assoc is < 1 min."
call /kinetics/PKA_g/cAMP_bind_site_B2/notes LOAD \
"For now let us set this to the same Km (1e-7M) as site B. This gives kf/kb = .7e-7M * 1e6 / (6e5^2) : 1/(6e5^2) = 2e-13:2.77e-12 Smith et al have better values. They say that this is cooperative, so the consts are now kf/kb =8.3e-4"
call /kinetics/PKA_g/inhib_PKA/notes LOAD \
"This has to be set to zero for matching the expts in vitro. In vivo we need to consider the inhibition though. kf = 1e-5 kb = 1"
call /kinetics/CaMKII_g/CaMKII_bind_CaM/notes LOAD \
"This is tricky. There is some cooperativity here arising from interactions between the subunits of the CAMKII holoenzyme. However, the stoichiometry is 1. Kb/Kf = 6e4 #/cell. Rate is fast (see Hanson et al Neuron 12 943-956 1994) so lets say kb = 10. This gives kf = 1.6667e-4 H&S AnnRev Biochem 92 give tau for dissoc as 0.2 sec at low Ca, 0.4 at high. Low Ca = 100 nM = physiol."
call /kinetics/CaMKII_g/CaMKII_thr286_bind_CaM/notes LOAD \
"Affinity is up 1000X. Time to release is about 20 sec, so the kb is OK at 0.1 This makes Kf around 1.6666e-3"
call /kinetics/CaMKII_g/basal_activity/notes LOAD \
"This reaction represents one of the big unknowns in CaMK-II biochemistry: what maintains the basal level of phosphorylation on thr 286 ? See Hanson and Schulman Ann Rev Biochem 1992 61:559-601, specially pg 580, for review. I have not been able to find any compelling mechanism in the literature, but fortunately the level of basal activity is well documented."
call /kinetics/Ras_g/bg_act_GEF/notes LOAD \
"SoS/GEF is present at 50 nM ie 3e4/cell. BetaGamma maxes out at 9e4. Assume we have 1/3 of the GEF active when the BetaGamma is 1.5e4. so 1e4 * kb = 2e4 * 1.5e4 * kf, so kf/kb = 3e-5. The rate of this equil should be reasonably fast, say 1/sec"
call /kinetics/Ras_g/Ras_intrinsic_GTPase/notes LOAD \
"This is extremely slow (1e-4), but it is significant as so little GAP actually gets complexed with it that the total GTP turnover rises only by 2-3 X (see Gibbs et al, JBC 265(33) 20437-20422) and Eccleston et al JBC 268(36) 27012-27019 kf = 1e-4"
call /kinetics/Ras_g/dephosph_GAP/notes LOAD \
"Assume a reasonably good rate for dephosphorylating it, 1/sec"
call /kinetics/Ras_g/CaM_bind_GEF/notes LOAD \
"We have no numbers for this. It is probably between the two extremes represented by the CaMKII phosph states, and I have used guesses based on this. kf=1e-4 kb=1 The reaction is based on Farnsworth et al Nature 376 524-527 1995"
call /kinetics/Ras_g/Ras_act_craf/notes LOAD \
"Assume the binding is fast and limited only by the amount of Ras* available. So kf=kb/[craf-1] If kb is 1/sec, then kf = 1/0.2 uM = 1/(0.2 * 6e5) = 8.3e-6 Later: Raise it by 10 X to 4e-5 From Hallberg et al JBC 269:6 3913-3916 1994, 3% of cellular Raf is complexed with Ras. So we raise kb 4x to 4 This step needed to memb-anchor and activate Raf: Leevers et al Nature 369 411-414 (I don't...."
call /kinetics/PP2B_g/Ca_bind_CaNAB_Ca2/notes LOAD \
"This process is probably much more complicated and involves CaM. However, as I can't find detailed info I am bundling this into a single step. Based on Steemer and Klee pg 6863, the Kact is 0.5 uM. kf/kb = 1/(0.5 * 6e5)^2 = 1.11e-11"
call /kinetics/PP2B_g/Ca_bind_CaNAB/notes LOAD \
"going on the experience with CaM, we put the fast (high affinity) sites first. We only know (Stemmer and Klee) that the affinity is < 70 nM. Assuming 10 nM at first, we get kf = 2.78e-8, kb = 1. Try 20 nM. kf = 7e-9, kb = 1"
call /kinetics/PP2B_g/CaMCa2_bind_CaNAB/notes LOAD \
"Disabled. See notes for PP2B7.g"
call /kinetics/CaM_g/CaM_Ca3_bind_Ca/notes LOAD \
"Use K3 = 21.5 uM here from Stemmer and Klee table 3. kb/kf =21.5 * 6e5 so kf = 7.75e-7, kb = 10"
call /kinetics/CaM_g/neurogranin_bind_CaM/notes LOAD \
"Surprisingly, no direct info on rates from neurogranin at this time. These rates are based on GAP-43 binding studies. As GAP-43 and neurogranin share near identity in the CaM/PKC binding regions, and also similarity in phosph and dephosph rates, I am borrowing GAP-43 kinetic info. See Alexander et al JBC 262:13 6108-6113 1987"
call /kinetics/CaM_g/ngp_deph/notes LOAD \
"This is put in to keep the basal levels of neurogranin* experimentally reasonable. From various papers, specially Ramakers et al JBC 270:23 1995 13892-13898, it looks like the basal level of phosph is between 20 and 40%. I est around 25 % The kf of 0.005 gives around this level at basal PKC activity levels of 0.1 uM active PKC."
call /kinetics/CaM_g/CaM_bind_Ca/notes LOAD \
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer _and Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/CaM_g/CaM_Ca2_bind_Ca/notes LOAD \
"K3 = 21.5, K4 = 2.8. Assuming that the K4 step happens first, we get kb/kf = 2.8 uM = 1.68e6 so kf =6e-6 assuming kb = 10"
call /kinetics/CaM_g/CaM_Ca_bind_Ca/notes LOAD \
"Lets use the fast rate consts here. Since the rates are so different, I am not sure whether the order is relevant. These correspond to the TR2C fragment. We use the Martin et al rates here, plus the Drabicowski binding consts. All are scaled by 3X to cell temp. kf = 2e-10 kb = 72 Stemmer _and Klee: K1=.9, K2=1.1. Assume 1.0uM for both. kb/kf=3.6e11. If kb=72, kf = 2e-10 (Exactly the same !) 19 May 2006. Splitting the old CaM-TR2-bind-Ca reaction into two steps, each binding 1 Ca. This improves numerical stability and is conceptually better too. Overall rates are the same, so each kf and kb is the square root of the earlier ones. So kf = 1.125e-4, kb = 8.4853"
call /kinetics/PLCb_g/Act_PLC_Ca/notes LOAD \
"Affinity for Ca = 1uM without AlF, 0.1 with: from Smrcka et al science 251 pp 804-807 1991 so [Ca].kf = kb so kb/kf = 1 * 6e5 = 1/1.66e-6 11 June 1996: Raised affinity to 5e-6 to maintain balance. See notes."
call /kinetics/PLCb_g/Degrade_IP3/notes LOAD \
"The enzyme is IP3 5-phosphomonesterase. about 45K. Actual products are Ins(1,4)P2, and cIns(1:2,4,5)P3. review in Majerus et al Science 234 1519-1526, 1986. Meyer and Stryer 1988 PNAS 85:5051-5055 est decay of IP3 at 1-3/sec"
call /kinetics/PLCb_g/Degrade_DAG/notes LOAD \
"These rates are the same as for degrading IP3, but I am sure that they could be improved. Lets double kf to 0.2, since the amount of DAG in the cell should be <= 1uM. Need to double it again, for the same reason. kf now 0.5 27 June 1996 kf is now 0.02 to get 50 sec time course 30 Aug 1997: Raised kf to 0.11 to accomodate PLC_gamma 27 Mar 1998: kf now 0.15 for PLC_gamma"
call /kinetics/PLCb_g/Act_PLC_by_Gq/notes LOAD \
"Affinity for Gq is > 20 nM (Smrcka et al Science251 804-807 1991) so [Gq].kf = kb so 40nM * 6e5 = kb/kf = 24e3 so kf = 4.2e-5, kb =1"
call /kinetics/PLCb_g/Inact_PLC_Gq/notes LOAD \
"This process is assumed to be directly caused by the inactivation of the G*GTP to G*GDP. Hence, kf = .013 /sec = 0.8/min, same as the rate for Inact-G. kb = 0 since this is irreversible. We may be interested in studying the role of PLC as a GAP. If so, the kf would be faster here than in Inact-G"
call /kinetics/PLCb_g/PLC_Gq_bind_Ca/notes LOAD \
"this step has a high affinity for Ca, from Smrcka et al. 0.1uM so kf /kb = 1/6e4 = 1.666e-5:1. See the Act-PLC-by-Gq reac. 11 Jun 1996: Raised kf to 5e-5 based on match to conc-eff curves from Smrcka et al."
call /kinetics/AC_g/CaM_bind_AC1/notes LOAD \
"Half-max at 20 nM CaM (Tang et al JBC 266:13 8595-8603 1991 kb/kf = 20 nM = 12000 #/cell so kf = kb/12000 = kb * 8.333e-5"
call /kinetics/AC_g/dephosph_AC2/notes LOAD \
"Random rate."
call /kinetics/AC_g/dephosph_PDE/notes LOAD \
"The rates for this are poorly constrained. In adipocytes (probably a different PDE) the dephosphorylation is complete within 15 min, but there are no intermediate time points so it could be much faster. Identity of phosphatase etc is still unknown."
call /kinetics/AC_g/CaM_bind_PDE1/notes LOAD \
"For olf epi PDE1, affinity is 7 nM. Assume same for brain. Reaction should be pretty fast. Assume kb = 5/sec. Then kf = 5 / (0.007 * 6e5) = 1.2e-3"
call /kinetics/AC_g/Gs_bind_AC2/notes LOAD \
"Half-max at around 3nM = kb/kf from fig 5 in Feinstein et al PNAS USA 88 10173-10177 1991 kf = kb/1800 = 5.56e-4 kb Ofer's thesis data indicates it is more like 2 nM. kf = kb/1200 = 8.33e-4"
call /kinetics/AC_g/Gs_bind_AC1/notes LOAD \
"Half-max 8nM from Tang et al JBC266:13 8595-8603 kb/kf = 8 nM = 4800#/cell so kf = kb * 2.08e-4"
call /kinetics/AC_g/Gs_bind_AC2p/notes LOAD \
"kb/kf = 1.2 nM so kf = kb/720 = 1.3888 * kb."
call /kinetics/AC_g/Forskolin_act_AC1/notes LOAD \
"PMD: 7947691"
call /kinetics/AC_g/Forskolin_act_AC2/notes LOAD \
"PMD: 7947691"
call /kinetics/PKC_g/PKC_act_by_Ca/notes LOAD \
"Need est of rate of assoc of Ca and PKC. Assume it is fast The original parameter-searched kf of 439.4 has been scaled by 1/6e8 to account for change of units to n. Kf now 8.16e-7, kb=.6085 Raised kf to 1e-6 to match Ca curve, kb to .5"
call /kinetics/PKC_g/PKC_act_by_DAG/notes LOAD \
"Need est of rate. Assume it is fast Obtained from param search kf raised 10 X : see Shinomura et al PNAS 88 5149-5153 1991. kf changed from 3.865e-7 to 2.0e-7 in line with closer analysis of Shinomura data. 26 June 1996: Corrected DAG data: reduce kf 15x from 2e-7 to 1.333e-8"
call /kinetics/PKC_g/PKC_DAG_to_memb/notes LOAD \
"Raise kb from .087 to 0.1 to match data from Shinomura et al. Lower kf from 1.155 to 1.0 to match data from Shinomura et al."
call /kinetics/PKC_g/PKC_act_by_Ca_AA/notes LOAD \
"Schaechter and Benowitz We have to increase Kf for conc scaling Changed kf to 2e-9 on Sept 19, 94. This gives better match."
call /kinetics/PKC_g/PKC_act_by_DAG_AA/notes LOAD \
"Assume slowish too. Schaechter and Benowitz"
call /kinetics/PKC_g/PKC_basal_act/notes LOAD \
"Initial basal levels were set by kf = 1, kb = 20. In model, though, the basal levels of PKC activity are higher."
call /kinetics/PKC_g/PKC_act_by_AA/notes LOAD \
"Raise kf from 1.667e-10 to 2e-10 to get better match to data."
call /kinetics/PKC_g/PKC_n_DAG/notes LOAD \
"kf raised 10 X based on Shinomura et al PNAS 88 5149-5153 1991 closer analysis of Shinomura et al: kf now 1e-8 (was 1.66e-8). Further tweak. To get sufficient AA synergy, increase kf to 1.5e-8 26 June 1996: Corrected DAG levels: reduce kf by 15x from 1.5e-8 to 1e-9"
call /kinetics/PKC_g/PKC_n_DAG_AA/notes LOAD \
"Reduced kf to 0.66X to match Shinomura et al data. Initial: kf = 3.3333e-9 New: 2e-9 Newer: 2e-8 kb was 0.2 now 2."
call /kinetics/PLA2_g/PLA2_Ca_act/notes LOAD \
"Leslie and Channon BBA 1045 (1990) 261-270 fig6 pp267."
call /kinetics/PLA2_g/DAG_Ca_PLA2_act/notes LOAD \
"27 June 1996 Scaled kf down by 0.015 from 3.33e-7 to 5e-9 to fit with revised DAG estimates and use of mole-fraction to calculate eff on PLA2."
call /kinetics/PLA2_g/Degrade_AA/notes LOAD \
"I need to check if the AA degradation pathway really leads back to APC. Anyway, it is a convenient buffered pool to dump it back into. For the purposes of the full model we use a rate of degradation of 0.2/sec Raised decay to 0.4 : see PLA35.g notes for Feb17"
call /kinetics/PLA2_g/PLA2_p_Ca_act/notes LOAD \
"To start off, same kinetics as the PLA2-Ca-act direct pathway. Oops ! Missed out the Ca input to this pathway first time round. Let's raise the forward rate about 3x to 5e-6. This will let us reduce the rather high rates we have used for the kenz on PLA2*-Ca. In fact, it may be that the rates are not that different, just that this pathway for getting the PLA2 to the memb is more efficien...."
call /kinetics/Gq_g/Basal_Act_Gq/notes LOAD \
"kf = kg1 = 0.01/sec, kb = 0. This is the basal exchange of GTP for GDP."
call /kinetics/Gq_g/Trimerize_G/notes LOAD \
"kf == kg3 = 1e-5 /cell/sec. As usual, there is no back-reaction kb = 0"
call /kinetics/Gq_g/Inact_Gq/notes LOAD \
"From Berstein et al JBC 267:12 8081-8088 1992, kcat for GTPase activity of Gq is only 0.8/min"
call /kinetics/mGluR5_g/RecGq_bind_Glu/notes LOAD \
"From Fay et al kb3 = kb = 1.06e-3 which is rather slow. k+1 = kf = 2.8e7 /M/sec= 4.67e-5/sec use 5e-5. However, the Kd from Martin et al may be more appropriate, as this is Glu not the system from Fay. kf = 2.8e-5, kb = 10 Let us compromise. since we have the Fay model, keep kf = k+1 = 2.8e-5. But kb (k-3) is .01 * k-1 from Fay. Scaling by .01, kb = .01 * 10 = 0.1"
call /kinetics/mGluR5_g/RecGlu_bind_Gq/notes LOAD \
"This is the k1-k2 equivalent for enzyme complex formation in the binding of Rec-Glu to Gq. See Fay et al Biochem 30 5066-5075 1991. kf = 5e-5 which is nearly the same as calculated by Fay et al. (4.67e-5) kb = .04 June 1996: Closer reading of Fay et al suggests that kb <= 0.0001, so kf = 1e-8 by detailed balance. This reaction appears to be neglible."
call /kinetics/mGluR5_g/Activate_Gq/notes LOAD \
"This is the kcat==k3 stage of the Rec-Glu ezymatic activation of Gq. From Berstein et al actiation is at .35 - 0.7/min From Fay et al Biochem 30 5066-5075 1991 kf = .01/sec From Nakamura et al J physiol Lond 474:1 35-41 1994 see time courses. Also (Berstein) 15-40% of gprot is in GTP-bound form on stim."
call /kinetics/EGFR_g/act_EGFR/notes LOAD \
"Affinity of EGFR for EGF is complex: depends on [EGFR]. We'll assume fixed [EGFR] and use exptal affinity ~20 nM (see Sherrill and Kyte Biochem 1996 35 5705-5718, Berkers et al JBC 266:2 922-927 1991, Sorokin et al JBC 269:13 9752-9759 1994). Tau =~2 min (Davis et al JBC 263:11 5373-5379 1988) or Berkers Kass = 6.2e5/M/sec, Kdiss=3.5e-4/sec. Sherrill and Kyte have Hill Coeff=1.7"
call /kinetics/EGFR_g/Internalize/notes LOAD \
"See Helin and Beguinot JBC 266:13 1991 pg 8363-8368. In Fig 3 they have internalization tau about 10 min, equil at about 20% EGF available. So kf = 4x kb, and 1/(kf + kb) = 600 sec so kb = 1/3K = 3.3e-4, and kf = 1.33e-3. This doesn't take into account the unbound receptor, so we need to push the kf up a bit, to 0.002"
call /kinetics/Sos_g/SHCp_dephospho/notes LOAD \
"Time course of decline of phosph is 20 min. Part of this is the turnoff time of the EGFR itself. Lets assume a tau of 10 min for this dephosph. It may be wildly off."
call /kinetics/Sos_g/SHC_bind_SosGrb2/notes LOAD \
"Sasaoka et al JBC 269:51 pp 32621 1994, table on pg 32623 indicates that this pathway accounts for about 50% of the GEF activation. (88% - 39%). Error is large, about 20%. Fig 1 is most useful in constraining rates. Chook et al JBC 271:48 pp 30472, 1996 say that the Kd is 0.2 uM for Shc binding to EGFR. The Kd for Grb direct binding is 0.7, so we'll ignore it."
call /kinetics/Sos_g/Grb2_bind_Sosp/notes LOAD \
"Same rates as Grb2_bind_Sos: Porfiri and McCormick JBC 271:10 pp 5871 1996 show that the binding is not affected by the phosph."
call /kinetics/Sos_g/dephosph_Sos/notes LOAD \
"The only clue I have to these rates is from the time courses of the EGF activation, which is around 1 to 5 min. The dephosph would be expected to be of the same order, perhaps a bit longer. Lets use 0.002 which is about 8 min. Sep 17: The transient activation curve matches better with kf = 0.001"
call /kinetics/Sos_g/Grb2_bind_Sos/notes LOAD \
"As there are 2 SH3 domains, this reaction could be 2nd order. I have a Kd of 22 uM from peptide binding (Lemmon et al JBC 269:50 pg 31653). However, Chook et al JBC 271:48 pg30472 say it is 0.4uM with purified proteins, so we believe them. They say it is 1:1 binding."
call /kinetics/PLCg_g/Ca_act_PLCg/notes LOAD \
"Nice curves from Homma et al JBC 263:14 6592-6598 1988 Fig 5c. The activity falls above 10 uM, but that is too high to reach physiologically anyway, so we'll ignore the higher pts and match the lower ones only. Half-max at 1 uM. But Wahl et al JBC 267:15 10447-10456 1992 have half-max at 56 nM which is what I'll use."
call /kinetics/PLCg_g/Ca_act_PLCgp/notes LOAD \
"Again, we refer to Homma et al and Wahl et al, for preference using Wahl. Half-Max of the phosph form is at 316 nM. Use kb of 10 as this is likely to be pretty fast. Did some curve comparisons, and instead of 316 nM giving a kf of 5.27e-5, we will use 8e-5 for kf. 16 Sep 97. As we are now phosphorylating the Ca-bound form, equils have shifted. kf should now be 2e-5 to match the curves."
call /kinetics/NMDAR_g/NMDA_act_NMDAR/notes LOAD \
"a"
call /kinetics/NMDAR_g/Glu_act_NMDAR/notes LOAD \
"The rates are from Popescu et al., 2004. doi: 10.1038/nature02775. Reduced Kf to 1*10^6/M.s"
call /kinetics/barr2_g/Glu_mGluRpT840_barr2_internalize/notes LOAD \
"Navarro DL et al., Amino Acids (2005). Kd for glutamte-mGluR for rat fetus is 599 (+/-) 89.7 nM and for mothers is 534.3 (+/-) 89.7 nM. Therefore, assuming Kd = 595nM"
call /kinetics/CaseinKinase_g/CKII/CKII_phosph_FMRP/notes LOAD \
"PMID 27957526 Bartley et al eNeuro Dec2016 shows that there is constitutive phosph of FMRP at S499 by CK2 casein kinase II but this leads then to phosph by mGluR regulated kinases. The dephosph of the second phase of phosph is by PP2A. So the reactions here should be considered as the post CK2 steps."
call /kinetics/PP1_g/PP1_active/Deph_thr286/notes LOAD \
"The rates are from Stralfors et al Eur J Biochem 149 295-303 giving Vmax = 5.7 umol/min giving k3 = 3.5/sec and k2 = 14. Foulkes et al Eur J Biochem 132 309-313 1983 give Km = 5.1 uM so k1 becomes 5.72e-6 Simonelli 1984 (Grad Thesis, CUNY) showed that other substrates are about 1/10 rate of phosphorylase a, so we reduce k1,k2,k3 by 10 to 5.72e-7, 1.4, 0.35"
call /kinetics/PP1_g/PP1_active/Deph_thr306/notes LOAD \
"See Cohen et al"
call /kinetics/PKA_g/PKA_active/PKA_phosph_GEF/notes LOAD \
"This pathway inhibits Ras when cAMP is elevated. See: Hordijk et al JBC 269:5 3534-3538 1994 Burgering et al EMBO J 12:11 4211-4220 1993 The rates are the same as used in PKA-phosph-I1"
call /kinetics/PKA_g/PKA_active/PKA_phosph_I1/notes LOAD \
"#s from Bramson et al CRC crit rev Biochem 15:2 93-124. They have a huge list of peptide substrates and I have chosen high-ish rates. These consts give too much PKA activity, so lower Vmax 1/3. Now, k1 = 3e-5, k2 = 36, k3 = 9 (still pretty fast). Also lower Km 1/3 so k1 = 1e-5 Cohen et al FEBS Lett 76:182-86 1977 say rate =30% PKA act on phosphokinase beta."
call /kinetics/PKA_g/PKA_active/phosph_PDE/notes LOAD \
"Same rates as PKA-phosph-I1"
call /kinetics/CaMKII_g/aCaMKII/AMPAR_act/notes LOAD \
"a"
call /kinetics/CaMKII_g/tot_CaM_CaMKII/CaM_act_305/notes LOAD \
"Rates from autocamtide phosphorylation, from Hanson and Schulman JBC 267:24 17216-17224 1992. Jan 1 1998: Speed up 12x to match fig 5."
call /kinetics/CaMKII_g/tot_autonomous_CaMKII/auton_305/notes LOAD \
"See Hanson and Schulman again, for afterburst rates of phosph."
call /kinetics/Ras_g/GEF_Gprot_bg/GEF_bg_act_Ras/notes LOAD \
"Kinetics based on the activation of Gq by the receptor complex in the Gq model (in turn based on the Mahama and Linderman model) k1 = 2e-5, k2 = 1e-10, k3 = 10 (I do not know why they even bother with k2). Lets put k1 at 2e-6 to get a reasonable equilibrium More specific values from, eg.g: Orita et al JBC 268(34) 25542-25546 from rasGRF and smgGDS: k1=3.3e-7; k2 = 0.08, k3 = 0.02"
call /kinetics/Ras_g/GEF_p/GEF_p_act_Ras/notes LOAD \
"Kinetics same as GEF-bg-act-ras"
call /kinetics/Ras_g/GAP/GAP_inact_Ras/notes LOAD \
"From Eccleston et al JBC 268(36)pp27012-19 get Kd < 2uM, kcat - 10/sec From Martin et al Cell 63 843-849 1990 get Kd ~ 250 nM, kcat = 20/min I will go with the Eccleston figures as there are good error bars (10%). In general the values are reasonably close. k1 = 1.666e-3/sec, k2 = 1000/sec, k3 = 10/sec (note k3 is rate-limiting) 5 Nov 2002: Changed ratio term to 4 from 100. Now we have k1=8.25e-5; k2=40, k3=10. k3 is still rate-limiting."
call /kinetics/Ras_g/CaM_GEF/CaM_GEF_act_Ras/notes LOAD \
"Kinetics same as GEF-bg_act-ras"
call /kinetics/PP2B_g/CaM(Ca)n_CaNAB/dephosph_neurogranin/notes LOAD \
"From Seki et al ABB 316(2):673-679"
call /kinetics/PP2B_g/CaNAB_Ca4/dephosph_inhib1_noCaM/notes LOAD \
"The rates here are so slow I do not know if we should even bother with this enz reacn. These numbers are from Liu and Storm. Other refs suggest that the Km stays the same but the Vmax goes to 10% of the CaM stim levels. Prev: k1=2.2e-9, k2 = 0.0052, k3 = 0.0013 New : k1=5.7e-8, k2=.136, k3=.034"
call /kinetics/Ca_g/Ca_leak_from_extracell/leak_EC_to_cyt/notes LOAD \
"a"
call /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_I1/notes LOAD \
"PP2A does most of the dephosph of I1 at basal Ca levels. See the review by Cohen in Ann Rev Biochem 1989. For now, lets halve Km. k1 was 3.3e-6, now 6.6e-6"
call /kinetics/Phosphatase_g/PP2A/PP2A_dephospho_PP1_I_p/notes LOAD \
"k1 changed from 3.3e-6 to 6.6e-6"
call /kinetics/Phosphatase_g/MKP_1/MKP1_tyr_deph/notes LOAD \
"The original kinetics have been modified to obey the k2 = 4 * k3 rule, while keeping kcat and Km fixed. As noted in the NOTES, the only constraining data point is the time course of MAPK dephosphorylation, which this model satisfies. It would be nice to have more accurate estimates of rate consts and MKP-1 levels from the literature. Effective Km : 67 nM kcat = 1.43 umol/min/mg"
call /kinetics/Phosphatase_g/MKP_1/MKP1_thr_deph/notes LOAD \
"See MKP1-tyr-deph"
call /kinetics/AC_g/AC2p/AC2p_form_cAMP/notes LOAD \
"Reduced Km to match expt data for basal activation of AC2 by PKC. Now k1 = 2.9e-6, k2 = 72, k3 = 18"
call /kinetics/AC_g/cAMP_PDE/PDE/notes LOAD \
"Best rates are from Conti et al Biochem 34 7979-7987 1995. Though these are for the Sertoli cell form, it looks like they carry nicely into alternatively spliced brain form. See Sette et al JBC 269:28 18271-18274 Km ~2 uM, Vmax est ~ 10 umol/min/mg for pure form. Brain protein is 93 kD but this was 67. So k3 ~10, k2 ~40, k1 ~4.2e-6"
call /kinetics/AC_g/cAMP_PDEp/PDE_p/notes LOAD \
"This form has about twice the activity of the unphosphorylated form. See Sette et al JBC 269:28 18271-18274 1994. We'll ignore cGMP effects for now."
call /kinetics/AC_g/CaM_PDE1/CaM_PDE1_enz/notes LOAD \
"Max activity ~10umol/min/mg in presence of lots of CaM. Affinity is low, 40 uM. k3 = 10, k2 = 40, k1 = (50/40) / 6e5."
call /kinetics/PKC_g/PKC_active/PKC_act_raf/notes LOAD \
"Rate consts from Chen et al Biochem 32, 1032 (1993) k3 = k2 = 4 k1 = 9e-5 recalculated gives 1.666e-5, which is not very different. Looks like k3 is rate-limiting in this case: there is a huge amount of craf locked up in the enz complex. Let us assume a 10x higher Km, ie, lower affinity. k1 drops by 10x. Also changed k2 to 4x k3. Lowerd k1 to 1e-6 to balance 10X DAG sensitivity of PKC"
call /kinetics/PKC_g/PKC_active/PKC_inact_GAP/notes LOAD \
"Rate consts copied from PCK-act-raf This reaction inactivates GAP. The idea is from the Boguski and McCormick review."
call /kinetics/PKC_g/PKC_active/PKC_act_GEF/notes LOAD \
"Rate consts from PKC-act-raf. This reaction activates GEF. It can lead to at least 2X stim of ras, and a 2X stim of MAPK over and above that obtained via direct phosph of c-raf. Note that it is a push-pull reaction, and there is also a contribution through the phosphorylation and inactivation of GAPs. The original PKC-act-raf rate consts are too fast. We lower K1 by 10 X"
call /kinetics/PKC_g/PKC_active/PKC_phosph_neurogranin/notes LOAD \
"Rates from Huang et al ABB 305:2 570-580 1993"
call /kinetics/PKC_g/PKC_active/PKC_phosph_ng_CaM/notes LOAD \
"Rates are 60% those of PKC-phosph-neurogranin. See Huang et al ABB 305:2 570-580 1993"
call /kinetics/PKC_g/PKC_active/phosph_AC2/notes LOAD \
"Phorbol esters have little effect on AC1 or on the Gs-stimulation of AC2. So in this model we are only dealing with the increase in basal activation of AC2 induced by PKC k1 = 1.66e-6 k2 = 16 k3 =4"
call /kinetics/PLA2_g/PLA2_Ca_p/PLA2Ca_form_AA/notes LOAD \
"10 x raise oct22 12 x oct 24, set k2 = 4 * k3"
call /kinetics/PLA2_g/PIP2_PLA2_p/PLA2PIP2_form_AA/notes LOAD \
"10 X raise oct 22 12 X further raise oct 24 to allow for correct conc of enzyme"
call /kinetics/PLA2_g/PIP2_Ca_PLA2_p/PLA2PIP2Ca_form_AA/notes LOAD \
"10 x raise oct 22 12 x and rescale for k2 = 4 * k3 convention oct 24 Increase further to get the match to expt, which was spoilt due to large accumulation of PLA2 in the enzyme complexed forms. Lets raise k3, leaving the others at k1 = 1.5e-5 and k2 = 144 since they are large already."
call /kinetics/PLA2_g/DAG_Ca_PLA2_p/PLA2DAGCa_form_AA/notes LOAD \
"10 X raise oct 22 12 X raise oct 24 + conversion to k2 =4 * k3"
call /kinetics/PLA2_g/PLA2_p_Ca/PLA2pCa_form_AA/notes LOAD \
"This form should be 3 to 6 times as fast as the Ca-only form. I have scaled by 4x which seems to give a 5x rise. 10x raise Oct 22 12 x oct 24, changed k2 = 4 * k3"
call /kinetics/EGFR_g/L_EGFR/EGFR_act_CaPLCg/notes LOAD \
"Hsu et al JBC 266:1 603-608 1991 Km = 385 +- 100 uM, Vm = 5.1 +-1 pmol/min/ug for PLC-771. Other sites have similar range, but are not stim as much by EGF. k1 = 2.8e-2/385/6e5 = 1.2e-10. Phenomenally slow. But Sherrill and Kyte say turnover # for angiotensin II is 5/min for cell extt, and 2/min for placental. Also see Okada et al for Shc rates which are much faster."
call /kinetics/EGFR_g/L_EGFR/EGFR_act_SHC/notes LOAD \
"Rates from Okada et al JBC 270:35 pp 20737 1995 Km = 0.70 to 0.85 uM, Vmax = 4.4 to 5.0 pmol/min. Unfortunately the amount of enzyme is not known, the prep is only partially purified. Time course of phosph is max within 30 sec, falls back within 20 min. Ref: Sasaoka et al JBC 269:51 32621 1994. Use k3 = 0.1 based on this tau."
call /kinetics/PLCg_g/Ca_PLCg/CaPLCg_PIP2hydr/notes LOAD \
"Mainly Homma et al JBC 263:14 1988 pp 6592, but these parms are the Ca-stimulated form. It is not clear whether the enzyme is activated by tyrosine phosphorylation at this point or not. Wahl et al JBC 267:15 10447-10456 1992 say that the Ca_stim and phosph form has 7X higher affinity for substrate than control. This is close to Wahl's figure 7, which I am using as reference."
call /kinetics/PLCg_g/Ca_PLCgp/CaPLCgp_PIP2hydr/notes LOAD \
"Mainly Homma et al JBC 263:14 1988 pp 6592, but these parms are the Ca-stimulated form. It is not clear whether the enzyme is activated by tyrosine phosphorylation at this point or not. Wahl et al JBC 267:15 10447-10456 1992 say that this has 7X higher affinity for substrate than control."
call /kinetics/PLCg_g/PLCg_basal/bPLCg_phospho/notes LOAD \
"Wahl1992.PMID:1316902"
call /kinetics/NMDAR_g/NMDA_NMDAR/NMDA_NMDAR_Chan/notes LOAD \
"Assuming the NMDA stimulus happens in Mg2+ free prep"
complete_loading
