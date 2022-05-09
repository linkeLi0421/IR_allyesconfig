; ModuleID = '/llk/IR_all_yes/drivers/net/ipvlan/ipvlan_core.c_pt.bc'
source_filename = "../drivers/net/ipvlan/ipvlan_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipvlan_count_rx\22, \22a\22\09"
module asm "\09.weak\09__crc_ipvlan_count_rx\09\09\09\09"
module asm "\09.long\09__crc_ipvlan_count_rx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipvlan_count_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22ipvlan_count_rx\22\09\09\09\09\09"
module asm "__kstrtabns_ipvlan_count_rx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipvl_dev = type { ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, [8 x i32], i64, i32, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipvl_pcpu_stats = type { i64, i64, i64, i64, i64, %struct.u64_stats_sync, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ipvl_addr = type { ptr, %union.anon.156, %struct.hlist_node, %struct.list_head, i32, %struct.callback_head }
%union.anon.156 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.ipvl_port = type { ptr, %struct.possible_net_t, [256 x %struct.hlist_head], %struct.list_head, i16, i16, i16, %struct.work_struct, %struct.sk_buff_head, i32, %struct.ida }
%struct.possible_net_t = type { ptr }
%struct.hlist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sk_buff = type { %union.anon.51, %union.anon.54, %union.anon.55, [48 x i8], %union.anon.56, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.58, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr, %union.anon.53 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { ptr }
%union.anon.55 = type { i64 }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { i32, ptr }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.60, i32, i32, i32, i16, i16, %union.anon.62, i32, %union.anon.63, %union.anon.64, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.60 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i32 }
%union.anon.64 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.141, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.141 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.155 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nd_msg = type { %struct.icmp6hdr, %struct.in6_addr, [0 x i8] }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.157 }
%union.anon.157 = type { [1 x i32] }
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.96, i32, %struct.list_head, ptr }
%union.anon.96 = type { %struct.in6_addr }

@ipvlan_init_secret.___done = internal global i8 0, section ".data.once", align 1
@ipvlan_init_secret.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@ipvlan_jhash_secret = internal global i32 0, section ".data..read_mostly", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ipvlan_count_rx = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipvlan_count_rx = external dso_local constant [0 x i8], align 1
@__ksymtab_ipvlan_count_rx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipvlan_count_rx to i32), ptr @__kstrtab_ipvlan_count_rx, ptr @__kstrtabns_ipvlan_count_rx }, section "___ksymtab_gpl+ipvlan_count_rx", align 4
@ipvlan_find_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ipvlan/ipvlan_core.c\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ipvlan_addr_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipvlan_process_multicast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipvlan_queue_xmit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s called for mode = [%x]\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.ipvlan_queue_xmit = private unnamed_addr constant [18 x i8] c"ipvlan_queue_xmit\00", align 1
@ipvlan_handle_frame.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.ipvlan_handle_frame = private unnamed_addr constant [20 x i8] c"ipvlan_handle_frame\00", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ipvlan_ht_addr_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipvlan_port_get_rcu_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/ipvlan/ipvlan.h\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ipvlan_process_outbound._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ipvlan_process_outbound.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ipvlan\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ipvlan_process_outbound\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Dropped {multi|broad}cast of type=[%x]\0A\00", [56 x i8] zeroinitializer }, align 32
@ipvlan_process_outbound._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@ipvlan_process_outbound._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Dropped outbound packet type=%x\0A\00", [61 x i8] zeroinitializer }, align 32
@ipvlan_process_outbound._entry_ptr = internal global ptr @ipvlan_process_outbound._entry, section ".printk_index", align 4
@ipvlan_port_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 11, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 110, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 653, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 271, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../drivers/net/ipvlan/ipvlan.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 115, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 509, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [36 x i8] c"../drivers/net/ipvlan/ipvlan_core.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 526, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab_ipvlan_count_rx, ptr @ipvlan_process_outbound._entry, ptr @ipvlan_process_outbound._entry_ptr, ptr @ipvlan_init_secret.___once_key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ipvlan_process_outbound._rs, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @ipvlan_process_outbound._rs.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_init_secret.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_process_outbound._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_process_outbound._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvlan_process_outbound._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_init_secret() local_unnamed_addr #0 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @ipvlan_init_secret.___once_key, ptr blockaddress(@ipvlan_init_secret, %if.then)) #11
          to label %if.end13 [label %if.then], !srcloc !64

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #11
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !65
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @ipvlan_init_secret.___done, ptr noundef nonnull %___flags) #11
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !66

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @get_random_bytes(ptr noundef nonnull @ipvlan_jhash_secret, i32 noundef 4) #11
  call void @__do_once_done(ptr noundef nonnull @ipvlan_init_secret.___done, ptr noundef nonnull @ipvlan_init_secret.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #11
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_count_rx(ptr nocapture noundef readonly %ipvlan, i32 noundef %len, i1 noundef zeroext %success, i1 noundef zeroext %mcast) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %success, label %if.then, label %do.body11, !prof !67

if.then:                                          ; preds = %entry
  %pcpu_stats = getelementptr inbounds %struct.ipvl_dev, ptr %ipvlan, i32 0, i32 5
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 4
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %9, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.then.u64_stats_update_begin.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !69
  %22 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i7.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i9.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  %34 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %41 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i12.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !67

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.then.u64_stats_update_begin.exit_crit_edge
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !72
  %dep_map.i.i.i = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %9, i32 0, i32 5, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #11
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #11
  %49 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %9, align 8
  %inc = add i64 %50, 1
  store i64 %inc, ptr %9, align 8
  %conv = zext i32 %len to i64
  %rx_bytes = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %9, i32 0, i32 1
  %51 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_bytes, align 8
  %add5 = add i64 %52, %conv
  store i64 %add5, ptr %rx_bytes, align 8
  br i1 %mcast, label %if.then7, label %u64_stats_update_begin.exit.if.end_crit_edge

u64_stats_update_begin.exit.if.end_crit_edge:     ; preds = %u64_stats_update_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then7:                                         ; preds = %u64_stats_update_begin.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rx_mcast = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %9, i32 0, i32 2
  %53 = ptrtoint ptr %rx_mcast to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_mcast, align 8
  %inc8 = add i64 %54, 1
  store i64 %inc8, ptr %rx_mcast, align 8
  br label %if.end

if.end:                                           ; preds = %if.then7, %u64_stats_update_begin.exit.if.end_crit_edge
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %48) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !73
  %55 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %56, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  br label %if.end65

do.body11:                                        ; preds = %entry
  %57 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !74
  %pcpu_stats29 = getelementptr inbounds %struct.ipvl_dev, ptr %ipvlan, i32 0, i32 5
  %58 = ptrtoint ptr %pcpu_stats29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pcpu_stats29, align 4
  %rx_errs = getelementptr inbounds %struct.ipvl_pcpu_stats, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %rx_errs to i32
  %61 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i71 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i71 to ptr
  %cpu32 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu32, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx33, align 4
  %add34 = add i32 %66, %60
  %67 = inttoptr i32 %add34 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add35 = add i32 %69, 1
  store i32 %add35, ptr %67, align 4
  %70 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %and.i.i = and i32 %70, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %if.then55, label %do.body11.do.end58_crit_edge, !prof !66

do.body11.do.end58_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end58

if.then55:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end58

do.end58:                                         ; preds = %if.then55, %do.body11.do.end58_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %57) #11, !srcloc !76
  br label %if.end65

