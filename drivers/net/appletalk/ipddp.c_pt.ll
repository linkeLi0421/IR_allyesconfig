; ModuleID = '/llk/IR_all_yes/drivers/net/appletalk/ipddp.c_pt.bc'
source_filename = "../drivers/net/appletalk/ipddp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ipddp_route = type { ptr, i32, %struct.atalk_addr, i32, ptr }
%struct.atalk_addr = type { i16, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.145, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.145 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ddpehdr = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_file486 = internal constant [39 x i8] c"ipddp.file=drivers/net/appletalk/ipddp\00", section ".modinfo", align 1
@__UNIQUE_ID_license487 = internal constant [18 x i8] c"ipddp.license=GPL\00", section ".modinfo", align 1
@__param_str_ipddp_mode = internal constant [17 x i8] c"ipddp.ipddp_mode\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ipddp_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_ipddp_mode = internal constant %struct.kernel_param { ptr @__param_str_ipddp_mode, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @ipddp_mode } }, section "__param", align 4
@__UNIQUE_ID_ipddp_modetype488 = internal constant [30 x i8] c"ipddp.parmtype=ipddp_mode:int\00", section ".modinfo", align 1
@dev_ipddp = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ipddp_route_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ipddp__489_344_ipddp_init_module6 = internal global ptr @ipddp_init_module, section ".initcall6.init", align 4
@__exitcall_ipddp_cleanup_module = internal global ptr @ipddp_cleanup_module, section ".exitcall.exit", align 4
@ipddp_init.version_printed = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ipddp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.1, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipddp_init\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/appletalk/ipddp.c\00", [34 x i8] zeroinitializer }, align 32
@ipddp_init._entry_ptr = internal global ptr @ipddp_init._entry, section ".printk_index", align 4
@version = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016ipddp.c:v0.01 8/28/97 Bradford W. Johnson <johns393@maroon.tc.umn.edu>\0A\00", [54 x i8] zeroinitializer }, align 32
@ipddp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @ipddp_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr @ipddp_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ipddp_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"%s: Appletalk-IP Encap. mode by Bradford W. Johnson <johns393@maroon.tc.umn.edu>\0A\00", [46 x i8] zeroinitializer }, align 32
@ipddp_init._entry_ptr.5 = internal global ptr @ipddp_init._entry.3, section ".printk_index", align 4
@ipddp_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s: Appletalk-IP Decap. mode by Jay Schulist <jschlst@samba.org>\0A\00", [62 x i8] zeroinitializer }, align 32
@ipddp_init._entry_ptr.8 = internal global ptr @ipddp_init._entry.6, section ".printk_index", align 4
@ipddp_route_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ipddp_route_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35312, i64 35313, i64 35314]
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"ipddp_mode\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 47, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"dev_ipddp\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 319, i32 27 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"ipddp_route_list\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 43, i32 28 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"version_printed\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 70, i32 18 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 82, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 41, i32 19 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"ipddp_netdev_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 61, i32 36 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 106, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 109, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ipddp_route_lock\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1011, i32 2 }
@___asan_gen_.60 = private constant [33 x i8] c"../drivers/net/appletalk/ipddp.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 44, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 156, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file486, ptr @__UNIQUE_ID_ipddp_modetype488, ptr @__UNIQUE_ID_license487, ptr @__exitcall_ipddp_cleanup_module, ptr @__initcall__kmod_ipddp__489_344_ipddp_init_module6, ptr @__param_ipddp_mode, ptr @ipddp_cleanup_module, ptr @ipddp_init._entry, ptr @ipddp_init._entry.3, ptr @ipddp_init._entry.6, ptr @ipddp_init._entry_ptr, ptr @ipddp_init._entry_ptr.5, ptr @ipddp_init._entry_ptr.8, ptr @ipddp_mode, ptr @dev_ipddp, ptr @ipddp_route_list, ptr @ipddp_init.version_printed, ptr @.str.1, ptr @.str.2, ptr @version, ptr @ipddp_netdev_ops, ptr @.str.4, ptr @.str.7, ptr @ipddp_route_lock, ptr @.str.9, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_ipddp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_route_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_init.version_printed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipddp_route_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipddp_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @dev_ipddp, align 4
  tail call void @unregister_netdev(ptr noundef %0) #7
  %1 = load ptr, ptr @dev_ipddp, align 4
  tail call void @free_netdev(ptr noundef %1) #7
  %.pr = load ptr, ptr @ipddp_route_list, align 4
  %tobool.not1 = icmp eq ptr %.pr, null
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %.pr, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.ipddp_route, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef nonnull %2) #7
  store ptr %4, ptr @ipddp_route_list, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipddp_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ipddp_init() #10
  store ptr %call, ptr @dev_ipddp, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ipddp_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 0, i32 noundef 1, i32 noundef 1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %1, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  %2 = ptrtoint ptr %call to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 7597682953915032576, ptr %call, align 1
  %3 = load i32, ptr @ipddp_init.version_printed, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @ipddp_init.version_printed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ipddp_netdev_ops, ptr %netdev_ops, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 777, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 585, ptr %mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %or = or i32 %8, 128
  store i32 %or, ptr %flags, align 8
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 35, ptr %hard_header_len, align 2
  %call8 = tail call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @free_netdev(ptr noundef nonnull %call) #7
  %10 = inttoptr i32 %call8 to ptr
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %11 = load i32, ptr @ipddp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp13 = icmp eq i32 %11, 1
  br i1 %cmp13, label %do.end17, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %call) #11
  %.pr = load i32, ptr @ipddp_mode, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end17, %if.end12.if.end22_crit_edge
  %12 = phi i32 [ %.pr, %do.end17 ], [ %11, %if.end12.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp23 = icmp eq i32 %12, 2
  br i1 %cmp23, label %do.end27, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.end22.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then10 ], [ %call, %do.end27 ], [ %call, %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipddp_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !60

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1013, i32 noundef 9, ptr noundef null) #7
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rt_gw_family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp = icmp eq i8 %7, 2
  br i1 %cmp, label %if.then, label %skb_rtable.exit.if.end_crit_edge

