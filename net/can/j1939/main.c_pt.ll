; ModuleID = '/llk/IR_all_yes/net/can/j1939/main.c_pt.bc'
source_filename = "../net/can/j1939/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.can_proto = type { i32, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.j1939_priv = type { %struct.list_head, %struct.rwlock_t, ptr, [256 x %struct.j1939_addr_ent], %struct.kref, %struct.list_head, %struct.spinlock, i32, %struct.spinlock, %struct.list_head, %struct.kref, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.j1939_addr_ent = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.can_ml_priv = type { %struct.can_dev_rcv_lists, ptr }
%struct.can_dev_rcv_lists = type { [4 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], i32 }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.sock_common = type { %union.anon.4, %union.anon.6, %union.anon.7, i16, i8, i8, i32, %union.anon.9, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.4 = type { i64 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.9 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }

@__UNIQUE_ID_description458 = internal constant [39 x i8] c"can_j1939.description=PF_CAN SAE J1939\00", section ".modinfo", align 1
@__UNIQUE_ID_file459 = internal constant [39 x i8] c"can_j1939.file=net/can/j1939/can-j1939\00", section ".modinfo", align 1
@__UNIQUE_ID_license460 = internal constant [25 x i8] c"can_j1939.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author461 = internal constant [66 x i8] c"can_j1939.author=EIA Electronics (Kurt Van Dijck & Pieter Beyens)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias462 = internal constant [28 x i8] c"can_j1939.alias=can-proto-7\00", section ".modinfo", align 1
@j1939_netdev_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.13 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@j1939_netdev_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&priv->j1939_socks_lock\00", [40 x i8] zeroinitializer }, align 32
@j1939_can_proto = external dso_local constant %struct.can_proto, align 4
@j1939_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @j1939_netdev_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_can_j1939__467_419_j1939_module_init6 = internal global ptr @j1939_module_init, section ".initcall6.init", align 4
@__exitcall_j1939_module_exit = internal global ptr @j1939_module_exit, section ".exitcall.exit", align 4
@__j1939_priv_release.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"can_j1939\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__j1939_priv_release\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/can/j1939/main.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: 0x%p\0A\00", [22 x i8] zeroinitializer }, align 32
@__j1939_priv_release.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__j1939_priv_release.__already_done.5 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__j1939_priv_release.__already_done.6 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"j1939_netdev_lock\00", [46 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@j1939_priv_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@j1939_priv_create.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"j1939_priv_create\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s : 0x%p\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"j1939\00", [26 x i8] zeroinitializer }, align 32
@j1939_can_recv.__print_once = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: sa is broadcast address, ignoring!\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.j1939_can_recv = private unnamed_addr constant [15 x i8] c"j1939_can_recv\00", align 1
@j1939_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016can: SAE J1939\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"j1939_module_init\00", [46 x i8] zeroinitializer }, align 32
@j1939_module_init._entry_ptr = internal global ptr @j1939_module_init._entry, section ".printk_index", align 4
@j1939_module_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013can: registration of j1939 protocol failed\0A\00", [50 x i8] zeroinitializer }, align 32
@j1939_module_init._entry_ptr.18 = internal global ptr @j1939_module_init._entry.16, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"j1939_netdev_lock\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 273, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"j1939_netdev_notifier\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 383, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 160, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 125, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 135, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 142, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 187, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 80, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 392, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [24 x i8] c"../net/can/j1939/main.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 400, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias462, ptr @__UNIQUE_ID_author461, ptr @__UNIQUE_ID_description458, ptr @__UNIQUE_ID_file459, ptr @__UNIQUE_ID_license460, ptr @__exitcall_j1939_module_exit, ptr @__initcall__kmod_can_j1939__467_419_j1939_module_init6, ptr @j1939_module_exit, ptr @j1939_module_init._entry, ptr @j1939_module_init._entry.16, ptr @j1939_module_init._entry_ptr, ptr @j1939_module_init._entry_ptr.18, ptr @j1939_netdev_lock, ptr @j1939_netdev_start.__key, ptr @.str, ptr @j1939_netdev_notifier, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.7, ptr @j1939_priv_create.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_netdev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_netdev_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_priv_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j1939_module_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_priv_put(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !68

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call fastcc void @__j1939_priv_release(ptr noundef %kref) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__j1939_priv_release(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -2104
  %ndev1 = getelementptr i8, ptr %kref, i32 -2052
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__j1939_priv_release.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__j1939_priv_release, %if.then)) #9
          to label %do.end8 [label %if.then], !srcloc !70

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @__j1939_priv_release.__UNIQUE_ID_ddebug466, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %add.ptr) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %active_session_list = getelementptr i8, ptr %kref, i32 4
  %4 = ptrtoint ptr %active_session_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active_session_list, align 4
  %cmp.i.not = icmp eq ptr %5, %active_session_list
  br i1 %cmp.i.not, label %do.end8.if.end54_crit_edge, label %land.rhs

