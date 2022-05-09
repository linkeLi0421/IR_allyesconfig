; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_register_uld\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_register_uld\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_register_uld\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_register_uld:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_register_uld\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_register_uld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_unregister_uld\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_unregister_uld\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_unregister_uld\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_unregister_uld:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_unregister_uld\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_unregister_uld:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.190, i32 }
%union.anon.190 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sge_uld_txq_info = type { ptr, %struct.atomic_t, i16 }
%struct.sge_uld_rxq_info = type { [16 x i8], ptr, ptr, i16, i16, i8 }
%struct.sge_ofld_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_ofld_stats, ptr, [68 x i8] }
%struct.sge_ofld_stats = type { i32, i32, i32, i32 }
%struct.msix_info = type { i16, [26 x i8], i32, ptr }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.sge_uld_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, i8, i32, [56 x i8] }
%struct.cxgb4_uld_list = type { %struct.cxgb4_uld_info, %struct.list_head, i32 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%struct.cpl_fw4_msg = type { i8, i8, i16, i32, [2 x i64] }

@uld_mutex = external dso_local global %struct.mutex, align 4
@cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug670 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cxgb4\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgb4_set_ktls_feature\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ULD connections (tid/stid) active. Can't enable kTLS\0A\00", [42 x i8] zeroinitializer }, align 32
@cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug671 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"kTLS has been enabled. Restrictions placed on ULD support\0A\00", [37 x i8] zeroinitializer }, align 32
@cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug672 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"kTLS is disabled. Restrictions on ULD support removed\0A\00", [41 x i8] zeroinitializer }, align 32
@adapter_list = external dso_local global %struct.list_head, align 4
@uld_list = external dso_local global %struct.list_head, align 4
@__kstrtab_cxgb4_register_uld = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_register_uld = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_register_uld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_register_uld to i32), ptr @__kstrtab_cxgb4_register_uld, ptr @__kstrtabns_cxgb4_register_uld }, section "___ksymtab+cxgb4_register_uld", align 4
@__kstrtab_cxgb4_unregister_uld = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_unregister_uld = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_unregister_uld = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_unregister_uld to i32), ptr @__kstrtab_cxgb4_unregister_uld, ptr @__kstrtabns_cxgb4_unregister_uld }, section "___ksymtab+cxgb4_unregister_uld", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cxgb4_uld_alloc_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 777, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ULD registration failed for uld type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxgb4_uld_alloc_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_uld_alloc_resources._entry_ptr = internal global ptr @cxgb4_uld_alloc_resources._entry, section ".printk_index", align 4
@cfg_queues_uld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 296, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CIQ size too small for available IQs\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cfg_queues_uld\00", [17 x i8] zeroinitializer }, align 32
@cfg_queues_uld._entry_ptr = internal global ptr @cfg_queues_uld._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s-%s%d\00", [24 x i8] zeroinitializer }, align 32
@setup_sge_txq_uld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 483, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Crypto Tx Queues can't be zero\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_sge_txq_uld\00", [46 x i8] zeroinitializer }, align 32
@setup_sge_txq_uld._entry_ptr = internal global ptr @setup_sge_txq_uld._entry, section ".printk_index", align 4
@uld_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 656, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"could not attach to the %s driver, error %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"uld_attach\00", [21 x i8] zeroinitializer }, align 32
@uld_attach._entry_ptr = internal global ptr @uld_attach._entry, section ".printk_index", align 4
@dbfifo_int_thresh = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 696, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 705, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 722, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 776, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 296, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 141, i32 6 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 483, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [50 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 654, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_cxgb4_register_uld, ptr @__ksymtab_cxgb4_unregister_uld, ptr @cfg_queues_uld._entry, ptr @cfg_queues_uld._entry_ptr, ptr @cxgb4_uld_alloc_resources._entry, ptr @cxgb4_uld_alloc_resources._entry_ptr, ptr @setup_sge_txq_uld._entry, ptr @setup_sge_txq_uld._entry_ptr, ptr @uld_attach._entry, ptr @uld_attach._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_uld_alloc_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_queues_uld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sge_txq_uld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uld_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @t4_uld_mem_alloc(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 576) #12
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %1 = ptrtoint ptr %uld to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i.i, ptr %uld, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #12
  %uld_rxq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %3 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i21, ptr %uld_rxq_info, align 8
  %tobool4.not = icmp eq ptr %call7.i.i.i21, null
  br i1 %tobool4.not, label %if.end.err_uld_crit_edge, label %if.end6

if.end.err_uld_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_uld

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #12
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %5 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i22, ptr %uld_txq_info, align 4
  %tobool9.not = icmp eq ptr %call7.i.i.i22, null
  br i1 %tobool9.not, label %err_uld_rx, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_uld_rx:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uld_rxq_info, align 8
  tail call void @kfree(ptr noundef %7) #9
  br label %err_uld

err_uld:                                          ; preds = %err_uld_rx, %if.end.err_uld_crit_edge
  %8 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uld, align 4
  tail call void @kfree(ptr noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %err_uld, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_uld ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_uld_mem_free(ptr nocapture noundef readonly %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uld_txq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %0 = ptrtoint ptr %uld_txq_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uld_txq_info, align 4
  tail call void @kfree(ptr noundef %1) #9
  %uld_rxq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %2 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uld_rxq_info, align 8
  tail call void @kfree(ptr noundef %3) #9
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %4 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uld, align 4
  tail call void @kfree(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_uld_clean_up(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 24
  %0 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %is_uld.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

is_uld.exit:                                      ; preds = %entry
  %crypto.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 25
  %2 = ptrtoint ptr %crypto.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %crypto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.i.not = icmp eq i8 %3, 0
  br i1 %tobool3.i.not, label %is_uld.exit.cleanup_crit_edge, label %is_uld.exit.if.end_crit_edge

is_uld.exit.if.end_crit_edge:                     ; preds = %is_uld.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

is_uld.exit.cleanup_crit_edge:                    ; preds = %is_uld.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %is_uld.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @uld_mutex, i32 noundef 0) #9
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %4 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uld, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handle, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.end.for.inc_crit_edge
  %8 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uld, align 4
  %handle.1 = getelementptr %struct.cxgb4_uld_info, ptr %9, i32 1, i32 1
  %10 = ptrtoint ptr %handle.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle.1, align 4
  %tobool1.not.1 = icmp eq ptr %11, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %for.inc.for.inc.1_crit_edge
  %12 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %uld, align 4
  %handle.2 = getelementptr %struct.cxgb4_uld_info, ptr %13, i32 2, i32 1
  %14 = ptrtoint ptr %handle.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle.2, align 4
  %tobool1.not.2 = icmp eq ptr %15, null
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.end3.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %for.inc.1.for.inc.2_crit_edge
  %16 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uld, align 4
  %handle.3 = getelementptr %struct.cxgb4_uld_info, ptr %17, i32 3, i32 1
  %18 = ptrtoint ptr %handle.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle.3, align 4
  %tobool1.not.3 = icmp eq ptr %19, null
  br i1 %tobool1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.end3.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end3.3, %for.inc.2.for.inc.3_crit_edge
  %20 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uld, align 4
  %handle.4 = getelementptr %struct.cxgb4_uld_info, ptr %21, i32 4, i32 1
  %22 = ptrtoint ptr %handle.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle.4, align 4
  %tobool1.not.4 = icmp eq ptr %23, null
  br i1 %tobool1.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end3.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4

if.end3.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end3.4, %for.inc.3.for.inc.4_crit_edge
  %24 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %uld, align 4
  %handle.5 = getelementptr %struct.cxgb4_uld_info, ptr %25, i32 5, i32 1
  %26 = ptrtoint ptr %handle.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handle.5, align 4
  %tobool1.not.5 = icmp eq ptr %27, null
  br i1 %tobool1.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end3.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5

if.end3.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end3.5, %for.inc.4.for.inc.5_crit_edge
  %28 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uld, align 4
  %handle.6 = getelementptr %struct.cxgb4_uld_info, ptr %29, i32 6, i32 1
  %30 = ptrtoint ptr %handle.6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handle.6, align 4
  %tobool1.not.6 = icmp eq ptr %31, null
  br i1 %tobool1.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end3.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6

if.end3.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end3.6, %for.inc.5.for.inc.6_crit_edge
  %32 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uld, align 4
  %handle.7 = getelementptr %struct.cxgb4_uld_info, ptr %33, i32 7, i32 1
  %34 = ptrtoint ptr %handle.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handle.7, align 4
  %tobool1.not.7 = icmp eq ptr %35, null
  br i1 %tobool1.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end3.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.7

if.end3.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef 7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end3.7, %for.inc.6.for.inc.7_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uld_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %is_uld.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %0 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uld, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %1, i32 %type, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handle, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %handle, align 4
  %5 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %uld, align 4
  %add = getelementptr %struct.cxgb4_uld_info, ptr %6, i32 %type, i32 7
  %7 = ptrtoint ptr %add to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %add, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cmp.not.i = icmp eq i32 %type, 4
  %cond.i = zext i1 %cmp.not.i to i32
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %8 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %cond.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then.release_sge_txq_uld.exit_crit_edge, label %land.lhs.true.i

if.then.release_sge_txq_uld.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_sge_txq_uld.exit

land.lhs.true.i:                                  ; preds = %if.then
  %users.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %11, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #9, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %land.lhs.true.i.release_sge_txq_uld.exit_crit_edge

land.lhs.true.i.release_sge_txq_uld.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_sge_txq_uld.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @free_sge_txq_uld(ptr noundef %adap, ptr noundef nonnull %11) #9
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef nonnull %11) #9
  %15 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %16, i32 %cond.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3.i, align 4
  br label %release_sge_txq_uld.exit

release_sge_txq_uld.exit:                         ; preds = %if.then.i, %land.lhs.true.i.release_sge_txq_uld.exit_crit_edge, %if.then.release_sge_txq_uld.exit_crit_edge
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 8
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 32
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %release_sge_txq_uld.exit.if.end_crit_edge, label %if.then7

release_sge_txq_uld.exit.if.end_crit_edge:        ; preds = %release_sge_txq_uld.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then7:                                         ; preds = %release_sge_txq_uld.exit
  %uld_rxq_info.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %20 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i30 = getelementptr ptr, ptr %21, i32 %type
  %22 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i30, align 4
  %nrxq.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %23, i32 0, i32 3
  %nciq.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nrxq.i, align 4
  %conv9.i = zext i16 %25 to i32
  %26 = ptrtoint ptr %nciq.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nciq.i, align 2
  %conv110.i = zext i16 %27 to i32
  %add11.i = sub nsw i32 0, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv110.i, i32 %add11.i)
  %cmp12.not.i = icmp eq i32 %conv110.i, %add11.i
  br i1 %cmp12.not.i, label %if.then7.if.end_crit_edge, label %for.body.lr.ph.i

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then7
  %uldrxq.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %23, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %idx.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %uldrxq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %uldrxq.i, align 4
  %arrayidx3.i31 = getelementptr %struct.sge_ofld_rxq, ptr %29, i32 %idx.013.i
  %tobool.not.i32 = icmp eq ptr %arrayidx3.i31, null
  br i1 %tobool.not.i32, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cxgb4_quiesce_rx(ptr noundef nonnull %arrayidx3.i31) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %idx.013.i, 1
  %30 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nrxq.i, align 4
  %conv.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %nciq.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nciq.i, align 2
  %conv1.i = zext i16 %33 to i32
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.if.end_crit_edge

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.then7.if.end_crit_edge, %release_sge_txq_uld.exit.if.end_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 32
  %and9 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then11:                                        ; preds = %if.end
  %uld_rxq_info.i33 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %36 = ptrtoint ptr %uld_rxq_info.i33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %uld_rxq_info.i33, align 8
  %arrayidx.i34 = getelementptr ptr, ptr %37, i32 %type
  %38 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i34, align 4
  %nrxq.i35 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %39, i32 0, i32 3
  %nciq.i36 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %nrxq.i35 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %nrxq.i35, align 4
  %conv19.i = zext i16 %41 to i32
  %42 = ptrtoint ptr %nciq.i36 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nciq.i36, align 2
  %conv120.i = zext i16 %43 to i32
  %add21.i = sub nsw i32 0, %conv19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv120.i, i32 %add21.i)
  %cmp22.not.i = icmp eq i32 %conv120.i, %add21.i
  br i1 %cmp22.not.i, label %if.then11.if.end12_crit_edge, label %for.body.lr.ph.i38

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.lr.ph.i38:                               ; preds = %if.then11
  %uldrxq.i37 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %39, i32 0, i32 1
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.body.i44.for.body.i44_crit_edge, %for.body.lr.ph.i38
  %idx.023.i = phi i32 [ 0, %for.body.lr.ph.i38 ], [ %inc.i39, %for.body.i44.for.body.i44_crit_edge ]
  %44 = ptrtoint ptr %uldrxq.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %uldrxq.i37, align 4
  %msix.i = getelementptr %struct.sge_ofld_rxq, ptr %45, i32 %idx.023.i, i32 3
  %46 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msix.i, align 8
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %47, align 4
  %aff_mask.i = getelementptr inbounds %struct.msix_info, ptr %47, i32 0, i32 3
  %50 = ptrtoint ptr %aff_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %aff_mask.i, align 4
  tail call void @cxgb4_clear_msix_aff(i16 noundef zeroext %49, ptr noundef %51) #9
  %idx4.i = getelementptr inbounds %struct.msix_info, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %idx4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idx4.i, align 4
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %53) #9
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %47, align 4
  %conv6.i = zext i16 %55 to i32
  %56 = ptrtoint ptr %uldrxq.i37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %uldrxq.i37, align 4
  %arrayidx8.i = getelementptr %struct.sge_ofld_rxq, ptr %57, i32 %idx.023.i
  %call.i = tail call ptr @free_irq(i32 noundef %conv6.i, ptr noundef %arrayidx8.i) #9
  %inc.i39 = add nuw nsw i32 %idx.023.i, 1
  %58 = ptrtoint ptr %nrxq.i35 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %nrxq.i35, align 4
  %conv.i40 = zext i16 %59 to i32
  %60 = ptrtoint ptr %nciq.i36 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %nciq.i36, align 2
  %conv1.i41 = zext i16 %61 to i32
  %add.i42 = add nuw nsw i32 %conv1.i41, %conv.i40
  %cmp.i43 = icmp ult i32 %inc.i39, %add.i42
  br i1 %cmp.i43, label %for.body.i44.for.body.i44_crit_edge, label %for.body.i44.if.end12_crit_edge

