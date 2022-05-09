; ModuleID = '/llk/IR_all_yes/drivers/staging/qlge/qlge_devlink.c_pt.bc'
source_filename = "../drivers/staging/qlge/qlge_devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qlge_adapter = type { %struct.ricb, i32, i32, %struct.nic_stats, [128 x i32], ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.mbox_params, %struct.mutex, i32, i32, i32, ptr, [17 x %struct.intr_context], i32, i32, i32, i32, ptr, [17 x %struct.rx_ring], [8 x %struct.tx_ring], i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, ptr, i32, i32, i32, %union.flash_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.completion, ptr, i16, %struct.timer_list, %struct.atomic_t, [6 x i8] }
%struct.ricb = type { i8, i8, i16, [1024 x i8], [10 x i32], [4 x i32] }
%struct.nic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mbox_params = type { [16 x i32], [16 x i32], i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.intr_context = type { ptr, i32, i32, i32, i32, i32, i32, [32 x i8], ptr }
%struct.rx_ring = type { %struct.cqicb, ptr, i32, i32, i32, i16, ptr, i32, ptr, i32, ptr, ptr, %struct.qlge_bq, %struct.qlge_page_chunk, i32, %struct.qlge_bq, i32, i32, %struct.delayed_work, [21 x i8], %struct.napi_struct, i8, ptr, i64, i64, i64, i64, i64 }
%struct.cqicb = type <{ i8, i8, i8, i8, i16, i16, i64, i64, i16, i16, i64, i16, i16, i64, i16, i16 }>
%struct.qlge_page_chunk = type { ptr, ptr, i32 }
%struct.qlge_bq = type { ptr, i32, ptr, i32, ptr, ptr, i16, i16, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tx_ring = type { %struct.wqicb, ptr, i32, ptr, i32, i32, i32, ptr, ptr, i16, i16, i8, [3 x i8], ptr, %struct.spinlock, %struct.atomic_t, %struct.delayed_work, ptr, i64, i64, i64 }
%struct.wqicb = type { i16, i16, i16, i16, i64, i64 }
%union.flash_params = type { %struct.flash_params_8000 }
%struct.flash_params_8000 = type { [4 x i8], i16, i16, i16, i16, i16, i16, i8, i8, [6 x i8], i8, i8, [6 x i8], i8, i8, i16, i8, i8, i16, [464 x i8], i16, i16, [4 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.qlge_mpi_coredump = type { %struct.mpi_coredump_global_header, %struct.mpi_coredump_segment_header, [127 x i32], [16 x i32], %struct.mpi_coredump_segment_header, [23 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [256 x i32], %struct.mpi_coredump_segment_header, [256 x i32], %struct.mpi_coredump_segment_header, [6 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [64 x i32], %struct.mpi_coredump_segment_header, [464 x i32], %struct.mpi_coredump_segment_header, [464 x i32], %struct.mpi_coredump_segment_header, [8192 x i32], %struct.mpi_coredump_segment_header, [8192 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [33 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [12 x i32], %struct.mpi_coredump_segment_header, [15 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, %struct.qlge_nic_misc, %struct.mpi_coredump_segment_header, [17 x i32], %struct.mpi_coredump_segment_header, [144 x i32], %struct.mpi_coredump_segment_header, [16 x i32], %struct.mpi_coredump_segment_header, [10 x i32], %struct.mpi_coredump_segment_header, [4386 x i32], %struct.mpi_coredump_segment_header, [192 x i32], %struct.mpi_coredump_segment_header, [19712 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [33 x i32], %struct.mpi_coredump_segment_header, [14 x i32], %struct.mpi_coredump_segment_header, [12 x i32], %struct.mpi_coredump_segment_header, [15 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [32 x i32], %struct.mpi_coredump_segment_header, [4 x i32] }
%struct.mpi_coredump_global_header = type { i32, [16 x i8], i32, i32, i32, i32, [220 x i8] }
%struct.qlge_nic_misc = type { i32, i32, i32, i32 }
%struct.mpi_coredump_segment_header = type { i32, i32, i32, i32, [16 x i8] }

@qlge_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.1, ptr null, ptr @qlge_reporter_coredump, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create reporter, err = %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"coredump\00", [23 x i8] zeroinitializer }, align 32
@qlge_reporter_coredump.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"&wait\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/staging/qlge/qlge_devlink.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Force Coredump failed because this NIC function doesn't own the firmware\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"segment\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"values\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"qlge_reporter_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 146, i32 49 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 163, i32 8 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 147, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 67, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 68, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 70, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 20, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private constant [39 x i8] c"../drivers/staging/qlge/qlge_devlink.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 23, i32 47 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @qlge_reporter_ops, ptr @.str, ptr @.str.1, ptr @qlge_reporter_coredump.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlge_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlge_reporter_coredump.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qlge_health_create_reporters(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %priv) #6
  %call1 = tail call ptr @devlink_health_reporter_create(ptr noundef %call, ptr noundef nonnull @qlge_reporter_ops, i64 noundef 0, ptr noundef %priv) #6
  %reporter = getelementptr inbounds %struct.qlge_adapter, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %reporter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %reporter, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlge_reporter_coredump(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wait) #6
  %0 = call ptr @memset(ptr %wait, i32 255, i32 52)
  %ndev = getelementptr inbounds %struct.qlge_adapter, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup424_crit_edge, label %if.end

entry.cleanup424_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup424

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.qlge_adapter, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end51_crit_edge, label %if.then3

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @qlge_own_firmware(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body43, label %if.then6

if.then6:                                         ; preds = %if.then3
  tail call void @qlge_queue_fw_error(ptr noundef %call) #6
  call void @__init_waitqueue_head(ptr noundef nonnull %wait, ptr noundef nonnull @.str.2, ptr noundef nonnull @qlge_reporter_coredump.__key) #6
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 68) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %8 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call22726 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then6
  %__ret21.0727 = phi i32 [ 500, %if.then6 ], [ %call39, %cleanup.cleanup_crit_edge ]
  %call39 = call i32 @schedule_timeout(i32 noundef %__ret21.0727) #6
  %call22 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %tobool32.not = icmp eq i32 %call39, 0
  br i1 %tobool32.not, label %for.end, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end51

do.body43:                                        ; preds = %if.then3
  %msg_enable = getelementptr inbounds %struct.qlge_adapter, ptr %call, i32 0, i32 18
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  br i1 %tobool44.not, label %do.body43.cleanup424_crit_edge, label %if.then45

do.body43.cleanup424_crit_edge:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup424

if.then45:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.4) #9
  br label %cleanup424

if.end51:                                         ; preds = %for.end, %if.end.if.end51_crit_edge
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef 176196, i32 noundef 3264, i32 noundef -1) #10
  %tobool53.not = icmp eq ptr %call.i, null
  br i1 %tobool53.not, label %if.end51.cleanup424_crit_edge, label %if.end55

if.end51.cleanup424_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup424

if.end55:                                         ; preds = %if.end51
  %call56 = call i32 @qlge_core_dump(ptr noundef %call, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

if.end59:                                         ; preds = %if.end55
  %call60 = call i32 @qlge_soft_reset_mpi_risc(ptr noundef %call) #6
  %core_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 1
  %mpi_core_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 2
  %call62 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %core_regs_seg_hdr, ptr noundef %mpi_core_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body68, label %if.then64

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body68:                                        ; preds = %if.end59
  %test_logic_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 4
  %test_logic_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 5
  %call70 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %test_logic_regs_seg_hdr, ptr noundef %test_logic_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %do.body76, label %if.then72

if.then72:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body76:                                        ; preds = %do.body68
  %rmii_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 6
  %rmii_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 7
  %call78 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %rmii_regs_seg_hdr, ptr noundef %rmii_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.body84, label %if.then80

if.then80:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body84:                                        ; preds = %do.body76
  %fcmac1_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 8
  %fcmac1_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 9
  %call86 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %fcmac1_regs_seg_hdr, ptr noundef %fcmac1_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body92, label %if.then88

if.then88:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body92:                                        ; preds = %do.body84
  %fcmac2_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 10
  %fcmac2_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 11
  %call94 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %fcmac2_regs_seg_hdr, ptr noundef %fcmac2_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.body100, label %if.then96

if.then96:                                        ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body100:                                       ; preds = %do.body92
  %fc1_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 12
  %fc1_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 13
  %call102 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %fc1_mbx_regs_seg_hdr, ptr noundef %fc1_mbx_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %do.body108, label %if.then104

if.then104:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body108:                                       ; preds = %do.body100
  %ide_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 14
  %ide_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 15
  %call110 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %ide_regs_seg_hdr, ptr noundef %ide_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %do.body116, label %if.then112

if.then112:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body116:                                       ; preds = %do.body108
  %nic1_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 16
  %nic1_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 17
  %call118 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %nic1_mbx_regs_seg_hdr, ptr noundef %nic1_mbx_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %do.body124, label %if.then120

if.then120:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body124:                                       ; preds = %do.body116
  %smbus_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 18
  %smbus_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 19
  %call126 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %smbus_regs_seg_hdr, ptr noundef %smbus_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body132, label %if.then128

if.then128:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body132:                                       ; preds = %do.body124
  %fc2_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 20
  %fc2_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 21
  %call134 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %fc2_mbx_regs_seg_hdr, ptr noundef %fc2_mbx_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %do.body140, label %if.then136

if.then136:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body140:                                       ; preds = %do.body132
  %nic2_mbx_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 22
  %nic2_mbx_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 23
  %call142 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %nic2_mbx_regs_seg_hdr, ptr noundef %nic2_mbx_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %do.body148, label %if.then144

if.then144:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body148:                                       ; preds = %do.body140
  %i2c_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 24
  %i2c_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 25
  %call150 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %i2c_regs_seg_hdr, ptr noundef %i2c_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %do.body156, label %if.then152

if.then152:                                       ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body156:                                       ; preds = %do.body148
  %memc_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 26
  %memc_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 27
  %call158 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %memc_regs_seg_hdr, ptr noundef %memc_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %do.body164, label %if.then160

if.then160:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body164:                                       ; preds = %do.body156
  %pbus_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 28
  %pbus_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 29
  %call166 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %pbus_regs_seg_hdr, ptr noundef %pbus_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166)
  %tobool167.not = icmp eq i32 %call166, 0
  br i1 %tobool167.not, label %do.body172, label %if.then168

if.then168:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body172:                                       ; preds = %do.body164
  %mde_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 30
  %mde_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 31
  %call174 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %mde_regs_seg_hdr, ptr noundef %mde_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %do.body180, label %if.then176

if.then176:                                       ; preds = %do.body172
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body180:                                       ; preds = %do.body172
  %nic_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 32
  %nic_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 33
  %call182 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %nic_regs_seg_hdr, ptr noundef %nic_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %do.body188, label %if.then184

if.then184:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body188:                                       ; preds = %do.body180
  %nic2_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 34
  %nic2_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 35
  %call190 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %nic2_regs_seg_hdr, ptr noundef %nic2_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %do.body196, label %if.then192

if.then192:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body196:                                       ; preds = %do.body188
  %xgmac1_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 36
  %xgmac1 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 37
  %call198 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xgmac1_seg_hdr, ptr noundef %xgmac1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %do.body204, label %if.then200

if.then200:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body204:                                       ; preds = %do.body196
  %xgmac2_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 38
  %xgmac2 = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 39
  %call206 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xgmac2_seg_hdr, ptr noundef %xgmac2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %do.body212, label %if.then208

if.then208:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body212:                                       ; preds = %do.body204
  %code_ram_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 40
  %code_ram = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 41
  %call214 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %code_ram_seg_hdr, ptr noundef %code_ram)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %do.body220, label %if.then216

if.then216:                                       ; preds = %do.body212
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body220:                                       ; preds = %do.body212
  %memc_ram_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 42
  %memc_ram = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 43
  %call222 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %memc_ram_seg_hdr, ptr noundef %memc_ram)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %do.body228, label %if.then224

if.then224:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body228:                                       ; preds = %do.body220
  %xaui_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 44
  %serdes_xaui_an = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 45
  %call230 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xaui_an_hdr, ptr noundef %serdes_xaui_an)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %do.body236, label %if.then232

if.then232:                                       ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body236:                                       ; preds = %do.body228
  %xaui_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 46
  %serdes_xaui_hss_pcs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 47
  %call238 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xaui_hss_pcs_hdr, ptr noundef %serdes_xaui_hss_pcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %do.body244, label %if.then240

if.then240:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body244:                                       ; preds = %do.body236
  %xfi_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 48
  %serdes_xfi_an = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 49
  %call246 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_an_hdr, ptr noundef %serdes_xfi_an)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %do.body252, label %if.then248

if.then248:                                       ; preds = %do.body244
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body252:                                       ; preds = %do.body244
  %xfi_train_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 50
  %serdes_xfi_train = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 51
  %call254 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_train_hdr, ptr noundef %serdes_xfi_train)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %tobool255.not = icmp eq i32 %call254, 0
  br i1 %tobool255.not, label %do.body260, label %if.then256

if.then256:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body260:                                       ; preds = %do.body252
  %xfi_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 52
  %serdes_xfi_hss_pcs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 53
  %call262 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_hss_pcs_hdr, ptr noundef %serdes_xfi_hss_pcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %do.body268, label %if.then264

if.then264:                                       ; preds = %do.body260
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body268:                                       ; preds = %do.body260
  %xfi_hss_tx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 54
  %serdes_xfi_hss_tx = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 55
  %call270 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_hss_tx_hdr, ptr noundef %serdes_xfi_hss_tx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %tobool271.not = icmp eq i32 %call270, 0
  br i1 %tobool271.not, label %do.body276, label %if.then272

if.then272:                                       ; preds = %do.body268
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body276:                                       ; preds = %do.body268
  %xfi_hss_rx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 56
  %serdes_xfi_hss_rx = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 57
  %call278 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_hss_rx_hdr, ptr noundef %serdes_xfi_hss_rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %do.body284, label %if.then280

if.then280:                                       ; preds = %do.body276
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body284:                                       ; preds = %do.body276
  %xfi_hss_pll_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 58
  %serdes_xfi_hss_pll = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 59
  %call286 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi_hss_pll_hdr, ptr noundef %serdes_xfi_hss_pll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %do.end291, label %if.then288

if.then288:                                       ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.end291:                                        ; preds = %do.body284
  %misc_nic_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 60
  %misc_nic_info = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 61
  %call292 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %misc_nic_seg_hdr, ptr noundef %misc_nic_info)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call292)
  %tobool293.not = icmp eq i32 %call292, 0
  br i1 %tobool293.not, label %do.body296, label %if.then294

if.then294:                                       ; preds = %do.end291
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body296:                                       ; preds = %do.end291
  %intr_states_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 62
  %intr_states = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 63
  %call298 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %intr_states_seg_hdr, ptr noundef %intr_states)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %do.body304, label %if.then300

