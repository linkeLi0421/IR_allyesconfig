; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_fdb.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_fdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lan966x_fdb_entry = type { %struct.list_head, [6 x i8], i16, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.lan966x_fdb_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.126, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.143, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.126 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.143 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lan966x_order\00", [18 x i8] zeroinitializer }, align 32
@lan966x_handle_fdb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&fdb_work->work)\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 117, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [56 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_fdb.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 227, i32 3 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @lan966x_handle_fdb.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_handle_fdb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_fdb_write_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 22
  %0 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %fdb_entry.018 = load ptr, ptr %fdb_entries, align 4
  %cmp.not19 = icmp eq ptr %fdb_entry.018, %fdb_entries
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %fdb_entry.020 = phi ptr [ %fdb_entry.0, %for.inc.for.body_crit_edge ], [ %fdb_entry.018, %entry.for.body_crit_edge ]
  %vid2 = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020, i32 0, i32 2
  %1 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %vid)
  %cmp4.not = icmp eq i16 %2, %vid
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mac = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020, i32 0, i32 1
  %call = tail call i32 @lan966x_mac_cpu_learn(ptr noundef %lan966x, ptr noundef %mac, i16 noundef zeroext %vid) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %fdb_entry.020 to i32
  call void @__asan_load4_noabort(i32 %3)
  %fdb_entry.0 = load ptr, ptr %fdb_entry.020, align 4
  %cmp.not = icmp eq ptr %fdb_entry.0, %fdb_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_cpu_learn(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_fdb_erase_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 22
  %0 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %fdb_entry.018 = load ptr, ptr %fdb_entries, align 4
  %cmp.not19 = icmp eq ptr %fdb_entry.018, %fdb_entries
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %fdb_entry.020 = phi ptr [ %fdb_entry.0, %for.inc.for.body_crit_edge ], [ %fdb_entry.018, %entry.for.body_crit_edge ]
  %vid2 = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020, i32 0, i32 2
  %1 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %vid)
  %cmp4.not = icmp eq i16 %2, %vid
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mac = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020, i32 0, i32 1
  %call = tail call i32 @lan966x_mac_cpu_forget(ptr noundef %lan966x, ptr noundef %mac, i16 noundef zeroext %vid) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %fdb_entry.020 to i32
  call void @__asan_load4_noabort(i32 %3)
  %fdb_entry.0 = load ptr, ptr %fdb_entry.020, align 4
  %cmp.not = icmp eq ptr %fdb_entry.0, %fdb_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_cpu_forget(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_fdb_init(ptr noundef %lan966x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 22
  %0 = ptrtoint ptr %fdb_entries to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %fdb_entries, ptr %fdb_entries, align 4
  %prev.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 22, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fdb_entries, ptr %prev.i, align 4
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655362, i32 noundef 1) #4
  %fdb_work = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 21
  %2 = ptrtoint ptr %fdb_work to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %fdb_work, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_fdb_deinit(ptr noundef readonly %lan966x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fdb_work = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 21
  %0 = ptrtoint ptr %fdb_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fdb_work, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #4
  %fdb_entries.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 22
  %2 = ptrtoint ptr %fdb_entries.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fdb_entries.i, align 4
  %cmp.not19.i = icmp eq ptr %3, %fdb_entries.i
  br i1 %cmp.not19.i, label %entry.lan966x_fdb_purge_entries.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.lan966x_fdb_purge_entries.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_purge_entries.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %fdb_entry.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %fdb_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %fdb_entry.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fdb_entry.020.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %fdb_entry.020.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %fdb_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fdb_entry.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %fdb_entry.020.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fdb_entry.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fdb_entry.020.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %fdb_entry.020.i) #4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %fdb_entries.i
  br i1 %cmp.not.i, label %list_del.exit.i.lan966x_fdb_purge_entries.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

list_del.exit.i.lan966x_fdb_purge_entries.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_purge_entries.exit

lan966x_fdb_purge_entries.exit:                   ; preds = %list_del.exit.i.lan966x_fdb_purge_entries.exit_crit_edge, %entry.lan966x_fdb_purge_entries.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_handle_fdb(ptr noundef readonly %dev, ptr noundef %orig_dev, i32 noundef %event, ptr noundef readnone %ctx, ptr nocapture noundef readonly %fdb_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lan966x1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %tobool.not = icmp eq ptr %ctx, null
  %cmp.not = icmp eq ptr %add.ptr.i, %ctx
  %or.cond = or i1 %tobool.not, %cmp.not
  %event.off = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  %or.cond57 = and i1 %switch, %or.cond
  br i1 %or.cond57, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call2 = tail call zeroext i1 @lan966x_netdevice_check(ptr noundef %orig_dev) #4
  br i1 %call2, label %land.lhs.true3, label %sw.bb.if.end6_crit_edge

sw.bb.if.end6_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true3:                                   ; preds = %sw.bb
  %added_by_user = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 3
  %2 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %added_by_user, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end6_crit_edge

land.lhs.true3.if.end6_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true3.if.end6_crit_edge, %sw.bb.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2848, i32 noundef 76) #7
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %dev11 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %orig_dev, ptr %dev11, align 8
  %lan966x12 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %lan966x12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %lan966x12, align 4
  %event13 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %event13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %event, ptr %event13, align 8
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #4
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @lan966x_handle_fdb.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry17 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry17, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @lan966x_fdb_event_work, ptr %func, align 4
  %fdb_info19 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %call7.i.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fdb_info19, ptr %fdb_info, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 6) #7
  %addr = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i58, ptr %addr, align 8
  %tobool24.not = icmp eq ptr %call7.i.i58, null
  br i1 %tobool24.not, label %err_addr_alloc, label %if.end26

