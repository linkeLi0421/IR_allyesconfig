; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_osf.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_osf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_osf_fingers\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_osf_fingers\09\09\09\09"
module asm "\09.long\09__crc_nf_osf_fingers\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_osf_fingers:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_osf_fingers\22\09\09\09\09\09"
module asm "__kstrtabns_nf_osf_fingers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_osf_match\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_osf_match\09\09\09\09"
module asm "\09.long\09__crc_nf_osf_match\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_osf_match:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_osf_match\22\09\09\09\09\09"
module asm "__kstrtabns_nf_osf_match:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_osf_find\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_osf_find\09\09\09\09"
module asm "\09.long\09__crc_nf_osf_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_osf_find:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_osf_find\22\09\09\09\09\09"
module asm "__kstrtabns_nf_osf_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nf_osf_hdr_ctx = type { i8, i16, i16, ptr, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.171, %union.anon.172, [48 x i8], %union.anon.173, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.175, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { i64 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, ptr }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.177, i32, i32, i32, i16, i16, %union.anon.179, i32, %union.anon.180, %union.anon.181, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.177 = type { i32 }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_osf_info = type { [32 x i8], i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_osf_user_finger = type { %struct.nf_osf_wc, i8, i8, i16, i16, i16, [32 x i8], [32 x i8], [32 x i8], [40 x %struct.nf_osf_opt] }
%struct.nf_osf_wc = type { i32, i32 }
%struct.nf_osf_opt = type { i16, i16, %struct.nf_osf_wc }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.170, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.170 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.nf_osf_data = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nf_osf_finger = type { %struct.callback_head, %struct.list_head, %struct.nf_osf_user_finger }

@nf_osf_fingers = dso_local global { [2 x %struct.list_head], [16 x i8] } zeroinitializer, align 32
@__kstrtab_nf_osf_fingers = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_osf_fingers = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_osf_fingers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_osf_fingers to i32), ptr @__kstrtab_nf_osf_fingers, ptr @__kstrtabns_nf_osf_fingers }, section "___ksymtab_gpl+nf_osf_fingers", align 4
@nf_osf_match.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/netfilter/nfnetlink_osf.c\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s [%s:%s] : %pI4:%d -> %pI4:%d hops=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Remote OS is not known: %pI4:%u -> %pI4:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@__kstrtab_nf_osf_match = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_osf_match = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_osf_match = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_osf_match to i32), ptr @__kstrtab_nf_osf_match, ptr @__kstrtabns_nf_osf_match }, section "___ksymtab_gpl+nf_osf_match", align 4
@nf_osf_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_nf_osf_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_osf_find = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_osf_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_osf_find to i32), ptr @__kstrtab_nf_osf_find, ptr @__kstrtabns_nf_osf_find }, section "___ksymtab_gpl+nf_osf_find", align 4
@nfnl_osf_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str.7, i8 5, i8 2, ptr @nfnl_osf_callbacks, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@nfnl_osf_fini.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__initcall__kmod_nfnetlink_osf__626_436_nfnl_osf_init6 = internal global ptr @nfnl_osf_init, section ".initcall6.init", align 4
@__exitcall_nfnl_osf_fini = internal global ptr @nfnl_osf_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file627 = internal constant [47 x i8] c"nfnetlink_osf.file=net/netfilter/nfnetlink_osf\00", section ".modinfo", align 1
@__UNIQUE_ID_license628 = internal constant [26 x i8] c"nfnetlink_osf.license=GPL\00", section ".modinfo", align 1
@nf_osf_ttl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nf_osf_ttl.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osf\00", [28 x i8] zeroinitializer }, align 32
@nfnl_osf_callbacks = internal constant { [2 x %struct.nfnl_callback], [32 x i8] } { [2 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfnl_osf_add_callback, ptr @nfnl_osf_policy, i32 1, i16 2 }, %struct.nfnl_callback { ptr @nfnl_osf_remove_callback, ptr @nfnl_osf_policy, i32 1, i16 2 }], [32 x i8] zeroinitializer }, align 32
@nfnl_osf_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 592, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfnl_osf_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013nfnetlink_osf: Failed to register OSF nsfnetlink helper (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfnl_osf_init\00", [18 x i8] zeroinitializer }, align 32
@nfnl_osf_init._entry_ptr = internal global ptr @nfnl_osf_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"nf_osf_fingers\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 28, i32 18 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 220, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 237, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 250, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"nfnl_osf_subsys\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 391, i32 41 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 46, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 232, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 392, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"nfnl_osf_callbacks\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 376, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [16 x i8] c"nfnl_osf_policy\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 293, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 695, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 723, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [33 x i8] c"../net/netfilter/nfnetlink_osf.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 408, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_file627, ptr @__UNIQUE_ID_license628, ptr @__exitcall_nfnl_osf_fini, ptr @__initcall__kmod_nfnetlink_osf__626_436_nfnl_osf_init6, ptr @__ksymtab_nf_osf_find, ptr @__ksymtab_nf_osf_fingers, ptr @__ksymtab_nf_osf_match, ptr @nfnl_osf_fini, ptr @nfnl_osf_init._entry, ptr @nfnl_osf_init._entry_ptr, ptr @nf_osf_fingers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nfnl_osf_subsys, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @nfnl_osf_callbacks, ptr @nfnl_osf_policy, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_osf_fingers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_osf_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_osf_callbacks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_osf_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_osf_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nf_osf_match(ptr noundef %skb, i8 noundef zeroext %family, i32 noundef %hooknum, ptr noundef %in, ptr noundef %out, ptr nocapture noundef readonly %info, ptr noundef %net, ptr noundef %nf_osf_fingers) #0 align 64 {
entry:
  %opts = alloca [40 x i8], align 1
  %ctx = alloca %struct.nf_osf_hdr_ctx, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %opts) #10
  %4 = call ptr @memset(ptr %opts, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #10
  %5 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %6 = call ptr @memset(ptr %ctx, i32 0, i32 16)
  %call1 = call fastcc ptr @nf_osf_hdr_ctx_init(ptr noundef nonnull %ctx, ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %opts, ptr noundef nonnull %_tcph)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nf_osf_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ttl = getelementptr inbounds %struct.nf_osf_info, ptr %info, i32 0, i32 4
  %9 = ptrtoint ptr %ttl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ttl, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %call3 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %cond.end.do.end_crit_edge

cond.end.do.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %cond.end
  %call5 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b127 = load i1, ptr @nf_osf_match.__warned, align 1
  br i1 %.b127, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_osf_match.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %cond.end.do.end_crit_edge
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 4, !range !64
  %13 = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.list_head, ptr %nf_osf_fingers, i32 %13
  %loglevel = getelementptr inbounds %struct.nf_osf_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn128 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not130 = icmp eq ptr %.pn128, %arrayidx
  br i1 %cmp.not130, label %do.end.land.lhs.true66_crit_edge, label %for.body.lr.ph

do.end.land.lhs.true66_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true66

for.body.lr.ph:                                   ; preds = %do.end
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %dest = getelementptr inbounds %struct.tcphdr, ptr %call1, i32 0, i32 1
  %ttl45 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn135 = phi ptr [ %.pn128, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %fcount.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %fcount.1, %for.inc.for.body_crit_edge ]
  %fmatch.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %fmatch.1, %for.inc.for.body_crit_edge ]
  %finger = getelementptr i8, ptr %.pn135, i32 8
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and21 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %for.body.if.end30_crit_edge