for.body.i44.if.end12_crit_edge:                  ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.body.i44.for.body.i44_crit_edge:              ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i44

if.end12:                                         ; preds = %for.body.i44.if.end12_crit_edge, %if.then11.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call fastcc void @free_sge_queues_uld(ptr noundef %adap, i32 noundef %type)
  %uld_rxq_info.i45 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %62 = ptrtoint ptr %uld_rxq_info.i45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %uld_rxq_info.i45, align 8
  %arrayidx.i46 = getelementptr ptr, ptr %63, i32 %type
  %64 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i46, align 4
  store ptr null, ptr %arrayidx.i46, align 4
  %rspq_id.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %rspq_id.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rspq_id.i, align 4
  tail call void @kfree(ptr noundef %67) #9
  %uldrxq.i47 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %65, i32 0, i32 1
  %68 = ptrtoint ptr %uldrxq.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %uldrxq.i47, align 4
  tail call void @kfree(ptr noundef %69) #9
  tail call void @kfree(ptr noundef %65) #9
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_set_ktls_feature(ptr noundef %adap, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %params = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %params) #9
  %or1 = select i1 %enable, i32 19988737, i32 19988481
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or1, ptr %params, align 4
  %chcr_ktls = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 72
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %chcr_ktls, i32 noundef 4) #9
  %1 = ptrtoint ptr %chcr_ktls to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %chcr_ktls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool3.not = icmp eq i32 %2, 0
  br i1 %enable, label %if.then, label %if.else39

if.then:                                          ; preds = %entry
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %conns_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 38
  %call.i.i.i98 = tail call zeroext i1 @__kasan_check_read(ptr noundef %conns_in_use.i, i32 noundef 4) #9
  %3 = ptrtoint ptr %conns_in_use.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %conns_in_use.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %cxgb4_uld_in_use.exit, label %if.then4.do.body_crit_edge

if.then4.do.body_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cxgb4_uld_in_use.exit:                            ; preds = %if.then4
  %stids_in_use.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 29
  %5 = ptrtoint ptr %stids_in_use.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stids_in_use.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool1.i.not = icmp eq i32 %6, 0
  br i1 %tobool1.i.not, label %if.end13, label %cxgb4_uld_in_use.exit.do.body_crit_edge

cxgb4_uld_in_use.exit.do.body_crit_edge:          ; preds = %cxgb4_uld_in_use.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %cxgb4_uld_in_use.exit.do.body_crit_edge, %if.then4.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug670, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_set_ktls_feature, %if.then12)) #9
          to label %cleanup [label %if.then12], !srcloc !52

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %7 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev_dev, align 16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug670, ptr noundef %8, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end13:                                         ; preds = %cxgb4_uld_in_use.exit
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %9 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mbox, align 8
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %11 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pf, align 4
  %call14 = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %10, i32 noundef %12, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %params, ptr noundef nonnull %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i99 = call zeroext i1 @__kasan_check_write(ptr noundef %chcr_ktls, i32 noundef 4) #9
  %13 = ptrtoint ptr %chcr_ktls to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 1, ptr %chcr_ktls, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug671, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_set_ktls_feature, %if.then32)) #9
          to label %cleanup [label %if.then32], !srcloc !52

if.then32:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug671, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.else:                                          ; preds = %if.then
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %chcr_ktls, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %chcr_ktls, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %chcr_ktls, ptr %chcr_ktls, i32 1, ptr elementtype(i32) %chcr_ktls) #9, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !54

if.else.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !55

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %chcr_ktls, i32 noundef %.sink.i.i.i) #9
  br label %cleanup

if.else39:                                        ; preds = %entry
  br i1 %tobool3.not, label %if.else39.cleanup_crit_edge, label %if.end45

if.else39.cleanup_crit_edge:                      ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.else39
  %call.i.i.i.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %chcr_ktls, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !56
  tail call void @llvm.prefetch.p0(ptr %chcr_ktls, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %chcr_ktls, ptr %chcr_ktls, i32 1, ptr elementtype(i32) %chcr_ktls) #9, !srcloc !57
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then49, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i102 = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i102, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !55

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %chcr_ktls, i32 noundef 3) #9
  br label %cleanup

if.then49:                                        ; preds = %if.end45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %mbox50 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %17 = ptrtoint ptr %mbox50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox50, align 8
  %pf51 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %19 = ptrtoint ptr %pf51 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pf51, align 4
  %call52 = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %18, i32 noundef %20, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %params, ptr noundef nonnull %params) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.body56, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body56:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug672, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxgb4_set_ktls_feature, %if.then68)) #9
          to label %cleanup [label %if.then68], !srcloc !52

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug672, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body56, %if.then49.cleanup_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge, %if.else39.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.then32, %if.end17, %if.end13.cleanup_crit_edge, %if.then12, %do.body
  %retval.0 = phi i32 [ -22, %if.then12 ], [ %call14, %if.end13.cleanup_crit_edge ], [ -22, %if.else39.cleanup_crit_edge ], [ %call52, %if.then49.cleanup_crit_edge ], [ 0, %if.then68 ], [ 0, %if.then32 ], [ -22, %do.body ], [ 0, %if.end17 ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %do.body56 ], [ 0, %if.end5.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %params) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_set_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_uld_enable(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @uld_mutex, i32 noundef 0) #9
  %list_node = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node, ptr noundef %0, ptr noundef nonnull @adapter_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1) to i32))
  store ptr %list_node, ptr getelementptr inbounds (%struct.list_head, ptr @adapter_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %list_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @adapter_list, ptr %list_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 41, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %list_node, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uld_list to i32))
  %.pn10 = load ptr, ptr @uld_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, @uld_list
  br i1 %cmp.not11, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_add_tail.exit.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn10, %list_add_tail.exit.for.body_crit_edge ]
  %uld_entry.0 = getelementptr i8, ptr %.pn12, i32 -72
  %uld_type = getelementptr i8, ptr %.pn12, i32 8
  %4 = ptrtoint ptr %uld_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %uld_type, align 4
  tail call fastcc void @cxgb4_uld_alloc_resources(ptr noundef %adap, i32 noundef %5, ptr noundef %uld_entry.0)
  %6 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, @uld_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_add_tail.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uld_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4_uld_alloc_resources(ptr noundef %adap, i32 noundef %type, ptr nocapture noundef readonly %p) unnamed_addr #0 align 64 {
entry:
  %lli.i = alloca %struct.cxgb4_lld_info, align 4
  %cmplqid.i = alloca i32, align 4
  %param.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cond = icmp eq i32 %type, 4
  br i1 %cond, label %land.lhs.true, label %land.lhs.true2

land.lhs.true:                                    ; preds = %entry
  %crypto.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 25
  %0 = ptrtoint ptr %crypto.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crypto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %offload.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 24
  %2 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true2.cleanup_crit_edge, label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp5 = icmp eq i32 %type, 3
  br i1 %cmp5, label %land.lhs.true6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.end
  %chip = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 8
  %6 = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 64
  br i1 %cmp.i.not, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.end.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end10.do.end_crit_edge, label %if.end.i

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.end10
  %flags.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 8
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 32
  %and.i = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %nrxq2.i = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 2
  %10 = ptrtoint ptr %nrxq2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nrxq2.i, align 4
  %nqs_per_uld.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 17
  %12 = ptrtoint ptr %nqs_per_uld.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nqs_per_uld.i, align 4
  %conv.i101 = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv.i101)
  %cmp.i102 = icmp ugt i32 %11, %conv.i101
  br i1 %cmp.i102, label %if.then4.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %nports.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %14 = ptrtoint ptr %nports.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nports.i, align 4
  %conv7.i = zext i8 %15 to i32
  %sub.i = add nsw i32 %conv.i101, -1
  %add.i = add nsw i32 %sub.i, %conv7.i
  %16 = srem i32 %add.i, %conv7.i
  %mul.i = sub nsw i32 %add.i, %16
  br label %if.end30.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %nrxq12.i = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 2
  %17 = ptrtoint ptr %nrxq12.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nrxq12.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %19 = load volatile i32, ptr @__num_online_cpus, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %18, i32 %19) #9
  %nports19.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %21 = ptrtoint ptr %nports19.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nports19.i, align 4
  %conv21.i = zext i8 %22 to i32
  %sub22.i = add i32 %20, -1
  %add23.i = add i32 %sub22.i, %conv21.i
  %23 = srem i32 %add23.i, %conv21.i
  %mul27.i = sub i32 %add23.i, %23
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %if.then4.i
  %mul27.sink.i = phi i32 [ %mul27.i, %if.else.i ], [ %mul.i, %if.then4.i ]
  %conv28.i = trunc i32 %mul27.sink.i to i16
  %nrxq29.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %nrxq29.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv28.i, ptr %nrxq29.i, align 8
  %ciq.i = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 5
  %25 = ptrtoint ptr %ciq.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ciq.i, align 4, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool31.not.i = icmp eq i8 %26, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else33.i

if.then32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %nciq.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %nciq.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %nciq.i, align 2
  br label %if.end88.i

if.else33.i:                                      ; preds = %if.end30.i
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 32
  %and35.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.else50.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #11
  %nqs_per_uld38.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 17
  %30 = ptrtoint ptr %nqs_per_uld38.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nqs_per_uld38.i, align 4
  %conv39.i = zext i16 %31 to i32
  %call.i.i.i213.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %32 = load volatile i32, ptr @__num_online_cpus, align 4
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %conv39.i) #9
  br label %if.end61.i

if.else50.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i214.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %34 = load volatile i32, ptr @__num_online_cpus, align 4
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 16) #9
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.else50.i, %if.then37.i
  %conv48.sink.in.i = phi i32 [ %35, %if.else50.i ], [ %33, %if.then37.i ]
  %conv48.sink.i = trunc i32 %conv48.sink.in.i to i16
  %36 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 4
  %nports65.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %37 = ptrtoint ptr %nports65.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nports65.i, align 4
  %conv66.i = zext i8 %38 to i16
  %39 = urem i16 %conv48.sink.i, %conv66.i
  %mul71.i = sub i16 %conv48.sink.i, %39
  %conv75.i = zext i16 %mul71.i to i32
  %conv78.i = zext i8 %38 to i32
  %40 = tail call i32 @llvm.umax.i32(i32 %conv75.i, i32 %conv78.i) #9
  %conv86.i = trunc i32 %40 to i16
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv86.i, ptr %36, align 2
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end61.i, %if.then32.i
  %42 = ptrtoint ptr %nrxq29.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nrxq29.i, align 8
  %conv90.i = zext i16 %43 to i32
  %nciq91.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %nciq91.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %nciq91.i, align 2
  %conv92.i = zext i16 %45 to i32
  %add93.i = add nuw nsw i32 %conv92.i, %conv90.i
  %46 = shl nuw nsw i32 %add93.i, 9
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #13
  %uldrxq274.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %uldrxq274.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i.i, ptr %uldrxq274.i, align 8
  %tobool96.not275.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool96.not275.i, label %if.then97.i, label %if.end7.i.i245.i

if.then97.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end

if.end7.i.i245.i:                                 ; preds = %if.end88.i
  %48 = shl nuw nsw i32 %add93.i, 1
  %call8.i.i244.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #13
  %rspq_id.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %call7.i.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %rspq_id.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call8.i.i244.i, ptr %rspq_id.i, align 4
  %tobool101.not.i = icmp eq ptr %call8.i.i244.i, null
  br i1 %tobool101.not.i, label %if.then102.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end7.i.i245.i
  %50 = ptrtoint ptr %nrxq29.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %nrxq29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp107265.not.i = icmp eq i16 %51, 0
  br i1 %cmp107265.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %rxq_size.i = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 3
  %conv110.i = trunc i32 %type to i8
  br label %for.body.i

if.then102.i:                                     ; preds = %if.end7.i.i245.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %uldrxq274.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %uldrxq274.i, align 8
  tail call void @kfree(ptr noundef %53) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0266.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %uldrxq274.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %uldrxq274.i, align 8
  %arrayidx.i = getelementptr %struct.sge_ofld_rxq, ptr %55, i32 %i.0266.i
  %56 = ptrtoint ptr %rxq_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rxq_size.i, align 4
  %adap1.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i, i32 0, i32 19
  %58 = ptrtoint ptr %adap1.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %adap, ptr %adap1.i.i, align 8
  %call.i.i = tail call i32 @cxgb4_set_rspq_intr_params(ptr noundef %arrayidx.i, i32 noundef 5, i32 noundef 1) #9
  %iqe_len.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i, i32 0, i32 17
  %59 = ptrtoint ptr %iqe_len.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 64, ptr %iqe_len.i.i, align 8
  %size2.i.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i, i32 0, i32 18
  %60 = ptrtoint ptr %size2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %57, ptr %size2.i.i, align 4
  %uld.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx.i, i32 0, i32 8
  %61 = ptrtoint ptr %uld.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv110.i, ptr %uld.i, align 1
  %size.i = getelementptr %struct.sge_ofld_rxq, ptr %55, i32 %i.0266.i, i32 1, i32 10
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 72, ptr %size.i, align 8
  %inc.i = add nuw nsw i32 %i.0266.i, 1
  %63 = ptrtoint ptr %nrxq29.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %nrxq29.i, align 8
  %conv106.i = zext i16 %64 to i32
  %cmp107.i = icmp ult i32 %inc.i, %conv106.i
  br i1 %cmp107.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %size112.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 7, i32 1
  %65 = ptrtoint ptr %size112.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size112.i, align 4
  %add113.i = add i32 %66, 64
  %nftids.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48, i32 18
  %67 = ptrtoint ptr %nftids.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nftids.i, align 8
  %add114.i = add i32 %add113.i, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 65520, i32 %add114.i)
  %cmp115.i = icmp sgt i32 %add114.i, 65520
  br i1 %cmp115.i, label %do.end.i, label %for.end.i.if.end118.i_crit_edge

