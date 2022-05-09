; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/nfp_app.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/nfp_app.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_app_type = type { i32, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.137, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.137 = type { %struct.list_head, %struct.list_head }
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
%union.anon.157 = type { ptr }
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
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }
%struct.nfp_port = type { ptr, i32, i32, i32, ptr, %struct.devlink_port, %union.anon.170, %struct.list_head }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.146 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.146 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%union.anon.170 = type { %struct.anon.172 }
%struct.anon.172 = type { i32, i32, i8, i32, ptr }
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
%struct.nfp_reprs = type { i32, [0 x ptr] }

@nfp_check_rhashtable_empty.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/net/ethernet/netronome/nfp/nfp_app.c\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown netdev type for nfp_app\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfp_reprs_get_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@apps = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @app_nic, ptr @app_bpf, ptr @app_flower, ptr @app_abm], [44 x i8] zeroinitializer }, align 32
@nfp_app_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 233, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"nfp: unknown FW app ID 0x%02hhx, driver too old or support for FW not built in\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfp_app_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_app_alloc._entry_ptr = internal global ptr @nfp_app_alloc._entry, section ".printk_index", align 4
@nfp_net_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@nfp_app_netdev_feat_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfp_app_netdev_feat_change.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@app_nic = external dso_local constant %struct.nfp_app_type, align 4
@app_bpf = external dso_local constant %struct.nfp_app_type, align 4
@app_flower = external dso_local constant %struct.nfp_app_type, align 4
@app_abm = external dso_local constant %struct.nfp_app_type, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 35, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 52, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 60, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 123, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant [5 x i8] c"apps\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 18, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [48 x i8] c"../drivers/net/ethernet/netronome/nfp/nfp_app.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 233, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @nfp_app_alloc._entry, ptr @nfp_app_alloc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @apps, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apps to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_app_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_check_rhashtable_empty(ptr nocapture noundef readnone %ptr, ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @nfp_check_rhashtable_empty.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !32

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_check_rhashtable_empty.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_from_netdev(ptr nocapture noundef readonly %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %app = getelementptr i8, ptr %netdev, i32 61180
  %2 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %app, align 4
  br label %return

if.end:                                           ; preds = %entry
  %cmp.i28 = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %app5 = getelementptr i8, ptr %netdev, i32 2316
  %4 = ptrtoint ptr %app5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app5, align 4
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %return

return:                                           ; preds = %do.end, %if.then3, %if.then
  %retval.0 = phi ptr [ %3, %if.then ], [ %5, %if.then3 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_mip_name(ptr noundef readonly %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %app, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %mip = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %mip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mip, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @nfp_mip_name(ptr noundef nonnull %3) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ @.str.2, %lor.lhs.false.return_crit_edge ], [ @.str.2, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_mip_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_ndo_init(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_app_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_app_from_netdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_app_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_app_from_netdev.exit_crit_edge, label %nfp_app_from_netdev.exit.thread

if.end.i.nfp_app_from_netdev.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_app_from_netdev.exit

nfp_app_from_netdev.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %cleanup

nfp_app_from_netdev.exit:                         ; preds = %if.end.i.nfp_app_from_netdev.exit_crit_edge, %entry.nfp_app_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61180, %entry.nfp_app_from_netdev.exit_crit_edge ], [ 2316, %if.end.i.nfp_app_from_netdev.exit_crit_edge ]
  %app.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %app.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_app_from_netdev.exit.cleanup_crit_edge, label %lor.lhs.false

nfp_app_from_netdev.exit.cleanup_crit_edge:       ; preds = %nfp_app_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %nfp_app_from_netdev.exit
  %type = getelementptr inbounds %struct.nfp_app, ptr %retval.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %ndo_init = getelementptr inbounds %struct.nfp_app_type, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %ndo_init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndo_init, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 %6(ptr noundef nonnull %retval.0.i, ptr noundef %netdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %nfp_app_from_netdev.exit.cleanup_crit_edge, %nfp_app_from_netdev.exit.thread
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %nfp_app_from_netdev.exit.cleanup_crit_edge ], [ 0, %nfp_app_from_netdev.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_app_ndo_uninit(ptr noundef %netdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %entry.nfp_app_from_netdev.exit_crit_edge, label %if.end.i

entry.nfp_app_from_netdev.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_app_from_netdev.exit

if.end.i:                                         ; preds = %entry
  %cmp.i28.i = icmp eq ptr %1, @nfp_repr_netdev_ops
  br i1 %cmp.i28.i, label %if.end.i.nfp_app_from_netdev.exit_crit_edge, label %nfp_app_from_netdev.exit.thread

if.end.i.nfp_app_from_netdev.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_app_from_netdev.exit

nfp_app_from_netdev.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end

nfp_app_from_netdev.exit:                         ; preds = %if.end.i.nfp_app_from_netdev.exit_crit_edge, %entry.nfp_app_from_netdev.exit_crit_edge
  %.sink = phi i32 [ 61180, %entry.nfp_app_from_netdev.exit_crit_edge ], [ 2316, %if.end.i.nfp_app_from_netdev.exit_crit_edge ]
  %app.i = getelementptr i8, ptr %netdev, i32 %.sink
  %2 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0.i = load ptr, ptr %app.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %nfp_app_from_netdev.exit.if.end_crit_edge, label %land.lhs.true

nfp_app_from_netdev.exit.if.end_crit_edge:        ; preds = %nfp_app_from_netdev.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %nfp_app_from_netdev.exit
  %type = getelementptr inbounds %struct.nfp_app, ptr %retval.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %ndo_uninit = getelementptr inbounds %struct.nfp_app_type, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %ndo_uninit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ndo_uninit, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %6(ptr noundef nonnull %retval.0.i, ptr noundef %netdev) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %nfp_app_from_netdev.exit.if.end_crit_edge, %nfp_app_from_netdev.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_port_get_stats(ptr noundef %port, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %port_get_stats = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %port_get_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_get_stats, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr %5(ptr noundef nonnull %1, ptr noundef nonnull %port, ptr noundef %data) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ %data, %lor.lhs.false2.return_crit_edge ], [ %data, %lor.lhs.false.return_crit_edge ], [ %data, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_port_get_stats_count(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %port_get_stats_count = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %port_get_stats_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_get_stats_count, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef nonnull %1, ptr noundef nonnull %port) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false2.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_port_get_stats_strings(ptr noundef %port, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %app = getelementptr inbounds %struct.nfp_port, ptr %port, i32 0, i32 4
  %0 = ptrtoint ptr %app to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %app, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false2

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %port_get_stats_strings = getelementptr inbounds %struct.nfp_app_type, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %port_get_stats_strings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_get_stats_strings, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr %5(ptr noundef nonnull %1, ptr noundef nonnull %port, ptr noundef %data) #4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ %data, %lor.lhs.false2.return_crit_edge ], [ %data, %lor.lhs.false.return_crit_edge ], [ %data, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_ctrl_msg_alloc(ptr nocapture noundef readonly %app, i32 noundef %size, i32 noundef %priority) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %ctrl_has_meta.i = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl_has_meta.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_has_meta.i, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  %add = add i32 %size, 8
  %spec.select = select i1 %tobool.i.not, i32 %size, i32 %add
  %call.i = tail call ptr @__alloc_skb(i32 noundef %spec.select, i32 noundef %priority, i32 noundef 0, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i, align 4
  %ctrl_has_meta.i12 = getelementptr inbounds %struct.nfp_app_type, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctrl_has_meta.i12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctrl_has_meta.i12, align 4, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i13.not = icmp eq i8 %7, 0
  br i1 %tobool.i13.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_reprs_get_locked(ptr nocapture noundef readonly %app, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pf = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %dep_map = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b6 = load i1, ptr @nfp_reprs_get_locked.__warned, align 1
  br i1 %.b6, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_reprs_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.3) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %arrayidx = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_reprs_set(ptr noundef %app, i32 noundef %type, ptr noundef %reprs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 1
  %0 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf.i, align 4
  %dep_map.i = getelementptr inbounds %struct.nfp_pf, ptr %1, i32 0, i32 37, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.nfp_reprs_get_locked.exit_crit_edge

entry.nfp_reprs_get_locked.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_reprs_get_locked.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.nfp_reprs_get_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.nfp_reprs_get_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_reprs_get_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @nfp_reprs_get_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.nfp_reprs_get_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.nfp_reprs_get_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nfp_reprs_get_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_reprs_get_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 124, ptr noundef nonnull @.str.3) #4
  br label %nfp_reprs_get_locked.exit

nfp_reprs_get_locked.exit:                        ; preds = %if.then.i, %land.lhs.true3.i.nfp_reprs_get_locked.exit_crit_edge, %land.lhs.true.i.nfp_reprs_get_locked.exit_crit_edge, %entry.nfp_reprs_get_locked.exit_crit_edge
  %arrayidx.i = getelementptr %struct.nfp_app, ptr %app, i32 0, i32 4, i32 %type
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  tail call void @rtnl_lock() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !34
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %reprs, ptr %arrayidx.i, align 4
  tail call void @rtnl_unlock() #4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_app_start(ptr noundef %app, ptr noundef %ctrl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ctrl, ptr %ctrl1, align 4
  %type = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %start = getelementptr inbounds %struct.nfp_app_type, ptr %2, i32 0, i32 23
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %start, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %app) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %netdev_nb = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 7
  %5 = ptrtoint ptr %netdev_nb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nfp_app_netdev_event, ptr %netdev_nb, align 4
  %call8 = tail call i32 @register_netdevice_notifier(ptr noundef %netdev_nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %err_app_stop

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_app_stop:                                     ; preds = %if.end6
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %stop = getelementptr inbounds %struct.nfp_app_type, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stop, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %err_app_stop.cleanup_crit_edge, label %if.then14

err_app_stop.cleanup_crit_edge:                   ; preds = %err_app_stop
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %err_app_stop
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %9(ptr noundef %app) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %err_app_stop.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ %call8, %if.then14 ], [ %call8, %err_app_stop.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfp_app_netdev_event(ptr noundef %nb, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %add.ptr = getelementptr i8, ptr %nb, i32 -36
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %event)
  %cond = icmp eq i32 %event, 12
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %3, @nfp_net_netdev_ops
  br i1 %cmp.i.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %app2.i = getelementptr i8, ptr %1, i32 61180
  %4 = ptrtoint ptr %app2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %app2.i, align 4
  %cmp.not.i = icmp eq ptr %5, %add.ptr
  br i1 %cmp.not.i, label %for.body.preheader.i, label %if.end.i.sw.epilog_crit_edge

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body.preheader.i:                             ; preds = %if.end.i
  %call6.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call6.i, label %for.body.preheader.i.do.end.i_crit_edge, label %land.lhs.true.i

for.body.preheader.i.do.end.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b60.i = load i1, ptr @nfp_app_netdev_feat_change.__warned, align 1
  br i1 %.b60.i, label %land.lhs.true8.i.do.end.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end.i_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.3) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %land.lhs.true8.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %for.body.preheader.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr i8, ptr %nb, i32 -20
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool13.not.i = icmp eq ptr %7, null
  br i1 %tobool13.not.i, label %do.end.i.cleanup36.i_crit_edge, label %for.cond16.preheader.i

do.end.i.cleanup36.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.i

for.cond16.preheader.i:                           ; preds = %do.end.i
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1761.not.i = icmp eq i32 %9, 0
  br i1 %cmp1761.not.i, label %for.cond16.preheader.i.cleanup36.i_crit_edge, label %for.cond16.preheader.i.for.body18.i_crit_edge

for.cond16.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body18.i

for.cond16.preheader.i.cleanup36.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.i

for.body18.i:                                     ; preds = %cleanup.i.for.body18.i_crit_edge, %for.cond16.preheader.i.for.body18.i_crit_edge
  %i.062.i = phi i32 [ %inc.i, %cleanup.i.for.body18.i_crit_edge ], [ 0, %for.cond16.preheader.i.for.body18.i_crit_edge ]
  %call20.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call20.i, label %for.body18.i.do.end29.i_crit_edge, label %land.lhs.true21.i

for.body18.i.do.end29.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

land.lhs.true21.i:                                ; preds = %for.body18.i
  %call22.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %land.lhs.true21.i.do.end29.i_crit_edge, label %land.lhs.true24.i

land.lhs.true21.i.do.end29.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

land.lhs.true24.i:                                ; preds = %land.lhs.true21.i
  %.b5859.i = load i1, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  br i1 %.b5859.i, label %land.lhs.true24.i.do.end29.i_crit_edge, label %if.then26.i

land.lhs.true24.i.do.end29.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.i

if.then26.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.3) #4
  br label %do.end29.i

do.end29.i:                                       ; preds = %if.then26.i, %land.lhs.true24.i.do.end29.i_crit_edge, %land.lhs.true21.i.do.end29.i_crit_edge, %for.body18.i.do.end29.i_crit_edge
  %arrayidx32.i = getelementptr %struct.nfp_reprs, ptr %7, i32 0, i32 1, i32 %i.062.i
  %10 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx32.i, align 4
  %tobool33.not.i = icmp eq ptr %11, null
  br i1 %tobool33.not.i, label %do.end29.i.cleanup.i_crit_edge, label %if.end35.i

do.end29.i.cleanup.i_crit_edge:                   ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.i

if.end35.i:                                       ; preds = %do.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfp_repr_transfer_features(ptr noundef nonnull %11, ptr noundef %1) #4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end35.i, %do.end29.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %i.062.i, 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %cmp17.i = icmp ult i32 %inc.i, %13
  br i1 %cmp17.i, label %cleanup.i.for.body18.i_crit_edge, label %cleanup.i.cleanup36.i_crit_edge

cleanup.i.cleanup36.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.i

cleanup.i.for.body18.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.i

cleanup36.i:                                      ; preds = %cleanup.i.cleanup36.i_crit_edge, %for.cond16.preheader.i.cleanup36.i_crit_edge, %do.end.i.cleanup36.i_crit_edge
  %call6.1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call6.1.i, label %cleanup36.i.do.end.1.i_crit_edge, label %land.lhs.true.1.i

cleanup36.i.do.end.1.i_crit_edge:                 ; preds = %cleanup36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.1.i

land.lhs.true.1.i:                                ; preds = %cleanup36.i
  %call7.1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1.i)
  %tobool.not.1.i = icmp eq i32 %call7.1.i, 0
  br i1 %tobool.not.1.i, label %land.lhs.true.1.i.do.end.1.i_crit_edge, label %land.lhs.true8.1.i

land.lhs.true.1.i.do.end.1.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.1.i

land.lhs.true8.1.i:                               ; preds = %land.lhs.true.1.i
  %.b60.1.i = load i1, ptr @nfp_app_netdev_feat_change.__warned, align 1
  br i1 %.b60.1.i, label %land.lhs.true8.1.i.do.end.1.i_crit_edge, label %if.then10.1.i

land.lhs.true8.1.i.do.end.1.i_crit_edge:          ; preds = %land.lhs.true8.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.1.i

if.then10.1.i:                                    ; preds = %land.lhs.true8.1.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.3) #4
  br label %do.end.1.i

do.end.1.i:                                       ; preds = %if.then10.1.i, %land.lhs.true8.1.i.do.end.1.i_crit_edge, %land.lhs.true.1.i.do.end.1.i_crit_edge, %cleanup36.i.do.end.1.i_crit_edge
  %arrayidx.1.i = getelementptr i8, ptr %nb, i32 -16
  %14 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool13.not.1.i = icmp eq ptr %15, null
  br i1 %tobool13.not.1.i, label %do.end.1.i.cleanup36.1.i_crit_edge, label %for.cond16.preheader.1.i

do.end.1.i.cleanup36.1.i_crit_edge:               ; preds = %do.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.1.i

for.cond16.preheader.1.i:                         ; preds = %do.end.1.i
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1761.not.1.i = icmp eq i32 %17, 0
  br i1 %cmp1761.not.1.i, label %for.cond16.preheader.1.i.cleanup36.1.i_crit_edge, label %for.cond16.preheader.1.i.for.body18.1.i_crit_edge

for.cond16.preheader.1.i.for.body18.1.i_crit_edge: ; preds = %for.cond16.preheader.1.i
  br label %for.body18.1.i

for.cond16.preheader.1.i.cleanup36.1.i_crit_edge: ; preds = %for.cond16.preheader.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.1.i

for.body18.1.i:                                   ; preds = %cleanup.1.i.for.body18.1.i_crit_edge, %for.cond16.preheader.1.i.for.body18.1.i_crit_edge
  %i.062.1.i = phi i32 [ %inc.1.i, %cleanup.1.i.for.body18.1.i_crit_edge ], [ 0, %for.cond16.preheader.1.i.for.body18.1.i_crit_edge ]
  %call20.1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call20.1.i, label %for.body18.1.i.do.end29.1.i_crit_edge, label %land.lhs.true21.1.i

for.body18.1.i.do.end29.1.i_crit_edge:            ; preds = %for.body18.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.1.i

land.lhs.true21.1.i:                              ; preds = %for.body18.1.i
  %call22.1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1.i)
  %tobool23.not.1.i = icmp eq i32 %call22.1.i, 0
  br i1 %tobool23.not.1.i, label %land.lhs.true21.1.i.do.end29.1.i_crit_edge, label %land.lhs.true24.1.i

land.lhs.true21.1.i.do.end29.1.i_crit_edge:       ; preds = %land.lhs.true21.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.1.i

land.lhs.true24.1.i:                              ; preds = %land.lhs.true21.1.i
  %.b5859.1.i = load i1, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  br i1 %.b5859.1.i, label %land.lhs.true24.1.i.do.end29.1.i_crit_edge, label %if.then26.1.i

land.lhs.true24.1.i.do.end29.1.i_crit_edge:       ; preds = %land.lhs.true24.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.1.i

if.then26.1.i:                                    ; preds = %land.lhs.true24.1.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.3) #4
  br label %do.end29.1.i

do.end29.1.i:                                     ; preds = %if.then26.1.i, %land.lhs.true24.1.i.do.end29.1.i_crit_edge, %land.lhs.true21.1.i.do.end29.1.i_crit_edge, %for.body18.1.i.do.end29.1.i_crit_edge
  %arrayidx32.1.i = getelementptr %struct.nfp_reprs, ptr %15, i32 0, i32 1, i32 %i.062.1.i
  %18 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx32.1.i, align 4
  %tobool33.not.1.i = icmp eq ptr %19, null
  br i1 %tobool33.not.1.i, label %do.end29.1.i.cleanup.1.i_crit_edge, label %if.end35.1.i

do.end29.1.i.cleanup.1.i_crit_edge:               ; preds = %do.end29.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.1.i

if.end35.1.i:                                     ; preds = %do.end29.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfp_repr_transfer_features(ptr noundef nonnull %19, ptr noundef %1) #4
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end35.1.i, %do.end29.1.i.cleanup.1.i_crit_edge
  %inc.1.i = add nuw i32 %i.062.1.i, 1
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 4
  %cmp17.1.i = icmp ult i32 %inc.1.i, %21
  br i1 %cmp17.1.i, label %cleanup.1.i.for.body18.1.i_crit_edge, label %cleanup.1.i.cleanup36.1.i_crit_edge

cleanup.1.i.cleanup36.1.i_crit_edge:              ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36.1.i

cleanup.1.i.for.body18.1.i_crit_edge:             ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.1.i

cleanup36.1.i:                                    ; preds = %cleanup.1.i.cleanup36.1.i_crit_edge, %for.cond16.preheader.1.i.cleanup36.1.i_crit_edge, %do.end.1.i.cleanup36.1.i_crit_edge
  %call6.2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call6.2.i, label %cleanup36.1.i.do.end.2.i_crit_edge, label %land.lhs.true.2.i

cleanup36.1.i.do.end.2.i_crit_edge:               ; preds = %cleanup36.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.2.i

land.lhs.true.2.i:                                ; preds = %cleanup36.1.i
  %call7.2.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2.i)
  %tobool.not.2.i = icmp eq i32 %call7.2.i, 0
  br i1 %tobool.not.2.i, label %land.lhs.true.2.i.do.end.2.i_crit_edge, label %land.lhs.true8.2.i

land.lhs.true.2.i.do.end.2.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.2.i

land.lhs.true8.2.i:                               ; preds = %land.lhs.true.2.i
  %.b60.2.i = load i1, ptr @nfp_app_netdev_feat_change.__warned, align 1
  br i1 %.b60.2.i, label %land.lhs.true8.2.i.do.end.2.i_crit_edge, label %if.then10.2.i

land.lhs.true8.2.i.do.end.2.i_crit_edge:          ; preds = %land.lhs.true8.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.2.i

if.then10.2.i:                                    ; preds = %land.lhs.true8.2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.3) #4
  br label %do.end.2.i

do.end.2.i:                                       ; preds = %if.then10.2.i, %land.lhs.true8.2.i.do.end.2.i_crit_edge, %land.lhs.true.2.i.do.end.2.i_crit_edge, %cleanup36.1.i.do.end.2.i_crit_edge
  %arrayidx.2.i = getelementptr i8, ptr %nb, i32 -12
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool13.not.2.i = icmp eq ptr %23, null
  br i1 %tobool13.not.2.i, label %do.end.2.i.sw.epilog_crit_edge, label %for.cond16.preheader.2.i

do.end.2.i.sw.epilog_crit_edge:                   ; preds = %do.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond16.preheader.2.i:                         ; preds = %do.end.2.i
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1761.not.2.i = icmp eq i32 %25, 0
  br i1 %cmp1761.not.2.i, label %for.cond16.preheader.2.i.sw.epilog_crit_edge, label %for.cond16.preheader.2.i.for.body18.2.i_crit_edge

for.cond16.preheader.2.i.for.body18.2.i_crit_edge: ; preds = %for.cond16.preheader.2.i
  br label %for.body18.2.i

for.cond16.preheader.2.i.sw.epilog_crit_edge:     ; preds = %for.cond16.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body18.2.i:                                   ; preds = %cleanup.2.i.for.body18.2.i_crit_edge, %for.cond16.preheader.2.i.for.body18.2.i_crit_edge
  %i.062.2.i = phi i32 [ %inc.2.i, %cleanup.2.i.for.body18.2.i_crit_edge ], [ 0, %for.cond16.preheader.2.i.for.body18.2.i_crit_edge ]
  %call20.2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #4
  br i1 %call20.2.i, label %for.body18.2.i.do.end29.2.i_crit_edge, label %land.lhs.true21.2.i

for.body18.2.i.do.end29.2.i_crit_edge:            ; preds = %for.body18.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.2.i

land.lhs.true21.2.i:                              ; preds = %for.body18.2.i
  %call22.2.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2.i)
  %tobool23.not.2.i = icmp eq i32 %call22.2.i, 0
  br i1 %tobool23.not.2.i, label %land.lhs.true21.2.i.do.end29.2.i_crit_edge, label %land.lhs.true24.2.i

