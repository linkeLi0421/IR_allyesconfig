; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_mdb.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_mdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.switchdev_obj_port_mdb = type { %struct.switchdev_obj, [6 x i8], i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
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
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }
%struct.lan966x_mdb_entry = type { %struct.list_head, [6 x i8], i16, i16, ptr, i8 }
%struct.lan966x_pgid_entry = type { %struct.list_head, i32, %struct.refcount_struct, i16 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 51]
@___asan_gen_ = private constant [56 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_mdb.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 238, i32 2 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mdb_init(ptr noundef %lan966x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 23
  %0 = ptrtoint ptr %mdb_entries to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %mdb_entries, ptr %mdb_entries, align 4
  %prev.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 23, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdb_entries, ptr %prev.i, align 4
  %pgid_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 24
  %2 = ptrtoint ptr %pgid_entries to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %pgid_entries, ptr %pgid_entries, align 4
  %prev.i2 = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 24, i32 1
  %3 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pgid_entries, ptr %prev.i2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mdb_deinit(ptr noundef readonly %lan966x) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdb_entries.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 23
  %0 = ptrtoint ptr %mdb_entries.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdb_entries.i, align 4
  %cmp.not19.i = icmp eq ptr %1, %mdb_entries.i
  br i1 %cmp.not19.i, label %entry.lan966x_mdb_purge_mdb_entries.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.lan966x_mdb_purge_mdb_entries.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_purge_mdb_entries.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %mdb_entry.020.i = phi ptr [ %tmp.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %mdb_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %mdb_entry.020.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mdb_entry.020.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.020.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %mdb_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdb_entry.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %mdb_entry.020.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %mdb_entry.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.020.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %mdb_entry.020.i) #7
  %cmp.not.i = icmp eq ptr %tmp.0.i, %mdb_entries.i
  br i1 %cmp.not.i, label %list_del.exit.i.lan966x_mdb_purge_mdb_entries.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.lan966x_mdb_purge_mdb_entries.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_purge_mdb_entries.exit

lan966x_mdb_purge_mdb_entries.exit:               ; preds = %list_del.exit.i.lan966x_mdb_purge_mdb_entries.exit_crit_edge, %entry.lan966x_mdb_purge_mdb_entries.exit_crit_edge
  %pgid_entries.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 24
  %11 = ptrtoint ptr %pgid_entries.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pgid_entries.i, align 4
  %cmp.not19.i2 = icmp eq ptr %12, %pgid_entries.i
  br i1 %cmp.not19.i2, label %lan966x_mdb_purge_mdb_entries.exit.lan966x_mdb_purge_pgid_entries.exit_crit_edge, label %lan966x_mdb_purge_mdb_entries.exit.for.body.i5_crit_edge

lan966x_mdb_purge_mdb_entries.exit.for.body.i5_crit_edge: ; preds = %lan966x_mdb_purge_mdb_entries.exit
  br label %for.body.i5

lan966x_mdb_purge_mdb_entries.exit.lan966x_mdb_purge_pgid_entries.exit_crit_edge: ; preds = %lan966x_mdb_purge_mdb_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_purge_pgid_entries.exit

for.body.i5:                                      ; preds = %list_del.exit.i11.for.body.i5_crit_edge, %lan966x_mdb_purge_mdb_entries.exit.for.body.i5_crit_edge
  %pgid_entry.020.i = phi ptr [ %tmp.0.i3, %list_del.exit.i11.for.body.i5_crit_edge ], [ %12, %lan966x_mdb_purge_mdb_entries.exit.for.body.i5_crit_edge ]
  %13 = ptrtoint ptr %pgid_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp.0.i3 = load ptr, ptr %pgid_entry.020.i, align 4
  %call.i.i.i4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pgid_entry.020.i) #7
  br i1 %call.i.i.i4, label %if.end.i.i.i8, label %for.body.i5.list_del.exit.i11_crit_edge

for.body.i5.list_del.exit.i11_crit_edge:          ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i11

if.end.i.i.i8:                                    ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i6 = getelementptr inbounds %struct.list_head, ptr %pgid_entry.020.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i6, align 4
  %16 = ptrtoint ptr %pgid_entry.020.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgid_entry.020.i, align 4
  %prev1.i.i.i.i7 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i7, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit.i11

list_del.exit.i11:                                ; preds = %if.end.i.i.i8, %for.body.i5.list_del.exit.i11_crit_edge
  %20 = ptrtoint ptr %pgid_entry.020.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %pgid_entry.020.i, align 4
  %prev.i.i9 = getelementptr inbounds %struct.list_head, ptr %pgid_entry.020.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i9, align 4
  tail call void @kfree(ptr noundef %pgid_entry.020.i) #7
  %cmp.not.i10 = icmp eq ptr %tmp.0.i3, %pgid_entries.i
  br i1 %cmp.not.i10, label %list_del.exit.i11.lan966x_mdb_purge_pgid_entries.exit_crit_edge, label %list_del.exit.i11.for.body.i5_crit_edge

list_del.exit.i11.for.body.i5_crit_edge:          ; preds = %list_del.exit.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i5

list_del.exit.i11.lan966x_mdb_purge_pgid_entries.exit_crit_edge: ; preds = %list_del.exit.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_purge_pgid_entries.exit

lan966x_mdb_purge_pgid_entries.exit:              ; preds = %list_del.exit.i11.lan966x_mdb_purge_pgid_entries.exit_crit_edge, %lan966x_mdb_purge_mdb_entries.exit.lan966x_mdb_purge_pgid_entries.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_handle_port_mdb_add(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %obj) local_unnamed_addr #1 align 64 {
entry:
  %mac.i13 = alloca [6 x i8], align 4
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 51, label %land.lhs.true15.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.i = icmp eq i8 %4, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %6)
  %cmp9.i = icmp eq i8 %6, 94
  br i1 %cmp9.i, label %land.lhs.true6.i.if.then_crit_edge, label %land.lhs.true6.i.if.end_crit_edge

land.lhs.true6.i.if.end_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.i.if.then_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true15.i:                                ; preds = %entry
  %arrayidx16.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %8)
  %cmp18.i = icmp eq i8 %8, 51
  br i1 %cmp18.i, label %land.lhs.true15.i.if.then_crit_edge, label %land.lhs.true15.i.if.end_crit_edge

land.lhs.true15.i.if.end_crit_edge:               ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true15.i.if.then_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true15.i.if.then_crit_edge, %land.lhs.true6.i.if.then_crit_edge
  %switch88.not = phi i1 [ false, %land.lhs.true6.i.if.then_crit_edge ], [ true, %land.lhs.true15.i.if.then_crit_edge ]
  %retval.0.i.ph = phi i32 [ 2, %land.lhs.true6.i.if.then_crit_edge ], [ 3, %land.lhs.true15.i.if.then_crit_edge ]
  %orig_dev.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %orig_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_dev.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %lan966x1.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lan966x1.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %15 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %16 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %17 = call ptr @memset(ptr %mac.i, i32 255, i32 6)
  %18 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vid.i, align 2
  %mdb_entries.i.i = getelementptr inbounds %struct.lan966x, ptr %14, i32 0, i32 23
  %20 = ptrtoint ptr %mdb_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %mdb_entry.017.i.i = load ptr, ptr %mdb_entries.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %mdb_entry.017.i.i, %mdb_entries.i.i
  br i1 %cmp.not18.i.i, label %if.then.if.then.i_crit_edge, label %for.body.lr.ph.i.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr, align 4
  %add.ptr1.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %mdb_entry.019.i.i = phi ptr [ %mdb_entry.017.i.i, %for.body.lr.ph.i.i ], [ %mdb_entry.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mac2.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %mac2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac2.i.i, align 4
  %xor.i.i.i = xor i32 %26, %22
  %add.ptr.i.i.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %28, %24
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %vid3.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %vid3.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %19)
  %cmp5.i.i = icmp eq i16 %30, %19
  br i1 %cmp5.i.i, label %lan966x_mdb_entry_get.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %31 = ptrtoint ptr %mdb_entry.019.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %mdb_entry.0.i.i = load ptr, ptr %mdb_entry.019.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mdb_entry.0.i.i, %mdb_entries.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lan966x_mdb_entry_get.exit.i:                     ; preds = %land.lhs.true.i.i
  %vid3.i.i.le = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %mdb_entry.019.i.i, null
  br i1 %tobool.not.i, label %lan966x_mdb_entry_get.exit.i.if.then.i_crit_edge, label %if.else.i

lan966x_mdb_entry_get.exit.i.if.then.i_crit_edge: ; preds = %lan966x_mdb_entry_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lan966x_mdb_entry_get.exit.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.if.then5.i_crit_edge, label %if.end.i.i

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.end.i.i:                                       ; preds = %if.then.i
  %mac.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addr, align 4
  %35 = ptrtoint ptr %mac.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mac.i.i, align 8
  %add.ptr.i.i59.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i59.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr.i.i59.i, align 2
  %add.ptr1.i.i60.i = getelementptr %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i, i32 0, i32 1, i32 4
  %38 = ptrtoint ptr %add.ptr1.i.i60.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %add.ptr1.i.i60.i, align 4
  %39 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid.i, align 2
  %vid3.i61.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %vid3.i61.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vid3.i61.i, align 2
  %prev.i.i.i = getelementptr inbounds %struct.lan966x, ptr %14, i32 0, i32 23, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %43, ptr noundef %mdb_entries.i.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.lan966x_mdb_entry_add.exit.i_crit_edge

if.end.i.i.lan966x_mdb_entry_add.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_entry_add.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %mdb_entries.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i.i.i, ptr %43, align 4
  br label %lan966x_mdb_entry_add.exit.i

lan966x_mdb_entry_add.exit.i:                     ; preds = %if.end.i.i.i.i, %if.end.i.i.lan966x_mdb_entry_add.exit.i_crit_edge
  %cmp.i.i = icmp ugt ptr %call7.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lan966x_mdb_entry_add.exit.i.if.then5.i_crit_edge, label %lan966x_mdb_entry_add.exit.i.if.end11.i_crit_edge

lan966x_mdb_entry_add.exit.i.if.end11.i_crit_edge: ; preds = %lan966x_mdb_entry_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