do.end8.if.end54_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.rhs:                                         ; preds = %do.end8
  %.b192 = load i1, ptr @__j1939_priv_release.__already_done, align 1
  br i1 %.b192, label %land.rhs.if.end54_crit_edge, label %if.then28, !prof !68

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.then28:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__j1939_priv_release.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 162, i32 noundef 9, ptr noundef null) #9
  br label %if.end54

if.end54:                                         ; preds = %if.then28, %land.rhs.if.end54_crit_edge, %do.end8.if.end54_crit_edge
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %add.ptr, align 4
  %cmp.i193.not = icmp eq ptr %7, %add.ptr
  br i1 %cmp.i193.not, label %if.end54.if.end111_crit_edge, label %land.rhs73

if.end54.if.end111_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

land.rhs73:                                       ; preds = %if.end54
  %.b188191 = load i1, ptr @__j1939_priv_release.__already_done.5, align 1
  br i1 %.b188191, label %land.rhs73.if.end111_crit_edge, label %if.then84, !prof !68

land.rhs73.if.end111_crit_edge:                   ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then84:                                        ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__j1939_priv_release.__already_done.5, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 163, i32 noundef 9, ptr noundef null) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then84, %land.rhs73.if.end111_crit_edge, %if.end54.if.end111_crit_edge
  %j1939_socks = getelementptr i8, ptr %kref, i32 104
  %8 = ptrtoint ptr %j1939_socks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %j1939_socks, align 4
  %cmp.i195.not = icmp eq ptr %9, %j1939_socks
  br i1 %cmp.i195.not, label %if.end111.if.end168_crit_edge, label %land.rhs130

if.end111.if.end168_crit_edge:                    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

land.rhs130:                                      ; preds = %if.end111
  %.b189190 = load i1, ptr @__j1939_priv_release.__already_done.6, align 1
  br i1 %.b189190, label %land.rhs130.if.end168_crit_edge, label %if.then141, !prof !68

land.rhs130.if.end168_crit_edge:                  ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end168

if.then141:                                       ; preds = %land.rhs130
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__j1939_priv_release.__already_done.6, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 164, i32 noundef 9, ptr noundef null) #9
  br label %if.end168

if.end168:                                        ; preds = %if.then141, %land.rhs130.if.end168_crit_edge, %if.end111.if.end168_crit_edge
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end168.dev_put.exit_crit_edge, label %do.body1.i

if.end168.dev_put.exit_crit_edge:                 ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end168
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !72
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !73

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #9, !srcloc !74
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end168.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_priv_get(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !73

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @j1939_netdev_start(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @j1939_netdev_lock) #9
  %call = tail call fastcc ptr @j1939_priv_get_by_ndev_locked(ptr noundef %ndev)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %rx_kref = getelementptr inbounds %struct.j1939_priv, ptr %call, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_kref, ptr %rx_kref, i32 1, ptr elementtype(i32) %rx_kref) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !73

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rx_kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  %call1 = tail call fastcc ptr @j1939_priv_create(ptr noundef %ndev)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @j1939_tp_init(ptr noundef nonnull %call1) #9
  %j1939_socks_lock = getelementptr inbounds %struct.j1939_priv, ptr %call1, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %j1939_socks_lock, ptr noundef nonnull @.str, ptr noundef nonnull @j1939_netdev_start.__key, i16 noundef signext 3) #9
  %j1939_socks = getelementptr inbounds %struct.j1939_priv, ptr %call1, i32 0, i32 9
  %2 = ptrtoint ptr %j1939_socks to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %j1939_socks, ptr %j1939_socks, align 4
  %prev.i = getelementptr inbounds %struct.j1939_priv, ptr %call1, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %j1939_socks, ptr %prev.i, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @j1939_netdev_lock) #9
  %call7 = tail call fastcc ptr @j1939_priv_get_by_ndev_locked(ptr noundef %ndev)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %rx_kref10 = getelementptr inbounds %struct.j1939_priv, ptr %call7, i32 0, i32 10
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_kref10, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %rx_kref10, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_kref10, ptr %rx_kref10, i32 1, ptr elementtype(i32) %rx_kref10) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i39)
  %tobool1.not.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i39, 0
  br i1 %tobool1.not.i.i.i.i40, label %if.then9.if.end15.sink.split.i.i.i.i45_crit_edge, label %if.else.i.i.i.i43, !prof !73

if.then9.if.end15.sink.split.i.i.i.i45_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i45