for.body.if.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true23:                                  ; preds = %for.body
  %genre25 = getelementptr i8, ptr %.pn135, i32 24
  %call27 = call i32 @strcmp(ptr noundef %info, ptr noundef %genre25) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true23.if.end30_crit_edge, label %land.lhs.true23.for.inc_crit_edge

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true23.if.end30_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true23.if.end30_crit_edge, %for.body.if.end30_crit_edge
  %call31 = call fastcc zeroext i1 @nf_osf_match_one(ptr noundef %skb, ptr noundef %finger, i32 noundef %cond, ptr noundef nonnull %ctx)
  br i1 %call31, label %if.end33, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end33:                                         ; preds = %if.end30
  %inc = add i32 %fcount.0133, 1
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %and35 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end47_crit_edge, label %if.then37

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %genre38 = getelementptr i8, ptr %.pn135, i32 24
  %version = getelementptr i8, ptr %.pn135, i32 56
  %subtype = getelementptr i8, ptr %.pn135, i32 88
  %19 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %call1, align 4
  %conv = zext i16 %20 to i32
  %21 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dest, align 2
  %conv42 = zext i16 %22 to i32
  %ttl43 = getelementptr i8, ptr %.pn135, i32 16
  %23 = ptrtoint ptr %ttl43 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ttl43, align 4
  %conv44 = zext i8 %24 to i32
  %25 = ptrtoint ptr %ttl45 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ttl45, align 4
  %conv46 = zext i8 %26 to i32
  %sub = sub nsw i32 %conv44, %conv46
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %net, i8 noundef zeroext %family, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %genre38, ptr noundef %version, ptr noundef %subtype, ptr noundef %saddr, i32 noundef %conv, ptr noundef %daddr, i32 noundef %conv42, i32 noundef %sub) #10
  br label %if.end47

if.end47:                                         ; preds = %if.then37, %if.end33.if.end47_crit_edge
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and49 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.for.inc_crit_edge, label %land.lhs.true51

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true51:                                  ; preds = %if.end47
  %29 = ptrtoint ptr %loglevel to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %loglevel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp52 = icmp eq i32 %30, 1
  br i1 %cmp52, label %land.lhs.true51.for.end_crit_edge, label %land.lhs.true51.for.inc_crit_edge

land.lhs.true51.for.inc_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true51.for.end_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true51.for.inc_crit_edge, %if.end47.for.inc_crit_edge, %if.end30.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge
  %fmatch.1 = phi i32 [ 1, %land.lhs.true51.for.inc_crit_edge ], [ 1, %if.end47.for.inc_crit_edge ], [ %fmatch.0131, %if.end30.for.inc_crit_edge ], [ %fmatch.0131, %land.lhs.true23.for.inc_crit_edge ]
  %fcount.1 = phi i32 [ %inc, %land.lhs.true51.for.inc_crit_edge ], [ %inc, %if.end47.for.inc_crit_edge ], [ %fcount.0133, %if.end30.for.inc_crit_edge ], [ %fcount.0133, %land.lhs.true23.for.inc_crit_edge ]
  %31 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load volatile ptr, ptr %.pn135, align 4
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctx, align 4, !range !64
  %34 = zext i8 %33 to i32
  %arrayidx19 = getelementptr %struct.list_head, ptr %nf_osf_fingers, i32 %34
  %cmp.not = icmp eq ptr %.pn, %arrayidx19
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true51.for.end_crit_edge
  %fmatch.2 = phi i32 [ %fmatch.1, %for.inc.for.end_crit_edge ], [ 1, %land.lhs.true51.for.end_crit_edge ]
  %fcount.2 = phi i32 [ %fcount.1, %for.inc.for.end_crit_edge ], [ %inc, %land.lhs.true51.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fcount.2)
  %tobool65.not = icmp eq i32 %fcount.2, 0
  br i1 %tobool65.not, label %for.end.land.lhs.true66_crit_edge, label %for.end.if.end77_crit_edge

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

for.end.land.lhs.true66_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true66

land.lhs.true66:                                  ; preds = %for.end.land.lhs.true66_crit_edge, %do.end.land.lhs.true66_crit_edge
  %fmatch.2142 = phi i32 [ %fmatch.2, %for.end.land.lhs.true66_crit_edge ], [ 0, %do.end.land.lhs.true66_crit_edge ]
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and68 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true66.if.end77_crit_edge, label %if.then70