lan966x_mdb_entry_add.exit.i.if.then5.i_crit_edge: ; preds = %lan966x_mdb_entry_add.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then5.i:                                       ; preds = %lan966x_mdb_entry_add.exit.i.if.then5.i_crit_edge, %if.then.i.if.then5.i_crit_edge
  %retval.0.i6386.i = phi ptr [ %call7.i.i.i.i, %lan966x_mdb_entry_add.exit.i.if.then5.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i.if.then5.i_crit_edge ]
  %48 = ptrtoint ptr %retval.0.i6386.i to i32
  br label %lan966x_mdb_ip_add.exit

if.else.i:                                        ; preds = %lan966x_mdb_entry_get.exit.i
  %add.ptr.i.i.i.le = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %26, ptr %mac.i, align 4
  %50 = ptrtoint ptr %add.ptr.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %add.ptr.i.i.i.le, align 2
  %52 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %16, align 4
  br i1 %switch88.not, label %if.then10.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %mac.i, align 4
  %ports.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ports.i.i, align 4
  %56 = lshr i16 %55, 8
  %conv2.i.i = trunc i16 %56 to i8
  %57 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv2.i.i, ptr %15, align 1
  br label %if.end21.sink.split.i.i

if.then10.i.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %ports11.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 3
  %58 = ptrtoint ptr %ports11.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %ports11.i.i, align 4
  %60 = lshr i16 %59, 8
  %conv14.i.i = trunc i16 %60 to i8
  %61 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv14.i.i, ptr %mac.i, align 4
  br label %if.end21.sink.split.i.i

if.end21.sink.split.i.i:                          ; preds = %if.then10.i.i, %if.then.i.i
  %ports11.sink.i.i = phi ptr [ %ports11.i.i, %if.then10.i.i ], [ %ports.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ 1, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %62 = ptrtoint ptr %ports11.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ports11.sink.i.i, align 4
  %conv19.i.i = trunc i16 %63 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %mac.i, i32 %.sink.i.i
  %64 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %65 = ptrtoint ptr %vid3.i.i.le to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vid3.i.i.le, align 2
  %conv.i = zext i16 %66 to i32
  %call10.i = call i32 @lan966x_mac_forget(ptr noundef %14, ptr noundef nonnull %mac.i, i32 noundef %conv.i, i32 noundef %retval.0.i.ph) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end21.sink.split.i.i, %lan966x_mdb_entry_add.exit.i.if.end11.i_crit_edge
  %mdb_entry.0.i = phi ptr [ %mdb_entry.019.i.i, %if.end21.sink.split.i.i ], [ %call7.i.i.i.i, %lan966x_mdb_entry_add.exit.i.if.end11.i_crit_edge ]
  br i1 %tobool.i.not.i, label %if.else15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %cpu_copy14.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 5
  %67 = ptrtoint ptr %cpu_copy14.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %cpu_copy14.i, align 4
  %inc.i = add i8 %68, 1
  store i8 %inc.i, ptr %cpu_copy14.i, align 4
  br label %if.end19.i

if.else15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %69 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %chip_port.i, align 4
  %conv16.i = zext i8 %70 to i32
  %shl.i = shl nuw i32 1, %conv16.i
  %ports.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 3
  %71 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ports.i, align 4
  %73 = trunc i32 %shl.i to i16
  %conv18.i = or i16 %72, %73
  store i16 %conv18.i, ptr %ports.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else15.i, %if.then13.i
  %vid20.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 2
  %74 = ptrtoint ptr %vid20.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %vid20.i, align 2
  %call21.i = call zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef %14, i16 noundef zeroext %75) #7
  br i1 %call21.i, label %land.lhs.true.i11, label %if.end19.i.if.end27.i_crit_edge

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

land.lhs.true.i11:                                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %cpu_copy23.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 5
  %76 = ptrtoint ptr %cpu_copy23.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cpu_copy23.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool25.not.i = icmp ne i8 %77, 0
  br label %if.end27.i

if.end27.i:                                       ; preds = %land.lhs.true.i11, %if.end19.i.if.end27.i_crit_edge
  %cpu_copy.0.off0.i = phi i1 [ false, %if.end19.i.if.end27.i_crit_edge ], [ %tobool25.not.i, %land.lhs.true.i11 ]
  %mac1.i66.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 1
  %78 = ptrtoint ptr %mac1.i66.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mac1.i66.i, align 4
  %80 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %mac.i, align 4
  %add.ptr.i.i67.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 1, i32 4
  %81 = ptrtoint ptr %add.ptr.i.i67.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %add.ptr.i.i67.i, align 2
  %83 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %16, align 4
  br i1 %switch88.not, label %if.then10.i75.i, label %if.then.i72.i

if.then.i72.i:                                    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %mac.i, align 4
  %ports.i69.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 3
  %85 = ptrtoint ptr %ports.i69.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %ports.i69.i, align 4
  %87 = lshr i16 %86, 8
  %conv2.i70.i = trunc i16 %87 to i8
  %88 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv2.i70.i, ptr %15, align 1
  br label %if.end21.sink.split.i80.i

if.then10.i75.i:                                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %ports11.i73.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i, i32 0, i32 3
  %89 = ptrtoint ptr %ports11.i73.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %ports11.i73.i, align 4
  %91 = lshr i16 %90, 8
  %conv14.i74.i = trunc i16 %91 to i8
  %92 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv14.i74.i, ptr %mac.i, align 4
  br label %if.end21.sink.split.i80.i

if.end21.sink.split.i80.i:                        ; preds = %if.then10.i75.i, %if.then.i72.i
  %ports11.sink.i76.i = phi ptr [ %ports11.i73.i, %if.then10.i75.i ], [ %ports.i69.i, %if.then.i72.i ]
  %.sink.i77.i = phi i32 [ 1, %if.then10.i75.i ], [ 2, %if.then.i72.i ]
  %93 = ptrtoint ptr %ports11.sink.i76.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %ports11.sink.i76.i, align 4
  %conv19.i78.i = trunc i16 %94 to i8
  %arrayidx20.i79.i = getelementptr i8, ptr %mac.i, i32 %.sink.i77.i
  %95 = ptrtoint ptr %arrayidx20.i79.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv19.i78.i, ptr %arrayidx20.i79.i, align 1
  %96 = ptrtoint ptr %vid20.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %vid20.i, align 2
  %conv32.i = zext i16 %97 to i32
  %call33.i = call i32 @lan966x_mac_ip_learn(ptr noundef %14, i1 noundef zeroext %cpu_copy.0.off0.i, ptr noundef nonnull %mac.i, i32 noundef %conv32.i, i32 noundef %retval.0.i.ph) #7
  br label %lan966x_mdb_ip_add.exit

lan966x_mdb_ip_add.exit:                          ; preds = %if.end21.sink.split.i80.i, %if.then5.i
  %retval.0.i12 = phi i32 [ %call33.i, %if.end21.sink.split.i80.i ], [ %48, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.i.if.end_crit_edge, %land.lhs.true6.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %orig_dev.i14 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %98 = ptrtoint ptr %orig_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %orig_dev.i14, align 4
  %priv_flags.i.i15 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 15
  %100 = ptrtoint ptr %priv_flags.i.i15 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %priv_flags.i.i15, align 16
  %and.i.i16 = and i64 %101, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i16)
  %tobool.i.not.i17 = icmp eq i64 %and.i.i16, 0
  %lan966x1.i18 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %102 = ptrtoint ptr %lan966x1.i18 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %lan966x1.i18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i13) #7
  %104 = getelementptr inbounds [6 x i8], ptr %mac.i13, i32 0, i32 4
  %vid.i20 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %105 = call ptr @memset(ptr %mac.i13, i32 255, i32 6)
  %106 = ptrtoint ptr %vid.i20 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vid.i20, align 2
  %mdb_entries.i.i21 = getelementptr inbounds %struct.lan966x, ptr %103, i32 0, i32 23
  %108 = ptrtoint ptr %mdb_entries.i.i21 to i32
  call void @__asan_load4_noabort(i32 %108)
  %mdb_entry.017.i.i22 = load ptr, ptr %mdb_entries.i.i21, align 4
  %cmp.not18.i.i23 = icmp eq ptr %mdb_entry.017.i.i22, %mdb_entries.i.i21
  br i1 %cmp.not18.i.i23, label %if.end.if.then.i47_crit_edge, label %for.body.lr.ph.i.i25

if.end.if.then.i47_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i47

for.body.lr.ph.i.i25:                             ; preds = %if.end
  %109 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %addr, align 4
  %add.ptr1.i.i.i24 = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %111 = ptrtoint ptr %add.ptr1.i.i.i24 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr1.i.i.i24, align 2
  br label %for.body.i.i34

for.body.i.i34:                                   ; preds = %for.inc.i.i40.for.body.i.i34_crit_edge, %for.body.lr.ph.i.i25
  %mdb_entry.019.i.i26 = phi ptr [ %mdb_entry.017.i.i22, %for.body.lr.ph.i.i25 ], [ %mdb_entry.0.i.i38, %for.inc.i.i40.for.body.i.i34_crit_edge ]
  %mac2.i.i27 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %113 = ptrtoint ptr %mac2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mac2.i.i27, align 4
  %xor.i.i.i28 = xor i32 %114, %110
  %add.ptr.i.i.i29 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1, i32 4
  %115 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr.i.i.i29, align 2
  %xor37.i.i.i30 = xor i16 %116, %112
  %xor3.i.i.i31 = zext i16 %xor37.i.i.i30 to i32
  %or.i.i.i32 = or i32 %xor.i.i.i28, %xor3.i.i.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i32)
  %cmp.i.i.i33 = icmp eq i32 %or.i.i.i32, 0
  br i1 %cmp.i.i.i33, label %land.lhs.true.i.i37, label %for.body.i.i34.for.inc.i.i40_crit_edge

for.body.i.i34.for.inc.i.i40_crit_edge:           ; preds = %for.body.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i40