if.end65:                                         ; preds = %do.end58, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_ht_addr_add(ptr nocapture noundef readonly %ipvlan, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.ipvl_dev, ptr %ipvlan, i32 0, i32 2
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port1, align 4
  %atype = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 4
  %2 = ptrtoint ptr %atype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %ipu = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = load i32, ptr @ipvlan_jhash_secret, align 4
  %5 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ipu, align 4
  %arrayidx2.i.i = getelementptr %struct.ipvl_addr, ptr %addr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %8, %6
  %arrayidx4.i.i = getelementptr %struct.ipvl_addr, ptr %addr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.ipvl_addr, ptr %addr, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i.i, align 4
  %add1.i.i.i = add i32 %4, -559038725
  %add.i.i.i.i = add i32 %xor.i.i, %add1.i.i.i
  %add1.i.i.i.i = add i32 %10, %add1.i.i.i
  %add2.i.i.i.i = add i32 %12, %add1.i.i.i
  %xor.i.i.i.i = xor i32 %add2.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #11
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #11
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #11
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #11
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #11
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #11
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %ipu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ipu, align 4
  %15 = load i32, ptr @ipvlan_jhash_secret, align 4
  %add1.i.i = add i32 %15, -559038733
  %add.i.i.i = add i32 %add1.i.i, %14
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sub17.i.i.i.sink = phi i32 [ %sub17.i.i.i, %cond.false ], [ %sub17.i.i.i.i, %cond.true ]
  %xor18.i.i.i.sink = phi i32 [ %xor18.i.i.i, %cond.false ], [ %xor18.i.i.i.i, %cond.true ]
  %hlnode = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 2
  %pprev.i = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i.not = icmp eq ptr %17, null
  br i1 %tobool.not.i.not, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %cond.end
  %or.i57.i.i.i = lshr i32 %sub17.i.i.i.sink, 8
  %sub20.i.i.i = sub i32 %xor18.i.i.i.sink, %or.i57.i.i.i
  %idxprom = and i32 %sub20.i.i.i, 255
  %arrayidx = getelementptr %struct.ipvl_port, ptr %1, i32 0, i32 2, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %hlnode to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %hlnode, align 4
  %21 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !77
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %hlnode, ptr %arrayidx, align 4
  %tobool.not.i14 = icmp eq ptr %19, null
  br i1 %tobool.not.i14, label %if.then.if.end_crit_edge, label %do.body49.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body49.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %hlnode, ptr %pprev51.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.body49.i, %if.then.if.end_crit_edge, %cond.end.if.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_ht_addr_del(ptr noundef %addr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %hlnode = getelementptr inbounds %struct.ipvl_addr, ptr %addr, i32 0, i32 2
  %2 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hlnode, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipvlan_find_addr(ptr noundef %ipvlan, ptr nocapture noundef readonly %iaddr, i1 noundef zeroext %is_v6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @ipvlan_find_addr.__warned, align 1
  br i1 %.b27, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_find_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 110, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %addrs = getelementptr inbounds %struct.ipvl_dev, ptr %ipvlan, i32 0, i32 4
  %4 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn45 = load volatile ptr, ptr %addrs, align 4
  %cmp.not46 = icmp eq ptr %.pn45, %addrs
  br i1 %cmp.not46, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %for.body.lr.ph
  %.pn47 = phi ptr [ %.pn45, %for.body.lr.ph ], [ %.pn, %for.cond.backedge.for.body_crit_edge ]
  %atype5.i = getelementptr i8, ptr %.pn47, i32 8
  %5 = ptrtoint ptr %atype5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %atype5.i, align 4
  br i1 %is_v6, label %land.lhs.true4.critedge.i, label %land.lhs.true.i28

land.lhs.true.i28:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %if.then.i29, label %land.lhs.true.i28.for.cond.backedge_crit_edge

land.lhs.true.i28.for.cond.backedge_crit_edge:    ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.then.i29:                                      ; preds = %land.lhs.true.i28
  %ipu.i = getelementptr i8, ptr %.pn47, i32 -24
  %7 = ptrtoint ptr %ipu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ipu.i, align 4
  %9 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp2.i = icmp eq i32 %8, %10
  br i1 %cmp2.i, label %for.end.split.loop.exit, label %if.then.i29.for.cond.backedge_crit_edge

if.then.i29.for.cond.backedge_crit_edge:          ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

land.lhs.true4.critedge.i:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6.i = icmp eq i32 %6, 0
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true4.critedge.i.for.cond.backedge_crit_edge

land.lhs.true4.critedge.i.for.cond.backedge_crit_edge: ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

if.then7.i:                                       ; preds = %land.lhs.true4.critedge.i
  %ipu8.i = getelementptr i8, ptr %.pn47, i32 -24
  %11 = ptrtoint ptr %ipu8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ipu8.i, align 4
  %13 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iaddr, align 4
  %xor.i.i = xor i32 %14, %12
  %arrayidx4.i.i = getelementptr i8, ptr %.pn47, i32 -20
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4.i.i, align 4
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %18, %16
  %or.i.i = or i32 %xor7.i.i, %xor.i.i
  %arrayidx9.i.i = getelementptr i8, ptr %.pn47, i32 -16
  %19 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx9.i.i, align 4
  %21 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %22, %20
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr i8, ptr %.pn47, i32 -12
  %23 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15.i.i, align 4
  %25 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %26, %24
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %for.end.split.loop.exit39, label %if.then7.i.for.cond.backedge_crit_edge

if.then7.i.for.cond.backedge_crit_edge:           ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then7.i.for.cond.backedge_crit_edge, %land.lhs.true4.critedge.i.for.cond.backedge_crit_edge, %if.then.i29.for.cond.backedge_crit_edge, %land.lhs.true.i28.for.cond.backedge_crit_edge
  %27 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load volatile ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, %addrs
  br i1 %cmp.not, label %for.cond.backedge.for.end_crit_edge, label %for.cond.backedge.for.body_crit_edge

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end.split.loop.exit:                          ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #13
  %addr.0.le43 = getelementptr i8, ptr %.pn47, i32 -28
  br label %for.end

for.end.split.loop.exit39:                        ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %addr.0.le = getelementptr i8, ptr %.pn47, i32 -28
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit39, %for.end.split.loop.exit, %for.cond.backedge.for.end_crit_edge, %do.end.for.end_crit_edge
  %ret.0 = phi ptr [ %addr.0.le43, %for.end.split.loop.exit ], [ %addr.0.le, %for.end.split.loop.exit39 ], [ null, %do.end.for.end_crit_edge ], [ null, %for.cond.backedge.for.end_crit_edge ]
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i30, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %for.end
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %28 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i37 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ipvlan_addr_busy(ptr noundef %port, ptr nocapture noundef readonly %iaddr, i1 noundef zeroext %is_v6) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @ipvlan_addr_busy.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_addr_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %ipvlans = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %ipvlans, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ipvlans
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ipvlan.0 = getelementptr i8, ptr %.pn, i32 -4
  %call11 = tail call ptr @ipvlan_find_addr(ptr noundef %ipvlan.0, ptr noundef %iaddr, i1 noundef zeroext %is_v6)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %call.i29 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i29, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i32

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i32:                                ; preds = %for.end
  %call1.i30 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i34

land.lhs.true.i32.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i34:                               ; preds = %land.lhs.true.i32
  %.b4.i33 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i33, label %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, label %if.then.i35

land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i35:                                      ; preds = %land.lhs.true2.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i35, %land.lhs.true2.i34.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i32.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  %5 = xor i1 %cmp.not, true
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %6 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i36 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i36 to ptr
  %preempt_count.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i37, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i37, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipvlan_get_L3_hdr(ptr nocapture noundef readonly %port, ptr noundef %skb, ptr nocapture noundef writeonly %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.cleanup101_crit_edge [
    i16 2054, label %sw.bb
    i16 2048, label %sw.bb5
    i16 -31011, label %sw.bb40
  ]

entry.cleanup101_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %type.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 32
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %6)
  %cond.i = icmp ne i16 %6, 24
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len.i, align 1
  %conv1.i = zext i8 %8 to i32
  %add5.i = zext i1 %cond.i to i32
  %retval.0.in.i = shl nuw nsw i32 %conv1.i, %add5.i
  %retval.0.i = add nuw nsw i32 %retval.0.in.i, 16
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %retval.0.i, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge, !prof !66

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %retval.0.i)
  %cmp3.i = icmp ult i32 %10, %retval.0.i
  br i1 %cmp3.i, label %if.end.i.cleanup101_crit_edge, label %pskb_may_pull.exit, !prof !66

if.end.i.cleanup101_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %retval.0.i, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup101_crit_edge, label %pskb_may_pull.exit.cleanup_crit_edge, !prof !66

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

pskb_may_pull.exit.cleanup101_crit_edge:          ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

cleanup:                                          ; preds = %pskb_may_pull.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  br label %cleanup101.sink.split

sw.bb5:                                           ; preds = %entry
  %len.i.i134 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i134 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i134, align 4
  %data_len.i.i135 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i135 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i135, align 8
  %sub.i.i136 = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i136)
  %cmp.not.i137 = icmp ult i32 %sub.i.i136, 20
  br i1 %cmp.not.i137, label %if.end.i139, label %sw.bb5.if.end16_crit_edge, !prof !66

sw.bb5.if.end16_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end.i139:                                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %18)
  %cmp3.i138 = icmp ult i32 %18, 20
  br i1 %cmp3.i138, label %if.end.i139.cleanup101_crit_edge, label %pskb_may_pull.exit145, !prof !66

if.end.i139.cleanup101_crit_edge:                 ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

pskb_may_pull.exit145:                            ; preds = %if.end.i139
  %sub.i140 = sub nuw nsw i32 20, %sub.i.i136
  %call13.i141 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i140) #11
  %cmp14.i142.not = icmp eq ptr %call13.i141, null
  br i1 %cmp14.i142.not, label %pskb_may_pull.exit145.cleanup101_crit_edge, label %pskb_may_pull.exit145.if.end16_crit_edge, !prof !66

pskb_may_pull.exit145.if.end16_crit_edge:         ; preds = %pskb_may_pull.exit145
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

pskb_may_pull.exit145.cleanup101_crit_edge:       ; preds = %pskb_may_pull.exit145
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end16:                                         ; preds = %pskb_may_pull.exit145.if.end16_crit_edge, %sw.bb5.if.end16_crit_edge
  %head.i.i146 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i146 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i146, align 8
  %network_header.i.i147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i.i147 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i.i147, align 4
  %conv.i.i148 = zext i16 %24 to i32
  %add.ptr.i.i149 = getelementptr i8, ptr %22, i32 %conv.i.i148
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i149, i32 0, i32 2
  %25 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tot_len, align 2
  %27 = ptrtoint ptr %add.ptr.i.i149 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %add.ptr.i.i149, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear)
  %cmp = icmp ugt i8 %bf.clear, 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp23.not = icmp eq i8 %bf.lshr.mask, 64
  %or.cond = and i1 %cmp, %cmp23.not
  br i1 %or.cond, label %if.end26, label %if.end16.cleanup101_crit_edge

if.end16.cleanup101_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end26:                                         ; preds = %if.end16
  %conv18 = zext i16 %26 to i32
  %28 = ptrtoint ptr %len.i.i134 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i.i134, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv18)
  %cmp27 = icmp ult i32 %29, %conv18
  br i1 %cmp27, label %if.end26.cleanup101_crit_edge, label %lor.lhs.false29

if.end26.cleanup101_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

lor.lhs.false29:                                  ; preds = %if.end26
  %30 = shl nuw nsw i8 %bf.clear, 2
  %31 = zext i8 %30 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %31)
  %cmp33 = icmp ult i16 %26, %31
  br i1 %cmp33, label %lor.lhs.false29.cleanup101_crit_edge, label %lor.lhs.false29.cleanup101.sink.split_crit_edge

lor.lhs.false29.cleanup101.sink.split_crit_edge:  ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101.sink.split

lor.lhs.false29.cleanup101_crit_edge:             ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

sw.bb40:                                          ; preds = %entry
  %len.i.i150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len.i.i150 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i150, align 4
  %data_len.i.i151 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i151 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i151, align 8
  %sub.i.i152 = sub i32 %33, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i152)
  %cmp.not.i153 = icmp ult i32 %sub.i.i152, 40
  br i1 %cmp.not.i153, label %if.end.i155, label %sw.bb40.if.end51_crit_edge, !prof !66

sw.bb40.if.end51_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.end.i155:                                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %33)
  %cmp3.i154 = icmp ult i32 %33, 40
  br i1 %cmp3.i154, label %if.end.i155.cleanup101_crit_edge, label %pskb_may_pull.exit161, !prof !66

if.end.i155.cleanup101_crit_edge:                 ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

pskb_may_pull.exit161:                            ; preds = %if.end.i155
  %sub.i156 = sub nuw nsw i32 40, %sub.i.i152
  %call13.i157 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i156) #11
  %cmp14.i158.not = icmp eq ptr %call13.i157, null
  br i1 %cmp14.i158.not, label %pskb_may_pull.exit161.cleanup101_crit_edge, label %pskb_may_pull.exit161.if.end51_crit_edge, !prof !66

pskb_may_pull.exit161.if.end51_crit_edge:         ; preds = %pskb_may_pull.exit161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

pskb_may_pull.exit161.cleanup101_crit_edge:       ; preds = %pskb_may_pull.exit161
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end51:                                         ; preds = %pskb_may_pull.exit161.if.end51_crit_edge, %sw.bb40.if.end51_crit_edge
  %head.i.i162 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i.i162 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i162, align 8
  %network_header.i.i163 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i163 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i.i163, align 4
  %conv.i.i164 = zext i16 %39 to i32
  %add.ptr.i.i165 = getelementptr i8, ptr %37, i32 %conv.i.i164
  %40 = ptrtoint ptr %add.ptr.i.i165 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load53 = load i8, ptr %add.ptr.i.i165, align 4
  %bf.lshr54.mask = and i8 %bf.load53, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr54.mask)
  %cmp56.not = icmp eq i8 %bf.lshr54.mask, 96
  br i1 %cmp56.not, label %if.end59, label %if.end51.cleanup101_crit_edge

if.end51.cleanup101_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end59:                                         ; preds = %if.end51
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %type, align 4
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i165, i32 0, i32 5
  %42 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %45, %43
  %arrayidx4.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %47
  %arrayidx7.i = getelementptr [4 x i32], ptr %saddr, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %land.lhs.true, label %if.end59.cleanup101_crit_edge