land.lhs.true66.if.end77_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

if.then70:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #12
  %saddr71 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %37 = ptrtoint ptr %call1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %call1, align 4
  %conv73 = zext i16 %38 to i32
  %daddr74 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %dest75 = getelementptr inbounds %struct.tcphdr, ptr %call1, i32 0, i32 1
  %39 = ptrtoint ptr %dest75 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %dest75, align 2
  %conv76 = zext i16 %40 to i32
  call void (ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ...) @nf_log_packet(ptr noundef %net, i8 noundef zeroext %family, i32 noundef %hooknum, ptr noundef %skb, ptr noundef %in, ptr noundef %out, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef %saddr71, i32 noundef %conv73, ptr noundef %daddr74, i32 noundef %conv76) #10
  br label %if.end77

if.end77:                                         ; preds = %if.then70, %land.lhs.true66.if.end77_crit_edge, %for.end.if.end77_crit_edge
  %spec.select = phi i32 [ %fmatch.2142, %if.then70 ], [ %fmatch.2142, %land.lhs.true66.if.end77_crit_edge ], [ 1, %for.end.if.end77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp81 = icmp eq i32 %spec.select, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp81, %if.end77 ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %opts) #10
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_osf_hdr_ctx_init(ptr nocapture noundef %ctx, ptr noundef %skb, ptr nocapture noundef readonly %ip, ptr noundef %opts, ptr noundef %_tcph) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %3 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 %conv.i.i.i
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %5 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %5 to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %10 = add i32 %9, %mul.i
  %sub.i4.i = sub i32 %7, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !65

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %mul.i
  br label %skb_header_pointer.exit

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %mul.i, ptr noundef %_tcph, i32 noundef 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge

lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_pointer.exit

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %_tcph, %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %if.end

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit
  %syn = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %syn, align 4
  %14 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.not = icmp eq i16 %14, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %ip, i32 0, i32 2
  %15 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tot_len, align 2
  %totlen = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %totlen to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %totlen, align 4
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %ip, i32 0, i32 4
  %18 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off, align 2
  %20 = lshr i16 %19, 14
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 1
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %ctx, align 4
  %window = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %window, align 2
  %window6 = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 1
  %26 = ptrtoint ptr %window6 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %window6, align 2
  %27 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load7 = load i16, ptr %syn, align 4
  %28 = lshr i16 %bf.load7, 10
  %29 = and i16 %28, 60
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %29)
  %cmp = icmp ugt i16 %29, 20
  br i1 %cmp, label %if.then11, label %if.end4.if.end24_crit_edge

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then11:                                        ; preds = %if.end4
  %mul = zext i16 %29 to i32
  %sub = add nsw i32 %mul, -20
  %optsize = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 4
  %30 = ptrtoint ptr %optsize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %optsize, align 4
  %31 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i.i, align 8
  %33 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i42 = zext i16 %34 to i32
  %add.ptr.i.i.i43 = getelementptr i8, ptr %32, i32 %conv.i.i.i42
  %35 = ptrtoint ptr %add.ptr.i.i.i43 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load.i44 = load i8, ptr %add.ptr.i.i.i43, align 4
  %bf.clear.i45 = shl i8 %bf.load.i44, 2
  %36 = and i8 %bf.clear.i45, 60
  %narrow = add nuw nsw i8 %36, 20
  %add = zext i8 %narrow to i32
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %41 = add i32 %40, %add
  %sub.i4.i49 = sub i32 %38, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i49, i32 %sub)
  %cmp.not.i.i50 = icmp slt i32 %sub.i4.i49, %sub
  br i1 %cmp.not.i.i50, label %if.end.i.i55, label %if.then.i.i53, !prof !65

if.then.i.i53:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  %data.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i51, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %43, i32 %add
  br label %skb_header_pointer.exit61

if.end.i.i55:                                     ; preds = %if.then11
  %tobool2.not.i.i54 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i54, label %if.end.i.i55.skb_header_pointer.exit61.thread_crit_edge, label %lor.lhs.false.i.i59

if.end.i.i55.skb_header_pointer.exit61.thread_crit_edge: ; preds = %if.end.i.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_pointer.exit61.thread

lor.lhs.false.i.i59:                              ; preds = %if.end.i.i55
  %call.i.i56 = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef %opts, i32 noundef %sub) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp3.i.i57 = icmp slt i32 %call.i.i56, 0
  br i1 %cmp3.i.i57, label %lor.lhs.false.i.i59.skb_header_pointer.exit61.thread_crit_edge, label %lor.lhs.false.i.i59.skb_header_pointer.exit61_crit_edge

lor.lhs.false.i.i59.skb_header_pointer.exit61_crit_edge: ; preds = %lor.lhs.false.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_pointer.exit61

lor.lhs.false.i.i59.skb_header_pointer.exit61.thread_crit_edge: ; preds = %lor.lhs.false.i.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_pointer.exit61.thread

skb_header_pointer.exit61.thread:                 ; preds = %lor.lhs.false.i.i59.skb_header_pointer.exit61.thread_crit_edge, %if.end.i.i55.skb_header_pointer.exit61.thread_crit_edge
  %optp66 = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 3
  %44 = ptrtoint ptr %optp66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %optp66, align 4
  br label %cleanup

skb_header_pointer.exit61:                        ; preds = %lor.lhs.false.i.i59.skb_header_pointer.exit61_crit_edge, %if.then.i.i53
  %retval.0.i.i60 = phi ptr [ %add.ptr.i.i52, %if.then.i.i53 ], [ %opts, %lor.lhs.false.i.i59.skb_header_pointer.exit61_crit_edge ]
  %optp = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 3
  %45 = ptrtoint ptr %optp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i.i60, ptr %optp, align 4
  %tobool21.not = icmp eq ptr %retval.0.i.i60, null
  br i1 %tobool21.not, label %skb_header_pointer.exit61.cleanup_crit_edge, label %skb_header_pointer.exit61.if.end24_crit_edge