for.end.i.if.end118.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end118.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev_dev.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %69 = ptrtoint ptr %pdev_dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev_dev.i, align 16
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.10) #14
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end.i, %for.end.i.if.end118.i_crit_edge
  %ciq_size.0.i = phi i32 [ 65520, %do.end.i ], [ %add114.i, %for.end.i.if.end118.i_crit_edge ]
  %71 = ptrtoint ptr %nrxq29.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %nrxq29.i, align 8
  %conv120.i = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add93.i, i32 %conv120.i)
  %cmp122267.i = icmp ugt i32 %add93.i, %conv120.i
  br i1 %cmp122267.i, label %for.body124.lr.ph.i, label %if.end118.i.if.end14_crit_edge

if.end118.i.if.end14_crit_edge:                   ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body124.lr.ph.i:                              ; preds = %if.end118.i
  %conv129.i = trunc i32 %type to i8
  br label %for.body124.i

for.body124.i:                                    ; preds = %for.body124.i.for.body124.i_crit_edge, %for.body124.lr.ph.i
  %i.1268.i = phi i32 [ %conv120.i, %for.body124.lr.ph.i ], [ %inc133.i, %for.body124.i.for.body124.i_crit_edge ]
  %73 = ptrtoint ptr %uldrxq274.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %uldrxq274.i, align 8
  %arrayidx127.i = getelementptr %struct.sge_ofld_rxq, ptr %74, i32 %i.1268.i
  %adap1.i248.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx127.i, i32 0, i32 19
  %75 = ptrtoint ptr %adap1.i248.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %adap, ptr %adap1.i248.i, align 8
  %call.i249.i = tail call i32 @cxgb4_set_rspq_intr_params(ptr noundef %arrayidx127.i, i32 noundef 5, i32 noundef 1) #9
  %iqe_len.i250.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx127.i, i32 0, i32 17
  %76 = ptrtoint ptr %iqe_len.i250.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 64, ptr %iqe_len.i250.i, align 8
  %size2.i251.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx127.i, i32 0, i32 18
  %77 = ptrtoint ptr %size2.i251.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %ciq_size.0.i, ptr %size2.i251.i, align 4
  %uld131.i = getelementptr inbounds %struct.sge_rspq, ptr %arrayidx127.i, i32 0, i32 8
  %78 = ptrtoint ptr %uld131.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv129.i, ptr %uld131.i, align 1
  %inc133.i = add nuw nsw i32 %i.1268.i, 1
  %exitcond.not.i = icmp eq i32 %inc133.i, %add93.i
  br i1 %exitcond.not.i, label %for.body124.i.if.end14_crit_edge, label %for.body124.i.for.body124.i_crit_edge

for.body124.i.for.body124.i_crit_edge:            ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body124.i

for.body124.i.if.end14_crit_edge:                 ; preds = %for.body124.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %for.body124.i.if.end14_crit_edge, %if.end118.i.if.end14_crit_edge
  %79 = call ptr @memcpy(ptr %call7.i.i.i, ptr %p, i32 16)
  %uld_rxq_info.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %80 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx138.i = getelementptr ptr, ptr %81, i32 %type
  %82 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call7.i.i.i, ptr %arrayidx138.i, align 4
  %lro = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 6
  %83 = ptrtoint ptr %lro to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %lro, align 1, !range !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool15.not = icmp eq i8 %84, 0
  %85 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i104 = getelementptr ptr, ptr %86, i32 %type
  %87 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i104, align 4
  %nrxq.i.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %nrxq.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %nrxq.i.i, align 4
  %conv.i.i = zext i16 %90 to i32
  %nciq.i.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %88, i32 0, i32 4
  %91 = ptrtoint ptr %nciq.i.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %nciq.i.i, align 2
  %conv1.i.i = zext i16 %92 to i32
  %add.i.i = add nuw nsw i32 %conv1.i.i, %conv.i.i
  %uldrxq.i.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %88, i32 0, i32 1
  %93 = ptrtoint ptr %uldrxq.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %uldrxq.i.i, align 4
  %rspq_id.i.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %88, i32 0, i32 2
  %95 = ptrtoint ptr %rspq_id.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rspq_id.i.i, align 4
  %nports.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %97 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %nports.i.i, align 4
  %div.rhs.trunc.i.i = zext i8 %98 to i16
  %div134.i.i = udiv i16 %90, %div.rhs.trunc.i.i
  %div.zext.i.i = zext i16 %div134.i.i to i32
  %99 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i, align 32
  %and.i.i = and i32 %100, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end14.if.end.i.i_crit_edge

if.end14.if.end.i.i_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %abs_id.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 8, i32 12
  %101 = ptrtoint ptr %abs_id.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %abs_id.i.i, align 2
  %conv5.i.i = zext i16 %102 to i32
  %sub.i.i = xor i32 %conv5.i.i, -1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end14.if.end.i.i_crit_edge
  %msi_idx.0.i.i = phi i32 [ %sub.i.i, %if.else.i.i ], [ 1, %if.end14.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp138.not.i.i = icmp eq i32 %add.i.i, 0
  br i1 %cmp138.not.i.i, label %if.end.i.i.if.end.i109_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.if.end.i109_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %msix_info.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 18
  %port.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 23
  %cond42.i.i = select i1 %tobool15.not, ptr null, ptr @uldrx_flush_handler
  %tobool47.not.i.i = icmp eq ptr %96, null
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %per_chan.0145.i.i = phi i32 [ %div.zext.i.i, %for.body.lr.ph.i.i ], [ %per_chan.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %que_idx.0144.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %msi_idx.1143.i.i = phi i32 [ %msi_idx.0.i.i, %for.body.lr.ph.i.i ], [ %msi_idx.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0141.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc53.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %q.0139.i.i = phi ptr [ %94, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %103 = ptrtoint ptr %nrxq.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %nrxq.i.i, align 4
  %conv9.i.i = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0141.i.i, i32 %conv9.i.i)
  %cmp10.i.i = icmp eq i32 %i.0141.i.i, %conv9.i.i
  br i1 %cmp10.i.i, label %if.then12.i.i, label %for.body.i.i.if.end19.i.i_crit_edge

for.body.i.i.if.end19.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i.i

if.then12.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %nciq.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %nciq.i.i, align 2
  %107 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %nports.i.i, align 4
  %div18.rhs.trunc.i.i = zext i8 %108 to i16
  %div18135.i.i = udiv i16 %106, %div18.rhs.trunc.i.i
  %div18.zext.i.i = zext i16 %div18135.i.i to i32
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then12.i.i, %for.body.i.i.if.end19.i.i_crit_edge
  %que_idx.1.i.i = phi i32 [ 0, %if.then12.i.i ], [ %que_idx.0144.i.i, %for.body.i.i.if.end19.i.i_crit_edge ]
  %per_chan.1.i.i = phi i32 [ %div18.zext.i.i, %if.then12.i.i ], [ %per_chan.0145.i.i, %for.body.i.i.if.end19.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %msi_idx.1143.i.i)
  %cmp20.i.i = icmp sgt i32 %msi_idx.1143.i.i, -1
  br i1 %cmp20.i.i, label %if.then22.i.i, label %if.end19.i.i.if.end34.i.i_crit_edge

if.end19.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  %call.i.i105 = tail call i32 @cxgb4_get_msix_idx_from_bmap(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105)
  %cmp23.i.i = icmp slt i32 %call.i.i105, 0
  br i1 %cmp23.i.i, label %if.then22.i.i.freeout.i.i_crit_edge, label %if.end26.i.i

if.then22.i.i.freeout.i.i_crit_edge:              ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freeout.i.i

if.end26.i.i:                                     ; preds = %if.then22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %msix_info.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %msix_info.i.i, align 8
  %desc.i.i = getelementptr %struct.msix_info, ptr %110, i32 %call.i.i105, i32 1
  %111 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %port.i.i, align 128
  %call31.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc.i.i, i32 noundef 26, ptr noundef nonnull @.str.12, ptr noundef %112, ptr noundef %88, i32 noundef %i.0141.i.i) #9
  %113 = ptrtoint ptr %msix_info.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %msix_info.i.i, align 8
  %arrayidx33.i.i = getelementptr %struct.msix_info, ptr %114, i32 %call.i.i105
  %msix.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.0139.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %msix.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %arrayidx33.i.i, ptr %msix.i.i, align 8
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.end26.i.i, %if.end19.i.i.if.end34.i.i_crit_edge
  %msi_idx.2.i.i = phi i32 [ %call.i.i105, %if.end26.i.i ], [ %msi_idx.1143.i.i, %if.end19.i.i.if.end34.i.i_crit_edge ]
  %inc.i.i = add i32 %que_idx.1.i.i, 1
  %div36.i.i = udiv i32 %que_idx.1.i.i, %per_chan.1.i.i
  %arrayidx37.i.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %div36.i.i
  %116 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx37.i.i, align 4
  %size.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.0139.i.i, i32 0, i32 1, i32 10
  %118 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool38.not.i.i = icmp eq i32 %119, 0
  %fl.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.0139.i.i, i32 0, i32 1
  %spec.select.i.i = select i1 %tobool38.not.i.i, ptr null, ptr %fl.i.i
  %call43.i.i = tail call i32 @t4_sge_alloc_rxq(ptr noundef %adap, ptr noundef %q.0139.i.i, i1 noundef zeroext false, ptr noundef %117, i32 noundef %msi_idx.2.i.i, ptr noundef %spec.select.i.i, ptr noundef nonnull @uldrx_handler, ptr noundef %cond42.i.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i.i)
  %tobool44.not.i.i = icmp eq i32 %call43.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %if.end34.i.i.freeout.i.i_crit_edge

if.end34.i.i.freeout.i.i_crit_edge:               ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %freeout.i.i

if.end46.i.i:                                     ; preds = %if.end34.i.i
  %stats.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.0139.i.i, i32 0, i32 2
  %120 = call ptr @memset(ptr %stats.i.i, i32 0, i32 16)
  br i1 %tobool47.not.i.i, label %if.end46.i.i.for.inc.i.i_crit_edge, label %if.then48.i.i

if.end46.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then48.i.i:                                    ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %abs_id50.i.i = getelementptr inbounds %struct.sge_rspq, ptr %q.0139.i.i, i32 0, i32 12
  %121 = ptrtoint ptr %abs_id50.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %abs_id50.i.i, align 2
  %arrayidx51.i.i = getelementptr i16, ptr %96, i32 %i.0141.i.i
  %123 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %arrayidx51.i.i, align 2
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then48.i.i, %if.end46.i.i.for.inc.i.i_crit_edge
  %inc53.i.i = add nuw nsw i32 %i.0141.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.sge_ofld_rxq, ptr %q.0139.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc53.i.i, %add.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end.i109_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end.i109_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

freeout.i.i:                                      ; preds = %if.end34.i.i.freeout.i.i_crit_edge, %if.then22.i.i.freeout.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call43.i.i, %if.end34.i.i.freeout.i.i_crit_edge ], [ -28, %if.then22.i.i.freeout.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0141.i.i)
  %tobool56.not146.i.i = icmp eq i32 %i.0141.i.i, 0
  br i1 %tobool56.not146.i.i, label %freeout.i.i.free_queues_crit_edge, label %for.body57.preheader.i.i

freeout.i.i.free_queues_crit_edge:                ; preds = %freeout.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_queues

for.body57.preheader.i.i:                         ; preds = %freeout.i.i
  %124 = ptrtoint ptr %uldrxq.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %uldrxq.i.i, align 4
  br label %for.body57.i.i

for.body57.i.i:                                   ; preds = %for.inc77.i.i.for.body57.i.i_crit_edge, %for.body57.preheader.i.i
  %i.1149.i.i = phi i32 [ %dec.i.i, %for.inc77.i.i.for.body57.i.i_crit_edge ], [ %i.0141.i.i, %for.body57.preheader.i.i ]
  %q.1147.i.i = phi ptr [ %incdec.ptr78.i.i, %for.inc77.i.i.for.body57.i.i_crit_edge ], [ %125, %for.body57.preheader.i.i ]
  %desc59.i.i = getelementptr inbounds %struct.sge_rspq, ptr %q.1147.i.i, i32 0, i32 13
  %126 = ptrtoint ptr %desc59.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %desc59.i.i, align 8
  %tobool60.not.i.i = icmp eq ptr %127, null
  br i1 %tobool60.not.i.i, label %for.body57.i.i.if.end71.i.i_crit_edge, label %if.then61.i.i

for.body57.i.i.if.end71.i.i_crit_edge:            ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71.i.i

if.then61.i.i:                                    ; preds = %for.body57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %size64.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.1147.i.i, i32 0, i32 1, i32 10
  %128 = ptrtoint ptr %size64.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size64.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool65.not.i.i = icmp eq i32 %129, 0
  %fl63.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.1147.i.i, i32 0, i32 1
  %spec.select133.i.i = select i1 %tobool65.not.i.i, ptr null, ptr %fl63.i.i
  tail call void @free_rspq_fl(ptr noundef %adap, ptr noundef %q.1147.i.i, ptr noundef %spec.select133.i.i) #9
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %if.then61.i.i, %for.body57.i.i.if.end71.i.i_crit_edge
  %msix72.i.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.1147.i.i, i32 0, i32 3
  %130 = ptrtoint ptr %msix72.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %msix72.i.i, align 8
  %tobool73.not.i.i = icmp eq ptr %131, null
  br i1 %tobool73.not.i.i, label %if.end71.i.i.for.inc77.i.i_crit_edge, label %if.then74.i.i

if.end71.i.i.for.inc77.i.i_crit_edge:             ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77.i.i

if.then74.i.i:                                    ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %idx.i.i = getelementptr inbounds %struct.msix_info, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %idx.i.i, align 4
  tail call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %133) #9
  br label %for.inc77.i.i

