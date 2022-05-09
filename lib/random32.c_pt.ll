; ModuleID = '/llk/IR_all_yes/lib/random32.c_pt.bc'
source_filename = "../lib/random32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+prandom_u32_state\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_u32_state\09\09\09\09"
module asm "\09.long\09__crc_prandom_u32_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_u32_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_u32_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_u32_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prandom_bytes_state\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_bytes_state\09\09\09\09"
module asm "\09.long\09__crc_prandom_bytes_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_bytes_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_bytes_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_bytes_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prandom_seed_full_state\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_seed_full_state\09\09\09\09"
module asm "\09.long\09__crc_prandom_seed_full_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_seed_full_state:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_seed_full_state\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_seed_full_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+net_rand_noise\22, \22a\22\09"
module asm "\09.weak\09__crc_net_rand_noise\09\09\09\09"
module asm "\09.long\09__crc_net_rand_noise\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_net_rand_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22net_rand_noise\22\09\09\09\09\09"
module asm "__kstrtabns_net_rand_noise:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prandom_u32\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_u32\09\09\09\09"
module asm "\09.long\09__crc_prandom_u32\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_u32\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prandom_bytes\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_bytes\09\09\09\09"
module asm "\09.long\09__crc_prandom_bytes\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+prandom_seed\22, \22a\22\09"
module asm "\09.weak\09__crc_prandom_seed\09\09\09\09"
module asm "\09.long\09__crc_prandom_seed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_prandom_seed:\09\09\09\09\09"
module asm "\09.asciz \09\22prandom_seed\22\09\09\09\09\09"
module asm "__kstrtabns_prandom_seed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.siprand_state = type { i32, i32, i32, i32 }
%struct.prandom_test1 = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.prandom_test2 = type { i32, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.19 }
%struct.atomic_t = type { i32 }
%union.anon.19 = type { i32 }
%struct.random_ready_callback = type { %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_prandom_u32_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_u32_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_u32_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_u32_state to i32), ptr @__kstrtab_prandom_u32_state, ptr @__kstrtabns_prandom_u32_state }, section "___ksymtab+prandom_u32_state", align 4
@__kstrtab_prandom_bytes_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_bytes_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_bytes_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_bytes_state to i32), ptr @__kstrtab_prandom_bytes_state, ptr @__kstrtabns_prandom_bytes_state }, section "___ksymtab+prandom_bytes_state", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_prandom_seed_full_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_seed_full_state = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_seed_full_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_seed_full_state to i32), ptr @__kstrtab_prandom_seed_full_state, ptr @__kstrtabns_prandom_seed_full_state }, section "___ksymtab+prandom_seed_full_state", align 4
@__initcall__kmod_random32__293_312_prandom_state_selftest1 = internal global ptr @prandom_state_selftest, section ".initcall1.init", align 4
@net_rand_noise = weak dso_local global i32 0, section ".data..percpu", align 4
@__kstrtab_net_rand_noise = external dso_local constant [0 x i8], align 1
@__kstrtabns_net_rand_noise = external dso_local constant [0 x i8], align 1
@__ksymtab_net_rand_noise = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @net_rand_noise to i32), ptr @__kstrtab_net_rand_noise, ptr @__kstrtabns_net_rand_noise }, section "___ksymtab+net_rand_noise", align 4
@net_rand_state = weak dso_local global %struct.siprand_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_prandom_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_u32 to i32), ptr @__kstrtab_prandom_u32, ptr @__kstrtabns_prandom_u32 }, section "___ksymtab+prandom_u32", align 4
@__kstrtab_prandom_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_bytes to i32), ptr @__kstrtab_prandom_bytes, ptr @__kstrtabns_prandom_bytes }, section "___ksymtab+prandom_bytes", align 4
@__kstrtab_prandom_seed = external dso_local constant [0 x i8], align 1
@__kstrtabns_prandom_seed = external dso_local constant [0 x i8], align 1
@__ksymtab_prandom_seed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @prandom_seed to i32), ptr @__kstrtab_prandom_seed, ptr @__kstrtabns_prandom_seed }, section "___ksymtab+prandom_seed", align 4
@__initcall__kmod_random32__298_490_prandom_init_early1 = internal global ptr @prandom_init_early, section ".initcall1.init", align 4
@__initcall__kmod_random32__303_613_prandom32_state_selftest1 = internal global ptr @prandom32_state_selftest, section ".initcall1.init", align 4
@__initcall__kmod_random32__304_633_prandom_init_late7 = internal global ptr @prandom_init_late, section ".initcall7.init", align 4
@__pcpu_unique_net_rand_state = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_net_rand_noise = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_net_rand_noise = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@test1 = internal constant { [4 x %struct.prandom_test1], [32 x i8] } { [4 x %struct.prandom_test1] [%struct.prandom_test1 { i32 1, i32 -810615611 }, %struct.prandom_test1 { i32 2, i32 -1671837237 }, %struct.prandom_test1 { i32 3, i32 -1169833403 }, %struct.prandom_test1 { i32 4, i32 984847254 }], [32 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014prandom: seed boundary self test failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"prandom_state_selftest\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lib/random32.c\00", [17 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry_ptr = internal global ptr @prandom_state_selftest._entry, section ".printk_index", align 4
@prandom_state_selftest._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016prandom: seed boundary self test passed\0A\00", [53 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry_ptr.5 = internal global ptr @prandom_state_selftest._entry.3, section ".printk_index", align 4
@test2 = internal constant { [100 x %struct.prandom_test2], [304 x i8] } { [100 x %struct.prandom_test2] [%struct.prandom_test2 { i32 931557656, i32 959, i32 -1319373514 }, %struct.prandom_test2 { i32 1339693295, i32 876, i32 -407190764 }, %struct.prandom_test2 { i32 1545556285, i32 961, i32 1615538833 }, %struct.prandom_test2 { i32 601730776, i32 723, i32 1776162651 }, %struct.prandom_test2 { i32 1027516047, i32 687, i32 511983079 }, %struct.prandom_test2 { i32 416526298, i32 700, i32 916156552 }, %struct.prandom_test2 { i32 1395522032, i32 652, i32 -2072903620 }, %struct.prandom_test2 { i32 366221443, i32 617, i32 -1302109533 }, %struct.prandom_test2 { i32 1539836965, i32 714, i32 -511701571 }, %struct.prandom_test2 { i32 556206671, i32 994, i32 799626459 }, %struct.prandom_test2 { i32 684907218, i32 799, i32 367789491 }, %struct.prandom_test2 { i32 2121230701, i32 931, i32 2115467001 }, %struct.prandom_test2 { i32 1668516451, i32 644, i32 -674376611 }, %struct.prandom_test2 { i32 768046066, i32 883, i32 2034077390 }, %struct.prandom_test2 { i32 1989159136, i32 833, i32 1195767305 }, %struct.prandom_test2 { i32 536585145, i32 996, i32 -717708092 }, %struct.prandom_test2 { i32 1008129373, i32 642, i32 1478080776 }, %struct.prandom_test2 { i32 1740775604, i32 939, i32 1264980372 }, %struct.prandom_test2 { i32 1967883163, i32 508, i32 10734624 }, %struct.prandom_test2 { i32 1923019697, i32 730, i32 -473547667 }, %struct.prandom_test2 { i32 442079932, i32 560, i32 -854934953 }, %struct.prandom_test2 { i32 1961302714, i32 845, i32 841962572 }, %struct.prandom_test2 { i32 2030205964, i32 962, i32 1325144227 }, %struct.prandom_test2 { i32 1160407529, i32 507, i32 240940858 }, %struct.prandom_test2 { i32 635482502, i32 779, i32 -94477550 }, %struct.prandom_test2 { i32 1252788931, i32 699, i32 867195434 }, %struct.prandom_test2 { i32 1961817131, i32 719, i32 668237657 }, %struct.prandom_test2 { i32 1071468216, i32 983, i32 917876630 }, %struct.prandom_test2 { i32 1281848367, i32 932, i32 1003100039 }, %struct.prandom_test2 { i32 582537119, i32 780, i32 1127273778 }, %struct.prandom_test2 { i32 1973672777, i32 853, i32 1071368872 }, %struct.prandom_test2 { i32 1896756996, i32 762, i32 1127851055 }, %struct.prandom_test2 { i32 847917054, i32 500, i32 1717499075 }, %struct.prandom_test2 { i32 1240520510, i32 951, i32 -1445390639 }, %struct.prandom_test2 { i32 1685071682, i32 567, i32 1961810396 }, %struct.prandom_test2 { i32 1516232129, i32 557, i32 3173877 }, %struct.prandom_test2 { i32 1208118903, i32 612, i32 1613145022 }, %struct.prandom_test2 { i32 1817269927, i32 693, i32 -15844723 }, %struct.prandom_test2 { i32 1510091701, i32 717, i32 638191229 }, %struct.prandom_test2 { i32 365916850, i32 807, i32 600424314 }, %struct.prandom_test2 { i32 399324359, i32 702, i32 1803598116 }, %struct.prandom_test2 { i32 1318480274, i32 779, i32 2074237022 }, %struct.prandom_test2 { i32 697758115, i32 840, i32 1483639402 }, %struct.prandom_test2 { i32 1696507773, i32 840, i32 577415447 }, %struct.prandom_test2 { i32 2081979121, i32 981, i32 -1253480847 }, %struct.prandom_test2 { i32 955646687, i32 742, i32 -448472939 }, %struct.prandom_test2 { i32 1250683506, i32 749, i32 836419859 }, %struct.prandom_test2 { i32 595003102, i32 534, i32 366794109 }, %struct.prandom_test2 { i32 47485338, i32 558, i32 -773846462 }, %struct.prandom_test2 { i32 619433479, i32 610, i32 -303183421 }, %struct.prandom_test2 { i32 704096520, i32 518, i32 -155473444 }, %struct.prandom_test2 { i32 1712224984, i32 606, i32 -1901655293 }, %struct.prandom_test2 { i32 1318233152, i32 922, i32 -414606162 }, %struct.prandom_test2 { i32 855572992, i32 761, i32 1472974787 }, %struct.prandom_test2 { i32 64721421, i32 703, i32 683860550 }, %struct.prandom_test2 { i32 678931758, i32 840, i32 380616043 }, %struct.prandom_test2 { i32 692711973, i32 778, i32 1382361947 }, %struct.prandom_test2 { i32 677703619, i32 530, i32 -1468053135 }, %struct.prandom_test2 { i32 92393223, i32 586, i32 1522128471 }, %struct.prandom_test2 { i32 1222592920, i32 743, i32 -828240629 }, %struct.prandom_test2 { i32 358288986, i32 695, i32 1091956998 }, %struct.prandom_test2 { i32 1935056945, i32 958, i32 514864477 }, %struct.prandom_test2 { i32 735675993, i32 990, i32 1294239989 }, %struct.prandom_test2 { i32 1560089402, i32 897, i32 -2056416009 }, %struct.prandom_test2 { i32 70616361, i32 829, i32 22483098 }, %struct.prandom_test2 { i32 368234700, i32 731, i32 -1381092212 }, %struct.prandom_test2 { i32 20221190, i32 879, i32 1564152970 }, %struct.prandom_test2 { i32 539444654, i32 682, i32 1835141259 }, %struct.prandom_test2 { i32 1314987297, i32 840, i32 1801114136 }, %struct.prandom_test2 { i32 2019295544, i32 645, i32 -1008528366 }, %struct.prandom_test2 { i32 469023838, i32 716, i32 1637918202 }, %struct.prandom_test2 { i32 1843754496, i32 653, i32 -1732875144 }, %struct.prandom_test2 { i32 400672036, i32 809, i32 -30754511 }, %struct.prandom_test2 { i32 404722249, i32 965, i32 -1590850297 }, %struct.prandom_test2 { i32 600702209, i32 758, i32 584979986 }, %struct.prandom_test2 { i32 519953954, i32 667, i32 -1720531059 }, %struct.prandom_test2 { i32 1658071126, i32 694, i32 -2080397806 }, %struct.prandom_test2 { i32 420480037, i32 749, i32 -864956430 }, %struct.prandom_test2 { i32 690103647, i32 969, i32 -594209213 }, %struct.prandom_test2 { i32 1029424799, i32 937, i32 -507220455 }, %struct.prandom_test2 { i32 2012608669, i32 506, i32 -932338323 }, %struct.prandom_test2 { i32 1535432887, i32 998, i32 42610943 }, %struct.prandom_test2 { i32 1330635533, i32 857, i32 -1254160792 }, %struct.prandom_test2 { i32 1223800550, i32 539, i32 -340737779 }, %struct.prandom_test2 { i32 1322411537, i32 680, i32 -1071716972 }, %struct.prandom_test2 { i32 1877847898, i32 945, i32 -1379820153 }, %struct.prandom_test2 { i32 1646356099, i32 874, i32 965988280 }, %struct.prandom_test2 { i32 805687536, i32 744, i32 -262689376 }, %struct.prandom_test2 { i32 1948093210, i32 633, i32 1346597684 }, %struct.prandom_test2 { i32 392609744, i32 783, i32 1636083295 }, %struct.prandom_test2 { i32 690241304, i32 770, i32 1201031298 }, %struct.prandom_test2 { i32 1360302965, i32 696, i32 1665394461 }, %struct.prandom_test2 { i32 1220090946, i32 780, i32 1316922812 }, %struct.prandom_test2 { i32 447092251, i32 500, i32 -856223921 }, %struct.prandom_test2 { i32 1613868791, i32 592, i32 828546883 }, %struct.prandom_test2 { i32 523430951, i32 548, i32 -1742574992 }, %struct.prandom_test2 { i32 726692899, i32 810, i32 1656872867 }, %struct.prandom_test2 { i32 1364340021, i32 836, i32 -584453810 }, %struct.prandom_test2 { i32 1986257729, i32 931, i32 935013962 }, %struct.prandom_test2 { i32 407983964, i32 921, i32 728767059 }], [304 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014prandom: %d/%d self tests failed\0A\00", [60 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry_ptr.8 = internal global ptr @prandom_state_selftest._entry.6, section ".printk_index", align 4
@prandom_state_selftest._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016prandom: %d self tests passed\0A\00", [63 x i8] zeroinitializer }, align 32
@prandom_state_selftest._entry_ptr.11 = internal global ptr @prandom_state_selftest._entry.9, section ".printk_index", align 4
@__tracepoint_prandom_u32 = external dso_local global %struct.tracepoint, align 4
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/random.h\00", [34 x i8] zeroinitializer }, align 32
@trace_prandom_u32.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@prandom32_state_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014prandom32: self test failed (at least %u bits correlated, fixed_mask=%#x fixed_value=%#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"prandom32_state_selftest\00", [39 x i8] zeroinitializer }, align 32
@prandom32_state_selftest._entry_ptr = internal global ptr @prandom32_state_selftest._entry, section ".printk_index", align 4
@prandom32_state_selftest._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016prandom32: self test passed (less than %u bits correlated)\0A\00", [34 x i8] zeroinitializer }, align 32
@prandom32_state_selftest._entry_ptr.19 = internal global ptr @prandom32_state_selftest._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@prandom_init_late.random_ready = internal global { %struct.random_ready_callback, [16 x i8] } { %struct.random_ready_callback { %struct.list_head zeroinitializer, ptr @prandom_timer_start, ptr null }, [16 x i8] zeroinitializer }, align 32
@seed_timer = internal global { %struct.timer_list, [48 x i8] } { %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @prandom_reseed, i32 0, %struct.lockdep_map { ptr @.str.20, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/random32.c:496\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"test1\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 134, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 286, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 288, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"test2\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 145, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 307, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 309, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [33 x i8] c"../include/trace/events/random.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 213, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 108, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 603, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 607, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [13 x i8] c"random_ready\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 622, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"seed_timer\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [18 x i8] c"../lib/random32.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 496, i32 8 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__initcall__kmod_random32__293_312_prandom_state_selftest1, ptr @__initcall__kmod_random32__298_490_prandom_init_early1, ptr @__initcall__kmod_random32__303_613_prandom32_state_selftest1, ptr @__initcall__kmod_random32__304_633_prandom_init_late7, ptr @__ksymtab_net_rand_noise, ptr @__ksymtab_prandom_bytes, ptr @__ksymtab_prandom_bytes_state, ptr @__ksymtab_prandom_seed, ptr @__ksymtab_prandom_seed_full_state, ptr @__ksymtab_prandom_u32, ptr @__ksymtab_prandom_u32_state, ptr @prandom32_state_selftest._entry, ptr @prandom32_state_selftest._entry.17, ptr @prandom32_state_selftest._entry_ptr, ptr @prandom32_state_selftest._entry_ptr.19, ptr @prandom_state_selftest._entry, ptr @prandom_state_selftest._entry.3, ptr @prandom_state_selftest._entry.6, ptr @prandom_state_selftest._entry.9, ptr @prandom_state_selftest._entry_ptr, ptr @prandom_state_selftest._entry_ptr.11, ptr @prandom_state_selftest._entry_ptr.5, ptr @prandom_state_selftest._entry_ptr.8, ptr @test1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @test2, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @prandom_init_late.random_ready, ptr @seed_timer, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom_state_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom_state_selftest._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test2 to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom_state_selftest._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom_state_selftest._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom32_state_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom32_state_selftest._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prandom_init_late.random_ready to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seed_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @prandom_u32_state(ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and = shl i32 %1, 18
  %shl = and i32 %and, -524288
  %shl2 = shl i32 %1, 6
  %xor = xor i32 %shl2, %1
  %shr = lshr i32 %xor, 13
  %xor459 = or i32 %shr, %shl
  store i32 %xor459, ptr %state, align 4
  %s2 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %s2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s2, align 4
  %and6 = shl i32 %3, 2
  %shl7 = and i32 %and6, -32
  %xor11 = xor i32 %and6, %3
  %shr12 = lshr i32 %xor11, 27
  %xor1360 = or i32 %shr12, %shl7
  store i32 %xor1360, ptr %s2, align 4
  %s3 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %s3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s3, align 4
  %and15 = shl i32 %5, 7
  %shl16 = and i32 %and15, -2048
  %shl18 = shl i32 %5, 13
  %xor20 = xor i32 %shl18, %5
  %shr21 = lshr i32 %xor20, 21
  %xor2261 = or i32 %shr21, %shl16
  store i32 %xor2261, ptr %s3, align 4
  %s4 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %s4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s4, align 4
  %and24 = shl i32 %7, 13
  %shl25 = and i32 %and24, -1048576
  %shl27 = shl i32 %7, 3
  %xor29 = xor i32 %shl27, %7
  %shr30 = lshr i32 %xor29, 12
  %xor3162 = or i32 %shr30, %shl25
  store i32 %xor3162, ptr %s4, align 4
  %xor35 = xor i32 %xor1360, %xor459
  %xor37 = xor i32 %xor35, %xor2261
  %xor39 = xor i32 %xor37, %xor3162
  ret i32 %xor39
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prandom_bytes_state(ptr nocapture noundef %state, ptr nocapture noundef writeonly %buf, i32 noundef %bytes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes)
  %cmp45 = icmp ugt i32 %bytes, 3
  br i1 %cmp45, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %s2.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %s3.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %s4.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %bytes.addr.047 = phi i32 [ %bytes, %do.body.lr.ph ], [ %sub, %do.body.do.body_crit_edge ]
  %ptr.046 = phi ptr [ %buf, %do.body.lr.ph ], [ %add.ptr, %do.body.do.body_crit_edge ]
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and.i = shl i32 %1, 18
  %shl.i = and i32 %and.i, -524288
  %shl2.i = shl i32 %1, 6
  %xor.i = xor i32 %shl2.i, %1
  %shr.i = lshr i32 %xor.i, 13
  %xor459.i = or i32 %shr.i, %shl.i
  store i32 %xor459.i, ptr %state, align 4
  %2 = ptrtoint ptr %s2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s2.i, align 4
  %and6.i = shl i32 %3, 2
  %shl7.i = and i32 %and6.i, -32
  %xor11.i = xor i32 %and6.i, %3
  %shr12.i = lshr i32 %xor11.i, 27
  %xor1360.i = or i32 %shr12.i, %shl7.i
  store i32 %xor1360.i, ptr %s2.i, align 4
  %4 = ptrtoint ptr %s3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s3.i, align 4
  %and15.i = shl i32 %5, 7
  %shl16.i = and i32 %and15.i, -2048
  %shl18.i = shl i32 %5, 13
  %xor20.i = xor i32 %shl18.i, %5
  %shr21.i = lshr i32 %xor20.i, 21
  %xor2261.i = or i32 %shr21.i, %shl16.i
  store i32 %xor2261.i, ptr %s3.i, align 4
  %6 = ptrtoint ptr %s4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s4.i, align 4
  %and24.i = shl i32 %7, 13
  %shl25.i = and i32 %and24.i, -1048576
  %shl27.i = shl i32 %7, 3
  %xor29.i = xor i32 %shl27.i, %7
  %shr30.i = lshr i32 %xor29.i, 12
  %xor3162.i = or i32 %shr30.i, %shl25.i
  store i32 %xor3162.i, ptr %s4.i, align 4
  %xor35.i = xor i32 %xor1360.i, %xor459.i
  %xor37.i = xor i32 %xor35.i, %xor2261.i
  %xor39.i = xor i32 %xor37.i, %xor3162.i
  %8 = ptrtoint ptr %ptr.046 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %xor39.i, ptr %ptr.046, align 1
  %add.ptr = getelementptr i8, ptr %ptr.046, i32 4
  %sub = add i32 %bytes.addr.047, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %buf, %entry.while.end_crit_edge ], [ %add.ptr, %do.body.while.end_crit_edge ]
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.while.end_crit_edge ], [ %sub, %do.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa)
  %cmp1.not = icmp eq i32 %bytes.addr.0.lcssa, 0
  br i1 %cmp1.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %and.i16 = shl i32 %10, 18
  %shl.i17 = and i32 %and.i16, -524288
  %shl2.i18 = shl i32 %10, 6
  %xor.i19 = xor i32 %shl2.i18, %10
  %shr.i20 = lshr i32 %xor.i19, 13
  %xor459.i21 = or i32 %shr.i20, %shl.i17
  store i32 %xor459.i21, ptr %state, align 4
  %s2.i22 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %s2.i22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %s2.i22, align 4
  %and6.i23 = shl i32 %12, 2
  %shl7.i24 = and i32 %and6.i23, -32
  %xor11.i25 = xor i32 %and6.i23, %12
  %shr12.i26 = lshr i32 %xor11.i25, 27
  %xor1360.i27 = or i32 %shr12.i26, %shl7.i24
  store i32 %xor1360.i27, ptr %s2.i22, align 4
  %s3.i28 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %13 = ptrtoint ptr %s3.i28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %s3.i28, align 4
  %and15.i29 = shl i32 %14, 7
  %shl16.i30 = and i32 %and15.i29, -2048
  %shl18.i31 = shl i32 %14, 13
  %xor20.i32 = xor i32 %shl18.i31, %14
  %shr21.i33 = lshr i32 %xor20.i32, 21
  %xor2261.i34 = or i32 %shr21.i33, %shl16.i30
  store i32 %xor2261.i34, ptr %s3.i28, align 4
  %s4.i35 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  %15 = ptrtoint ptr %s4.i35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %s4.i35, align 4
  %and24.i36 = shl i32 %16, 13
  %shl25.i37 = and i32 %and24.i36, -1048576
  %shl27.i38 = shl i32 %16, 3
  %xor29.i39 = xor i32 %shl27.i38, %16
  %shr30.i40 = lshr i32 %xor29.i39, 12
  %xor3162.i41 = or i32 %shr30.i40, %shl25.i37
  store i32 %xor3162.i41, ptr %s4.i35, align 4
  %xor35.i42 = xor i32 %xor1360.i27, %xor459.i21
  %xor37.i43 = xor i32 %xor35.i42, %xor2261.i34
  %xor39.i44 = xor i32 %xor37.i43, %xor3162.i41
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %if.then
  %ptr.1 = phi ptr [ %ptr.0.lcssa, %if.then ], [ %incdec.ptr, %do.body3.do.body3_crit_edge ]
  %bytes.addr.1 = phi i32 [ %bytes.addr.0.lcssa, %if.then ], [ %dec, %do.body3.do.body3_crit_edge ]
  %rem.0 = phi i32 [ %xor39.i44, %if.then ], [ %shr, %do.body3.do.body3_crit_edge ]
  %conv = trunc i32 %rem.0 to i8
  %incdec.ptr = getelementptr i8, ptr %ptr.1, i32 1
  %17 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %ptr.1, align 1
  %dec = add i32 %bytes.addr.1, -1
  %shr = lshr i32 %rem.0, 8
  %cmp5.not = icmp eq i32 %dec, 0
  br i1 %cmp5.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %while.end.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prandom_seed_full_state(ptr noundef %pcpu_state) #3 align 64 {
entry:
  %seeds = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call25, i32 %0)
  %cmp26 = icmp ult i32 %call25, %0
  br i1 %cmp26, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = ptrtoint ptr %pcpu_state to i32
  %2 = getelementptr inbounds [4 x i32], ptr %seeds, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %seeds, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %seeds, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call27 = phi i32 [ %call25, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call27
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %1
  %7 = inttoptr i32 %add to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %seeds) #15
  %8 = call ptr @memset(ptr %seeds, i32 255, i32 16)
  call void @get_random_bytes(ptr noundef nonnull %seeds, i32 noundef 16) #15
  %9 = ptrtoint ptr %seeds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %seeds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp.i = icmp ult i32 %10, 2
  %add.i = select i1 %cmp.i, i32 2, i32 0
  %cond.i = add i32 %add.i, %10
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond.i, ptr %7, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp.i16 = icmp ult i32 %13, 8
  %add.i17 = select i1 %cmp.i16, i32 8, i32 0
  %cond.i18 = add i32 %add.i17, %13
  %s2 = getelementptr inbounds %struct.rnd_state, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %s2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i18, ptr %s2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp.i19 = icmp ult i32 %16, 16
  %add.i20 = select i1 %cmp.i19, i32 16, i32 0
  %cond.i21 = add i32 %add.i20, %16
  %s3 = getelementptr inbounds %struct.rnd_state, ptr %7, i32 0, i32 2
  %17 = ptrtoint ptr %s3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i21, ptr %s3, align 4
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %19)
  %cmp.i22 = icmp ult i32 %19, 128
  %add.i23 = select i1 %cmp.i22, i32 128, i32 0
  %cond.i24 = add i32 %add.i23, %19
  %s4 = getelementptr inbounds %struct.rnd_state, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %s4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i24, ptr %s4, align 4
  call fastcc void @prandom_warmup(ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %seeds) #15
  %call = call i32 @cpumask_next(i32 noundef %call27, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @prandom_warmup(ptr noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %and.i = shl i32 %1, 18
  %shl.i = and i32 %and.i, -524288
  %shl2.i = shl i32 %1, 6
  %xor.i = xor i32 %shl2.i, %1
  %shr.i = lshr i32 %xor.i, 13
  %xor459.i = or i32 %shr.i, %shl.i
  %s2.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %s2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s2.i, align 4
  %and6.i = shl i32 %3, 2
  %shl7.i = and i32 %and6.i, 1073741792
  %xor11.i = xor i32 %and6.i, %3
  %shr12.i = lshr i32 %xor11.i, 27
  %xor1360.i = or i32 %shr12.i, %shl7.i
  %s3.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %s3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %s3.i, align 4
  %and15.i = shl i32 %5, 7
  %shl16.i = and i32 %and15.i, -2048
  %shl18.i = shl i32 %5, 13
  %xor20.i = xor i32 %shl18.i, %5
  %shr21.i = lshr i32 %xor20.i, 21
  %xor2261.i = or i32 %shr21.i, %shl16.i
  %s4.i = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %s4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %s4.i, align 4
  %and24.i = shl i32 %7, 13
  %shl25.i = and i32 %and24.i, -1048576
  %shl27.i = shl i32 %7, 3
  %xor29.i = xor i32 %shl27.i, %7
  %shr30.i = lshr i32 %xor29.i, 12
  %xor3162.i = or i32 %shr30.i, %shl25.i
  %and.i19 = shl i32 %shr.i, 18
  %shl.i20 = and i32 %and.i19, -524288
  %shl2.i21 = shl i32 %xor459.i, 6
  %xor.i22 = xor i32 %shl2.i21, %xor459.i
  %shr.i23 = lshr i32 %xor.i22, 13
  %xor459.i24 = or i32 %shr.i23, %shl.i20
  %and6.i26 = shl nuw i32 %xor1360.i, 2
  %shl7.i27 = and i32 %and6.i26, 1073741792
  %xor11.i28 = xor i32 %and6.i26, %and6.i
  %shr12.i29 = lshr i32 %xor11.i28, 27
  %xor1360.i30 = or i32 %shr12.i29, %shl7.i27
  %and15.i32 = shl i32 %xor2261.i, 7
  %shl16.i33 = and i32 %and15.i32, -2048
  %shl18.i34 = shl i32 %xor2261.i, 13
  %xor20.i35 = xor i32 %shl18.i34, %and15.i
  %shr21.i36 = lshr i32 %xor20.i35, 21
  %xor2261.i37 = or i32 %shr21.i36, %shl16.i33
  %and24.i39 = shl i32 %shr30.i, 13
  %shl25.i40 = and i32 %and24.i39, -1048576
  %shl27.i41 = shl i32 %xor3162.i, 3
  %xor29.i42 = xor i32 %shl27.i41, %xor3162.i
  %shr30.i43 = lshr i32 %xor29.i42, 12
  %xor3162.i44 = or i32 %shr30.i43, %shl25.i40
  %and.i48 = shl i32 %shr.i23, 18
  %shl.i49 = and i32 %and.i48, -524288
  %shl2.i50 = shl i32 %xor459.i24, 6
  %xor.i51 = xor i32 %shl2.i50, %xor459.i24
  %shr.i52 = lshr i32 %xor.i51, 13
  %xor459.i53 = or i32 %shr.i52, %shl.i49
  %and6.i55 = shl nuw i32 %xor1360.i30, 2
  %shl7.i56 = and i32 %and6.i55, 1073741792
  %xor11.i57 = xor i32 %and6.i55, %and6.i26
  %shr12.i58 = lshr i32 %xor11.i57, 27
  %xor1360.i59 = or i32 %shr12.i58, %shl7.i56
  %and15.i61 = shl i32 %xor2261.i37, 7
  %shl16.i62 = and i32 %and15.i61, -2048
  %shl18.i63 = shl i32 %xor2261.i37, 13
  %xor20.i64 = xor i32 %shl18.i63, %and15.i32
  %shr21.i65 = lshr i32 %xor20.i64, 21
  %xor2261.i66 = or i32 %shr21.i65, %shl16.i62
  %and24.i68 = shl i32 %shr30.i43, 13
  %shl25.i69 = and i32 %and24.i68, -1048576
  %shl27.i70 = shl i32 %xor3162.i44, 3
  %xor29.i71 = xor i32 %shl27.i70, %xor3162.i44
  %shr30.i72 = lshr i32 %xor29.i71, 12
  %xor3162.i73 = or i32 %shr30.i72, %shl25.i69
  %and.i77 = shl i32 %shr.i52, 18
  %shl.i78 = and i32 %and.i77, -524288
  %shl2.i79 = shl i32 %xor459.i53, 6
  %xor.i80 = xor i32 %shl2.i79, %xor459.i53
  %shr.i81 = lshr i32 %xor.i80, 13
  %xor459.i82 = or i32 %shr.i81, %shl.i78
  %and6.i84 = shl nuw i32 %xor1360.i59, 2
  %shl7.i85 = and i32 %and6.i84, 1073741792
  %xor11.i86 = xor i32 %and6.i84, %and6.i55
  %shr12.i87 = lshr i32 %xor11.i86, 27
  %xor1360.i88 = or i32 %shr12.i87, %shl7.i85
  %and15.i90 = shl i32 %xor2261.i66, 7
  %shl16.i91 = and i32 %and15.i90, -2048
  %shl18.i92 = shl i32 %xor2261.i66, 13
  %xor20.i93 = xor i32 %shl18.i92, %and15.i61
  %shr21.i94 = lshr i32 %xor20.i93, 21
  %xor2261.i95 = or i32 %shr21.i94, %shl16.i91
  %and24.i97 = shl i32 %shr30.i72, 13
  %shl25.i98 = and i32 %and24.i97, -1048576
  %shl27.i99 = shl i32 %xor3162.i73, 3
  %xor29.i100 = xor i32 %shl27.i99, %xor3162.i73
  %shr30.i101 = lshr i32 %xor29.i100, 12
  %xor3162.i102 = or i32 %shr30.i101, %shl25.i98
  %and.i106 = shl i32 %shr.i81, 18
  %shl.i107 = and i32 %and.i106, -524288
  %shl2.i108 = shl i32 %xor459.i82, 6
  %xor.i109 = xor i32 %shl2.i108, %xor459.i82
  %shr.i110 = lshr i32 %xor.i109, 13
  %xor459.i111 = or i32 %shr.i110, %shl.i107
  %and6.i113 = shl nuw i32 %xor1360.i88, 2
  %shl7.i114 = and i32 %and6.i113, 1073741792
  %xor11.i115 = xor i32 %and6.i113, %and6.i84
  %shr12.i116 = lshr i32 %xor11.i115, 27
  %xor1360.i117 = or i32 %shr12.i116, %shl7.i114
  %and15.i119 = shl i32 %xor2261.i95, 7
  %shl16.i120 = and i32 %and15.i119, -2048
  %shl18.i121 = shl i32 %xor2261.i95, 13
  %xor20.i122 = xor i32 %shl18.i121, %and15.i90
  %shr21.i123 = lshr i32 %xor20.i122, 21
  %xor2261.i124 = or i32 %shr21.i123, %shl16.i120
  %and24.i126 = shl i32 %shr30.i101, 13
  %shl25.i127 = and i32 %and24.i126, -1048576
  %shl27.i128 = shl i32 %xor3162.i102, 3
  %xor29.i129 = xor i32 %shl27.i128, %xor3162.i102
  %shr30.i130 = lshr i32 %xor29.i129, 12
  %xor3162.i131 = or i32 %shr30.i130, %shl25.i127
  %and.i135 = shl i32 %shr.i110, 18
  %shl.i136 = and i32 %and.i135, -524288
  %shl2.i137 = shl i32 %xor459.i111, 6
  %xor.i138 = xor i32 %shl2.i137, %xor459.i111
  %shr.i139 = lshr i32 %xor.i138, 13
  %xor459.i140 = or i32 %shr.i139, %shl.i136
  %and6.i142 = shl nuw i32 %xor1360.i117, 2
  %shl7.i143 = and i32 %and6.i142, 1073741792
  %xor11.i144 = xor i32 %and6.i142, %and6.i113
  %shr12.i145 = lshr i32 %xor11.i144, 27
  %xor1360.i146 = or i32 %shr12.i145, %shl7.i143
  %and15.i148 = shl i32 %xor2261.i124, 7
  %shl16.i149 = and i32 %and15.i148, -2048
  %shl18.i150 = shl i32 %xor2261.i124, 13
  %xor20.i151 = xor i32 %shl18.i150, %and15.i119
  %shr21.i152 = lshr i32 %xor20.i151, 21
  %xor2261.i153 = or i32 %shr21.i152, %shl16.i149
  %and24.i155 = shl i32 %shr30.i130, 13
  %shl25.i156 = and i32 %and24.i155, -1048576
  %shl27.i157 = shl i32 %xor3162.i131, 3
  %xor29.i158 = xor i32 %shl27.i157, %xor3162.i131
  %shr30.i159 = lshr i32 %xor29.i158, 12
  %xor3162.i160 = or i32 %shr30.i159, %shl25.i156
  %and.i164 = shl i32 %shr.i139, 18
  %shl.i165 = and i32 %and.i164, -524288
  %shl2.i166 = shl i32 %xor459.i140, 6
  %xor.i167 = xor i32 %shl2.i166, %xor459.i140
  %shr.i168 = lshr i32 %xor.i167, 13
  %xor459.i169 = or i32 %shr.i168, %shl.i165
  %and6.i171 = shl nuw i32 %xor1360.i146, 2
  %shl7.i172 = and i32 %and6.i171, 1073741792
  %xor11.i173 = xor i32 %and6.i171, %and6.i142
  %shr12.i174 = lshr i32 %xor11.i173, 27
  %xor1360.i175 = or i32 %shr12.i174, %shl7.i172
  %and15.i177 = shl i32 %xor2261.i153, 7
  %shl16.i178 = and i32 %and15.i177, -2048
  %shl18.i179 = shl i32 %xor2261.i153, 13
  %xor20.i180 = xor i32 %shl18.i179, %and15.i148
  %shr21.i181 = lshr i32 %xor20.i180, 21
  %xor2261.i182 = or i32 %shr21.i181, %shl16.i178
  %and24.i184 = shl i32 %shr30.i159, 13
  %shl25.i185 = and i32 %and24.i184, -1048576
  %shl27.i186 = shl i32 %xor3162.i160, 3
  %xor29.i187 = xor i32 %shl27.i186, %xor3162.i160
  %shr30.i188 = lshr i32 %xor29.i187, 12
  %xor3162.i189 = or i32 %shr30.i188, %shl25.i185
  %and.i193 = shl i32 %shr.i168, 18
  %shl.i194 = and i32 %and.i193, -524288
  %shl2.i195 = shl i32 %xor459.i169, 6
  %xor.i196 = xor i32 %shl2.i195, %xor459.i169
  %shr.i197 = lshr i32 %xor.i196, 13
  %xor459.i198 = or i32 %shr.i197, %shl.i194
  %and6.i200 = shl nuw i32 %xor1360.i175, 2
  %shl7.i201 = and i32 %and6.i200, 1073741792
  %xor11.i202 = xor i32 %and6.i200, %and6.i171
  %shr12.i203 = lshr i32 %xor11.i202, 27
  %xor1360.i204 = or i32 %shr12.i203, %shl7.i201
  %and15.i206 = shl i32 %xor2261.i182, 7
  %shl16.i207 = and i32 %and15.i206, -2048
  %shl18.i208 = shl i32 %xor2261.i182, 13
  %xor20.i209 = xor i32 %shl18.i208, %and15.i177
  %shr21.i210 = lshr i32 %xor20.i209, 21
  %xor2261.i211 = or i32 %shr21.i210, %shl16.i207
  %and24.i213 = shl i32 %shr30.i188, 13
  %shl25.i214 = and i32 %and24.i213, -1048576
  %shl27.i215 = shl i32 %xor3162.i189, 3
  %xor29.i216 = xor i32 %shl27.i215, %xor3162.i189
  %shr30.i217 = lshr i32 %xor29.i216, 12
  %xor3162.i218 = or i32 %shr30.i217, %shl25.i214
  %and.i222 = shl i32 %shr.i197, 18
  %shl.i223 = and i32 %and.i222, -524288
  %shl2.i224 = shl i32 %xor459.i198, 6
  %xor.i225 = xor i32 %shl2.i224, %xor459.i198
  %shr.i226 = lshr i32 %xor.i225, 13
  %xor459.i227 = or i32 %shr.i226, %shl.i223
  %and6.i229 = shl nuw i32 %xor1360.i204, 2
  %shl7.i230 = and i32 %and6.i229, 1073741792
  %xor11.i231 = xor i32 %and6.i229, %and6.i200
  %shr12.i232 = lshr i32 %xor11.i231, 27
  %xor1360.i233 = or i32 %shr12.i232, %shl7.i230
  %and15.i235 = shl i32 %xor2261.i211, 7
  %shl16.i236 = and i32 %and15.i235, -2048
  %shl18.i237 = shl i32 %xor2261.i211, 13
  %xor20.i238 = xor i32 %shl18.i237, %and15.i206
  %shr21.i239 = lshr i32 %xor20.i238, 21
  %xor2261.i240 = or i32 %shr21.i239, %shl16.i236
  %and24.i242 = shl i32 %shr30.i217, 13
  %shl25.i243 = and i32 %and24.i242, -1048576
  %shl27.i244 = shl i32 %xor3162.i218, 3
  %xor29.i245 = xor i32 %shl27.i244, %xor3162.i218
  %shr30.i246 = lshr i32 %xor29.i245, 12
  %xor3162.i247 = or i32 %shr30.i246, %shl25.i243
  %and.i251 = shl i32 %shr.i226, 18
  %shl.i252 = and i32 %and.i251, -524288
  %shl2.i253 = shl i32 %xor459.i227, 6
  %xor.i254 = xor i32 %shl2.i253, %xor459.i227
  %shr.i255 = lshr i32 %xor.i254, 13
  %xor459.i256 = or i32 %shr.i255, %shl.i252
  store i32 %xor459.i256, ptr %state, align 4
  %and6.i258 = shl nuw i32 %xor1360.i233, 2
  %shl7.i259 = and i32 %and6.i258, -32
  %xor11.i260 = xor i32 %and6.i258, %and6.i229
  %shr12.i261 = lshr i32 %xor11.i260, 27
  %xor1360.i262 = or i32 %shr12.i261, %shl7.i259
  store i32 %xor1360.i262, ptr %s2.i, align 4
  %and15.i264 = shl i32 %xor2261.i240, 7
  %shl16.i265 = and i32 %and15.i264, -2048
  %shl18.i266 = shl i32 %xor2261.i240, 13
  %xor20.i267 = xor i32 %shl18.i266, %and15.i235
  %shr21.i268 = lshr i32 %xor20.i267, 21
  %xor2261.i269 = or i32 %shr21.i268, %shl16.i265
  store i32 %xor2261.i269, ptr %s3.i, align 4
  %and24.i271 = shl i32 %shr30.i246, 13
  %shl25.i272 = and i32 %and24.i271, -1048576
  %shl27.i273 = shl i32 %xor3162.i247, 3
  %xor29.i274 = xor i32 %shl27.i273, %xor3162.i247
  %shr30.i275 = lshr i32 %xor29.i274, 12
  %xor3162.i276 = or i32 %shr30.i275, %shl25.i272
  store i32 %xor3162.i276, ptr %s4.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prandom_state_selftest() #6 section ".init.text" align 64 {
entry:
  %state = alloca %struct.rnd_state, align 4
  %state14 = alloca %struct.rnd_state, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rnd_state, ptr %state, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.087 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %error.0.off086 = phi i1 [ false, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #15
  %arrayidx = getelementptr [4 x %struct.prandom_test1], ptr @test1, i32 0, i32 %i.087
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %mul.i = mul i32 %4, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul.i)
  %cmp.i.i = icmp ult i32 %mul.i, 2
  %add.i.i = select i1 %cmp.i.i, i32 2, i32 0
  %cond.i.i = add i32 %add.i.i, %mul.i
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond.i.i, ptr %state, align 4
  %mul9.i = mul i32 %cond.i.i, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul9.i)
  %cmp.i1.i = icmp ult i32 %mul9.i, 8
  %add.i2.i = select i1 %cmp.i1.i, i32 8, i32 0
  %cond.i3.i = add i32 %add.i2.i, %mul9.i
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i3.i, ptr %0, align 4
  %mul19.i = mul i32 %cond.i3.i, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul19.i)
  %cmp.i4.i = icmp ult i32 %mul19.i, 16
  %add.i5.i = select i1 %cmp.i4.i, i32 16, i32 0
  %cond.i6.i = add i32 %add.i5.i, %mul19.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond.i6.i, ptr %1, align 4
  %mul29.i = mul i32 %cond.i6.i, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul29.i)
  %cmp.i7.i = icmp ult i32 %mul29.i, 128
  %add.i8.i = select i1 %cmp.i7.i, i32 128, i32 0
  %cond.i9.i = add i32 %add.i8.i, %mul29.i
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond.i9.i, ptr %2, align 4
  call fastcc void @prandom_warmup(ptr noundef nonnull %state)
  %result = getelementptr [4 x %struct.prandom_test1], ptr @test1, i32 0, i32 %i.087, i32 1
  %9 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result, align 4
  %call = call i32 @prandom_u32_state(ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call)
  %cmp2.not = icmp ne i32 %10, %call
  %spec.select = select i1 %cmp2.not, i1 true, i1 %error.0.off086
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #15
  %inc = add nuw nsw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %.str..str.4 = select i1 %spec.select, ptr @.str, ptr @.str.4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str..str.4) #16
  %11 = getelementptr inbounds %struct.rnd_state, ptr %state14, i32 0, i32 1
  %12 = getelementptr inbounds %struct.rnd_state, ptr %state14, i32 0, i32 2
  %13 = getelementptr inbounds %struct.rnd_state, ptr %state14, i32 0, i32 3
  br label %for.body13

for.body13:                                       ; preds = %for.end24.for.body13_crit_edge, %for.end
  %i.192 = phi i32 [ 0, %for.end ], [ %inc36, %for.end24.for.body13_crit_edge ]
  %errors.091 = phi i32 [ 0, %for.end ], [ %spec.select66, %for.end24.for.body13_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state14) #15
  %arrayidx15 = getelementptr [100 x %struct.prandom_test2], ptr @test2, i32 0, i32 %i.192
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15, align 4
  %mul.i67 = mul i32 %15, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mul.i67)
  %cmp.i.i68 = icmp ult i32 %mul.i67, 2
  %add.i.i69 = select i1 %cmp.i.i68, i32 2, i32 0
  %cond.i.i70 = add i32 %add.i.i69, %mul.i67
  %16 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i.i70, ptr %state14, align 4
  %mul9.i71 = mul i32 %cond.i.i70, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul9.i71)
  %cmp.i1.i72 = icmp ult i32 %mul9.i71, 8
  %add.i2.i73 = select i1 %cmp.i1.i72, i32 8, i32 0
  %cond.i3.i74 = add i32 %add.i2.i73, %mul9.i71
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond.i3.i74, ptr %11, align 4
  %mul19.i76 = mul i32 %cond.i3.i74, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul19.i76)
  %cmp.i4.i77 = icmp ult i32 %mul19.i76, 16
  %add.i5.i78 = select i1 %cmp.i4.i77, i32 16, i32 0
  %cond.i6.i79 = add i32 %add.i5.i78, %mul19.i76
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond.i6.i79, ptr %12, align 4
  %mul29.i81 = mul i32 %cond.i6.i79, 69069
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul29.i81)
  %cmp.i7.i82 = icmp ult i32 %mul29.i81, 128
  %add.i8.i83 = select i1 %cmp.i7.i82, i32 128, i32 0
  %cond.i9.i84 = add i32 %add.i8.i83, %mul29.i81
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i9.i84, ptr %13, align 4
  call fastcc void @prandom_warmup(ptr noundef nonnull %state14)
  %iteration = getelementptr [100 x %struct.prandom_test2], ptr @test2, i32 0, i32 %i.192, i32 1
  %20 = ptrtoint ptr %iteration to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iteration, align 4
  %sub = add i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1988.not = icmp eq i32 %sub, 0
  br i1 %cmp1988.not, label %for.body13.for.end24_crit_edge, label %for.body13.for.body20_crit_edge