land.lhs.true.i.i37:                              ; preds = %for.body.i.i34
  %vid3.i.i35 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 2
  %117 = ptrtoint ptr %vid3.i.i35 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %vid3.i.i35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %118, i16 %107)
  %cmp5.i.i36 = icmp eq i16 %118, %107
  br i1 %cmp5.i.i36, label %lan966x_mdb_entry_get.exit.i44, label %land.lhs.true.i.i37.for.inc.i.i40_crit_edge

land.lhs.true.i.i37.for.inc.i.i40_crit_edge:      ; preds = %land.lhs.true.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i40

for.inc.i.i40:                                    ; preds = %land.lhs.true.i.i37.for.inc.i.i40_crit_edge, %for.body.i.i34.for.inc.i.i40_crit_edge
  %119 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_load4_noabort(i32 %119)
  %mdb_entry.0.i.i38 = load ptr, ptr %mdb_entry.019.i.i26, align 4
  %cmp.not.i.i39 = icmp eq ptr %mdb_entry.0.i.i38, %mdb_entries.i.i21
  br i1 %cmp.not.i.i39, label %for.inc.i.i40.if.then.i47_crit_edge, label %for.inc.i.i40.for.body.i.i34_crit_edge

for.inc.i.i40.for.body.i.i34_crit_edge:           ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i34

for.inc.i.i40.if.then.i47_crit_edge:              ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i47

lan966x_mdb_entry_get.exit.i44:                   ; preds = %land.lhs.true.i.i37
  %add.ptr.i.i.i29.le = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1, i32 4
  %vid3.i.i35.le = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 2
  %tobool.not.i43 = icmp eq ptr %mdb_entry.019.i.i26, null
  br i1 %tobool.not.i43, label %lan966x_mdb_entry_get.exit.i44.if.then.i47_crit_edge, label %if.else.i57

lan966x_mdb_entry_get.exit.i44.if.then.i47_crit_edge: ; preds = %lan966x_mdb_entry_get.exit.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i47

if.then.i47:                                      ; preds = %lan966x_mdb_entry_get.exit.i44.if.then.i47_crit_edge, %for.inc.i.i40.if.then.i47_crit_edge, %if.end.if.then.i47_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3520, i32 noundef 28) #10
  %tobool.not.i.i46 = icmp eq ptr %call7.i.i.i.i45, null
  br i1 %tobool.not.i.i46, label %if.then.i47.if.then5.i56_crit_edge, label %if.end.i.i51

if.then.i47.if.then5.i56_crit_edge:               ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i56

if.end.i.i51:                                     ; preds = %if.then.i47
  %mac.i.i48 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i45, i32 0, i32 1
  %121 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %addr, align 4
  %123 = ptrtoint ptr %mac.i.i48 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %mac.i.i48, align 8
  %add.ptr.i.i109.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %124 = ptrtoint ptr %add.ptr.i.i109.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr.i.i109.i, align 2
  %add.ptr1.i.i110.i = getelementptr %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i45, i32 0, i32 1, i32 4
  %126 = ptrtoint ptr %add.ptr1.i.i110.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %add.ptr1.i.i110.i, align 4
  %127 = ptrtoint ptr %vid.i20 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %vid.i20, align 2
  %vid3.i111.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %call7.i.i.i.i45, i32 0, i32 2
  %129 = ptrtoint ptr %vid3.i111.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %vid3.i111.i, align 2
  %prev.i.i.i49 = getelementptr inbounds %struct.lan966x, ptr %103, i32 0, i32 23, i32 1
  %130 = ptrtoint ptr %prev.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i.i.i49, align 4
  %call.i.i.i.i50 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i45, ptr noundef %131, ptr noundef %mdb_entries.i.i21) #7
  br i1 %call.i.i.i.i50, label %if.end.i.i.i.i53, label %if.end.i.i51.lan966x_mdb_entry_add.exit.i55_crit_edge

if.end.i.i51.lan966x_mdb_entry_add.exit.i55_crit_edge: ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_entry_add.exit.i55

if.end.i.i.i.i53:                                 ; preds = %if.end.i.i51
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %prev.i.i.i49 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call7.i.i.i.i45, ptr %prev.i.i.i49, align 4
  %133 = ptrtoint ptr %call7.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %mdb_entries.i.i21, ptr %call7.i.i.i.i45, align 8
  %prev3.i.i.i.i52 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i45, i32 0, i32 1
  %134 = ptrtoint ptr %prev3.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i.i.i52, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %call7.i.i.i.i45, ptr %131, align 4
  br label %lan966x_mdb_entry_add.exit.i55

lan966x_mdb_entry_add.exit.i55:                   ; preds = %if.end.i.i.i.i53, %if.end.i.i51.lan966x_mdb_entry_add.exit.i55_crit_edge
  %cmp.i.i54 = icmp ugt ptr %call7.i.i.i.i45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i54, label %lan966x_mdb_entry_add.exit.i55.if.then5.i56_crit_edge, label %lan966x_mdb_entry_add.exit.i55.if.end11.i73_crit_edge

lan966x_mdb_entry_add.exit.i55.if.end11.i73_crit_edge: ; preds = %lan966x_mdb_entry_add.exit.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i73

lan966x_mdb_entry_add.exit.i55.if.then5.i56_crit_edge: ; preds = %lan966x_mdb_entry_add.exit.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i56

if.then5.i56:                                     ; preds = %lan966x_mdb_entry_add.exit.i55.if.then5.i56_crit_edge, %if.then.i47.if.then5.i56_crit_edge
  %retval.0.i113127.i = phi ptr [ %call7.i.i.i.i45, %lan966x_mdb_entry_add.exit.i55.if.then5.i56_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.i47.if.then5.i56_crit_edge ]
  %136 = ptrtoint ptr %retval.0.i113127.i to i32
  br label %lan966x_mdb_l2_add.exit

if.else.i57:                                      ; preds = %lan966x_mdb_entry_get.exit.i44
  %pgid.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 4
  %137 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %pgid.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %138, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !11
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %139 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !12
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %139, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i115.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i71_crit_edge, label %if.then10.i.i.i.i.i, !prof !13

if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i71_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_encode_mac.exit.i71

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %lan966x_mdb_encode_mac.exit.i71

if.end.i115.i:                                    ; preds = %if.else.i57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call.i.i.i114.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %138) #7
  br i1 %call.i.i.i114.i, label %if.end.i.i.i116.i, label %if.end.i115.i.list_del.exit.i.i_crit_edge

if.end.i115.i.list_del.exit.i.i_crit_edge:        ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i116.i:                                ; preds = %if.end.i115.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %140 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %prev.i.i.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %138, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %141, ptr %prev1.i.i.i.i.i, align 4
  %145 = ptrtoint ptr %141 to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %143, ptr %141, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i116.i, %if.end.i115.i.list_del.exit.i.i_crit_edge
  %146 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr inttoptr (i32 256 to ptr), ptr %138, align 4
  %prev.i.i117.i = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  %147 = ptrtoint ptr %prev.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i117.i, align 4
  tail call void @kfree(ptr noundef %138) #7
  br label %lan966x_mdb_encode_mac.exit.i71

lan966x_mdb_encode_mac.exit.i71:                  ; preds = %list_del.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i71_crit_edge
  %148 = ptrtoint ptr %mac2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mac2.i.i27, align 4
  %150 = ptrtoint ptr %mac.i13 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %mac.i13, align 4
  %151 = ptrtoint ptr %add.ptr.i.i.i29.le to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %add.ptr.i.i.i29.le, align 2
  %153 = ptrtoint ptr %104 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 %152, ptr %104, align 4
  %154 = ptrtoint ptr %vid3.i.i35.le to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %vid3.i.i35.le, align 2
  %conv.i69 = zext i16 %155 to i32
  %call10.i70 = call i32 @lan966x_mac_forget(ptr noundef %103, ptr noundef nonnull %mac.i13, i32 noundef %conv.i69, i32 noundef 1) #7
  br label %if.end11.i73

if.end11.i73:                                     ; preds = %lan966x_mdb_encode_mac.exit.i71, %lan966x_mdb_entry_add.exit.i55.if.end11.i73_crit_edge
  %mdb_entry.0.i72 = phi ptr [ %mdb_entry.019.i.i26, %lan966x_mdb_encode_mac.exit.i71 ], [ %call7.i.i.i.i45, %lan966x_mdb_entry_add.exit.i55.if.end11.i73_crit_edge ]
  br i1 %tobool.i.not.i17, label %if.else16.i, label %if.then13.i76

if.then13.i76:                                    ; preds = %if.end11.i73
  call void @__sanitizer_cov_trace_pc() #9
  %ports.i74 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 3
  %156 = ptrtoint ptr %ports.i74 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %ports.i74, align 4
  %158 = or i16 %157, 256
  store i16 %158, ptr %ports.i74, align 4
  %cpu_copy.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 5
  %159 = ptrtoint ptr %cpu_copy.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %cpu_copy.i, align 4
  %inc.i75 = add i8 %160, 1
  store i8 %inc.i75, ptr %cpu_copy.i, align 4
  br label %if.end22.i

if.else16.i:                                      ; preds = %if.end11.i73
  call void @__sanitizer_cov_trace_pc() #9
  %chip_port.i77 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %161 = ptrtoint ptr %chip_port.i77 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %chip_port.i77, align 4
  %conv17.i = zext i8 %162 to i32
  %shl.i78 = shl nuw i32 1, %conv17.i
  %ports18.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 3
  %163 = ptrtoint ptr %ports18.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %ports18.i, align 4
  %165 = trunc i32 %shl.i78 to i16
  %conv21.i = or i16 %164, %165
  store i16 %conv21.i, ptr %ports18.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else16.i, %if.then13.i76
  %call23.i = call fastcc ptr @lan966x_pgid_entry_get(ptr noundef %103, ptr noundef nonnull %mdb_entry.0.i72) #7
  %cmp.i120.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120.i, label %if.then25.i, label %if.end27.i79

if.then25.i:                                      ; preds = %if.end22.i
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mdb_entry.0.i72) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.i.list_del.exit.i_crit_edge