if.end59.cleanup101_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

land.lhs.true:                                    ; preds = %if.end59
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i165, i32 0, i32 3
  %50 = ptrtoint ptr %nexthdr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nexthdr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %51)
  %cmp63 = icmp eq i8 %51, 58
  br i1 %cmp63, label %if.then65, label %land.lhs.true.cleanup101_crit_edge

land.lhs.true.cleanup101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.then65:                                        ; preds = %land.lhs.true
  %52 = ptrtoint ptr %len.i.i150 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i.i150, align 4
  %54 = ptrtoint ptr %data_len.i.i151 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i151, align 8
  %sub.i.i168 = sub i32 %53, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i168)
  %cmp.not.i169 = icmp ult i32 %sub.i.i168, 48
  br i1 %cmp.not.i169, label %if.end.i171, label %if.then65.if.end76_crit_edge, !prof !66

if.then65.if.end76_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

if.end.i171:                                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %53)
  %cmp3.i170 = icmp ult i32 %53, 48
  br i1 %cmp3.i170, label %if.end.i171.cleanup101_crit_edge, label %pskb_may_pull.exit177, !prof !66

if.end.i171.cleanup101_crit_edge:                 ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

pskb_may_pull.exit177:                            ; preds = %if.end.i171
  %sub.i172 = sub nuw nsw i32 48, %sub.i.i168
  %call13.i173 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i172) #11
  %cmp14.i174.not = icmp eq ptr %call13.i173, null
  br i1 %cmp14.i174.not, label %pskb_may_pull.exit177.cleanup101_crit_edge, label %pskb_may_pull.exit177.if.end76_crit_edge, !prof !66

pskb_may_pull.exit177.if.end76_crit_edge:         ; preds = %pskb_may_pull.exit177
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

pskb_may_pull.exit177.cleanup101_crit_edge:       ; preds = %pskb_may_pull.exit177
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end76:                                         ; preds = %pskb_may_pull.exit177.if.end76_crit_edge, %if.then65.if.end76_crit_edge
  %56 = ptrtoint ptr %head.i.i162 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i162, align 8
  %58 = ptrtoint ptr %network_header.i.i163 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i.i163, align 4
  %conv.i.i180 = zext i16 %59 to i32
  %add.ptr.i.i181 = getelementptr i8, ptr %57, i32 %conv.i.i180
  %add.ptr = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i181, i32 1
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %61)
  %cmp79 = icmp eq i8 %61, -121
  br i1 %cmp79, label %if.then81, label %if.end76.cleanup101.sink.split_crit_edge

if.end76.cleanup101.sink.split_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101.sink.split

if.then81:                                        ; preds = %if.end76
  %call82 = tail call fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef 64)
  br i1 %call82, label %if.end92, label %if.then81.cleanup101_crit_edge, !prof !67

if.then81.cleanup101_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup101

if.end92:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %head.i.i162 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i162, align 8
  %64 = ptrtoint ptr %network_header.i.i163 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i163, align 4
  %conv.i.i184 = zext i16 %65 to i32
  %add.ptr.i.i185 = getelementptr i8, ptr %63, i32 %conv.i.i184
  %add.ptr94 = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i185, i32 1
  br label %cleanup101.sink.split

cleanup101.sink.split:                            ; preds = %if.end92, %if.end76.cleanup101.sink.split_crit_edge, %lor.lhs.false29.cleanup101.sink.split_crit_edge, %cleanup
  %.sink = phi i32 [ 3, %cleanup ], [ 2, %lor.lhs.false29.cleanup101.sink.split_crit_edge ], [ 1, %if.end76.cleanup101.sink.split_crit_edge ], [ 1, %if.end92 ]
  %retval.5.ph = phi ptr [ %add.ptr.i.i, %cleanup ], [ %add.ptr.i.i149, %lor.lhs.false29.cleanup101.sink.split_crit_edge ], [ %add.ptr, %if.end76.cleanup101.sink.split_crit_edge ], [ %add.ptr94, %if.end92 ]
  %66 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %.sink, ptr %type, align 4
  br label %cleanup101

cleanup101:                                       ; preds = %cleanup101.sink.split, %if.then81.cleanup101_crit_edge, %pskb_may_pull.exit177.cleanup101_crit_edge, %if.end.i171.cleanup101_crit_edge, %land.lhs.true.cleanup101_crit_edge, %if.end59.cleanup101_crit_edge, %if.end51.cleanup101_crit_edge, %pskb_may_pull.exit161.cleanup101_crit_edge, %if.end.i155.cleanup101_crit_edge, %lor.lhs.false29.cleanup101_crit_edge, %if.end26.cleanup101_crit_edge, %if.end16.cleanup101_crit_edge, %pskb_may_pull.exit145.cleanup101_crit_edge, %if.end.i139.cleanup101_crit_edge, %pskb_may_pull.exit.cleanup101_crit_edge, %if.end.i.cleanup101_crit_edge, %entry.cleanup101_crit_edge
  %retval.5 = phi ptr [ null, %entry.cleanup101_crit_edge ], [ %add.ptr.i.i165, %land.lhs.true.cleanup101_crit_edge ], [ %add.ptr.i.i165, %if.end59.cleanup101_crit_edge ], [ null, %pskb_may_pull.exit.cleanup101_crit_edge ], [ null, %if.end.i.cleanup101_crit_edge ], [ null, %pskb_may_pull.exit145.cleanup101_crit_edge ], [ null, %if.end16.cleanup101_crit_edge ], [ null, %lor.lhs.false29.cleanup101_crit_edge ], [ null, %if.end26.cleanup101_crit_edge ], [ null, %if.end.i139.cleanup101_crit_edge ], [ null, %pskb_may_pull.exit161.cleanup101_crit_edge ], [ null, %if.end51.cleanup101_crit_edge ], [ null, %if.end.i155.cleanup101_crit_edge ], [ null, %pskb_may_pull.exit177.cleanup101_crit_edge ], [ null, %if.then81.cleanup101_crit_edge ], [ null, %if.end.i171.cleanup101_crit_edge ], [ %retval.5.ph, %cleanup101.sink.split ]
  ret ptr %retval.5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pskb_may_pull(ptr noundef %skb, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %len)
  %cmp.not = icmp ult i32 %sub.i, %len
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge, !prof !66

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp3 = icmp ult i32 %1, %len
  br i1 %cmp3, label %if.end.return_crit_edge, label %if.end11, !prof !66

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 %len, %sub.i
  %call13 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub) #11
  %cmp14 = icmp ne ptr %call13, null
  br label %return

