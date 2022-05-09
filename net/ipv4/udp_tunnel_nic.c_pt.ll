; ModuleID = '/llk/IR_all_yes/net/ipv4/udp_tunnel_nic.c_pt.bc'
source_filename = "../net/ipv4/udp_tunnel_nic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.udp_tunnel_nic_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.153, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.153 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.udp_tunnel_nic = type { %struct.work_struct, ptr, i8, i32, i32, ptr }
%struct.udp_tunnel_nic_table_entry = type { i16, i8, i8, i16, i8 }
%struct.udp_tunnel_info = type { i16, i16, i16, i8 }
%struct.udp_tunnel_nic_info = type { ptr, ptr, ptr, ptr, i32, [4 x %struct.udp_tunnel_nic_table_info] }
%struct.udp_tunnel_nic_table_info = type { i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.udp_tunnel_nic_shared = type { ptr, %struct.list_head }
%struct.udp_tunnel_nic_shared_node = type { ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_udp_tunnel__571_959_udp_tunnel_nic_init_module7 = internal global ptr @udp_tunnel_nic_init_module, section ".initcall7.init", align 4
@udp_tunnel_nic_notifier_block = internal global %struct.notifier_block { ptr @udp_tunnel_nic_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@udp_tunnel_nic_ops = external dso_local local_unnamed_addr global ptr, align 4
@udp_tunnel_nic_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__exitcall_udp_tunnel_nic_cleanup_module = internal global ptr @udp_tunnel_nic_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file572 = internal constant [36 x i8] c"udp_tunnel.file=net/ipv4/udp_tunnel\00", section ".modinfo", align 1
@__UNIQUE_ID_license573 = internal constant [23 x i8] c"udp_tunnel.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"udp_tunnel_nic\00", [17 x i8] zeroinitializer }, align 32
@__udp_tunnel_nic_ops = internal constant %struct.udp_tunnel_nic_ops { ptr @__udp_tunnel_nic_get_port, ptr @__udp_tunnel_nic_set_port_priv, ptr @__udp_tunnel_nic_add_port, ptr @__udp_tunnel_nic_del_port, ptr @__udp_tunnel_nic_reset_ntf, ptr @__udp_tunnel_nic_dump_size, ptr @__udp_tunnel_nic_dump_write }, align 4
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"device assumes port 4789 will be used by vxlan tunnels\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/ipv4/udp_tunnel_nic.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UDP tunnel port sync failed for table %d: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@udp_tunnel_nic_entry_update_done.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"UDP tunnel port sync failed port %d type %s: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vxlan\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"geneve\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vxlan-gpe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__udp_tunnel_nic_reset_ntf.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"netdevice: %s%s: failed to register for UDP tunnel offloads: %d\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@udp_tunnel_nic_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&utn->work)\00", [34 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@udp_tunnel_drop_rx_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/net/udp_tunnel.h\00", [39 x i8] zeroinitializer }, align 32
@udp_tunnel_get_rx_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@switch.table.__udp_tunnel_nic_device_sync = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@switch.table.udp_tunnel_nic_netdevice_event = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"udp_tunnel_nic_workqueue\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 56, i32 33 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 938, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 514, i32 21 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 374, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 267, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 231, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 62, i32 10 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 64, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 66, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 68, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 557, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 991, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 900, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private constant [29 x i8] c"../net/ipv4/udp_tunnel_nic.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 730, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4963, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4975, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4976, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4977, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4978, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4979, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4980, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4983, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 4984, i32 9 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"../include/net/udp_tunnel.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 139, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [42 x i8] c"switch.table.__udp_tunnel_nic_device_sync\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [44 x i8] c"switch.table.udp_tunnel_nic_netdevice_event\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_file572, ptr @__UNIQUE_ID_license573, ptr @__exitcall_udp_tunnel_nic_cleanup_module, ptr @__initcall__kmod_udp_tunnel__571_959_udp_tunnel_nic_init_module7, ptr @udp_tunnel_nic_cleanup_module, ptr @udp_tunnel_nic_workqueue, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @udp_tunnel_nic_alloc.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.__udp_tunnel_nic_device_sync, ptr @switch.table.udp_tunnel_nic_netdevice_event], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_tunnel_nic_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udp_tunnel_nic_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__udp_tunnel_nic_device_sync to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.udp_tunnel_nic_netdevice_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_tunnel_nic_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #13
  store ptr %call, ptr @udp_tunnel_nic_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @rtnl_lock() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  store ptr @__udp_tunnel_nic_ops, ptr @udp_tunnel_nic_ops, align 4
  tail call void @rtnl_unlock() #13
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @udp_tunnel_nic_notifier_block) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %err_unset_ops

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_unset_ops:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @rtnl_lock() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  store ptr null, ptr @udp_tunnel_nic_ops, align 4
  tail call void @rtnl_unlock() #13
  %0 = load ptr, ptr @udp_tunnel_nic_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  br label %cleanup

cleanup:                                          ; preds = %err_unset_ops, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_unset_ops ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @udp_tunnel_nic_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @udp_tunnel_nic_notifier_block) #13
  tail call void @rtnl_lock() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @udp_tunnel_nic_ops to i32))
  store ptr null, ptr @udp_tunnel_nic_ops, align 4
  tail call void @rtnl_unlock() #13
  %0 = load ptr, ptr @udp_tunnel_nic_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__udp_tunnel_nic_get_port(ptr nocapture noundef readonly %dev, i32 noundef %table, i32 noundef %idx, ptr nocapture noundef writeonly %ti) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %0 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic, align 16
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %table
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %use_cnt = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %5, i32 %idx, i32 3
  %6 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %use_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2 = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %5, i32 %idx
  %8 = ptrtoint ptr %ti to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %ti, align 2
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx2, align 2
  %port2.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %11 = ptrtoint ptr %port2.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %port2.i, align 2
  %type.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %5, i32 %idx, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i, align 2
  %conv.i = zext i8 %13 to i16
  store i16 %conv.i, ptr %ti, align 2
  %hw_priv.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %5, i32 %idx, i32 4
  %14 = ptrtoint ptr %hw_priv.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hw_priv.i, align 2
  %hw_priv4.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 3
  %16 = ptrtoint ptr %hw_priv4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %hw_priv4.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @__udp_tunnel_nic_set_port_priv(ptr nocapture noundef readonly %dev, i32 noundef %table, i32 noundef %idx, i8 noundef zeroext %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %0 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic, align 16
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %table
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %hw_priv = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %5, i32 %idx, i32 4
  %6 = ptrtoint ptr %hw_priv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %priv, ptr %hw_priv, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__udp_tunnel_nic_add_port(ptr noundef %dev, ptr nocapture noundef readonly %ti) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %0 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %2 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end3_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

if.end3:                                          ; preds = %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %flags4 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %and5 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end3.if.end15_crit_edge, label %land.lhs.true7

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

land.lhs.true7:                                   ; preds = %if.end3
  %port = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %port, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4789, i16 %11)
  %cmp = icmp eq i16 %11, 4789
  br i1 %cmp, label %if.then9, label %land.lhs.true7.if.end15_crit_edge

land.lhs.true7.if.end15_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then9:                                         ; preds = %land.lhs.true7
  %12 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ti, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp11.not = icmp eq i16 %13, 1
  br i1 %cmp11.not, label %if.then9.cleanup_crit_edge, label %if.then13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1) #16
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true7.if.end15_crit_edge, %if.end3.if.end15_crit_edge
  %and.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end15.if.end.i_crit_edge, label %land.lhs.true.i

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end15
  %sa_family.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 1
  %14 = ptrtoint ptr %sa_family.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %sa_family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp.not.i = icmp eq i16 %15, 2
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end15.if.end.i_crit_edge
  %n_tables.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp211.not.i = icmp eq i32 %17, 0
  br i1 %cmp211.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %18 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ti, align 2
  %conv.i.i = zext i16 %19 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tunnel_types.i.i = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.012.i, i32 1
  %20 = ptrtoint ptr %tunnel_types.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tunnel_types.i.i, align 4
  %and.i.i = and i32 %21, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp ne i32 %and.i.i, 0
  %inc.i = add nuw i32 %i.012.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %17)
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  %or.cond.i = select i1 %tobool.i.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %udp_tunnel_nic_is_capable.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

udp_tunnel_nic_is_capable.exit:                   ; preds = %for.body.i
  br i1 %tobool.i.not.i, label %if.end18, label %udp_tunnel_nic_is_capable.exit.cleanup_crit_edge

udp_tunnel_nic_is_capable.exit.cleanup_crit_edge: ; preds = %udp_tunnel_nic_is_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end18:                                         ; preds = %udp_tunnel_nic_is_capable.exit
  %22 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp39.not.i = icmp eq i32 %23, 0
  br i1 %cmp39.not.i, label %if.end18.if.end22_crit_edge, label %for.cond2.preheader.lr.ph.i

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

for.cond2.preheader.lr.ph.i:                      ; preds = %if.end18
  %entries.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 5
  %port7.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc17.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %i.040.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %inc18.i, %for.inc17.i.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.040.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp335.not.i = icmp eq i32 %25, 0
  br i1 %cmp335.not.i, label %for.cond2.preheader.i.for.inc17.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.inc17.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc17.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %26 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %entries.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %27, i32 %i.040.i
  %28 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.i, align 4
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.036.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i50, %for.inc.i.for.body4.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %29, i32 %j.036.i
  %use_cnt.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %29, i32 %j.036.i, i32 3
  %30 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %use_cnt.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 0
  br i1 %cmp.i.i, label %udp_tunnel_nic_entry_is_free.exit.i, label %for.body4.i.land.lhs.true.i49_crit_edge

for.body4.i.land.lhs.true.i49_crit_edge:          ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i49

udp_tunnel_nic_entry_is_free.exit.i:              ; preds = %for.body4.i
  %flags.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %29, i32 %j.036.i, i32 2
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %udp_tunnel_nic_entry_is_free.exit.i.for.inc.i_crit_edge, label %udp_tunnel_nic_entry_is_free.exit.i.land.lhs.true.i49_crit_edge

udp_tunnel_nic_entry_is_free.exit.i.land.lhs.true.i49_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i49

udp_tunnel_nic_entry_is_free.exit.i.for.inc.i_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i49:                                ; preds = %udp_tunnel_nic_entry_is_free.exit.i.land.lhs.true.i49_crit_edge, %for.body4.i.land.lhs.true.i49_crit_edge
  %34 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx6.i, align 2
  %36 = ptrtoint ptr %port7.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %port7.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp9.i = icmp eq i16 %35, %37
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i49.for.inc.i_crit_edge

land.lhs.true.i49.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i49
  %type.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %29, i32 %j.036.i, i32 1
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type.i, align 2
  %40 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %ti, align 2
  %42 = zext i8 %39 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %42)
  %cmp15.not.i = icmp eq i16 %41, %42
  br i1 %cmp15.not.i, label %land.lhs.true11.i.for.inc.i_crit_edge, label %udp_tunnel_nic_has_collision.exit

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true.i49.for.inc.i_crit_edge, %udp_tunnel_nic_entry_is_free.exit.i.for.inc.i_crit_edge
  %inc.i50 = add nuw i32 %j.036.i, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %25
  br i1 %exitcond.not.i51, label %for.inc.i.for.inc17.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

for.inc.i.for.inc17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc17.i

for.inc17.i:                                      ; preds = %for.inc.i.for.inc17.i_crit_edge, %for.cond2.preheader.i.for.inc17.i_crit_edge
  %inc18.i = add nuw i32 %i.040.i, 1
  %exitcond43.not.i = icmp eq i32 %inc18.i, %23
  br i1 %exitcond43.not.i, label %for.inc17.i.if.end22_crit_edge, label %for.inc17.i.for.cond2.preheader.i_crit_edge

for.inc17.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

for.inc17.i.if.end22_crit_edge:                   ; preds = %for.inc17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

udp_tunnel_nic_has_collision.exit:                ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #15
  %missed.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 4
  %rem.i.i = and i32 %i.040.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %i.040.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %missed.i, i32 %div2.i.i
  %43 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %44, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup

if.end22:                                         ; preds = %for.inc17.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %call.i = tail call fastcc zeroext i1 @udp_tunnel_nic_try_existing(ptr noundef %dev, ptr noundef nonnull %3, ptr noundef %ti, i32 noundef 1) #13
  br i1 %call.i, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  %45 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp7.not.i = icmp eq i32 %46, 0
  br i1 %cmp7.not.i, label %if.then24.if.end26_crit_edge, label %for.body.lr.ph.i57

if.then24.if.end26_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

for.body.lr.ph.i57:                               ; preds = %if.then24
  %entries.i55 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 5
  %missed.i56 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 4
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.inc12.i.for.body.i62_crit_edge, %for.body.lr.ph.i57
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i57 ], [ %inc13.i, %for.inc12.i.for.body.i62_crit_edge ]
  %47 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %tunnel_types.i.i58 = getelementptr %struct.udp_tunnel_nic_info, ptr %48, i32 0, i32 5, i32 %i.08.i, i32 1
  %49 = ptrtoint ptr %tunnel_types.i.i58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tunnel_types.i.i58, align 4
  %51 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ti, align 2
  %conv.i.i59 = zext i16 %52 to i32
  %and.i.i60 = and i32 %50, %conv.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i60)
  %tobool.i.not.i61 = icmp eq i32 %and.i.i60, 0
  br i1 %tobool.i.not.i61, label %for.body.i62.for.inc12.i_crit_edge, label %for.cond1.preheader.i

for.body.i62.for.inc12.i_crit_edge:               ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc12.i

for.cond1.preheader.i:                            ; preds = %for.body.i62
  %arrayidx.i63 = getelementptr %struct.udp_tunnel_nic_info, ptr %48, i32 0, i32 5, i32 %i.08.i
  %53 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp24.not.i = icmp eq i32 %54, 0
  br i1 %cmp24.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %55 = ptrtoint ptr %entries.i55 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %entries.i55, align 4
  %arrayidx5.i64 = getelementptr ptr, ptr %56, i32 %i.08.i
  %57 = ptrtoint ptr %arrayidx5.i64 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx5.i64, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.critedge.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %j.05.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i70, %for.inc.critedge.i.for.body3.i_crit_edge ]
  %use_cnt.i.i65 = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %58, i32 %j.05.i, i32 3
  %59 = ptrtoint ptr %use_cnt.i.i65 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %use_cnt.i.i65, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp.i.i66 = icmp eq i16 %60, 0
  br i1 %cmp.i.i66, label %udp_tunnel_nic_entry_is_free.exit.i69, label %for.body3.i.for.inc.critedge.i_crit_edge

for.body3.i.for.inc.critedge.i_crit_edge:         ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.critedge.i

udp_tunnel_nic_entry_is_free.exit.i69:            ; preds = %for.body3.i
  %flags.i.i67 = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %58, i32 %j.05.i, i32 2
  %61 = ptrtoint ptr %flags.i.i67 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %flags.i.i67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i68 = icmp eq i8 %62, 0
  br i1 %tobool.not.i.i68, label %if.end9.i, label %udp_tunnel_nic_entry_is_free.exit.i69.for.inc.critedge.i_crit_edge

udp_tunnel_nic_entry_is_free.exit.i69.for.inc.critedge.i_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i69
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.critedge.i

if.end9.i:                                        ; preds = %udp_tunnel_nic_entry_is_free.exit.i69
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6.le.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %58, i32 %j.05.i
  %port.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %port.i, align 2
  %65 = ptrtoint ptr %arrayidx6.le.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %arrayidx6.le.i, align 2
  %66 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ti, align 2
  %conv.i = trunc i16 %67 to i8
  %type11.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %58, i32 %j.05.i, i32 1
  %68 = ptrtoint ptr %type11.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i, ptr %type11.i, align 2
  %69 = ptrtoint ptr %use_cnt.i.i65 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 1, ptr %use_cnt.i.i65, align 2
  %70 = ptrtoint ptr %flags.i.i67 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %flags.i.i67, align 1
  %need_sync.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 2
  %71 = ptrtoint ptr %need_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %need_sync.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %need_sync.i.i, align 4
  br label %if.end26