if.then300:                                       ; preds = %do.body296
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body304:                                       ; preds = %do.body296
  %cam_entries_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 64
  %cam_entries = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 65
  %call306 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %cam_entries_seg_hdr, ptr noundef %cam_entries)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %tobool307.not = icmp eq i32 %call306, 0
  br i1 %tobool307.not, label %do.body312, label %if.then308

if.then308:                                       ; preds = %do.body304
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body312:                                       ; preds = %do.body304
  %nic_routing_words_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 66
  %nic_routing_words = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 67
  %call314 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %nic_routing_words_seg_hdr, ptr noundef %nic_routing_words)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call314)
  %tobool315.not = icmp eq i32 %call314, 0
  br i1 %tobool315.not, label %do.body320, label %if.then316

if.then316:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body320:                                       ; preds = %do.body312
  %ets_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 68
  %ets = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 69
  %call322 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %ets_seg_hdr, ptr noundef %ets)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %do.body328, label %if.then324

if.then324:                                       ; preds = %do.body320
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body328:                                       ; preds = %do.body320
  %probe_dump_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 70
  %probe_dump = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 71
  %call330 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %probe_dump_seg_hdr, ptr noundef %probe_dump)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call330)
  %tobool331.not = icmp eq i32 %call330, 0
  br i1 %tobool331.not, label %do.body336, label %if.then332