land.lhs.true21.2.i.do.end29.2.i_crit_edge:       ; preds = %land.lhs.true21.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.2.i

land.lhs.true24.2.i:                              ; preds = %land.lhs.true21.2.i
  %.b5859.2.i = load i1, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  br i1 %.b5859.2.i, label %land.lhs.true24.2.i.do.end29.2.i_crit_edge, label %if.then26.2.i

land.lhs.true24.2.i.do.end29.2.i_crit_edge:       ; preds = %land.lhs.true24.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end29.2.i

if.then26.2.i:                                    ; preds = %land.lhs.true24.2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nfp_app_netdev_feat_change.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 164, ptr noundef nonnull @.str.3) #4
  br label %do.end29.2.i

do.end29.2.i:                                     ; preds = %if.then26.2.i, %land.lhs.true24.2.i.do.end29.2.i_crit_edge, %land.lhs.true21.2.i.do.end29.2.i_crit_edge, %for.body18.2.i.do.end29.2.i_crit_edge
  %arrayidx32.2.i = getelementptr %struct.nfp_reprs, ptr %23, i32 0, i32 1, i32 %i.062.2.i
  %26 = ptrtoint ptr %arrayidx32.2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx32.2.i, align 4
  %tobool33.not.2.i = icmp eq ptr %27, null
  br i1 %tobool33.not.2.i, label %do.end29.2.i.cleanup.2.i_crit_edge, label %if.end35.2.i