if.else.i.i.i.i43:                                ; preds = %if.then9
  %add.i.i.i.i41 = add i32 %asmresult.i.i.i.i.i.i39, 1
  %5 = or i32 %add.i.i.i.i41, %asmresult.i.i.i.i.i.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i42 = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i42, label %if.else.i.i.i.i43.kref_get.exit46_crit_edge, label %if.else.i.i.i.i43.if.end15.sink.split.i.i.i.i45_crit_edge, !prof !68

if.else.i.i.i.i43.if.end15.sink.split.i.i.i.i45_crit_edge: ; preds = %if.else.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i45

if.else.i.i.i.i43.kref_get.exit46_crit_edge:      ; preds = %if.else.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit46

if.end15.sink.split.i.i.i.i45:                    ; preds = %if.else.i.i.i.i43.if.end15.sink.split.i.i.i.i45_crit_edge, %if.then9.if.end15.sink.split.i.i.i.i45_crit_edge
  %.sink.i.i.i.i44 = phi i32 [ 2, %if.then9.if.end15.sink.split.i.i.i.i45_crit_edge ], [ 1, %if.else.i.i.i.i43.if.end15.sink.split.i.i.i.i45_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rx_kref10, i32 noundef %.sink.i.i.i.i44) #9
  br label %kref_get.exit46

kref_get.exit46:                                  ; preds = %if.end15.sink.split.i.i.i.i45, %if.else.i.i.i.i43.kref_get.exit46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  %tobool.not.i = icmp eq ptr %ndev, null
  br i1 %tobool.not.i, label %kref_get.exit46.dev_put.exit_crit_edge, label %do.body1.i

kref_get.exit46.dev_put.exit_crit_edge:           ; preds = %kref_get.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit

do.body1.i:                                       ; preds = %kref_get.exit46
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !72
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !73

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !74
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %kref_get.exit46.dev_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 129
  %20 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.not.i.i.i = icmp eq i32 %21, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end11.j1939_priv_set.exit_crit_edge

if.end11.j1939_priv_set.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_set.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 128
  %22 = ptrtoint ptr %ml_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ml_priv.i.i.i, align 8
  br label %j1939_priv_set.exit

j1939_priv_set.exit:                              ; preds = %if.end.i.i.i, %if.end11.j1939_priv_set.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %23, %if.end.i.i.i ], [ null, %if.end11.j1939_priv_set.exit_crit_edge ]
  %j1939_priv.i = getelementptr inbounds %struct.can_ml_priv, ptr %retval.0.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %j1939_priv.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1, ptr %j1939_priv.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  %ndev1.i = getelementptr inbounds %struct.j1939_priv, ptr %call1, i32 0, i32 2
  %25 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev1.i, align 4
  %kref.i.i = getelementptr inbounds %struct.j1939_priv, ptr %call1, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %j1939_priv_set.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !73

j1939_priv_set.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %j1939_priv_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %j1939_priv_set.exit
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %28 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %.not.i.i.i.i.i.i = icmp sgt i32 %28, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.j1939_priv_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.j1939_priv_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %j1939_priv_set.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %j1939_priv_set.exit.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %j1939_priv_get.exit.i

j1939_priv_get.exit.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.j1939_priv_get.exit.i_crit_edge
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 127
  %29 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nd_net.i.i, align 4
  %call2.i = tail call i32 @can_rx_register(ptr noundef %30, ptr noundef %26, i32 noundef -2147483648, i32 noundef -1073741824, ptr noundef nonnull @j1939_can_recv, ptr noundef nonnull %call1, ptr noundef nonnull @.str.11, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i, label %j1939_priv_get.exit.i.cleanup_crit_edge

j1939_priv_get.exit.i.cleanup_crit_edge:          ; preds = %j1939_priv_get.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %j1939_priv_get.exit.i
  %call.i.i.i.i.i.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i11.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i11.i, label %if.end5.i.i.i.i.i.i.out_priv_put_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.out_priv_put_crit_edge:       ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_priv_put

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #9
  br label %out_priv_put

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call fastcc void @__j1939_priv_release(ptr noundef %kref.i.i) #9
  br label %out_priv_put

out_priv_put:                                     ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.out_priv_put_crit_edge
  %32 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.not.i.i.i48 = icmp eq i32 %33, 1
  br i1 %cmp.not.i.i.i48, label %if.end.i.i.i50, label %out_priv_put.j1939_priv_set.exit53_crit_edge

out_priv_put.j1939_priv_set.exit53_crit_edge:     ; preds = %out_priv_put
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_set.exit53

if.end.i.i.i50:                                   ; preds = %out_priv_put
  call void @__sanitizer_cov_trace_pc() #11
  %ml_priv.i.i.i49 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 128
  %34 = ptrtoint ptr %ml_priv.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ml_priv.i.i.i49, align 8
  br label %j1939_priv_set.exit53

j1939_priv_set.exit53:                            ; preds = %if.end.i.i.i50, %out_priv_put.j1939_priv_set.exit53_crit_edge
  %retval.0.i.i.i51 = phi ptr [ %35, %if.end.i.i.i50 ], [ null, %out_priv_put.j1939_priv_set.exit53_crit_edge ]
  %j1939_priv.i52 = getelementptr inbounds %struct.can_ml_priv, ptr %retval.0.i.i.i51, i32 0, i32 1
  %36 = ptrtoint ptr %j1939_priv.i52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %j1939_priv.i52, align 4
  %tobool.not.i54 = icmp eq ptr %ndev, null
  br i1 %tobool.not.i54, label %j1939_priv_set.exit53.dev_put.exit66_crit_edge, label %do.body1.i63

j1939_priv_set.exit53.dev_put.exit66_crit_edge:   ; preds = %j1939_priv_set.exit53
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit66

do.body1.i63:                                     ; preds = %j1939_priv_set.exit53
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %pcpu_refcnt.i55 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i55, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i56 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i56 to ptr
  %cpu.i57 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i57, align 4
  %arrayidx.i58 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i58, align 4
  %add.i59 = add i32 %46, %40
  %47 = inttoptr i32 %add.i59 to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i60 = add i32 %49, -1
  store i32 %add13.i60, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !72
  %and.i.i.i61 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i61)
  %tobool24.not.i62 = icmp eq i32 %and.i.i.i61, 0
  br i1 %tobool24.not.i62, label %if.then28.i64, label %do.body1.i63.do.end30.i65_crit_edge, !prof !73