skb_header_pointer.exit61.if.end24_crit_edge:     ; preds = %skb_header_pointer.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

skb_header_pointer.exit61.cleanup_crit_edge:      ; preds = %skb_header_pointer.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %skb_header_pointer.exit61.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %skb_header_pointer.exit61.cleanup_crit_edge, %skb_header_pointer.exit61.thread, %if.end.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.i, %if.end24 ], [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %skb_header_pointer.exit61.cleanup_crit_edge ], [ null, %skb_header_pointer.exit61.thread ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nf_osf_match_one(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %f, i32 noundef %ttl_check, ptr nocapture noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %optp = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 3
  %0 = ptrtoint ptr %optp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %optp, align 4
  %totlen = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %totlen to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %totlen, align 4
  %ss = getelementptr inbounds %struct.nf_osf_user_finger, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ss, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp.not = icmp eq i16 %3, %5
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ttl = getelementptr inbounds %struct.nf_osf_user_finger, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ttl, align 4
  %8 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 78
  %11 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.__in_dev_get_rcu.exit.i_crit_edge

lor.lhs.false.__in_dev_get_rcu.exit.i_crit_edge:  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__in_dev_get_rcu.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 232, ptr noundef nonnull @.str.4) #10
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, %lor.lhs.false.__in_dev_get_rcu.exit.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %conv.i.i.i
  %17 = zext i32 %ttl_check to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ttl_check, label %if.else.i [
    i32 0, label %if.then.i
    i32 2, label %__in_dev_get_rcu.exit.i.if.end_crit_edge
  ]

__in_dev_get_rcu.exit.i.if.end_crit_edge:         ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %ttl.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  br label %nf_osf_ttl.exit

if.else.i:                                        ; preds = %__in_dev_get_rcu.exit.i
  %ttl8.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %ttl8.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ttl8.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %7)
  %cmp11.not.i = icmp ugt i8 %19, %7
  br i1 %cmp11.not.i, label %if.end15.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end15.i:                                       ; preds = %if.else.i
  %ifa_list.i = getelementptr inbounds %struct.in_device, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %ifa_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ifa_list.i, align 4
  %call17.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end15.i.do.end25.i_crit_edge

if.end15.i.do.end25.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  %call18.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true.i.do.end25.i_crit_edge, label %land.lhs.true20.i

land.lhs.true.i.do.end25.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i

land.lhs.true20.i:                                ; preds = %land.lhs.true.i
  %.b67.i = load i1, ptr @nf_osf_ttl.__warned, align 1
  br i1 %.b67.i, label %land.lhs.true20.i.do.end25.i_crit_edge, label %if.then22.i

land.lhs.true20.i.do.end25.i_crit_edge:           ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25.i

if.then22.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_osf_ttl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.4) #10
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then22.i, %land.lhs.true20.i.do.end25.i_crit_edge, %land.lhs.true.i.do.end25.i_crit_edge, %if.end15.i.do.end25.i_crit_edge
  %tobool27.not69.i = icmp eq ptr %21, null
  br i1 %tobool27.not69.i, label %do.end25.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end25.i.cleanup_crit_edge:                     ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end25.i
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %do.end51.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ifa.070.i = phi ptr [ %21, %for.body.lr.ph.i ], [ %29, %do.end51.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr.i, align 4
  %ifa_address.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.070.i, i32 0, i32 5
  %24 = ptrtoint ptr %ifa_address.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifa_address.i.i, align 4
  %xor.i.i = xor i32 %25, %23
  %ifa_mask.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.070.i, i32 0, i32 6
  %26 = ptrtoint ptr %ifa_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ifa_mask.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i68.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i68.i, label %for.body.i.nf_osf_ttl.exit_crit_edge, label %for.inc.i

for.body.i.nf_osf_ttl.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_osf_ttl.exit

for.inc.i:                                        ; preds = %for.body.i
  %ifa_next.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.070.i, i32 0, i32 1
  %28 = ptrtoint ptr %ifa_next.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %ifa_next.i, align 4
  %call41.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true43.i, label %for.inc.i.do.end51.i_crit_edge

for.inc.i.do.end51.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

land.lhs.true43.i:                                ; preds = %for.inc.i
  %call44.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true43.i.do.end51.i_crit_edge, label %land.lhs.true46.i

land.lhs.true43.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

land.lhs.true46.i:                                ; preds = %land.lhs.true43.i
  %.b6566.i = load i1, ptr @nf_osf_ttl.__warned.5, align 1
  br i1 %.b6566.i, label %land.lhs.true46.i.do.end51.i_crit_edge, label %if.then48.i

land.lhs.true46.i.do.end51.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51.i

if.then48.i:                                      ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_osf_ttl.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.4) #10
  br label %do.end51.i

do.end51.i:                                       ; preds = %if.then48.i, %land.lhs.true46.i.do.end51.i_crit_edge, %land.lhs.true43.i.do.end51.i_crit_edge, %for.inc.i.do.end51.i_crit_edge
  %tobool27.not.i = icmp eq ptr %29, null
  br i1 %tobool27.not.i, label %do.end51.i.cleanup_crit_edge, label %do.end51.i.for.body.i_crit_edge

do.end51.i.for.body.i_crit_edge:                  ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

do.end51.i.cleanup_crit_edge:                     ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nf_osf_ttl.exit:                                  ; preds = %for.body.i.nf_osf_ttl.exit_crit_edge, %if.then.i
  %ttl8.sink.i = phi ptr [ %ttl.i, %if.then.i ], [ %ttl8.i, %for.body.i.nf_osf_ttl.exit_crit_edge ]
  %30 = ptrtoint ptr %ttl8.sink.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ttl8.sink.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %7)
  %cmp33.i.not = icmp eq i8 %31, %7
  br i1 %cmp33.i.not, label %nf_osf_ttl.exit.if.end_crit_edge, label %nf_osf_ttl.exit.cleanup_crit_edge