for.inc77.i.i:                                    ; preds = %if.then74.i.i, %if.end71.i.i.for.inc77.i.i_crit_edge
  %dec.i.i = add nsw i32 %i.1149.i.i, -1
  %incdec.ptr78.i.i = getelementptr %struct.sge_ofld_rxq, ptr %q.1147.i.i, i32 1
  %tobool56.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool56.not.i.i, label %alloc_uld_rxqs.exit.i, label %for.inc77.i.i.for.body57.i.i_crit_edge

for.inc77.i.i.for.body57.i.i_crit_edge:           ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body57.i.i

alloc_uld_rxqs.exit.i:                            ; preds = %for.inc77.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool1.not.i106 = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool1.not.i106, label %alloc_uld_rxqs.exit.i.if.end.i109_crit_edge, label %alloc_uld_rxqs.exit.i.free_queues_crit_edge

alloc_uld_rxqs.exit.i.free_queues_crit_edge:      ; preds = %alloc_uld_rxqs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_queues

alloc_uld_rxqs.exit.i.if.end.i109_crit_edge:      ; preds = %alloc_uld_rxqs.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i109

if.end.i109:                                      ; preds = %alloc_uld_rxqs.exit.i.if.end.i109_crit_edge, %for.inc.i.i.if.end.i109_crit_edge, %if.end.i.i.if.end.i109_crit_edge
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %flags.i, align 32
  %and.i107 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107)
  %tobool2.not.i = icmp ne i32 %and.i107, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.i108 = icmp eq i32 %type, 1
  %or.cond.i = and i1 %cmp.i108, %tobool2.not.i
  br i1 %or.cond.i, label %if.then3.i, label %if.end.i109.if.end19_crit_edge

if.end.i109.if.end19_crit_edge:                   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then3.i:                                       ; preds = %if.end.i109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmplqid.i) #9
  %136 = ptrtoint ptr %cmplqid.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %cmplqid.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param.i) #9
  %137 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %param.i, align 4, !annotation !60
  %138 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nports.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp538.not.i = icmp eq i8 %139, 0
  br i1 %cmp538.not.i, label %setup_sge_queues_uld.exit.thread271, label %for.body.lr.ph.i110

setup_sge_queues_uld.exit.thread271:              ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplqid.i) #9
  br label %if.end19

for.body.lr.ph.i110:                              ; preds = %if.then3.i
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  br label %for.body.i113

for.body.i113:                                    ; preds = %for.body.i113.for.body.i113_crit_edge, %for.body.lr.ph.i110
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %inc.i111, %for.body.i113.for.body.i113_crit_edge ]
  %140 = ptrtoint ptr %uldrxq.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %uldrxq.i.i, align 4
  %cntxt_id.i = getelementptr %struct.sge_ofld_rxq, ptr %141, i32 %i.039.i, i32 0, i32 11
  %142 = ptrtoint ptr %cntxt_id.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %cntxt_id.i, align 4
  %conv8.i = zext i16 %143 to i32
  %144 = ptrtoint ptr %cmplqid.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv8.i, ptr %cmplqid.i, align 4
  %cntxt_id10.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.039.i, i32 0, i32 7
  %145 = ptrtoint ptr %cntxt_id10.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cntxt_id10.i, align 4
  %or12.i = or i32 %146, 68222976
  %147 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or12.i, ptr %param.i, align 4
  %148 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mbox.i, align 8
  %150 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %pf.i, align 4
  %call13.i = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %149, i32 noundef %151, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param.i, ptr noundef nonnull %cmplqid.i) #9
  %inc.i111 = add nuw nsw i32 %i.039.i, 1
  %152 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nports.i.i, align 4
  %conv.i112 = zext i8 %153 to i32
  %cmp5.i = icmp ult i32 %inc.i111, %conv.i112
  br i1 %cmp5.i, label %for.body.i113.for.body.i113_crit_edge, label %setup_sge_queues_uld.exit

for.body.i113.for.body.i113_crit_edge:            ; preds = %for.body.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i113

setup_sge_queues_uld.exit:                        ; preds = %for.body.i113
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplqid.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool17.not = icmp eq i32 %call13.i, 0
  br i1 %tobool17.not, label %setup_sge_queues_uld.exit.if.end19_crit_edge, label %setup_sge_queues_uld.exit.free_queues_crit_edge

setup_sge_queues_uld.exit.free_queues_crit_edge:  ; preds = %setup_sge_queues_uld.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_queues

setup_sge_queues_uld.exit.if.end19_crit_edge:     ; preds = %setup_sge_queues_uld.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %setup_sge_queues_uld.exit.if.end19_crit_edge, %setup_sge_queues_uld.exit.thread271, %if.end.i109.if.end19_crit_edge
  %154 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %flags.i, align 32
  %and = and i32 %155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %if.end19.if.end26_crit_edge, label %if.then21

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then21:                                        ; preds = %if.end19
  %156 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i117 = getelementptr ptr, ptr %157, i32 %type
  %158 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i117, align 4
  %nrxq.i = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %159, i32 0, i32 3
  %nciq.i118 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %nrxq.i, align 4
  %conv50.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %nciq.i118 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %nciq.i118, align 2
  %conv151.i = zext i16 %163 to i32
  %add52.i = sub nsw i32 0, %conv50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv151.i, i32 %add52.i)
  %cmp53.not.i = icmp eq i32 %conv151.i, %add52.i
  br i1 %cmp53.not.i, label %if.then21.if.end26_crit_edge, label %for.body.lr.ph.i120

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

for.body.lr.ph.i120:                              ; preds = %if.then21
  %uldrxq.i119 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %159, i32 0, i32 1
  br label %for.body.i123

for.body.i123:                                    ; preds = %if.end.i128.for.body.i123_crit_edge, %for.body.lr.ph.i120
  %idx.054.i = phi i32 [ 0, %for.body.lr.ph.i120 ], [ %inc.i124, %if.end.i128.for.body.i123_crit_edge ]
  %164 = ptrtoint ptr %uldrxq.i119 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %uldrxq.i119, align 4
  %arrayidx3.i = getelementptr %struct.sge_ofld_rxq, ptr %165, i32 %idx.054.i
  %msix.i = getelementptr %struct.sge_ofld_rxq, ptr %165, i32 %idx.054.i, i32 3
  %166 = ptrtoint ptr %msix.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %msix.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %167, align 4
  %conv4.i = zext i16 %169 to i32
  %desc.i = getelementptr inbounds %struct.msix_info, ptr %167, i32 0, i32 1
  %call.i.i121 = call i32 @request_threaded_irq(i32 noundef %conv4.i, ptr noundef nonnull @t4_sge_intr_msix, ptr noundef null, i32 noundef 0, ptr noundef %desc.i, ptr noundef %arrayidx3.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %tobool.not.i122 = icmp eq i32 %call.i.i121, 0
  br i1 %tobool.not.i122, label %if.end.i128, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.body.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.054.i)
  %cmp9.not55.i = icmp eq i32 %idx.054.i, 0
  br i1 %cmp9.not55.i, label %while.cond.preheader.i.free_rxq_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.free_rxq_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rxq

if.end.i128:                                      ; preds = %for.body.i123
  %170 = ptrtoint ptr %167 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %167, align 4
  %aff_mask.i = getelementptr inbounds %struct.msix_info, ptr %167, i32 0, i32 3
  %call8.i = call i32 @cxgb4_set_msix_aff(ptr noundef %adap, i16 noundef zeroext %171, ptr noundef %aff_mask.i, i32 noundef %idx.054.i) #9
  %inc.i124 = add nuw nsw i32 %idx.054.i, 1
  %172 = ptrtoint ptr %nrxq.i to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %nrxq.i, align 4
  %conv.i125 = zext i16 %173 to i32
  %174 = ptrtoint ptr %nciq.i118 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %nciq.i118, align 2
  %conv1.i = zext i16 %175 to i32
  %add.i126 = add nuw nsw i32 %conv1.i, %conv.i125
  %cmp.i127 = icmp ult i32 %inc.i124, %add.i126
  br i1 %cmp.i127, label %if.end.i128.for.body.i123_crit_edge, label %if.end.i128.if.end26_crit_edge

if.end.i128.if.end26_crit_edge:                   ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end.i128.for.body.i123_crit_edge:              ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i123

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %idx.156.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %idx.054.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %idx.156.i, -1
  %176 = ptrtoint ptr %uldrxq.i119 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %uldrxq.i119, align 4
  %msix13.i = getelementptr %struct.sge_ofld_rxq, ptr %177, i32 %dec.i, i32 3
  %178 = ptrtoint ptr %msix13.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %msix13.i, align 8
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %179, align 4
  %aff_mask15.i = getelementptr inbounds %struct.msix_info, ptr %179, i32 0, i32 3
  %182 = ptrtoint ptr %aff_mask15.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %aff_mask15.i, align 4
  call void @cxgb4_clear_msix_aff(i16 noundef zeroext %181, ptr noundef %183) #9
  %idx16.i = getelementptr inbounds %struct.msix_info, ptr %179, i32 0, i32 2
  %184 = ptrtoint ptr %idx16.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %idx16.i, align 4
  call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %185) #9
  %186 = ptrtoint ptr %179 to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %179, align 4
  %conv18.i = zext i16 %187 to i32
  %188 = ptrtoint ptr %uldrxq.i119 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %uldrxq.i119, align 4
  %arrayidx20.i = getelementptr %struct.sge_ofld_rxq, ptr %189, i32 %dec.i
  %call22.i = call ptr @free_irq(i32 noundef %conv18.i, ptr noundef %arrayidx20.i) #9
  %cmp9.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp9.not.i, label %while.body.i.free_rxq_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.free_rxq_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rxq

if.end26:                                         ; preds = %if.end.i128.if.end26_crit_edge, %if.then21.if.end26_crit_edge, %if.end19.if.end26_crit_edge
  %190 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %flags.i, align 32
  %and28 = and i32 %191, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  %192 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i131 = getelementptr ptr, ptr %193, i32 %type
  %194 = ptrtoint ptr %arrayidx.i131 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i131, align 4
  %nrxq.i132 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %195, i32 0, i32 3
  %nciq.i133 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %195, i32 0, i32 4
  %196 = ptrtoint ptr %nrxq.i132 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %nrxq.i132, align 4
  %conv10.i = zext i16 %197 to i32
  %198 = ptrtoint ptr %nciq.i133 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %nciq.i133, align 2
  %conv111.i = zext i16 %199 to i32
  %add12.i = sub nsw i32 0, %conv10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv111.i, i32 %add12.i)
  %cmp13.not.i = icmp eq i32 %conv111.i, %add12.i
  br i1 %cmp13.not.i, label %if.then30.if.end31_crit_edge, label %for.body.lr.ph.i135

if.then30.if.end31_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.lr.ph.i135:                              ; preds = %if.then30
  %uldrxq.i134 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %195, i32 0, i32 1
  br label %for.body.i138

for.body.i138:                                    ; preds = %cleanup.i.for.body.i138_crit_edge, %for.body.lr.ph.i135
  %idx.014.i = phi i32 [ 0, %for.body.lr.ph.i135 ], [ %inc.i140, %cleanup.i.for.body.i138_crit_edge ]
  %200 = ptrtoint ptr %uldrxq.i134 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %uldrxq.i134, align 4
  %arrayidx3.i136 = getelementptr %struct.sge_ofld_rxq, ptr %201, i32 %idx.014.i
  %tobool.not.i137 = icmp eq ptr %arrayidx3.i136, null
  br i1 %tobool.not.i137, label %for.body.i138.cleanup.i_crit_edge, label %if.end.i139

for.body.i138.cleanup.i_crit_edge:                ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i139:                                      ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #11
  call void @cxgb4_enable_rx(ptr noundef %adap, ptr noundef nonnull %arrayidx3.i136) #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i139, %for.body.i138.cleanup.i_crit_edge
  %inc.i140 = add nuw nsw i32 %idx.014.i, 1
  %202 = ptrtoint ptr %nrxq.i132 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %nrxq.i132, align 4
  %conv.i141 = zext i16 %203 to i32
  %204 = ptrtoint ptr %nciq.i133 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %nciq.i133, align 2
  %conv1.i142 = zext i16 %205 to i32
  %add.i143 = add nuw nsw i32 %conv1.i142, %conv.i141
  %cmp.i144 = icmp ult i32 %inc.i140, %add.i143
  br i1 %cmp.i144, label %cleanup.i.for.body.i138_crit_edge, label %cleanup.i.if.end31_crit_edge

cleanup.i.if.end31_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

cleanup.i.for.body.i138_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i138

if.end31:                                         ; preds = %cleanup.i.if.end31_crit_edge, %if.then30.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %uld = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 37
  %206 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %uld, align 4
  %add = getelementptr %struct.cxgb4_uld_info, ptr %207, i32 %type, i32 7
  %208 = ptrtoint ptr %add to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add, align 4
  %tobool32.not = icmp eq ptr %209, null
  br i1 %tobool32.not, label %if.end34, label %if.end31.free_irq_crit_edge

if.end31.free_irq_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irq

if.end34:                                         ; preds = %if.end31
  %cond.i = zext i1 %cond to i32
  %uld_txq_info.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 6
  %210 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i146 = getelementptr ptr, ptr %211, i32 %cond.i
  %212 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx.i146, align 4
  %tobool.not.i147 = icmp eq ptr %213, null
  %or.cond.i148 = select i1 %cond, i1 true, i1 %tobool.not.i147
  br i1 %or.cond.i148, label %if.end34.if.end.i150_crit_edge, label %land.lhs.true2.i

if.end34.if.end.i150_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i150

land.lhs.true2.i:                                 ; preds = %if.end34
  %users.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %213, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !61
  call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #9
  %214 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #9, !srcloc !62
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %214, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i)
  %cmp3.i = icmp sgt i32 %asmresult.i.i.i.i.i, 1
  br i1 %cmp3.i, label %land.lhs.true2.i.if.end38_crit_edge, label %land.lhs.true2.i.if.end.i150_crit_edge