for.inc.critedge.i:                               ; preds = %udp_tunnel_nic_entry_is_free.exit.i69.for.inc.critedge.i_crit_edge, %for.body3.i.for.inc.critedge.i_crit_edge
  %inc.i70 = add nuw i32 %j.05.i, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %54
  br i1 %exitcond.not.i71, label %for.inc.critedge.i.for.end.i_crit_edge, label %for.inc.critedge.i.for.body3.i_crit_edge

for.inc.critedge.i.for.body3.i_crit_edge:         ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i

for.inc.critedge.i.for.end.i_crit_edge:           ; preds = %for.inc.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.critedge.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %rem.i.i72 = and i32 %i.08.i, 31
  %shl.i.i73 = shl nuw i32 1, %rem.i.i72
  %div2.i.i74 = lshr i32 %i.08.i, 5
  %add.ptr.i.i75 = getelementptr i32, ptr %missed.i56, i32 %div2.i.i74
  %72 = ptrtoint ptr %add.ptr.i.i75 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr.i.i75, align 4
  %or.i.i76 = or i32 %73, %shl.i.i73
  store i32 %or.i.i76, ptr %add.ptr.i.i75, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %for.end.i, %for.body.i62.for.inc12.i_crit_edge
  %inc13.i = add nuw i32 %i.08.i, 1
  %exitcond11.not.i = icmp eq i32 %inc13.i, %46
  br i1 %exitcond11.not.i, label %for.inc12.i.if.end26_crit_edge, label %for.inc12.i.for.body.i62_crit_edge

for.inc12.i.for.body.i62_crit_edge:               ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i62

for.inc12.i.if.end26_crit_edge:                   ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.end26:                                         ; preds = %for.inc12.i.if.end26_crit_edge, %if.end9.i, %if.then24.if.end26_crit_edge, %if.end22.if.end26_crit_edge
  %need_sync.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 2
  %74 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i = load i8, ptr %need_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i77 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i77, label %if.end26.cleanup_crit_edge, label %if.end.i81

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i81:                                       ; preds = %if.end26
  %75 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %flags.i79 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %flags.i79 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags.i79, align 4
  %and.i80 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool1.not.i = icmp eq i32 %and.i80, 0
  br i1 %tobool1.not.i, label %if.then3.i, label %if.end.i81.if.then9.i_crit_edge

if.end.i81.if.then9.i_crit_edge:                  ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then3.i:                                       ; preds = %if.end.i81
  tail call fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %dev, ptr noundef nonnull %3) #13
  %79 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load6.i = load i8, ptr %need_sync.i, align 4
  %80 = and i8 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool8.not.i = icmp eq i8 %80, 0
  br i1 %tobool8.not.i, label %if.then3.i.cleanup_crit_edge, label %if.then3.i.if.then9.i_crit_edge

if.then3.i.if.then9.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.i:                                       ; preds = %if.then3.i.if.then9.i_crit_edge, %if.end.i81.if.then9.i_crit_edge
  %81 = load ptr, ptr @udp_tunnel_nic_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %81, ptr noundef nonnull %3) #13
  %82 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load10.i = load i8, ptr %need_sync.i, align 4
  %bf.set.i = or i8 %bf.load10.i, 32
  store i8 %bf.set.i, ptr %need_sync.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.then3.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %udp_tunnel_nic_has_collision.exit, %udp_tunnel_nic_is_capable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.then13, %if.then9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__udp_tunnel_nic_del_port(ptr noundef %dev, ptr nocapture noundef readonly %ti) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %0 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %udp_tunnel_nic_info.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %2 = ptrtoint ptr %udp_tunnel_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic_info.i, align 4
  %flags.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %sa_family.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 1
  %6 = ptrtoint ptr %sa_family.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sa_family.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp.not.i = icmp eq i16 %7, 2
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %n_tables.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp211.not.i = icmp eq i32 %9, 0
  br i1 %cmp211.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %10 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ti, align 2
  %conv.i.i = zext i16 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %tunnel_types.i.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 %i.012.i, i32 1
  %12 = ptrtoint ptr %tunnel_types.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tunnel_types.i.i, align 4
  %and.i.i = and i32 %13, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp ne i32 %and.i.i, 0
  %inc.i = add nuw i32 %i.012.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  %or.cond.i = select i1 %tobool.i.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %udp_tunnel_nic_is_capable.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

udp_tunnel_nic_is_capable.exit:                   ; preds = %for.body.i
  br i1 %tobool.i.not.i, label %if.end2, label %udp_tunnel_nic_is_capable.exit.cleanup_crit_edge

udp_tunnel_nic_is_capable.exit.cleanup_crit_edge: ; preds = %udp_tunnel_nic_is_capable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end2:                                          ; preds = %udp_tunnel_nic_is_capable.exit
  %call.i = tail call fastcc zeroext i1 @udp_tunnel_nic_try_existing(ptr noundef %dev, ptr noundef nonnull %1, ptr noundef %ti, i32 noundef -1) #13
  %need_sync.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %need_sync.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i11 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i11, label %if.end2.cleanup_crit_edge, label %if.end.i15

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i15:                                       ; preds = %if.end2
  %15 = ptrtoint ptr %udp_tunnel_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udp_tunnel_nic_info.i, align 4
  %flags.i13 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i13, align 4
  %and.i14 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i14)
  %tobool1.not.i = icmp eq i32 %and.i14, 0
  br i1 %tobool1.not.i, label %if.then3.i, label %if.end.i15.if.then9.i_crit_edge

if.end.i15.if.then9.i_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then3.i:                                       ; preds = %if.end.i15
  tail call fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %dev, ptr noundef nonnull %1) #13
  %19 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load6.i = load i8, ptr %need_sync.i, align 4
  %20 = and i8 %bf.load6.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i = icmp eq i8 %20, 0
  br i1 %tobool8.not.i, label %if.then3.i.cleanup_crit_edge, label %if.then3.i.if.then9.i_crit_edge

if.then3.i.if.then9.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then9.i:                                       ; preds = %if.then3.i.if.then9.i_crit_edge, %if.end.i15.if.then9.i_crit_edge
  %21 = load ptr, ptr @udp_tunnel_nic_workqueue, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef nonnull %1) #13
  %22 = ptrtoint ptr %need_sync.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load10.i = load i8, ptr %need_sync.i, align 4
  %bf.set.i = or i8 %bf.load10.i, 32
  store i8 %bf.set.i, ptr %need_sync.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9.i, %if.then3.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %udp_tunnel_nic_is_capable.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__udp_tunnel_nic_reset_ntf(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %0 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %call = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b111 = load i1, ptr @__udp_tunnel_nic_reset_ntf.__already_done, align 1
  br i1 %.b111, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !78

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__udp_tunnel_nic_reset_ntf.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 557, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 557) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %2 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool37.not = icmp eq ptr %3, null
  br i1 %tobool37.not, label %if.end29.cleanup87_crit_edge, label %if.end39

if.end29.cleanup87_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup87

if.end39:                                         ; preds = %if.end29
  %need_sync = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %need_sync, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %need_sync, align 4
  %n_tables = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp115.not = icmp eq i32 %6, 0
  br i1 %cmp115.not, label %if.end39.for.end86_crit_edge, label %for.cond40.preheader.lr.ph

if.end39.for.end86_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end86

for.cond40.preheader.lr.ph:                       ; preds = %if.end39
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %3, i32 0, i32 5
  br label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.inc84.for.cond40.preheader_crit_edge, %for.cond40.preheader.lr.ph
  %i.0116 = phi i32 [ 0, %for.cond40.preheader.lr.ph ], [ %inc85, %for.inc84.for.cond40.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.0116
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41112.not = icmp eq i32 %8, 0
  br i1 %cmp41112.not, label %for.cond40.preheader.for.inc84_crit_edge, label %for.cond40.preheader.for.body42_crit_edge

for.cond40.preheader.for.body42_crit_edge:        ; preds = %for.cond40.preheader
  br label %for.body42

for.cond40.preheader.for.inc84_crit_edge:         ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc84

for.body42:                                       ; preds = %cleanup.for.body42_crit_edge, %for.cond40.preheader.for.body42_crit_edge
  %j.0113 = phi i32 [ %inc, %cleanup.for.body42_crit_edge ], [ 0, %for.cond40.preheader.for.body42_crit_edge ]
  %9 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entries, align 4
  %arrayidx44 = getelementptr ptr, ptr %10, i32 %i.0116
  %11 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx44, align 4
  %flags = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %12, i32 %j.0113, i32 2
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags, align 1
  %15 = and i8 %14, -7
  store i8 %15, ptr %flags, align 1
  %16 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool51.not = icmp eq i8 %16, 0
  br i1 %tobool51.not, label %for.body42.if.end73_crit_edge, label %do.end67, !prof !78

for.body42.if.end73_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

do.end67:                                         ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 573, i32 noundef 9, ptr noundef null) #13
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %for.body42.if.end73_crit_edge
  %use_cnt = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %12, i32 %j.0113, i32 3
  %17 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %use_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool81.not = icmp eq i16 %18, 0
  br i1 %tobool81.not, label %if.end73.cleanup_crit_edge, label %if.end83

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end83:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags, align 1
  %conv2.i = or i8 %20, 1
  store i8 %conv2.i, ptr %flags, align 1
  %21 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %need_sync, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %need_sync, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end73.cleanup_crit_edge
  %inc = add nuw i32 %j.0113, 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %cmp41 = icmp ult i32 %inc, %23
  br i1 %cmp41, label %cleanup.for.body42_crit_edge, label %cleanup.for.inc84_crit_edge

cleanup.for.inc84_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc84

cleanup.for.body42_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body42

for.inc84:                                        ; preds = %cleanup.for.inc84_crit_edge, %for.cond40.preheader.for.inc84_crit_edge
  %inc85 = add nuw i32 %i.0116, 1
  %24 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_tables, align 4
  %cmp = icmp ult i32 %inc85, %25
  br i1 %cmp, label %for.inc84.for.cond40.preheader_crit_edge, label %for.inc84.for.end86_crit_edge

for.inc84.for.end86_crit_edge:                    ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end86

for.inc84.for.cond40.preheader_crit_edge:         ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond40.preheader

for.end86:                                        ; preds = %for.inc84.for.end86_crit_edge, %if.end39.for.end86_crit_edge
  tail call fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %dev, ptr noundef nonnull %3)
  br label %cleanup87

cleanup87:                                        ; preds = %for.end86, %if.end29.cleanup87_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @__udp_tunnel_nic_dump_size(ptr nocapture noundef readonly %dev, i32 noundef %table) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %0 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %2 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 %table
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19.not = icmp eq i32 %5, 0
  br i1 %cmp19.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx1 = getelementptr ptr, ptr %7, i32 %table
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %size.022 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %for.inc.for.body_crit_edge ]
  %j.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %use_cnt.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.020, i32 3
  %10 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %use_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %udp_tunnel_nic_entry_is_present.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

udp_tunnel_nic_entry_is_present.exit:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %flags.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.020, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  %14 = and i8 %13, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  %add9 = add i32 %size.022, 20
  %spec.select = select i1 %tobool3.not.i, i32 %add9, i32 %size.022
  br label %for.inc

for.inc:                                          ; preds = %udp_tunnel_nic_entry_is_present.exit, %for.body.for.inc_crit_edge
  %size.1 = phi i32 [ %size.022, %for.body.for.inc_crit_edge ], [ %spec.select, %udp_tunnel_nic_entry_is_present.exit ]
  %inc = add nuw i32 %j.020, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %size.1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__udp_tunnel_nic_dump_write(ptr nocapture noundef readonly %dev, i32 noundef %table, ptr noundef %skb) #4 align 64 {
entry:
  %tmp.i68 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 153
  %0 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %2 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 %table
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp72.not = icmp eq i32 %5, 0
  br i1 %cmp72.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %1, i32 0, i32 5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.073 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx1 = getelementptr ptr, ptr %7, i32 %table
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  %use_cnt.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.073, i32 3
  %10 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %use_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %udp_tunnel_nic_entry_is_present.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

udp_tunnel_nic_entry_is_present.exit:             ; preds = %for.body
  %flags.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.073, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  %14 = and i8 %13, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.end4, label %udp_tunnel_nic_entry_is_present.exit.for.inc_crit_edge

udp_tunnel_nic_entry_is_present.exit.for.inc_crit_edge: ; preds = %udp_tunnel_nic_entry_is_present.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end4:                                          ; preds = %udp_tunnel_nic_entry_is_present.exit
  %15 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %.call.i.i = select i1 %cmp.i.i, ptr null, ptr %16
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %entries, align 4
  %arrayidx7 = getelementptr ptr, ptr %18, i32 %table
  %19 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %20, i32 %j.073
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx8, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #13
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %cond.end33, label %if.end4.err_cancel_crit_edge

if.end4.err_cancel_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_cancel

cond.end33:                                       ; preds = %if.end4
  %24 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %entries, align 4
  %arrayidx12 = getelementptr ptr, ptr %25, i32 %table
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx12, align 4
  %type = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %27, i32 %j.073, i32 1
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  %conv31 = zext i8 %29 to i32
  %30 = call i32 @llvm.ctlz.i32(i32 %conv31, i1 true) #13, !range !79
  %sub.i.op.i = xor i32 %30, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i68) #13
  %31 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i, ptr %tmp.i68, align 4
  %call.i69 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i68) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i68) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool36.not = icmp eq i32 %call.i69, 0
  br i1 %tobool36.not, label %if.end38, label %cond.end33.err_cancel_crit_edge

cond.end33.err_cancel_crit_edge:                  ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_cancel

if.end38:                                         ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %.call.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %34 = ptrtoint ptr %.call.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %.call.i.i, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %udp_tunnel_nic_entry_is_present.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %j.073, 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

err_cancel:                                       ; preds = %cond.end33.err_cancel_crit_edge, %if.end4.err_cancel_crit_edge
  %tobool.not.i.i70 = icmp eq ptr %.call.i.i, null
  br i1 %tobool.not.i.i70, label %err_cancel.cleanup_crit_edge, label %if.then.i.i

err_cancel.cleanup_crit_edge:                     ; preds = %err_cancel
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i.i:                                      ; preds = %err_cancel
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i71 = icmp ugt ptr %38, %.call.i.i
  br i1 %cmp.i.i71, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !80

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %.call.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %err_cancel.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -90, %err_cancel.cleanup_crit_edge ], [ -90, %if.end.i.i ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @udp_tunnel_nic_try_existing(ptr nocapture noundef readonly %dev, ptr nocapture noundef %utn, ptr nocapture noundef readonly %ti, i32 noundef %use_cnt_adj) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %n_tables = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 3
  %0 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28.not = icmp eq i32 %1, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %2 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %4 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ti, align 2
  %conv.i = zext i16 %5 to i32
  %entries.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  %port3.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc7.for.body_crit_edge, %for.body.lr.ph
  %cmp32 = phi i1 [ true, %for.body.lr.ph ], [ %cmp, %for.inc7.for.body_crit_edge ]
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc7.for.body_crit_edge ]
  %tunnel_types.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 %i.029, i32 1
  %6 = ptrtoint ptr %tunnel_types.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tunnel_types.i, align 4
  %and.i = and i32 %7, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc7_crit_edge, label %for.cond1.preheader

for.body.for.inc7_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc7

for.cond1.preheader:                              ; preds = %for.body
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 %i.029
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp225.not = icmp eq i32 %9, 0
  br i1 %cmp225.not, label %for.cond1.preheader.for.inc7_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc7

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %10 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %entries.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %11, i32 %i.029
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %j.026 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.inc.for.body3_crit_edge ]
  %arrayidx2.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %13, i32 %j.026
  %use_cnt.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %13, i32 %j.026, i32 3
  %14 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %use_cnt.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.i.i = icmp eq i16 %15, 0
  br i1 %cmp.i.i, label %udp_tunnel_nic_entry_is_free.exit.i, label %for.body3.lor.lhs.false.i_crit_edge