if.then332:                                       ; preds = %do.body328
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body336:                                       ; preds = %do.body328
  %routing_reg_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 72
  %routing_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 73
  %call338 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %routing_reg_seg_hdr, ptr noundef %routing_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call338)
  %tobool339.not = icmp eq i32 %call338, 0
  br i1 %tobool339.not, label %do.body344, label %if.then340

if.then340:                                       ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body344:                                       ; preds = %do.body336
  %mac_prot_reg_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 74
  %mac_prot_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 75
  %call346 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %mac_prot_reg_seg_hdr, ptr noundef %mac_prot_regs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %tobool347.not = icmp eq i32 %call346, 0
  br i1 %tobool347.not, label %do.body352, label %if.then348

if.then348:                                       ; preds = %do.body344
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body352:                                       ; preds = %do.body344
  %xaui2_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 76
  %serdes2_xaui_an = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 77
  %call354 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xaui2_an_hdr, ptr noundef %serdes2_xaui_an)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %do.body360, label %if.then356

if.then356:                                       ; preds = %do.body352
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body360:                                       ; preds = %do.body352
  %xaui2_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 78
  %serdes2_xaui_hss_pcs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 79
  %call362 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xaui2_hss_pcs_hdr, ptr noundef %serdes2_xaui_hss_pcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %do.body368, label %if.then364