skb_rtable.exit.if.end_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %skb_rtable.exit.if.end_crit_edge
  %paddr.0 = phi i32 [ %10, %if.then ], [ 0, %skb_rtable.exit.if.end_crit_edge ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @ipddp_route_lock) #7
  %rt.070 = load ptr, ptr @ipddp_route_list, align 4
  %cond71 = icmp eq ptr %rt.070, null
  br i1 %cond71, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %rt.072 = phi ptr [ %rt.0, %for.inc.for.body_crit_edge ], [ %rt.070, %if.end.for.body_crit_edge ]
  %ip = getelementptr inbounds %struct.ipddp_route, ptr %rt.072, i32 0, i32 1
  %11 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %paddr.0)
  %cmp4 = icmp eq i32 %12, %paddr.0
  br i1 %cmp4, label %if.end11, label %for.inc

for.inc:                                          ; preds = %for.body
  %next = getelementptr inbounds %struct.ipddp_route, ptr %rt.072, i32 0, i32 4
  %13 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %13)
  %rt.0 = load ptr, ptr %next, align 4
  %cond = icmp eq ptr %rt.0, null
  br i1 %cond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %for.body
  %14 = ptrtoint ptr %rt.072 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rt.072, align 4
  %call13 = tail call ptr @atalk_find_dev_addr(ptr noundef %15) #7
  %16 = load i32, ptr @ipddp_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp14 = icmp eq i32 %16, 2
  br i1 %cmp14, label %if.then16, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 22) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end11.if.end18_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = trunc i32 %20 to i16
  %conv19 = add i16 %21, 1024
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv19, ptr %18, align 2
  %deh_sum = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %deh_sum to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %deh_sum, align 2
  %24 = ptrtoint ptr %rt.072 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rt.072, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 32
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 773, i16 %27)
  %cmp22 = icmp eq i16 %27, 773
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %deh_dnet = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 2
  %28 = ptrtoint ptr %deh_dnet to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %deh_dnet, align 2
  br label %if.end28

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %at = getelementptr inbounds %struct.ipddp_route, ptr %rt.072, i32 0, i32 2
  %29 = ptrtoint ptr %at to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %at, align 4
  %deh_dnet25 = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 2
  %31 = ptrtoint ptr %deh_dnet25 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %deh_dnet25, align 2
  %32 = ptrtoint ptr %call13 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %call13, align 2
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then24
  %.sink = phi i16 [ 0, %if.then24 ], [ %33, %if.else ]
  %34 = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %.sink, ptr %34, align 2
  %at29 = getelementptr inbounds %struct.ipddp_route, ptr %rt.072, i32 0, i32 2
  %s_node = getelementptr inbounds %struct.ipddp_route, ptr %rt.072, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %s_node to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %s_node, align 2
  %deh_dnode = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 4
  %38 = ptrtoint ptr %deh_dnode to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %deh_dnode, align 2
  %s_node30 = getelementptr inbounds %struct.atalk_addr, ptr %call13, i32 0, i32 1
  %39 = ptrtoint ptr %s_node30 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %s_node30, align 2
  %deh_snode = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 5
  %41 = ptrtoint ptr %deh_snode to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %deh_snode, align 1
  %deh_dport = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 6
  %42 = ptrtoint ptr %deh_dport to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 72, ptr %deh_dport, align 2
  %deh_sport = getelementptr inbounds %struct.ddpehdr, ptr %18, i32 0, i32 7
  %43 = ptrtoint ptr %deh_sport to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 72, ptr %deh_sport, align 1
  %add.ptr = getelementptr %struct.ddpehdr, ptr %18, i32 1
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 22, ptr %add.ptr, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %45 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -32613, ptr %protocol, align 8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %46 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %tx_packets, align 4
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %50 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_bytes, align 4
  %add33 = add i32 %51, %49
  store i32 %add33, ptr %tx_bytes, align 4
  %52 = ptrtoint ptr %rt.072 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rt.072, align 4
  %call36 = tail call i32 @aarp_send_ddp(ptr noundef %53, ptr noundef %skb, ptr noundef %at29, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ipddp_route_lock) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipddp_siocdevprivate(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #4 align 64 {
entry:
  %rcp = alloca %struct.ipddp_route, align 4
  %rcp2 = alloca %struct.ipddp_route, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rcp) #7
  %0 = call ptr @memset(ptr %rcp, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rcp2) #7
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call1, label %if.then.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 20, i32 -1226833920) #12
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !61

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rcp, i32 noundef 20) #7
  %2 = call i32 @llvm.read_register.i32(metadata !50) #7
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !62
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %rcp, ptr noundef %data, i32 noundef 20) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #7, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !61

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 20, %if.then.i.if.then11.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 20, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %rcp, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end6.cleanup_crit_edge [
    i32 35312, label %sw.bb
    i32 35314, label %sw.bb8
    i32 35313, label %sw.bb22
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 20) #13
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %ip.i = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 1
  %8 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ip.i, align 4
  %ip1.i = getelementptr inbounds %struct.ipddp_route, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %ip1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ip1.i, align 4
  %at.i = getelementptr inbounds %struct.ipddp_route, ptr %call7.i.i.i, i32 0, i32 2
  %at2.i = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 2
  %11 = ptrtoint ptr %at2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %at2.i, align 4
  %13 = ptrtoint ptr %at.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %at.i, align 8
  %next.i = getelementptr inbounds %struct.ipddp_route, ptr %call7.i.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %next.i, align 8
  %call4.i = call ptr @atrtr_get_dev(ptr noundef %at.i) #7
  %15 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4.i, ptr %call7.i.i.i, align 8
  %cmp5.i = icmp eq ptr %call4.i, null
  br i1 %cmp5.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @_raw_spin_lock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  %f.023.i.i = load ptr, ptr @ipddp_route_list, align 4
  %cmp.not24.i.i = icmp eq ptr %f.023.i.i, null
  br i1 %cmp.not24.i.i, label %if.end7.i.if.end10.i_crit_edge, label %for.body.lr.ph.i.i