for.body13.for.body20_crit_edge:                  ; preds = %for.body13
  br label %for.body20

for.body13.for.end24_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end24

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body13.for.body20_crit_edge
  %j.089 = phi i32 [ %inc23, %for.body20.for.body20_crit_edge ], [ 0, %for.body13.for.body20_crit_edge ]
  %call21 = call i32 @prandom_u32_state(ptr noundef nonnull %state14)
  %inc23 = add nuw i32 %j.089, 1
  %exitcond93.not = icmp eq i32 %inc23, %sub
  br i1 %exitcond93.not, label %for.body20.for.end24_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body20

for.body20.for.end24_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end24

for.end24:                                        ; preds = %for.body20.for.end24_crit_edge, %for.body13.for.end24_crit_edge
  %result26 = getelementptr [100 x %struct.prandom_test2], ptr @test2, i32 0, i32 %i.192, i32 2
  %22 = ptrtoint ptr %result26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result26, align 4
  %call27 = call i32 @prandom_u32_state(ptr noundef nonnull %state14)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call27)
  %cmp28.not = icmp ne i32 %23, %call27
  %inc30 = zext i1 %cmp28.not to i32
  %spec.select66 = add i32 %errors.091, %inc30
  %inc36 = add nuw nsw i32 %i.192, 1
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 303, i32 noundef 0) #15
  %call.i = call i32 @__cond_resched() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state14) #15
  %exitcond94.not = icmp eq i32 %inc36, 100
  br i1 %exitcond94.not, label %for.end37, label %for.end24.for.body13_crit_edge