for.body3.lor.lhs.false.i_crit_edge:              ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

udp_tunnel_nic_entry_is_free.exit.i:              ; preds = %for.body3
  %flags.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %13, i32 %j.026, i32 2
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i, label %udp_tunnel_nic_entry_is_free.exit.i.for.inc_crit_edge, label %udp_tunnel_nic_entry_is_free.exit.i.lor.lhs.false.i_crit_edge

udp_tunnel_nic_entry_is_free.exit.i.lor.lhs.false.i_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false.i

udp_tunnel_nic_entry_is_free.exit.i.for.inc_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %udp_tunnel_nic_entry_is_free.exit.i.lor.lhs.false.i_crit_edge, %for.body3.lor.lhs.false.i_crit_edge
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i, align 2
  %20 = ptrtoint ptr %port3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %port3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp.not.i = icmp eq i16 %19, %21
  br i1 %cmp.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %type.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %13, i32 %j.026, i32 1
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i, align 2
  %24 = ptrtoint ptr %ti to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ti, align 2
  %26 = zext i8 %23 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %26)
  %cmp10.not.i = icmp eq i16 %25, %26
  br i1 %cmp10.not.i, label %if.end.i, label %lor.lhs.false6.i.for.inc_crit_edge

lor.lhs.false6.i.for.inc_crit_edge:               ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end.i:                                         ; preds = %lor.lhs.false6.i
  %flags.i22.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %13, i32 %j.026, i32 2
  %27 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i22.i, align 1
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.i.not.i = icmp eq i8 %29, 0
  br i1 %tobool.i.not.i, label %if.end14.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %30 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i24.i = icmp eq i8 %30, 0
  %conv3.i.i = zext i16 %15 to i32
  %add.i.i = add i32 %conv3.i.i, %use_cnt_adj
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i.i)
  %cmp.i26.i = icmp ugt i32 %add.i.i, 65535
  br i1 %cmp.i26.i, label %do.end.i.i, label %if.end14.i.if.end.i.i_crit_edge, !prof !80

if.end14.i.if.end.i.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 374, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end14.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %use_cnt.i.i, align 2
  %33 = trunc i32 %use_cnt_adj to i16
  %conv27.i.i = add i16 %32, %33
  store i16 %conv27.i.i, ptr %use_cnt.i.i, align 2
  br i1 %tobool.not.i24.i, label %land.lhs.true.i.i, label %if.end.i.i.if.end41.i.i_crit_edge

if.end.i.i.if.end41.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27.i.i)
  %tobool30.not.i.i = icmp ne i16 %conv27.i.i, 0
  %conv34.i.i = zext i16 %conv27.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34.i.i, i32 %use_cnt_adj)
  %tobool35.not.i.i = icmp eq i32 %conv34.i.i, %use_cnt_adj
  %cmp38.i.i = xor i1 %tobool30.not.i.i, %tobool35.not.i.i
  br i1 %cmp38.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true.i.i.if.end41.i.i_crit_edge

land.lhs.true.i.i.if.end41.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41.i.i:                                     ; preds = %land.lhs.true.i.i.if.end41.i.i_crit_edge, %if.end.i.i.if.end41.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_cnt_adj)
  %cmp42.i.i = icmp slt i32 %use_cnt_adj, 0
  %..i.i = select i1 %cmp42.i.i, i32 1, i32 2
  %34 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags.i22.i, align 1
  %conv47.i.i = zext i8 %35 to i32
  %and48.i.i = and i32 %..i.i, %conv47.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  br i1 %tobool49.not.i.i, label %if.end41.i.i.if.end58.i.i_crit_edge, label %if.then50.i.i

if.end41.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i.i

if.then50.i.i:                                    ; preds = %if.end41.i.i
  %36 = trunc i32 %..i.i to i8
  %37 = xor i8 %36, -1
  %conv54.i.i = and i8 %35, %37
  %38 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv54.i.i, ptr %flags.i22.i, align 1
  br i1 %tobool.not.i24.i, label %if.then50.i.i.cleanup_crit_edge, label %if.then50.i.i.if.end58.i.i_crit_edge

if.then50.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i.i

if.then50.i.i.cleanup_crit_edge:                  ; preds = %if.then50.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end58.i.i:                                     ; preds = %if.then50.i.i.if.end58.i.i_crit_edge, %if.end41.i.i.if.end58.i.i_crit_edge
  %39 = ptrtoint ptr %flags.i22.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %flags.i22.i, align 1
  %41 = select i1 %cmp42.i.i, i8 2, i8 1
  %conv2.i.i.i = or i8 %40, %41
  store i8 %conv2.i.i.i, ptr %flags.i22.i, align 1
  %need_sync.i.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 2
  %42 = ptrtoint ptr %need_sync.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i.i.i = load i8, ptr %need_sync.i.i.i, align 4
  %bf.set.i.i.i = or i8 %bf.load.i.i.i, -128
  store i8 %bf.set.i.i.i, ptr %need_sync.i.i.i, align 4
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false6.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %udp_tunnel_nic_entry_is_free.exit.i.for.inc_crit_edge
  %inc = add nuw i32 %j.026, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.for.inc7_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.inc.for.inc7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc.for.inc7_crit_edge, %for.cond1.preheader.for.inc7_crit_edge, %for.body.for.inc7_crit_edge
  %inc8 = add nuw i32 %i.029, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc8, i32 %1)
  %cmp = icmp ult i32 %inc8, %1
  %exitcond38.not = icmp eq i32 %inc8, %1
  br i1 %exitcond38.not, label %for.inc7.cleanup_crit_edge, label %for.inc7.for.body_crit_edge

for.inc7.for.body_crit_edge:                      ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc7.cleanup_crit_edge:                       ; preds = %for.inc7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc7.cleanup_crit_edge, %if.end58.i.i, %if.then50.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp24 = phi i1 [ %cmp32, %if.end58.i.i ], [ %cmp32, %if.then50.i.i.cleanup_crit_edge ], [ %cmp32, %land.lhs.true.i.i.cleanup_crit_edge ], [ %cmp32, %if.end.i.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ %cmp, %for.inc7.cleanup_crit_edge ]
  ret i1 %cmp24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %dev, ptr noundef %utn) unnamed_addr #4 align 64 {
entry:
  %ti.i.i = alloca %struct.udp_tunnel_info, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %need_sync = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 2
  %0 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %need_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %1 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %sync_table = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %sync_table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sync_table, align 4
  %tobool1.not = icmp eq ptr %4, null
  %n_tables.i18 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 3
  %5 = ptrtoint ptr %n_tables.i18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_tables.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp17.not.i = icmp eq i32 %6, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  br i1 %cmp17.not.i, label %if.then2.if.end3_crit_edge, label %for.cond1.preheader.lr.ph.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then2
  %entries.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc31.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.071.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc32.i, %for.inc31.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.udp_tunnel_nic_info, ptr %2, i32 0, i32 5, i32 %i.071.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp261.not.i = icmp eq i32 %8, 0
  br i1 %cmp261.not.i, label %for.cond1.preheader.i.for.end.i_crit_edge, label %for.body3.lr.ph.i

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body3.lr.ph.i:                                ; preds = %for.cond1.preheader.i
  %9 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entries.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %10, i32 %i.071.i
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.i, align 4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.lr.ph.i
  %j.062.i = phi i32 [ 0, %for.body3.lr.ph.i ], [ %inc.i, %for.inc.i.for.body3.i_crit_edge ]
  %flags.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %12, i32 %j.062.i, i32 2
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flags.i.i, align 1
  %15 = and i8 %14, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.i.not.i = icmp eq i8 %15, 0
  br i1 %tobool.i.not.i, label %for.inc.i, label %for.body3.i.for.end.i_crit_edge

for.body3.i.for.end.i_crit_edge:                  ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body3.i
  %inc.i = add nuw i32 %j.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.for.inc31.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i

for.inc.i.for.inc31.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31.i

for.end.i:                                        ; preds = %for.body3.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %for.cond1.preheader.i.for.end.i_crit_edge ], [ %j.062.i, %for.body3.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %8)
  %cmp9.i = icmp eq i32 %j.0.lcssa.i, %8
  br i1 %cmp9.i, label %for.end.i.for.inc31.i_crit_edge, label %if.end11.i

for.end.i.for.inc31.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31.i

if.end11.i:                                       ; preds = %for.end.i
  %16 = ptrtoint ptr %sync_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sync_table, align 4
  %call12.i = tail call i32 %17(ptr noundef %dev, i32 noundef %i.071.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %if.end11.i.if.end14.i_crit_edge, label %if.then13.i

if.end11.i.if.end14.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %i.071.i, i32 noundef %call12.i) #16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end14.i_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1968.not.i = icmp eq i32 %19, 0
  br i1 %cmp1968.not.i, label %if.end14.i.for.inc31.i_crit_edge, label %if.end14.i.for.body20.i_crit_edge

if.end14.i.for.body20.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body20.i

if.end14.i.for.inc31.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31.i

for.body20.i:                                     ; preds = %if.end27.i.for.body20.i_crit_edge, %if.end14.i.for.body20.i_crit_edge
  %j.169.i = phi i32 [ %inc29.i, %if.end27.i.for.body20.i_crit_edge ], [ 0, %if.end14.i.for.body20.i_crit_edge ]
  %20 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %entries.i, align 4
  %arrayidx23.i = getelementptr ptr, ptr %21, i32 %i.071.i
  %22 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx23.i, align 4
  %flags.i58.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %23, i32 %j.169.i, i32 2
  %24 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags.i58.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.i59.not.i = icmp eq i8 %26, 0
  br i1 %tobool.i59.not.i, label %for.body20.i.if.end27.i_crit_edge, label %if.then26.i

for.body20.i.if.end27.i_crit_edge:                ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27.i

if.then26.i:                                      ; preds = %for.body20.i
  %conv.i.i = zext i8 %25 to i32
  %and.i.i = and i32 %conv.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %27 = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %land.rhs14.i.i, label %if.then26.i.if.end41.i.i_crit_edge

if.then26.i.if.end41.i.i_crit_edge:               ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

land.rhs14.i.i:                                   ; preds = %if.then26.i
  %.b107.i.i = load i1, ptr @udp_tunnel_nic_entry_update_done.__already_done, align 1
  br i1 %.b107.i.i, label %land.rhs14.i.i.if.end41.i.i_crit_edge, label %if.then.i.i, !prof !78

land.rhs14.i.i.if.end41.i.i_crit_edge:            ; preds = %land.rhs14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i

if.then.i.i:                                      ; preds = %land.rhs14.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_nic_entry_update_done.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #13
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then.i.i, %land.rhs14.i.i.if.end41.i.i_crit_edge, %if.then26.i.if.end41.i.i_crit_edge
  %29 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %flags.i58.i, align 1
  %31 = and i8 %30, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool52.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool52.not.i.i, label %if.end41.i.i.if.end63.i.i_crit_edge, label %land.lhs.true.i.i

if.end41.i.i.if.end63.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i

land.lhs.true.i.i:                                ; preds = %if.end41.i.i
  %32 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call12.i, label %land.lhs.true.i.i.if.end63.i.i_crit_edge [
    i32 0, label %land.lhs.true.i.i.if.then58.i.i_crit_edge
    i32 -17, label %land.lhs.true55.i.i
  ]

land.lhs.true.i.i.if.then58.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i.i

land.lhs.true.i.i.if.end63.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true.i.i
  br i1 %tobool.not.i.i, label %land.lhs.true55.i.i.if.end63.i.i_crit_edge, label %land.lhs.true55.i.i.if.then58.i.i_crit_edge

land.lhs.true55.i.i.if.then58.i.i_crit_edge:      ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i.i

land.lhs.true55.i.i.if.end63.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i

if.then58.i.i:                                    ; preds = %land.lhs.true55.i.i.if.then58.i.i_crit_edge, %land.lhs.true.i.i.if.then58.i.i_crit_edge
  %33 = and i8 %30, -2
  %34 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %flags.i58.i, align 1
  br label %if.end63.i.i

if.end63.i.i:                                     ; preds = %if.then58.i.i, %land.lhs.true55.i.i.if.end63.i.i_crit_edge, %land.lhs.true.i.i.if.end63.i.i_crit_edge, %if.end41.i.i.if.end63.i.i_crit_edge
  %35 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags.i58.i, align 1
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool67.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool67.not.i.i, label %if.end63.i.i.if.end81.i.i_crit_edge, label %land.lhs.true68.i.i

if.end63.i.i.if.end81.i.i_crit_edge:              ; preds = %if.end63.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i

land.lhs.true68.i.i:                              ; preds = %if.end63.i.i
  %38 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %call12.i, label %land.lhs.true68.i.i.if.else.i.i_crit_edge [
    i32 0, label %land.lhs.true68.i.i.if.then76.i.i_crit_edge
    i32 -2, label %land.lhs.true73.i.i
  ]

land.lhs.true68.i.i.if.then76.i.i_crit_edge:      ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i.i

land.lhs.true68.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

land.lhs.true73.i.i:                              ; preds = %land.lhs.true68.i.i
  br i1 %tobool.not.i.i, label %land.lhs.true73.i.i.if.else.i.i_crit_edge, label %land.lhs.true73.i.i.if.then76.i.i_crit_edge

land.lhs.true73.i.i.if.then76.i.i_crit_edge:      ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i.i

land.lhs.true73.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then76.i.i:                                    ; preds = %land.lhs.true73.i.i.if.then76.i.i_crit_edge, %land.lhs.true68.i.i.if.then76.i.i_crit_edge
  %39 = and i8 %36, -3
  %40 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %flags.i58.i, align 1
  br label %if.end81.i.i

if.end81.i.i:                                     ; preds = %if.then76.i.i, %if.end63.i.i.if.end81.i.i_crit_edge
  br i1 %tobool.not.i, label %if.then83.i.i, label %if.end81.i.i.if.else.i.i_crit_edge

if.end81.i.i.if.else.i.i_crit_edge:               ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i.i

if.then83.i.i:                                    ; preds = %if.end81.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %flags.i58.i, align 1
  %43 = and i8 %42, -5
  br label %udp_tunnel_nic_entry_update_done.exit.i

if.else.i.i:                                      ; preds = %if.end81.i.i.if.else.i.i_crit_edge, %land.lhs.true73.i.i.if.else.i.i_crit_edge, %land.lhs.true68.i.i.if.else.i.i_crit_edge
  %44 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %flags.i58.i, align 1
  %46 = or i8 %45, 4
  br label %udp_tunnel_nic_entry_update_done.exit.i

udp_tunnel_nic_entry_update_done.exit.i:          ; preds = %if.else.i.i, %if.then83.i.i
  %storemerge.i.i = phi i8 [ %43, %if.then83.i.i ], [ %46, %if.else.i.i ]
  %47 = ptrtoint ptr %flags.i58.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge.i.i, ptr %flags.i58.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %udp_tunnel_nic_entry_update_done.exit.i, %for.body20.i.if.end27.i_crit_edge
  %inc29.i = add nuw i32 %j.169.i, 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %cmp19.i = icmp ult i32 %inc29.i, %49
  br i1 %cmp19.i, label %if.end27.i.for.body20.i_crit_edge, label %if.end27.i.for.inc31.i_crit_edge

if.end27.i.for.inc31.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31.i

if.end27.i.for.body20.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20.i

for.inc31.i:                                      ; preds = %if.end27.i.for.inc31.i_crit_edge, %if.end14.i.for.inc31.i_crit_edge, %for.end.i.for.inc31.i_crit_edge, %for.inc.i.for.inc31.i_crit_edge
  %inc32.i = add nuw i32 %i.071.i, 1
  %50 = ptrtoint ptr %n_tables.i18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_tables.i18, align 4
  %cmp.i = icmp ult i32 %inc32.i, %51
  br i1 %cmp.i, label %for.inc31.i.for.cond1.preheader.i_crit_edge, label %for.inc31.i.if.end3_crit_edge