do.body1.i63.do.end30.i65_crit_edge:              ; preds = %do.body1.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i65

if.then28.i64:                                    ; preds = %do.body1.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i65

do.end30.i65:                                     ; preds = %if.then28.i64, %do.body1.i63.do.end30.i65_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #9, !srcloc !74
  br label %dev_put.exit66

dev_put.exit66:                                   ; preds = %do.end30.i65, %j1939_priv_set.exit53.dev_put.exit66_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1) #9
  %51 = inttoptr i32 %call2.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit66, %j1939_priv_get.exit.i.cleanup_crit_edge, %dev_put.exit, %if.end.cleanup_crit_edge, %kref_get.exit
  %retval.0 = phi ptr [ %call, %kref_get.exit ], [ %call7, %dev_put.exit ], [ %51, %dev_put.exit66 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ %call1, %j1939_priv_get.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_priv_get_by_ndev_locked(ptr nocapture noundef readonly %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @j1939_netdev_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !73

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 234, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ml_priv_type.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 129
  %1 = ptrtoint ptr %ml_priv_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ml_priv_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not.i.i.i = icmp eq i32 %2, 1
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.end.j1939_ndev_to_priv.exit_crit_edge

if.end.j1939_ndev_to_priv.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_ndev_to_priv.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ml_priv.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 128
  %3 = ptrtoint ptr %ml_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ml_priv.i.i.i, align 8
  br label %j1939_ndev_to_priv.exit

j1939_ndev_to_priv.exit:                          ; preds = %if.end.i.i.i, %if.end.j1939_ndev_to_priv.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %4, %if.end.i.i.i ], [ null, %if.end.j1939_ndev_to_priv.exit_crit_edge ]
  %j1939_priv.i = getelementptr inbounds %struct.can_ml_priv, ptr %retval.0.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %j1939_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %j1939_priv.i, align 4
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %j1939_ndev_to_priv.exit.if.end27_crit_edge, label %if.then26

j1939_ndev_to_priv.exit.if.end27_crit_edge:       ; preds = %j1939_ndev_to_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %j1939_ndev_to_priv.exit
  %kref.i = getelementptr inbounds %struct.j1939_priv, ptr %6, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then26.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.then26.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then26
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end27_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end27_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then26.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then26.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end27_crit_edge, %j1939_ndev_to_priv.exit.if.end27_crit_edge
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @j1939_priv_create(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2224) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %call7.i.i, i32 0, i32 1
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @j1939_priv_create.__key) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %ndev1 = getelementptr inbounds %struct.j1939_priv, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %ndev1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ndev, ptr %ndev1, align 4
  %kref = getelementptr inbounds %struct.j1939_priv, ptr %call7.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %kref, align 8
  %rx_kref = getelementptr inbounds %struct.j1939_priv, ptr %call7.i.i, i32 0, i32 10
  %call.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_kref, i32 noundef 4) #9
  %5 = ptrtoint ptr %rx_kref to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %rx_kref, align 8
  %tobool.not.i = icmp eq ptr %ndev, null
  br i1 %tobool.not.i, label %do.body.dev_hold.exit_crit_edge, label %do.body1.i

do.body.dev_hold.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %do.body
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !71
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !56) #9
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !72
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !73

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #9, !srcloc !74
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %do.body.dev_hold.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @j1939_priv_create.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@j1939_priv_create, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !70