do.end29.2.i.cleanup.2.i_crit_edge:               ; preds = %do.end29.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.2.i

if.end35.2.i:                                     ; preds = %do.end29.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nfp_repr_transfer_features(ptr noundef nonnull %27, ptr noundef %1) #4
  br label %cleanup.2.i

cleanup.2.i:                                      ; preds = %if.end35.2.i, %do.end29.2.i.cleanup.2.i_crit_edge
  %inc.2.i = add nuw i32 %i.062.2.i, 1
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %23, align 4
  %cmp17.2.i = icmp ult i32 %inc.2.i, %29
  br i1 %cmp17.2.i, label %cleanup.2.i.for.body18.2.i_crit_edge, label %cleanup.2.i.sw.epilog_crit_edge

cleanup.2.i.sw.epilog_crit_edge:                  ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

cleanup.2.i.for.body18.2.i_crit_edge:             ; preds = %cleanup.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18.2.i

sw.epilog:                                        ; preds = %cleanup.2.i.sw.epilog_crit_edge, %for.cond16.preheader.2.i.sw.epilog_crit_edge, %do.end.2.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %type = getelementptr i8, ptr %nb, i32 -8
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type, align 4
  %netdev_event = getelementptr inbounds %struct.nfp_app_type, ptr %31, i32 0, i32 25
  %32 = ptrtoint ptr %netdev_event to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %netdev_event, align 4
  %tobool.not = icmp eq ptr %33, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 %33(ptr noundef %add.ptr, ptr noundef %1, i32 noundef %event, ptr noundef %ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_app_stop(ptr noundef %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_nb = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 7
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef %netdev_nb) #4
  %type = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %stop = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %app) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfp_app_alloc(ptr noundef %pf, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %id)
  %cmp = icmp ugt i32 %id, 4
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr [5 x ptr], ptr @apps, i32 0, i32 %id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %tobool.not = icmp eq i32 %id, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %2 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp, align 4
  %call = tail call ptr @nfp_cpp_device(ptr noundef %3) #4
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, i32 noundef %id) #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %name = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.do.end18_crit_edge, label %lor.rhs

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18