for.end24.for.body13_crit_edge:                   ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.end37:                                        ; preds = %for.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select66)
  %tobool38.not = icmp eq i32 %spec.select66, 0
  br i1 %tobool38.not, label %do.end48, label %do.end42

do.end42:                                         ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %spec.select66, i32 noundef 100) #16
  br label %if.end51

do.end48:                                         ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #13
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef 100) #16
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %do.end42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @prandom_u32() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !82
  %4 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @net_rand_state to i32)
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %v12.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %v12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v12.i, align 4
  %v23.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %v23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %v23.i, align 4
  %v34.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %v34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v34.i, align 4
  %add.i16 = add i32 %9, ptrtoint (ptr @net_rand_noise to i32)
  %19 = inttoptr i32 %add.i16 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %xor.i = xor i32 %21, %18
  %add12.i = add i32 %14, %12
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 5) #15
  %add14.i = add i32 %xor.i, %16
  %or.i102.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 8) #15
  %xor16.i = xor i32 %or.i.i, %add12.i
  %or.i103.i = tail call i32 @llvm.fshl.i32(i32 %add12.i, i32 %add12.i, i32 16) #15
  %xor18.i = xor i32 %or.i102.i, %add14.i
  %add19.i = add i32 %xor18.i, %or.i103.i
  %or.i104.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 7) #15
  %add21.i = add i32 %add14.i, %xor16.i
  %or.i105.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 13) #15
  %xor23.i = xor i32 %or.i104.i, %add19.i
  %xor24.i = xor i32 %add21.i, %or.i105.i
  %or.i106.i = tail call i32 @llvm.fshl.i32(i32 %add21.i, i32 %add21.i, i32 16) #15
  %add26.i = add i32 %add19.i, %xor24.i
  %or.i107.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 5) #15
  %add28.i = add i32 %xor23.i, %or.i106.i
  %or.i108.i = tail call i32 @llvm.fshl.i32(i32 %xor23.i, i32 %xor23.i, i32 8) #15
  %xor30.i = xor i32 %or.i107.i, %add26.i
  %or.i109.i = tail call i32 @llvm.fshl.i32(i32 %add26.i, i32 %add26.i, i32 16) #15
  %xor32.i = xor i32 %or.i108.i, %add28.i
  %add33.i = add i32 %xor32.i, %or.i109.i
  %or.i110.i = tail call i32 @llvm.fshl.i32(i32 %xor32.i, i32 %xor32.i, i32 7) #15
  %add35.i = add i32 %add28.i, %xor30.i
  %or.i111.i = tail call i32 @llvm.fshl.i32(i32 %xor30.i, i32 %xor30.i, i32 13) #15
  %xor37.i = xor i32 %or.i110.i, %add33.i
  %xor38.i = xor i32 %or.i111.i, %add35.i
  %or.i112.i = tail call i32 @llvm.fshl.i32(i32 %add35.i, i32 %add35.i, i32 16) #15
  %xor40.i = xor i32 %add33.i, %21
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %xor40.i, ptr %10, align 4
  %23 = ptrtoint ptr %v12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %xor38.i, ptr %v12.i, align 4
  %24 = ptrtoint ptr %v23.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i112.i, ptr %v23.i, align 4
  %25 = ptrtoint ptr %v34.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %xor37.i, ptr %v34.i, align 4
  %add45.i = add i32 %xor37.i, %xor38.i
  tail call fastcc void @trace_prandom_u32(i32 noundef %add45.i)
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !83
  %26 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i14 = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i14 to ptr
  %preempt_count.i.i15 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i15, align 4
  %sub.i = add i32 %29, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i15, align 4
  ret i32 %add45.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_prandom_u32(i32 noundef %ret) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prandom_u32, i32 0, i32 1), ptr blockaddress(@trace_prandom_u32, %do.body)) #15
          to label %if.end48 [label %do.body], !srcloc !84

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !85

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #13
  %9 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !86
  %call42 = tail call i32 @__traceiter_prandom_u32(ptr noundef null, i32 noundef %ret) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !87
  %13 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !85

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 108, i32 noundef 9, ptr noundef null) #15
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prandom_u32, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prandom_u32, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_prandom_u32.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @trace_prandom_u32.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 228, ptr noundef nonnull @.str.13) #15
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !89
  %31 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prandom_bytes(ptr nocapture noundef writeonly %buf, i32 noundef %bytes) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !90
  %4 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, ptrtoint (ptr @net_rand_state to i32)
  %10 = inttoptr i32 %add to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes)
  %cmp71 = icmp ugt i32 %bytes, 3
  br i1 %cmp71, label %do.body6.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body6.lr.ph:                                   ; preds = %entry
  %v12.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 1
  %v23.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 2
  %v34.i = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 3
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %do.body6.lr.ph
  %bytes.addr.073 = phi i32 [ %bytes, %do.body6.lr.ph ], [ %sub, %do.body6.do.body6_crit_edge ]
  %ptr.072 = phi ptr [ %buf, %do.body6.lr.ph ], [ %add.ptr, %do.body6.do.body6_crit_edge ]
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = ptrtoint ptr %v12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v12.i, align 4
  %15 = ptrtoint ptr %v23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %v23.i, align 4
  %17 = ptrtoint ptr %v34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v34.i, align 4
  %19 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i32 = add i32 %24, ptrtoint (ptr @net_rand_noise to i32)
  %25 = inttoptr i32 %add.i32 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %xor.i = xor i32 %27, %18
  %add12.i = add i32 %14, %12
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 5) #15
  %add14.i = add i32 %xor.i, %16
  %or.i102.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 8) #15
  %xor16.i = xor i32 %or.i.i, %add12.i
  %or.i103.i = tail call i32 @llvm.fshl.i32(i32 %add12.i, i32 %add12.i, i32 16) #15
  %xor18.i = xor i32 %or.i102.i, %add14.i
  %add19.i = add i32 %xor18.i, %or.i103.i
  %or.i104.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i, i32 %xor18.i, i32 7) #15
  %add21.i = add i32 %add14.i, %xor16.i
  %or.i105.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 13) #15
  %xor23.i = xor i32 %or.i104.i, %add19.i
  %xor24.i = xor i32 %add21.i, %or.i105.i
  %or.i106.i = tail call i32 @llvm.fshl.i32(i32 %add21.i, i32 %add21.i, i32 16) #15
  %add26.i = add i32 %add19.i, %xor24.i
  %or.i107.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 5) #15
  %add28.i = add i32 %xor23.i, %or.i106.i
  %or.i108.i = tail call i32 @llvm.fshl.i32(i32 %xor23.i, i32 %xor23.i, i32 8) #15
  %xor30.i = xor i32 %or.i107.i, %add26.i
  %or.i109.i = tail call i32 @llvm.fshl.i32(i32 %add26.i, i32 %add26.i, i32 16) #15
  %xor32.i = xor i32 %or.i108.i, %add28.i
  %add33.i = add i32 %xor32.i, %or.i109.i
  %or.i110.i = tail call i32 @llvm.fshl.i32(i32 %xor32.i, i32 %xor32.i, i32 7) #15
  %add35.i = add i32 %add28.i, %xor30.i
  %or.i111.i = tail call i32 @llvm.fshl.i32(i32 %xor30.i, i32 %xor30.i, i32 13) #15
  %xor37.i = xor i32 %or.i110.i, %add33.i
  %xor38.i = xor i32 %or.i111.i, %add35.i
  %or.i112.i = tail call i32 @llvm.fshl.i32(i32 %add35.i, i32 %add35.i, i32 16) #15
  %xor40.i = xor i32 %add33.i, %27
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %xor40.i, ptr %10, align 4
  %29 = ptrtoint ptr %v12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %xor38.i, ptr %v12.i, align 4
  %30 = ptrtoint ptr %v23.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i112.i, ptr %v23.i, align 4
  %31 = ptrtoint ptr %v34.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %xor37.i, ptr %v34.i, align 4
  %add45.i = add i32 %xor37.i, %xor38.i
  %32 = ptrtoint ptr %ptr.072 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %add45.i, ptr %ptr.072, align 1
  %add.ptr = getelementptr i8, ptr %ptr.072, i32 4
  %sub = add i32 %bytes.addr.073, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %do.body6.do.body6_crit_edge, label %do.body6.while.end_crit_edge

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