land.lhs.true2.i.if.end.i150_crit_edge:           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i150

land.lhs.true2.i.if.end38_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end.i150:                                      ; preds = %land.lhs.true2.i.if.end.i150_crit_edge, %if.end34.if.end.i150_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %215 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i149 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %215, i32 noundef 3520, i32 noundef 12) #12
  %tobool5.not.i = icmp eq ptr %call7.i.i.i149, null
  br i1 %tobool5.not.i, label %if.end.i150.free_irq_crit_edge, label %if.end7.i

if.end.i150.free_irq_crit_edge:                   ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irq

if.end7.i:                                        ; preds = %if.end.i150
  br i1 %cond, label %if.then9.i, label %if.else.i159

if.then9.i:                                       ; preds = %if.end7.i
  %ncrypto_fc.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16, i32 10
  %216 = ptrtoint ptr %ncrypto_fc.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ncrypto_fc.i, align 8
  %call.i.i.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %218 = load volatile i32, ptr @__num_online_cpus, align 4
  %219 = call i32 @llvm.smin.i32(i32 %217, i32 %218) #9
  %220 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %nports.i.i, align 4
  %conv.i153 = zext i8 %221 to i32
  %rem.i = srem i32 %219, %conv.i153
  %sub.i154 = sub i32 %219, %rem.i
  %conv14.i = trunc i32 %sub.i154 to i16
  %ntxq.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %call7.i.i.i149, i32 0, i32 2
  %222 = ptrtoint ptr %ntxq.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %conv14.i, ptr %ntxq.i, align 8
  %conv16.i = and i32 %sub.i154, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16.i)
  %cmp17.i = icmp eq i32 %conv16.i, 0
  br i1 %cmp17.i, label %do.end.i156, label %if.then9.i.if.end39.i_crit_edge

if.then9.i.if.end39.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

do.end.i156:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev_dev.i155 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %223 = ptrtoint ptr %pdev_dev.i155 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %pdev_dev.i155, align 16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %224, ptr noundef nonnull @.str.13) #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i149) #9
  br label %free_irq

if.else.i159:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %ntxq21.i = getelementptr inbounds %struct.cxgb4_uld_info, ptr %p, i32 0, i32 4
  %225 = ptrtoint ptr %ntxq21.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %ntxq21.i, align 4
  %call.i.i.i94.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %227 = load volatile i32, ptr @__num_online_cpus, align 4
  %228 = call i32 @llvm.smin.i32(i32 %226, i32 %227) #9
  %229 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %nports.i.i, align 4
  %conv33.i = zext i8 %230 to i32
  %sub34.i = add i32 %228, -1
  %add.i157 = add i32 %sub34.i, %conv33.i
  %231 = srem i32 %add.i157, %conv33.i
  %mul.i158 = sub i32 %add.i157, %231
  %conv37.i = trunc i32 %mul.i158 to i16
  %ntxq38.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %call7.i.i.i149, i32 0, i32 2
  %232 = ptrtoint ptr %ntxq38.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 %conv37.i, ptr %ntxq38.i, align 8
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i159, %if.then9.i.if.end39.i_crit_edge
  %ntxq40.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %call7.i.i.i149, i32 0, i32 2
  %233 = ptrtoint ptr %ntxq40.i to i32
  call void @__asan_load2_noabort(i32 %233)
  %234 = load i16, ptr %ntxq40.i, align 8
  %conv41.i = zext i16 %234 to i32
  %235 = shl nuw nsw i32 %conv41.i, 8
  %call8.i.i.i180 = call noalias align 128 ptr @__kmalloc(i32 noundef %235, i32 noundef 3520) #13
  %236 = ptrtoint ptr %call7.i.i.i149 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %call8.i.i.i180, ptr %call7.i.i.i149, align 8
  %tobool44.not.i = icmp eq ptr %call8.i.i.i180, null
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end46.i

if.then45.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i149) #9
  br label %free_irq

if.end46.i:                                       ; preds = %if.end39.i
  %237 = ptrtoint ptr %ntxq40.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %ntxq40.i, align 8
  %conv.i.i183 = zext i16 %238 to i32
  %239 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %nports.i.i, align 4
  %div.rhs.trunc.i.i185 = zext i8 %240 to i16
  %div23.i.i = udiv i16 %238, %div.rhs.trunc.i.i185
  %div.zext.i.i186 = zext i16 %div23.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %238)
  %cmp24.not.i.i = icmp eq i16 %238, 0
  br i1 %cmp24.not.i.i, label %if.end46.i.if.end51.i_crit_edge, label %for.body.lr.ph.i.i187

if.end46.i.if.end51.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

for.body.lr.ph.i.i187:                            ; preds = %if.end46.i
  %cntxt_id.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 4, i32 11
  br label %for.body.i.i194

for.cond.i.i:                                     ; preds = %for.body.i.i194
  %inc.i.i188 = add nuw nsw i32 %i.025.i.i, 1
  %exitcond.not.i.i189 = icmp eq i32 %inc.i.i188, %conv.i.i183
  br i1 %exitcond.not.i.i189, label %for.cond.i.i.if.end51.i_crit_edge, label %for.cond.i.i.for.body.i.i194_crit_edge

for.cond.i.i.for.body.i.i194_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i194

for.cond.i.i.if.end51.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

for.body.i.i194:                                  ; preds = %for.cond.i.i.for.body.i.i194_crit_edge, %for.body.lr.ph.i.i187
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i187 ], [ %inc.i.i188, %for.cond.i.i.for.body.i.i194_crit_edge ]
  %241 = ptrtoint ptr %call7.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %call7.i.i.i149, align 8
  %arrayidx.i.i = getelementptr %struct.sge_uld_txq, ptr %242, i32 %i.025.i.i
  %size.i.i190 = getelementptr inbounds %struct.sge_txq, ptr %arrayidx.i.i, i32 0, i32 2
  %243 = ptrtoint ptr %size.i.i190 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1024, ptr %size.i.i190, align 8
  %div3.i.i = udiv i32 %i.025.i.i, %div.zext.i.i186
  %arrayidx4.i.i = getelementptr %struct.adapter, ptr %adap, i32 0, i32 23, i32 %div3.i.i
  %244 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %arrayidx4.i.i, align 4
  %246 = ptrtoint ptr %cntxt_id.i.i to i32
  call void @__asan_load2_noabort(i32 %246)
  %247 = load i16, ptr %cntxt_id.i.i, align 4
  %conv5.i.i191 = zext i16 %247 to i32
  %call.i.i192 = call i32 @t4_sge_alloc_uld_txq(ptr noundef %adap, ptr noundef %arrayidx.i.i, ptr noundef %245, i32 noundef %conv5.i.i191, i32 noundef %cond.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %tobool.not.i.i193 = icmp eq i32 %call.i.i192, 0
  br i1 %tobool.not.i.i193, label %for.cond.i.i, label %if.then49.i

if.then49.i:                                      ; preds = %for.body.i.i194
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @free_sge_txq_uld(ptr noundef %adap, ptr noundef nonnull %call7.i.i.i149) #9
  %248 = ptrtoint ptr %call7.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %call7.i.i.i149, align 8
  call void @kfree(ptr noundef %249) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i149) #9
  br label %free_irq