for.inc31.i.if.end3_crit_edge:                    ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc31.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

if.else:                                          ; preds = %if.end
  br i1 %cmp17.not.i, label %if.else.if.end3_crit_edge, label %for.cond1.preheader.lr.ph.i19

if.else.if.end3_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.cond1.preheader.lr.ph.i19:                    ; preds = %if.else
  %entries.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  %port2.i.i.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti.i.i, i32 0, i32 2
  %hw_priv4.i.i.i = getelementptr inbounds %struct.udp_tunnel_info, ptr %ti.i.i, i32 0, i32 3
  br label %for.cond1.preheader.i21

for.cond1.preheader.i21:                          ; preds = %for.inc4.i.for.cond1.preheader.i21_crit_edge, %for.cond1.preheader.lr.ph.i19
  %i.018.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i19 ], [ %inc5.i, %for.inc4.i.for.cond1.preheader.i21_crit_edge ]
  %arrayidx.i20 = getelementptr %struct.udp_tunnel_nic_info, ptr %2, i32 0, i32 5, i32 %i.018.i
  %52 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp214.not.i = icmp eq i32 %53, 0
  br i1 %cmp214.not.i, label %for.cond1.preheader.i21.for.inc4.i_crit_edge, label %for.cond1.preheader.i21.for.body3.i22_crit_edge

for.cond1.preheader.i21.for.body3.i22_crit_edge:  ; preds = %for.cond1.preheader.i21
  br label %for.body3.i22

for.cond1.preheader.i21.for.inc4.i_crit_edge:     ; preds = %for.cond1.preheader.i21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc4.i

for.body3.i22:                                    ; preds = %udp_tunnel_nic_device_sync_one.exit.i.for.body3.i22_crit_edge, %for.cond1.preheader.i21.for.body3.i22_crit_edge
  %j.015.i = phi i32 [ %inc.i25, %udp_tunnel_nic_device_sync_one.exit.i.for.body3.i22_crit_edge ], [ 0, %for.cond1.preheader.i21.for.body3.i22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ti.i.i) #13
  %54 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %55, i32 %i.018.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %57, i32 %j.015.i
  %flags.i.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %57, i32 %j.015.i, i32 2
  %58 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags.i.i.i, align 1
  %60 = and i8 %59, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool.i.not.i.i, label %for.body3.i22.udp_tunnel_nic_device_sync_one.exit.i_crit_edge, label %if.end.i.i

for.body3.i22.udp_tunnel_nic_device_sync_one.exit.i_crit_edge: ; preds = %for.body3.i22
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_device_sync_one.exit.i

if.end.i.i:                                       ; preds = %for.body3.i22
  %61 = ptrtoint ptr %ti.i.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 0, ptr %ti.i.i, align 8
  %62 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx2.i.i, align 2
  %64 = ptrtoint ptr %port2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %port2.i.i.i, align 4
  %type.i.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %57, i32 %j.015.i, i32 1
  %65 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %type.i.i.i, align 2
  %conv.i.i.i = zext i8 %66 to i16
  store i16 %conv.i.i.i, ptr %ti.i.i, align 8
  %hw_priv.i.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %57, i32 %j.015.i, i32 4
  %67 = ptrtoint ptr %hw_priv.i.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %hw_priv.i.i.i, align 2
  %69 = ptrtoint ptr %hw_priv4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %hw_priv4.i.i.i, align 2
  %70 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %flags.i.i.i, align 1
  %72 = and i8 %71, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i23 = icmp eq i8 %72, 0
  %73 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %unset_port.i.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %74, i32 0, i32 1
  %unset_port.sink.i.i = select i1 %tobool.not.i.i23, ptr %unset_port.i.i, ptr %74
  %75 = ptrtoint ptr %unset_port.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %unset_port.sink.i.i, align 4
  %call6.i.i = call i32 %76(ptr noundef %dev, i32 noundef %i.018.i, i32 noundef %j.015.i, ptr noundef nonnull %ti.i.i) #13
  %77 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %flags.i.i.i, align 1
  %conv.i32.i.i = zext i8 %78 to i32
  %and.i.i.i = and i32 %conv.i32.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %79 = and i32 %conv.i32.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %land.rhs14.i.i.i, label %if.end.i.i.if.end41.i.i.i_crit_edge

if.end.i.i.if.end41.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i.i

land.rhs14.i.i.i:                                 ; preds = %if.end.i.i
  %.b107.i.i.i = load i1, ptr @udp_tunnel_nic_entry_update_done.__already_done, align 1
  br i1 %.b107.i.i.i, label %land.rhs14.i.i.i.if.end41.i.i.i_crit_edge, label %if.then.i.i.i, !prof !78

land.rhs14.i.i.i.if.end41.i.i.i_crit_edge:        ; preds = %land.rhs14.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs14.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_nic_entry_update_done.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 192, i32 noundef 9, ptr noundef null) #13
  br label %if.end41.i.i.i

if.end41.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs14.i.i.i.if.end41.i.i.i_crit_edge, %if.end.i.i.if.end41.i.i.i_crit_edge
  %81 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags.i.i.i, align 1
  %83 = and i8 %82, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool52.not.i.i.i = icmp eq i8 %83, 0
  br i1 %tobool52.not.i.i.i, label %if.end41.i.i.i.if.end63.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end41.i.i.i.if.end63.i.i.i_crit_edge:          ; preds = %if.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end41.i.i.i
  %84 = zext i32 %call6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %call6.i.i, label %land.lhs.true.i.i.i.if.end63.i.i.i_crit_edge [
    i32 0, label %land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge
    i32 -17, label %land.lhs.true55.i.i.i
  ]

land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i.i.i

land.lhs.true.i.i.i.if.end63.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true.i.i.i
  br i1 %tobool.not.i.i.i, label %land.lhs.true55.i.i.i.if.end63.i.i.i_crit_edge, label %land.lhs.true55.i.i.i.if.then58.i.i.i_crit_edge

land.lhs.true55.i.i.i.if.then58.i.i.i_crit_edge:  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then58.i.i.i

land.lhs.true55.i.i.i.if.end63.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63.i.i.i

if.then58.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i.if.then58.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then58.i.i.i_crit_edge
  %85 = and i8 %82, -2
  %86 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %85, ptr %flags.i.i.i, align 1
  br label %if.end63.i.i.i

if.end63.i.i.i:                                   ; preds = %if.then58.i.i.i, %land.lhs.true55.i.i.i.if.end63.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.end63.i.i.i_crit_edge, %if.end41.i.i.i.if.end63.i.i.i_crit_edge
  %87 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %flags.i.i.i, align 1
  %89 = and i8 %88, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool67.not.i.i.i = icmp eq i8 %89, 0
  br i1 %tobool67.not.i.i.i, label %if.end63.i.i.i.if.end81.i.i.i_crit_edge, label %land.lhs.true68.i.i.i

if.end63.i.i.i.if.end81.i.i.i_crit_edge:          ; preds = %if.end63.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81.i.i.i

land.lhs.true68.i.i.i:                            ; preds = %if.end63.i.i.i
  %90 = zext i32 %call6.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call6.i.i, label %land.lhs.true68.i.i.i.if.then9.i.i_crit_edge [
    i32 0, label %land.lhs.true68.i.i.i.if.then76.i.i.i_crit_edge
    i32 -2, label %land.lhs.true73.i.i.i
  ]

land.lhs.true68.i.i.i.if.then76.i.i.i_crit_edge:  ; preds = %land.lhs.true68.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i.i.i

land.lhs.true68.i.i.i.if.then9.i.i_crit_edge:     ; preds = %land.lhs.true68.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i.i

land.lhs.true73.i.i.i:                            ; preds = %land.lhs.true68.i.i.i
  br i1 %tobool.not.i.i.i, label %land.lhs.true73.i.i.i.if.then9.i.i_crit_edge, label %land.lhs.true73.i.i.i.if.then76.i.i.i_crit_edge

land.lhs.true73.i.i.i.if.then76.i.i.i_crit_edge:  ; preds = %land.lhs.true73.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then76.i.i.i

land.lhs.true73.i.i.i.if.then9.i.i_crit_edge:     ; preds = %land.lhs.true73.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i.i

if.then76.i.i.i:                                  ; preds = %land.lhs.true73.i.i.i.if.then76.i.i.i_crit_edge, %land.lhs.true68.i.i.i.if.then76.i.i.i_crit_edge
  %91 = and i8 %88, -3
  %92 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %91, ptr %flags.i.i.i, align 1
  br label %if.end81.i.i.i

if.end81.i.i.i:                                   ; preds = %if.then76.i.i.i, %if.end63.i.i.i.if.end81.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool82.not.i.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool82.not.i.i.i, label %udp_tunnel_nic_entry_update_done.exit.thread.i.i, label %if.end81.i.i.i.if.then9.i.i_crit_edge

if.end81.i.i.i.if.then9.i.i_crit_edge:            ; preds = %if.end81.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9.i.i

udp_tunnel_nic_entry_update_done.exit.thread.i.i: ; preds = %if.end81.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %93 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags.i.i.i, align 1
  %95 = and i8 %94, -5
  store i8 %95, ptr %flags.i.i.i, align 1
  br label %udp_tunnel_nic_device_sync_one.exit.i

if.then9.i.i:                                     ; preds = %if.end81.i.i.i.if.then9.i.i_crit_edge, %land.lhs.true73.i.i.i.if.then9.i.i_crit_edge, %land.lhs.true68.i.i.i.if.then9.i.i_crit_edge
  %96 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %storemerge.in.i.i = load i8, ptr %flags.i.i.i, align 1
  %storemerge.i.i24 = or i8 %storemerge.in.i.i, 4
  store i8 %storemerge.i.i24, ptr %flags.i.i.i, align 1
  %97 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %arrayidx2.i.i, align 2
  %conv10.i.i = zext i16 %98 to i32
  %99 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %type.i.i.i, align 2
  %switch.tableidx = add i8 %100, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %101 = icmp ult i8 %switch.tableidx, 4
  br i1 %101, label %switch.lookup, label %if.then9.i.i.udp_tunnel_nic_tunnel_type_name.exit.i.i_crit_edge

if.then9.i.i.udp_tunnel_nic_tunnel_type_name.exit.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_tunnel_type_name.exit.i.i

switch.lookup:                                    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %102 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.__udp_tunnel_nic_device_sync, i32 0, i32 %102
  %103 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %103)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %udp_tunnel_nic_tunnel_type_name.exit.i.i

udp_tunnel_nic_tunnel_type_name.exit.i.i:         ; preds = %switch.lookup, %if.then9.i.i.udp_tunnel_nic_tunnel_type_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.8, %if.then9.i.i.udp_tunnel_nic_tunnel_type_name.exit.i.i_crit_edge ]
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv10.i.i, ptr noundef nonnull %retval.0.i.i.i, i32 noundef %call6.i.i) #16
  br label %udp_tunnel_nic_device_sync_one.exit.i

udp_tunnel_nic_device_sync_one.exit.i:            ; preds = %udp_tunnel_nic_tunnel_type_name.exit.i.i, %udp_tunnel_nic_entry_update_done.exit.thread.i.i, %for.body3.i22.udp_tunnel_nic_device_sync_one.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ti.i.i) #13
  %inc.i25 = add nuw i32 %j.015.i, 1
  %104 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i20, align 4
  %cmp2.i = icmp ult i32 %inc.i25, %105
  br i1 %cmp2.i, label %udp_tunnel_nic_device_sync_one.exit.i.for.body3.i22_crit_edge, label %udp_tunnel_nic_device_sync_one.exit.i.for.inc4.i_crit_edge

udp_tunnel_nic_device_sync_one.exit.i.for.inc4.i_crit_edge: ; preds = %udp_tunnel_nic_device_sync_one.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc4.i

udp_tunnel_nic_device_sync_one.exit.i.for.body3.i22_crit_edge: ; preds = %udp_tunnel_nic_device_sync_one.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i22

for.inc4.i:                                       ; preds = %udp_tunnel_nic_device_sync_one.exit.i.for.inc4.i_crit_edge, %for.cond1.preheader.i21.for.inc4.i_crit_edge
  %inc5.i = add nuw i32 %i.018.i, 1
  %106 = ptrtoint ptr %n_tables.i18 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %n_tables.i18, align 4
  %cmp.i26 = icmp ult i32 %inc5.i, %107
  br i1 %cmp.i26, label %for.inc4.i.for.cond1.preheader.i21_crit_edge, label %for.inc4.i.if.end3_crit_edge

for.inc4.i.if.end3_crit_edge:                     ; preds = %for.inc4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end3

for.inc4.i.for.cond1.preheader.i21_crit_edge:     ; preds = %for.inc4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i21

if.end3:                                          ; preds = %for.inc4.i.if.end3_crit_edge, %if.else.if.end3_crit_edge, %for.inc31.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge
  %108 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load5 = load i8, ptr %need_sync, align 4
  %bf.clear = and i8 %bf.load5, 127
  store i8 %bf.clear, ptr %need_sync, align 4
  %missed.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 4
  %109 = ptrtoint ptr %missed.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %missed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i27 = icmp eq i32 %110, 0
  br i1 %tobool.not.i27, label %if.end3.udp_tunnel_nic_should_replay.exit_crit_edge, label %for.cond.preheader.i

if.end3.udp_tunnel_nic_should_replay.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_should_replay.exit

for.cond.preheader.i:                             ; preds = %if.end3
  %n_tables.i28 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 3
  %111 = ptrtoint ptr %n_tables.i28 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %n_tables.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp31.not.i = icmp eq i32 %112, 0
  br i1 %cmp31.not.i, label %for.cond.preheader.i.udp_tunnel_nic_should_replay.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.udp_tunnel_nic_should_replay.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_should_replay.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %113 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %entries.i30 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc13.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc14.i, %for.inc13.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.032.i, 5
  %arrayidx.i.i31 = getelementptr i32, ptr %missed.i, i32 %div3.i.i
  %115 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %arrayidx.i.i31, align 4
  %and.i.i32 = and i32 %i.032.i, 31
  %117 = shl nuw i32 1, %and.i.i32
  %118 = and i32 %117, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool2.not.i = icmp eq i32 %118, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc13.i_crit_edge, label %for.cond5.preheader.i

for.body.i.for.inc13.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc13.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  %arrayidx.i33 = getelementptr %struct.udp_tunnel_nic_info, ptr %114, i32 0, i32 5, i32 %i.032.i
  %119 = ptrtoint ptr %arrayidx.i33 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp628.not.i = icmp eq i32 %120, 0
  br i1 %cmp628.not.i, label %for.cond5.preheader.i.for.inc13.i_crit_edge, label %for.body7.lr.ph.i

for.cond5.preheader.i.for.inc13.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc13.i

for.body7.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %121 = ptrtoint ptr %entries.i30 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %entries.i30, align 4
  %arrayidx8.i = getelementptr ptr, ptr %122, i32 %i.032.i
  %123 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx8.i, align 4
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.inc.i38.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %j.029.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc.i36, %for.inc.i38.for.body7.i_crit_edge ]
  %use_cnt.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %124, i32 %j.029.i, i32 3
  %125 = ptrtoint ptr %use_cnt.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %use_cnt.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %cmp.i.i = icmp eq i16 %126, 0
  br i1 %cmp.i.i, label %udp_tunnel_nic_entry_is_free.exit.i, label %for.body7.i.for.inc.i38_crit_edge

for.body7.i.for.inc.i38_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i38