while.end:                                        ; preds = %do.body6.while.end_crit_edge, %entry.while.end_crit_edge
  %ptr.0.lcssa = phi ptr [ %buf, %entry.while.end_crit_edge ], [ %add.ptr, %do.body6.while.end_crit_edge ]
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.while.end_crit_edge ], [ %sub, %do.body6.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa)
  %cmp10.not = icmp eq i32 %bytes.addr.0.lcssa, 0
  br i1 %cmp10.not, label %while.end.do.body18_crit_edge, label %if.then

while.end.do.body18_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

if.then:                                          ; preds = %while.end
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %10, align 4
  %v12.i33 = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 1
  %35 = ptrtoint ptr %v12.i33 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %v12.i33, align 4
  %v23.i34 = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 2
  %37 = ptrtoint ptr %v23.i34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v23.i34, align 4
  %v34.i35 = getelementptr inbounds %struct.siprand_state, ptr %10, i32 0, i32 3
  %39 = ptrtoint ptr %v34.i35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %v34.i35, align 4
  %41 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i36 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i36 to ptr
  %cpu.i37 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i37, align 4
  %arrayidx.i38 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i38, align 4
  %add.i39 = add i32 %46, ptrtoint (ptr @net_rand_noise to i32)
  %47 = inttoptr i32 %add.i39 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %xor.i40 = xor i32 %49, %40
  %add12.i41 = add i32 %36, %34
  %or.i.i42 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 5) #15
  %add14.i43 = add i32 %xor.i40, %38
  %or.i102.i44 = tail call i32 @llvm.fshl.i32(i32 %xor.i40, i32 %xor.i40, i32 8) #15
  %xor16.i45 = xor i32 %or.i.i42, %add12.i41
  %or.i103.i46 = tail call i32 @llvm.fshl.i32(i32 %add12.i41, i32 %add12.i41, i32 16) #15
  %xor18.i47 = xor i32 %or.i102.i44, %add14.i43
  %add19.i48 = add i32 %xor18.i47, %or.i103.i46
  %or.i104.i49 = tail call i32 @llvm.fshl.i32(i32 %xor18.i47, i32 %xor18.i47, i32 7) #15
  %add21.i50 = add i32 %add14.i43, %xor16.i45
  %or.i105.i51 = tail call i32 @llvm.fshl.i32(i32 %xor16.i45, i32 %xor16.i45, i32 13) #15
  %xor23.i52 = xor i32 %or.i104.i49, %add19.i48
  %xor24.i53 = xor i32 %add21.i50, %or.i105.i51
  %or.i106.i54 = tail call i32 @llvm.fshl.i32(i32 %add21.i50, i32 %add21.i50, i32 16) #15
  %add26.i55 = add i32 %add19.i48, %xor24.i53
  %or.i107.i56 = tail call i32 @llvm.fshl.i32(i32 %xor24.i53, i32 %xor24.i53, i32 5) #15
  %add28.i57 = add i32 %xor23.i52, %or.i106.i54
  %or.i108.i58 = tail call i32 @llvm.fshl.i32(i32 %xor23.i52, i32 %xor23.i52, i32 8) #15
  %xor30.i59 = xor i32 %or.i107.i56, %add26.i55
  %or.i109.i60 = tail call i32 @llvm.fshl.i32(i32 %add26.i55, i32 %add26.i55, i32 16) #15
  %xor32.i61 = xor i32 %or.i108.i58, %add28.i57
  %add33.i62 = add i32 %xor32.i61, %or.i109.i60
  %or.i110.i63 = tail call i32 @llvm.fshl.i32(i32 %xor32.i61, i32 %xor32.i61, i32 7) #15
  %add35.i64 = add i32 %add28.i57, %xor30.i59
  %or.i111.i65 = tail call i32 @llvm.fshl.i32(i32 %xor30.i59, i32 %xor30.i59, i32 13) #15
  %xor37.i66 = xor i32 %or.i110.i63, %add33.i62
  %xor38.i67 = xor i32 %or.i111.i65, %add35.i64
  %or.i112.i68 = tail call i32 @llvm.fshl.i32(i32 %add35.i64, i32 %add35.i64, i32 16) #15
  %xor40.i69 = xor i32 %add33.i62, %49
  %50 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %xor40.i69, ptr %10, align 4
  %51 = ptrtoint ptr %v12.i33 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %xor38.i67, ptr %v12.i33, align 4
  %52 = ptrtoint ptr %v23.i34 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i112.i68, ptr %v23.i34, align 4
  %53 = ptrtoint ptr %v34.i35 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %xor37.i66, ptr %v34.i35, align 4
  %add45.i70 = add i32 %xor37.i66, %xor38.i67
  br label %do.body12