if.then364:                                       ; preds = %do.body360
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body368:                                       ; preds = %do.body360
  %xfi2_an_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 80
  %serdes2_xfi_an = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 81
  %call370 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_an_hdr, ptr noundef %serdes2_xfi_an)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call370)
  %tobool371.not = icmp eq i32 %call370, 0
  br i1 %tobool371.not, label %do.body376, label %if.then372

if.then372:                                       ; preds = %do.body368
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body376:                                       ; preds = %do.body368
  %xfi2_train_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 82
  %serdes2_xfi_train = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 83
  %call378 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_train_hdr, ptr noundef %serdes2_xfi_train)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call378)
  %tobool379.not = icmp eq i32 %call378, 0
  br i1 %tobool379.not, label %do.body384, label %if.then380

if.then380:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body384:                                       ; preds = %do.body376
  %xfi2_hss_pcs_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 84
  %serdes2_xfi_hss_pcs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 85
  %call386 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_hss_pcs_hdr, ptr noundef %serdes2_xfi_hss_pcs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call386)
  %tobool387.not = icmp eq i32 %call386, 0
  br i1 %tobool387.not, label %do.body392, label %if.then388

if.then388:                                       ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body392:                                       ; preds = %do.body384
  %xfi2_hss_tx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 86
  %serdes2_xfi_hss_tx = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 87
  %call394 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_hss_tx_hdr, ptr noundef %serdes2_xfi_hss_tx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %do.body400, label %if.then396