nf_osf_ttl.exit.cleanup_crit_edge:                ; preds = %nf_osf_ttl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nf_osf_ttl.exit.if.end_crit_edge:                 ; preds = %nf_osf_ttl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %nf_osf_ttl.exit.if.end_crit_edge, %if.else.i.if.end_crit_edge, %__in_dev_get_rcu.exit.i.if.end_crit_edge
  %32 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp3 = icmp ugt i32 %33, 3
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %opt_num = getelementptr inbounds %struct.nf_osf_user_finger, ptr %f, i32 0, i32 5
  %34 = ptrtoint ptr %opt_num to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %opt_num, align 2
  %conv7 = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp8229.not = icmp eq i16 %35, 0
  br i1 %cmp8229.not, label %for.cond.preheader.lor.lhs.false13_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.lor.lhs.false13_crit_edge:     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %optnum.0231 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %foptsize.0230 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %length = getelementptr %struct.nf_osf_user_finger, ptr %f, i32 0, i32 9, i32 %optnum.0231, i32 1
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %length, align 2
  %conv10 = zext i16 %37 to i32
  %add = add i32 %foptsize.0230, %conv10
  %inc = add nuw nsw i32 %optnum.0231, 1
  %exitcond.not = icmp eq i32 %inc, %conv7
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %add)
  %cmp11 = icmp sgt i32 %add, 40
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %for.end.lor.lhs.false13_crit_edge

for.end.lor.lhs.false13_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false13:                                  ; preds = %for.end.lor.lhs.false13_crit_edge, %for.cond.preheader.lor.lhs.false13_crit_edge
  %foptsize.0.lcssa239 = phi i32 [ %add, %for.end.lor.lhs.false13_crit_edge ], [ 0, %for.cond.preheader.lor.lhs.false13_crit_edge ]
  %optsize = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 4
  %38 = ptrtoint ptr %optsize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %optsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %39)
  %cmp14 = icmp ult i32 %39, 41
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %foptsize.0.lcssa239)
  %cmp18.not = icmp eq i32 %39, %foptsize.0.lcssa239
  %or.cond = select i1 %cmp14, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %for.cond24.preheader, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond24.preheader:                             ; preds = %lor.lhs.false13
  %40 = ptrtoint ptr %opt_num to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %opt_num, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp27233.not = icmp eq i16 %41, 0
  br i1 %cmp27233.not, label %for.cond24.preheader.if.then66_crit_edge, label %for.cond24.preheader.for.body29_crit_edge

for.cond24.preheader.for.body29_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body29

for.cond24.preheader.if.then66_crit_edge:         ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

for.body29:                                       ; preds = %for.inc61.for.body29_crit_edge, %for.cond24.preheader.for.body29_crit_edge
  %mss.0235 = phi i16 [ %mss.1, %for.inc61.for.body29_crit_edge ], [ 0, %for.cond24.preheader.for.body29_crit_edge ]
  %optnum.1234 = phi i32 [ %inc62, %for.inc61.for.body29_crit_edge ], [ 0, %for.cond24.preheader.for.body29_crit_edge ]
  %arrayidx31 = getelementptr %struct.nf_osf_user_finger, ptr %f, i32 0, i32 9, i32 %optnum.1234
  %42 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx31, align 4
  %44 = ptrtoint ptr %optp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %optp, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %48 = zext i8 %47 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %48)
  %cmp35 = icmp eq i16 %43, %48
  br i1 %cmp35, label %if.then37, label %for.body29.if.then146_crit_edge

for.body29.if.then146_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

if.then37:                                        ; preds = %for.body29
  %length40 = getelementptr %struct.nf_osf_user_finger, ptr %f, i32 0, i32 9, i32 %optnum.1234, i32 1
  %49 = ptrtoint ptr %length40 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %length40, align 2
  %conv41 = zext i16 %50 to i32
  %add.ptr = getelementptr i8, ptr %45, i32 %conv41
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cond = icmp eq i8 %47, 2
  br i1 %cond, label %sw.bb, label %if.then37.for.inc61_crit_edge

if.then37.for.inc61_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61

sw.bb:                                            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx46 = getelementptr i8, ptr %45, i32 3
  %51 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx46, align 1
  %conv48 = zext i8 %52 to i16
  %shl = shl nuw i16 %conv48, 8
  %arrayidx51 = getelementptr i8, ptr %45, i32 2
  %53 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %54 to i16
  %or = or i16 %shl, %conv52
  br label %for.inc61

for.inc61:                                        ; preds = %sw.bb, %if.then37.for.inc61_crit_edge
  %mss.1 = phi i16 [ %or, %sw.bb ], [ %mss.0235, %if.then37.for.inc61_crit_edge ]
  %55 = ptrtoint ptr %optp to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr, ptr %optp, align 4
  %inc62 = add nuw nsw i32 %optnum.1234, 1
  %56 = ptrtoint ptr %opt_num to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %opt_num, align 2
  %conv26 = zext i16 %57 to i32
  %cmp27 = icmp ult i32 %inc62, %conv26
  br i1 %cmp27, label %for.inc61.for.body29_crit_edge, label %for.inc61.if.then66_crit_edge

for.inc61.if.then66_crit_edge:                    ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

for.inc61.for.body29_crit_edge:                   ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

if.then66:                                        ; preds = %for.inc61.if.then66_crit_edge, %for.cond24.preheader.if.then66_crit_edge
  %mss.0.lcssa = phi i16 [ 0, %for.cond24.preheader.if.then66_crit_edge ], [ %mss.1, %for.inc61.if.then66_crit_edge ]
  %58 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %33, label %if.then66.if.then146_crit_edge [
    i32 0, label %sw.bb67
    i32 1, label %sw.bb79
    i32 2, label %if.end143
    i32 3, label %sw.bb133
  ]