return:                                           ; preds = %if.end11, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp14, %if.end11 ], [ true, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ipvlan_mac_hash(ptr nocapture noundef readonly %addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %addr, i32 2
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %2 = load i32, ptr @ipvlan_jhash_secret, align 4
  %add1.i = add i32 %2, -559038733
  %add.i.i = add i32 %add1.i, %1
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i, i32 %add1.i, i32 14) #11
  %sub.i.i = sub i32 0, %or.i.i.i
  %xor3.i.i = xor i32 %add.i.i, %sub.i.i
  %or.i52.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i, i32 %sub.i.i, i32 11) #11
  %sub5.i.i = sub i32 %xor3.i.i, %or.i52.i.i
  %xor6.i.i = xor i32 %sub5.i.i, %add1.i
  %or.i53.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i, i32 %sub5.i.i, i32 25) #11
  %sub8.i.i = sub i32 %xor6.i.i, %or.i53.i.i
  %xor9.i.i = xor i32 %sub8.i.i, %sub.i.i
  %or.i54.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i, i32 %sub8.i.i, i32 16) #11
  %sub11.i.i = sub i32 %xor9.i.i, %or.i54.i.i
  %xor12.i.i = xor i32 %sub11.i.i, %sub5.i.i
  %or.i55.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i, i32 %sub11.i.i, i32 4) #11
  %sub14.i.i = sub i32 %xor12.i.i, %or.i55.i.i
  %xor15.i.i = xor i32 %sub14.i.i, %sub8.i.i
  %or.i56.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i, i32 %sub14.i.i, i32 14) #11
  %sub17.i.i = sub i32 %xor15.i.i, %or.i56.i.i
  %xor18.i.i = xor i32 %sub17.i.i, %sub11.i.i
  %or.i57.i.i = lshr i32 %sub17.i.i, 8
  %sub20.i.i = sub i32 %xor18.i.i, %or.i57.i.i
  %and = and i32 %sub20.i.i, 255
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipvlan_process_multicast(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1048
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #11
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.80, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %backlog = getelementptr i8, ptr %work, i32 44
  %lock = getelementptr i8, ptr %work, i32 56
  call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %5 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %backlog, align 4
  %cmp.i.not.i = icmp eq ptr %6, %backlog
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i126

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_queue_splice_tail_init.exit

if.then.i126:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 48
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.52, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i125 = getelementptr i8, ptr %work, i32 52
  %14 = ptrtoint ptr %qlen.i125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i125, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %backlog, ptr %backlog, align 4
  store ptr %backlog, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i125, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i126, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #11
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.i.i153 = icmp eq ptr %20, %list
  %tobool.not.i127146154 = icmp eq ptr %20, null
  %tobool.not.i127155 = or i1 %cmp.i.i153, %tobool.not.i127146154
  br i1 %tobool.not.i127155, label %skb_queue_splice_tail_init.exit.while.end_crit_edge, label %while.body.lr.ph

skb_queue_splice_tail_init.exit.while.end_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %skb_queue_splice_tail_init.exit
  %ipvlans = getelementptr i8, ptr %work, i32 -16
  br label %while.body

while.body:                                       ; preds = %dev_put.exit.while.body_crit_edge, %while.body.lr.ph
  %21 = phi ptr [ %20, %while.body.lr.ph ], [ %103, %dev_put.exit.while.body_crit_edge ]
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.52, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.52, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %30 = getelementptr inbounds %struct.anon.52, ptr %21, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 18
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 21
  %35 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %36 to i32
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 %conv.i.i
  %cb = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %37 = ptrtoint ptr %cb to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cb, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not = icmp eq i8 %38, 0
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %add.ptr.i, align 1
  %41 = load i32, ptr @ipvlan_jhash_secret, align 4
  %add1.i.i = add i32 %41, -559038733
  %add.i.i.i129 = add i32 %add1.i.i, %40
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i129, %sub.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = lshr i32 %sub17.i.i.i, 8
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr, align 4
  %broadcast = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 99
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i, align 4
  %46 = ptrtoint ptr %broadcast to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %broadcast, align 4
  %xor.i = xor i32 %47, %45
  %48 = trunc i32 %40 to i16
  %add.ptr1.i = getelementptr %struct.net_device, ptr %43, i32 0, i32 99, i32 4
  %49 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %50, %48
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  %. = select i1 %cmp.i, i8 1, i8 2
  %51 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %54, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !78
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %while.body.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

while.body.rcu_read_lock.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %while.body
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %while.body.rcu_read_lock.exit_crit_edge
  %call12 = call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call14 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b123 = load i1, ptr @ipvlan_process_multicast.__warned, align 1
  br i1 %.b123, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_process_multicast.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %55 = ptrtoint ptr %ipvlans to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn147 = load volatile ptr, ptr %ipvlans, align 4
  %cmp28.not149 = icmp eq ptr %.pn147, %ipvlans
  br i1 %cmp28.not149, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %and.i130 = lshr i32 %sub20.i.i.i, 5
  %div3.i = and i32 %and.i130, 7
  %and.i = and i32 %sub20.i.i.i, 31
  %56 = shl nuw i32 1, %and.i
  %len44 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %57 = zext i8 %. to i16
  %bf.shl = shl nuw nsw i16 %57, 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn151 = phi ptr [ %.pn147, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %consumed.0.off0150 = phi i1 [ false, %for.body.lr.ph ], [ %consumed.2.off0, %for.inc.for.body_crit_edge ]
  %ipvlan.0152 = getelementptr i8, ptr %.pn151, i32 -4
  br i1 %tobool.not, label %for.body.if.end34_crit_edge, label %land.lhs.true30

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true30:                                  ; preds = %for.body
  %58 = ptrtoint ptr %ipvlan.0152 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipvlan.0152, align 8
  %60 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %30, align 8
  %cmp32 = icmp eq ptr %59, %61
  br i1 %cmp32, label %land.lhs.true30.for.inc_crit_edge, label %land.lhs.true30.if.end34_crit_edge

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true30.for.inc_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end34:                                         ; preds = %land.lhs.true30.if.end34_crit_edge, %for.body.if.end34_crit_edge
  %mac_filters = getelementptr i8, ptr %.pn151, i32 28
  %arrayidx.i = getelementptr i32, ptr %mac_filters, i32 %div3.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %arrayidx.i, align 4
  %64 = and i32 %63, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool37.not = icmp eq i32 %64, 0
  br i1 %tobool37.not, label %if.end34.for.inc_crit_edge, label %if.end39

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end39:                                         ; preds = %if.end34
  %65 = ptrtoint ptr %ipvlan.0152 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ipvlan.0152, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags, align 8
  %and = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end39.for.inc_crit_edge, label %if.end43

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end43:                                         ; preds = %if.end39
  %69 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len44, align 4
  %add = add i32 %70, 14
  %call45 = call ptr @skb_clone(ptr noundef nonnull %21, i32 noundef 2592) #11
  call fastcc void @local_bh_disable()
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end43.if.end57_crit_edge, label %if.then47

if.end43.if.end57_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then47:                                        ; preds = %if.end43
  %pkt_type48 = getelementptr inbounds %struct.sk_buff, ptr %call45, i32 0, i32 15
  %71 = ptrtoint ptr %pkt_type48 to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load = load i16, ptr %pkt_type48, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %pkt_type48, align 8
  %72 = ptrtoint ptr %ipvlan.0152 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ipvlan.0152, align 8
  %74 = getelementptr inbounds %struct.anon.52, ptr %call45, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %74, align 8
  br i1 %tobool.not, label %if.else54, label %if.then51

if.then51:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %ipvlan.0152 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ipvlan.0152, align 8
  %call53 = call i32 @dev_forward_skb(ptr noundef %77, ptr noundef nonnull %call45) #11
  br label %if.end57

if.else54:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %call55 = call i32 @netif_rx(ptr noundef nonnull %call45) #11
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then51, %if.end43.if.end57_crit_edge
  %ret.0 = phi i32 [ %call53, %if.then51 ], [ %call55, %if.else54 ], [ 1, %if.end43.if.end57_crit_edge ]
  %consumed.1.off0 = phi i1 [ true, %if.then51 ], [ true, %if.else54 ], [ %consumed.0.off0150, %if.end43.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp58 = icmp eq i32 %ret.0, 0
  call void @ipvlan_count_rx(ptr noundef %ipvlan.0152, i32 noundef %add, i1 noundef zeroext %cmp58, i1 noundef zeroext true)
  call fastcc void @local_bh_enable()
  br label %for.inc

for.inc:                                          ; preds = %if.end57, %if.end39.for.inc_crit_edge, %if.end34.for.inc_crit_edge, %land.lhs.true30.for.inc_crit_edge
  %consumed.2.off0 = phi i1 [ %consumed.0.off0150, %land.lhs.true30.for.inc_crit_edge ], [ %consumed.1.off0, %if.end57 ], [ %consumed.0.off0150, %if.end39.for.inc_crit_edge ], [ %consumed.0.off0150, %if.end34.for.inc_crit_edge ]
  %78 = ptrtoint ptr %.pn151 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn = load volatile ptr, ptr %.pn151, align 4
  %cmp28.not = icmp eq ptr %.pn, %ipvlans
  br i1 %cmp28.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %consumed.0.off0.lcssa = phi i1 [ false, %do.end.for.end_crit_edge ], [ %consumed.2.off0, %for.inc.for.end_crit_edge ]
  %call.i132 = call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i132, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i135

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i135:                               ; preds = %for.end
  %call1.i133 = call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %tobool.not.i134 = icmp eq i32 %call1.i133, 0
  br i1 %tobool.not.i134, label %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i137

land.lhs.true.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i137:                              ; preds = %land.lhs.true.i135
  %.b4.i136 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i136, label %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, label %if.then.i138

land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i138:                                     ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i138, %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  %79 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i.i.i.i139 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i139 to ptr
  %preempt_count.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %preempt_count.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %preempt_count.i.i.i.i140, align 4
  %sub.i.i.i141 = add i32 %82, -1
  store volatile i32 %sub.i.i.i141, ptr %preempt_count.i.i.i.i140, align 4
  call void @rcu_read_unlock_strict() #11
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br i1 %tobool.not, label %if.else79, label %if.then69

if.then69:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr, align 4
  %85 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %30, align 8
  %pkt_type71 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15
  %86 = zext i8 %. to i16
  %87 = ptrtoint ptr %pkt_type71 to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load72 = load i16, ptr %pkt_type71, align 8
  %bf.shl74 = shl nuw nsw i16 %86, 13
  %bf.clear75 = and i16 %bf.load72, 8191
  %bf.set76 = or i16 %bf.clear75, %bf.shl74
  store i16 %bf.set76, ptr %pkt_type71, align 8
  %call78 = call i32 @dev_queue_xmit(ptr noundef nonnull %21) #11
  br label %if.end84

if.else79:                                        ; preds = %rcu_read_unlock.exit
  br i1 %consumed.0.off0.lcssa, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %21) #11
  br label %if.end84

if.else82:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree_skb_reason(ptr noundef %21, i32 noundef 0) #11
  br label %if.end84

if.end84:                                         ; preds = %if.else82, %if.then81, %if.then69
  %tobool.not.i142 = icmp eq ptr %32, null
  br i1 %tobool.not.i142, label %if.end84.dev_put.exit_crit_edge, label %do.body1.i

if.end84.dev_put.exit_crit_edge:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end84
  %88 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !74
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 118
  %89 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pcpu_refcnt.i, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cpu.i, align 4
  %arrayidx.i143 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i143, align 4
  %add.i144 = add i32 %97, %91
  %98 = inttoptr i32 %add.i144 to ptr
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %add13.i = add i32 %100, -1
  store i32 %add13.i, ptr %98, align 4
  %101 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %and.i.i.i = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !66

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #11, !srcloc !76
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end84.dev_put.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 0) #11
  %call.i145 = call i32 @__cond_resched() #11
  %102 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %103, %list
  %tobool.not.i127146 = icmp eq ptr %103, null
  %tobool.not.i127 = or i1 %cmp.i.i, %tobool.not.i127146
  br i1 %tobool.not.i127, label %dev_put.exit.while.end_crit_edge, label %dev_put.exit.while.body_crit_edge

dev_put.exit.while.body_crit_edge:                ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

dev_put.exit.while.end_crit_edge:                 ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %dev_put.exit.while.end_crit_edge, %skb_queue_splice_tail_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_forward_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipvlan_addr_lookup(ptr noundef %port, ptr nocapture noundef readonly %lyr3h, i32 noundef %addr_type, i1 noundef zeroext %use_dest) local_unnamed_addr #0 align 64 {
entry:
  %dip = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %addr_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %addr_type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %lyr3h, i32 0, i32 6
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %lyr3h, i32 0, i32 5
  %cond = select i1 %use_dest, ptr %daddr, ptr %saddr
  %call = tail call fastcc ptr @ipvlan_ht_addr_lookup(ptr noundef %port, ptr noundef %cond, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = ptrtoint ptr %lyr3h to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lyr3h, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -121, i8 %2)
  %cmp = icmp eq i8 %2, -121
  br i1 %cmp, label %if.then, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %target = getelementptr inbounds %struct.nd_msg, ptr %lyr3h, i32 0, i32 1
  %call4 = tail call fastcc ptr @ipvlan_ht_addr_lookup(ptr noundef %port, ptr noundef %target, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %daddr9 = getelementptr inbounds %struct.iphdr, ptr %lyr3h, i32 0, i32 9
  %saddr11 = getelementptr inbounds %struct.iphdr, ptr %lyr3h, i32 0, i32 8
  %cond13 = select i1 %use_dest, ptr %daddr9, ptr %saddr11
  %call14 = tail call fastcc ptr @ipvlan_ht_addr_lookup(ptr noundef %port, ptr noundef %cond13, i1 noundef zeroext false)
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dip) #11
  %add.ptr = getelementptr %struct.arphdr, ptr %lyr3h, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %addr_len, align 1
  %conv18 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv18, 1
  %add = add nuw nsw i32 %mul, 4
  %add.pn = select i1 %use_dest, i32 %add, i32 %conv18
  %arp_ptr.0 = getelementptr i8, ptr %add.ptr, i32 %add.pn
  %7 = ptrtoint ptr %arp_ptr.0 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %arp_ptr.0, align 1
  %9 = ptrtoint ptr %dip to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dip, align 4
  %call25 = call fastcc ptr @ipvlan_ht_addr_lookup(ptr noundef %port, ptr noundef nonnull %dip, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dip) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb5, %if.then, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %addr.1 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ %call25, %sw.bb15 ], [ %call14, %sw.bb5 ], [ %call, %sw.bb ], [ %call4, %if.then ], [ null, %sw.bb1.sw.epilog_crit_edge ]
  ret ptr %addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipvlan_ht_addr_lookup(ptr noundef %port, ptr nocapture noundef readonly %iaddr, i1 noundef zeroext %is_v6) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_v6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @ipvlan_jhash_secret, align 4
  %1 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iaddr, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2.i.i, align 4
  %xor.i.i = xor i32 %4, %2
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4.i.i, align 4
  %arrayidx6.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx6.i.i, align 4
  %add1.i.i.i = add i32 %0, -559038725
  %add.i.i.i.i = add i32 %xor.i.i, %add1.i.i.i
  %add1.i.i.i.i = add i32 %6, %add1.i.i.i
  %add2.i.i.i.i = add i32 %8, %add1.i.i.i
  %xor.i.i.i.i = xor i32 %add2.i.i.i.i, %add1.i.i.i.i
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i.i, i32 %add1.i.i.i.i, i32 14) #11
  %sub.i.i.i.i = sub i32 %xor.i.i.i.i, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %sub.i.i.i.i, %add.i.i.i.i
  %or.i52.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #11
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i52.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i.i
  %or.i53.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #11
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i53.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i54.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #11
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i54.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i55.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #11
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i55.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i56.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #11
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i56.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iaddr, align 4
  %11 = load i32, ptr @ipvlan_jhash_secret, align 4
  %add1.i.i = add i32 %11, -559038733
  %add.i.i.i = add i32 %add1.i.i, %10
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #11
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i52.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #11
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i53.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #11
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #11
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #11
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #11
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sub17.i.i.i.sink = phi i32 [ %sub17.i.i.i, %cond.false ], [ %sub17.i.i.i.i, %cond.true ]
  %xor18.i.i.i.sink = phi i32 [ %xor18.i.i.i, %cond.false ], [ %xor18.i.i.i.i, %cond.true ]
  %or.i57.i.i.i = lshr i32 %sub17.i.i.i.sink, 8
  %sub20.i.i.i = sub i32 %xor18.i.i.i.sink, %or.i57.i.i.i
  %call4 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %cond.end.do.end_crit_edge

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %cond.end
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b51 = load i1, ptr @ipvlan_ht_addr_lookup.__warned, align 1
  br i1 %.b51, label %land.lhs.true8.do.end_crit_edge, label %if.then

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_ht_addr_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 81, ptr noundef nonnull @.str.1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %cond.end.do.end_crit_edge
  %idxprom = and i32 %sub20.i.i.i, 255
  %arrayidx = getelementptr %struct.ipvl_port, ptr %port, i32 0, i32 2, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %13, null
  %add.ptr = getelementptr i8, ptr %13, i32 -20
  %tobool21.not6065 = icmp eq ptr %add.ptr, null
  %tobool21.not60 = or i1 %tobool15.not, %tobool21.not6065
  br i1 %tobool21.not60, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %arrayidx6.i.i56 = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 1
  %arrayidx11.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 2
  %arrayidx17.i.i = getelementptr [4 x i32], ptr %iaddr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %addr.061 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr37, %for.inc.for.body_crit_edge ]
  %atype5.i = getelementptr inbounds %struct.ipvl_addr, ptr %addr.061, i32 0, i32 4
  %14 = ptrtoint ptr %atype5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %atype5.i, align 4
  br i1 %is_v6, label %land.lhs.true4.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i = icmp eq i32 %15, 2
  br i1 %cmp.i, label %addr_equal.exit, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true4.critedge.i:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp6.i = icmp eq i32 %15, 0
  br i1 %cmp6.i, label %if.then7.i, label %land.lhs.true4.critedge.i.for.inc_crit_edge