do.body12:                                        ; preds = %do.body12.do.body12_crit_edge, %if.then
  %ptr.1 = phi ptr [ %ptr.0.lcssa, %if.then ], [ %incdec.ptr, %do.body12.do.body12_crit_edge ]
  %bytes.addr.1 = phi i32 [ %bytes.addr.0.lcssa, %if.then ], [ %dec, %do.body12.do.body12_crit_edge ]
  %rem.0 = phi i32 [ %add45.i70, %if.then ], [ %shr, %do.body12.do.body12_crit_edge ]
  %conv = trunc i32 %rem.0 to i8
  %incdec.ptr = getelementptr i8, ptr %ptr.1, i32 1
  %54 = ptrtoint ptr %ptr.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv, ptr %ptr.1, align 1
  %shr = lshr i32 %rem.0, 8
  %dec = add i32 %bytes.addr.1, -1
  %cmp14.not = icmp eq i32 %dec, 0
  br i1 %cmp14.not, label %do.body12.do.body18_crit_edge, label %do.body12.do.body12_crit_edge

do.body12.do.body12_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

do.body12.do.body18_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body18

do.body18:                                        ; preds = %do.body12.do.body18_crit_edge, %while.end.do.body18_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !91
  %55 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i30 = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i30 to ptr
  %preempt_count.i.i31 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i31, align 4
  %sub.i = add i32 %58, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i31, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @prandom_seed(i32 noundef %entropy) #3 align 64 {