if.end26:                                         ; preds = %if.end10
  %addr29 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %fdb_info, i32 0, i32 1
  %14 = ptrtoint ptr %addr29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr29, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %call7.i.i58 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i58, align 8
  %add.ptr.i59 = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i59, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i58, i32 4
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i, align 4
  %tobool.not.i = icmp eq ptr %orig_dev, null
  br i1 %tobool.not.i, label %if.end26.dev_hold.exit_crit_edge, label %do.body1.i

if.end26.dev_hold.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end26
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !15
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %orig_dev, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, 1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !16
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !17

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #4, !srcloc !18
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end26.dev_hold.exit_crit_edge
  %fdb_work30 = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 21
  %36 = ptrtoint ptr %fdb_work30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fdb_work30, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

err_addr_alloc:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_addr_alloc, %dev_hold.exit, %if.end6.cleanup_crit_edge, %land.lhs.true3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_addr_alloc ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %land.lhs.true3.cleanup_crit_edge ], [ 0, %dev_hold.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lan966x_netdevice_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lan966x_fdb_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lan966x3 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %lan966x3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lan966x3, align 4
  %call = tail call zeroext i1 @lan966x_netdevice_check(ptr noundef %1) #4
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %event = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 4
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %event, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then.out_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb7
  ]

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb:                                            ; preds = %if.then
  %added_by_user = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %added_by_user, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %sw.bb.out_crit_edge, label %if.end

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %addr = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vid, align 4
  %call6 = tail call i32 @lan966x_mac_add_entry(ptr noundef %3, ptr noundef %add.ptr.i, ptr noundef %9, i16 noundef zeroext %11) #4
  br label %out

sw.bb7:                                           ; preds = %if.then
  %added_by_user8 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %added_by_user8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load9 = load i8, ptr %added_by_user8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load9)
  %tobool11.not = icmp sgt i8 %bf.load9, -1
  br i1 %tobool11.not, label %sw.bb7.out_crit_edge, label %if.end13

sw.bb7.out_crit_edge:                             ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #6
  %addr14 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %addr14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr14, align 4
  %vid15 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %vid15 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid15, align 4
  %call16 = tail call i32 @lan966x_mac_del_entry(ptr noundef %3, ptr noundef %14, i16 noundef zeroext %16) #4
  br label %out