if.then396:                                       ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body400:                                       ; preds = %do.body392
  %xfi2_hss_rx_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 88
  %serdes2_xfi_hss_rx = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 89
  %call402 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_hss_rx_hdr, ptr noundef %serdes2_xfi_hss_rx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call402)
  %tobool403.not = icmp eq i32 %call402, 0
  br i1 %tobool403.not, label %do.body408, label %if.then404

if.then404:                                       ; preds = %do.body400
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body408:                                       ; preds = %do.body400
  %xfi2_hss_pll_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 90
  %serdes2_xfi_hss_pll = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 91
  %call410 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %xfi2_hss_pll_hdr, ptr noundef %serdes2_xfi_hss_pll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call410)
  %tobool411.not = icmp eq i32 %call410, 0
  br i1 %tobool411.not, label %do.body416, label %if.then412

if.then412:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #8
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

do.body416:                                       ; preds = %do.body408
  call void @__sanitizer_cov_trace_pc() #8
  %sem_regs_seg_hdr = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 92
  %sem_regs = getelementptr inbounds %struct.qlge_mpi_coredump, ptr %call.i, i32 0, i32 93
  %call418 = call fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %sem_regs_seg_hdr, ptr noundef %sem_regs)
  call void @kvfree(ptr noundef nonnull %call.i) #6
  br label %cleanup424