udp_tunnel_nic_entry_is_free.exit.i:              ; preds = %for.body7.i
  %flags.i.i34 = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %124, i32 %j.029.i, i32 2
  %127 = ptrtoint ptr %flags.i.i34 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %flags.i.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i.i35 = icmp eq i8 %128, 0
  br i1 %tobool.not.i.i35, label %udp_tunnel_nic_entry_is_free.exit.i.udp_tunnel_nic_should_replay.exit_crit_edge, label %udp_tunnel_nic_entry_is_free.exit.i.for.inc.i38_crit_edge

udp_tunnel_nic_entry_is_free.exit.i.for.inc.i38_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i38

udp_tunnel_nic_entry_is_free.exit.i.udp_tunnel_nic_should_replay.exit_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_should_replay.exit

for.inc.i38:                                      ; preds = %udp_tunnel_nic_entry_is_free.exit.i.for.inc.i38_crit_edge, %for.body7.i.for.inc.i38_crit_edge
  %inc.i36 = add nuw i32 %j.029.i, 1
  %exitcond.not.i37 = icmp eq i32 %inc.i36, %120
  br i1 %exitcond.not.i37, label %for.inc.i38.for.inc13.i_crit_edge, label %for.inc.i38.for.body7.i_crit_edge

for.inc.i38.for.body7.i_crit_edge:                ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i

for.inc.i38.for.inc13.i_crit_edge:                ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.inc.i38.for.inc13.i_crit_edge, %for.cond5.preheader.i.for.inc13.i_crit_edge, %for.body.i.for.inc13.i_crit_edge
  %inc14.i = add nuw i32 %i.032.i, 1
  %exitcond36.not.i = icmp eq i32 %inc14.i, %112
  br i1 %exitcond36.not.i, label %for.inc13.i.udp_tunnel_nic_should_replay.exit_crit_edge, label %for.inc13.i.for.body.i_crit_edge

for.inc13.i.for.body.i_crit_edge:                 ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc13.i.udp_tunnel_nic_should_replay.exit_crit_edge: ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_should_replay.exit

udp_tunnel_nic_should_replay.exit:                ; preds = %for.inc13.i.udp_tunnel_nic_should_replay.exit_crit_edge, %udp_tunnel_nic_entry_is_free.exit.i.udp_tunnel_nic_should_replay.exit_crit_edge, %for.cond.preheader.i.udp_tunnel_nic_should_replay.exit_crit_edge, %if.end3.udp_tunnel_nic_should_replay.exit_crit_edge
  %129 = phi i8 [ 0, %if.end3.udp_tunnel_nic_should_replay.exit_crit_edge ], [ 0, %for.cond.preheader.i.udp_tunnel_nic_should_replay.exit_crit_edge ], [ 64, %udp_tunnel_nic_entry_is_free.exit.i.udp_tunnel_nic_should_replay.exit_crit_edge ], [ 0, %for.inc13.i.udp_tunnel_nic_should_replay.exit_crit_edge ]
  %bf.clear7 = and i8 %bf.load5, 63
  %bf.set8 = or i8 %129, %bf.clear7
  %130 = ptrtoint ptr %need_sync to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %bf.set8, ptr %need_sync, align 4
  br label %return

return:                                           ; preds = %udp_tunnel_nic_should_replay.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @udp_tunnel_nic_netdevice_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 152
  %2 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp = icmp eq i32 %event, 5
  br i1 %cmp, label %if.then1, label %if.end26

if.then1:                                         ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp ne ptr %5, null
  %unset_port.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %unset_port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unset_port.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  %cmp.not.i = xor i1 %tobool.not.i, %tobool4.not.i
  br i1 %cmp.not.i, label %lor.lhs.false.critedge.i, label %do.end20.i, !prof !78

do.end20.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 778, i32 noundef 9, ptr noundef null) #13
  br label %do.end

lor.lhs.false.critedge.i:                         ; preds = %if.then1
  %sync_table.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %sync_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sync_table.i, align 4
  %tobool38.not.i = icmp eq ptr %9, null
  %cmp41.i = xor i1 %tobool.not.i, %tobool38.not.i
  br i1 %cmp41.i, label %do.end57.i, label %lor.lhs.false72.critedge.i, !prof !80

do.end57.i:                                       ; preds = %lor.lhs.false.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 779, i32 noundef 9, ptr noundef null) #13
  br label %do.end

lor.lhs.false72.critedge.i:                       ; preds = %lor.lhs.false.critedge.i
  %tables.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %tables.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool74.not.i = icmp eq i32 %11, 0
  br i1 %tobool74.not.i, label %do.end92.i, label %if.end108.i, !prof !80

do.end92.i:                                       ; preds = %lor.lhs.false72.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 780, i32 noundef 9, ptr noundef null) #13
  br label %do.end

if.end108.i:                                      ; preds = %lor.lhs.false72.critedge.i
  %shared.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shared.i, align 4
  %tobool110.not.i = icmp eq ptr %13, null
  br i1 %tobool110.not.i, label %if.end108.i.for.cond.preheader.i_crit_edge, label %land.rhs.i

if.end108.i.for.cond.preheader.i_crit_edge:       ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %land.rhs.i.for.cond.preheader.i_crit_edge, %if.end108.i.for.cond.preheader.i_crit_edge
  %arrayidx146.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx146.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool148.not.i = icmp eq i32 %15, 0
  %arrayidx146.1.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx146.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx146.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool148.not.1.i = icmp eq i32 %17, 0
  br i1 %tobool148.not.i, label %for.inc.i, label %for.inc.1.i

land.rhs.i:                                       ; preds = %if.end108.i
  %flags.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool111.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool111.not.i, label %land.rhs.i.for.cond.preheader.i_crit_edge, label %do.end127.i, !prof !78

land.rhs.i.for.cond.preheader.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.preheader.i

do.end127.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 784, i32 noundef 9, ptr noundef null) #13
  br label %do.end

do.end173.i:                                      ; preds = %if.end150.2.i.do.end173.i_crit_edge, %for.inc.1.i.thread.do.end173.i_crit_edge, %for.inc.i.do.end173.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 793, i32 noundef 9, ptr noundef null) #13
  br label %do.end

for.inc.i:                                        ; preds = %for.cond.preheader.i
  br i1 %tobool148.not.1.i, label %for.inc.1.i.thread, label %for.inc.i.do.end173.i_crit_edge

for.inc.i.do.end173.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end173.i

for.inc.1.i:                                      ; preds = %for.cond.preheader.i
  %spec.select157 = select i1 %tobool148.not.1.i, i32 2, i32 3
  %arrayidx146.2.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %arrayidx146.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx146.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool148.not.2.i = icmp eq i32 %21, 0
  br i1 %tobool148.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end150.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

for.inc.1.i.thread:                               ; preds = %for.inc.i
  %arrayidx146.2.i165 = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx146.2.i165 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx146.2.i165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool148.not.2.i166 = icmp eq i32 %23, 0
  br i1 %tobool148.not.2.i166, label %for.inc.1.i.thread.for.inc.2.i_crit_edge, label %for.inc.1.i.thread.do.end173.i_crit_edge

for.inc.1.i.thread.do.end173.i_crit_edge:         ; preds = %for.inc.1.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end173.i

for.inc.1.i.thread.for.inc.2.i_crit_edge:         ; preds = %for.inc.1.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end150.2.i:                                    ; preds = %for.inc.1.i
  %inc.2.i = add nuw nsw i32 %spec.select157, 1
  br i1 %tobool148.not.1.i, label %if.end150.2.i.do.end173.i_crit_edge, label %if.end150.2.i.for.inc.2.i_crit_edge, !prof !80

if.end150.2.i.for.inc.2.i_crit_edge:              ; preds = %if.end150.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end150.2.i.do.end173.i_crit_edge:              ; preds = %if.end150.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end173.i

for.inc.2.i:                                      ; preds = %if.end150.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.thread.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %n_tables.1.2.i = phi i32 [ %spec.select157, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %inc.2.i, %if.end150.2.i.for.inc.2.i_crit_edge ], [ 1, %for.inc.1.i.thread.for.inc.2.i_crit_edge ]
  br i1 %tobool110.not.i, label %for.inc.2.i.if.end198.i_crit_edge, label %if.then193.i

for.inc.2.i.if.end198.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end198.i

if.then193.i:                                     ; preds = %for.inc.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 12) #17
  %tobool194.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool194.not.i, label %if.then193.i.do.end_crit_edge, label %if.end196.i

if.then193.i.do.end_crit_edge:                    ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end196.i:                                      ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %1, ptr %call7.i.i.i, align 8
  br label %if.end198.i

if.end198.i:                                      ; preds = %if.end196.i, %for.inc.2.i.if.end198.i_crit_edge
  %node.0.i = phi ptr [ %call7.i.i.i, %if.end196.i ], [ null, %for.inc.2.i.if.end198.i_crit_edge ]
  %26 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shared.i, align 4
  %tobool200.not.i = icmp eq ptr %27, null
  br i1 %tobool200.not.i, label %if.end198.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end198.i.if.else.i_crit_edge:                  ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end198.i
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool203.not.i = icmp eq ptr %29, null
  br i1 %tobool203.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.end222.i_crit_edge

land.lhs.true.i.if.end222.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end222.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end198.i.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 64) #17
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.else.i.if.then209.i_crit_edge, label %if.end.i.i

if.else.i.if.then209.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then209.i

if.end.i.i:                                       ; preds = %if.else.i
  %n_tables1.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %call7.i.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %n_tables1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %n_tables.1.2.i, ptr %n_tables1.i.i, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i.i.i, i32 noundef 0) #13
  %32 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -64, ptr %call7.i.i.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @udp_tunnel_nic_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry5.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %entry5.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %entry5.i.i, ptr %entry5.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %entry5.i.i, ptr %prev.i.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @udp_tunnel_nic_device_sync_work, ptr %func.i.i, align 4
  %36 = shl nuw nsw i32 %n_tables.1.2.i, 2
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3264) #18
  %entries.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %call7.i.i.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i, ptr %entries.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.end.i.i.err_free_utn.i.i_crit_edge, label %for.body.i.i

if.end.i.i.err_free_utn.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_utn.i.i

for.body.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 0
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 8) #13
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %for.body.i.i.kcalloc.exit.i.i_crit_edge, label %if.end7.i.i.i.i, !prof !80

for.body.i.i.kcalloc.exit.i.i_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit.i.i

if.end7.i.i.i.i:                                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #18
  br label %kcalloc.exit.i.i

kcalloc.exit.i.i:                                 ; preds = %if.end7.i.i.i.i, %for.body.i.i.kcalloc.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %call8.i.i.i.i, %if.end7.i.i.i.i ], [ null, %for.body.i.i.kcalloc.exit.i.i_crit_edge ]
  %43 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entries.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i.i.i.i, ptr %44, align 4
  %46 = load ptr, ptr %entries.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %tobool17.not.i.i = icmp eq ptr %48, null
  br i1 %tobool17.not.i.i, label %kcalloc.exit.i.i.while.cond.preheader.i.i_crit_edge, label %for.inc.i.i

kcalloc.exit.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %kcalloc.exit.i.i.3.while.cond.preheader.i.i_crit_edge, %kcalloc.exit.i.i.2.while.cond.preheader.i.i_crit_edge, %kcalloc.exit.i.i.1.while.cond.preheader.i.i_crit_edge, %kcalloc.exit.i.i.while.cond.preheader.i.i_crit_edge
  %tobool20.not.i.i = phi i1 [ false, %kcalloc.exit.i.i.3.while.cond.preheader.i.i_crit_edge ], [ false, %kcalloc.exit.i.i.2.while.cond.preheader.i.i_crit_edge ], [ true, %kcalloc.exit.i.i.1.while.cond.preheader.i.i_crit_edge ], [ false, %kcalloc.exit.i.i.while.cond.preheader.i.i_crit_edge ]
  %i.056.i.i.lcssa = phi i32 [ 2, %kcalloc.exit.i.i.3.while.cond.preheader.i.i_crit_edge ], [ 1, %kcalloc.exit.i.i.2.while.cond.preheader.i.i_crit_edge ], [ 0, %kcalloc.exit.i.i.1.while.cond.preheader.i.i_crit_edge ], [ -1, %kcalloc.exit.i.i.while.cond.preheader.i.i_crit_edge ]
  br i1 %tobool17.not.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

for.inc.i.i:                                      ; preds = %kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_tables.1.2.i)
  %exitcond.not.i.i = icmp eq i32 %n_tables.1.2.i, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end211.i_crit_edge, label %for.body.i.i.1

for.inc.i.i.if.end211.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211.i

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %arrayidx.i.i.1 = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.i.1, align 4
  %51 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 8) #13
  %52 = extractvalue { i32, i1 } %51, 1
  br i1 %52, label %for.body.i.i.1.kcalloc.exit.i.i.1_crit_edge, label %if.end7.i.i.i.i.1, !prof !80

for.body.i.i.1.kcalloc.exit.i.i.1_crit_edge:      ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit.i.i.1

if.end7.i.i.i.i.1:                                ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %53 = extractvalue { i32, i1 } %51, 0
  %call8.i.i.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3520) #18
  br label %kcalloc.exit.i.i.1

kcalloc.exit.i.i.1:                               ; preds = %if.end7.i.i.i.i.1, %for.body.i.i.1.kcalloc.exit.i.i.1_crit_edge
  %retval.0.i.i.i.i.1 = phi ptr [ %call8.i.i.i.i.1, %if.end7.i.i.i.i.1 ], [ null, %for.body.i.i.1.kcalloc.exit.i.i.1_crit_edge ]
  %54 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %entries.i.i, align 4
  %arrayidx14.i.i.1 = getelementptr ptr, ptr %55, i32 1
  %56 = ptrtoint ptr %arrayidx14.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %retval.0.i.i.i.i.1, ptr %arrayidx14.i.i.1, align 4
  %57 = load ptr, ptr %entries.i.i, align 4
  %arrayidx16.i.i.1 = getelementptr ptr, ptr %57, i32 1
  %58 = ptrtoint ptr %arrayidx16.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx16.i.i.1, align 4
  %tobool17.not.i.i.1 = icmp eq ptr %59, null
  br i1 %tobool17.not.i.i.1, label %kcalloc.exit.i.i.1.while.cond.preheader.i.i_crit_edge, label %for.inc.i.i.1

kcalloc.exit.i.i.1.while.cond.preheader.i.i_crit_edge: ; preds = %kcalloc.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader.i.i

for.inc.i.i.1:                                    ; preds = %kcalloc.exit.i.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n_tables.1.2.i)
  %exitcond.not.i.i.1 = icmp eq i32 %n_tables.1.2.i, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.if.end211.i_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.if.end211.i_crit_edge:              ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211.i

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %arrayidx.i.i.2 = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.2, align 4
  %62 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %61, i32 8) #13
  %63 = extractvalue { i32, i1 } %62, 1
  br i1 %63, label %for.body.i.i.2.kcalloc.exit.i.i.2_crit_edge, label %if.end7.i.i.i.i.2, !prof !80

for.body.i.i.2.kcalloc.exit.i.i.2_crit_edge:      ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit.i.i.2

if.end7.i.i.i.i.2:                                ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  %64 = extractvalue { i32, i1 } %62, 0
  %call8.i.i.i.i.2 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %64, i32 noundef 3520) #18
  br label %kcalloc.exit.i.i.2

kcalloc.exit.i.i.2:                               ; preds = %if.end7.i.i.i.i.2, %for.body.i.i.2.kcalloc.exit.i.i.2_crit_edge
  %retval.0.i.i.i.i.2 = phi ptr [ %call8.i.i.i.i.2, %if.end7.i.i.i.i.2 ], [ null, %for.body.i.i.2.kcalloc.exit.i.i.2_crit_edge ]
  %65 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entries.i.i, align 4
  %arrayidx14.i.i.2 = getelementptr ptr, ptr %66, i32 2
  %67 = ptrtoint ptr %arrayidx14.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %retval.0.i.i.i.i.2, ptr %arrayidx14.i.i.2, align 4
  %68 = load ptr, ptr %entries.i.i, align 4
  %arrayidx16.i.i.2 = getelementptr ptr, ptr %68, i32 2
  %69 = ptrtoint ptr %arrayidx16.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx16.i.i.2, align 4
  %tobool17.not.i.i.2 = icmp eq ptr %70, null
  br i1 %tobool17.not.i.i.2, label %kcalloc.exit.i.i.2.while.cond.preheader.i.i_crit_edge, label %for.inc.i.i.2