entry:
  %entropy.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %entropy.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %entropy, ptr %entropy.addr, align 4
  call void @add_device_randomness(ptr noundef nonnull %entropy.addr, i32 noundef 4) #15
  %call157 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call157, i32 %1)
  %cmp158 = icmp ult i32 %call157, %1
  br i1 %cmp158, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.body49.for.body_crit_edge, %entry.for.body_crit_edge
  %call159 = phi i32 [ %call, %do.body49.for.body_crit_edge ], [ %call157, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call159
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @net_rand_state to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %v13 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %v13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v13, align 4
  %v24 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 2
  %9 = ptrtoint ptr %v24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v24, align 4
  %v35 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %v35 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v35, align 4
  %13 = ptrtoint ptr %entropy.addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %entropy.addr, align 4
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %for.body
  %v0.0 = phi i32 [ %6, %for.body ], [ %xor35, %do.body6.do.body6_crit_edge ]
  %v1.0 = phi i32 [ %8, %for.body ], [ %xor33, %do.body6.do.body6_crit_edge ]
  %v2.0 = phi i32 [ %10, %for.body ], [ %or.i156, %do.body6.do.body6_crit_edge ]
  %v3.0 = phi i32 [ %12, %for.body ], [ %xor32, %do.body6.do.body6_crit_edge ]
  %xor = xor i32 %14, %v3.0
  %add7 = add i32 %v1.0, %v0.0
  %or.i = call i32 @llvm.fshl.i32(i32 %v1.0, i32 %v1.0, i32 5) #15
  %add9 = add i32 %xor, %v2.0
  %or.i146 = call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 8) #15
  %xor11 = xor i32 %or.i, %add7
  %or.i147 = call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 16) #15
  %xor13 = xor i32 %or.i146, %add9
  %add14 = add i32 %xor13, %or.i147
  %or.i148 = call i32 @llvm.fshl.i32(i32 %xor13, i32 %xor13, i32 7) #15
  %add16 = add i32 %add9, %xor11
  %or.i149 = call i32 @llvm.fshl.i32(i32 %xor11, i32 %xor11, i32 13) #15
  %xor18 = xor i32 %or.i148, %add14
  %xor19 = xor i32 %add16, %or.i149
  %or.i150 = call i32 @llvm.fshl.i32(i32 %add16, i32 %add16, i32 16) #15
  %add21 = add i32 %add14, %xor19
  %or.i151 = call i32 @llvm.fshl.i32(i32 %xor19, i32 %xor19, i32 5) #15
  %add23 = add i32 %xor18, %or.i150
  %or.i152 = call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 8) #15
  %xor25 = xor i32 %or.i151, %add21
  %or.i153 = call i32 @llvm.fshl.i32(i32 %add21, i32 %add21, i32 16) #15
  %xor27 = xor i32 %or.i152, %add23
  %add28 = add i32 %xor27, %or.i153
  %or.i154 = call i32 @llvm.fshl.i32(i32 %xor27, i32 %xor27, i32 7) #15
  %add30 = add i32 %add23, %xor25
  %or.i155 = call i32 @llvm.fshl.i32(i32 %xor25, i32 %xor25, i32 13) #15
  %xor32 = xor i32 %or.i154, %add28
  %xor33 = xor i32 %or.i155, %add30
  %or.i156 = call i32 @llvm.fshl.i32(i32 %add30, i32 %add30, i32 16) #15
  %xor35 = xor i32 %add28, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor35)
  %tobool.not = icmp eq i32 %xor35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor33)
  %tobool37.not = icmp eq i32 %xor33, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool37.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add30)
  %tobool39.not = icmp eq i32 %add30, 0
  %or.cond144 = select i1 %or.cond, i1 true, i1 %tobool39.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor32)
  %tobool40.not = icmp eq i32 %xor32, 0
  %or.cond145 = select i1 %or.cond144, i1 true, i1 %tobool40.not
  br i1 %or.cond145, label %do.body6.do.body6_crit_edge, label %do.body49, !prof !92

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body49:                                        ; preds = %do.body6
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 %xor35, ptr %4, align 4
  %16 = ptrtoint ptr %v13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 %xor33, ptr %v13, align 4
  %17 = ptrtoint ptr %v24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 %or.i156, ptr %v24, align 4
  %18 = ptrtoint ptr %v35 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %xor32, ptr %v35, align 4
  %call = call i32 @cpumask_next(i32 noundef %call159, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %19
  br i1 %cmp, label %do.body49.for.body_crit_edge, label %do.body49.for.end_crit_edge

do.body49.for.end_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body49.for.body_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body49.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prandom_init_early() #6 section ".init.text" align 64 {
entry:
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #15
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %c, align 4, !annotation !93
  %call3 = call i32 @read_current_timer(ptr noundef nonnull %c) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #15
  %call693 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call693, i32 %4)
  %cmp94 = icmp ult i32 %call693, %4
  br i1 %cmp94, label %for.body.preheader, label %cond.end.for.end_crit_edge

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %cond.end
  %xor5 = xor i32 %cond, 1952801890
  %xor = xor i32 %0, 1819895653
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %call699 = phi i32 [ %call6, %for.body.for.body_crit_edge ], [ %call693, %for.body.preheader ]
  %v2.098 = phi i32 [ %or.i83, %for.body.for.body_crit_edge ], [ %xor, %for.body.preheader ]
  %v3.097 = phi i32 [ %xor32, %for.body.for.body_crit_edge ], [ %xor5, %for.body.preheader ]
  %v1.096 = phi i32 [ %xor33, %for.body.for.body_crit_edge ], [ %cond, %for.body.preheader ]
  %v0.095 = phi i32 [ %xor35, %for.body.for.body_crit_edge ], [ %0, %for.body.preheader ]
  %xor7 = xor i32 %call699, %v3.097
  %add = add i32 %v1.096, %v0.095
  %or.i = call i32 @llvm.fshl.i32(i32 %v1.096, i32 %v1.096, i32 5) #15
  %add9 = add i32 %xor7, %v2.098
  %or.i73 = call i32 @llvm.fshl.i32(i32 %xor7, i32 %xor7, i32 8) #15
  %xor11 = xor i32 %or.i, %add
  %or.i74 = call i32 @llvm.fshl.i32(i32 %add, i32 %add, i32 16) #15
  %xor13 = xor i32 %or.i73, %add9
  %add14 = add i32 %xor13, %or.i74
  %or.i75 = call i32 @llvm.fshl.i32(i32 %xor13, i32 %xor13, i32 7) #15
  %add16 = add i32 %add9, %xor11
  %or.i76 = call i32 @llvm.fshl.i32(i32 %xor11, i32 %xor11, i32 13) #15
  %xor18 = xor i32 %or.i75, %add14
  %xor19 = xor i32 %add16, %or.i76
  %or.i77 = call i32 @llvm.fshl.i32(i32 %add16, i32 %add16, i32 16) #15
  %add21 = add i32 %add14, %xor19
  %or.i78 = call i32 @llvm.fshl.i32(i32 %xor19, i32 %xor19, i32 5) #15
  %add23 = add i32 %xor18, %or.i77
  %or.i79 = call i32 @llvm.fshl.i32(i32 %xor18, i32 %xor18, i32 8) #15
  %xor25 = xor i32 %or.i78, %add21
  %or.i80 = call i32 @llvm.fshl.i32(i32 %add21, i32 %add21, i32 16) #15
  %xor27 = xor i32 %or.i79, %add23
  %add28 = add i32 %xor27, %or.i80
  %or.i81 = call i32 @llvm.fshl.i32(i32 %xor27, i32 %xor27, i32 7) #15
  %add30 = add i32 %add23, %xor25
  %or.i82 = call i32 @llvm.fshl.i32(i32 %xor25, i32 %xor25, i32 13) #15
  %xor32 = xor i32 %or.i81, %add28
  %xor33 = xor i32 %or.i82, %add30
  %or.i83 = call i32 @llvm.fshl.i32(i32 %add30, i32 %add30, i32 16) #15
  %xor35 = xor i32 %add28, %call699
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call699
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add38 = add i32 %6, ptrtoint (ptr @net_rand_state to i32)
  %7 = inttoptr i32 %add38 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %xor35, ptr %7, align 4
  %v140 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %v140 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor33, ptr %v140, align 4
  %v241 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %v241 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i83, ptr %v241, align 4
  %v342 = getelementptr inbounds %struct.siprand_state, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %v342 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %xor32, ptr %v342, align 4
  %call6 = call i32 @cpumask_next(i32 noundef %call699, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end.for.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prandom32_state_selftest() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %samples.0388 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @prandom_u32()
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %samples.0388
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %samples.0388, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %for.body.for.cond5.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.inc300.for.cond5.preheader_crit_edge, %for.body.for.cond5.preheader_crit_edge
  %x.0395 = phi i32 [ %inc301, %for.inc300.for.cond5.preheader_crit_edge ], [ 0, %for.body.for.cond5.preheader_crit_edge ]
  %total.0394 = phi i32 [ %total.2, %for.inc300.for.cond5.preheader_crit_edge ], [ 0, %for.body.for.cond5.preheader_crit_edge ]
  %flip.0393 = phi i32 [ %flip.2, %for.inc300.for.cond5.preheader_crit_edge ], [ 0, %for.body.for.cond5.preheader_crit_edge ]
  %arrayidx11 = getelementptr i32, ptr %call7.i, i32 %x.0395
  br label %for.body7

for.body7:                                        ; preds = %for.inc297.for.body7_crit_edge, %for.cond5.preheader
  %total.1392 = phi i32 [ %total.0394, %for.cond5.preheader ], [ %total.2, %for.inc297.for.body7_crit_edge ]
  %flip.1391 = phi i32 [ %flip.0393, %for.cond5.preheader ], [ %flip.2, %for.inc297.for.body7_crit_edge ]
  %y.0389 = phi i32 [ 0, %for.cond5.preheader ], [ %inc298, %for.inc297.for.body7_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %x.0395, i32 %y.0389)
  %cmp8 = icmp eq i32 %x.0395, %y.0389
  br i1 %cmp8, label %for.body7.for.inc297_crit_edge, label %if.end10

for.body7.for.inc297_crit_edge:                   ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc297

if.end10:                                         ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr i32, ptr %call7.i, i32 %y.0389
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx12, align 4
  %xor13 = xor i32 %5, %3
  %or = or i32 %xor13, %flip.1391
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %xor13) #15
  %sub = add i32 %call.i, -16
  %mul = mul i32 %sub, %sub
  %add296 = add i32 %mul, %total.1392
  br label %for.inc297