if.end7.i.if.end10.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

for.body.lr.ph.i.i:                               ; preds = %if.end7.i
  %16 = ptrtoint ptr %ip1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ip1.i, align 4
  %s_node12.i.i = getelementptr inbounds %struct.ipddp_route, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %f.025.i.i = phi ptr [ %f.023.i.i, %for.body.lr.ph.i.i ], [ %f.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %ip.i.i = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %ip.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ip.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp2.i.i = icmp eq i32 %19, %17
  br i1 %cmp2.i.i, label %land.lhs.true.i.i40, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i40:                              ; preds = %for.body.i.i
  %at.i.i = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %at.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %at.i.i, align 4
  %22 = ptrtoint ptr %at.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %at.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp6.i.i = icmp eq i16 %21, %23
  br i1 %cmp6.i.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i40.for.inc.i.i_crit_edge

land.lhs.true.i.i40.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i40
  %s_node.i.i = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i.i, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %s_node.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s_node.i.i, align 2
  %26 = ptrtoint ptr %s_node12.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %s_node12.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp14.i.i = icmp eq i8 %25, %27
  br i1 %cmp14.i.i, label %if.then9.i, label %land.lhs.true8.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.for.inc.i.i_crit_edge:         ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i40.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %next.i.i = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %f.0.i.i = load ptr, ptr %next.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %f.0.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end10.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.end10.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  br label %cleanup

if.end10.i:                                       ; preds = %for.inc.i.i.if.end10.i_crit_edge, %if.end7.i.if.end10.i_crit_edge
  %29 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %f.023.i.i, ptr %next.i, align 8
  store ptr %call7.i.i.i, ptr @ipddp_route_list, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end6
  call void @_raw_spin_lock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  %f.023.i = load ptr, ptr @ipddp_route_list, align 4
  %cmp.not24.i = icmp eq ptr %f.023.i, null
  br i1 %cmp.not24.i, label %sw.bb8.if.else.critedge_crit_edge, label %for.body.lr.ph.i

sw.bb8.if.else.critedge_crit_edge:                ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge

for.body.lr.ph.i:                                 ; preds = %sw.bb8
  %ip1.i41 = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 1
  %30 = ptrtoint ptr %ip1.i41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ip1.i41, align 4
  %at3.i = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 2
  %s_node12.i = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 2, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %f.025.i = phi ptr [ %f.023.i, %for.body.lr.ph.i ], [ %f.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ip.i42 = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 1
  %32 = ptrtoint ptr %ip.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ip.i42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp2.i = icmp eq i32 %33, %31
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %at.i43 = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 2
  %34 = ptrtoint ptr %at.i43 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %at.i43, align 4
  %36 = ptrtoint ptr %at3.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %at3.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %37)
  %cmp6.i = icmp eq i16 %35, %37
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %s_node.i = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %s_node.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s_node.i, align 2
  %40 = ptrtoint ptr %s_node12.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %s_node12.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp14.i = icmp eq i8 %39, %41
  br i1 %cmp14.i, label %if.then11, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %next.i44 = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 4
  %42 = ptrtoint ptr %next.i44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %f.0.i = load ptr, ptr %next.i44, align 4
  %cmp.not.i = icmp eq ptr %f.0.i, null
  br i1 %cmp.not.i, label %for.inc.i.if.else.critedge_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.else.critedge_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.critedge

if.then11:                                        ; preds = %land.lhs.true8.i
  %ip.i42.le = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 1
  %43 = call ptr @memset(ptr %rcp2, i32 0, i32 20)
  %44 = ptrtoint ptr %ip.i42.le to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ip.i42.le, align 4
  %ip12 = getelementptr inbounds %struct.ipddp_route, ptr %rcp2, i32 0, i32 1
  %46 = ptrtoint ptr %ip12 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ip12, align 4
  %at = getelementptr inbounds %struct.ipddp_route, ptr %rcp2, i32 0, i32 2
  %47 = ptrtoint ptr %at.i43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %at.i43, align 4
  %49 = ptrtoint ptr %at to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %at, align 4
  %flags = getelementptr inbounds %struct.ipddp_route, ptr %f.025.i, i32 0, i32 3
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags, align 4
  %flags14 = getelementptr inbounds %struct.ipddp_route, ptr %rcp2, i32 0, i32 3
  %52 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %flags14, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 174) #7
  %call.i.i33 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i33, label %if.then11.cleanup_crit_edge, label %copy_to_user.exit

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i38 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rcp2, i32 noundef 20) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %rcp2, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool19.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool19.not, i32 0, i32 -14
  br label %cleanup