land.lhs.true4.critedge.i.for.inc_crit_edge:      ; preds = %land.lhs.true4.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then7.i:                                       ; preds = %land.lhs.true4.critedge.i
  %ipu8.i = getelementptr inbounds %struct.ipvl_addr, ptr %addr.061, i32 0, i32 1
  %16 = ptrtoint ptr %ipu8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ipu8.i, align 4
  %18 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iaddr, align 4
  %xor.i.i54 = xor i32 %19, %17
  %arrayidx4.i.i55 = getelementptr %struct.ipvl_addr, ptr %addr.061, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx4.i.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i.i55, align 4
  %22 = ptrtoint ptr %arrayidx6.i.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx6.i.i56, align 4
  %xor7.i.i = xor i32 %23, %21
  %or.i.i = or i32 %xor7.i.i, %xor.i.i54
  %arrayidx9.i.i = getelementptr %struct.ipvl_addr, ptr %addr.061, i32 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9.i.i, align 4
  %26 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx11.i.i, align 4
  %xor12.i.i = xor i32 %27, %25
  %or13.i.i = or i32 %or.i.i, %xor12.i.i
  %arrayidx15.i.i = getelementptr %struct.ipvl_addr, ptr %addr.061, i32 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %28 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.i.i, align 4
  %30 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.i, align 4
  %xor18.i.i = xor i32 %31, %29
  %or19.i.i = or i32 %or13.i.i, %xor18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i)
  %cmp.i.i = icmp eq i32 %or19.i.i, 0
  br i1 %cmp.i.i, label %if.then7.i.cleanup_crit_edge, label %if.then7.i.for.inc_crit_edge

if.then7.i.for.inc_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

addr_equal.exit:                                  ; preds = %land.lhs.true.i
  %ipu.i = getelementptr inbounds %struct.ipvl_addr, ptr %addr.061, i32 0, i32 1
  %32 = ptrtoint ptr %ipu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ipu.i, align 4
  %34 = ptrtoint ptr %iaddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iaddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp2.i = icmp eq i32 %33, %35
  br i1 %cmp2.i, label %addr_equal.exit.cleanup_crit_edge, label %addr_equal.exit.for.inc_crit_edge

addr_equal.exit.for.inc_crit_edge:                ; preds = %addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

addr_equal.exit.cleanup_crit_edge:                ; preds = %addr_equal.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %addr_equal.exit.for.inc_crit_edge, %if.then7.i.for.inc_crit_edge, %land.lhs.true4.critedge.i.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge
  %hlnode = getelementptr inbounds %struct.ipvl_addr, ptr %addr.061, i32 0, i32 2
  %36 = ptrtoint ptr %hlnode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %hlnode, align 4
  %tobool33.not = icmp eq ptr %37, null
  %add.ptr37 = getelementptr i8, ptr %37, i32 -20
  %tobool21.not66 = icmp eq ptr %add.ptr37, null
  %tobool21.not = or i1 %tobool33.not, %tobool21.not66
  br i1 %tobool21.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %addr_equal.exit.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %addr.0.lcssa = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %addr.061, %if.then7.i.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %addr.061, %addr_equal.exit.cleanup_crit_edge ]
  ret ptr %addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipvlan_queue_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  %skb.addr.i70 = alloca ptr, align 4
  %addr_type.i71 = alloca i32, align 4
  %skb.addr.i = alloca ptr, align 4
  %addr_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_dev = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_dev, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %2 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.ipvlan_port_get_rcu_bh.exit_crit_edge

entry.ipvlan_port_get_rcu_bh.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ipvlan_port_get_rcu_bh.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ipvlan_port_get_rcu_bh.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu_bh.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @ipvlan_port_get_rcu_bh.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.ipvlan_port_get_rcu_bh.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ipvlan_port_get_rcu_bh.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu_bh.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_port_get_rcu_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 115, ptr noundef nonnull @.str.8) #11
  br label %ipvlan_port_get_rcu_bh.exit

ipvlan_port_get_rcu_bh.exit:                      ; preds = %if.then.i, %land.lhs.true4.i.ipvlan_port_get_rcu_bh.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rcu_bh.exit_crit_edge, %entry.ipvlan_port_get_rcu_bh.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %ipvlan_port_get_rcu_bh.exit.out_crit_edge, label %if.end

ipvlan_port_get_rcu_bh.exit.out_crit_edge:        ; preds = %ipvlan_port_get_rcu_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %ipvlan_port_get_rcu_bh.exit
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 14
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end7_crit_edge, !prof !66

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp3.i = icmp ult i32 %5, 14
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %pskb_may_pull.exit, !prof !66

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #11
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_crit_edge, label %pskb_may_pull.exit.if.end7_crit_edge, !prof !66

pskb_may_pull.exit.if.end7_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

pskb_may_pull.exit.out_crit_edge:                 ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %pskb_may_pull.exit.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.ipvl_port, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode, align 4
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %9, label %land.end [
    i16 0, label %sw.bb
    i16 1, label %if.end7.sw.bb9_crit_edge
    i16 2, label %if.end7.sw.bb9_crit_edge85
  ]

if.end7.sw.bb9_crit_edge85:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

if.end7.sw.bb9_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

sw.bb:                                            ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.addr.i)
  %11 = ptrtoint ptr %skb.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %skb.addr.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %14 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type.i) #11
  %16 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %addr_type.i, align 4, !annotation !65
  %port.i = getelementptr i8, ptr %dev, i32 2316
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ipvl_port, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i.i, align 2
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.i.not.i = icmp eq i16 %21, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i65, label %sw.bb.if.else.i_crit_edge

sw.bb.if.else.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i65:                                ; preds = %sw.bb
  %h_source.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i.i, align 4
  %24 = ptrtoint ptr %h_source.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %h_source.i, align 4
  %xor.i.i = xor i32 %25, %23
  %add.ptr.i46.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %26 = ptrtoint ptr %add.ptr.i46.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i46.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %h_source.i, i32 4
  %28 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %29, %27
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i67, label %land.lhs.true.i65.if.else.i_crit_edge

land.lhs.true.i65.if.else.i_crit_edge:            ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i67:                                      ; preds = %land.lhs.true.i65
  %call6.i = call ptr @ipvlan_get_L3_hdr(ptr noundef %18, ptr noundef %skb, ptr noundef nonnull %addr_type.i) #11
  %tobool.not.i66 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i66, label %if.then.i67.if.end17.i_crit_edge, label %if.then7.i

if.then.i67.if.end17.i_crit_edge:                 ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.then.i67
  %30 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %port.i, align 4
  %32 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr_type.i, align 4
  %call9.i = tail call ptr @ipvlan_addr_lookup(ptr noundef %31, ptr noundef nonnull %call6.i, i32 noundef %33, i1 noundef zeroext true) #11
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.then7.i.if.end17.i_crit_edge, label %if.then11.i

if.then7.i.if.end17.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.then7.i
  %34 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %port.i, align 4
  %flags.i47.i = getelementptr inbounds %struct.ipvl_port, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %flags.i47.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %flags.i47.i, align 2
  %38 = and i16 %37, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %tobool.i48.not.i = icmp eq i16 %38, 0
  br i1 %tobool.i48.not.i, label %if.end.i68, label %if.then14.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %ipvlan_xmit_mode_l2.exit

if.end.i68:                                       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = call fastcc i32 @ipvlan_rcv_frame(ptr noundef nonnull %call9.i, ptr noundef nonnull %skb.addr.i, i1 noundef zeroext true) #11
  br label %ipvlan_xmit_mode_l2.exit

if.end17.i:                                       ; preds = %if.then7.i.if.end17.i_crit_edge, %if.then.i67.if.end17.i_crit_edge
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i.i, i32 noundef 4) #11
  %39 = ptrtoint ptr %users.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %users.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.not.i.i = icmp eq i32 %40, 1
  br i1 %cmp.i.not.i.i, label %skb_share_check.exit.i, label %if.then6.i.i