if.then8:                                         ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @j1939_priv_create.__UNIQUE_ID_ddebug465, ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %dev_hold.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_tp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @j1939_netdev_stop(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_kref = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 10
  %call.i = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %rx_kref, ptr noundef nonnull @j1939_netdev_lock) #9
  br i1 %call.i, label %if.then.i, label %entry.kref_put_lock.exit_crit_edge

entry.kref_put_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put_lock.exit

if.then.i:                                        ; preds = %entry
  %ndev1.i.i.i = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %ndev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1.i.i.i, align 4
  %nd_net.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i.i.i, align 4
  tail call void @can_rx_unregister(ptr noundef %3, ptr noundef %1, i32 noundef -2147483648, i32 noundef -1073741824, ptr noundef nonnull @j1939_can_recv, ptr noundef %priv) #9
  %kref.i.i.i.i = getelementptr %struct.j1939_priv, ptr %priv, i32 0, i32 4
  %call.i.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %kref.i.i.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i.i.i, ptr %kref.i.i.i.i, i32 1, ptr elementtype(i32) %kref.i.i.i.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.j1939_can_rx_unregister.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.i.i.i.j1939_can_rx_unregister.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_can_rx_unregister.exit.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i.i.i, i32 noundef 3) #9
  br label %j1939_can_rx_unregister.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call fastcc void @__j1939_priv_release(ptr noundef %kref.i.i.i.i) #9
  br label %j1939_can_rx_unregister.exit.i.i

j1939_can_rx_unregister.exit.i.i:                 ; preds = %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.j1939_can_rx_unregister.exit.i.i_crit_edge
  tail call void @j1939_ecu_unmap_all(ptr noundef %priv) #9
  %5 = ptrtoint ptr %ndev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndev1.i.i.i, align 4
  %ml_priv_type.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 129
  %7 = ptrtoint ptr %ml_priv_type.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ml_priv_type.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not.i.i.i.i.i = icmp eq i32 %8, 1
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %j1939_can_rx_unregister.exit.i.i.__j1939_rx_release.exit.i_crit_edge

j1939_can_rx_unregister.exit.i.i.__j1939_rx_release.exit.i_crit_edge: ; preds = %j1939_can_rx_unregister.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__j1939_rx_release.exit.i

if.end.i.i.i.i.i:                                 ; preds = %j1939_can_rx_unregister.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ml_priv.i.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 128
  %9 = ptrtoint ptr %ml_priv.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ml_priv.i.i.i.i.i, align 8
  br label %__j1939_rx_release.exit.i

__j1939_rx_release.exit.i:                        ; preds = %if.end.i.i.i.i.i, %j1939_can_rx_unregister.exit.i.i.__j1939_rx_release.exit.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %10, %if.end.i.i.i.i.i ], [ null, %j1939_can_rx_unregister.exit.i.i.__j1939_rx_release.exit.i_crit_edge ]
  %j1939_priv.i.i.i = getelementptr inbounds %struct.can_ml_priv, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %j1939_priv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %j1939_priv.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  br label %kref_put_lock.exit

kref_put_lock.exit:                               ; preds = %__j1939_rx_release.exit.i, %entry.kref_put_lock.exit_crit_edge
  %kref.i = getelementptr inbounds %struct.j1939_priv, ptr %priv, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %kref_put_lock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %j1939_priv_put.exit

if.then.i.i:                                      ; preds = %kref_put_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call fastcc void @__j1939_priv_release(ptr noundef %kref.i) #9
  br label %j1939_priv_put.exit

j1939_priv_put.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @j1939_send_one(ptr noundef %priv, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pgn, align 8
  %and.i = and i32 %1, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 61440
  %storemerge.v = select i1 %cmp.i.not, i32 262143, i32 261888
  %storemerge = and i32 %storemerge.v, %1
  %2 = ptrtoint ptr %pgn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %pgn, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 41
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %priority, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %4)
  %cmp = icmp ugt i8 %4, 7
  br i1 %cmp, label %if.then8, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 6, ptr %priority, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %entry.if.end10_crit_edge
  %call11 = tail call i32 @j1939_ac_fixup(ptr noundef %priv, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end15, label %failed, !prof !68

if.end15:                                         ; preds = %if.end10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %call16 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 8) #9
  %sub = sub i32 8, %7
  %call17 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub) #9
  %8 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %priority, align 1
  %conv19 = zext i8 %9 to i32
  %shl = shl i32 %conv19, 26
  %10 = ptrtoint ptr %pgn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pgn, align 8
  %shl22 = shl i32 %11, 8
  %sa = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 36
  %12 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sa, align 4
  %conv25 = zext i8 %13 to i32
  %or = or i32 %shl22, %shl
  %or23 = or i32 %or, %conv25
  %or26 = or i32 %or23, -2147483648
  %and.i61 = and i32 %11, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 61440, i32 %and.i61)
  %cmp.i62.not = icmp eq i32 %and.i61, 61440
  br i1 %cmp.i62.not, label %if.end15.if.end35_crit_edge, label %if.then30