if.end51.i:                                       ; preds = %for.cond.i.i.if.end51.i_crit_edge, %if.end46.i.if.end51.i_crit_edge
  %users52.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %call7.i.i.i149, i32 0, i32 1
  %call.i.i93.i = call zeroext i1 @__kasan_check_write(ptr noundef %users52.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %users52.i, i32 1, i32 3, i32 1) #9
  %250 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users52.i, ptr %users52.i, i32 1, ptr elementtype(i32) %users52.i) #9, !srcloc !64
  %251 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx55.i = getelementptr ptr, ptr %252, i32 %cond.i
  %253 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %call7.i.i.i149, ptr %arrayidx55.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end51.i, %land.lhs.true2.i.if.end38_crit_edge
  %254 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %uld, align 4
  %arrayidx40 = getelementptr %struct.cxgb4_uld_info, ptr %255, i32 %type
  %256 = call ptr @memcpy(ptr %arrayidx40, ptr %p, i32 72)
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %lli.i) #9
  %257 = getelementptr inbounds i8, ptr %lli.i, i32 24
  %258 = call ptr @memset(ptr %257, i32 255, i32 124)
  %pdev.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 3
  %259 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pdev.i.i, align 4
  %261 = ptrtoint ptr %lli.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %260, ptr %lli.i, align 4
  %pf.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  %262 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %pf.i.i, align 4
  %pf2.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 30
  %264 = ptrtoint ptr %pf2.i.i to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %pf2.i.i, align 4
  %l2t.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 30
  %265 = ptrtoint ptr %l2t.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %l2t.i.i, align 8
  %l2t3.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 1
  %267 = ptrtoint ptr %l2t3.i.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %266, ptr %l2t3.i.i, align 4
  %tids.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 48
  %tids4.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 2
  %268 = ptrtoint ptr %tids4.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %tids.i.i, ptr %tids4.i.i, align 4
  %port.i.i197 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 23
  %ports.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 3
  %269 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %port.i.i197, ptr %ports.i.i, align 4
  %vres.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 16
  %vr.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 4
  %270 = ptrtoint ptr %vr.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %vres.i.i, ptr %vr.i.i, align 4
  %params.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15
  %mtus.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 17
  %mtus6.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 5
  %271 = ptrtoint ptr %mtus6.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %mtus.i.i, ptr %mtus6.i.i, align 4
  %272 = ptrtoint ptr %nports.i.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %nports.i.i, align 4
  %nchan.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 11
  %bf.shl.i.i = shl i8 %273, 4
  %bf.value12.i.i = and i8 %273, 15
  %bf.set14.i.i = or i8 %bf.value12.i.i, %bf.shl.i.i
  %274 = ptrtoint ptr %nchan.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 %bf.set14.i.i, ptr %nchan.i.i, align 2
  %ofldq_wr_cred.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 29
  %275 = ptrtoint ptr %ofldq_wr_cred.i.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ofldq_wr_cred.i.i, align 4
  %conv.i.i199 = trunc i32 %276 to i8
  %wr_cred.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 12
  %277 = ptrtoint ptr %wr_cred.i.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv.i.i199, ptr %wr_cred.i.i, align 1
  %crypto.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 25
  %278 = ptrtoint ptr %crypto.i.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %crypto.i.i, align 1
  %crypto17.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 15
  %280 = ptrtoint ptr %crypto17.i.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 %279, ptr %crypto17.i.i, align 2
  %281 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %adap, align 128
  %add.ptr.i.i.i = getelementptr i8, ptr %282, i32 32104
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !65
  %284 = call i32 @llvm.bswap.i32(i32 %283) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %shr.i.i = lshr i32 %284, 16
  %iscsi_iolen.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 17
  %285 = ptrtoint ptr %iscsi_iolen.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %shr.i.i, ptr %iscsi_iolen.i.i, align 4
  %286 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %adap, align 128
  %add.ptr.i147.i.i = getelementptr i8, ptr %287, i32 102756
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147.i.i) #9, !srcloc !65
  %289 = call i32 @llvm.bswap.i32(i32 %288) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %iscsi_tagmask.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 35
  %290 = ptrtoint ptr %iscsi_tagmask.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %289, ptr %iscsi_tagmask.i.i, align 4
  %291 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %adap, align 128
  %add.ptr.i148.i.i = getelementptr i8, ptr %292, i32 102760
  %293 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148.i.i) #9, !srcloc !65
  %294 = call i32 @llvm.bswap.i32(i32 %293) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %iscsi_pgsz_order.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 36
  %295 = ptrtoint ptr %iscsi_pgsz_order.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %iscsi_pgsz_order.i.i, align 4
  %296 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %adap, align 128
  %add.ptr.i149.i.i = getelementptr i8, ptr %297, i32 102748
  %298 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149.i.i) #9, !srcloc !65
  %299 = call i32 @llvm.bswap.i32(i32 %298) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %iscsi_llimit.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 37
  %300 = ptrtoint ptr %iscsi_llimit.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %299, ptr %iscsi_llimit.i.i, align 4
  %iscsi_ppm.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 46
  %iscsi_ppm21.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 39
  %301 = ptrtoint ptr %iscsi_ppm21.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %iscsi_ppm.i.i, ptr %iscsi_ppm21.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 22
  %302 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %chip.i.i, align 8
  %conv23.i.i = trunc i32 %303 to i8
  %adapter_type.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 13
  %304 = ptrtoint ptr %adapter_type.i.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 %conv23.i.i, ptr %adapter_type.i.i, align 4
  %vpd.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 2
  %305 = ptrtoint ptr %vpd.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %vpd.i.i, align 8
  %div.i.i = udiv i32 1000000000, %306
  %cclk_ps.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 18
  %307 = ptrtoint ptr %cclk_ps.i.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store i32 %div.i.i, ptr %cclk_ps.i.i, align 4
  %eq_qpp.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 0, i32 1
  %308 = ptrtoint ptr %eq_qpp.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %eq_qpp.i.i, align 4
  %shl.i.i = shl nuw i32 1, %309
  %conv26.i.i = trunc i32 %shl.i.i to i16
  %udb_density.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 19
  %310 = ptrtoint ptr %udb_density.i.i to i32
  call void @__asan_store2_noabort(i32 %310)
  store i16 %conv26.i.i, ptr %udb_density.i.i, align 4
  %iq_qpp.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 0, i32 2
  %311 = ptrtoint ptr %iq_qpp.i.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %iq_qpp.i.i, align 8
  %shl29.i.i = shl nuw i32 1, %312
  %conv30.i.i = trunc i32 %shl29.i.i to i16
  %ucq_density.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 20
  %313 = ptrtoint ptr %ucq_density.i.i to i32
  call void @__asan_store2_noabort(i32 %313)
  store i16 %conv30.i.i, ptr %ucq_density.i.i, align 2
  %314 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %params.i.i, align 8
  %add.i.i200 = add i32 %315, 10
  %shl33.i.i = shl nuw i32 1, %add.i.i200
  %sge_host_page_size.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 21
  %316 = ptrtoint ptr %sge_host_page_size.i.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 %shl33.i.i, ptr %sge_host_page_size.i.i, align 4
  %vlan_pri_map.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 1, i32 5
  %317 = ptrtoint ptr %vlan_pri_map.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %vlan_pri_map.i.i, align 8
  %conv35.i.i = trunc i32 %318 to i16
  %filt_mode.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 22
  %319 = ptrtoint ptr %filt_mode.i.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 %conv35.i.i, ptr %filt_mode.i.i, align 4
  %arrayidx.i.i201 = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 23, i32 0
  %320 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 0, ptr %arrayidx.i.i201, align 2
  %arrayidx.1.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 23, i32 1
  %321 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store2_noabort(i32 %321)
  store i16 1, ptr %arrayidx.1.i.i, align 4
  %arrayidx.2.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 23, i32 2
  %322 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store2_noabort(i32 %322)
  store i16 2, ptr %arrayidx.2.i.i, align 2
  %arrayidx.3.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 23, i32 3
  %323 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store2_noabort(i32 %323)
  store i16 3, ptr %arrayidx.3.i.i, align 4
  %324 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %adap, align 128
  %add.ptr.i.i = getelementptr i8, ptr %325, i32 110596
  %gts_reg.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 24
  %326 = ptrtoint ptr %gts_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store ptr %add.ptr.i.i, ptr %gts_reg.i.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %325, i32 110592
  %db_reg.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 25
  %327 = ptrtoint ptr %db_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr %add.ptr39.i.i, ptr %db_reg.i.i, align 4
  %fw_vers.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 10
  %328 = ptrtoint ptr %fw_vers.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %fw_vers.i.i, align 4
  %fw_vers41.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 16
  %330 = ptrtoint ptr %fw_vers41.i.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 %329, ptr %fw_vers41.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dbfifo_int_thresh to i32))
  %331 = load i32, ptr @dbfifo_int_thresh, align 4
  %dbfifo_int_thresh.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 26
  %332 = ptrtoint ptr %dbfifo_int_thresh.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %331, ptr %dbfifo_int_thresh.i.i, align 4
  %fl_align.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 27
  %333 = ptrtoint ptr %fl_align.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %fl_align.i.i, align 8
  %sge_ingpadboundary.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 27
  %335 = ptrtoint ptr %sge_ingpadboundary.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %sge_ingpadboundary.i.i, align 4
  %stat_len.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 25
  %336 = ptrtoint ptr %stat_len.i.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %stat_len.i.i, align 32
  %sge_egrstatuspagesize.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 28
  %338 = ptrtoint ptr %sge_egrstatuspagesize.i.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 %337, ptr %sge_egrstatuspagesize.i.i, align 4
  %pktshift.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 26
  %339 = ptrtoint ptr %pktshift.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %pktshift.i.i, align 4
  %sge_pktshift.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 29
  %341 = ptrtoint ptr %sge_pktshift.i.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %340, ptr %sge_pktshift.i.i, align 4
  %342 = ptrtoint ptr %crypto.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %crypto.i.i, align 1
  %conv47.i.i = zext i8 %343 to i32
  %ulp_crypto.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 38
  %344 = ptrtoint ptr %ulp_crypto.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %conv47.i.i, ptr %ulp_crypto.i.i, align 4
  %345 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %flags.i, align 32
  %enable_fw_ofld_conn.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 31
  %and48.i.i = lshr i32 %346, 9
  %347 = trunc i32 %and48.i.i to i8
  %348 = and i8 %347, 1
  %349 = ptrtoint ptr %enable_fw_ofld_conn.i.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %348, ptr %enable_fw_ofld_conn.i.i, align 4
  %max_ordird_qp.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 32
  %350 = ptrtoint ptr %max_ordird_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %max_ordird_qp.i.i, align 8
  %max_ordird_qp50.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 32
  %352 = ptrtoint ptr %max_ordird_qp50.i.i to i32
  call void @__asan_store4_noabort(i32 %352)
  store i32 %351, ptr %max_ordird_qp50.i.i, align 4
  %max_ird_adapter.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 33
  %353 = ptrtoint ptr %max_ird_adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %max_ird_adapter.i.i, align 4
  %max_ird_adapter52.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 33
  %355 = ptrtoint ptr %max_ird_adapter52.i.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 %354, ptr %max_ird_adapter52.i.i, align 4
  %ulptx_memwrite_dsgl.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 30
  %356 = ptrtoint ptr %ulptx_memwrite_dsgl.i.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %357 = load i8, ptr %ulptx_memwrite_dsgl.i.i, align 8, !range !59
  %ulptx_memwrite_dsgl55.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 34
  %358 = ptrtoint ptr %ulptx_memwrite_dsgl55.i.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %357, ptr %ulptx_memwrite_dsgl55.i.i, align 4
  %nodeid.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 40
  %359 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 -1, ptr %nodeid.i.i, align 4
  %fr_nsmr_tpte_wr_support.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 34
  %360 = ptrtoint ptr %fr_nsmr_tpte_wr_support.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %fr_nsmr_tpte_wr_support.i.i, align 8, !range !59
  %fr_nsmr_tpte_wr_support60.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 41
  %362 = ptrtoint ptr %fr_nsmr_tpte_wr_support60.i.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %361, ptr %fr_nsmr_tpte_wr_support60.i.i, align 4
  %write_w_imm_support.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 39
  %363 = ptrtoint ptr %write_w_imm_support.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %write_w_imm_support.i.i, align 8, !range !59
  %write_w_imm_support64.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 42
  %365 = ptrtoint ptr %write_w_imm_support64.i.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %364, ptr %write_w_imm_support64.i.i, align 1
  %write_cmpl_support.i.i = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 40
  %366 = ptrtoint ptr %write_cmpl_support.i.i to i32
  call void @__asan_load1_noabort(i32 %366)
  %367 = load i8, ptr %write_cmpl_support.i.i, align 1, !range !59
  %write_cmpl_support68.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 43
  %368 = ptrtoint ptr %write_cmpl_support68.i.i to i32
  call void @__asan_store1_noabort(i32 %368)
  store i8 %367, ptr %write_cmpl_support68.i.i, align 2
  %369 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i31.i = getelementptr ptr, ptr %370, i32 %type
  %371 = ptrtoint ptr %arrayidx.i31.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %arrayidx.i31.i, align 4
  %373 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %374, i32 %cond.i
  %375 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %arrayidx2.i.i, align 4
  %rspq_id.i.i203 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %372, i32 0, i32 2
  %377 = ptrtoint ptr %rspq_id.i.i203 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %rspq_id.i.i203, align 4
  %379 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %379)
  store ptr %378, ptr %257, align 4
  %nrxq.i.i204 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %372, i32 0, i32 3
  %380 = ptrtoint ptr %nrxq.i.i204 to i32
  call void @__asan_load2_noabort(i32 %380)
  %381 = load i16, ptr %nrxq.i.i204, align 4
  %nrxq3.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 8
  %382 = ptrtoint ptr %nrxq3.i.i to i32
  call void @__asan_store2_noabort(i32 %382)
  store i16 %381, ptr %nrxq3.i.i, align 4
  %383 = load ptr, ptr %rspq_id.i.i203, align 4
  %384 = load i16, ptr %nrxq.i.i204, align 4
  %conv.i32.i = zext i16 %384 to i32
  %add.ptr.i33.i = getelementptr i16, ptr %383, i32 %conv.i32.i
  %ciq_ids.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 7
  %385 = ptrtoint ptr %ciq_ids.i.i to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %add.ptr.i33.i, ptr %ciq_ids.i.i, align 4
  %nciq.i.i205 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %372, i32 0, i32 4
  %386 = ptrtoint ptr %nciq.i.i205 to i32
  call void @__asan_load2_noabort(i32 %386)
  %387 = load i16, ptr %nciq.i.i205, align 2
  %nciq6.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 10
  %388 = ptrtoint ptr %nciq6.i.i to i32
  call void @__asan_store2_noabort(i32 %388)
  store i16 %387, ptr %nciq6.i.i, align 4
  %ntxq.i.i = getelementptr inbounds %struct.sge_uld_txq_info, ptr %376, i32 0, i32 2
  %389 = ptrtoint ptr %ntxq.i.i to i32
  call void @__asan_load2_noabort(i32 %389)
  %390 = load i16, ptr %ntxq.i.i, align 4
  %ntxq7.i.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lli.i, i32 0, i32 9
  %391 = ptrtoint ptr %ntxq7.i.i to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 %390, ptr %ntxq7.i.i, align 2
  %392 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %uld, align 4
  %add.i206 = getelementptr %struct.cxgb4_uld_info, ptr %393, i32 %type, i32 7
  %394 = ptrtoint ptr %add.i206 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %add.i206, align 4
  %call.i = call ptr %395(ptr noundef nonnull %lli.i) #9
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uld_attach.exit, label %if.end.i211

if.end.i211:                                      ; preds = %if.end38
  %396 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %uld, align 4
  %handle9.i = getelementptr %struct.cxgb4_uld_info, ptr %397, i32 %type, i32 1
  %398 = ptrtoint ptr %handle9.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr %call.i, ptr %handle9.i, align 4
  call void @t4_register_netevent_notifier() #9
  %399 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %flags.i, align 32
  %and.i209 = and i32 %400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i209)
  %tobool.not.i210 = icmp eq i32 %and.i209, 0
  br i1 %tobool.not.i210, label %if.end.i211.uld_attach.exit.thread_crit_edge, label %if.then10.i

if.end.i211.uld_attach.exit.thread_crit_edge:     ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #11
  br label %uld_attach.exit.thread

if.then10.i:                                      ; preds = %if.end.i211
  call void @__sanitizer_cov_trace_pc() #11
  %401 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %uld, align 4
  %state_change.i = getelementptr %struct.cxgb4_uld_info, ptr %402, i32 %type, i32 9
  %403 = ptrtoint ptr %state_change.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %state_change.i, align 4
  %call13.i212 = call i32 %404(ptr noundef %call.i, i32 noundef 0) #9
  br label %uld_attach.exit.thread

uld_attach.exit.thread:                           ; preds = %if.then10.i, %if.end.i211.uld_attach.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %lli.i) #9
  br label %cleanup

uld_attach.exit:                                  ; preds = %if.end38
  %pdev_dev.i207 = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %405 = ptrtoint ptr %pdev_dev.i207 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %pdev_dev.i207, align 16
  %407 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %uld, align 4
  %arrayidx4.i = getelementptr %struct.cxgb4_uld_info, ptr %408, i32 %type
  %409 = ptrtoint ptr %call.i to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %406, ptr noundef nonnull @.str.15, ptr noundef %arrayidx4.i, i32 noundef %409) #14
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %lli.i) #9
  %410 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx.i218 = getelementptr ptr, ptr %411, i32 %cond.i
  %412 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %arrayidx.i218, align 4
  %tobool.not.i219 = icmp eq ptr %413, null
  br i1 %tobool.not.i219, label %uld_attach.exit.free_irq_crit_edge, label %land.lhs.true.i222

uld_attach.exit.free_irq_crit_edge:               ; preds = %uld_attach.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irq

land.lhs.true.i222:                               ; preds = %uld_attach.exit
  %users.i220 = getelementptr inbounds %struct.sge_uld_txq_info, ptr %413, i32 0, i32 1
  %call.i.i.i221 = call zeroext i1 @__kasan_check_write(ptr noundef %users.i220, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !49
  call void @llvm.prefetch.p0(ptr %users.i220, i32 1, i32 3, i32 1) #9
  %414 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i220, ptr %users.i220, i32 1, ptr elementtype(i32) %users.i220) #9, !srcloc !50
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %414, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %land.lhs.true.i222.free_irq_crit_edge

land.lhs.true.i222.free_irq_crit_edge:            ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_irq

if.then.i:                                        ; preds = %land.lhs.true.i222
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @free_sge_txq_uld(ptr noundef %adap, ptr noundef nonnull %413) #9
  %415 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %413, align 4
  call void @kfree(ptr noundef %416) #9
  call void @kfree(ptr noundef nonnull %413) #9
  %417 = ptrtoint ptr %uld_txq_info.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %uld_txq_info.i, align 4
  %arrayidx3.i223 = getelementptr ptr, ptr %418, i32 %cond.i
  %419 = ptrtoint ptr %arrayidx3.i223 to i32
  call void @__asan_store4_noabort(i32 %419)
  store ptr null, ptr %arrayidx3.i223, align 4
  br label %free_irq

free_irq:                                         ; preds = %if.then.i, %land.lhs.true.i222.free_irq_crit_edge, %uld_attach.exit.free_irq_crit_edge, %if.then49.i, %if.then45.i, %do.end.i156, %if.end.i150.free_irq_crit_edge, %if.end31.free_irq_crit_edge
  %420 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %flags.i, align 32
  %and46 = and i32 %421, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %free_irq.if.end49_crit_edge, label %if.then48

free_irq.if.end49_crit_edge:                      ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %free_irq
  %422 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i226 = getelementptr ptr, ptr %423, i32 %type
  %424 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %arrayidx.i226, align 4
  %nrxq.i227 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %425, i32 0, i32 3
  %nciq.i228 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %425, i32 0, i32 4
  %426 = ptrtoint ptr %nrxq.i227 to i32
  call void @__asan_load2_noabort(i32 %426)
  %427 = load i16, ptr %nrxq.i227, align 4
  %conv9.i = zext i16 %427 to i32
  %428 = ptrtoint ptr %nciq.i228 to i32
  call void @__asan_load2_noabort(i32 %428)
  %429 = load i16, ptr %nciq.i228, align 2
  %conv110.i229 = zext i16 %429 to i32
  %add11.i = sub nsw i32 0, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv110.i229, i32 %add11.i)
  %cmp12.not.i = icmp eq i32 %conv110.i229, %add11.i
  br i1 %cmp12.not.i, label %if.then48.if.end49_crit_edge, label %for.body.lr.ph.i231

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