if.else:                                          ; preds = %entry
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %17 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %18, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.else.out_crit_edge, label %if.end19

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end19:                                         ; preds = %if.else
  %event20 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 4
  %19 = ptrtoint ptr %event20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %event20, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %20, label %if.end19.out_crit_edge [
    i32 3, label %sw.bb21
    i32 4, label %sw.bb29
  ]

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

sw.bb21:                                          ; preds = %if.end19
  %fdb_entries.i.i = getelementptr inbounds %struct.lan966x, ptr %3, i32 0, i32 22
  %22 = ptrtoint ptr %fdb_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %fdb_entry.018.i.i = load ptr, ptr %fdb_entries.i.i, align 4
  %cmp.not19.i.i = icmp eq ptr %fdb_entry.018.i.i, %fdb_entries.i.i
  br i1 %cmp.not19.i.i, label %sw.bb21.if.end.i_crit_edge, label %for.body.lr.ph.i.i

sw.bb21.if.end.i_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %sw.bb21
  %vid2.i.i = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %vid2.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid2.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %fdb_entry.020.i.i = phi ptr [ %fdb_entry.018.i.i, %for.body.lr.ph.i.i ], [ %fdb_entry.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %vid.i.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vid.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %24)
  %cmp4.i.i = icmp eq i16 %26, %24
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %mac.i.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %addr.i.i, align 4
  %29 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mac.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  %xor.i.i.i = xor i32 %32, %30
  %add.ptr.i.i.i = getelementptr %struct.lan966x_fdb_entry, ptr %fdb_entry.020.i.i, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i.i, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %28, i32 4
  %35 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %add.ptr1.i.i.i, align 2
  %xor37.i.i.i = xor i16 %36, %34
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %lan966x_fdb_find_entry.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %37 = ptrtoint ptr %fdb_entry.020.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %fdb_entry.0.i.i = load ptr, ptr %fdb_entry.020.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %fdb_entry.0.i.i, %fdb_entries.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lan966x_fdb_find_entry.exit.i:                    ; preds = %land.lhs.true.i.i
  %tobool.not.i = icmp eq ptr %fdb_entry.020.i.i, null
  br i1 %tobool.not.i, label %lan966x_fdb_find_entry.exit.i.if.end.i_crit_edge, label %if.then.i

lan966x_fdb_find_entry.exit.i.if.end.i_crit_edge: ; preds = %lan966x_fdb_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %lan966x_fdb_find_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %references.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.020.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %references.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %references.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %references.i, align 4
  br label %lan966x_fdb_add_entry.exit

if.end.i:                                         ; preds = %lan966x_fdb_find_entry.exit.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %sw.bb21.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 20) #7
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.lan966x_fdb_add_entry.exit_crit_edge, label %if.end4.i

if.end.i.lan966x_fdb_add_entry.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_add_entry.exit

if.end4.i:                                        ; preds = %if.end.i
  %mac.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %call7.i.i.i, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %mac.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr %struct.lan966x_fdb_entry, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %add.ptr1.i.i, align 4
  %vid.i = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vid.i, align 4
  %vid5.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %call7.i.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %vid5.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %vid5.i, align 2
  %references6.i = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %call7.i.i.i, i32 0, i32 3
  %52 = ptrtoint ptr %references6.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %references6.i, align 8
  %prev.i.i = getelementptr inbounds %struct.lan966x, ptr %3, i32 0, i32 22, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %54, ptr noundef %fdb_entries.i.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.lan966x_fdb_add_entry.exit_crit_edge

if.end4.i.lan966x_fdb_add_entry.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_add_entry.exit

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %fdb_entries.i.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i.i, ptr %54, align 4
  br label %lan966x_fdb_add_entry.exit