if.end15.if.end35_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then30:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %da = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 37
  %14 = ptrtoint ptr %da to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %da, align 1
  %conv32 = zext i8 %15 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %or34 = or i32 %shl33, %or26
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end15.if.end35_crit_edge
  %canid.0 = phi i32 [ %or34, %if.then30 ], [ %or26, %if.end15.if.end35_crit_edge ]
  %16 = ptrtoint ptr %call16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %canid.0, ptr %call16, align 8
  %conv36 = trunc i32 %7 to i8
  %17 = getelementptr inbounds %struct.can_frame, ptr %call16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36, ptr %17, align 4
  %call37 = tail call i32 @can_send(ptr noundef %skb, i32 noundef 1) #9
  br label %cleanup

failed:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end35
  %retval.0 = phi i32 [ %call11, %failed ], [ %call37, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_ac_fixup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @j1939_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @can_proto_unregister(ptr noundef nonnull @j1939_can_proto) #9
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @j1939_netdev_notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @j1939_netdev_notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @can_proto_register(ptr noundef nonnull @j1939_can_proto) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  %call10 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @j1939_netdev_notifier) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @j1939_can_recv(ptr noundef %iskb, ptr noundef %data) #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_clone(ptr noundef %iskb, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %kref.i = getelementptr inbounds %struct.j1939_priv, ptr %data, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !73

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.j1939_priv_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !68

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.j1939_priv_get.exit_crit_edge:  ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %j1939_priv_get.exit

j1939_priv_get.exit:                              ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.j1939_priv_get.exit_crit_edge
  %2 = getelementptr inbounds %struct.sk_buff, ptr %iskb, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %j1939_priv_get.exit.can_skb_set_owner.exit_crit_edge, label %land.lhs.true.i

j1939_priv_get.exit.can_skb_set_owner.exit_crit_edge: ; preds = %j1939_priv_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_skb_set_owner.exit

land.lhs.true.i:                                  ; preds = %j1939_priv_get.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i123 = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %5 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %skc_refcnt.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %land.lhs.true.i
  %7 = phi i32 [ %6, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 %10, i32 %add.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !76
  %asmresult.i.i.i.i.i.i.i124 = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i124, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !68

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge, label %if.then10.i.i.i.i, !prof !68

if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc_not_zero.exit.i

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %old.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i

refcount_inc_not_zero.exit.i:                     ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.i.refcount_inc_not_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.not.i = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  br i1 %tobool12.i.i.i.not.i, label %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, label %if.then.i

refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %can_skb_set_owner.exit

if.then.i:                                        ; preds = %refcount_inc_not_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sock_efree, ptr %destructor.i, align 4
  %18 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %4, ptr %18, align 4
  br label %can_skb_set_owner.exit

can_skb_set_owner.exit:                           ; preds = %if.then.i, %refcount_inc_not_zero.exit.i.can_skb_set_owner.exit_crit_edge, %j1939_priv_get.exit.can_skb_set_owner.exit_crit_edge
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %20 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data1, align 4
  %call2 = call ptr @skb_pull(ptr noundef nonnull %call, i32 noundef 8) #9
  %22 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 4
  %25 = call i8 @llvm.umin.i8(i8 %24, i8 8)
  %cond = zext i8 %25 to i32
  call void @skb_trim(ptr noundef nonnull %call, i32 noundef %cond) #9
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3
  %26 = call ptr @memset(ptr %cb.i, i32 0, i32 48)
  %tskey = getelementptr inbounds %struct.sk_buff, ptr %iskb, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %tskey to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tskey, align 8
  %tskey9 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %tskey9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tskey9, align 8
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %21, align 8
  %shr = lshr i32 %31, 26
  %32 = trunc i32 %shr to i8
  %conv10 = and i8 %32, 7
  %priority = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 41
  %33 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv10, ptr %priority, align 1
  %34 = load i32, ptr %21, align 8
  %conv12 = trunc i32 %34 to i8
  %sa = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 36
  %35 = ptrtoint ptr %sa to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv12, ptr %sa, align 4
  %36 = load i32, ptr %21, align 8
  %shr14 = lshr i32 %36, 8
  %and15 = and i32 %shr14, 262143
  %pgn = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 32
  %37 = ptrtoint ptr %pgn to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and15, ptr %pgn, align 8
  %type = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 38
  %38 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %conv12)
  %cmp.i.not = icmp eq i8 %conv12, -1
  br i1 %cmp.i.not, label %do.body, label %if.end25