for.inc297:                                       ; preds = %if.end10, %for.body7.for.inc297_crit_edge
  %flip.2 = phi i32 [ %flip.1391, %for.body7.for.inc297_crit_edge ], [ %or, %if.end10 ]
  %total.2 = phi i32 [ %total.1392, %for.body7.for.inc297_crit_edge ], [ %add296, %if.end10 ]
  %inc298 = add nuw nsw i32 %y.0389, 1
  %exitcond396.not = icmp eq i32 %inc298, 1024
  br i1 %exitcond396.not, label %for.inc300, label %for.inc297.for.body7_crit_edge

for.inc297.for.body7_crit_edge:                   ; preds = %for.inc297
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.inc300:                                       ; preds = %for.inc297
  %inc301 = add nuw nsw i32 %x.0395, 1
  %exitcond397 = icmp eq i32 %inc301, 1024
  br i1 %exitcond397, label %for.end302, label %for.inc300.for.cond5.preheader_crit_edge

for.inc300.for.cond5.preheader_crit_edge:         ; preds = %for.inc300
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond5.preheader

for.end302:                                       ; preds = %for.inc300
  %div = udiv i32 %total.2, 1047552
  %mul305 = shl nuw nsw i32 %div, 2
  %call306 = tail call i32 @int_sqrt(i32 noundef %mul305) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call306)
  %cmp307 = icmp ugt i32 %call306, 6
  br i1 %cmp307, label %do.end, label %do.end316

do.end:                                           ; preds = %for.end302
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %flip.2, -1
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i, align 8
  %and312 = and i32 %7, %neg
  %call313 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call306, i32 noundef %neg, i32 noundef %and312) #16
  br label %if.end320

do.end316:                                        ; preds = %for.end302
  call void @__sanitizer_cov_trace_pc() #13
  %add318 = add nuw nsw i32 %call306, 1
  %call319 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %add318) #16
  br label %if.end320

if.end320:                                        ; preds = %do.end316, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end320, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @prandom_init_late() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @add_random_ready_callback(ptr noundef nonnull @prandom_init_late.random_ready) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -114, i32 %call)
  %cmp = icmp eq i32 %call, -114
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call.i = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %0) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.then ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_prandom_u32(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prandom_timer_start(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_random_ready_callback(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @prandom_reseed(ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call177 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call177, i32 %0)
  %cmp178 = icmp ult i32 %call177, %0
  br i1 %cmp178, label %entry.for.body_crit_edge, label %entry.for.end94_crit_edge

entry.for.end94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call179 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call177, %entry.for.body_crit_edge ]
  %call.i = tail call i32 @get_random_u32() #15
  %xor = xor i32 %call.i, 1819895653
  %call.i159 = tail call i32 @get_random_u32() #15
  %call.i160 = tail call i32 @get_random_u32() #15
  %1 = xor i32 %call.i159, %call.i160
  %xor8 = xor i32 %1, 1952801890
  %add = add i32 %call.i, %call.i159
  %or.i = tail call i32 @llvm.fshl.i32(i32 %call.i159, i32 %call.i159, i32 5) #15
  %add10 = add i32 %xor8, %xor
  %or.i161 = tail call i32 @llvm.fshl.i32(i32 %xor8, i32 %xor8, i32 8) #15
  %xor12 = xor i32 %add, %or.i
  %or.i162 = tail call i32 @llvm.fshl.i32(i32 %add, i32 %add, i32 16) #15
  %xor14 = xor i32 %or.i161, %add10
  %add15 = add i32 %xor14, %or.i162
  %or.i163 = tail call i32 @llvm.fshl.i32(i32 %xor14, i32 %xor14, i32 7) #15
  %add17 = add i32 %add10, %xor12
  %or.i164 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 13) #15
  %xor19 = xor i32 %or.i163, %add15
  %xor20 = xor i32 %add17, %or.i164
  %or.i165 = tail call i32 @llvm.fshl.i32(i32 %add17, i32 %add17, i32 16) #15
  %add22 = add i32 %add15, %xor20
  %or.i166 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 5) #15
  %add24 = add i32 %xor19, %or.i165
  %or.i167 = tail call i32 @llvm.fshl.i32(i32 %xor19, i32 %xor19, i32 8) #15
  %xor26 = xor i32 %or.i166, %add22
  %or.i168 = tail call i32 @llvm.fshl.i32(i32 %add22, i32 %add22, i32 16) #15
  %xor28 = xor i32 %or.i167, %add24
  %add29 = add i32 %xor28, %or.i168
  %or.i169 = tail call i32 @llvm.fshl.i32(i32 %xor28, i32 %xor28, i32 7) #15
  %add31 = add i32 %add24, %xor26
  %or.i170 = tail call i32 @llvm.fshl.i32(i32 %xor26, i32 %xor26, i32 13) #15
  %xor33 = xor i32 %or.i169, %add29
  %xor34 = xor i32 %or.i170, %add31
  %or.i171 = tail call i32 @llvm.fshl.i32(i32 %add31, i32 %add31, i32 16) #15
  %xor36 = xor i32 %add29, %call.i160
  %call.i160.1 = tail call i32 @get_random_u32() #15
  %xor8.1 = xor i32 %call.i160.1, %xor33
  %add.1 = add i32 %xor36, %xor34
  %or.i.1 = tail call i32 @llvm.fshl.i32(i32 %xor34, i32 %xor34, i32 5) #15
  %add10.1 = add i32 %xor8.1, %or.i171
  %or.i161.1 = tail call i32 @llvm.fshl.i32(i32 %xor8.1, i32 %xor8.1, i32 8) #15
  %xor12.1 = xor i32 %add.1, %or.i.1
  %or.i162.1 = tail call i32 @llvm.fshl.i32(i32 %add.1, i32 %add.1, i32 16) #15
  %xor14.1 = xor i32 %or.i161.1, %add10.1
  %add15.1 = add i32 %xor14.1, %or.i162.1
  %or.i163.1 = tail call i32 @llvm.fshl.i32(i32 %xor14.1, i32 %xor14.1, i32 7) #15
  %add17.1 = add i32 %add10.1, %xor12.1
  %or.i164.1 = tail call i32 @llvm.fshl.i32(i32 %xor12.1, i32 %xor12.1, i32 13) #15
  %xor19.1 = xor i32 %or.i163.1, %add15.1
  %xor20.1 = xor i32 %add17.1, %or.i164.1
  %or.i165.1 = tail call i32 @llvm.fshl.i32(i32 %add17.1, i32 %add17.1, i32 16) #15
  %add22.1 = add i32 %add15.1, %xor20.1
  %or.i166.1 = tail call i32 @llvm.fshl.i32(i32 %xor20.1, i32 %xor20.1, i32 5) #15
  %add24.1 = add i32 %xor19.1, %or.i165.1
  %or.i167.1 = tail call i32 @llvm.fshl.i32(i32 %xor19.1, i32 %xor19.1, i32 8) #15
  %xor26.1 = xor i32 %or.i166.1, %add22.1
  %or.i168.1 = tail call i32 @llvm.fshl.i32(i32 %add22.1, i32 %add22.1, i32 16) #15
  %xor28.1 = xor i32 %or.i167.1, %add24.1
  %add29.1 = add i32 %xor28.1, %or.i168.1
  %or.i169.1 = tail call i32 @llvm.fshl.i32(i32 %xor28.1, i32 %xor28.1, i32 7) #15
  %add31.1 = add i32 %add24.1, %xor26.1
  %or.i170.1 = tail call i32 @llvm.fshl.i32(i32 %xor26.1, i32 %xor26.1, i32 13) #15
  %xor33.1 = xor i32 %or.i169.1, %add29.1
  %xor34.1 = xor i32 %or.i170.1, %add31.1
  %or.i171.1 = tail call i32 @llvm.fshl.i32(i32 %add31.1, i32 %add31.1, i32 16) #15
  %xor36.1 = xor i32 %add29.1, %call.i160.1
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call179
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add38 = add i32 %3, ptrtoint (ptr @net_rand_state to i32)
  %4 = inttoptr i32 %add38 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor36.1)
  %tobool.not = icmp eq i32 %xor36.1, 0
  %spec.select = select i1 %tobool.not, i32 -1, i32 %xor36.1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 %spec.select, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor34.1)
  %tobool54.not = icmp eq i32 %xor34.1, 0
  %cond58 = select i1 %tobool54.not, i32 -1, i32 %xor34.1
  %v159 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %v159 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %cond58, ptr %v159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add31.1)
  %tobool69.not = icmp eq i32 %add31.1, 0
  %cond73 = select i1 %tobool69.not, i32 -1, i32 %or.i171.1
  %v274 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %v274 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %cond73, ptr %v274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor33.1)
  %tobool84.not = icmp eq i32 %xor33.1, 0
  %cond88 = select i1 %tobool84.not, i32 -1, i32 %xor33.1
  %v389 = getelementptr inbounds %struct.siprand_state, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %v389 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %cond88, ptr %v389, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call179, ptr noundef nonnull @__cpu_possible_mask) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end94_crit_edge