cleanup424:                                       ; preds = %do.body416, %if.then412, %if.then404, %if.then396, %if.then388, %if.then380, %if.then372, %if.then364, %if.then356, %if.then348, %if.then340, %if.then332, %if.then324, %if.then316, %if.then308, %if.then300, %if.then294, %if.then288, %if.then280, %if.then272, %if.then264, %if.then256, %if.then248, %if.then240, %if.then232, %if.then224, %if.then216, %if.then208, %if.then200, %if.then192, %if.then184, %if.then176, %if.then168, %if.then160, %if.then152, %if.then144, %if.then136, %if.then128, %if.then120, %if.then112, %if.then104, %if.then96, %if.then88, %if.then80, %if.then72, %if.then64, %if.then58, %if.end51.cleanup424_crit_edge, %if.then45, %do.body43.cleanup424_crit_edge, %entry.cleanup424_crit_edge
  %retval.0 = phi i32 [ %call56, %if.then58 ], [ %call62, %if.then64 ], [ %call70, %if.then72 ], [ %call78, %if.then80 ], [ %call86, %if.then88 ], [ %call94, %if.then96 ], [ %call102, %if.then104 ], [ %call110, %if.then112 ], [ %call118, %if.then120 ], [ %call126, %if.then128 ], [ %call134, %if.then136 ], [ %call142, %if.then144 ], [ %call150, %if.then152 ], [ %call158, %if.then160 ], [ %call166, %if.then168 ], [ %call174, %if.then176 ], [ %call182, %if.then184 ], [ %call190, %if.then192 ], [ %call198, %if.then200 ], [ %call206, %if.then208 ], [ %call214, %if.then216 ], [ %call222, %if.then224 ], [ %call230, %if.then232 ], [ %call238, %if.then240 ], [ %call246, %if.then248 ], [ %call254, %if.then256 ], [ %call262, %if.then264 ], [ %call270, %if.then272 ], [ %call278, %if.then280 ], [ %call286, %if.then288 ], [ %call292, %if.then294 ], [ %call298, %if.then300 ], [ %call306, %if.then308 ], [ %call314, %if.then316 ], [ %call322, %if.then324 ], [ %call330, %if.then332 ], [ %call338, %if.then340 ], [ %call346, %if.then348 ], [ %call354, %if.then356 ], [ %call362, %if.then364 ], [ %call370, %if.then372 ], [ %call378, %if.then380 ], [ %call386, %if.then388 ], [ %call394, %if.then396 ], [ %call402, %if.then404 ], [ %call410, %if.then412 ], [ 0, %entry.cleanup424_crit_edge ], [ -1, %if.then45 ], [ -1, %do.body43.cleanup424_crit_edge ], [ -12, %if.end51.cleanup424_crit_edge ], [ %call418, %do.body416 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wait) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_own_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlge_queue_fw_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_core_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlge_soft_reset_mpi_risc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlge_fill_seg_(ptr noundef %fmsg, ptr noundef %seg_header, ptr nocapture noundef readonly %reg_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seg_size = getelementptr inbounds %struct.mpi_coredump_segment_header, ptr %seg_header, i32 0, i32 2
  %0 = ptrtoint ptr %seg_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seg_size, align 4
  %sub = add i32 %1, -32
  %div53 = lshr i32 %sub, 2
  %description = getelementptr inbounds %struct.mpi_coredump_segment_header, ptr %seg_header, i32 0, i32 4
  %call = tail call i32 @devlink_fmsg_pair_nest_start(ptr noundef %fmsg, ptr noundef %description) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @devlink_fmsg_obj_nest_start(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %seg_num = getelementptr inbounds %struct.mpi_coredump_segment_header, ptr %seg_header, i32 0, i32 1
  %2 = ptrtoint ptr %seg_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seg_num, align 4
  %call5 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.5, i32 noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp54.not = icmp ult i32 %sub, 4
  br i1 %cmp54.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div53, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.preheader
  %i.056 = phi i32 [ %inc, %if.end16.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %reg_data.addr.055 = phi ptr [ %incdec.ptr, %if.end16.for.body_crit_edge ], [ %reg_data, %for.body.preheader ]
  %4 = ptrtoint ptr %reg_data.addr.055 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_data.addr.055, align 4
  %call13 = tail call i32 @devlink_fmsg_u32_put(ptr noundef %fmsg, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %reg_data.addr.055, i32 1
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call17 = tail call i32 @devlink_fmsg_obj_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %call21 = tail call i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef %fmsg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @devlink_fmsg_pair_nest_end(ptr noundef %fmsg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call17, %for.end.cleanup_crit_edge ], [ %call21, %if.end20.cleanup_crit_edge ], [ %call13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_pair_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_obj_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_arr_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 163, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 147, i32 10}
!4 = !{ptr @qlge_reporter_ops, !5, !"qlge_reporter_ops", i1 false, i1 false}
!5 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 146, i32 49}
!6 = !{ptr @qlge_reporter_coredump.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 67, i32 4}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 68, i32 4}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 70, i32 4}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 20, i32 40}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/qlge/qlge_devlink.c", i32 23, i32 47}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