lan966x_fdb_add_entry.exit:                       ; preds = %if.end.i.i.i, %if.end4.i.lan966x_fdb_add_entry.exit_crit_edge, %if.end.i.lan966x_fdb_add_entry.exit_crit_edge, %if.then.i
  %vid22 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %vid22 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vid22, align 4
  %call23 = tail call zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef %3, i16 noundef zeroext %60) #4
  br i1 %call23, label %if.end25, label %lan966x_fdb_add_entry.exit.out_crit_edge

lan966x_fdb_add_entry.exit.out_crit_edge:         ; preds = %lan966x_fdb_add_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end25:                                         ; preds = %lan966x_fdb_add_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %addr26 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %addr26 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %addr26, align 4
  %63 = ptrtoint ptr %vid22 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vid22, align 4
  %call28 = tail call i32 @lan966x_mac_cpu_learn(ptr noundef %3, ptr noundef %62, i16 noundef zeroext %64) #4
  br label %out

sw.bb29:                                          ; preds = %if.end19
  %fdb_entries.i = getelementptr inbounds %struct.lan966x, ptr %3, i32 0, i32 22
  %65 = ptrtoint ptr %fdb_entries.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fdb_entries.i, align 4
  %cmp.not36.i = icmp eq ptr %66, %fdb_entries.i
  br i1 %cmp.not36.i, label %sw.bb29.lan966x_fdb_del_entry.exit_crit_edge, label %for.body.lr.ph.i

sw.bb29.lan966x_fdb_del_entry.exit_crit_edge:     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_del_entry.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb29
  %vid8.i = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %vid8.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vid8.i, align 4
  %addr.i74 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fdb_entry.037.i = phi ptr [ %66, %for.body.lr.ph.i ], [ %tmp.038.i, %for.inc.i.for.body.i_crit_edge ]
  %69 = ptrtoint ptr %fdb_entry.037.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %tmp.038.i = load ptr, ptr %fdb_entry.037.i, align 4
  %vid.i75 = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.037.i, i32 0, i32 2
  %70 = ptrtoint ptr %vid.i75 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vid.i75, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %71, i16 %68)
  %cmp10.i = icmp eq i16 %71, %68
  br i1 %cmp10.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %mac.i76 = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.037.i, i32 0, i32 1
  %72 = ptrtoint ptr %addr.i74 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %addr.i74, align 4
  %74 = ptrtoint ptr %mac.i76 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mac.i76, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %73, align 4
  %xor.i.i = xor i32 %77, %75
  %add.ptr.i.i77 = getelementptr %struct.lan966x_fdb_entry, ptr %fdb_entry.037.i, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i77 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i77, align 2
  %add.ptr1.i.i78 = getelementptr i8, ptr %73, i32 4
  %80 = ptrtoint ptr %add.ptr1.i.i78 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr1.i.i78, align 2
  %xor37.i.i = xor i16 %81, %79
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then.i81, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i81:                                      ; preds = %land.lhs.true.i
  %references.i79 = getelementptr inbounds %struct.lan966x_fdb_entry, ptr %fdb_entry.037.i, i32 0, i32 3
  %82 = ptrtoint ptr %references.i79 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %references.i79, align 4
  %dec.i = add i32 %83, -1
  store i32 %dec.i, ptr %references.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i80 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i80, label %if.then14.i, label %if.then.i81.lan966x_fdb_del_entry.exit_crit_edge

if.then.i81.lan966x_fdb_del_entry.exit_crit_edge: ; preds = %if.then.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_del_entry.exit

if.then14.i:                                      ; preds = %if.then.i81
  %call.i.i.i82 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fdb_entry.037.i) #4
  br i1 %call.i.i.i82, label %if.end.i.i.i83, label %if.then14.i.list_del.exit.i_crit_edge