if.then25.i.list_del.exit.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i121.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.0.i72, i32 0, i32 1
  %166 = ptrtoint ptr %prev.i.i121.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i.i121.i, align 4
  %168 = ptrtoint ptr %mdb_entry.0.i72 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mdb_entry.0.i72, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev1.i.i.i.i, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %169, ptr %167, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then25.i.list_del.exit.i_crit_edge
  %172 = ptrtoint ptr %mdb_entry.0.i72 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr inttoptr (i32 256 to ptr), ptr %mdb_entry.0.i72, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.0.i72, i32 0, i32 1
  %173 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %mdb_entry.0.i72) #7
  %174 = ptrtoint ptr %call23.i to i32
  br label %lan966x_mdb_l2_add.exit

if.end27.i79:                                     ; preds = %if.end22.i
  %pgid28.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 4
  %175 = ptrtoint ptr %pgid28.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call23.i, ptr %pgid28.i, align 4
  %vid29.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 2
  %176 = ptrtoint ptr %vid29.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %vid29.i, align 2
  %call30.i = call zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef %103, i16 noundef zeroext %177) #7
  br i1 %call30.i, label %if.end27.i79.do.end57.i_crit_edge, label %land.lhs.true.i80

if.end27.i79.do.end57.i_crit_edge:                ; preds = %if.end27.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57.i

land.lhs.true.i80:                                ; preds = %if.end27.i79
  %cpu_copy31.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 5
  %178 = ptrtoint ptr %cpu_copy31.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %cpu_copy31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool33.not.i = icmp eq i8 %179, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i80.do.end57.i_crit_edge, label %if.then34.i

land.lhs.true.i80.do.end57.i_crit_edge:           ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57.i

if.then34.i:                                      ; preds = %land.lhs.true.i80
  call void @__sanitizer_cov_trace_pc() #9
  %ports35.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 3
  %180 = ptrtoint ptr %ports35.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %ports35.i, align 4
  %182 = and i16 %181, 256
  store i16 %182, ptr %ports35.i, align 4
  br label %do.end57.i

do.end57.i:                                       ; preds = %if.then34.i, %land.lhs.true.i80.do.end57.i_crit_edge, %if.end27.i79.do.end57.i_crit_edge
  %ports43.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 3
  %183 = ptrtoint ptr %ports43.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %ports43.i, align 4
  %185 = and i16 %184, 511
  %and61.i = zext i16 %185 to i32
  %index.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call23.i, i32 0, i32 1
  %186 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %187)
  %cmp20.i.i.i = icmp sgt i32 %187, 88
  br i1 %cmp20.i.i.i, label %do.end36.i.i.i, label %do.end57.i.lan_addr.exit.i.i_crit_edge, !prof !15

do.end57.i.lan_addr.exit.i.i_crit_edge:           ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %do.end57.i.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %103, i32 0, i32 3, i32 3
  %188 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i122.i = getelementptr i8, ptr %189, i32 27648
  %mul.i.i.i = shl i32 %187, 3
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i122.i, i32 %mul.i.i.i
  %190 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #7, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @arm_heavy_mb() #7
  br i1 %cmp20.i.i.i, label %do.end36.i2.i.i, label %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge, !prof !15

lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge:       ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_rmw.exit.i

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge
  %191 = and i32 %190, 16711679
  %192 = call i32 @llvm.bswap.i32(i32 %191) #7
  %or.i.i = or i32 %192, %and61.i
  %193 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %194 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %195, i32 27648
  %add.ptr81.i6.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i, i32 %193) #7, !srcloc !19
  %196 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %index.i, align 4
  %mac63.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.0.i72, i32 0, i32 1
  %198 = ptrtoint ptr %vid29.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %vid29.i, align 2
  %conv66.i = zext i16 %199 to i32
  %call67.i = call i32 @lan966x_mac_learn(ptr noundef %103, i32 noundef %197, ptr noundef %mac63.i, i32 noundef %conv66.i, i32 noundef 1) #7
  br label %lan966x_mdb_l2_add.exit

lan966x_mdb_l2_add.exit:                          ; preds = %lan_rmw.exit.i, %list_del.exit.i, %if.then5.i56
  %retval.0.i81 = phi i32 [ %174, %list_del.exit.i ], [ %call67.i, %lan_rmw.exit.i ], [ %136, %if.then5.i56 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i13) #7
  br label %cleanup

cleanup:                                          ; preds = %lan966x_mdb_l2_add.exit, %lan966x_mdb_ip_add.exit
  %retval.0 = phi i32 [ %retval.0.i12, %lan966x_mdb_ip_add.exit ], [ %retval.0.i81, %lan966x_mdb_l2_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_handle_port_mdb_del(ptr nocapture noundef readonly %port, ptr nocapture noundef readonly %obj) local_unnamed_addr #1 align 64 {
entry:
  %mac.i13 = alloca [6 x i8], align 4
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 51, label %land.lhs.true15.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx2.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4.i = icmp eq i8 %4, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %6)
  %cmp9.i = icmp eq i8 %6, 94
  br i1 %cmp9.i, label %land.lhs.true6.i.if.then_crit_edge, label %land.lhs.true6.i.if.end_crit_edge

land.lhs.true6.i.if.end_crit_edge:                ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true6.i.if.then_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true15.i:                                ; preds = %entry
  %arrayidx16.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %8)
  %cmp18.i = icmp eq i8 %8, 51
  br i1 %cmp18.i, label %land.lhs.true15.i.if.then_crit_edge, label %land.lhs.true15.i.if.end_crit_edge

land.lhs.true15.i.if.end_crit_edge:               ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true15.i.if.then_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true15.i.if.then_crit_edge, %land.lhs.true6.i.if.then_crit_edge
  %switch.not = phi i1 [ false, %land.lhs.true6.i.if.then_crit_edge ], [ true, %land.lhs.true15.i.if.then_crit_edge ]
  %retval.0.i.ph = phi i32 [ 2, %land.lhs.true6.i.if.then_crit_edge ], [ 3, %land.lhs.true15.i.if.then_crit_edge ]
  %orig_dev.i = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %9 = ptrtoint ptr %orig_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %orig_dev.i, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %12, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %lan966x1.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %13 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lan966x1.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %15 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %16 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %vid.i = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %17 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vid.i, align 2
  %mdb_entries.i.i = getelementptr inbounds %struct.lan966x, ptr %14, i32 0, i32 23
  %19 = ptrtoint ptr %mdb_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mdb_entry.017.i.i = load ptr, ptr %mdb_entries.i.i, align 4
  %cmp.not18.i.i = icmp eq ptr %mdb_entry.017.i.i, %mdb_entries.i.i
  br i1 %cmp.not18.i.i, label %if.then.lan966x_mdb_ip_del.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.lan966x_mdb_ip_del.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_ip_del.exit

for.body.lr.ph.i.i:                               ; preds = %if.then
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr, align 4
  %add.ptr1.i.i.i = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr1.i.i.i, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %mdb_entry.019.i.i = phi ptr [ %mdb_entry.017.i.i, %for.body.lr.ph.i.i ], [ %mdb_entry.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %mac2.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %mac2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac2.i.i, align 4
  %xor.i.i.i = xor i32 %25, %21
  %add.ptr.i.i.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i.i, align 2
  %xor37.i.i.i = xor i16 %27, %23
  %xor3.i.i.i = zext i16 %xor37.i.i.i to i32
  %or.i.i.i = or i32 %xor.i.i.i, %xor3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %vid3.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %vid3.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid3.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %18)
  %cmp5.i.i = icmp eq i16 %29, %18
  br i1 %cmp5.i.i, label %lan966x_mdb_entry_get.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %30 = ptrtoint ptr %mdb_entry.019.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %mdb_entry.0.i.i = load ptr, ptr %mdb_entry.019.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %mdb_entry.0.i.i, %mdb_entries.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.lan966x_mdb_ip_del.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.lan966x_mdb_ip_del.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_ip_del.exit

lan966x_mdb_entry_get.exit.i:                     ; preds = %land.lhs.true.i.i
  %add.ptr.i.i.i.le = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 1, i32 4
  %vid3.i.i.le = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %mdb_entry.019.i.i, null
  br i1 %tobool.not.i, label %lan966x_mdb_entry_get.exit.i.lan966x_mdb_ip_del.exit_crit_edge, label %if.end.i

lan966x_mdb_entry_get.exit.i.lan966x_mdb_ip_del.exit_crit_edge: ; preds = %lan966x_mdb_entry_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_ip_del.exit

if.end.i:                                         ; preds = %lan966x_mdb_entry_get.exit.i
  %ports3.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ports3.i, align 4
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  %cpu_copy.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %cpu_copy.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cpu_copy.i, align 4
  %dec.i = add i8 %34, -1
  store i8 %dec.i, ptr %cpu_copy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i)
  %tobool7.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then5.i.lan966x_mdb_ip_del.exit_crit_edge

if.then5.i.lan966x_mdb_ip_del.exit_crit_edge:     ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_ip_del.exit

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %35 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %36 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %37 = trunc i32 %shl.i to i16
  %38 = xor i16 %37, -1
  %conv11.i = and i16 %32, %38
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then5.i.if.end12.i_crit_edge
  %ports.0.i = phi i16 [ %32, %if.then5.i.if.end12.i_crit_edge ], [ %conv11.i, %if.else.i ]
  %39 = ptrtoint ptr %mac2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mac2.i.i, align 4
  %41 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %mac.i, align 4
  %42 = ptrtoint ptr %add.ptr.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %add.ptr.i.i.i.le, align 2
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %16, align 4
  br i1 %switch.not, label %if.then10.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %mac.i, align 4
  %46 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ports3.i, align 4
  %48 = lshr i16 %47, 8
  %conv2.i.i = trunc i16 %48 to i8
  %49 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv2.i.i, ptr %15, align 1
  br label %if.end21.sink.split.i.i

if.then10.i.i:                                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ports3.i, align 4
  %52 = lshr i16 %51, 8
  %conv14.i.i = trunc i16 %52 to i8
  %53 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv14.i.i, ptr %mac.i, align 4
  br label %if.end21.sink.split.i.i

