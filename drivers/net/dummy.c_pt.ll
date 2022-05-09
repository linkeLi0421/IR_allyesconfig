; ModuleID = '/llk/IR_all_yes/drivers/net/dummy.c_pt.bc'
source_filename = "../drivers/net/dummy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.122, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.122 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.pcpu_lstats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__param_str_numdummies = internal constant [17 x i8] c"dummy.numdummies\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@numdummies = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_numdummies = internal constant %struct.kernel_param { ptr @__param_str_numdummies, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @numdummies } }, section "__param", align 4
@__UNIQUE_ID_numdummiestype341 = internal constant [30 x i8] c"dummy.parmtype=numdummies:int\00", section ".modinfo", align 1
@__UNIQUE_ID_numdummies342 = internal constant [53 x i8] c"dummy.parm=numdummies:Number of dummy pseudo devices\00", section ".modinfo", align 1
@dummy_link_ops = internal global %struct.rtnl_link_ops { %struct.list_head zeroinitializer, ptr @.str, i32 0, ptr null, ptr @dummy_setup, i8 0, i32 0, ptr null, ptr @dummy_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_dummy__343_209_dummy_init_module6 = internal global ptr @dummy_init_module, section ".initcall6.init", align 4
@__exitcall_dummy_cleanup_module = internal global ptr @dummy_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file344 = internal constant [29 x i8] c"dummy.file=drivers/net/dummy\00", section ".modinfo", align 1
@__UNIQUE_ID_license345 = internal constant [18 x i8] c"dummy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias346 = internal constant [28 x i8] c"dummy.alias=rtnl-link-dummy\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@dummy_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @dummy_dev_init, ptr @dummy_dev_uninit, ptr null, ptr null, ptr @dummy_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dummy_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dummy_change_carrier, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@dummy_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @dummy_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dummy_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@pernet_ops_rwsem = external dso_local global %struct.rw_semaphore, align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/net/dummy.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dummy%d\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [11 x i8] c"numdummies\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 46, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 151, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"dummy_netdev_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 91, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"dummy_ethtool_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 108, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 70, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 271, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 192, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [23 x i8] c"../drivers/net/dummy.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 165, i32 14 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias346, ptr @__UNIQUE_ID_file344, ptr @__UNIQUE_ID_license345, ptr @__UNIQUE_ID_numdummies342, ptr @__UNIQUE_ID_numdummiestype341, ptr @__exitcall_dummy_cleanup_module, ptr @__initcall__kmod_dummy__343_209_dummy_init_module6, ptr @__param_numdummies, ptr @dummy_cleanup_module, ptr @numdummies, ptr @.str, ptr @dummy_netdev_ops, ptr @dummy_ethtool_ops, ptr @dummy_dev_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numdummies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rtnl_link_unregister(ptr noundef nonnull @dummy_link_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @pernet_ops_rwsem) #12
  tail call void @rtnl_lock() #12
  %call = tail call i32 @__rtnl_link_register(ptr noundef nonnull @dummy_link_ops) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader:                               ; preds = %entry
  %0 = load i32, ptr @numdummies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp111 = icmp sgt i32 %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not12 = icmp eq i32 %call, 0
  %or.cond13 = select i1 %cmp111, i1 %tobool.not12, i1 false
  br i1 %or.cond13, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call2 = tail call fastcc i32 @dummy_init_one() #15
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 192, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  %inc = add nuw nsw i32 %i.014, 1
  %1 = load i32, ptr @numdummies, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp1 = icmp slt i32 %inc, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %cmp1, i1 %tobool.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp4 = icmp slt i32 %call2, 0
  br i1 %cmp4, label %if.then5, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__rtnl_link_unregister(ptr noundef nonnull @dummy_link_ops) #12
  br label %out

out:                                              ; preds = %if.then5, %for.end.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %if.then5 ], [ %call2, %for.end.out_crit_edge ], [ %call, %for.cond.preheader.out_crit_edge ]
  tail call void @rtnl_unlock() #12
  tail call void @up_write(ptr noundef nonnull @pernet_ops_rwsem) #12
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_setup(ptr noundef %dev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ether_setup(ptr noundef %dev) #12
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dummy_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 44
  %1 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @dummy_ethtool_ops, ptr %ethtool_ops, align 16
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %2 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %needs_free_netdev, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %or = and i32 %4, -4225
  %and = or i32 %or, 128
  store i32 %and, ptr %flags, align 8
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags, align 16
  %or2 = or i64 %6, 557056
  store i64 %or2, ptr %priv_flags, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %or9 = or i64 %8, 27109691497
  store i64 %or9, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 24
  %9 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %hw_features, align 8
  %or11 = or i64 %10, %or9
  store i64 %or11, ptr %hw_features, align 8
  %hw_enc_features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 27
  %11 = ptrtoint ptr %hw_enc_features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %hw_enc_features, align 16
  %or13 = or i64 %12, %or9
  store i64 %or13, ptr %hw_enc_features, align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %13 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr.i, align 1
  %16 = and i8 %15, -4
  %17 = or i8 %16, 2
  store i8 %17, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %18 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %19 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %20 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_mtu, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dummy_validate(ptr nocapture noundef readonly %tb, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp.not = icmp eq i16 %3, 10
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %if.then
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.return_crit_edge, label %is_valid_ether_addr.exit.if.end8_crit_edge

is_valid_ether_addr.exit.if.end8_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

is_valid_ether_addr.exit.return_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end8:                                          ; preds = %is_valid_ether_addr.exit.if.end8_crit_edge, %entry.if.end8_crit_edge
  br label %return

return:                                           ; preds = %if.end8, %is_valid_ether_addr.exit.return_crit_edge, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then.return_crit_edge ], [ -99, %is_valid_ether_addr.exit.return_crit_edge ], [ -99, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_dev_init(ptr nocapture noundef writeonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 48, i32 noundef 16, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %call115 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call115, i32 %0)
  %cmp16 = icmp ult i32 %call115, %0
  br i1 %cmp16, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = ptrtoint ptr %call to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call117 = phi i32 [ %call115, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call117
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, %1
  %4 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_lstats, ptr %4, i32 0, i32 2
  %dep_map.i = getelementptr inbounds %struct.pcpu_lstats, ptr %4, i32 0, i32 2, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @dummy_dev_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %5 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %syncp, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call117, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %. = phi i32 [ -12, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ 0, %for.body.if.end_crit_edge ]
  %7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %7, align 64
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_dev_uninit(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 64
  tail call void @free_percpu(ptr noundef %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_xmit(ptr noundef %skb, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 130
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 64
  %5 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %11 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %entry.dev_lstats_add.exit_crit_edge, label %land.lhs.true.i.i.i

entry.dev_lstats_add.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_lstats_add.exit

land.lhs.true.i.i.i:                              ; preds = %entry
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !45
  %14 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %19, ptrtoint (ptr @lockdep_recursion to i32)
  %20 = inttoptr i32 %add.i.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !46
  %23 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i.i7.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool20.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dev_lstats_add.exit_crit_edge

land.lhs.true.i.i.i.dev_lstats_add.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_lstats_add.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %27 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i.i.i = icmp eq i32 %30, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i.dev_lstats_add.exit_crit_edge

land.rhs.i.i.i.dev_lstats_add.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_lstats_add.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %31 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i.i9.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %34, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !47
  %35 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %38, ptrtoint (ptr @hardirqs_enabled to i32)
  %39 = inttoptr i32 %add47.i.i.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !48
  %42 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i.i.i12.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %45, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool54.not.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_lstats_add.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge, label %if.then.i.i.i, !prof !49

land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_lstats_add.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %dev_lstats_add.exit

dev_lstats_add.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i.dev_lstats_add.exit_crit_edge, %land.rhs22.i.i.i.dev_lstats_add.exit_crit_edge, %land.rhs.i.i.i.dev_lstats_add.exit_crit_edge, %land.lhs.true.i.i.i.dev_lstats_add.exit_crit_edge, %entry.dev_lstats_add.exit_crit_edge
  %46 = ptrtoint ptr %4 to i32
  %add.i = add i32 %10, %46
  %47 = inttoptr i32 %add.i to ptr
  %syncp.i = getelementptr inbounds %struct.pcpu_lstats, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %49, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !50
  %dep_map.i.i.i.i = getelementptr inbounds %struct.pcpu_lstats, ptr %47, i32 0, i32 2, i32 0, i32 1
  %50 = tail call ptr @llvm.returnaddress(i32 0) #12
  %51 = ptrtoint ptr %50 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %51) #12
  %bytes.i = getelementptr inbounds %struct.pcpu_lstats, ptr %47, i32 0, i32 1
  %conv.i.i = zext i32 %1 to i64
  %52 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bytes.i, align 8
  %add.i.i = add i64 %53, %conv.i.i
  store i64 %add.i.i, ptr %bytes.i, align 8
  %54 = ptrtoint ptr %47 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %47, align 8
  %inc.i.i = add i64 %55, 1
  store i64 %inc.i.i, ptr %47, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %51) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  %56 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %57, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %58 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tx_flags.i, align 1
  %62 = and i8 %61, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i, label %dev_lstats_add.exit.skb_tx_timestamp.exit_crit_edge, label %if.then.i

dev_lstats_add.exit.skb_tx_timestamp.exit_crit_edge: ; preds = %dev_lstats_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %dev_lstats_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %dev_lstats_add.exit.skb_tx_timestamp.exit_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @set_multicast_list(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_get_stats64(ptr noundef %dev, ptr noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  tail call void @dev_lstats_read(ptr noundef %dev, ptr noundef %tx_packets, ptr noundef %tx_bytes) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dummy_change_carrier(ptr noundef %dev, i1 noundef zeroext %new_carrier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %new_carrier, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_on(ptr noundef %dev) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @netif_carrier_off(ptr noundef %dev) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_lstats_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dummy_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rtnl_link_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dummy_init_one() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 0, ptr noundef nonnull @.str.4, i8 noundef zeroext 1, ptr noundef nonnull @dummy_setup, i32 noundef 1, i32 noundef 1) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 136
  %0 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dummy_link_ops, ptr %rtnl_link_ops, align 4
  %call1 = tail call i32 @register_netdevice(ptr noundef nonnull %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %err4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err4:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @free_netdev(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %err4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err4 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rtnl_link_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__param_numdummies, !1, !"__param_numdummies", i1 false, i1 false}
!1 = !{!"../drivers/net/dummy.c", i32 157, i32 1}
!2 = !{ptr @__UNIQUE_ID_numdummiestype341, !1, !"__UNIQUE_ID_numdummiestype341", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_numdummies342, !4, !"__UNIQUE_ID_numdummies342", i1 false, i1 false}
!4 = !{!"../drivers/net/dummy.c", i32 158, i32 1}
!5 = !{ptr @__initcall__kmod_dummy__343_209_dummy_init_module6, !6, !"__initcall__kmod_dummy__343_209_dummy_init_module6", i1 false, i1 false}
!6 = !{!"../drivers/net/dummy.c", i32 209, i32 1}
!7 = !{ptr @__exitcall_dummy_cleanup_module, !8, !"__exitcall_dummy_cleanup_module", i1 false, i1 false}
!8 = !{!"../drivers/net/dummy.c", i32 210, i32 1}
!9 = !{ptr @__UNIQUE_ID_file344, !10, !"__UNIQUE_ID_file344", i1 false, i1 false}
!10 = !{!"../drivers/net/dummy.c", i32 211, i32 1}
!11 = !{ptr @__UNIQUE_ID_license345, !10, !"__UNIQUE_ID_license345", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias346, !13, !"__UNIQUE_ID_alias346", i1 false, i1 false}
!13 = !{!"../drivers/net/dummy.c", i32 212, i32 1}
!14 = !{ptr @__param_str_numdummies, !1, !"__param_str_numdummies", i1 false, i1 false}
!15 = !{ptr @numdummies, !16, !"numdummies", i1 false, i1 false}
!16 = !{!"../drivers/net/dummy.c", i32 46, i32 12}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/dummy.c", i32 151, i32 11}
!19 = !{ptr @dummy_link_ops, !20, !"dummy_link_ops", i1 false, i1 false}
!20 = !{!"../drivers/net/dummy.c", i32 150, i32 29}
!21 = !{ptr @dummy_netdev_ops, !22, !"dummy_netdev_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/dummy.c", i32 91, i32 36}
!23 = !{ptr @dummy_dev_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/net/dummy.c", i32 70, i32 16}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dummy_ethtool_ops, !30, !"dummy_ethtool_ops", i1 false, i1 false}
!30 = !{!"../drivers/net/dummy.c", i32 108, i32 33}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dummy.c", i32 192, i32 3}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dummy.c", i32 165, i32 14}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2149867446}
!46 = !{i64 2149872378}
!47 = !{i64 2149894090}
!48 = !{i64 2149898982}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2149975439}
!51 = !{i64 2149975764}