do.body:                                          ; preds = %can_skb_set_owner.exit
  %.b122 = load i1, ptr @j1939_can_recv.__print_once, align 1
  br i1 %.b122, label %do.body.done_crit_edge, label %if.then23

do.body.done_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @j1939_can_recv.__print_once, align 1
  %ndev = getelementptr inbounds %struct.j1939_priv, ptr %data, i32 0, i32 2
  %39 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ndev, align 4
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.12, ptr noundef %40, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.j1939_can_recv) #13
  br label %done

if.end25:                                         ; preds = %can_skb_set_owner.exit
  %41 = and i32 %36, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %41)
  %cmp.i126.not = icmp eq i32 %41, 15728640
  br i1 %cmp.i126.not, label %if.end25.if.end39_crit_edge, label %if.then29

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %conv32 = trunc i32 %shr14 to i8
  %and36 = and i32 %shr14, 261888
  %42 = ptrtoint ptr %pgn to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and36, ptr %pgn, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end25.if.end39_crit_edge
  %conv32.sink = phi i8 [ %conv32, %if.then29 ], [ -1, %if.end25.if.end39_crit_edge ]
  %43 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 37
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv32.sink, ptr %43, align 1
  %lock = getelementptr inbounds %struct.j1939_priv, ptr %data, i32 0, i32 1
  call void @_raw_read_lock_bh(ptr noundef %lock) #9
  %45 = ptrtoint ptr %sa to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sa, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %46)
  %cmp.i127 = icmp ult i8 %46, -2
  br i1 %cmp.i127, label %land.lhs.true, label %if.end39.if.end50_crit_edge

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end39
  %idxprom = zext i8 %46 to i32
  %nusers = getelementptr %struct.j1939_priv, ptr %data, i32 0, i32 3, i32 %idxprom, i32 1
  %47 = ptrtoint ptr %nusers to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nusers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool46.not = icmp eq i32 %48, 0
  br i1 %tobool46.not, label %land.lhs.true.if.end50_crit_edge, label %if.then47

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 40
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags, align 8
  %51 = or i8 %50, 1
  store i8 %51, ptr %flags, align 8
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %land.lhs.true.if.end50_crit_edge, %if.end39.if.end50_crit_edge
  %52 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %43, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %53)
  %cmp.i128 = icmp ult i8 %53, -2
  br i1 %cmp.i128, label %land.lhs.true55, label %if.end50.if.end68_crit_edge

if.end50.if.end68_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true55:                                  ; preds = %if.end50
  %idxprom59 = zext i8 %53 to i32
  %nusers61 = getelementptr %struct.j1939_priv, ptr %data, i32 0, i32 3, i32 %idxprom59, i32 1
  %54 = ptrtoint ptr %nusers61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nusers61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool62.not = icmp eq i32 %55, 0
  br i1 %tobool62.not, label %land.lhs.true55.if.end68_crit_edge, label %if.then63