kcalloc.exit.i.i.2.while.cond.preheader.i.i_crit_edge: ; preds = %kcalloc.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader.i.i

for.inc.i.i.2:                                    ; preds = %kcalloc.exit.i.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %n_tables.1.2.i)
  %exitcond.not.i.i.2 = icmp eq i32 %n_tables.1.2.i, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.if.end211.i_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.if.end211.i_crit_edge:              ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211.i

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %arrayidx.i.i.3 = getelementptr %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 5, i32 3
  %71 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i.i.3, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 8) #13
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %for.body.i.i.3.kcalloc.exit.i.i.3_crit_edge, label %if.end7.i.i.i.i.3, !prof !80

for.body.i.i.3.kcalloc.exit.i.i.3_crit_edge:      ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %kcalloc.exit.i.i.3

if.end7.i.i.i.i.3:                                ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  %75 = extractvalue { i32, i1 } %73, 0
  %call8.i.i.i.i.3 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %75, i32 noundef 3520) #18
  br label %kcalloc.exit.i.i.3

kcalloc.exit.i.i.3:                               ; preds = %if.end7.i.i.i.i.3, %for.body.i.i.3.kcalloc.exit.i.i.3_crit_edge
  %retval.0.i.i.i.i.3 = phi ptr [ %call8.i.i.i.i.3, %if.end7.i.i.i.i.3 ], [ null, %for.body.i.i.3.kcalloc.exit.i.i.3_crit_edge ]
  %76 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %entries.i.i, align 4
  %arrayidx14.i.i.3 = getelementptr ptr, ptr %77, i32 3
  %78 = ptrtoint ptr %arrayidx14.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %retval.0.i.i.i.i.3, ptr %arrayidx14.i.i.3, align 4
  %79 = load ptr, ptr %entries.i.i, align 4
  %arrayidx16.i.i.3 = getelementptr ptr, ptr %79, i32 3
  %80 = ptrtoint ptr %arrayidx16.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx16.i.i.3, align 4
  %tobool17.not.i.i.3 = icmp eq ptr %81, null
  br i1 %tobool17.not.i.i.3, label %kcalloc.exit.i.i.3.while.cond.preheader.i.i_crit_edge, label %kcalloc.exit.i.i.3.if.end211.i_crit_edge

kcalloc.exit.i.i.3.if.end211.i_crit_edge:         ; preds = %kcalloc.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end211.i

kcalloc.exit.i.i.3.while.cond.preheader.i.i_crit_edge: ; preds = %kcalloc.exit.i.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader.i.i

while.body.i.i:                                   ; preds = %while.cond.preheader.i.i
  %82 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %entries.i.i, align 4
  %arrayidx22.i.i = getelementptr ptr, ptr %83, i32 %i.056.i.i.lcssa
  %84 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx22.i.i, align 4
  tail call void @kfree(ptr noundef %85) #13
  br i1 %tobool20.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.1

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i.1:                                 ; preds = %while.body.i.i
  %dec.i.i.1 = add nsw i32 %i.056.i.i.lcssa, -1
  %86 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %entries.i.i, align 4
  %arrayidx22.i.i.1 = getelementptr ptr, ptr %87, i32 %dec.i.i.1
  %88 = ptrtoint ptr %arrayidx22.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx22.i.i.1, align 4
  tail call void @kfree(ptr noundef %89) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.1)
  %tobool20.not.i.i.1 = icmp eq i32 %dec.i.i.1, 0
  br i1 %tobool20.not.i.i.1, label %while.body.i.i.1.while.end.i.i_crit_edge, label %while.body.i.i.2

while.body.i.i.1.while.end.i.i_crit_edge:         ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i.i

while.body.i.i.2:                                 ; preds = %while.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #15
  %dec.i.i.2 = add nsw i32 %i.056.i.i.lcssa, -2
  %90 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %entries.i.i, align 4
  %arrayidx22.i.i.2 = getelementptr ptr, ptr %91, i32 %dec.i.i.2
  %92 = ptrtoint ptr %arrayidx22.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx22.i.i.2, align 4
  tail call void @kfree(ptr noundef %93) #13
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.2, %while.body.i.i.1.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %94 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %entries.i.i, align 4
  tail call void @kfree(ptr noundef %95) #13
  br label %err_free_utn.i.i

err_free_utn.i.i:                                 ; preds = %while.end.i.i, %if.end.i.i.err_free_utn.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #13
  br label %if.then209.i

if.then209.i:                                     ; preds = %err_free_utn.i.i, %if.else.i.if.then209.i_crit_edge
  tail call void @kfree(ptr noundef %node.0.i) #13
  br label %do.end

if.end211.i:                                      ; preds = %kcalloc.exit.i.i.3.if.end211.i_crit_edge, %for.inc.i.i.2.if.end211.i_crit_edge, %for.inc.i.i.1.if.end211.i_crit_edge, %for.inc.i.i.if.end211.i_crit_edge
  %96 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.pr.i = load ptr, ptr %shared.i, align 4
  %tobool213.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool213.not.i, label %if.end211.i.if.end225.i_crit_edge, label %if.then214.i

if.end211.i.if.end225.i_crit_edge:                ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225.i

if.then214.i:                                     ; preds = %if.end211.i
  %97 = ptrtoint ptr %.pr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr293.i = load ptr, ptr %.pr.i, align 4
  %tobool217.not.i = icmp eq ptr %.pr293.i, null
  br i1 %tobool217.not.i, label %if.then218.i, label %if.then214.i.if.end222.i_crit_edge

if.then214.i.if.end222.i_crit_edge:               ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end222.i

if.then218.i:                                     ; preds = %if.then214.i
  call void @__sanitizer_cov_trace_pc() #15
  %devices.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %.pr.i, i32 0, i32 1
  %98 = ptrtoint ptr %devices.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %devices.i, ptr %devices.i, align 4
  %prev.i.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %.pr.i, i32 0, i32 1, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %devices.i, ptr %prev.i.i, align 4
  %100 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %shared.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call7.i.i.i.i, ptr %101, align 4
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then218.i, %if.then214.i.if.end222.i_crit_edge, %land.lhs.true.i.if.end222.i_crit_edge
  %utn.0291296.i = phi ptr [ %call7.i.i.i.i, %if.then218.i ], [ %call7.i.i.i.i, %if.then214.i.if.end222.i_crit_edge ], [ %29, %land.lhs.true.i.if.end222.i_crit_edge ]
  %list.i = getelementptr inbounds %struct.udp_tunnel_nic_shared_node, ptr %node.0.i, i32 0, i32 1
  %103 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %shared.i, align 4
  %devices224.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %104, i32 0, i32 1
  %prev.i279.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %104, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i279.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i279.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %106, ptr noundef %devices224.i) #13
  br i1 %call.i.i.i, label %if.end.i.i280.i, label %if.end222.i.if.end225.i_crit_edge

if.end222.i.if.end225.i_crit_edge:                ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end225.i

if.end.i.i280.i:                                  ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %prev.i279.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %list.i, ptr %prev.i279.i, align 4
  %108 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %devices224.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.udp_tunnel_nic_shared_node, ptr %node.0.i, i32 0, i32 1, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i, align 8
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %list.i, ptr %106, align 4
  br label %if.end225.i

if.end225.i:                                      ; preds = %if.end.i.i280.i, %if.end222.i.if.end225.i_crit_edge, %if.end211.i.if.end225.i_crit_edge
  %utn.0292.i = phi ptr [ %call7.i.i.i.i, %if.end211.i.if.end225.i_crit_edge ], [ %utn.0291296.i, %if.end222.i.if.end225.i_crit_edge ], [ %utn.0291296.i, %if.end.i.i280.i ]
  %dev226.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn.0292.i, i32 0, i32 1
  %111 = ptrtoint ptr %dev226.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %1, ptr %dev226.i, align 4
  %tobool.not.i281.i = icmp eq ptr %1, null
  br i1 %tobool.not.i281.i, label %if.end225.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end225.i.dev_hold.exit.i_crit_edge:            ; preds = %if.end225.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end225.i
  %112 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %113 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %115 = ptrtoint ptr %114 to i32
  %116 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i282.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx.i282.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i282.i, align 4
  %add.i.i = add i32 %121, %115
  %122 = inttoptr i32 %add.i.i to ptr
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %122, align 4
  %add13.i.i = add i32 %124, 1
  store i32 %add13.i.i, ptr %122, align 4
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !82
  %and.i.i.i.i = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !80

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %112) #13, !srcloc !83
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end225.i.dev_hold.exit.i_crit_edge
  %udp_tunnel_nic.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 153
  %126 = ptrtoint ptr %udp_tunnel_nic.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %utn.0292.i, ptr %udp_tunnel_nic.i, align 16
  %flags227.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 4
  %127 = ptrtoint ptr %flags227.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags227.i, align 4
  %and228.i = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %tobool229.not.i, label %if.then230.i, label %dev_hold.exit.i.cleanup_crit_edge

dev_hold.exit.i.cleanup_crit_edge:                ; preds = %dev_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then230.i:                                     ; preds = %dev_hold.exit.i
  %call.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i283.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i283.i, label %land.rhs.i.i, label %if.then230.i.if.end29.i.i_crit_edge

if.then230.i.if.end29.i.i_crit_edge:              ; preds = %if.then230.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.then230.i
  %.b44.i.i = load i1, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  br i1 %.b44.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !78

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23, i32 noundef 131) #13
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.then230.i.if.end29.i.i_crit_edge
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %129 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %130, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool37.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.cleanup_crit_edge, label %if.end39.i.i

if.end29.i.i.cleanup_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i.i = tail call i32 @call_netdevice_notifiers(i32 noundef 28, ptr noundef %1) #13
  br label %cleanup

do.end:                                           ; preds = %if.then209.i, %if.then193.i.do.end_crit_edge, %do.end173.i, %do.end127.i, %do.end92.i, %do.end57.i, %do.end20.i
  %retval.0.i.ph = phi i32 [ -12, %if.then193.i.do.end_crit_edge ], [ -22, %do.end20.i ], [ -22, %do.end57.i ], [ -22, %do.end92.i ], [ -12, %if.then209.i ], [ -22, %do.end173.i ], [ -22, %do.end127.i ]
  %131 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %1, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i97 = icmp eq i8 %132, 0
  br i1 %tobool.not.i97, label %do.end.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end.netdev_name.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @strchr(ptr noundef %1, i32 noundef 37) #13
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %1, ptr @.str.13
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end.netdev_name.exit_crit_edge
  %retval.0.i98 = phi ptr [ @.str.13, %do.end.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 121
  %133 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %134 = icmp ult i8 %bf.load45.i, 6
  br i1 %134, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.if.end24_crit_edge, label %if.then.i, !prof !78

land.end.i.if.end24_crit_edge:                    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %1, i32 noundef %bf.cast21.i) #13
  br label %if.end24

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %135 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.udp_tunnel_nic_netdevice_event, i32 0, i32 %135
  %136 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %136)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end24

if.end24:                                         ; preds = %switch.lookup, %if.then.i, %land.end.i.if.end24_crit_edge
  %retval.0.i99 = phi ptr [ @.str.22, %if.then.i ], [ @.str.22, %land.end.i.if.end24_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 900, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i98, ptr noundef nonnull %retval.0.i99, i32 noundef %retval.0.i.ph) #13
  %or.i = sub nsw i32 32769, %retval.0.i.ph
  br label %cleanup

if.end26:                                         ; preds = %if.end
  %udp_tunnel_nic = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 153
  %137 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %udp_tunnel_nic, align 16
  %tobool27.not = icmp eq ptr %138, null
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp30 = icmp eq i32 %event, 6
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end29
  %shared.i103 = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 3
  %139 = ptrtoint ptr %shared.i103 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %shared.i103, align 4
  %tobool.not.i104 = icmp eq ptr %140, null
  br i1 %tobool.not.i104, label %if.then31.if.end36.i_crit_edge, label %if.then.i106

if.then31.if.end36.i_crit_edge:                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36.i

if.then.i106:                                     ; preds = %if.then31
  %devices.i105 = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %140, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then.i106
  %.pn.in.i = phi ptr [ %devices.i105, %if.then.i106 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %141 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i107 = icmp eq ptr %.pn.i, %devices.i105
  br i1 %cmp.not.i107, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %node.0.i108 = getelementptr i8, ptr %.pn.i, i32 -4
  %142 = ptrtoint ptr %node.0.i108 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %node.0.i108, align 4
  %cmp5.i = icmp eq ptr %143, %1
  br i1 %cmp5.i, label %if.end17.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond.i

if.end17.i:                                       ; preds = %for.body.i
  %node.0.i108.le = getelementptr i8, ptr %.pn.i, i32 -4
  %call.i.i.i109 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #13
  br i1 %call.i.i.i109, label %if.end.i.i.i, label %if.end17.i.list_del.exit.i_crit_edge

if.end17.i.list_del.exit.i_crit_edge:             ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i.i110 = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i.i110 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i.i110, align 4
  %146 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end17.i.list_del.exit.i_crit_edge
  %150 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i.i111 = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i111, align 4
  tail call void @kfree(ptr noundef %node.0.i108.le) #13
  %152 = ptrtoint ptr %shared.i103 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %shared.i103, align 4
  %devices20.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %devices20.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load volatile ptr, ptr %devices20.i, align 4
  %cmp24.not.i = icmp eq ptr %155, %devices20.i
  %add.ptr27.i = getelementptr i8, ptr %155, i32 -4
  %tobool28.not70.i = icmp eq ptr %add.ptr27.i, null
  %tobool28.not.i = or i1 %cmp24.not.i, %tobool28.not70.i
  br i1 %tobool28.not.i, label %cleanup.thread68.i, label %if.then29.i

if.then29.i:                                      ; preds = %list_del.exit.i
  %call.i.i112 = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i112)
  %tobool.not.i.i113 = icmp eq i32 %call.i.i112, 0
  br i1 %tobool.not.i.i113, label %land.rhs.i.i115, label %if.then29.i.if.end29.i.i120_crit_edge

if.then29.i.if.end29.i.i120_crit_edge:            ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i120

land.rhs.i.i115:                                  ; preds = %if.then29.i
  %.b44.i.i114 = load i1, ptr @udp_tunnel_drop_rx_info.__already_done, align 1
  br i1 %.b44.i.i114, label %land.rhs.i.i115.if.end29.i.i120_crit_edge, label %if.then.i.i116, !prof !78

land.rhs.i.i115.if.end29.i.i120_crit_edge:        ; preds = %land.rhs.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i120

if.then.i.i116:                                   ; preds = %land.rhs.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_drop_rx_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23, i32 noundef 139) #13
  br label %if.end29.i.i120

if.end29.i.i120:                                  ; preds = %if.then.i.i116, %land.rhs.i.i115.if.end29.i.i120_crit_edge, %if.then29.i.if.end29.i.i120_crit_edge
  %features.i.i117 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %156 = ptrtoint ptr %features.i.i117 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %features.i.i117, align 16
  %and.i.i118 = and i64 %157, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i118)
  %tobool37.not.i.i119 = icmp eq i64 %and.i.i118, 0
  br i1 %tobool37.not.i.i119, label %if.end29.i.i120.cleanup.i_crit_edge, label %if.end39.i.i122

if.end29.i.i120.cleanup.i_crit_edge:              ; preds = %if.end29.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

if.end39.i.i122:                                  ; preds = %if.end29.i.i120
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i.i121 = tail call i32 @call_netdevice_notifiers(i32 noundef 29, ptr noundef %1) #13
  br label %cleanup.i