if.then66.if.then146_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

sw.bb67:                                          ; preds = %if.then66
  %val = getelementptr inbounds %struct.nf_osf_wc, ptr %f, i32 0, i32 1
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp69 = icmp eq i32 %60, 0
  br i1 %cmp69, label %sw.bb67.cleanup_crit_edge, label %lor.lhs.false71

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false71:                                  ; preds = %sw.bb67
  %window = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 1
  %61 = ptrtoint ptr %window to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %window, align 2
  %conv72 = zext i16 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %conv72)
  %cmp75 = icmp eq i32 %60, %conv72
  br i1 %cmp75, label %lor.lhs.false71.cleanup_crit_edge, label %lor.lhs.false71.if.then146_crit_edge

lor.lhs.false71.if.then146_crit_edge:             ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

lor.lhs.false71.cleanup_crit_edge:                ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb79:                                          ; preds = %if.then66
  %window80 = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 1
  %63 = ptrtoint ptr %window80 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %window80, align 2
  %conv81 = zext i16 %64 to i32
  %val83 = getelementptr inbounds %struct.nf_osf_wc, ptr %f, i32 0, i32 1
  %65 = ptrtoint ptr %val83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val83, align 4
  %conv84 = zext i16 %mss.0.lcssa to i32
  %mul = mul i32 %66, %conv84
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv81)
  %cmp85 = icmp eq i32 %mul, %conv81
  %mul92 = mul i32 %66, 1460
  call void @__sanitizer_cov_trace_cmp4(i32 %mul92, i32 %conv81)
  %cmp93 = icmp eq i32 %mul92, %conv81
  %or.cond207 = or i1 %cmp85, %cmp93
  %mul100 = mul i32 %66, 1448
  call void @__sanitizer_cov_trace_cmp4(i32 %mul100, i32 %conv81)
  %cmp101 = icmp eq i32 %mul100, %conv81
  %or.cond208 = select i1 %or.cond207, i1 true, i1 %cmp101
  br i1 %or.cond208, label %sw.bb79.cleanup_crit_edge, label %sw.bb79.if.then146_crit_edge

sw.bb79.if.then146_crit_edge:                     ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb133:                                         ; preds = %if.then66
  %window134 = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 1
  %67 = ptrtoint ptr %window134 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %window134, align 2
  %conv135 = zext i16 %68 to i32
  %val137 = getelementptr inbounds %struct.nf_osf_wc, ptr %f, i32 0, i32 1
  %69 = ptrtoint ptr %val137 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val137, align 4
  %rem = urem i32 %conv135, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp138 = icmp eq i32 %rem, 0
  br i1 %cmp138, label %sw.bb133.cleanup_crit_edge, label %sw.bb133.if.then146_crit_edge

sw.bb133.if.then146_crit_edge:                    ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

sw.bb133.cleanup_crit_edge:                       ; preds = %sw.bb133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end143:                                        ; preds = %if.then66
  %window106 = getelementptr inbounds %struct.nf_osf_hdr_ctx, ptr %ctx, i32 0, i32 1
  %71 = ptrtoint ptr %window106 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %window106, align 2
  %conv107 = zext i16 %72 to i32
  %val109 = getelementptr inbounds %struct.nf_osf_wc, ptr %f, i32 0, i32 1
  %73 = ptrtoint ptr %val109 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val109, align 4
  %conv110 = zext i16 %mss.0.lcssa to i32
  %add111 = add nuw nsw i32 %conv110, 40
  %mul112 = mul i32 %74, %add111
  call void @__sanitizer_cov_trace_cmp4(i32 %mul112, i32 %conv107)
  %cmp113 = icmp eq i32 %mul112, %conv107
  %mul120 = mul i32 %74, 1500
  call void @__sanitizer_cov_trace_cmp4(i32 %mul120, i32 %conv107)
  %cmp121 = icmp eq i32 %mul120, %conv107
  %or.cond209 = or i1 %cmp113, %cmp121
  %mul128 = mul i32 %74, 1488
  call void @__sanitizer_cov_trace_cmp4(i32 %mul128, i32 %conv107)
  %cmp129 = icmp eq i32 %mul128, %conv107
  %or.cond210 = select i1 %or.cond209, i1 true, i1 %cmp129
  br i1 %or.cond210, label %if.end143.cleanup_crit_edge, label %if.end143.if.then146_crit_edge