if.else.critedge:                                 ; preds = %for.inc.i.if.else.critedge_crit_edge, %sw.bb8.if.else.critedge_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end6
  call void @_raw_spin_lock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  %53 = load ptr, ptr @ipddp_route_list, align 4
  %cmp.not28.i = icmp eq ptr %53, null
  br i1 %cmp.not28.i, label %sw.bb22.while.end.i_crit_edge, label %while.body.lr.ph.i

sw.bb22.while.end.i_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %sw.bb22
  %ip1.i45 = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 1
  %54 = ptrtoint ptr %ip1.i45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ip1.i45, align 4
  %at3.i46 = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 2
  %s_node12.i47 = getelementptr inbounds %struct.ipddp_route, ptr %rcp, i32 0, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i59.while.body.i_crit_edge, %while.body.lr.ph.i
  %56 = phi ptr [ %53, %while.body.lr.ph.i ], [ %71, %if.end.i59.while.body.i_crit_edge ]
  %r.029.i = phi ptr [ @ipddp_route_list, %while.body.lr.ph.i ], [ %next16.i, %if.end.i59.while.body.i_crit_edge ]
  %ip.i48 = getelementptr inbounds %struct.ipddp_route, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ip.i48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip.i48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %55)
  %cmp2.i49 = icmp eq i32 %58, %55
  br i1 %cmp2.i49, label %land.lhs.true.i52, label %while.body.i.if.end.i59_crit_edge