if.then6.i.i:                                     ; preds = %if.end17.i
  %call7.i.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #11
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not.i.i, label %skb_share_check.exit.thread.i, label %skb_share_check.exit.thread52.i, !prof !66

skb_share_check.exit.thread52.i:                  ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  %41 = ptrtoint ptr %skb.addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %skb.addr.i, align 4
  br label %if.end21.i

skb_share_check.exit.thread.i:                    ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %ipvlan_xmit_mode_l2.exit

skb_share_check.exit.i:                           ; preds = %if.end17.i
  %tobool19.not.i = icmp eq ptr %skb, null
  br i1 %tobool19.not.i, label %skb_share_check.exit.i.ipvlan_xmit_mode_l2.exit_crit_edge, label %skb_share_check.exit.i.if.end21.i_crit_edge

skb_share_check.exit.i.if.end21.i_crit_edge:      ; preds = %skb_share_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

skb_share_check.exit.i.ipvlan_xmit_mode_l2.exit_crit_edge: ; preds = %skb_share_check.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_xmit_mode_l2.exit

if.end21.i:                                       ; preds = %skb_share_check.exit.i.if.end21.i_crit_edge, %skb_share_check.exit.thread52.i
  %skb.addr.0.i55.i = phi ptr [ %call7.i.i, %skb_share_check.exit.thread52.i ], [ %skb, %skb_share_check.exit.i.if.end21.i_crit_edge ]
  %42 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy_dev, align 8
  %call22.i = tail call i32 @dev_forward_skb(ptr noundef %43, ptr noundef nonnull %skb.addr.0.i55.i) #11
  br label %ipvlan_xmit_mode_l2.exit

if.else.i:                                        ; preds = %land.lhs.true.i65.if.else.i_crit_edge, %sw.bb.if.else.i_crit_edge
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i.i, align 4
  %46 = and i32 %45, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i49.not.i = icmp eq i32 %46, 0
  br i1 %tobool.i49.not.i, label %if.end29.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext true) #11
  %47 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %port.i, align 4
  tail call fastcc void @ipvlan_multicast_enqueue(ptr noundef %48, ptr noundef %skb, i1 noundef zeroext true) #11
  br label %ipvlan_xmit_mode_l2.exit

if.end29.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy_dev, align 8
  %51 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %51, align 8
  %call31.i = tail call i32 @dev_queue_xmit(ptr noundef %skb) #11
  br label %ipvlan_xmit_mode_l2.exit

ipvlan_xmit_mode_l2.exit:                         ; preds = %if.end29.i, %if.then26.i, %if.end21.i, %skb_share_check.exit.i.ipvlan_xmit_mode_l2.exit_crit_edge, %skb_share_check.exit.thread.i, %if.end.i68, %if.then14.i
  %retval.0.i69 = phi i32 [ 0, %if.then26.i ], [ %call31.i, %if.end29.i ], [ 1, %if.then14.i ], [ %call15.i, %if.end.i68 ], [ %call22.i, %if.end21.i ], [ 1, %skb_share_check.exit.i.ipvlan_xmit_mode_l2.exit_crit_edge ], [ 1, %skb_share_check.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.addr.i)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end7.sw.bb9_crit_edge, %if.end7.sw.bb9_crit_edge85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb.addr.i70)
  %53 = ptrtoint ptr %skb.addr.i70 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %skb, ptr %skb.addr.i70, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type.i71) #11
  %54 = ptrtoint ptr %addr_type.i71 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %addr_type.i71, align 4, !annotation !65
  %port.i72 = getelementptr i8, ptr %dev, i32 2316
  %55 = ptrtoint ptr %port.i72 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %port.i72, align 4
  %call1.i = call ptr @ipvlan_get_L3_hdr(ptr noundef %56, ptr noundef %skb, ptr noundef nonnull %addr_type.i71) #11
  %tobool.not.i73 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i73, label %sw.bb9.out.i_crit_edge, label %if.end.i76

sw.bb9.out.i_crit_edge:                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i76:                                       ; preds = %sw.bb9
  %57 = ptrtoint ptr %port.i72 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port.i72, align 4
  %flags.i.i74 = getelementptr inbounds %struct.ipvl_port, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags.i.i74, align 2
  %61 = and i16 %60, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.i.not.i75 = icmp eq i16 %61, 0
  br i1 %tobool.i.not.i75, label %if.then4.i, label %if.end.i76.out.i_crit_edge

if.end.i76.out.i_crit_edge:                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then4.i:                                       ; preds = %if.end.i76
  %62 = ptrtoint ptr %addr_type.i71 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr_type.i71, align 4
  %call6.i77 = tail call ptr @ipvlan_addr_lookup(ptr noundef %58, ptr noundef nonnull %call1.i, i32 noundef %63, i1 noundef zeroext true) #11
  %tobool7.not.i = icmp eq ptr %call6.i77, null
  br i1 %tobool7.not.i, label %if.then4.i.out.i_crit_edge, label %if.then8.i

if.then4.i.out.i_crit_edge:                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.then8.i:                                       ; preds = %if.then4.i
  %64 = ptrtoint ptr %port.i72 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %port.i72, align 4
  %flags.i26.i = getelementptr inbounds %struct.ipvl_port, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %flags.i26.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %flags.i26.i, align 2
  %68 = and i16 %67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool.i27.not.i = icmp eq i16 %68, 0
  br i1 %tobool.i27.not.i, label %if.end12.i, label %if.then11.i78

if.then11.i78:                                    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %ipvlan_xmit_mode_l3.exit

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call13.i79 = call fastcc i32 @ipvlan_rcv_frame(ptr noundef nonnull %call6.i77, ptr noundef nonnull %skb.addr.i70, i1 noundef zeroext true) #11
  br label %ipvlan_xmit_mode_l3.exit

out.i:                                            ; preds = %if.then4.i.out.i_crit_edge, %if.end.i76.out.i_crit_edge, %sw.bb9.out.i_crit_edge
  %69 = ptrtoint ptr %phy_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %phy_dev, align 8
  %tobool.not.i.i = icmp eq ptr %70, null
  br i1 %tobool.not.i.i, label %if.end7.critedge.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 8
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %73, i32 0, i32 127
  %74 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nd_net.i.i.i, align 4
  %nd_net.i13.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 127
  %76 = ptrtoint ptr %nd_net.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %nd_net.i13.i.i, align 4
  %cmp.i.i.i = icmp ne ptr %75, %77
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext %cmp.i.i.i) #11
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %70, ptr %71, align 8
  br label %ipvlan_skb_crossing_ns.exit.i

if.end7.critedge.i.i:                             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_scrub_packet(ptr noundef %skb, i1 noundef zeroext true) #11
  br label %ipvlan_skb_crossing_ns.exit.i

ipvlan_skb_crossing_ns.exit.i:                    ; preds = %if.end7.critedge.i.i, %if.then.i.i
  %call16.i = tail call fastcc i32 @ipvlan_process_outbound(ptr noundef %skb) #11
  br label %ipvlan_xmit_mode_l3.exit

ipvlan_xmit_mode_l3.exit:                         ; preds = %ipvlan_skb_crossing_ns.exit.i, %if.end12.i, %if.then11.i78
  %retval.0.i81 = phi i32 [ %call16.i, %ipvlan_skb_crossing_ns.exit.i ], [ 1, %if.then11.i78 ], [ %call13.i79, %if.end12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i71) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb.addr.i70)
  br label %cleanup

land.end:                                         ; preds = %if.end7
  %.b64 = load i1, ptr @ipvlan_queue_xmit.__already_done, align 1
  br i1 %.b64, label %land.end.out_crit_edge, label %if.then22, !prof !67

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then22:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_queue_xmit.__already_done, align 1
  %conv33 = zext i16 %9 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ipvlan_queue_xmit, i32 noundef %conv33) #11
  br label %out

out:                                              ; preds = %if.then22, %land.end.out_crit_edge, %pskb_may_pull.exit.out_crit_edge, %if.end.i.out_crit_edge, %ipvlan_port_get_rcu_bh.exit.out_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %ipvlan_xmit_mode_l3.exit, %ipvlan_xmit_mode_l2.exit
  %retval.0 = phi i32 [ 1, %out ], [ %retval.0.i81, %ipvlan_xmit_mode_l3.exit ], [ %retval.0.i69, %ipvlan_xmit_mode_l2.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipvlan_handle_frame(ptr nocapture noundef readonly %pskb) local_unnamed_addr #0 align 64 {
entry:
  %addr_type.i = alloca i32, align 4
  %addr_type.i17.i = alloca i32, align 4
  %addr_type.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pskb, align 4
  %2 = getelementptr inbounds %struct.anon.52, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 95
  %5 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.ipvlan_port_get_rcu.exit_crit_edge

entry.ipvlan_port_get_rcu.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu.exit

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.ipvlan_port_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.ipvlan_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @ipvlan_port_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.ipvlan_port_get_rcu.exit_crit_edge, label %if.then.i

land.lhs.true4.i.ipvlan_port_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_port_get_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_port_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 110, ptr noundef nonnull @.str.8) #11
  br label %ipvlan_port_get_rcu.exit

ipvlan_port_get_rcu.exit:                         ; preds = %if.then.i, %land.lhs.true4.i.ipvlan_port_get_rcu.exit_crit_edge, %land.lhs.true.i.ipvlan_port_get_rcu.exit_crit_edge, %entry.ipvlan_port_get_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %ipvlan_port_get_rcu.exit.cleanup_crit_edge, label %if.end

ipvlan_port_get_rcu.exit.cleanup_crit_edge:       ; preds = %ipvlan_port_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %ipvlan_port_get_rcu.exit
  %mode = getelementptr inbounds %struct.ipvl_port, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %8, label %land.end [
    i16 0, label %sw.bb
    i16 1, label %sw.bb2
    i16 2, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %10 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pskb, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i.i, align 8
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 21
  %14 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mac_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %15 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 %conv.i.i.i
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i, align 4
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i54

if.then.i54:                                      ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type.i.i) #11
  %19 = ptrtoint ptr %addr_type.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %addr_type.i.i, align 4, !annotation !65
  %h_source.i.i = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.anon.52, ptr %11, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 8
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 86
  %23 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_addr.i.i, align 64
  %25 = ptrtoint ptr %h_source.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %h_source.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  %xor.i.i.i = xor i32 %28, %26
  %add.ptr.i.i16.i = getelementptr i8, ptr %h_source.i.i, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i16.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %add.ptr.i.i16.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %24, i32 4
  %31 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %32, %30
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.then.i54.if.then3.i_crit_edge