if.end21.sink.split.i.i:                          ; preds = %if.then10.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 1, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %54 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %ports3.i, align 4
  %conv19.i.i = trunc i16 %55 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %mac.i, i32 %.sink.i.i
  %56 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %57 = ptrtoint ptr %vid3.i.i.le to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vid3.i.i.le, align 2
  %conv16.i = zext i16 %58 to i32
  %call17.i = call i32 @lan966x_mac_forget(ptr noundef %14, ptr noundef nonnull %mac.i, i32 noundef %conv16.i, i32 noundef %retval.0.i.ph) #7
  %59 = ptrtoint ptr %ports3.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %ports.0.i, ptr %ports3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ports.0.i)
  %tobool20.not.i = icmp eq i16 %ports.0.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i11, label %if.end21.sink.split.i.i.if.end24.i_crit_edge

if.end21.sink.split.i.i.if.end24.i_crit_edge:     ; preds = %if.end21.sink.split.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

land.lhs.true.i11:                                ; preds = %if.end21.sink.split.i.i
  %cpu_copy21.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %cpu_copy21.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %cpu_copy21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool22.not.i = icmp eq i8 %61, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %land.lhs.true.i11.if.end24.i_crit_edge

land.lhs.true.i11.if.end24.i_crit_edge:           ; preds = %land.lhs.true.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then23.i:                                      ; preds = %land.lhs.true.i11
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mdb_entry.019.i.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.i.list_del.exit.i_crit_edge

if.then23.i.list_del.exit.i_crit_edge:            ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %mdb_entry.019.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mdb_entry.019.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then23.i.list_del.exit.i_crit_edge
  %68 = ptrtoint ptr %mdb_entry.019.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %mdb_entry.019.i.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %mdb_entry.019.i.i) #7
  br label %lan966x_mdb_ip_del.exit

if.end24.i:                                       ; preds = %land.lhs.true.i11.if.end24.i_crit_edge, %if.end21.sink.split.i.i.if.end24.i_crit_edge
  %70 = ptrtoint ptr %mac2.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mac2.i.i, align 4
  %72 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %mac.i, align 4
  %73 = ptrtoint ptr %add.ptr.i.i.i.le to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i.i.i.le, align 2
  %75 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %16, align 4
  br i1 %switch.not, label %if.then10.i69.i, label %if.then.i66.i

if.then.i66.i:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %mac.i, align 4
  %77 = lshr i16 %ports.0.i, 8
  %conv2.i64.i = trunc i16 %77 to i8
  %78 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv2.i64.i, ptr %15, align 1
  br label %if.end21.sink.split.i74.i

if.then10.i69.i:                                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = lshr i16 %ports.0.i, 8
  %conv14.i68.i = trunc i16 %79 to i8
  %80 = ptrtoint ptr %mac.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv14.i68.i, ptr %mac.i, align 4
  br label %if.end21.sink.split.i74.i

if.end21.sink.split.i74.i:                        ; preds = %if.then10.i69.i, %if.then.i66.i
  %.sink.i71.i = phi i32 [ 1, %if.then10.i69.i ], [ 2, %if.then.i66.i ]
  %81 = ptrtoint ptr %ports3.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ports3.i, align 4
  %conv19.i72.i = trunc i16 %82 to i8
  %arrayidx20.i73.i = getelementptr i8, ptr %mac.i, i32 %.sink.i71.i
  %83 = ptrtoint ptr %arrayidx20.i73.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv19.i72.i, ptr %arrayidx20.i73.i, align 1
  %cpu_copy26.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i, i32 0, i32 5
  %84 = ptrtoint ptr %cpu_copy26.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %cpu_copy26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool27.i = icmp ne i8 %85, 0
  %86 = ptrtoint ptr %vid3.i.i.le to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vid3.i.i.le, align 2
  %conv30.i = zext i16 %87 to i32
  %call31.i = call i32 @lan966x_mac_ip_learn(ptr noundef %14, i1 noundef zeroext %tobool27.i, ptr noundef nonnull %mac.i, i32 noundef %conv30.i, i32 noundef %retval.0.i.ph) #7
  br label %lan966x_mdb_ip_del.exit

lan966x_mdb_ip_del.exit:                          ; preds = %if.end21.sink.split.i74.i, %list_del.exit.i, %if.then5.i.lan966x_mdb_ip_del.exit_crit_edge, %lan966x_mdb_entry_get.exit.i.lan966x_mdb_ip_del.exit_crit_edge, %for.inc.i.i.lan966x_mdb_ip_del.exit_crit_edge, %if.then.lan966x_mdb_ip_del.exit_crit_edge
  %retval.0.i12 = phi i32 [ %call31.i, %if.end21.sink.split.i74.i ], [ 0, %list_del.exit.i ], [ -2, %lan966x_mdb_entry_get.exit.i.lan966x_mdb_ip_del.exit_crit_edge ], [ 0, %if.then5.i.lan966x_mdb_ip_del.exit_crit_edge ], [ -2, %if.then.lan966x_mdb_ip_del.exit_crit_edge ], [ -2, %for.inc.i.i.lan966x_mdb_ip_del.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.i.if.end_crit_edge, %land.lhs.true6.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %orig_dev.i14 = getelementptr inbounds %struct.switchdev_obj, ptr %obj, i32 0, i32 1
  %88 = ptrtoint ptr %orig_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %orig_dev.i14, align 4
  %priv_flags.i.i15 = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 15
  %90 = ptrtoint ptr %priv_flags.i.i15 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %priv_flags.i.i15, align 16
  %and.i.i16 = and i64 %91, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i16)
  %tobool.i.not.i17 = icmp eq i64 %and.i.i16, 0
  %lan966x1.i18 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %92 = ptrtoint ptr %lan966x1.i18 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %lan966x1.i18, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i13) #7
  %94 = getelementptr inbounds [6 x i8], ptr %mac.i13, i32 0, i32 4
  %vid.i19 = getelementptr inbounds %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 2
  %95 = ptrtoint ptr %vid.i19 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vid.i19, align 2
  %mdb_entries.i.i20 = getelementptr inbounds %struct.lan966x, ptr %93, i32 0, i32 23
  %97 = ptrtoint ptr %mdb_entries.i.i20 to i32
  call void @__asan_load4_noabort(i32 %97)
  %mdb_entry.017.i.i21 = load ptr, ptr %mdb_entries.i.i20, align 4
  %cmp.not18.i.i22 = icmp eq ptr %mdb_entry.017.i.i21, %mdb_entries.i.i20
  br i1 %cmp.not18.i.i22, label %if.end.lan966x_mdb_l2_del.exit_crit_edge, label %for.body.lr.ph.i.i25

if.end.lan966x_mdb_l2_del.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_del.exit

for.body.lr.ph.i.i25:                             ; preds = %if.end
  %98 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr, align 4
  %add.ptr1.i.i.i24 = getelementptr %struct.switchdev_obj_port_mdb, ptr %obj, i32 0, i32 1, i32 4
  %100 = ptrtoint ptr %add.ptr1.i.i.i24 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %add.ptr1.i.i.i24, align 2
  br label %for.body.i.i34

for.body.i.i34:                                   ; preds = %for.inc.i.i40.for.body.i.i34_crit_edge, %for.body.lr.ph.i.i25
  %mdb_entry.019.i.i26 = phi ptr [ %mdb_entry.017.i.i21, %for.body.lr.ph.i.i25 ], [ %mdb_entry.0.i.i38, %for.inc.i.i40.for.body.i.i34_crit_edge ]
  %mac2.i.i27 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %102 = ptrtoint ptr %mac2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mac2.i.i27, align 4
  %xor.i.i.i28 = xor i32 %103, %99
  %add.ptr.i.i.i29 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1, i32 4
  %104 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i.i29, align 2
  %xor37.i.i.i30 = xor i16 %105, %101
  %xor3.i.i.i31 = zext i16 %xor37.i.i.i30 to i32
  %or.i.i.i32 = or i32 %xor.i.i.i28, %xor3.i.i.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i32)
  %cmp.i.i.i33 = icmp eq i32 %or.i.i.i32, 0
  br i1 %cmp.i.i.i33, label %land.lhs.true.i.i37, label %for.body.i.i34.for.inc.i.i40_crit_edge

for.body.i.i34.for.inc.i.i40_crit_edge:           ; preds = %for.body.i.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i40

land.lhs.true.i.i37:                              ; preds = %for.body.i.i34
  %vid3.i.i35 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 2
  %106 = ptrtoint ptr %vid3.i.i35 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vid3.i.i35, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %107, i16 %96)
  %cmp5.i.i36 = icmp eq i16 %107, %96
  br i1 %cmp5.i.i36, label %lan966x_mdb_entry_get.exit.i44, label %land.lhs.true.i.i37.for.inc.i.i40_crit_edge

land.lhs.true.i.i37.for.inc.i.i40_crit_edge:      ; preds = %land.lhs.true.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i40

for.inc.i.i40:                                    ; preds = %land.lhs.true.i.i37.for.inc.i.i40_crit_edge, %for.body.i.i34.for.inc.i.i40_crit_edge
  %108 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_load4_noabort(i32 %108)
  %mdb_entry.0.i.i38 = load ptr, ptr %mdb_entry.019.i.i26, align 4
  %cmp.not.i.i39 = icmp eq ptr %mdb_entry.0.i.i38, %mdb_entries.i.i20
  br i1 %cmp.not.i.i39, label %for.inc.i.i40.lan966x_mdb_l2_del.exit_crit_edge, label %for.inc.i.i40.for.body.i.i34_crit_edge

for.inc.i.i40.for.body.i.i34_crit_edge:           ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i34

for.inc.i.i40.lan966x_mdb_l2_del.exit_crit_edge:  ; preds = %for.inc.i.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_del.exit

lan966x_mdb_entry_get.exit.i44:                   ; preds = %land.lhs.true.i.i37
  %add.ptr.i.i.i29.le = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 1, i32 4
  %vid3.i.i35.le = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 2
  %tobool.not.i43 = icmp eq ptr %mdb_entry.019.i.i26, null
  br i1 %tobool.not.i43, label %lan966x_mdb_entry_get.exit.i44.lan966x_mdb_l2_del.exit_crit_edge, label %if.end.i46