lor.rhs:                                          ; preds = %if.end
  %vnic_alloc = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vnic_alloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vnic_alloc, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.rhs.do.end18_crit_edge, label %if.end34, !prof !35

lor.rhs.do.end18_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end18

do.end18:                                         ; preds = %lor.rhs.do.end18_crit_edge, %if.end.do.end18_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 237, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end34:                                         ; preds = %lor.rhs
  %ctrl_msg_rx = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %ctrl_msg_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_msg_rx, align 4
  %tobool37.not = icmp eq ptr %11, null
  br i1 %tobool37.not, label %land.rhs, label %if.end34.if.end72_crit_edge

if.end34.if.end72_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

land.rhs:                                         ; preds = %if.end34
  %ctrl_msg_rx_raw = getelementptr inbounds %struct.nfp_app_type, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %ctrl_msg_rx_raw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_msg_rx_raw, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %land.rhs.if.end72_crit_edge, label %do.end55, !prof !32

land.rhs.if.end72_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

do.end55:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end72:                                         ; preds = %land.rhs.if.end72_crit_edge, %if.end34.if.end72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 52) #8
  %tobool74.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool74.not, label %if.end72.cleanup_crit_edge, label %if.end77

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  %pf78 = getelementptr inbounds %struct.nfp_app, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %pf78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pf, ptr %pf78, align 4
  %cpp79 = getelementptr inbounds %struct.nfp_pf, ptr %pf, i32 0, i32 1
  %16 = ptrtoint ptr %cpp79 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpp79, align 4
  %cpp80 = getelementptr inbounds %struct.nfp_app, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %cpp80 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %cpp80, align 8
  %19 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pf, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call7.i.i, align 8
  %type = getelementptr inbounds %struct.nfp_app, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.end72.cleanup_crit_edge, %do.end55, %do.end18, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end18 ], [ inttoptr (i32 -22 to ptr), %do.end55 ], [ %call7.i.i, %if.end77 ], [ inttoptr (i32 -12 to ptr), %if.end72.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_app_free(ptr noundef %app) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %app) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfp_repr_transfer_features(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 35, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 52, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 60, i32 10}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 123, i32 9}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 233, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_app_alloc._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @nfp_app_alloc._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 157, i32 11}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 164, i32 11}
!21 = !{ptr @apps, !22, !"apps", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/nfp_app.c", i32 18, i32 35}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i8 0, i8 2}
!34 = !{i64 2158785671}
!35 = !{!"branch_weights", i32 1, i32 2000}