while.body.i.if.end.i59_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i59

land.lhs.true.i52:                                ; preds = %while.body.i
  %at.i50 = getelementptr inbounds %struct.ipddp_route, ptr %56, i32 0, i32 2
  %59 = ptrtoint ptr %at.i50 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %at.i50, align 4
  %61 = ptrtoint ptr %at3.i46 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %at3.i46, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp6.i51 = icmp eq i16 %60, %62
  br i1 %cmp6.i51, label %land.lhs.true8.i55, label %land.lhs.true.i52.if.end.i59_crit_edge

land.lhs.true.i52.if.end.i59_crit_edge:           ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i59

land.lhs.true8.i55:                               ; preds = %land.lhs.true.i52
  %s_node.i53 = getelementptr inbounds %struct.ipddp_route, ptr %56, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %s_node.i53 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s_node.i53, align 2
  %65 = ptrtoint ptr %s_node12.i47 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %s_node12.i47, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %66)
  %cmp14.i54 = icmp eq i8 %64, %66
  br i1 %cmp14.i54, label %if.then.i57, label %land.lhs.true8.i55.if.end.i59_crit_edge

land.lhs.true8.i55.if.end.i59_crit_edge:          ; preds = %land.lhs.true8.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i59

if.then.i57:                                      ; preds = %land.lhs.true8.i55
  call void @__sanitizer_cov_trace_pc() #9
  %next.i56 = getelementptr inbounds %struct.ipddp_route, ptr %56, i32 0, i32 4
  %67 = ptrtoint ptr %next.i56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %next.i56, align 4
  %69 = ptrtoint ptr %r.029.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %r.029.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  call void @kfree(ptr noundef nonnull %56) #7
  br label %cleanup

if.end.i59:                                       ; preds = %land.lhs.true8.i55.if.end.i59_crit_edge, %land.lhs.true.i52.if.end.i59_crit_edge, %while.body.i.if.end.i59_crit_edge
  %next16.i = getelementptr inbounds %struct.ipddp_route, ptr %56, i32 0, i32 4
  %70 = ptrtoint ptr %next16.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %next16.i, align 4
  %cmp.not.i58 = icmp eq ptr %71, null
  br i1 %cmp.not.i58, label %if.end.i59.while.end.i_crit_edge, label %if.end.i59.while.body.i_crit_edge

