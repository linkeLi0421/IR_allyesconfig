; ModuleID = '/llk/IR_all_yes/drivers/net/can/vcan.c_pt.bc'
source_filename = "../drivers/net/can/vcan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }

@__UNIQUE_ID_description459 = internal constant [39 x i8] c"vcan.description=virtual CAN interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [31 x i8] c"vcan.file=drivers/net/can/vcan\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [26 x i8] c"vcan.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author462 = internal constant [56 x i8] c"vcan.author=Urs Thuermann <urs.thuermann@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias463 = internal constant [26 x i8] c"vcan.alias=rtnl-link-vcan\00", section ".modinfo", align 1
@__param_str_echo = internal constant [10 x i8] c"vcan.echo\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@echo = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_echo = internal constant %struct.kernel_param { ptr @__param_str_echo, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @echo } }, section "__param", align 4
@__UNIQUE_ID_echotype464 = internal constant [24 x i8] c"vcan.parmtype=echo:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_echo465 = internal constant [64 x i8] c"vcan.parm=echo:Echo sent frames (for testing). Default: 0 (Off)\00", section ".modinfo", align 1
@vcan_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 12312, ptr null, ptr @vcan_setup, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_vcan__466_188_vcan_init_module6 = internal global ptr @vcan_init_module, section ".initcall6.init", align 4
@__exitcall_vcan_cleanup_module = internal global ptr @vcan_cleanup_module, section ".exitcall.exit", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcan\00", [27 x i8] zeroinitializer }, align 32
@vcan_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @vcan_tx, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vcan_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Overwriting already set ml_priv_type (%u) with different ml_priv_type (%u)!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Overwriting already set ml_priv and ml_priv_type is ML_PRIV_NONE!\0A\00", [61 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@vcan_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016vcan: Virtual CAN interface driver\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vcan_init_module\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/can/vcan.c\00", [41 x i8] zeroinitializer }, align 32
@vcan_init_module._entry_ptr = internal global ptr @vcan_init_module._entry, section ".printk_index", align 4
@vcan_init_module._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016vcan: enabled echo on driver level.\0A\00", [57 x i8] zeroinitializer }, align 32
@vcan_init_module._entry_ptr.10 = internal global ptr @vcan_init_module._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 72]
@___asan_gen_.12 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 67, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 168, i32 10 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"vcan_netdev_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 144, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 2430, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 2433, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 104, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 175, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [26 x i8] c"../drivers/net/can/vcan.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 178, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias463, ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_description459, ptr @__UNIQUE_ID_echo465, ptr @__UNIQUE_ID_echotype464, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_vcan_cleanup_module, ptr @__initcall__kmod_vcan__466_188_vcan_init_module6, ptr @__param_echo, ptr @vcan_cleanup_module, ptr @vcan_init_module._entry, ptr @vcan_init_module._entry.8, ptr @vcan_init_module._entry_ptr, ptr @vcan_init_module._entry_ptr.10, ptr @echo, ptr @.str, ptr @vcan_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @echo to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcan_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcan_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcan_init_module._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vcan_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rtnl_link_unregister(ptr noundef nonnull @vcan_link_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vcan_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  %0 = load i8, ptr @echo, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %if.end

if.end:                                           ; preds = %do.end2, %entry.if.end_crit_edge
  %call5 = tail call i32 @rtnl_link_register(ptr noundef nonnull @vcan_link_ops) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vcan_setup(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 280, ptr %type, align 16
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %1 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 72, ptr %mtu, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %hard_header_len, align 2
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %4 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tx_queue_len, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %flags, align 8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ml_priv_type.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 129
  %6 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %do.end.i.i, label %entry.if.end.i.i_crit_edge, !prof !55

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2432, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %7, i32 noundef 1) #7
  %9 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i.i = load i32, ptr %ml_priv_type.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %entry.if.end.i.i_crit_edge
  %10 = phi i32 [ %.pr.i.i, %do.end.i.i ], [ %7, %entry.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool24.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool24.not.i.i, label %land.rhs25.i.i, label %if.end.i.i.can_set_ml_priv.exit_crit_edge

if.end.i.i.can_set_ml_priv.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_set_ml_priv.exit

land.rhs25.i.i:                                   ; preds = %if.end.i.i
  %ml_priv26.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %11 = ptrtoint ptr %ml_priv26.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ml_priv26.i.i, align 8
  %tobool27.not.i.i = icmp eq ptr %12, null
  br i1 %tobool27.not.i.i, label %land.rhs25.i.i.can_set_ml_priv.exit_crit_edge, label %do.end44.i.i, !prof !56

land.rhs25.i.i.can_set_ml_priv.exit_crit_edge:    ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_set_ml_priv.exit

do.end44.i.i:                                     ; preds = %land.rhs25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2434, i32 noundef 9, ptr noundef nonnull @.str.3) #7
  br label %can_set_ml_priv.exit

can_set_ml_priv.exit:                             ; preds = %do.end44.i.i, %land.rhs25.i.i.can_set_ml_priv.exit_crit_edge, %if.end.i.i.can_set_ml_priv.exit_crit_edge
  %ml_priv58.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 128
  %13 = ptrtoint ptr %ml_priv58.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ml_priv58.i.i, align 8
  %14 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ml_priv_type.i.i, align 4
  %15 = load i8, ptr @echo, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %can_set_ml_priv.exit.if.end_crit_edge, label %if.then

can_set_ml_priv.exit.if.end_crit_edge:            ; preds = %can_set_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %can_set_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %or = or i32 %17, 262144
  store i32 %or, ptr %flags, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %can_set_ml_priv.exit.if.end_crit_edge
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vcan_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %19 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %needs_free_netdev, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcan_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %stats1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !56

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !55

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !56

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !55

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !56

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 104, i32 noundef 9, ptr noundef null) #7
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 8
  %and = and i32 %37, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %len2 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %len2, align 4
  %conv = zext i8 %39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %40 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %42 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %43, %cond
  store i32 %add, ptr %tx_bytes, align 4
  %44 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load = load i16, ptr %ip_summed.i.i, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, -24576
  %45 = load i8, ptr @echo, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool5.not = icmp eq i8 %45, 0
  br i1 %tobool5.not, label %if.then6, label %if.end12