if.then.i54.if.then3.i_crit_edge:                 ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.then.i.i:                                      ; preds = %if.then.i54
  %call2.i.i = call ptr @ipvlan_get_L3_hdr(ptr noundef nonnull %6, ptr noundef %11, ptr noundef nonnull %addr_type.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.if.then3.i_crit_edge, label %if.end.i.i

if.then.i.i.if.then3.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %33 = ptrtoint ptr %addr_type.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr_type.i.i, align 4
  %call4.i.i = tail call ptr @ipvlan_addr_lookup(ptr noundef nonnull %6, ptr noundef nonnull %call2.i.i, i32 noundef %34, i1 noundef zeroext false) #11
  %tobool5.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.then3.i_crit_edge, label %ipvlan_external_frame.exit.i

if.end.i.i.if.then3.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3.i

ipvlan_external_frame.exit.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i.i) #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i.i.if.then3.i_crit_edge, %if.then.i.i.if.then3.i_crit_edge, %if.then.i54.if.then3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i.i) #11
  %call4.i = tail call ptr @skb_clone(ptr noundef %11, i32 noundef 2592) #11
  %tobool.not.i55 = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i55, label %if.then3.i.cleanup_crit_edge, label %if.then5.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @skb_scrub_packet(ptr noundef nonnull %call4.i, i1 noundef zeroext true) #11
  tail call fastcc void @ipvlan_multicast_enqueue(ptr noundef nonnull %6, ptr noundef nonnull %call4.i, i1 noundef zeroext false) #11
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type.i17.i) #11
  %35 = ptrtoint ptr %addr_type.i17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %addr_type.i17.i, align 4, !annotation !65
  %call.i.i = call ptr @ipvlan_get_L3_hdr(ptr noundef nonnull %6, ptr noundef %11, ptr noundef nonnull %addr_type.i17.i) #11
  %tobool.not.i18.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i18.i, label %if.else.i.ipvlan_handle_mode_l3.exit.i_crit_edge, label %if.end.i19.i

if.else.i.ipvlan_handle_mode_l3.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_handle_mode_l3.exit.i

if.end.i19.i:                                     ; preds = %if.else.i
  %36 = ptrtoint ptr %addr_type.i17.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr_type.i17.i, align 4
  %call1.i.i = tail call ptr @ipvlan_addr_lookup(ptr noundef nonnull %6, ptr noundef nonnull %call.i.i, i32 noundef %37, i1 noundef zeroext true) #11
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i19.i.ipvlan_handle_mode_l3.exit.i_crit_edge, label %if.then3.i.i

if.end.i19.i.ipvlan_handle_mode_l3.exit.i_crit_edge: ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_handle_mode_l3.exit.i

if.then3.i.i:                                     ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %call1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call1.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 8
  %42 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pskb, align 4
  %len2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %len2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len2.i.i.i, align 4
  %46 = getelementptr inbounds %struct.anon.52, ptr %43, i32 0, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %41, ptr %46, align 8
  %add.i.i.i = add i32 %45, 14
  tail call void @ipvlan_count_rx(ptr noundef %39, i32 noundef %add.i.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %ipvlan_handle_mode_l3.exit.i

ipvlan_handle_mode_l3.exit.i:                     ; preds = %if.then3.i.i, %if.end.i19.i.ipvlan_handle_mode_l3.exit.i_crit_edge, %if.else.i.ipvlan_handle_mode_l3.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ 1, %if.then3.i.i ], [ 3, %if.end.i19.i.ipvlan_handle_mode_l3.exit.i_crit_edge ], [ 3, %if.else.i.ipvlan_handle_mode_l3.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i17.i) #11
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_type.i) #11
  %48 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %addr_type.i, align 4, !annotation !65
  %49 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pskb, align 4
  %call.i56 = call ptr @ipvlan_get_L3_hdr(ptr noundef nonnull %6, ptr noundef %50, ptr noundef nonnull %addr_type.i) #11
  %tobool.not.i57 = icmp eq ptr %call.i56, null
  br i1 %tobool.not.i57, label %sw.bb2.ipvlan_handle_mode_l3.exit_crit_edge, label %if.end.i

sw.bb2.ipvlan_handle_mode_l3.exit_crit_edge:      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_handle_mode_l3.exit

if.end.i:                                         ; preds = %sw.bb2
  %51 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr_type.i, align 4
  %call1.i = tail call ptr @ipvlan_addr_lookup(ptr noundef nonnull %6, ptr noundef nonnull %call.i56, i32 noundef %52, i1 noundef zeroext true) #11
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.ipvlan_handle_mode_l3.exit_crit_edge, label %if.then3.i58

if.end.i.ipvlan_handle_mode_l3.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_handle_mode_l3.exit

if.then3.i58:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call1.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 8
  %57 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pskb, align 4
  %len2.i.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len2.i.i, align 4
  %61 = getelementptr inbounds %struct.anon.52, ptr %58, i32 0, i32 2
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %61, align 8
  %add.i.i = add i32 %60, 14
  tail call void @ipvlan_count_rx(ptr noundef %54, i32 noundef %add.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #11
  br label %ipvlan_handle_mode_l3.exit

ipvlan_handle_mode_l3.exit:                       ; preds = %if.then3.i58, %if.end.i.ipvlan_handle_mode_l3.exit_crit_edge, %sw.bb2.ipvlan_handle_mode_l3.exit_crit_edge
  %ret.0.i59 = phi i32 [ 1, %if.then3.i58 ], [ 3, %if.end.i.ipvlan_handle_mode_l3.exit_crit_edge ], [ 3, %sw.bb2.ipvlan_handle_mode_l3.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_type.i) #11
  br label %cleanup

land.end:                                         ; preds = %if.end
  %.b53 = load i1, ptr @ipvlan_handle_frame.__already_done, align 1
  br i1 %.b53, label %land.end.if.end35_crit_edge, label %if.then11, !prof !67

land.end.if.end35_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then11:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ipvlan_handle_frame.__already_done, align 1
  %conv22 = zext i16 %8 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 750, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.ipvlan_handle_frame, i32 noundef %conv22) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then11, %land.end.if.end35_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %ipvlan_handle_mode_l3.exit, %ipvlan_handle_mode_l3.exit.i, %if.then5.i, %if.then3.i.cleanup_crit_edge, %ipvlan_external_frame.exit.i, %if.end.cleanup_crit_edge, %ipvlan_port_get_rcu.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ %ret.0.i59, %ipvlan_handle_mode_l3.exit ], [ 3, %ipvlan_port_get_rcu.exit.cleanup_crit_edge ], [ 3, %if.end.cleanup_crit_edge ], [ 3, %ipvlan_external_frame.exit.i ], [ %ret.0.i.i, %ipvlan_handle_mode_l3.exit.i ], [ 3, %if.then5.i ], [ 3, %if.then3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipvlan_rcv_frame(ptr nocapture noundef readonly %addr, ptr nocapture noundef %pskb, i1 noundef zeroext %local) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %pskb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pskb, align 4
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len2, align 4
  br i1 %local, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then7, label %if.end, !prof !66

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #11
  br label %out

if.end:                                           ; preds = %if.then
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %5, i32 noundef 2592) #11
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread34, !prof !66

skb_share_check.exit.thread34:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %5) #11
  br label %if.then13

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #11
  br label %out

skb_share_check.exit:                             ; preds = %if.end
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %skb_share_check.exit.out_crit_edge, label %skb_share_check.exit.if.then13_crit_edge

skb_share_check.exit.if.then13_crit_edge:         ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

skb_share_check.exit.out_crit_edge:               ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then13:                                        ; preds = %skb_share_check.exit.if.then13_crit_edge, %skb_share_check.exit.thread34
  %skb.addr.0.i37 = phi ptr [ %call7.i, %skb_share_check.exit.thread34 ], [ %5, %skb_share_check.exit.if.then13_crit_edge ]
  %12 = ptrtoint ptr %pskb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %skb.addr.0.i37, ptr %pskb, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i37, i32 0, i32 15
  %13 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call15 = tail call i32 @dev_forward_skb(ptr noundef %15, ptr noundef nonnull %skb.addr.0.i37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp eq i32 %call15, 0
  br label %out

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = getelementptr inbounds %struct.anon.52, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %3, ptr %16, align 8
  br label %out

out:                                              ; preds = %if.else, %if.then13, %skb_share_check.exit.out_crit_edge, %skb_share_check.exit.thread, %if.then7
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.else ], [ 0, %skb_share_check.exit.out_crit_edge ], [ 0, %if.then13 ], [ 0, %skb_share_check.exit.thread ]
  %success.0.off0 = phi i1 [ false, %if.then7 ], [ true, %if.else ], [ false, %skb_share_check.exit.out_crit_edge ], [ %cmp, %if.then13 ], [ false, %skb_share_check.exit.thread ]
  %add = add i32 %7, 14
  tail call void @ipvlan_count_rx(ptr noundef %1, i32 noundef %add, i1 noundef zeroext %success.0.off0, i1 noundef zeroext false)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipvlan_multicast_enqueue(ptr noundef %port, ptr noundef %skb, i1 noundef zeroext %tx_pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30712, i16 %1)
  %cmp = icmp eq i16 %1, -30712
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %if.end17

if.end:                                           ; preds = %entry
  %frombool = zext i1 %tx_pkt to i8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %cb, align 8
  %backlog = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 8
  %lock = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 8, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %qlen.i = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp5 = icmp ult i32 %4, 1000
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %5 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.then7.if.end10_crit_edge, label %do.body1.i

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

do.body1.i:                                       ; preds = %if.then7
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !74
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !54) #11
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i = add i32 %20, 1
  store i32 %add13.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !75
  %and.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !66

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #11, !srcloc !76
  br label %if.end10

if.end10:                                         ; preds = %dev_hold.exit, %if.then7.if.end10_crit_edge
  %prev.i.i = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 8, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %backlog, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %skb, ptr %23, align 4
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %wq = getelementptr inbounds %struct.ipvl_port, ptr %port, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i30 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %wq) #11
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  %30 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 37
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_dropped, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rx_dropped, i32 1, i32 3, i32 1) #11
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_dropped, ptr %rx_dropped, i32 1, ptr elementtype(i32) %rx_dropped) #11, !srcloc !81
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end10, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ipvlan_process_outbound(ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %fl4.i = alloca %struct.flowi4, align 8
  %fl6.i = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipvlan_process_outbound.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipvlan_process_outbound, %land.lhs.true)) #11
          to label %do.end [label %land.lhs.true], !srcloc !82

land.lhs.true:                                    ; preds = %do.body
  %call8 = tail call i32 @___ratelimit(ptr noundef nonnull @ipvlan_process_outbound._rs, ptr noundef nonnull @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %if.then10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol, align 8
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipvlan_process_outbound.descriptor, ptr noundef nonnull @.str.13, i32 noundef %conv) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true.do.end_crit_edge, %do.body
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

if.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 14) #11
  %9 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %mac_header.i.i, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %network_header.i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %entry.if.end13_crit_edge
  %protocol14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol14, align 8
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %16, label %if.else25 [
    i16 -31011, label %if.then17
    i16 2048, label %if.then23
  ]