for.body.for.end94_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end94

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end94:                                        ; preds = %for.body.for.end94_crit_edge, %entry.for.end94_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add95 = add i32 %10, 4000
  %11 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !82
  %15 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, ptrtoint (ptr @net_rand_state to i32)
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %v12.i.i.i = getelementptr inbounds %struct.siprand_state, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %v12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v12.i.i.i, align 4
  %v23.i.i.i = getelementptr inbounds %struct.siprand_state, ptr %21, i32 0, i32 2
  %26 = ptrtoint ptr %v23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %v23.i.i.i, align 4
  %v34.i.i.i = getelementptr inbounds %struct.siprand_state, ptr %21, i32 0, i32 3
  %28 = ptrtoint ptr %v34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %v34.i.i.i, align 4
  %add.i16.i.i = add i32 %20, ptrtoint (ptr @net_rand_noise to i32)
  %30 = inttoptr i32 %add.i16.i.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %xor.i.i.i = xor i32 %32, %29
  %add12.i.i.i = add i32 %25, %23
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 5) #15
  %add14.i.i.i = add i32 %xor.i.i.i, %27
  %or.i102.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i.i, i32 %xor.i.i.i, i32 8) #15
  %xor16.i.i.i = xor i32 %or.i.i.i.i, %add12.i.i.i
  %or.i103.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add12.i.i.i, i32 %add12.i.i.i, i32 16) #15
  %xor18.i.i.i = xor i32 %or.i102.i.i.i, %add14.i.i.i
  %add19.i.i.i = add i32 %xor18.i.i.i, %or.i103.i.i.i
  %or.i104.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor18.i.i.i, i32 %xor18.i.i.i, i32 7) #15
  %add21.i.i.i = add i32 %add14.i.i.i, %xor16.i.i.i
  %or.i105.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i.i, i32 %xor16.i.i.i, i32 13) #15
  %xor23.i.i.i = xor i32 %or.i104.i.i.i, %add19.i.i.i
  %xor24.i.i.i = xor i32 %add21.i.i.i, %or.i105.i.i.i
  %or.i106.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add21.i.i.i, i32 %add21.i.i.i, i32 16) #15
  %add26.i.i.i = add i32 %add19.i.i.i, %xor24.i.i.i
  %or.i107.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i.i, i32 %xor24.i.i.i, i32 5) #15
  %add28.i.i.i = add i32 %xor23.i.i.i, %or.i106.i.i.i
  %or.i108.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor23.i.i.i, i32 %xor23.i.i.i, i32 8) #15
  %xor30.i.i.i = xor i32 %or.i107.i.i.i, %add26.i.i.i
  %or.i109.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add26.i.i.i, i32 %add26.i.i.i, i32 16) #15
  %xor32.i.i.i = xor i32 %or.i108.i.i.i, %add28.i.i.i
  %add33.i.i.i = add i32 %xor32.i.i.i, %or.i109.i.i.i
  %or.i110.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor32.i.i.i, i32 %xor32.i.i.i, i32 7) #15
  %add35.i.i.i = add i32 %add28.i.i.i, %xor30.i.i.i
  %or.i111.i.i.i = tail call i32 @llvm.fshl.i32(i32 %xor30.i.i.i, i32 %xor30.i.i.i, i32 13) #15
  %xor37.i.i.i = xor i32 %or.i110.i.i.i, %add33.i.i.i
  %xor38.i.i.i = xor i32 %or.i111.i.i.i, %add35.i.i.i
  %or.i112.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add35.i.i.i, i32 %add35.i.i.i, i32 16) #15
  %xor40.i.i.i = xor i32 %add33.i.i.i, %32
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %xor40.i.i.i, ptr %21, align 4
  %34 = ptrtoint ptr %v12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %xor38.i.i.i, ptr %v12.i.i.i, align 4
  %35 = ptrtoint ptr %v23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i112.i.i.i, ptr %v23.i.i.i, align 4
  %36 = ptrtoint ptr %v34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %xor37.i.i.i, ptr %v34.i.i.i, align 4
  %add45.i.i.i = add i32 %xor37.i.i.i, %xor38.i.i.i
  tail call fastcc void @trace_prandom_u32(i32 noundef %add45.i.i.i) #15
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !83
  %37 = tail call i32 @llvm.read_register.i32(metadata !73) #15
  %and.i.i.i14.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i14.i.i to ptr
  %preempt_count.i.i15.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i15.i.i, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i15.i.i, align 4
  %conv.i = zext i32 %add45.i.i.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 4000
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add97 = add i32 %add95, %conv2.i
  %call98 = tail call i32 @round_jiffies(i32 noundef %add97) #15
  %call99 = tail call i32 @mod_timer(ptr noundef nonnull @seed_timer, i32 noundef %call98) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72}
!llvm.named.register.sp = !{!73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__ksymtab_prandom_u32_state, !1, !"__ksymtab_prandom_u32_state", i1 false, i1 false}
!1 = !{!"../lib/random32.c", i32 63, i32 1}
!2 = !{ptr @__ksymtab_prandom_bytes_state, !3, !"__ksymtab_prandom_bytes_state", i1 false, i1 false}
!3 = !{!"../lib/random32.c", i32 94, i32 1}
!4 = !{ptr @__ksymtab_prandom_seed_full_state, !5, !"__ksymtab_prandom_seed_full_state", i1 false, i1 false}
!5 = !{!"../lib/random32.c", i32 128, i32 1}
!6 = !{ptr @__initcall__kmod_random32__293_312_prandom_state_selftest1, !7, !"__initcall__kmod_random32__293_312_prandom_state_selftest1", i1 false, i1 false}
!7 = !{!"../lib/random32.c", i32 312, i32 1}
!8 = !{ptr @__ksymtab_net_rand_noise, !9, !"__ksymtab_net_rand_noise", i1 false, i1 false}
!9 = !{!"../lib/random32.c", i32 343, i32 1}
!10 = !{ptr @__ksymtab_prandom_u32, !11, !"__ksymtab_prandom_u32", i1 false, i1 false}
!11 = !{!"../lib/random32.c", i32 394, i32 1}
!12 = !{ptr @__ksymtab_prandom_bytes, !13, !"__ksymtab_prandom_bytes", i1 false, i1 false}
!13 = !{!"../lib/random32.c", i32 422, i32 1}
!14 = !{ptr @__ksymtab_prandom_seed, !15, !"__ksymtab_prandom_seed", i1 false, i1 false}
!15 = !{!"../lib/random32.c", i32 457, i32 1}
!16 = !{ptr @__initcall__kmod_random32__298_490_prandom_init_early1, !17, !"__initcall__kmod_random32__298_490_prandom_init_early1", i1 false, i1 false}
!17 = !{!"../lib/random32.c", i32 490, i32 1}
!18 = !{ptr @__initcall__kmod_random32__303_613_prandom32_state_selftest1, !19, !"__initcall__kmod_random32__303_613_prandom32_state_selftest1", i1 false, i1 false}
!19 = !{!"../lib/random32.c", i32 613, i32 1}
!20 = !{ptr @__initcall__kmod_random32__304_633_prandom_init_late7, !21, !"__initcall__kmod_random32__304_633_prandom_init_late7", i1 false, i1 false}
!21 = !{!"../lib/random32.c", i32 633, i32 1}
!22 = !{ptr @__pcpu_unique_net_rand_state, !23, !"__pcpu_unique_net_rand_state", i1 false, i1 false}
!23 = !{!"../lib/random32.c", i32 341, i32 8}
!24 = !{ptr @net_rand_state, !23, !"net_rand_state", i1 false, i1 false}
!25 = !{ptr @__pcpu_scope_net_rand_noise, !26, !"__pcpu_scope_net_rand_noise", i1 false, i1 false}
!26 = !{!"../lib/random32.c", i32 342, i32 1}
!27 = !{ptr @__pcpu_unique_net_rand_noise, !26, !"__pcpu_unique_net_rand_noise", i1 false, i1 false}
!28 = !{ptr @net_rand_noise, !26, !"net_rand_noise", i1 false, i1 false}
!29 = !{ptr @.str, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/random32.c", i32 286, i32 3}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @prandom_state_selftest._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @prandom_state_selftest._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/random32.c", i32 288, i32 3}
!37 = !{ptr @prandom_state_selftest._entry.3, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @prandom_state_selftest._entry_ptr.5, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/random32.c", i32 307, i32 3}
!41 = !{ptr @prandom_state_selftest._entry.6, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @prandom_state_selftest._entry_ptr.8, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../lib/random32.c", i32 309, i32 3}
!45 = !{ptr @prandom_state_selftest._entry.9, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @prandom_state_selftest._entry_ptr.11, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @test1, !48, !"test1", i1 false, i1 false}
!48 = !{!"../lib/random32.c", i32 134, i32 3}
!49 = !{ptr @test2, !50, !"test2", i1 false, i1 false}
!50 = !{!"../lib/random32.c", i32 145, i32 3}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/trace/events/random.h", i32 213, i32 1}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!55 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/random32.c", i32 603, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @prandom32_state_selftest._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @prandom32_state_selftest._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/random32.c", i32 607, i32 3}
!66 = !{ptr @prandom32_state_selftest._entry.17, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @prandom32_state_selftest._entry_ptr.19, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @prandom_init_late.random_ready, !69, !"random_ready", i1 false, i1 false}
!69 = !{!"../lib/random32.c", i32 622, i32 38}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/random32.c", i32 496, i32 8}
!72 = !{ptr @seed_timer, !71, !"seed_timer", i1 false, i1 false}
!73 = !{!"sp"}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2154877183}
!83 = !{i64 2154878292}
!84 = !{i64 2148171497, i64 2148171502, i64 2148171515, i64 2148171559, i64 2148171593, i64 2148171614}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2154833300}
!87 = !{i64 2154833491}
!88 = !{i64 2149360061}
!89 = !{i64 2149361097}
!90 = !{i64 2154879890}
!91 = !{i64 2154881296}
!92 = !{!"branch_weights", i32 7818360, i32 -388717296}
!93 = !{!"auto-init"}