if.end143.if.then146_crit_edge:                   ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then146

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then146:                                       ; preds = %if.end143.if.then146_crit_edge, %sw.bb133.if.then146_crit_edge, %sw.bb79.if.then146_crit_edge, %lor.lhs.false71.if.then146_crit_edge, %if.then66.if.then146_crit_edge, %for.body29.if.then146_crit_edge
  %75 = ptrtoint ptr %optp to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %1, ptr %optp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then146, %if.end143.cleanup_crit_edge, %sw.bb133.cleanup_crit_edge, %sw.bb79.cleanup_crit_edge, %lor.lhs.false71.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %nf_osf_ttl.exit.cleanup_crit_edge, %do.end51.i.cleanup_crit_edge, %do.end25.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %nf_osf_ttl.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %lor.lhs.false13.cleanup_crit_edge ], [ false, %for.end.cleanup_crit_edge ], [ false, %if.then146 ], [ true, %if.end143.cleanup_crit_edge ], [ true, %sw.bb133.cleanup_crit_edge ], [ true, %sw.bb79.cleanup_crit_edge ], [ false, %do.end25.i.cleanup_crit_edge ], [ true, %sw.bb67.cleanup_crit_edge ], [ true, %lor.lhs.false71.cleanup_crit_edge ], [ false, %do.end51.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_log_packet(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nf_osf_find(ptr noundef %skb, ptr noundef %nf_osf_fingers, i32 noundef %ttl_check, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  %opts = alloca [40 x i8], align 1
  %ctx = alloca %struct.nf_osf_hdr_ctx, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %opts) #10
  %4 = call ptr @memset(ptr %opts, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #10
  %5 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %6 = call ptr @memset(ptr %ctx, i32 0, i32 16)
  %call1 = call fastcc ptr @nf_osf_hdr_ctx_init(ptr noundef nonnull %ctx, ptr noundef %skb, ptr noundef %add.ptr.i.i, ptr noundef nonnull %opts, ptr noundef nonnull %_tcph)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %call2 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call4 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @nf_osf_find.__warned, align 1
  br i1 %.b49, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nf_osf_find.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctx, align 4, !range !64
  %9 = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.list_head, ptr %nf_osf_fingers, i32 %9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %arrayidx, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %10 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ctx, align 4, !range !64
  %13 = zext i8 %12 to i32
  %arrayidx18 = getelementptr %struct.list_head, ptr %nf_osf_fingers, i32 %13
  %cmp.not = icmp eq ptr %.pn, %arrayidx18
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %finger = getelementptr i8, ptr %.pn, i32 8
  %call19 = call fastcc zeroext i1 @nf_osf_match_one(ptr noundef %skb, ptr noundef %finger, i32 noundef %ttl_check, ptr noundef nonnull %ctx)
  br i1 %call19, label %if.end21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %genre = getelementptr i8, ptr %.pn, i32 24
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %genre, ptr %data, align 4
  %version = getelementptr i8, ptr %.pn, i32 56
  %version25 = getelementptr inbounds %struct.nf_osf_data, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %version25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %version, ptr %version25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %16 = xor i1 %tobool.not, true
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %opts) #10
  ret i1 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnl_osf_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfnl_osf_subsys) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !66
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.do.body.preheader_crit_edge, label %land.lhs.true.i

entry.do.body.preheader_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.body.preheader_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.body.preheader_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.do.body.preheader_crit_edge, label %if.then.i

land.lhs.true2.i.do.body.preheader_crit_edge:     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.preheader

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #10
  br label %do.body.preheader

do.body.preheader:                                ; preds = %if.then.i, %land.lhs.true2.i.do.body.preheader_crit_edge, %land.lhs.true.i.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  br label %do.body

do.body:                                          ; preds = %for.inc33.do.body_crit_edge, %do.body.preheader
  %i.057 = phi i32 [ %inc, %for.inc33.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @nfnl_osf_fini.__warned, align 1
  br i1 %.b42, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfnl_osf_fini.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 426, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr [2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 %i.057
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn52 = load volatile ptr, ptr %arrayidx, align 4
  %cmp12.not54 = icmp eq ptr %.pn52, %arrayidx
  br i1 %cmp12.not54, label %do.end.for.inc33_crit_edge, label %do.end.for.body13_crit_edge

do.end.for.body13_crit_edge:                      ; preds = %do.end
  br label %for.body13

do.end.for.inc33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

for.body13:                                       ; preds = %if.end21.for.body13_crit_edge, %do.end.for.body13_crit_edge
  %.pn55 = phi ptr [ %.pn, %if.end21.for.body13_crit_edge ], [ %.pn52, %do.end.for.body13_crit_edge ]
  %f.056 = getelementptr i8, ptr %.pn55, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn55) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body13.list_del_rcu.exit_crit_edge

for.body13.list_del_rcu.exit_crit_edge:           ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn55, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn55, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body13.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn55, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool16.not = icmp eq ptr %f.056, null
  br i1 %tobool16.not, label %list_del_rcu.exit.if.end21_crit_edge, label %do.end20

list_del_rcu.exit.if.end21_crit_edge:             ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

do.end20:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %f.056, ptr noundef null) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %list_del_rcu.exit.if.end21_crit_edge
  %12 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load volatile ptr, ptr %.pn55, align 4
  %cmp12.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp12.not, label %if.end21.for.inc33_crit_edge, label %if.end21.for.body13_crit_edge

if.end21.for.body13_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

if.end21.for.inc33_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33

for.inc33:                                        ; preds = %if.end21.for.inc33_crit_edge, %do.end.for.inc33_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end34, label %for.inc33.do.body_crit_edge

for.inc33.do.body_crit_edge:                      ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end34:                                        ; preds = %for.inc33
  %call.i43 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i43, label %for.end34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i46

for.end34.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i46:                                ; preds = %for.end34
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i48

land.lhs.true.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i48:                               ; preds = %land.lhs.true.i46
  %.b4.i47 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47, label %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, label %if.then.i49

land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i49:                                      ; preds = %land.lhs.true2.i48
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i49, %land.lhs.true2.i48.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i46.rcu_read_unlock.exit_crit_edge, %for.end34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !67
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #10
  %and.i.i.i.i.i50 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i50 to ptr
  %preempt_count.i.i.i.i51 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i51, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i51, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void @rcu_barrier() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_osf_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @nf_osf_fingers, ptr @nf_osf_fingers, align 4
  store ptr @nf_osf_fingers, ptr getelementptr inbounds ([2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 0, i32 1), align 4
  store volatile ptr getelementptr inbounds ([2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 1), ptr getelementptr inbounds ([2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 1), align 4
  store ptr getelementptr inbounds ([2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 1), ptr getelementptr inbounds ([2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 1, i32 1), align 4
  %call = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfnl_osf_subsys) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_osf_add_callback(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %osf_attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %osf_attrs, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_flags, align 2
  %6 = and i16 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 608) #15
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %finger = getelementptr inbounds %struct.nf_osf_finger, ptr %call7.i, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %finger, ptr %add.ptr.i, i32 592)
  %df = getelementptr i8, ptr %1, i32 13
  %9 = ptrtoint ptr %df to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %df, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12 = icmp ne i8 %10, 0
  %lnot.ext = zext i1 %tobool12 to i32
  %arrayidx14 = getelementptr [2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 %lnot.ext
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end11
  %.pn.in = phi ptr [ %arrayidx14, %if.end11 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx14
  br i1 %cmp.not, label %if.then43, label %for.body

for.body:                                         ; preds = %for.cond
  %finger25 = getelementptr i8, ptr %.pn, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(592) %finger25, ptr noundef dereferenceable(592) %add.ptr.i, i32 592) #13
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %for.end.thread, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i) #10
  %12 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nlh, align 4
  %nlmsg_flags31 = getelementptr inbounds %struct.nlmsghdr, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %nlmsg_flags31 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlmsg_flags31, align 2
  %16 = and i16 %15, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool34.not = icmp eq i16 %16, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -17
  br label %cleanup

if.then43:                                        ; preds = %for.cond
  %finger_entry44 = getelementptr inbounds %struct.nf_osf_finger, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %df to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %df, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool46 = icmp ne i8 %18, 0
  %lnot.ext50 = zext i1 %tobool46 to i32
  %arrayidx51 = getelementptr [2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 %lnot.ext50
  %prev.i = getelementptr [2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 %lnot.ext50, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %finger_entry44, ptr noundef %20, ptr noundef %arrayidx51) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %finger_entry44 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx51, ptr %finger_entry44, align 8
  %prev2.i.i = getelementptr inbounds %struct.nf_osf_finger, ptr %call7.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !68
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %finger_entry44, ptr %20, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %finger_entry44, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then43.cleanup_crit_edge, %for.end.thread, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %spec.select, %for.end.thread ], [ 0, %if.then43.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_osf_remove_callback(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %osf_attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 12) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %osf_attrs, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %df = getelementptr i8, ptr %1, i32 13
  %2 = ptrtoint ptr %df to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %df, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5 = icmp ne i8 %3, 0
  %lnot.ext = zext i1 %tobool5 to i32
  %arrayidx7 = getelementptr [2 x %struct.list_head], ptr @nf_osf_fingers, i32 0, i32 %lnot.ext
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end2
  %.pn.in = phi ptr [ %arrayidx7, %if.end2 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx7
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %finger = getelementptr i8, ptr %.pn, i32 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(592) %finger, ptr noundef dereferenceable(592) %add.ptr.i, i32 592) #13
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %if.end20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end20:                                         ; preds = %for.body
  %sf.0.le = getelementptr i8, ptr %.pn, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del_rcu.exit_crit_edge

if.end20.list_del_rcu.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end20.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool22.not = icmp eq ptr %sf.0.le, null
  br i1 %tobool22.not, label %list_del_rcu.exit.cleanup_crit_edge, label %do.end

list_del_rcu.exit.cleanup_crit_edge:              ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kvfree_call_rcu(ptr noundef nonnull %sf.0.le, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %list_del_rcu.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %list_del_rcu.exit.cleanup_crit_edge ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__ksymtab_nf_osf_fingers, !1, !"__ksymtab_nf_osf_fingers", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_osf.c", i32 29, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/netfilter/nfnetlink_osf.c", i32 220, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nfnetlink_osf.c", i32 237, i32 11}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nfnetlink_osf.c", i32 250, i32 10}
!10 = !{ptr @__ksymtab_nf_osf_match, !11, !"__ksymtab_nf_osf_match", i1 false, i1 false}
!11 = !{!"../net/netfilter/nfnetlink_osf.c", i32 259, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/netfilter/nfnetlink_osf.c", i32 279, i32 2}
!14 = !{ptr @__ksymtab_nf_osf_find, !15, !"__ksymtab_nf_osf_find", i1 false, i1 false}
!15 = !{!"../net/netfilter/nfnetlink_osf.c", i32 291, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/netfilter/nfnetlink_osf.c", i32 426, i32 3}
!18 = !{ptr @__initcall__kmod_nfnetlink_osf__626_436_nfnl_osf_init6, !19, !"__initcall__kmod_nfnetlink_osf__626_436_nfnl_osf_init6", i1 false, i1 false}
!19 = !{!"../net/netfilter/nfnetlink_osf.c", i32 436, i32 1}
!20 = !{ptr @__exitcall_nfnl_osf_fini, !21, !"__exitcall_nfnl_osf_fini", i1 false, i1 false}
!21 = !{!"../net/netfilter/nfnetlink_osf.c", i32 437, i32 1}
!22 = !{ptr @__UNIQUE_ID_file627, !23, !"__UNIQUE_ID_file627", i1 false, i1 false}
!23 = !{!"../net/netfilter/nfnetlink_osf.c", i32 439, i32 1}
!24 = !{ptr @__UNIQUE_ID_license628, !23, !"__UNIQUE_ID_license628", i1 false, i1 false}
!25 = !{ptr @nf_osf_fingers, !26, !"nf_osf_fingers", i1 false, i1 false}
!26 = !{!"../net/netfilter/nfnetlink_osf.c", i32 28, i32 18}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/netfilter/nfnetlink_osf.c", i32 46, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/netfilter/nfnetlink_osf.c", i32 392, i32 12}
!36 = !{ptr @nfnl_osf_subsys, !37, !"nfnl_osf_subsys", i1 false, i1 false}
!37 = !{!"../net/netfilter/nfnetlink_osf.c", i32 391, i32 41}
!38 = !{ptr @nfnl_osf_callbacks, !39, !"nfnl_osf_callbacks", i1 false, i1 false}
!39 = !{!"../net/netfilter/nfnetlink_osf.c", i32 376, i32 35}
!40 = !{ptr @nfnl_osf_policy, !41, !"nfnl_osf_policy", i1 false, i1 false}
!41 = !{!"../net/netfilter/nfnetlink_osf.c", i32 293, i32 32}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nfnetlink_osf.c", i32 408, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nfnl_osf_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @nfnl_osf_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
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
!64 = !{i8 0, i8 2}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i64 2149364229}
!67 = !{i64 2149364495}
!68 = !{i64 2151980733}