lan966x_mdb_entry_get.exit.i44.lan966x_mdb_l2_del.exit_crit_edge: ; preds = %lan966x_mdb_entry_get.exit.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_del.exit

if.end.i46:                                       ; preds = %lan966x_mdb_entry_get.exit.i44
  %ports3.i45 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 3
  %109 = ptrtoint ptr %ports3.i45 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ports3.i45, align 4
  br i1 %tobool.i.not.i17, label %if.else.i54, label %if.then5.i50

if.then5.i50:                                     ; preds = %if.end.i46
  %cpu_copy.i47 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 5
  %111 = ptrtoint ptr %cpu_copy.i47 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cpu_copy.i47, align 4
  %dec.i48 = add i8 %112, -1
  store i8 %dec.i48, ptr %cpu_copy.i47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec.i48)
  %tobool7.not.i49 = icmp eq i8 %dec.i48, 0
  br i1 %tobool7.not.i49, label %if.then5.i50.lan966x_mdb_encode_mac.exit.i63_crit_edge, label %if.then5.i50.lan966x_mdb_l2_del.exit_crit_edge

if.then5.i50.lan966x_mdb_l2_del.exit_crit_edge:   ; preds = %if.then5.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_del.exit

if.then5.i50.lan966x_mdb_encode_mac.exit.i63_crit_edge: ; preds = %if.then5.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_encode_mac.exit.i63

if.else.i54:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #9
  %chip_port.i51 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %113 = ptrtoint ptr %chip_port.i51 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %chip_port.i51, align 4
  %conv11.i52 = zext i8 %114 to i32
  %shl.i53 = shl nuw i32 1, %conv11.i52
  %115 = trunc i32 %shl.i53 to i16
  %116 = xor i16 %115, -1
  br label %lan966x_mdb_encode_mac.exit.i63

lan966x_mdb_encode_mac.exit.i63:                  ; preds = %if.else.i54, %if.then5.i50.lan966x_mdb_encode_mac.exit.i63_crit_edge
  %.sink.i = phi i16 [ %116, %if.else.i54 ], [ -257, %if.then5.i50.lan966x_mdb_encode_mac.exit.i63_crit_edge ]
  %conv14.i = and i16 %.sink.i, %110
  %117 = ptrtoint ptr %mac2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %mac2.i.i27, align 4
  %119 = ptrtoint ptr %mac.i13 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %mac.i13, align 4
  %120 = ptrtoint ptr %add.ptr.i.i.i29.le to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i.i.i29.le, align 2
  %122 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %121, ptr %94, align 4
  %123 = ptrtoint ptr %vid3.i.i35.le to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %vid3.i.i35.le, align 2
  %conv19.i = zext i16 %124 to i32
  %call20.i = call i32 @lan966x_mac_forget(ptr noundef %93, ptr noundef nonnull %mac.i13, i32 noundef %conv19.i, i32 noundef 1) #7
  %pgid.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.019.i.i26, i32 0, i32 4
  %125 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pgid.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %126, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !11
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %127 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !12
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %127, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %lan966x_mdb_encode_mac.exit.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lan966x_pgid_entry_del.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !13

if.end5.i.i.i.i.i.lan966x_pgid_entry_del.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_pgid_entry_del.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %lan966x_pgid_entry_del.exit.i

if.end.i.i:                                       ; preds = %lan966x_mdb_encode_mac.exit.i63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %126) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %128 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i.i.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %126, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %134 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 256 to ptr), ptr %126, align 4
  %prev.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %126, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i64, align 4
  call void @kfree(ptr noundef %126) #7
  br label %lan966x_pgid_entry_del.exit.i

lan966x_pgid_entry_del.exit.i:                    ; preds = %list_del.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lan966x_pgid_entry_del.exit.i_crit_edge
  %136 = ptrtoint ptr %ports3.i45 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv14.i, ptr %ports3.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv14.i)
  %tobool23.not.i = icmp eq i16 %conv14.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end25.i

if.then24.i:                                      ; preds = %lan966x_pgid_entry_del.exit.i
  %call.i.i.i65 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mdb_entry.019.i.i26) #7
  br i1 %call.i.i.i65, label %if.end.i.i.i67, label %if.then24.i.list_del.exit.i69_crit_edge

if.then24.i.list_del.exit.i69_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i69

if.end.i.i.i67:                                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i104.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %137 = ptrtoint ptr %prev.i.i104.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i.i104.i, align 4
  %139 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mdb_entry.019.i.i26, align 4
  %prev1.i.i.i.i66 = getelementptr inbounds %struct.list_head, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %prev1.i.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev1.i.i.i.i66, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %140, ptr %138, align 4
  br label %list_del.exit.i69

list_del.exit.i69:                                ; preds = %if.end.i.i.i67, %if.then24.i.list_del.exit.i69_crit_edge
  %143 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr inttoptr (i32 256 to ptr), ptr %mdb_entry.019.i.i26, align 4
  %prev.i.i68 = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i68 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i68, align 4
  call void @kfree(ptr noundef nonnull %mdb_entry.019.i.i26) #7
  br label %lan966x_mdb_l2_del.exit

if.end25.i:                                       ; preds = %lan966x_pgid_entry_del.exit.i
  %call26.i = call fastcc ptr @lan966x_pgid_entry_get(ptr noundef %93, ptr noundef nonnull %mdb_entry.019.i.i26) #7
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then28.i, label %if.end31.i

if.then28.i:                                      ; preds = %if.end25.i
  %call.i.i105.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mdb_entry.019.i.i26) #7
  br i1 %call.i.i105.i, label %if.end.i.i108.i, label %if.then28.i.list_del.exit110.i_crit_edge

if.then28.i.list_del.exit110.i_crit_edge:         ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit110.i

if.end.i.i108.i:                                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i106.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %145 = ptrtoint ptr %prev.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i106.i, align 4
  %147 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mdb_entry.019.i.i26, align 4
  %prev1.i.i.i107.i = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %prev1.i.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev1.i.i.i107.i, align 4
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %148, ptr %146, align 4
  br label %list_del.exit110.i

list_del.exit110.i:                               ; preds = %if.end.i.i108.i, %if.then28.i.list_del.exit110.i_crit_edge
  %151 = ptrtoint ptr %mdb_entry.019.i.i26 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr inttoptr (i32 256 to ptr), ptr %mdb_entry.019.i.i26, align 4
  %prev.i109.i = getelementptr inbounds %struct.list_head, ptr %mdb_entry.019.i.i26, i32 0, i32 1
  %152 = ptrtoint ptr %prev.i109.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i109.i, align 4
  call void @kfree(ptr noundef nonnull %mdb_entry.019.i.i26) #7
  %153 = ptrtoint ptr %call26.i to i32
  br label %lan966x_mdb_l2_del.exit

if.end31.i:                                       ; preds = %if.end25.i
  %154 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call26.i, ptr %pgid.i, align 4
  %155 = ptrtoint ptr %ports3.i45 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %ports3.i45, align 4
  %157 = and i16 %156, 511
  %and55.i = zext i16 %157 to i32
  %index.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call26.i, i32 0, i32 1
  %158 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %159)
  %cmp20.i.i.i = icmp sgt i32 %159, 88
  br i1 %cmp20.i.i.i, label %do.end36.i.i.i, label %if.end31.i.lan_addr.exit.i.i_crit_edge, !prof !15

if.end31.i.lan_addr.exit.i.i_crit_edge:           ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %if.end31.i.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %93, i32 0, i32 3, i32 3
  %160 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i111.i = getelementptr i8, ptr %161, i32 27648
  %mul.i.i.i = shl i32 %159, 3
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i111.i, i32 %mul.i.i.i
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #7, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @arm_heavy_mb() #7
  br i1 %cmp20.i.i.i, label %do.end36.i2.i.i, label %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge, !prof !15

lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge:       ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_rmw.exit.i

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge
  %163 = and i32 %162, 16711679
  %164 = call i32 @llvm.bswap.i32(i32 %163) #7
  %or.i.i = or i32 %164, %and55.i
  %165 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %166 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %167, i32 27648
  %add.ptr81.i6.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i, i32 %165) #7, !srcloc !19
  %168 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %index.i, align 4
  %170 = ptrtoint ptr %vid3.i.i35.le to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %vid3.i.i35.le, align 2
  %conv60.i = zext i16 %171 to i32
  %call61.i = call i32 @lan966x_mac_learn(ptr noundef %93, i32 noundef %169, ptr noundef %mac2.i.i27, i32 noundef %conv60.i, i32 noundef 1) #7
  br label %lan966x_mdb_l2_del.exit

lan966x_mdb_l2_del.exit:                          ; preds = %lan_rmw.exit.i, %list_del.exit110.i, %list_del.exit.i69, %if.then5.i50.lan966x_mdb_l2_del.exit_crit_edge, %lan966x_mdb_entry_get.exit.i44.lan966x_mdb_l2_del.exit_crit_edge, %for.inc.i.i40.lan966x_mdb_l2_del.exit_crit_edge, %if.end.lan966x_mdb_l2_del.exit_crit_edge
  %retval.0.i70 = phi i32 [ %153, %list_del.exit110.i ], [ %call61.i, %lan_rmw.exit.i ], [ 0, %list_del.exit.i69 ], [ -2, %lan966x_mdb_entry_get.exit.i44.lan966x_mdb_l2_del.exit_crit_edge ], [ 0, %if.then5.i50.lan966x_mdb_l2_del.exit_crit_edge ], [ -2, %if.end.lan966x_mdb_l2_del.exit_crit_edge ], [ -2, %for.inc.i.i40.lan966x_mdb_l2_del.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i13) #7
  br label %cleanup