for.body.lr.ph.i231:                              ; preds = %if.then48
  %uldrxq.i230 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %425, i32 0, i32 1
  br label %for.body.i234

for.body.i234:                                    ; preds = %cleanup.i241.for.body.i234_crit_edge, %for.body.lr.ph.i231
  %idx.013.i = phi i32 [ 0, %for.body.lr.ph.i231 ], [ %inc.i236, %cleanup.i241.for.body.i234_crit_edge ]
  %430 = ptrtoint ptr %uldrxq.i230 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %uldrxq.i230, align 4
  %arrayidx3.i232 = getelementptr %struct.sge_ofld_rxq, ptr %431, i32 %idx.013.i
  %tobool.not.i233 = icmp eq ptr %arrayidx3.i232, null
  br i1 %tobool.not.i233, label %for.body.i234.cleanup.i241_crit_edge, label %if.end.i235

for.body.i234.cleanup.i241_crit_edge:             ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i241

if.end.i235:                                      ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  call void @cxgb4_quiesce_rx(ptr noundef nonnull %arrayidx3.i232) #9
  br label %cleanup.i241

cleanup.i241:                                     ; preds = %if.end.i235, %for.body.i234.cleanup.i241_crit_edge
  %inc.i236 = add nuw nsw i32 %idx.013.i, 1
  %432 = ptrtoint ptr %nrxq.i227 to i32
  call void @__asan_load2_noabort(i32 %432)
  %433 = load i16, ptr %nrxq.i227, align 4
  %conv.i237 = zext i16 %433 to i32
  %434 = ptrtoint ptr %nciq.i228 to i32
  call void @__asan_load2_noabort(i32 %434)
  %435 = load i16, ptr %nciq.i228, align 2
  %conv1.i238 = zext i16 %435 to i32
  %add.i239 = add nuw nsw i32 %conv1.i238, %conv.i237
  %cmp.i240 = icmp ult i32 %inc.i236, %add.i239
  br i1 %cmp.i240, label %cleanup.i241.for.body.i234_crit_edge, label %cleanup.i241.if.end49_crit_edge

cleanup.i241.if.end49_crit_edge:                  ; preds = %cleanup.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

cleanup.i241.for.body.i234_crit_edge:             ; preds = %cleanup.i241
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i234

if.end49:                                         ; preds = %cleanup.i241.if.end49_crit_edge, %if.then48.if.end49_crit_edge, %free_irq.if.end49_crit_edge
  %436 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %flags.i, align 32
  %and51 = and i32 %437, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end49.free_rxq_crit_edge, label %if.then53

if.end49.free_rxq_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rxq

if.then53:                                        ; preds = %if.end49
  %438 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i244 = getelementptr ptr, ptr %439, i32 %type
  %440 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %arrayidx.i244, align 4
  %nrxq.i245 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %441, i32 0, i32 3
  %nciq.i246 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %441, i32 0, i32 4
  %442 = ptrtoint ptr %nrxq.i245 to i32
  call void @__asan_load2_noabort(i32 %442)
  %443 = load i16, ptr %nrxq.i245, align 4
  %conv19.i = zext i16 %443 to i32
  %444 = ptrtoint ptr %nciq.i246 to i32
  call void @__asan_load2_noabort(i32 %444)
  %445 = load i16, ptr %nciq.i246, align 2
  %conv120.i247 = zext i16 %445 to i32
  %add21.i = sub nsw i32 0, %conv19.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conv120.i247, i32 %add21.i)
  %cmp22.not.i = icmp eq i32 %conv120.i247, %add21.i
  br i1 %cmp22.not.i, label %if.then53.free_rxq_crit_edge, label %for.body.lr.ph.i249

if.then53.free_rxq_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rxq

for.body.lr.ph.i249:                              ; preds = %if.then53
  %uldrxq.i248 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %441, i32 0, i32 1
  br label %for.body.i258

for.body.i258:                                    ; preds = %for.body.i258.for.body.i258_crit_edge, %for.body.lr.ph.i249
  %idx.023.i = phi i32 [ 0, %for.body.lr.ph.i249 ], [ %inc.i253, %for.body.i258.for.body.i258_crit_edge ]
  %446 = ptrtoint ptr %uldrxq.i248 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %uldrxq.i248, align 4
  %msix.i250 = getelementptr %struct.sge_ofld_rxq, ptr %447, i32 %idx.023.i, i32 3
  %448 = ptrtoint ptr %msix.i250 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %msix.i250, align 8
  %450 = ptrtoint ptr %449 to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %449, align 4
  %aff_mask.i251 = getelementptr inbounds %struct.msix_info, ptr %449, i32 0, i32 3
  %452 = ptrtoint ptr %aff_mask.i251 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %aff_mask.i251, align 4
  call void @cxgb4_clear_msix_aff(i16 noundef zeroext %451, ptr noundef %453) #9
  %idx4.i = getelementptr inbounds %struct.msix_info, ptr %449, i32 0, i32 2
  %454 = ptrtoint ptr %idx4.i to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %idx4.i, align 4
  call void @cxgb4_free_msix_idx_in_bmap(ptr noundef %adap, i32 noundef %455) #9
  %456 = ptrtoint ptr %449 to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %449, align 4
  %conv6.i = zext i16 %457 to i32
  %458 = ptrtoint ptr %uldrxq.i248 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %uldrxq.i248, align 4
  %arrayidx8.i = getelementptr %struct.sge_ofld_rxq, ptr %459, i32 %idx.023.i
  %call.i252 = call ptr @free_irq(i32 noundef %conv6.i, ptr noundef %arrayidx8.i) #9
  %inc.i253 = add nuw nsw i32 %idx.023.i, 1
  %460 = ptrtoint ptr %nrxq.i245 to i32
  call void @__asan_load2_noabort(i32 %460)
  %461 = load i16, ptr %nrxq.i245, align 4
  %conv.i254 = zext i16 %461 to i32
  %462 = ptrtoint ptr %nciq.i246 to i32
  call void @__asan_load2_noabort(i32 %462)
  %463 = load i16, ptr %nciq.i246, align 2
  %conv1.i255 = zext i16 %463 to i32
  %add.i256 = add nuw nsw i32 %conv1.i255, %conv.i254
  %cmp.i257 = icmp ult i32 %inc.i253, %add.i256
  br i1 %cmp.i257, label %for.body.i258.for.body.i258_crit_edge, label %for.body.i258.free_rxq_crit_edge

for.body.i258.free_rxq_crit_edge:                 ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rxq

for.body.i258.for.body.i258_crit_edge:            ; preds = %for.body.i258
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i258

free_rxq:                                         ; preds = %for.body.i258.free_rxq_crit_edge, %if.then53.free_rxq_crit_edge, %if.end49.free_rxq_crit_edge, %while.body.i.free_rxq_crit_edge, %while.cond.preheader.i.free_rxq_crit_edge
  call fastcc void @free_sge_queues_uld(ptr noundef %adap, i32 noundef %type)
  br label %free_queues

free_queues:                                      ; preds = %free_rxq, %setup_sge_queues_uld.exit.free_queues_crit_edge, %alloc_uld_rxqs.exit.i.free_queues_crit_edge, %freeout.i.i.free_queues_crit_edge
  %464 = ptrtoint ptr %uld_rxq_info.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %uld_rxq_info.i, align 8
  %arrayidx.i261 = getelementptr ptr, ptr %465, i32 %type
  %466 = ptrtoint ptr %arrayidx.i261 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %arrayidx.i261, align 4
  store ptr null, ptr %arrayidx.i261, align 4
  %rspq_id.i262 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %467, i32 0, i32 2
  %468 = ptrtoint ptr %rspq_id.i262 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %rspq_id.i262, align 4
  call void @kfree(ptr noundef %469) #9
  %uldrxq.i263 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %467, i32 0, i32 1
  %470 = ptrtoint ptr %uldrxq.i263 to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %uldrxq.i263, align 4
  call void @kfree(ptr noundef %471) #9
  call void @kfree(ptr noundef %467) #9
  br label %do.end

do.end:                                           ; preds = %free_queues, %if.then102.i, %if.then97.i, %if.end10.do.end_crit_edge
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 4
  %472 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %pdev_dev, align 16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %473, ptr noundef nonnull @.str.6, i32 noundef %type) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %uld_attach.exit.thread, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_register_uld(i32 noundef %type, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp = icmp ugt i32 %type, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 84) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %p, i32 72)
  tail call void @mutex_lock_nested(ptr noundef nonnull @uld_mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @adapter_list to i32))
  %.pn18 = load ptr, ptr @adapter_list, align 4
  %cmp3.not19 = icmp eq ptr %.pn18, @adapter_list
  br i1 %cmp3.not19, label %if.end2.for.end_crit_edge, label %if.end2.for.body_crit_edge

if.end2.for.body_crit_edge:                       ; preds = %if.end2
  br label %for.body

if.end2.for.end_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end2.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn18, %if.end2.for.body_crit_edge ]
  %adap.0 = getelementptr i8, ptr %.pn20, i32 -27888
  tail call fastcc void @cxgb4_uld_alloc_resources(ptr noundef %adap.0, i32 noundef %type, ptr noundef %p)
  %2 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp3.not = icmp eq ptr %.pn, @adapter_list
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end2.for.end_crit_edge
  %uld_type = getelementptr inbounds %struct.cxgb4_uld_list, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %uld_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %uld_type, align 8
  %list_node8 = getelementptr inbounds %struct.cxgb4_uld_list, ptr %call7.i.i, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @uld_list, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uld_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_node8, ptr noundef %4, ptr noundef nonnull @uld_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.list_head, ptr @uld_list, i32 0, i32 1) to i32))
  store ptr %list_node8, ptr getelementptr inbounds (%struct.list_head, ptr @uld_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %list_node8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @uld_list, ptr %list_node8, align 8
  %prev3.i.i = getelementptr inbounds %struct.cxgb4_uld_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list_node8, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uld_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_unregister_uld(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp = icmp ugt i32 %type, 7
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @uld_mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @adapter_list to i32))
  %.pn66 = load ptr, ptr @adapter_list, align 4
  %cmp2.not68 = icmp eq ptr %.pn66, @adapter_list
  br i1 %cmp2.not68, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type)
  %cond = icmp eq i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp10 = icmp eq i32 %type, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn69 = phi ptr [ %.pn66, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %adap.070 = getelementptr i8, ptr %.pn69, i32 -27888
  br i1 %cond, label %land.lhs.true, label %land.lhs.true5

land.lhs.true:                                    ; preds = %for.body
  %crypto.i = getelementptr i8, ptr %.pn69, i32 -27363
  %0 = ptrtoint ptr %crypto.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crypto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true5:                                   ; preds = %for.body
  %offload.i = getelementptr i8, ptr %.pn69, i32 -27364
  %2 = ptrtoint ptr %offload.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not = icmp eq i8 %3, 0
  br i1 %tobool7.not, label %land.lhs.true5.for.inc_crit_edge, label %if.end9

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end9:                                          ; preds = %land.lhs.true5
  br i1 %cmp10, label %land.lhs.true11, label %if.end9.if.end15_crit_edge

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true11:                                  ; preds = %if.end9
  %chip = getelementptr i8, ptr %.pn69, i32 -27384
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip, align 8
  %6 = and i32 %5, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 64
  br i1 %cmp.i.not, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %if.end9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge
  tail call fastcc void @cxgb4_shutdown_uld_adapter(ptr noundef %adap.070, i32 noundef %type)
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn69, align 4
  %cmp2.not = icmp eq ptr %.pn, @adapter_list
  br i1 %cmp2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uld_list to i32))
  %8 = load ptr, ptr @uld_list, align 4
  %cmp30.not73 = icmp eq ptr %8, @uld_list
  br i1 %cmp30.not73, label %for.end.for.end43_crit_edge, label %for.end.for.body32_crit_edge

for.end.for.body32_crit_edge:                     ; preds = %for.end
  br label %for.body32

for.end.for.end43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.body32:                                       ; preds = %for.inc37.for.body32_crit_edge, %for.end.for.body32_crit_edge
  %.pn61.in74 = phi ptr [ %.pn6177, %for.inc37.for.body32_crit_edge ], [ %8, %for.end.for.body32_crit_edge ]
  %uld_entry.076 = getelementptr i8, ptr %.pn61.in74, i32 -72
  %9 = ptrtoint ptr %.pn61.in74 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn6177 = load ptr, ptr %.pn61.in74, align 4
  %uld_type = getelementptr i8, ptr %.pn61.in74, i32 8
  %10 = ptrtoint ptr %uld_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %uld_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %type)
  %cmp33 = icmp eq i32 %11, %type
  br i1 %cmp33, label %if.then34, label %for.body32.for.inc37_crit_edge

for.body32.for.inc37_crit_edge:                   ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc37

if.then34:                                        ; preds = %for.body32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn61.in74) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then34.list_del.exit_crit_edge

if.then34.list_del.exit_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn61.in74, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn61.in74 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn61.in74, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then34.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn61.in74 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn61.in74, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn61.in74, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %uld_entry.076) #9
  br label %for.inc37

for.inc37:                                        ; preds = %list_del.exit, %for.body32.for.inc37_crit_edge
  %cmp30.not = icmp eq ptr %.pn6177, @uld_list
  br i1 %cmp30.not, label %for.inc37.for.end43_crit_edge, label %for.inc37.for.body32_crit_edge

for.inc37.for.body32_crit_edge:                   ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.inc37.for.end43_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end43