if.end.i59.while.body.i_crit_edge:                ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i59.while.end.i_crit_edge:                 ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.end.i:                                      ; preds = %if.end.i59.while.end.i_crit_edge, %sw.bb22.while.end.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @ipddp_route_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %if.then.i57, %if.else.critedge, %copy_to_user.exit, %if.then11.cleanup_crit_edge, %if.end10.i, %if.then9.i, %if.then6.i, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.else.critedge ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -101, %if.then6.i ], [ -17, %if.then9.i ], [ 0, %if.end10.i ], [ -12, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.i57 ], [ -2, %while.end.i ], [ -14, %if.then11.i.i ], [ -14, %if.then11.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rcp2) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rcp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atalk_find_dev_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aarp_send_ddp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atrtr_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !43, !45, !46, !48}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_file486, !1, !"__UNIQUE_ID_file486", i1 false, i1 false}
!1 = !{!"../drivers/net/appletalk/ipddp.c", i32 321, i32 1}
!2 = !{ptr @__UNIQUE_ID_license487, !1, !"__UNIQUE_ID_license487", i1 false, i1 false}
!3 = !{ptr @__param_ipddp_mode, !4, !"__param_ipddp_mode", i1 false, i1 false}
!4 = !{!"../drivers/net/appletalk/ipddp.c", i32 322, i32 1}
!5 = !{ptr @__UNIQUE_ID_ipddp_modetype488, !4, !"__UNIQUE_ID_ipddp_modetype488", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_ipddp__489_344_ipddp_init_module6, !7, !"__initcall__kmod_ipddp__489_344_ipddp_init_module6", i1 false, i1 false}
!7 = !{!"../drivers/net/appletalk/ipddp.c", i32 344, i32 1}
!8 = !{ptr @__exitcall_ipddp_cleanup_module, !9, !"__exitcall_ipddp_cleanup_module", i1 false, i1 false}
!9 = !{!"../drivers/net/appletalk/ipddp.c", i32 345, i32 1}
!10 = !{ptr @ipddp_route_list, !11, !"ipddp_route_list", i1 false, i1 false}
!11 = !{!"../drivers/net/appletalk/ipddp.c", i32 43, i32 28}
!12 = !{ptr @dev_ipddp, !13, !"dev_ipddp", i1 false, i1 false}
!13 = !{!"../drivers/net/appletalk/ipddp.c", i32 319, i32 27}
!14 = !{ptr @__param_str_ipddp_mode, !4, !"__param_str_ipddp_mode", i1 false, i1 false}
!15 = !{ptr @ipddp_mode, !16, !"ipddp_mode", i1 false, i1 false}
!16 = !{!"../drivers/net/appletalk/ipddp.c", i32 47, i32 12}
!17 = !{ptr @ipddp_init.version_printed, !18, !"version_printed", i1 false, i1 false}
!18 = !{!"../drivers/net/appletalk/ipddp.c", i32 70, i32 18}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/appletalk/ipddp.c", i32 79, i32 20}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/appletalk/ipddp.c", i32 82, i32 17}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ipddp_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @ipddp_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/appletalk/ipddp.c", i32 106, i32 3}
!28 = !{ptr @ipddp_init._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ipddp_init._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/appletalk/ipddp.c", i32 109, i32 3}
!32 = !{ptr @ipddp_init._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ipddp_init._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @version, !35, !"version", i1 false, i1 false}
!35 = !{!"../drivers/net/appletalk/ipddp.c", i32 41, i32 19}
!36 = !{ptr @ipddp_netdev_ops, !37, !"ipddp_netdev_ops", i1 false, i1 false}
!37 = !{!"../drivers/net/appletalk/ipddp.c", i32 61, i32 36}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/appletalk/ipddp.c", i32 44, i32 8}
!42 = !{ptr @ipddp_route_lock, !41, !"ipddp_route_lock", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 4766098}
!63 = !{i64 4766295}
!64 = !{i64 2152251528}