cleanup:                                          ; preds = %lan966x_mdb_l2_del.exit, %lan966x_mdb_ip_del.exit
  %retval.0 = phi i32 [ %retval.0.i12, %lan966x_mdb_ip_del.exit ], [ %retval.0.i70, %lan966x_mdb_l2_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mdb_write_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #1 align 64 {
entry:
  %mac.i30 = alloca [6 x i8], align 4
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 23
  %0 = ptrtoint ptr %mdb_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %mdb_entry.056 = load ptr, ptr %mdb_entries, align 4
  %cmp.not57 = icmp eq ptr %mdb_entry.056, %mdb_entries
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mac.i30, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mdb_entry.058 = phi ptr [ %mdb_entry.056, %for.body.lr.ph ], [ %mdb_entry.0, %for.inc.for.body_crit_edge ]
  %vid2 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 2
  %4 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vid)
  %cmp4.not = icmp eq i16 %5, %vid
  br i1 %cmp4.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %cpu_copy = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 5
  %6 = ptrtoint ptr %cpu_copy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpu_copy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %mac = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %9, label %if.end.if.else_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 51, label %land.lhs.true15.i
  ]

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp4.i = icmp eq i8 %12, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %14)
  %cmp9.i = icmp eq i8 %14, 94
  br i1 %cmp9.i, label %if.then.i.i, label %land.lhs.true6.i.if.else_crit_edge

land.lhs.true6.i.if.else_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true15.i:                                ; preds = %if.end
  %arrayidx16.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %16)
  %cmp18.i = icmp eq i8 %16, 51
  br i1 %cmp18.i, label %if.then10.i.i, label %land.lhs.true15.i.if.else_crit_edge

land.lhs.true15.i.if.else_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac, align 4
  %19 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mac.i, align 4
  %add.ptr.i.i.i52 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i52 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i52, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %1, align 4
  store i8 0, ptr %mac.i, align 4
  %ports.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %23 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ports.i.i, align 4
  %25 = lshr i16 %24, 8
  %conv2.i.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i.i, ptr %2, align 1
  br label %lan966x_mdb_ip_cpu_copy.exit

if.then10.i.i:                                    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %27 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac, align 4
  %29 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mac.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %1, align 4
  %ports11.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %33 = ptrtoint ptr %ports11.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ports11.i.i, align 4
  %35 = lshr i16 %34, 8
  %conv14.i.i = trunc i16 %35 to i8
  store i8 %conv14.i.i, ptr %mac.i, align 4
  br label %lan966x_mdb_ip_cpu_copy.exit

lan966x_mdb_ip_cpu_copy.exit:                     ; preds = %if.then10.i.i, %if.then.i.i
  %retval.0.i.ph53 = phi i32 [ 3, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %ports11.sink.i.i = phi ptr [ %ports11.i.i, %if.then10.i.i ], [ %ports.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ 1, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %36 = ptrtoint ptr %ports11.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ports11.sink.i.i, align 4
  %conv19.i.i = trunc i16 %37 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %mac.i, i32 %.sink.i.i
  %38 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %39 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid2, align 2
  %conv.i = zext i16 %40 to i32
  %call.i = call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef nonnull %mac.i, i32 noundef %conv.i, i32 noundef %retval.0.i.ph53) #7
  %41 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid2, align 2
  %conv4.i = zext i16 %42 to i32
  %call5.i = call i32 @lan966x_mac_ip_learn(ptr noundef %lan966x, i1 noundef zeroext true, ptr noundef nonnull %mac.i, i32 noundef %conv4.i, i32 noundef %retval.0.i.ph53) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #7
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true15.i.if.else_crit_edge, %land.lhs.true6.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i30) #7
  %pgid.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 4
  %43 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pgid.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %44, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !11
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !12
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !13

if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_encode_mac.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %lan966x_mdb_encode_mac.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %44) #7
  br label %lan966x_mdb_encode_mac.exit.i

lan966x_mdb_encode_mac.exit.i:                    ; preds = %list_del.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge
  %54 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mac, align 4
  %56 = ptrtoint ptr %mac.i30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mac.i30, align 4
  %add.ptr.i.i.i32 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i.i32 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i.i.i32, align 2
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %3, align 4
  %60 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vid2, align 2
  %conv.i45 = zext i16 %61 to i32
  %call.i46 = call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef nonnull %mac.i30, i32 noundef %conv.i45, i32 noundef 1) #7
  %ports.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %62 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ports.i, align 4
  %64 = or i16 %63, 256
  store i16 %64, ptr %ports.i, align 4
  %call4.i = call fastcc ptr @lan966x_pgid_entry_get(ptr noundef %lan966x, ptr noundef %mdb_entry.058) #7
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_copy.exit_crit_edge, label %if.end.i

lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_copy.exit_crit_edge: ; preds = %lan966x_mdb_encode_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_cpu_copy.exit

if.end.i:                                         ; preds = %lan966x_mdb_encode_mac.exit.i
  %65 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call4.i, ptr %pgid.i, align 4
  %66 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ports.i, align 4
  %68 = and i16 %67, 511
  %and26.i = zext i16 %68 to i32
  %index.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call4.i, i32 0, i32 1
  %69 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %70)
  %cmp20.i.i.i = icmp sgt i32 %70, 88
  br i1 %cmp20.i.i.i, label %do.end36.i.i.i, label %if.end.i.lan_addr.exit.i.i_crit_edge, !prof !15

if.end.i.lan_addr.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %if.end.i.lan_addr.exit.i.i_crit_edge
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i53.i = getelementptr i8, ptr %72, i32 27648
  %mul.i.i.i = shl i32 %70, 3
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i53.i, i32 %mul.i.i.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #7, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @arm_heavy_mb() #7
  br i1 %cmp20.i.i.i, label %do.end36.i2.i.i, label %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge, !prof !15

lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge:       ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_rmw.exit.i

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge
  %74 = and i32 %73, 16711679
  %75 = call i32 @llvm.bswap.i32(i32 %74) #7
  %or.i.i = or i32 %75, %and26.i
  %76 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %78, i32 27648
  %add.ptr81.i6.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i, i32 %76) #7, !srcloc !19
  %79 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i, align 4
  %81 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid2, align 2
  %conv31.i = zext i16 %82 to i32
  %call32.i = call i32 @lan966x_mac_learn(ptr noundef %lan966x, i32 noundef %80, ptr noundef %mac, i32 noundef %conv31.i, i32 noundef 1) #7
  br label %lan966x_mdb_l2_cpu_copy.exit

lan966x_mdb_l2_cpu_copy.exit:                     ; preds = %lan_rmw.exit.i, %lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_copy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i30) #7
  br label %for.inc

for.inc:                                          ; preds = %lan966x_mdb_l2_cpu_copy.exit, %lan966x_mdb_ip_cpu_copy.exit, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %83 = ptrtoint ptr %mdb_entry.058 to i32
  call void @__asan_load4_noabort(i32 %83)
  %mdb_entry.0 = load ptr, ptr %mdb_entry.058, align 4
  %cmp.not = icmp eq ptr %mdb_entry.0, %mdb_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_mdb_erase_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #1 align 64 {
entry:
  %mac.i30 = alloca [6 x i8], align 4
  %mac.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mdb_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 23
  %0 = ptrtoint ptr %mdb_entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %mdb_entry.056 = load ptr, ptr %mdb_entries, align 4
  %cmp.not57 = icmp eq ptr %mdb_entry.056, %mdb_entries
  br i1 %cmp.not57, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %1 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 4
  %2 = getelementptr inbounds [6 x i8], ptr %mac.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mac.i30, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mdb_entry.058 = phi ptr [ %mdb_entry.056, %for.body.lr.ph ], [ %mdb_entry.0, %for.inc.for.body_crit_edge ]
  %vid2 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 2
  %4 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid2, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vid)
  %cmp4.not = icmp eq i16 %5, %vid
  br i1 %cmp4.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %cpu_copy = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 5
  %6 = ptrtoint ptr %cpu_copy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cpu_copy, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %mac = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1
  %8 = ptrtoint ptr %mac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mac, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %9, label %if.end.if.else_crit_edge [
    i8 1, label %land.lhs.true.i
    i8 51, label %land.lhs.true15.i
  ]

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i:                                  ; preds = %if.end
  %arrayidx2.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp4.i = icmp eq i8 %12, 0
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %arrayidx7.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 94, i8 %14)
  %cmp9.i = icmp eq i8 %14, 94
  br i1 %cmp9.i, label %if.then.i.i, label %land.lhs.true6.i.if.else_crit_edge

land.lhs.true6.i.if.else_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true15.i:                                ; preds = %if.end
  %arrayidx16.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx16.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %16)
  %cmp18.i = icmp eq i8 %16, 51
  br i1 %cmp18.i, label %if.then10.i.i, label %land.lhs.true15.i.if.else_crit_edge

land.lhs.true15.i.if.else_crit_edge:              ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then.i.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %17 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mac, align 4
  %19 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %mac.i, align 4
  %add.ptr.i.i.i52 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i.i52 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i.i52, align 2
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %1, align 4
  store i8 0, ptr %mac.i, align 4
  %ports.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %23 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ports.i.i, align 4
  %25 = lshr i16 %24, 8
  %conv2.i.i = trunc i16 %25 to i8
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv2.i.i, ptr %2, align 1
  br label %lan966x_mdb_ip_cpu_remove.exit

if.then10.i.i:                                    ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i) #7
  %27 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mac, align 4
  %29 = ptrtoint ptr %mac.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %mac.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i.i.i, align 2
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %1, align 4
  %ports11.i.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %33 = ptrtoint ptr %ports11.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ports11.i.i, align 4
  %35 = lshr i16 %34, 8
  %conv14.i.i = trunc i16 %35 to i8
  store i8 %conv14.i.i, ptr %mac.i, align 4
  br label %lan966x_mdb_ip_cpu_remove.exit