if.then14.i.list_del.exit.i_crit_edge:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i83:                                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %fdb_entry.037.i, i32 0, i32 1
  %84 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %prev.i.i.i, align 4
  %86 = ptrtoint ptr %fdb_entry.037.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %fdb_entry.037.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %85, ptr %prev1.i.i.i.i, align 4
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %87, ptr %85, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i83, %if.then14.i.list_del.exit.i_crit_edge
  %90 = ptrtoint ptr %fdb_entry.037.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 256 to ptr), ptr %fdb_entry.037.i, align 4
  %prev.i.i84 = getelementptr inbounds %struct.list_head, ptr %fdb_entry.037.i, i32 0, i32 1
  %91 = ptrtoint ptr %prev.i.i84 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i84, align 4
  tail call void @kfree(ptr noundef %fdb_entry.037.i) #4
  br label %lan966x_fdb_del_entry.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.038.i, %fdb_entries.i
  br i1 %cmp.not.i, label %for.inc.i.lan966x_fdb_del_entry.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.lan966x_fdb_del_entry.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_fdb_del_entry.exit

lan966x_fdb_del_entry.exit:                       ; preds = %for.inc.i.lan966x_fdb_del_entry.exit_crit_edge, %list_del.exit.i, %if.then.i81.lan966x_fdb_del_entry.exit_crit_edge, %sw.bb29.lan966x_fdb_del_entry.exit_crit_edge
  %retval.0.i = phi i1 [ false, %list_del.exit.i ], [ true, %if.then.i81.lan966x_fdb_del_entry.exit_crit_edge ], [ true, %sw.bb29.lan966x_fdb_del_entry.exit_crit_edge ], [ true, %for.inc.i.lan966x_fdb_del_entry.exit_crit_edge ]
  %vid31 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %vid31 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %vid31, align 4
  %call32 = tail call zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef %3, i16 noundef zeroext %93) #4
  %call32.not = xor i1 %call32, true
  %brmerge = or i1 %retval.0.i, %call32.not
  br i1 %brmerge, label %lan966x_fdb_del_entry.exit.out_crit_edge, label %if.then36

lan966x_fdb_del_entry.exit.out_crit_edge:         ; preds = %lan966x_fdb_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then36:                                        ; preds = %lan966x_fdb_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  %addr37 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %addr37 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %addr37, align 4
  %96 = ptrtoint ptr %vid31 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vid31, align 4
  %call39 = tail call i32 @lan966x_mac_cpu_forget(ptr noundef %3, ptr noundef %95, i16 noundef zeroext %97) #4
  br label %out

out:                                              ; preds = %if.then36, %lan966x_fdb_del_entry.exit.out_crit_edge, %if.end25, %lan966x_fdb_add_entry.exit.out_crit_edge, %if.end19.out_crit_edge, %if.else.out_crit_edge, %if.end13, %sw.bb7.out_crit_edge, %if.end, %sw.bb.out_crit_edge, %if.then.out_crit_edge
  %addr44 = getelementptr inbounds %struct.lan966x_fdb_event_work, ptr %work, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %addr44 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr44, align 4
  tail call void @kfree(ptr noundef %99) #4
  tail call void @kfree(ptr noundef %work) #4
  %tobool.not.i85 = icmp eq ptr %1, null
  br i1 %tobool.not.i85, label %out.dev_put.exit_crit_edge, label %do.body1.i

out.dev_put.exit_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_put.exit

do.body1.i:                                       ; preds = %out
  %100 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #4, !srcloc !15
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %101 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pcpu_refcnt.i, align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = tail call i32 @llvm.read_register.i32(metadata !5) #4
  %and.i.i = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 3
  %106 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %107
  %108 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %109, %103
  %110 = inttoptr i32 %add.i to ptr
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %add13.i = add i32 %112, -1
  store i32 %add13.i, ptr %110, align 4
  %113 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #4, !srcloc !16
  %and.i.i.i = and i32 %113, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !17

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @warn_bogus_irq_restore() #4
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #4, !srcloc !18
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %out.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_add_entry(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_del_entry(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.named.register.sp = !{!5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_fdb.c", i32 117, i32 22}
!2 = !{ptr @lan966x_handle_fdb.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_fdb.c", i32 227, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{!"sp"}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 903052, i64 903113}
!16 = !{i64 905784}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 906069}