cleanup.thread68.i:                               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %153, align 4
  br label %if.end36.i

cleanup.i:                                        ; preds = %if.end39.i.i122, %if.end29.i.i120.cleanup.i_crit_edge
  %159 = ptrtoint ptr %add.ptr27.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr27.i, align 4
  %dev31.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %138, i32 0, i32 1
  %161 = ptrtoint ptr %dev31.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %160, ptr %dev31.i, align 4
  br label %release_dev.i

if.end36.i:                                       ; preds = %cleanup.thread68.i, %if.then31.if.end36.i_crit_edge
  tail call fastcc void @udp_tunnel_nic_flush(ptr noundef %1, ptr noundef nonnull %138) #13
  %work_pending.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %138, i32 0, i32 2
  %162 = ptrtoint ptr %work_pending.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load.i = load i8, ptr %work_pending.i, align 4
  %163 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool37.not.i = icmp eq i8 %163, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end36.i.cleanup_crit_edge

if.end36.i.cleanup_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39.i:                                       ; preds = %if.end36.i
  %n_tables.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %138, i32 0, i32 3
  %164 = ptrtoint ptr %n_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %n_tables.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp7.not.i.i = icmp eq i32 %165, 0
  br i1 %cmp7.not.i.i, label %if.end39.i.udp_tunnel_nic_free.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end39.i.udp_tunnel_nic_free.exit.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_free.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end39.i
  %entries.i.i123 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %138, i32 0, i32 5
  br label %for.body.i.i126

for.body.i.i126:                                  ; preds = %for.body.i.i126.for.body.i.i126_crit_edge, %for.body.lr.ph.i.i
  %i.08.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i125, %for.body.i.i126.for.body.i.i126_crit_edge ]
  %166 = ptrtoint ptr %entries.i.i123 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %entries.i.i123, align 4
  %arrayidx.i.i124 = getelementptr ptr, ptr %167, i32 %i.08.i.i
  %168 = ptrtoint ptr %arrayidx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i.i124, align 4
  tail call void @kfree(ptr noundef %169) #13
  %inc.i.i125 = add nuw i32 %i.08.i.i, 1
  %170 = ptrtoint ptr %n_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %n_tables.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i125, %171
  br i1 %cmp.i.i, label %for.body.i.i126.for.body.i.i126_crit_edge, label %for.body.i.i126.udp_tunnel_nic_free.exit.i_crit_edge

for.body.i.i126.udp_tunnel_nic_free.exit.i_crit_edge: ; preds = %for.body.i.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_free.exit.i

for.body.i.i126.for.body.i.i126_crit_edge:        ; preds = %for.body.i.i126
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i126

udp_tunnel_nic_free.exit.i:                       ; preds = %for.body.i.i126.udp_tunnel_nic_free.exit.i_crit_edge, %if.end39.i.udp_tunnel_nic_free.exit.i_crit_edge
  %entries1.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %138, i32 0, i32 5
  %172 = ptrtoint ptr %entries1.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %entries1.i.i, align 4
  tail call void @kfree(ptr noundef %173) #13
  tail call void @kfree(ptr noundef nonnull %138) #13
  br label %release_dev.i

release_dev.i:                                    ; preds = %udp_tunnel_nic_free.exit.i, %cleanup.i
  %174 = ptrtoint ptr %udp_tunnel_nic to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %udp_tunnel_nic, align 16
  %tobool.not.i65.i = icmp eq ptr %1, null
  br i1 %tobool.not.i65.i, label %release_dev.i.cleanup_crit_edge, label %do.body1.i.i135

release_dev.i.cleanup_crit_edge:                  ; preds = %release_dev.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1.i.i135:                                  ; preds = %release_dev.i
  %175 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !81
  %pcpu_refcnt.i.i128 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %176 = ptrtoint ptr %pcpu_refcnt.i.i128 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pcpu_refcnt.i.i128, align 4
  %178 = ptrtoint ptr %177 to i32
  %179 = tail call i32 @llvm.read_register.i32(metadata !68) #13
  %and.i.i.i129 = and i32 %179, -16384
  %180 = inttoptr i32 %and.i.i.i129 to ptr
  %cpu.i.i130 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %cpu.i.i130 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cpu.i.i130, align 4
  %arrayidx.i66.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %182
  %183 = ptrtoint ptr %arrayidx.i66.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i66.i, align 4
  %add.i.i131 = add i32 %184, %178
  %185 = inttoptr i32 %add.i.i131 to ptr
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %add13.i.i132 = add i32 %187, -1
  store i32 %add13.i.i132, ptr %185, align 4
  %188 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !82
  %and.i.i.i.i133 = and i32 %188, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i133)
  %tobool24.not.i.i134 = icmp eq i32 %and.i.i.i.i133, 0
  br i1 %tobool24.not.i.i134, label %if.then28.i.i136, label %do.body1.i.i135.do.end30.i.i137_crit_edge, !prof !80

do.body1.i.i135.do.end30.i.i137_crit_edge:        ; preds = %do.body1.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end30.i.i137

if.then28.i.i136:                                 ; preds = %do.body1.i.i135
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @warn_bogus_irq_restore() #13
  br label %do.end30.i.i137

do.end30.i.i137:                                  ; preds = %if.then28.i.i136, %do.body1.i.i135.do.end30.i.i137_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %175) #13, !srcloc !83
  br label %cleanup

if.end32:                                         ; preds = %if.end29
  %flags = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %3, i32 0, i32 4
  %189 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags, align 4
  %and = and i32 %190, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %if.end35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  %191 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %event, label %if.end35.cleanup_crit_edge [
    i32 1, label %if.then37
    i32 10, label %if.then73
  ]

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  %call39 = tail call fastcc zeroext i1 @udp_tunnel_nic_is_empty(ptr noundef %1, ptr noundef nonnull %138)
  br i1 %call39, label %if.then37.if.end63_crit_edge, label %do.end57, !prof !78

if.then37.if.end63_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

do.end57:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 918, i32 noundef 9, ptr noundef null) #13
  br label %if.end63

if.end63:                                         ; preds = %do.end57, %if.then37.if.end63_crit_edge
  tail call fastcc void @udp_tunnel_get_rx_info(ptr noundef %1)
  br label %cleanup

if.then73:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @udp_tunnel_nic_flush(ptr noundef %1, ptr noundef nonnull %138)
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end63, %if.end35.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end30.i.i137, %release_dev.i.cleanup_crit_edge, %if.end36.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end24, %if.end39.i.i, %if.end29.i.i.cleanup_crit_edge, %dev_hold.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end63 ], [ 1, %if.then73 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %or.i, %if.end24 ], [ 1, %dev_hold.exit.i.cleanup_crit_edge ], [ 1, %if.end29.i.i.cleanup_crit_edge ], [ 1, %if.end39.i.i ], [ 1, %if.end36.i.cleanup_crit_edge ], [ 1, %release_dev.i.cleanup_crit_edge ], [ 1, %do.end30.i.i137 ], [ 1, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @udp_tunnel_nic_is_empty(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %utn) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %0 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %n_tables = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 3
  %2 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22.not = icmp eq i32 %3, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.cond1.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %cmp25 = phi i1 [ true, %for.cond1.preheader.lr.ph ], [ %cmp, %for.inc6.for.cond1.preheader_crit_edge ]
  %i.023 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp220.not = icmp eq i32 %5, 0
  br i1 %cmp220.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.023
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  br label %for.body3

for.cond1:                                        ; preds = %udp_tunnel_nic_entry_is_free.exit
  %inc = add nuw i32 %j.021, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond1.for.inc6_crit_edge, label %for.cond1.for.body3_crit_edge

for.cond1.for.body3_crit_edge:                    ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.cond1.for.inc6_crit_edge:                     ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6

for.body3:                                        ; preds = %for.cond1.for.body3_crit_edge, %for.body3.lr.ph
  %j.021 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.cond1.for.body3_crit_edge ]
  %use_cnt.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.021, i32 3
  %10 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %use_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i = icmp eq i16 %11, 0
  br i1 %cmp.i, label %udp_tunnel_nic_entry_is_free.exit, label %for.body3.cleanup_crit_edge

for.body3.cleanup_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

udp_tunnel_nic_entry_is_free.exit:                ; preds = %for.body3
  %flags.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.021, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %for.cond1, label %udp_tunnel_nic_entry_is_free.exit.cleanup_crit_edge

udp_tunnel_nic_entry_is_free.exit.cleanup_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc6:                                         ; preds = %for.cond1.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %i.023, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7, i32 %3)
  %cmp = icmp ult i32 %inc7, %3
  %exitcond28.not = icmp eq i32 %inc7, %3
  br i1 %exitcond28.not, label %for.inc6.cleanup_crit_edge, label %for.inc6.for.cond1.preheader_crit_edge

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.inc6.cleanup_crit_edge:                       ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.inc6.cleanup_crit_edge, %udp_tunnel_nic_entry_is_free.exit.cleanup_crit_edge, %for.body3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp19 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp25, %udp_tunnel_nic_entry_is_free.exit.cleanup_crit_edge ], [ %cmp25, %for.body3.cleanup_crit_edge ], [ %cmp, %for.inc6.cleanup_crit_edge ]
  %14 = xor i1 %cmp19, true
  ret i1 %14
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_tunnel_get_rx_info(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b44 = load i1, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !78

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23, i32 noundef 131) #13
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %and = and i64 %1, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool37.not = icmp eq i64 %and, 0
  br i1 %tobool37.not, label %if.end29.return_crit_edge, label %if.end39

if.end29.return_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  %call40 = tail call i32 @call_netdevice_notifiers(i32 noundef 28, ptr noundef %dev) #13
  br label %return

return:                                           ; preds = %if.end39, %if.end29.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udp_tunnel_nic_flush(ptr noundef %dev, ptr noundef %utn) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %udp_tunnel_nic_info = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 152
  %0 = ptrtoint ptr %udp_tunnel_nic_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udp_tunnel_nic_info, align 4
  %n_tables = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 3
  %2 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp70.not = icmp eq i32 %3, 0
  br i1 %cmp70.not, label %entry.for.end8_crit_edge, label %for.cond1.preheader.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %entries = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  %need_sync.i.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc6.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %i.071 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc7, %for.inc6.for.cond1.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.071
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp267.not = icmp eq i32 %5, 0
  br i1 %cmp267.not, label %for.cond1.preheader.for.inc6_crit_edge, label %for.cond1.preheader.for.body3_crit_edge

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.cond1.preheader.for.inc6_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6

for.body3:                                        ; preds = %if.end.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %j.068 = phi i32 [ %inc, %if.end.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %6 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entries, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %i.071
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %use_cnt = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.068, i32 3
  %10 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %use_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %for.body3.if.end_crit_edge, label %if.end.i

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end.i:                                         ; preds = %for.body3
  %conv = zext i16 %11 to i32
  %sub = sub nsw i32 0, %conv
  %flags.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %9, i32 %j.068, i32 2
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags.i, align 1
  %14 = and i8 %13, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %use_cnt, align 2
  %17 = trunc i32 %sub to i16
  %conv27.i = add i16 %16, %17
  store i16 %conv27.i, ptr %use_cnt, align 2
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end41.i.thread

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv27.i)
  %tobool30.not.i = icmp ne i16 %conv27.i, 0
  %conv34.i = zext i16 %conv27.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv34.i, i32 %sub)
  %tobool35.not.i = icmp eq i32 %conv34.i, %sub
  %cmp38.i = xor i1 %tobool30.not.i, %tobool35.not.i
  br i1 %cmp38.i, label %land.lhs.true.i.if.end_crit_edge, label %if.end41.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end41.i:                                       ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags.i, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool49.not.i = icmp eq i8 %20, 0
  br i1 %tobool49.not.i, label %if.end41.i.if.end58.i_crit_edge, label %if.then50.i

if.end41.i.if.end58.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.end41.i.thread:                                ; preds = %if.end.i
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool49.not.i75 = icmp eq i8 %23, 0
  br i1 %tobool49.not.i75, label %if.end41.i.thread.if.end58.i_crit_edge, label %if.then50.i.thread

if.end41.i.thread.if.end58.i_crit_edge:           ; preds = %if.end41.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58.i

if.then50.i.thread:                               ; preds = %if.end41.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  %conv54.i76 = and i8 %22, -2
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv54.i76, ptr %flags.i, align 1
  br label %if.end58.i

if.then50.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv54.i = and i8 %19, -2
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv54.i, ptr %flags.i, align 1
  br label %if.end

if.end58.i:                                       ; preds = %if.then50.i.thread, %if.end41.i.thread.if.end58.i_crit_edge, %if.end41.i.if.end58.i_crit_edge
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags.i, align 1
  %conv2.i.i = or i8 %27, 2
  store i8 %conv2.i.i, ptr %flags.i, align 1
  %28 = ptrtoint ptr %need_sync.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i.i = load i8, ptr %need_sync.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %need_sync.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end58.i, %if.then50.i, %land.lhs.true.i.if.end_crit_edge, %for.body3.if.end_crit_edge
  %inc = add nuw i32 %j.068, 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp ult i32 %inc, %30
  br i1 %cmp2, label %if.end.for.body3_crit_edge, label %if.end.for.inc6_crit_edge

if.end.for.inc6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6

if.end.for.body3_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3

for.inc6:                                         ; preds = %if.end.for.inc6_crit_edge, %for.cond1.preheader.for.inc6_crit_edge
  %inc7 = add nuw i32 %i.071, 1
  %31 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_tables, align 4
  %cmp = icmp ult i32 %inc7, %32
  br i1 %cmp, label %for.inc6.for.cond1.preheader_crit_edge, label %for.inc6.for.end8_crit_edge

for.inc6.for.end8_crit_edge:                      ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8

for.inc6.for.cond1.preheader_crit_edge:           ; preds = %for.inc6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader

for.end8:                                         ; preds = %for.inc6.for.end8_crit_edge, %entry.for.end8_crit_edge
  tail call fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %dev, ptr noundef %utn)
  %33 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n_tables, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp1173.not = icmp eq i32 %34, 0
  br i1 %cmp1173.not, label %for.end8.for.end21_crit_edge, label %for.body13.lr.ph

for.end8.for.end21_crit_edge:                     ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end21

for.body13.lr.ph:                                 ; preds = %for.end8
  %entries14 = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 5
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body13.lr.ph
  %i.174 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc20, %for.body13.for.body13_crit_edge ]
  %35 = ptrtoint ptr %entries14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %entries14, align 4
  %arrayidx15 = getelementptr ptr, ptr %36, i32 %i.174
  %37 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx15, align 4
  %arrayidx17 = getelementptr %struct.udp_tunnel_nic_info, ptr %1, i32 0, i32 5, i32 %i.174
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx17, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 8) #13
  %42 = extractvalue { i32, i1 } %41, 1
  %43 = extractvalue { i32, i1 } %41, 0
  %retval.0.i = select i1 %42, i32 -1, i32 %43
  %44 = call ptr @memset(ptr %38, i32 0, i32 %retval.0.i)
  %inc20 = add nuw i32 %i.174, 1
  %45 = ptrtoint ptr %n_tables to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_tables, align 4
  %cmp11 = icmp ult i32 %inc20, %46
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.body13.for.end21_crit_edge

for.body13.for.end21_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end21

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body13

for.end21:                                        ; preds = %for.body13.for.end21_crit_edge, %for.end8.for.end21_crit_edge
  %need_sync = getelementptr inbounds %struct.udp_tunnel_nic, ptr %utn, i32 0, i32 2
  %47 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %need_sync, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool22.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool22.not, label %for.end21.if.end37_crit_edge, label %do.end, !prof !78

for.end21.if.end37_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

do.end:                                           ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 673, i32 noundef 9, ptr noundef null) #13
  br label %if.end37