for.end43:                                        ; preds = %for.inc37.for.end43_crit_edge, %for.end.for.end43_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @uld_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end43, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end43 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_sge_queues_uld(ptr noundef %adap, i32 noundef %uld_type) unnamed_addr #0 align 64 {
entry:
  %param = alloca i32, align 4
  %cmplqid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uld_rxq_info = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 22, i32 5
  %0 = ptrtoint ptr %uld_rxq_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uld_rxq_info, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %uld_type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 32
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %uld_type)
  %cmp = icmp eq i32 %uld_type, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmplqid) #9
  %6 = ptrtoint ptr %cmplqid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmplqid, align 4
  %nports = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 15, i32 20
  %7 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp249.not = icmp eq i8 %8, 0
  br i1 %cmp249.not, label %if.then.for.end_crit_edge, label %for.body.lr.ph

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %cntxt_id = getelementptr %struct.adapter, ptr %adap, i32 0, i32 22, i32 2, i32 %i.050, i32 0, i32 7
  %9 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntxt_id, align 4
  %or6 = or i32 %10, 68222976
  %11 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or6, ptr %param, align 4
  %12 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mbox, align 8
  %14 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pf, align 4
  %call = call i32 @t4_set_params(ptr noundef %adap, i32 noundef %13, i32 noundef %15, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %param, ptr noundef nonnull %cmplqid) #9
  %inc = add nuw nsw i32 %i.050, 1
  %16 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nports, align 4
  %conv = zext i8 %17 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmplqid) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %nciq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %nciq to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nciq, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool7.not = icmp eq i16 %19, 0
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then8:                                         ; preds = %if.end
  %conv10 = zext i16 %19 to i32
  %uldrxq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %uldrxq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %uldrxq, align 4
  %nrxq = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nrxq, align 4
  %conv11 = zext i16 %23 to i32
  %add.ptr = getelementptr %struct.sge_ofld_rxq, ptr %21, i32 %conv11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then8
  %q.addr.012.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr, %if.then8 ]
  %n.addr.011.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %conv10, %if.then8 ]
  %desc.i = getelementptr inbounds %struct.sge_rspq, ptr %q.addr.012.i, i32 0, i32 13
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i, align 8
  %tobool1.not.i = icmp eq ptr %25, null
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %size.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012.i, i32 0, i32 1, i32 10
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool3.not.i = icmp eq i32 %27, 0
  %fl.i = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012.i, i32 0, i32 1
  %spec.select.i = select i1 %tobool3.not.i, ptr null, ptr %fl.i
  call void @free_rspq_fl(ptr noundef %adap, ptr noundef %q.addr.012.i, ptr noundef %spec.select.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %dec.i = add nsw i32 %n.addr.011.i, -1
  %incdec.ptr.i = getelementptr %struct.sge_ofld_rxq, ptr %q.addr.012.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.if.end12_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end12_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %for.inc.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %nrxq13 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %nrxq13 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %nrxq13, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not10.i32 = icmp eq i16 %29, 0
  br i1 %tobool.not10.i32, label %if.end12.t4_free_uld_rxqs.exit47_crit_edge, label %for.body.i37.preheader

if.end12.t4_free_uld_rxqs.exit47_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %t4_free_uld_rxqs.exit47

for.body.i37.preheader:                           ; preds = %if.end12
  %uldrxq15 = getelementptr inbounds %struct.sge_uld_rxq_info, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %uldrxq15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %uldrxq15, align 4
  %conv14 = zext i16 %29 to i32
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i46.for.body.i37_crit_edge, %for.body.i37.preheader
  %q.addr.012.i33 = phi ptr [ %incdec.ptr.i44, %for.inc.i46.for.body.i37_crit_edge ], [ %31, %for.body.i37.preheader ]
  %n.addr.011.i34 = phi i32 [ %dec.i43, %for.inc.i46.for.body.i37_crit_edge ], [ %conv14, %for.body.i37.preheader ]
  %desc.i35 = getelementptr inbounds %struct.sge_rspq, ptr %q.addr.012.i33, i32 0, i32 13
  %32 = ptrtoint ptr %desc.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i35, align 8
  %tobool1.not.i36 = icmp eq ptr %33, null
  br i1 %tobool1.not.i36, label %for.body.i37.for.inc.i46_crit_edge, label %if.then.i42

for.body.i37.for.inc.i46_crit_edge:               ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i46

if.then.i42:                                      ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  %size.i38 = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012.i33, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %size.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i38, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not.i39 = icmp eq i32 %35, 0
  %fl.i40 = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q.addr.012.i33, i32 0, i32 1
  %spec.select.i41 = select i1 %tobool3.not.i39, ptr null, ptr %fl.i40
  call void @free_rspq_fl(ptr noundef %adap, ptr noundef %q.addr.012.i33, ptr noundef %spec.select.i41) #9
  br label %for.inc.i46

for.inc.i46:                                      ; preds = %if.then.i42, %for.body.i37.for.inc.i46_crit_edge
  %dec.i43 = add nsw i32 %n.addr.011.i34, -1
  %incdec.ptr.i44 = getelementptr %struct.sge_ofld_rxq, ptr %q.addr.012.i33, i32 1
  %tobool.not.i45 = icmp eq i32 %dec.i43, 0
  br i1 %tobool.not.i45, label %for.inc.i46.t4_free_uld_rxqs.exit47_crit_edge, label %for.inc.i46.for.body.i37_crit_edge

for.inc.i46.for.body.i37_crit_edge:               ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37

for.inc.i46.t4_free_uld_rxqs.exit47_crit_edge:    ; preds = %for.inc.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %t4_free_uld_rxqs.exit47

t4_free_uld_rxqs.exit47:                          ; preds = %for.inc.i46.t4_free_uld_rxqs.exit47_crit_edge, %if.end12.t4_free_uld_rxqs.exit47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_sge_txq_uld(ptr noundef %adap, ptr nocapture noundef readonly %txq_info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ntxq = getelementptr inbounds %struct.sge_uld_txq_info, ptr %txq_info, i32 0, i32 2
  %0 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ntxq, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp23.not = icmp eq i16 %1, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mbox = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 6
  %pf = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %txq_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txq_info, align 4
  %arrayidx = getelementptr %struct.sge_uld_txq, ptr %3, i32 %i.024
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %desc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 8
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 32
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %qresume_tsk = getelementptr %struct.sge_uld_txq, ptr %3, i32 %i.024, i32 3
  tail call void @tasklet_kill(ptr noundef %qresume_tsk) #9
  %6 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox, align 8
  %8 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pf, align 4
  %cntxt_id = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 7
  %10 = ptrtoint ptr %cntxt_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cntxt_id, align 4
  %call = tail call i32 @t4_ofld_eq_free(ptr noundef %adap, i32 noundef %7, i32 noundef %9, i32 noundef 0, i32 noundef %11) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 128
  tail call void @free_tx_desc(ptr noundef %adap, ptr noundef nonnull %arrayidx, i32 noundef %13, i1 noundef zeroext false) #9
  %sdesc = getelementptr inbounds %struct.sge_txq, ptr %arrayidx, i32 0, i32 9
  %14 = ptrtoint ptr %sdesc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdesc, align 4
  tail call void @kfree(ptr noundef %15) #9
  %sendq = getelementptr %struct.sge_uld_txq, ptr %3, i32 %i.024, i32 2
  %16 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sendq, align 4
  %cmp.i.i2.i = icmp eq ptr %17, %sendq
  %tobool.not.i13.i = icmp eq ptr %17, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

if.then.__skb_queue_purge.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %qlen.i.i.i = getelementptr %struct.sge_uld_txq, ptr %3, i32 %i.024, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi ptr [ %17, %while.body.lr.ph.i ], [ %28, %while.body.i.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %20, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %18, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %prev17.i.i.i, align 4
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %24, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %18, i32 noundef 0) #9
  %27 = ptrtoint ptr %sendq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sendq, align 4
  %cmp.i.i.i = icmp eq ptr %28, %sendq
  %tobool.not.i1.i = icmp eq ptr %28, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.then.__skb_queue_purge.exit_crit_edge
  tail call void @free_txq(ptr noundef %adap, ptr noundef nonnull %arrayidx) #9
  br label %if.end

if.end:                                           ; preds = %__skb_queue_purge.exit, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_ofld_eq_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_tx_desc(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_txq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_quiesce_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clear_msix_aff(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_msix_idx_in_bmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rspq_fl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_rspq_intr_params(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_get_msix_idx_from_bmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_alloc_rxq(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uldrx_handler(ptr noundef %q, ptr noundef %rsp, ptr noundef %gl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap1 = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %adap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap1, align 8
  %2 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rsp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %3)
  %cmp = icmp eq i8 %3, -64
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i64, ptr %rsp, i32 1
  %type = getelementptr inbounds %struct.cpl_fw4_msg, ptr %add.ptr3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %5)
  %cmp5 = icmp eq i8 %5, 4
  %spec.select.idx = select i1 %cmp5, i32 2, i32 0
  %spec.select = getelementptr i64, ptr %rsp, i32 %spec.select.idx
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %rsp.addr.0 = phi ptr [ %rsp, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %flush_handler = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 22
  %6 = ptrtoint ptr %flush_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flush_handler, align 4
  %tobool.not = icmp eq ptr %7, null
  %uld14 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 37
  %8 = ptrtoint ptr %uld14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %uld14, align 4
  %uld15 = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 8
  %10 = ptrtoint ptr %uld15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %uld15, align 1
  %idxprom16 = zext i8 %11 to i32
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lro_rx_handler = getelementptr %struct.cxgb4_uld_info, ptr %9, i32 %idxprom16, i32 11
  %12 = ptrtoint ptr %lro_rx_handler to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lro_rx_handler, align 4
  %handle = getelementptr %struct.cxgb4_uld_info, ptr %9, i32 %idxprom16, i32 1
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handle, align 4
  %lro_mgr = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 23
  %call = tail call i32 %13(ptr noundef %15, ptr noundef %rsp.addr.0, ptr noundef %gl, ptr noundef %lro_mgr, ptr noundef %q) #9
  br label %if.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_handler = getelementptr %struct.cxgb4_uld_info, ptr %9, i32 %idxprom16, i32 8
  %16 = ptrtoint ptr %rx_handler to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_handler, align 4
  %handle22 = getelementptr %struct.cxgb4_uld_info, ptr %9, i32 %idxprom16, i32 1
  %18 = ptrtoint ptr %handle22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handle22, align 4
  %call23 = tail call i32 %17(ptr noundef %19, ptr noundef %rsp.addr.0, ptr noundef %gl) #9
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then8
  %ret.0 = phi i32 [ %call, %if.then8 ], [ %call23, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.end27, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %nomem = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %nomem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nomem, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %nomem, align 4
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %magicptr = ptrtoint ptr %gl to i32
  %22 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.else38 [
    i32 0, label %if.then29
    i32 1, label %if.then35
  ]

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %imm = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %imm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %imm, align 4
  %inc31 = add i32 %24, 1
  store i32 %inc31, ptr %imm, align 4
  br label %cleanup

if.then35:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %an = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %an to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %an, align 8
  %inc37 = add i32 %26, 1
  store i32 %inc37, ptr %an, align 8
  br label %cleanup

if.else38:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %stats39 = getelementptr inbounds %struct.sge_ofld_rxq, ptr %q, i32 0, i32 2
  %27 = ptrtoint ptr %stats39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stats39, align 8
  %inc40 = add i32 %28, 1
  store i32 %inc40, ptr %stats39, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else38, %if.then35, %if.then29, %if.then26
  %retval.0 = phi i32 [ -1, %if.then26 ], [ 0, %if.then35 ], [ 0, %if.else38 ], [ 0, %if.then29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uldrx_flush_handler(ptr noundef %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adap1 = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 19
  %0 = ptrtoint ptr %adap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap1, align 8
  %uld = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %uld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %uld, align 4
  %uld2 = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 8
  %4 = ptrtoint ptr %uld2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %uld2, align 1
  %idxprom = zext i8 %5 to i32
  %lro_flush = getelementptr %struct.cxgb4_uld_info, ptr %3, i32 %idxprom, i32 12
  %6 = ptrtoint ptr %lro_flush to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lro_flush, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lro_mgr = getelementptr inbounds %struct.sge_rspq, ptr %q, i32 0, i32 23
  tail call void %7(ptr noundef %lro_mgr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_intr_msix(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_set_msix_aff(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_enable_rx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_sge_alloc_uld_txq(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t4_register_netevent_notifier() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 696, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug670, !1, !"__UNIQUE_ID_ddebug670", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 705, i32 4}
!8 = !{ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug671, !7, !"__UNIQUE_ID_ddebug671", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 722, i32 4}
!11 = !{ptr @cxgb4_set_ktls_feature.__UNIQUE_ID_ddebug672, !10, !"__UNIQUE_ID_ddebug672", i1 false, i1 false}
!12 = !{ptr @__ksymtab_cxgb4_register_uld, !13, !"__ksymtab_cxgb4_register_uld", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 822, i32 1}
!14 = !{ptr @__ksymtab_cxgb4_unregister_uld, !15, !"__ksymtab_cxgb4_unregister_uld", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 859, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 776, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cxgb4_uld_alloc_resources._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @cxgb4_uld_alloc_resources._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 296, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cfg_queues_uld._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @cfg_queues_uld._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 141, i32 6}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 483, i32 4}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @setup_sge_txq_uld._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @setup_sge_txq_uld._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/chelsio/cxgb4/cxgb4_uld.c", i32 654, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @uld_attach._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @uld_attach._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148319383}
!50 = !{i64 2148234116, i64 2148234148, i64 2148234177, i64 2148234211, i64 2148234242, i64 2148234265}
!51 = !{i64 2148319612}
!52 = !{i64 2148712746, i64 2148712751, i64 2148712764, i64 2148712808, i64 2148712842, i64 2148712863}
!53 = !{i64 2148232461, i64 2148232493, i64 2148232522, i64 2148232556, i64 2148232587, i64 2148232610}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2148320462}
!57 = !{i64 2148234926, i64 2148234958, i64 2148234987, i64 2148235021, i64 2148235052, i64 2148235075}
!58 = !{i64 2149326910}
!59 = !{i8 0, i8 2}
!60 = !{!"auto-init"}
!61 = !{i64 2148316342}
!62 = !{i64 2148231651, i64 2148231683, i64 2148231712, i64 2148231746, i64 2148231777, i64 2148231800}
!63 = !{i64 2148316571}
!64 = !{i64 2148230931, i64 2148230957, i64 2148230986, i64 2148231020, i64 2148231051, i64 2148231074}
!65 = !{i64 6285578}
!66 = !{i64 2159988326}