lan966x_mdb_ip_cpu_remove.exit:                   ; preds = %if.then10.i.i, %if.then.i.i
  %retval.0.i.ph53 = phi i32 [ 3, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %ports11.sink.i.i = phi ptr [ %ports11.i.i, %if.then10.i.i ], [ %ports.i.i, %if.then.i.i ]
  %.sink.i.i = phi i32 [ 1, %if.then10.i.i ], [ 2, %if.then.i.i ]
  %36 = ptrtoint ptr %ports11.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ports11.sink.i.i, align 4
  %conv19.i.i = trunc i16 %37 to i8
  %arrayidx20.i.i = getelementptr i8, ptr %mac.i, i32 %.sink.i.i
  %38 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv19.i.i, ptr %arrayidx20.i.i, align 1
  %39 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid2, align 2
  %conv.i = zext i16 %40 to i32
  %call.i = call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef nonnull %mac.i, i32 noundef %conv.i, i32 noundef %retval.0.i.ph53) #7
  %41 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid2, align 2
  %conv4.i = zext i16 %42 to i32
  %call5.i = call i32 @lan966x_mac_ip_learn(ptr noundef %lan966x, i1 noundef zeroext false, ptr noundef nonnull %mac.i, i32 noundef %conv4.i, i32 noundef %retval.0.i.ph53) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i) #7
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true15.i.if.else_crit_edge, %land.lhs.true6.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac.i30) #7
  %pgid.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 4
  %43 = ptrtoint ptr %pgid.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pgid.i, align 4
  %refcount.i.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %44, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !11
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #7
  %45 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #7, !srcloc !12
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !13

if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_encode_mac.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #7
  br label %lan966x_mdb_encode_mac.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !14
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.list_del.exit.i.i_crit_edge

if.end.i.i.list_del.exit.i.i_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %44, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.end.i.i.list_del.exit.i.i_crit_edge
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @kfree(ptr noundef %44) #7
  br label %lan966x_mdb_encode_mac.exit.i

lan966x_mdb_encode_mac.exit.i:                    ; preds = %list_del.exit.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.lan966x_mdb_encode_mac.exit.i_crit_edge
  %54 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mac, align 4
  %56 = ptrtoint ptr %mac.i30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mac.i30, align 4
  %add.ptr.i.i.i32 = getelementptr %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 1, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i.i32 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i.i.i32, align 2
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %3, align 4
  %60 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vid2, align 2
  %conv.i45 = zext i16 %61 to i32
  %call.i46 = call i32 @lan966x_mac_forget(ptr noundef %lan966x, ptr noundef nonnull %mac.i30, i32 noundef %conv.i45, i32 noundef 1) #7
  %ports.i = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry.058, i32 0, i32 3
  %62 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ports.i, align 4
  %64 = and i16 %63, -257
  store i16 %64, ptr %ports.i, align 4
  %call4.i = call fastcc ptr @lan966x_pgid_entry_get(ptr noundef %lan966x, ptr noundef %mdb_entry.058) #7
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_remove.exit_crit_edge, label %if.end.i

lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_remove.exit_crit_edge: ; preds = %lan966x_mdb_encode_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan966x_mdb_l2_cpu_remove.exit

if.end.i:                                         ; preds = %lan966x_mdb_encode_mac.exit.i
  %65 = ptrtoint ptr %pgid.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call4.i, ptr %pgid.i, align 4
  %66 = ptrtoint ptr %ports.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ports.i, align 4
  %68 = and i16 %67, 511
  %and27.i = zext i16 %68 to i32
  %index.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call4.i, i32 0, i32 1
  %69 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %70)
  %cmp20.i.i.i = icmp sgt i32 %70, 88
  br i1 %cmp20.i.i.i, label %do.end36.i.i.i, label %if.end.i.lan_addr.exit.i.i_crit_edge, !prof !15

if.end.i.lan_addr.exit.i.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_addr.exit.i.i

do.end36.i.i.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end36.i.i.i, %if.end.i.lan_addr.exit.i.i_crit_edge
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %72, i32 27648
  %mul.i.i.i = shl i32 %70, 3
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i54.i, i32 %mul.i.i.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i.i) #7, !srcloc !16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !18
  call void @arm_heavy_mb() #7
  br i1 %cmp20.i.i.i, label %do.end36.i2.i.i, label %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge, !prof !15

lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge:       ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lan_rmw.exit.i

do.end36.i2.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 239, i32 noundef 9, ptr noundef null) #7
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i2.i.i, %lan_addr.exit.i.i.lan_rmw.exit.i_crit_edge
  %74 = and i32 %73, 16711679
  %75 = call i32 @llvm.bswap.i32(i32 %74) #7
  %or.i.i = or i32 %75, %and27.i
  %76 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %77 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %78, i32 27648
  %add.ptr81.i6.i.i = getelementptr i8, ptr %add.ptr.i4.i.i, i32 %mul.i.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i.i, i32 %76) #7, !srcloc !19
  %79 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i, align 4
  %81 = ptrtoint ptr %vid2 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vid2, align 2
  %conv32.i = zext i16 %82 to i32
  %call33.i = call i32 @lan966x_mac_learn(ptr noundef %lan966x, i32 noundef %80, ptr noundef %mac, i32 noundef %conv32.i, i32 noundef 1) #7
  br label %lan966x_mdb_l2_cpu_remove.exit

lan966x_mdb_l2_cpu_remove.exit:                   ; preds = %lan_rmw.exit.i, %lan966x_mdb_encode_mac.exit.i.lan966x_mdb_l2_cpu_remove.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac.i30) #7
  br label %for.inc

for.inc:                                          ; preds = %lan966x_mdb_l2_cpu_remove.exit, %lan966x_mdb_ip_cpu_remove.exit, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %83 = ptrtoint ptr %mdb_entry.058 to i32
  call void @__asan_load4_noabort(i32 %83)
  %mdb_entry.0 = load ptr, ptr %mdb_entry.058, align 4
  %cmp.not = icmp eq ptr %mdb_entry.0, %mdb_entries
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_forget(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_ip_learn(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lan966x_pgid_entry_get(ptr noundef %lan966x, ptr nocapture noundef readonly %mdb_entry) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pgid_entries = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 24
  %ports2 = getelementptr inbounds %struct.lan966x_mdb_entry, ptr %mdb_entry, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pgid_entry.0.in = phi ptr [ %pgid_entries, %entry ], [ %pgid_entry.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %pgid_entry.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pgid_entry.0 = load ptr, ptr %pgid_entry.0.in, align 4
  %cmp.not = icmp eq ptr %pgid_entry.0, %pgid_entries
  br i1 %cmp.not, label %for.cond.for.cond20.preheader_crit_edge, label %for.body

for.cond.for.cond20.preheader_crit_edge:          ; preds = %for.cond
  br label %for.cond20.preheader

for.body:                                         ; preds = %for.cond
  %ports = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %pgid_entry.0, i32 0, i32 3
  %1 = ptrtoint ptr %ports to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ports, align 4
  %3 = ptrtoint ptr %ports2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ports2, align 4
  %cmp4 = icmp eq i16 %2, %4
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %pgid_entry.0, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #7, !srcloc !20
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !15

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup45_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !13

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup45_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #7
  br label %cleanup45

for.cond20.preheader:                             ; preds = %for.inc42.for.cond20.preheader_crit_edge, %for.cond.for.cond20.preheader_crit_edge
  %index.065 = phi i32 [ %inc, %for.inc42.for.cond20.preheader_crit_edge ], [ 9, %for.cond.for.cond20.preheader_crit_edge ]
  br label %for.cond20

for.cond20:                                       ; preds = %for.body26.for.cond20_crit_edge, %for.cond20.preheader
  %pgid_entry.1.in = phi ptr [ %pgid_entry.1, %for.body26.for.cond20_crit_edge ], [ %pgid_entries, %for.cond20.preheader ]
  %7 = ptrtoint ptr %pgid_entry.1.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %pgid_entry.1 = load ptr, ptr %pgid_entry.1.in, align 4
  %cmp23.not = icmp eq ptr %pgid_entry.1, %pgid_entries
  br i1 %cmp23.not, label %if.then39.critedge, label %for.body26

for.body26:                                       ; preds = %for.cond20
  %index27 = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %pgid_entry.1, i32 0, i32 1
  %8 = ptrtoint ptr %index27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index27, align 4
  %cmp28 = icmp eq i32 %9, %index.065
  br i1 %cmp28, label %for.inc42, label %for.body26.for.cond20_crit_edge

for.body26.for.cond20_crit_edge:                  ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond20

if.then39.critedge:                               ; preds = %for.cond20
  %10 = ptrtoint ptr %ports2 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ports2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then39.critedge.cleanup45_crit_edge, label %if.end.i

if.then39.critedge.cleanup45_crit_edge:           ; preds = %if.then39.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end.i:                                         ; preds = %if.then39.critedge
  %ports2.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ports2.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %11, ptr %ports2.i, align 8
  %index3.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call7.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %index.065, ptr %index3.i, align 8
  %refcount.i = getelementptr inbounds %struct.lan966x_pgid_entry, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #7
  %15 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %refcount.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 24, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %17, ptr noundef %pgid_entries) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.cleanup45_crit_edge

if.end.i.cleanup45_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %pgid_entries, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i.i, ptr %17, align 4
  br label %cleanup45

for.inc42:                                        ; preds = %for.body26
  %inc = add nuw nsw i32 %index.065, 1
  %exitcond.not = icmp eq i32 %inc, 58
  br i1 %exitcond.not, label %for.inc42.cleanup45_crit_edge, label %for.inc42.for.cond20.preheader_crit_edge

for.inc42.for.cond20.preheader_crit_edge:         ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond20.preheader

for.inc42.cleanup45_crit_edge:                    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup45

cleanup45:                                        ; preds = %for.inc42.cleanup45_crit_edge, %if.end.i.i.i, %if.end.i.cleanup45_crit_edge, %if.then39.critedge.cleanup45_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup45_crit_edge
  %retval.2 = phi ptr [ %pgid_entry.0, %if.else.i.i.i.cleanup45_crit_edge ], [ %pgid_entry.0, %if.end15.sink.split.i.i.i ], [ %call7.i.i.i, %if.end.i.i.i ], [ %call7.i.i.i, %if.end.i.cleanup45_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then39.critedge.cleanup45_crit_edge ], [ inttoptr (i32 -28 to ptr), %for.inc42.cleanup45_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lan966x_mac_learn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 2148596544}
!12 = !{i64 2148510984, i64 2148511016, i64 2148511045, i64 2148511079, i64 2148511110, i64 2148511133}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2149830764}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 6552726}
!17 = !{i64 2157799112}
!18 = !{i64 2157799415}
!19 = !{i64 6552308}
!20 = !{i64 2148508519, i64 2148508551, i64 2148508580, i64 2148508614, i64 2148508645, i64 2148508668}