land.lhs.true55.if.end68_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then63:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  %flags64 = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 40
  %56 = ptrtoint ptr %flags64 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags64, align 8
  %58 = or i8 %57, 2
  store i8 %58, ptr %flags64, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %land.lhs.true55.if.end68_crit_edge, %if.end50.if.end68_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  call void @j1939_ac_recv(ptr noundef %data, ptr noundef nonnull %call) #9
  %call70 = call i32 @j1939_tp_recv(ptr noundef %data, ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.done_crit_edge

if.end68.done_crit_edge:                          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  call void @j1939_simple_recv(ptr noundef %data, ptr noundef nonnull %call) #9
  call void @j1939_sk_recv(ptr noundef %data, ptr noundef nonnull %call) #9
  br label %done

done:                                             ; preds = %if.end73, %if.end68.done_crit_edge, %if.then23, %do.body.done_crit_edge
  %call.i.i.i.i.i.i.i130 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %done
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i131 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i131, label %if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %j1939_priv_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %j1939_priv_put.exit

if.then.i.i:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  call fastcc void @__j1939_priv_release(ptr noundef %kref.i) #9
  br label %j1939_priv_put.exit

j1939_priv_put.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.j1939_priv_put.exit_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %j1939_priv_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ac_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_tp_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_simple_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_ecu_unmap_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @j1939_netdev_notify(ptr nocapture noundef readnone %nb, i32 noundef %msg, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ml_priv_type.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 129
  %2 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i.i, label %can_get_ml_priv.exit, label %entry.notify_done_crit_edge

entry.notify_done_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_done

can_get_ml_priv.exit:                             ; preds = %entry
  %ml_priv.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 128
  %4 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ml_priv.i.i, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %can_get_ml_priv.exit.notify_done_crit_edge, label %if.end

can_get_ml_priv.exit.notify_done_crit_edge:       ; preds = %can_get_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_done

if.end:                                           ; preds = %can_get_ml_priv.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @j1939_netdev_lock) #9
  %call.i = tail call fastcc ptr @j1939_priv_get_by_ndev_locked(ptr noundef %1) #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @j1939_netdev_lock) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.notify_done_crit_edge, label %if.end5

if.end.notify_done_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_done

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %msg)
  %cond = icmp eq i32 %msg, 2
  br i1 %cond, label %sw.bb, label %if.end5.sw.epilog_crit_edge

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @j1939_cancel_active_session(ptr noundef nonnull %call.i, ptr noundef null) #9
  tail call void @j1939_sk_netdev_event_netdown(ptr noundef nonnull %call.i) #9
  tail call void @j1939_ecu_unmap_all(ptr noundef nonnull %call.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end5.sw.epilog_crit_edge
  %kref.i = getelementptr inbounds %struct.j1939_priv, ptr %call.i, i32 0, i32 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #9
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #9, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.notify_done_crit_edge, label %if.then10.i.i.i.i.i, !prof !68

if.end5.i.i.i.i.i.notify_done_crit_edge:          ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %notify_done

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #9
  br label %notify_done

if.then.i.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  tail call fastcc void @__j1939_priv_release(ptr noundef %kref.i) #9
  br label %notify_done

notify_done:                                      ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.notify_done_crit_edge, %if.end.notify_done_crit_edge, %can_get_ml_priv.exit.notify_done_crit_edge, %entry.notify_done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @j1939_cancel_active_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @j1939_sk_netdev_event_netdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_description458, !1, !"__UNIQUE_ID_description458", i1 false, i1 false}
!1 = !{!"../net/can/j1939/main.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_file459, !3, !"__UNIQUE_ID_file459", i1 false, i1 false}
!3 = !{!"../net/can/j1939/main.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_license460, !3, !"__UNIQUE_ID_license460", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author461, !6, !"__UNIQUE_ID_author461", i1 false, i1 false}
!6 = !{!"../net/can/j1939/main.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias462, !8, !"__UNIQUE_ID_alias462", i1 false, i1 false}
!8 = !{!"../net/can/j1939/main.c", i32 26, i32 1}
!9 = !{ptr @j1939_netdev_start.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../net/can/j1939/main.c", i32 273, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_can_j1939__467_419_j1939_module_init6, !13, !"__initcall__kmod_can_j1939__467_419_j1939_module_init6", i1 false, i1 false}
!13 = !{!"../net/can/j1939/main.c", i32 419, i32 1}
!14 = !{ptr @__exitcall_j1939_module_exit, !15, !"__exitcall_j1939_module_exit", i1 false, i1 false}
!15 = !{!"../net/can/j1939/main.c", i32 420, i32 1}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/can/j1939/main.c", i32 160, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__j1939_priv_release.__UNIQUE_ID_ddebug466, !17, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../net/can/j1939/main.c", i32 162, i32 2}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/can/j1939/main.c", i32 163, i32 2}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../net/can/j1939/main.c", i32 164, i32 2}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/can/j1939/main.c", i32 125, i32 8}
!30 = !{ptr @j1939_netdev_lock, !29, !"j1939_netdev_lock", i1 false, i1 false}
!31 = !{ptr @j1939_priv_create.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../net/can/j1939/main.c", i32 135, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/can/j1939/main.c", i32 142, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @j1939_priv_create.__UNIQUE_ID_ddebug465, !35, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/can/j1939/main.c", i32 187, i32 32}
!40 = distinct !{null, !41, !"__print_once", i1 false, i1 false}
!41 = !{!"../net/can/j1939/main.c", i32 80, i32 3}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__func__.j1939_can_recv, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @j1939_netdev_notifier, !46, !"j1939_netdev_notifier", i1 false, i1 false}
!46 = !{!"../net/can/j1939/main.c", i32 383, i32 30}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/can/j1939/main.c", i32 392, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @j1939_module_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @j1939_module_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/can/j1939/main.c", i32 400, i32 3}
!54 = !{ptr @j1939_module_init._entry.16, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @j1939_module_init._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148355121}
!67 = !{i64 2148269585, i64 2148269617, i64 2148269646, i64 2148269680, i64 2148269711, i64 2148269734}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2149292939}
!70 = !{i64 2148747405, i64 2148747410, i64 2148747423, i64 2148747467, i64 2148747501, i64 2148747522}
!71 = !{i64 658071, i64 658132}
!72 = !{i64 660803}
!73 = !{!"branch_weights", i32 1, i32 2000}
!74 = !{i64 661088}
!75 = !{i64 2148267120, i64 2148267152, i64 2148267181, i64 2148267215, i64 2148267246, i64 2148267269}
!76 = !{i64 749326, i64 749350, i64 749371, i64 749388, i64 749405}