if.end37:                                         ; preds = %do.end, %for.end21.if.end37_crit_edge
  %48 = ptrtoint ptr %need_sync to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load44 = load i8, ptr %need_sync, align 4
  %bf.clear = and i8 %bf.load44, -65
  store i8 %bf.clear, ptr %need_sync, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udp_tunnel_nic_device_sync_work(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #13
  %work_pending = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %work_pending, align 4
  %bf.clear = and i8 %bf.load, -33
  store i8 %bf.clear, ptr %work_pending, align 4
  %dev = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call fastcc void @__udp_tunnel_nic_device_sync(ptr noundef %2, ptr noundef %work)
  %3 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load1 = load i8, ptr %work_pending, align 4
  %4 = and i8 %bf.load1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %udp_tunnel_nic_info.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 152
  %7 = ptrtoint ptr %udp_tunnel_nic_info.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udp_tunnel_nic_info.i, align 4
  %n_tables.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 3
  %9 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp84.not.i = icmp eq i32 %10, 0
  br i1 %cmp84.not.i, label %if.then.for.end8.i_crit_edge, label %for.cond1.preheader.lr.ph.i

if.then.for.end8.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8.i

for.cond1.preheader.lr.ph.i:                      ; preds = %if.then
  %entries.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 5
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc6.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.085.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc7.i, %for.inc6.i.for.cond1.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.udp_tunnel_nic_info, ptr %8, i32 0, i32 5, i32 %i.085.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp280.not.i = icmp eq i32 %12, 0
  br i1 %cmp280.not.i, label %for.cond1.preheader.i.for.inc6.i_crit_edge, label %for.cond1.preheader.i.for.body3.i_crit_edge

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.cond1.preheader.i.for.inc6.i_crit_edge:       ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6.i

for.body3.i:                                      ; preds = %udp_tunnel_nic_entry_freeze_used.exit.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %j.081.i = phi i32 [ %inc.i, %udp_tunnel_nic_entry_freeze_used.exit.i.for.body3.i_crit_edge ], [ 0, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %13 = ptrtoint ptr %entries.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %entries.i, align 4
  %arrayidx4.i = getelementptr ptr, ptr %14, i32 %i.085.i
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4.i, align 4
  %use_cnt.i.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %16, i32 %j.081.i, i32 3
  %17 = ptrtoint ptr %use_cnt.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %use_cnt.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i.i.i = icmp eq i16 %18, 0
  br i1 %cmp.i.i.i, label %udp_tunnel_nic_entry_is_free.exit.i.i, label %for.body3.i.if.then.i.i_crit_edge

for.body3.i.if.then.i.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

udp_tunnel_nic_entry_is_free.exit.i.i:            ; preds = %for.body3.i
  %flags.i.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %16, i32 %j.081.i, i32 2
  %19 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i.i, label %udp_tunnel_nic_entry_is_free.exit.i.i.udp_tunnel_nic_entry_freeze_used.exit.i_crit_edge, label %udp_tunnel_nic_entry_is_free.exit.i.i.if.then.i.i_crit_edge

udp_tunnel_nic_entry_is_free.exit.i.i.if.then.i.i_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i

udp_tunnel_nic_entry_is_free.exit.i.i.udp_tunnel_nic_entry_freeze_used.exit.i_crit_edge: ; preds = %udp_tunnel_nic_entry_is_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_nic_entry_freeze_used.exit.i

if.then.i.i:                                      ; preds = %udp_tunnel_nic_entry_is_free.exit.i.i.if.then.i.i_crit_edge, %for.body3.i.if.then.i.i_crit_edge
  %flags.i.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %16, i32 %j.081.i, i32 2
  %21 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags.i.i, align 1
  %23 = or i8 %22, 8
  store i8 %23, ptr %flags.i.i, align 1
  br label %udp_tunnel_nic_entry_freeze_used.exit.i

udp_tunnel_nic_entry_freeze_used.exit.i:          ; preds = %if.then.i.i, %udp_tunnel_nic_entry_is_free.exit.i.i.udp_tunnel_nic_entry_freeze_used.exit.i_crit_edge
  %inc.i = add nuw i32 %j.081.i, 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %25
  br i1 %cmp2.i, label %udp_tunnel_nic_entry_freeze_used.exit.i.for.body3.i_crit_edge, label %udp_tunnel_nic_entry_freeze_used.exit.i.for.inc6.i_crit_edge

udp_tunnel_nic_entry_freeze_used.exit.i.for.inc6.i_crit_edge: ; preds = %udp_tunnel_nic_entry_freeze_used.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc6.i

udp_tunnel_nic_entry_freeze_used.exit.i.for.body3.i_crit_edge: ; preds = %udp_tunnel_nic_entry_freeze_used.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i

for.inc6.i:                                       ; preds = %udp_tunnel_nic_entry_freeze_used.exit.i.for.inc6.i_crit_edge, %for.cond1.preheader.i.for.inc6.i_crit_edge
  %inc7.i = add nuw i32 %i.085.i, 1
  %26 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_tables.i, align 4
  %cmp.i = icmp ult i32 %inc7.i, %27
  br i1 %cmp.i, label %for.inc6.i.for.cond1.preheader.i_crit_edge, label %for.inc6.i.for.end8.i_crit_edge

for.inc6.i.for.end8.i_crit_edge:                  ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end8.i

for.inc6.i.for.cond1.preheader.i_crit_edge:       ; preds = %for.inc6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i

for.end8.i:                                       ; preds = %for.inc6.i.for.end8.i_crit_edge, %if.then.for.end8.i_crit_edge
  %missed.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 4
  %28 = ptrtoint ptr %missed.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %missed.i, align 4
  %29 = ptrtoint ptr %work_pending to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %work_pending, align 4
  %bf.clear.i = and i8 %bf.load.i, -65
  store i8 %bf.clear.i, ptr %work_pending, align 4
  %shared.i = getelementptr inbounds %struct.udp_tunnel_nic_info, ptr %8, i32 0, i32 3
  %30 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end8.i
  %call.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.then.i.if.end29.i.i_crit_edge

if.then.i.if.end29.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b44.i.i = load i1, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  br i1 %.b44.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i66.i, !prof !78

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i.i

if.then.i66.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23, i32 noundef 131) #13
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i66.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %if.then.i.if.end29.i.i_crit_edge
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %32 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %33, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool37.not.i.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.if.end.i_crit_edge, label %if.end39.i.i

if.end29.i.i.if.end.i_crit_edge:                  ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end39.i.i:                                     ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i.i = tail call i32 @call_netdevice_notifiers(i32 noundef 28, ptr noundef %6) #13
  br label %if.end.i

if.else.i:                                        ; preds = %for.end8.i
  %devices.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn87.i = load ptr, ptr %devices.i, align 4
  %cmp13.not89.i = icmp eq ptr %.pn87.i, %devices.i
  br i1 %cmp13.not89.i, label %if.else.i.if.end.i_crit_edge, label %if.else.i.for.body14.i_crit_edge

if.else.i.for.body14.i_crit_edge:                 ; preds = %if.else.i
  br label %for.body14.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.body14.i:                                     ; preds = %udp_tunnel_get_rx_info.exit78.i.for.body14.i_crit_edge, %if.else.i.for.body14.i_crit_edge
  %.pn90.i = phi ptr [ %.pn.i, %udp_tunnel_get_rx_info.exit78.i.for.body14.i_crit_edge ], [ %.pn87.i, %if.else.i.for.body14.i_crit_edge ]
  %node.0.i = getelementptr i8, ptr %.pn90.i, i32 -4
  %35 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %node.0.i, align 4
  %call.i67.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67.i)
  %tobool.not.i68.i = icmp eq i32 %call.i67.i, 0
  br i1 %tobool.not.i68.i, label %land.rhs.i70.i, label %for.body14.i.if.end29.i75.i_crit_edge

for.body14.i.if.end29.i75.i_crit_edge:            ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i75.i

land.rhs.i70.i:                                   ; preds = %for.body14.i
  %.b44.i69.i = load i1, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  br i1 %.b44.i69.i, label %land.rhs.i70.i.if.end29.i75.i_crit_edge, label %if.then.i71.i, !prof !78

land.rhs.i70.i.if.end29.i75.i_crit_edge:          ; preds = %land.rhs.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29.i75.i

if.then.i71.i:                                    ; preds = %land.rhs.i70.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @udp_tunnel_get_rx_info.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 131, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.23, i32 noundef 131) #13
  br label %if.end29.i75.i

if.end29.i75.i:                                   ; preds = %if.then.i71.i, %land.rhs.i70.i.if.end29.i75.i_crit_edge, %for.body14.i.if.end29.i75.i_crit_edge
  %features.i72.i = getelementptr inbounds %struct.net_device, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %features.i72.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %features.i72.i, align 16
  %and.i73.i = and i64 %38, 4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i73.i)
  %tobool37.not.i74.i = icmp eq i64 %and.i73.i, 0
  br i1 %tobool37.not.i74.i, label %if.end29.i75.i.udp_tunnel_get_rx_info.exit78.i_crit_edge, label %if.end39.i77.i

if.end29.i75.i.udp_tunnel_get_rx_info.exit78.i_crit_edge: ; preds = %if.end29.i75.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %udp_tunnel_get_rx_info.exit78.i

if.end39.i77.i:                                   ; preds = %if.end29.i75.i
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i76.i = tail call i32 @call_netdevice_notifiers(i32 noundef 28, ptr noundef %36) #13
  br label %udp_tunnel_get_rx_info.exit78.i

udp_tunnel_get_rx_info.exit78.i:                  ; preds = %if.end39.i77.i, %if.end29.i75.i.udp_tunnel_get_rx_info.exit78.i_crit_edge
  %39 = ptrtoint ptr %.pn90.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn90.i, align 4
  %40 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shared.i, align 4
  %devices12.i = getelementptr inbounds %struct.udp_tunnel_nic_shared, ptr %41, i32 0, i32 1
  %cmp13.not.i = icmp eq ptr %.pn.i, %devices12.i
  br i1 %cmp13.not.i, label %udp_tunnel_get_rx_info.exit78.i.if.end.i_crit_edge, label %udp_tunnel_get_rx_info.exit78.i.for.body14.i_crit_edge

udp_tunnel_get_rx_info.exit78.i.for.body14.i_crit_edge: ; preds = %udp_tunnel_get_rx_info.exit78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body14.i

udp_tunnel_get_rx_info.exit78.i.if.end.i_crit_edge: ; preds = %udp_tunnel_get_rx_info.exit78.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %udp_tunnel_get_rx_info.exit78.i.if.end.i_crit_edge, %if.else.i.if.end.i_crit_edge, %if.end39.i.i, %if.end29.i.i.if.end.i_crit_edge
  %42 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp2593.not.i = icmp eq i32 %43, 0
  br i1 %cmp2593.not.i, label %if.end.i.if.end_crit_edge, label %for.cond27.preheader.lr.ph.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.cond27.preheader.lr.ph.i:                     ; preds = %if.end.i
  %entries33.i = getelementptr inbounds %struct.udp_tunnel_nic, ptr %work, i32 0, i32 5
  br label %for.cond27.preheader.i

for.cond27.preheader.i:                           ; preds = %for.inc39.i.for.cond27.preheader.i_crit_edge, %for.cond27.preheader.lr.ph.i
  %i.194.i = phi i32 [ 0, %for.cond27.preheader.lr.ph.i ], [ %inc40.i, %for.inc39.i.for.cond27.preheader.i_crit_edge ]
  %arrayidx29.i = getelementptr %struct.udp_tunnel_nic_info, ptr %8, i32 0, i32 5, i32 %i.194.i
  %44 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3191.not.i = icmp eq i32 %45, 0
  br i1 %cmp3191.not.i, label %for.cond27.preheader.i.for.inc39.i_crit_edge, label %for.cond27.preheader.i.for.body32.i_crit_edge

for.cond27.preheader.i.for.body32.i_crit_edge:    ; preds = %for.cond27.preheader.i
  br label %for.body32.i

for.cond27.preheader.i.for.inc39.i_crit_edge:     ; preds = %for.cond27.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc39.i

for.body32.i:                                     ; preds = %for.body32.i.for.body32.i_crit_edge, %for.cond27.preheader.i.for.body32.i_crit_edge
  %j.192.i = phi i32 [ %inc37.i, %for.body32.i.for.body32.i_crit_edge ], [ 0, %for.cond27.preheader.i.for.body32.i_crit_edge ]
  %46 = ptrtoint ptr %entries33.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %entries33.i, align 4
  %arrayidx34.i = getelementptr ptr, ptr %47, i32 %i.194.i
  %48 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx34.i, align 4
  %flags.i79.i = getelementptr %struct.udp_tunnel_nic_table_entry, ptr %49, i32 %j.192.i, i32 2
  %50 = ptrtoint ptr %flags.i79.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %flags.i79.i, align 1
  %52 = and i8 %51, -9
  store i8 %52, ptr %flags.i79.i, align 1
  %inc37.i = add nuw i32 %j.192.i, 1
  %53 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx29.i, align 4
  %cmp31.i = icmp ult i32 %inc37.i, %54
  br i1 %cmp31.i, label %for.body32.i.for.body32.i_crit_edge, label %for.body32.i.for.inc39.i_crit_edge

for.body32.i.for.inc39.i_crit_edge:               ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc39.i

for.body32.i.for.body32.i_crit_edge:              ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body32.i

for.inc39.i:                                      ; preds = %for.body32.i.for.inc39.i_crit_edge, %for.cond27.preheader.i.for.inc39.i_crit_edge
  %inc40.i = add nuw i32 %i.194.i, 1
  %55 = ptrtoint ptr %n_tables.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %n_tables.i, align 4
  %cmp25.i = icmp ult i32 %inc40.i, %56
  br i1 %cmp25.i, label %for.inc39.i.for.cond27.preheader.i_crit_edge, label %for.inc39.i.if.end_crit_edge

for.inc39.i.if.end_crit_edge:                     ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

for.inc39.i.for.cond27.preheader.i_crit_edge:     ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond27.preheader.i

if.end:                                           ; preds = %for.inc39.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @rtnl_unlock() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !63, !65, !66}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_udp_tunnel__571_959_udp_tunnel_nic_init_module7, !1, !"__initcall__kmod_udp_tunnel__571_959_udp_tunnel_nic_init_module7", i1 false, i1 false}
!1 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 959, i32 1}
!2 = !{ptr @__exitcall_udp_tunnel_nic_cleanup_module, !3, !"__exitcall_udp_tunnel_nic_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 971, i32 1}
!4 = !{ptr @__UNIQUE_ID_file572, !5, !"__UNIQUE_ID_file572", i1 false, i1 false}
!5 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 973, i32 1}
!6 = !{ptr @__UNIQUE_ID_license573, !5, !"__UNIQUE_ID_license573", i1 false, i1 false}
!7 = !{ptr @udp_tunnel_nic_workqueue, !8, !"udp_tunnel_nic_workqueue", i1 false, i1 false}
!8 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 56, i32 33}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 938, i32 29}
!11 = !{ptr @__udp_tunnel_nic_ops, !12, !"__udp_tunnel_nic_ops", i1 false, i1 false}
!12 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 644, i32 40}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 514, i32 21}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 374, i32 2}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 267, i32 21}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 191, i32 2}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 231, i32 8}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 62, i32 10}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 64, i32 10}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 66, i32 10}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 68, i32 10}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 557, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/net/netlink.h", i32 991, i32 3}
!36 = !{ptr @udp_tunnel_nic_notifier_block, !37, !"udp_tunnel_nic_notifier_block", i1 false, i1 false}
!37 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 930, i32 30}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 900, i32 4}
!40 = !{ptr @udp_tunnel_nic_alloc.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../net/ipv4/udp_tunnel_nic.c", i32 730, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!63 = distinct !{null, !64, !"__already_done", i1 false, i1 false}
!64 = !{!"../include/net/udp_tunnel.h", i32 139, i32 2}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/net/udp_tunnel.h", i32 131, i32 2}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i32 0, i32 33}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 659129, i64 659190}
!82 = !{i64 661861}
!83 = !{i64 662146}