if.then17:                                        ; preds = %if.end13
  %18 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %21 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %conv.i.i.i
  %22 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #11
  %27 = getelementptr inbounds i8, ptr %fl6.i, i32 80
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 4294967295, ptr %27, align 8, !annotation !65
  %29 = call ptr @memset(ptr %fl6.i, i32 0, i32 40)
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 17
  %30 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifindex.i, align 4
  %32 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %fl6.i, align 8
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %flowic_mark.i, align 8
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 5
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nexthdr.i, align 2
  %39 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 6
  %40 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %flowic_flags.i, align 1
  %daddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  %daddr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 6
  %41 = call ptr @memcpy(ptr %daddr.i, ptr %daddr2.i, i32 16)
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %saddr3.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %42 = call ptr @memcpy(ptr %saddr.i, ptr %saddr3.i, i32 16)
  %flowlabel.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 3
  %43 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i = and i32 %44, 268435455
  %45 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %and.i.i, ptr %flowlabel.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 4
  %46 = ptrtoint ptr %uli.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %uli.i, align 4
  %call.i.i = call ptr @ip6_route_output_flags(ptr noundef %26, ptr noundef null, ptr noundef nonnull %fl6.i, i32 noundef 0) #11
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 15
  %47 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool.not.i = icmp eq i16 %48, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i51 = sext i16 %48 to i32
  call void @dst_release(ptr noundef %call.i.i) #11
  %tx_errors16.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 5
  %49 = ptrtoint ptr %tx_errors16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_errors16.i, align 4
  %inc17.i = add i32 %50, 1
  store i32 %inc17.i, ptr %tx_errors16.i, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %ipvlan_process_v6_outbound.exit

if.end.i:                                         ; preds = %if.then17
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %52 = ptrtoint ptr %call.i.i to i32
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %52, ptr %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call7.i = call i32 @ip6_local_out(ptr noundef %26, ptr noundef %57, ptr noundef %skb) #11
  %58 = zext i32 %call7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call7.i, label %if.then12.i [
    i32 2, label %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge
    i32 0, label %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge76
  ]

if.end.i.ipvlan_process_v6_outbound.exit_crit_edge76: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_process_v6_outbound.exit

if.end.i.ipvlan_process_v6_outbound.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_process_v6_outbound.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 36, i32 5
  %59 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %60, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  br label %ipvlan_process_v6_outbound.exit

ipvlan_process_v6_outbound.exit:                  ; preds = %if.then12.i, %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge, %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge76, %if.then.i
  %ret.0.i = phi i32 [ %conv.i51, %if.then.i ], [ 1, %if.then12.i ], [ 0, %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge ], [ 0, %if.end.i.ipvlan_process_v6_outbound.exit_crit_edge76 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #11
  br label %out

if.then23:                                        ; preds = %if.end13
  %61 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %63 = ptrtoint ptr %network_header.i.i.i53 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %network_header.i.i.i53, align 4
  %conv.i.i.i54 = zext i16 %64 to i32
  %add.ptr.i.i.i55 = getelementptr i8, ptr %62, i32 %conv.i.i.i54
  %65 = getelementptr inbounds %struct.anon.52, ptr %skb, i32 0, i32 2
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %nd_net.i.i56 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 127
  %68 = ptrtoint ptr %nd_net.i.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %nd_net.i.i56, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i) #11
  %70 = getelementptr inbounds i8, ptr %fl4.i, i32 48
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 4294967295, ptr %70, align 8, !annotation !65
  %72 = call ptr @memset(ptr %fl4.i, i32 0, i32 40)
  %ifindex.i57 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 17
  %73 = ptrtoint ptr %ifindex.i57 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ifindex.i57, align 4
  %75 = ptrtoint ptr %fl4.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %fl4.i, align 8
  %flowic_mark.i58 = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 2
  %76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = ptrtoint ptr %flowic_mark.i58 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %flowic_mark.i58, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 3
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i55, i32 0, i32 1
  %80 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tos.i, align 1
  %82 = and i8 %81, 30
  %83 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %flowic_tos.i, align 4
  %flowic_flags.i59 = getelementptr inbounds %struct.flowi_common, ptr %fl4.i, i32 0, i32 6
  %84 = ptrtoint ptr %flowic_flags.i59 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %flowic_flags.i59, align 1
  %saddr.i60 = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 1
  %saddr3.i61 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i55, i32 0, i32 8
  %85 = ptrtoint ptr %saddr3.i61 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %saddr3.i61, align 4
  %87 = ptrtoint ptr %saddr.i60 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %saddr.i60, align 8
  %daddr.i62 = getelementptr inbounds %struct.flowi4, ptr %fl4.i, i32 0, i32 2
  %daddr4.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i55, i32 0, i32 9
  %88 = ptrtoint ptr %daddr4.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %daddr4.i, align 4
  %90 = ptrtoint ptr %daddr.i62 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %daddr.i62, align 4
  %call5.i = call ptr @ip_route_output_flow(ptr noundef %69, ptr noundef nonnull %fl4.i, ptr noundef null) #11
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then23.err22.i_crit_edge, label %if.end.i64

if.then23.err22.i_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %err22.i

if.end.i64:                                       ; preds = %if.then23
  %rt_type.i = getelementptr inbounds %struct.rtable, ptr %call5.i, i32 0, i32 3
  %91 = ptrtoint ptr %rt_type.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %rt_type.i, align 4
  %.off.i = add i16 %92, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i)
  %switch.i = icmp ult i16 %.off.i, 2
  br i1 %switch.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #13
  call void @dst_release(ptr noundef %call5.i) #11
  br label %err22.i

if.end14.i:                                       ; preds = %if.end.i64
  %tobool.not.i.i65 = icmp eq ptr %call5.i, null
  %slow_gro.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %93 = ptrtoint ptr %slow_gro.i.i66 to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %bf.load.i.i67 = load i32, ptr %slow_gro.i.i66, align 2
  %bf.load.mask.i.i68 = and i32 %bf.load.i.i67, 4096
  %bf.shl.i.i69 = select i1 %tobool.not.i.i65, i32 %bf.load.mask.i.i68, i32 4096
  %bf.clear4.i.i70 = and i32 %bf.load.i.i67, -4097
  %bf.set.i.i71 = or i32 %bf.shl.i.i69, %bf.clear4.i.i70
  store i32 %bf.set.i.i71, ptr %slow_gro.i.i66, align 2
  %94 = ptrtoint ptr %call5.i to i32
  %95 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %94, ptr %95, align 8
  %97 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call15.i = call i32 @ip_local_out(ptr noundef %69, ptr noundef %99, ptr noundef %skb) #11
  %100 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call15.i, label %if.then20.i [
    i32 2, label %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge
    i32 0, label %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge77
  ]

if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge77: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_process_v4_outbound.exit

if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ipvlan_process_v4_outbound.exit

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors.i72 = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 36, i32 5
  %101 = ptrtoint ptr %tx_errors.i72 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tx_errors.i72, align 4
  %inc.i73 = add i32 %102, 1
  store i32 %inc.i73, ptr %tx_errors.i72, align 4
  br label %ipvlan_process_v4_outbound.exit

err22.i:                                          ; preds = %if.then13.i, %if.then23.err22.i_crit_edge
  %tx_errors24.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 36, i32 5
  %103 = ptrtoint ptr %tx_errors24.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx_errors24.i, align 4
  %inc25.i = add i32 %104, 1
  store i32 %inc25.i, ptr %tx_errors24.i, align 4
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %ipvlan_process_v4_outbound.exit

ipvlan_process_v4_outbound.exit:                  ; preds = %err22.i, %if.then20.i, %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge, %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge77
  %ret.0.i74 = phi i32 [ 1, %err22.i ], [ 1, %if.then20.i ], [ 0, %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge ], [ 0, %if.end14.i.ipvlan_process_v4_outbound.exit_crit_edge77 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i) #11
  br label %out

if.else25:                                        ; preds = %if.end13
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @ipvlan_process_outbound._rs.14, ptr noundef nonnull @.str.12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else25.if.end36_crit_edge, label %do.end31

if.else25.if.end36_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end31:                                         ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %protocol14 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %protocol14, align 8
  %conv34 = zext i16 %106 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv34) #14
  br label %if.end36

if.end36:                                         ; preds = %do.end31, %if.else25.if.end36_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %out

out:                                              ; preds = %if.end36, %ipvlan_process_v4_outbound.exit, %ipvlan_process_v6_outbound.exit, %do.end
  %ret.0 = phi i32 [ 1, %do.end ], [ %ret.0.i, %ipvlan_process_v6_outbound.exit ], [ %ret.0.i74, %ipvlan_process_v4_outbound.exit ], [ 1, %if.end36 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip6_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_output_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_local_out(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !28, !29, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !45, !46, !47, !49, !50, !51, !52}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @ipvlan_init_secret.___done, !1, !"___done", i1 false, i1 false}
!1 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 11, i32 2}
!2 = !{ptr @ipvlan_init_secret.___once_key, !1, !"___once_key", i1 false, i1 false}
!3 = !{ptr @__ksymtab_ipvlan_count_rx, !4, !"__ksymtab_ipvlan_count_rx", i1 false, i1 false}
!4 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 31, i32 1}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 110, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 126, i32 2}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 258, i32 3}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 653, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__func__.ipvlan_queue_xmit, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 750, i32 2}
!19 = !{ptr @__func__.ipvlan_handle_frame, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ipvlan_jhash_secret, !21, !"ipvlan_jhash_secret", i1 false, i1 false}
!21 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 7, i32 12}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 81, i32 2}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../drivers/net/ipvlan/ipvlan.h", i32 115, i32 9}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 509, i32 4}
!42 = !{ptr @ipvlan_process_outbound._rs, !41, !"_rs", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ipvlan_process_outbound.descriptor, !41, !"descriptor", i1 false, i1 false}
!47 = !{ptr @ipvlan_process_outbound._rs.14, !48, !"_rs", i1 false, i1 false}
!48 = !{!"../drivers/net/ipvlan/ipvlan_core.c", i32 526, i32 3}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ipvlan_process_outbound._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @ipvlan_process_outbound._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../drivers/net/ipvlan/ipvlan.h", i32 110, i32 9}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148713146, i64 2148713151, i64 2148713172, i64 2148713216, i64 2148713250, i64 2148713271}
!65 = !{!"auto-init"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2149885396}
!69 = !{i64 2149890328}
!70 = !{i64 2149912040}
!71 = !{i64 2149916932}
!72 = !{i64 2149993389}
!73 = !{i64 2149993714}
!74 = !{i64 623409, i64 623470}
!75 = !{i64 626141}
!76 = !{i64 626426}
!77 = !{i64 2151653298}
!78 = !{i64 2149377397}
!79 = !{i64 2149377663}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148230928, i64 2148230954, i64 2148230983, i64 2148231017, i64 2148231048, i64 2148231071}
!82 = !{i64 2148712743, i64 2148712748, i64 2148712761, i64 2148712805, i64 2148712839, i64 2148712860}