if.then6:                                         ; preds = %cond.end
  br i1 %cmp, label %if.then8, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stats1, align 4
  %inc9 = add i32 %47, 1
  store i32 %inc9, ptr %stats1, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %48 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_bytes, align 4
  %add10 = add i32 %49, %cond
  store i32 %add10, ptr %rx_bytes, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

if.end12:                                         ; preds = %cond.end
  br i1 %cmp, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %can_create_echo_skb.exit.thread, label %if.end.i, !prof !55

can_create_echo_skb.exit.thread:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  %50 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %can_create_echo_skb.exit.thread45, label %land.lhs.true.i.i

can_create_echo_skb.exit.thread45:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %if.end18

land.lhs.true.i.i:                                ; preds = %if.end.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %52, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  %53 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %55 = phi i32 [ %54, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %56 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i.i.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %55, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #7
  %57 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %59 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %58, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %59, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %58
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !56

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %60 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %61, 1
  %62 = or i32 %add5.i.i.i.i.i, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %62)
  %.not.i.i.i.i.i = icmp sgt i32 %62, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !56

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #7
  %63 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %64 = phi i32 [ %61, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %64, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #7
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge, label %if.then.i.i39

refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %can_create_echo_skb.exit

if.then.i.i39:                                    ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  %66 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %52, ptr %66, align 4
  br label %can_create_echo_skb.exit

can_create_echo_skb.exit:                         ; preds = %if.then.i.i39, %refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge
  call void @consume_skb(ptr noundef %skb) #7
  br label %if.end18

if.end18:                                         ; preds = %can_create_echo_skb.exit, %can_create_echo_skb.exit.thread45
  %data.i40 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %68 = ptrtoint ptr %data.i40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i40, align 4
  %70 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stats1, align 4
  %inc.i41 = add i32 %71, 1
  store i32 %inc.i41, ptr %stats1, align 4
  %len.i42 = getelementptr inbounds %struct.canfd_frame, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %len.i42 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %len.i42, align 4
  %conv.i = zext i8 %73 to i32
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %74 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_bytes.i, align 4
  %add.i = add i32 %75, %conv.i
  store i32 %add.i, ptr %rx_bytes.i, align 4
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %76 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %77 = getelementptr inbounds %struct.anon.51, ptr %call.i, i32 0, i32 2
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %dev, ptr %77, align 8
  %bf.set.i = and i16 %bf.load.i, 6655
  %bf.set4.i = or i16 %bf.set.i, 8704
  store i16 %bf.set4.i, ptr %pkt_type.i, align 8
  %call.i43 = call i32 @netif_rx_ni(ptr noundef nonnull %call.i) #7
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %skb) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end18, %can_create_echo_skb.exit.thread, %if.end11, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vcan_change_mtu(ptr nocapture noundef %dev, i32 noundef %new_mtu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %new_mtu to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %new_mtu, label %if.end.return_crit_edge [
    i32 16, label %if.end.if.end3_crit_edge
    i32 72, label %if.end.if.end3_crit_edge7
  ]

if.end.if.end3_crit_edge7:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge7
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -16, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_description459, !1, !"__UNIQUE_ID_description459", i1 false, i1 false}
!1 = !{!"../drivers/net/can/vcan.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/net/can/vcan.c", i32 58, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author462, !6, !"__UNIQUE_ID_author462", i1 false, i1 false}
!6 = !{!"../drivers/net/can/vcan.c", i32 59, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias463, !8, !"__UNIQUE_ID_alias463", i1 false, i1 false}
!8 = !{!"../drivers/net/can/vcan.c", i32 60, i32 1}
!9 = !{ptr @__param_echo, !10, !"__param_echo", i1 false, i1 false}
!10 = !{!"../drivers/net/can/vcan.c", i32 68, i32 1}
!11 = !{ptr @__UNIQUE_ID_echotype464, !10, !"__UNIQUE_ID_echotype464", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_echo465, !13, !"__UNIQUE_ID_echo465", i1 false, i1 false}
!13 = !{!"../drivers/net/can/vcan.c", i32 69, i32 1}
!14 = !{ptr @__initcall__kmod_vcan__466_188_vcan_init_module6, !15, !"__initcall__kmod_vcan__466_188_vcan_init_module6", i1 false, i1 false}
!15 = !{!"../drivers/net/can/vcan.c", i32 188, i32 1}
!16 = !{ptr @__exitcall_vcan_cleanup_module, !17, !"__exitcall_vcan_cleanup_module", i1 false, i1 false}
!17 = !{!"../drivers/net/can/vcan.c", i32 189, i32 1}
!18 = !{ptr @echo, !19, !"echo", i1 false, i1 false}
!19 = !{!"../drivers/net/can/vcan.c", i32 67, i32 13}
!20 = !{ptr @__param_str_echo, !10, !"__param_str_echo", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/vcan.c", i32 168, i32 10}
!23 = !{ptr @vcan_link_ops, !24, !"vcan_link_ops", i1 false, i1 false}
!24 = !{!"../drivers/net/can/vcan.c", i32 167, i32 29}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/netdevice.h", i32 2430, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/netdevice.h", i32 2433, i32 2}
!30 = !{ptr @vcan_netdev_ops, !31, !"vcan_netdev_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/can/vcan.c", i32 144, i32 36}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!34 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/vcan.c", i32 175, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @vcan_init_module._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @vcan_init_module._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/vcan.c", i32 178, i32 3}
!43 = !{ptr @vcan_init_module._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vcan_init_module._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 828191, i64 828215, i64 828236, i64 828253, i64 828270}
