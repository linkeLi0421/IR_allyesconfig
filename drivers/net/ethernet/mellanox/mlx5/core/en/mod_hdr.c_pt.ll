; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/en/mod_hdr.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/en/mod_hdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mod_hdr_tbl = type { %struct.mutex, [256 x %struct.hlist_head] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.mlx5e_tc_mod_hdr_acts = type { i32, i32, i8, ptr }
%struct.mlx5e_mod_hdr_handle = type { %struct.hlist_node, %struct.mod_hdr_key, ptr, %struct.refcount_struct, %struct.completion, i32 }
%struct.mod_hdr_key = type { i32, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }

@mlx5e_mod_hdr_tbl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tbl->lock\00", [21 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.6 = private constant [56 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/en/mod_hdr.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 44, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 87, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mlx5e_mod_hdr_tbl_init.__key, ptr @.str, ptr @init_completion.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5e_mod_hdr_tbl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mod_hdr_tbl_init(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef %tbl, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5e_mod_hdr_tbl_init.__key) #8
  %hlist = getelementptr inbounds %struct.mod_hdr_tbl, ptr %tbl, i32 0, i32 1
  %0 = call ptr @memset(ptr %hlist, i32 0, i32 1024)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mod_hdr_tbl_destroy(ptr noundef %tbl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_destroy(ptr noundef %tbl) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_mod_hdr_attach(ptr noundef %mdev, ptr noundef %tbl, i32 noundef %namespace, ptr nocapture noundef readonly %mod_hdr_acts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod_hdr_acts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod_hdr_acts, align 4
  %mul = shl i32 %1, 3
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %2 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actions, align 4
  %add.i.i = add i32 %mul, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mul)
  %cmp13.i.i = icmp ugt i32 %mul, 12
  br i1 %cmp13.i.i, label %entry.while.body.i.i_crit_edge, label %entry.while.end.i.i_crit_edge

entry.while.end.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %k.018.i.i = phi ptr [ %add.ptr31.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %3, %entry.while.body.i.i_crit_edge ]
  %c.017.i.i = phi i32 [ %xor28.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %entry.while.body.i.i_crit_edge ]
  %b.016.i.i = phi i32 [ %add29.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %entry.while.body.i.i_crit_edge ]
  %a.015.i.i = phi i32 [ %add25.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.i.i, %entry.while.body.i.i_crit_edge ]
  %length.addr.014.i.i = phi i32 [ %sub30.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %mul, %entry.while.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %k.018.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %k.018.i.i, align 1
  %add2.i.i = add i32 %5, %a.015.i.i
  %add.ptr.i.i = getelementptr i8, ptr %k.018.i.i, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %add.ptr.i.i, align 1
  %add4.i.i = add i32 %7, %b.016.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %k.018.i.i, i32 8
  %8 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %add.ptr5.i.i, align 1
  %add7.i.i = add i32 %9, %c.017.i.i
  %sub.i.i = sub i32 %add2.i.i, %add7.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #8
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #8
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #8
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #8
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #8
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #8
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %sub30.i.i = add i32 %length.addr.014.i.i, -12
  %add.ptr31.i.i = getelementptr i8, ptr %k.018.i.i, i32 12
  %cmp.i.i = icmp ugt i32 %sub30.i.i, 12
  br i1 %cmp.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %entry.while.end.i.i_crit_edge
  %length.addr.0.lcssa.i.i = phi i32 [ %mul, %entry.while.end.i.i_crit_edge ], [ %sub30.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %a.0.lcssa.i.i = phi i32 [ %add.i.i, %entry.while.end.i.i_crit_edge ], [ %add25.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %b.0.lcssa.i.i = phi i32 [ %add.i.i, %entry.while.end.i.i_crit_edge ], [ %add29.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %c.0.lcssa.i.i = phi i32 [ %add.i.i, %entry.while.end.i.i_crit_edge ], [ %xor28.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %k.0.lcssa.i.i = phi ptr [ %3, %entry.while.end.i.i_crit_edge ], [ %add.ptr31.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %10 = zext i32 %length.addr.0.lcssa.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa.i.i, label %while.end.i.i.hash_mod_hdr_info.exit_crit_edge [
    i32 12, label %sw.bb.i.i
    i32 11, label %while.end.i.i.sw.bb33.i.i_crit_edge
    i32 10, label %while.end.i.i.sw.bb38.i.i_crit_edge
    i32 9, label %while.end.i.i.sw.bb43.i.i_crit_edge
    i32 8, label %while.end.i.i.sw.bb47.i.i_crit_edge
    i32 7, label %while.end.i.i.sw.bb52.i.i_crit_edge
    i32 6, label %while.end.i.i.sw.bb57.i.i_crit_edge
    i32 5, label %while.end.i.i.sw.bb62.i.i_crit_edge
    i32 4, label %while.end.i.i.sw.bb66.i.i_crit_edge
    i32 3, label %while.end.i.i.sw.bb71.i.i_crit_edge
    i32 2, label %while.end.i.i.sw.bb76.i.i_crit_edge
    i32 1, label %while.end.i.i.sw.bb81.i.i_crit_edge
  ]

while.end.i.i.sw.bb81.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb81.i.i

while.end.i.i.sw.bb76.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb76.i.i

while.end.i.i.sw.bb71.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb71.i.i

while.end.i.i.sw.bb66.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i.i

while.end.i.i.sw.bb62.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb62.i.i

while.end.i.i.sw.bb57.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb57.i.i

while.end.i.i.sw.bb52.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb52.i.i

while.end.i.i.sw.bb47.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47.i.i

while.end.i.i.sw.bb43.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb43.i.i

while.end.i.i.sw.bb38.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb38.i.i

while.end.i.i.sw.bb33.i.i_crit_edge:              ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i.i

while.end.i.i.hash_mod_hdr_info.exit_crit_edge:   ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_mod_hdr_info.exit

sw.bb.i.i:                                        ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 11
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %12 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 24
  %add32.i.i = add i32 %shl.i.i, %c.0.lcssa.i.i
  br label %sw.bb33.i.i

sw.bb33.i.i:                                      ; preds = %sw.bb.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge
  %c.1.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb33.i.i_crit_edge ], [ %add32.i.i, %sw.bb.i.i ]
  %arrayidx34.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 10
  %13 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx34.i.i, align 1
  %conv35.i.i = zext i8 %14 to i32
  %shl36.i.i = shl nuw nsw i32 %conv35.i.i, 16
  %add37.i.i = add i32 %shl36.i.i, %c.1.i.i
  br label %sw.bb38.i.i

sw.bb38.i.i:                                      ; preds = %sw.bb33.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge
  %c.2.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb38.i.i_crit_edge ], [ %add37.i.i, %sw.bb33.i.i ]
  %arrayidx39.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 9
  %15 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx39.i.i, align 1
  %conv40.i.i = zext i8 %16 to i32
  %shl41.i.i = shl nuw nsw i32 %conv40.i.i, 8
  %add42.i.i = add i32 %shl41.i.i, %c.2.i.i
  br label %sw.bb43.i.i

sw.bb43.i.i:                                      ; preds = %sw.bb38.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge
  %c.3.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb43.i.i_crit_edge ], [ %add42.i.i, %sw.bb38.i.i ]
  %arrayidx44.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 8
  %17 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx44.i.i, align 1
  %conv45.i.i = zext i8 %18 to i32
  %add46.i.i = add i32 %c.3.i.i, %conv45.i.i
  br label %sw.bb47.i.i

sw.bb47.i.i:                                      ; preds = %sw.bb43.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge
  %c.4.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb47.i.i_crit_edge ], [ %add46.i.i, %sw.bb43.i.i ]
  %arrayidx48.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 7
  %19 = ptrtoint ptr %arrayidx48.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48.i.i, align 1
  %conv49.i.i = zext i8 %20 to i32
  %shl50.i.i = shl nuw i32 %conv49.i.i, 24
  %add51.i.i = add i32 %shl50.i.i, %b.0.lcssa.i.i
  br label %sw.bb52.i.i

sw.bb52.i.i:                                      ; preds = %sw.bb47.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge
  %b.1.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %add51.i.i, %sw.bb47.i.i ]
  %c.5.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb52.i.i_crit_edge ], [ %c.4.i.i, %sw.bb47.i.i ]
  %arrayidx53.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 6
  %21 = ptrtoint ptr %arrayidx53.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx53.i.i, align 1
  %conv54.i.i = zext i8 %22 to i32
  %shl55.i.i = shl nuw nsw i32 %conv54.i.i, 16
  %add56.i.i = add i32 %shl55.i.i, %b.1.i.i
  br label %sw.bb57.i.i

sw.bb57.i.i:                                      ; preds = %sw.bb52.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge
  %b.2.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %add56.i.i, %sw.bb52.i.i ]
  %c.6.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb57.i.i_crit_edge ], [ %c.5.i.i, %sw.bb52.i.i ]
  %arrayidx58.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 5
  %23 = ptrtoint ptr %arrayidx58.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58.i.i, align 1
  %conv59.i.i = zext i8 %24 to i32
  %shl60.i.i = shl nuw nsw i32 %conv59.i.i, 8
  %add61.i.i = add i32 %shl60.i.i, %b.2.i.i
  br label %sw.bb62.i.i

sw.bb62.i.i:                                      ; preds = %sw.bb57.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge
  %b.3.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %add61.i.i, %sw.bb57.i.i ]
  %c.7.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb62.i.i_crit_edge ], [ %c.6.i.i, %sw.bb57.i.i ]
  %arrayidx63.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 4
  %25 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx63.i.i, align 1
  %conv64.i.i = zext i8 %26 to i32
  %add65.i.i = add i32 %b.3.i.i, %conv64.i.i
  br label %sw.bb66.i.i

sw.bb66.i.i:                                      ; preds = %sw.bb62.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge
  %b.4.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %add65.i.i, %sw.bb62.i.i ]
  %c.8.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb66.i.i_crit_edge ], [ %c.7.i.i, %sw.bb62.i.i ]
  %arrayidx67.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 3
  %27 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %28 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %add70.i.i = add i32 %shl69.i.i, %a.0.lcssa.i.i
  br label %sw.bb71.i.i

sw.bb71.i.i:                                      ; preds = %sw.bb66.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge
  %a.1.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %add70.i.i, %sw.bb66.i.i ]
  %b.5.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %b.4.i.i, %sw.bb66.i.i ]
  %c.9.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb71.i.i_crit_edge ], [ %c.8.i.i, %sw.bb66.i.i ]
  %arrayidx72.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 2
  %29 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %30 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %add75.i.i = add i32 %shl74.i.i, %a.1.i.i
  br label %sw.bb76.i.i

sw.bb76.i.i:                                      ; preds = %sw.bb71.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge
  %a.2.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %add75.i.i, %sw.bb71.i.i ]
  %b.6.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %b.5.i.i, %sw.bb71.i.i ]
  %c.10.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb76.i.i_crit_edge ], [ %c.9.i.i, %sw.bb71.i.i ]
  %arrayidx77.i.i = getelementptr i8, ptr %k.0.lcssa.i.i, i32 1
  %31 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %32 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %add80.i.i = add i32 %shl79.i.i, %a.2.i.i
  br label %sw.bb81.i.i

sw.bb81.i.i:                                      ; preds = %sw.bb76.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge
  %a.3.i.i = phi i32 [ %a.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %add80.i.i, %sw.bb76.i.i ]
  %b.7.i.i = phi i32 [ %b.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %b.6.i.i, %sw.bb76.i.i ]
  %c.11.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.sw.bb81.i.i_crit_edge ], [ %c.10.i.i, %sw.bb76.i.i ]
  %33 = ptrtoint ptr %k.0.lcssa.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %k.0.lcssa.i.i, align 1
  %conv83.i.i = zext i8 %34 to i32
  %add84.i.i = add i32 %a.3.i.i, %conv83.i.i
  %xor85.i.i = xor i32 %c.11.i.i, %b.7.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i.i, i32 %b.7.i.i, i32 14) #8
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %add84.i.i, %sub87.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #8
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %b.7.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #8
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #8
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #8
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i.i, i32 %sub99.i.i, i32 14) #8
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i.i, i32 %sub102.i.i, i32 24) #8
  %sub105.i.i = sub i32 %xor103.i.i, %or.i12.i.i
  br label %hash_mod_hdr_info.exit

hash_mod_hdr_info.exit:                           ; preds = %sw.bb81.i.i, %while.end.i.i.hash_mod_hdr_info.exit_crit_edge
  %c.12.i.i = phi i32 [ %c.0.lcssa.i.i, %while.end.i.i.hash_mod_hdr_info.exit_crit_edge ], [ %sub105.i.i, %sw.bb81.i.i ]
  tail call void @mutex_lock_nested(ptr noundef %tbl, i32 noundef 0) #8
  %mul.i.i.i = mul i32 %c.12.i.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 24
  %arrayidx.i = getelementptr %struct.mod_hdr_tbl, ptr %tbl, i32 0, i32 1, i32 %shr.i.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %mh.028.i = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not29.i = icmp eq ptr %mh.028.i, null
  br i1 %tobool2.not29.i, label %hash_mod_hdr_info.exit.if.end8.i.i_crit_edge, label %hash_mod_hdr_info.exit.for.body.i_crit_edge

hash_mod_hdr_info.exit.for.body.i_crit_edge:      ; preds = %hash_mod_hdr_info.exit
  br label %for.body.i

hash_mod_hdr_info.exit.if.end8.i.i_crit_edge:     ; preds = %hash_mod_hdr_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %hash_mod_hdr_info.exit.for.body.i_crit_edge
  %mh.030.i = phi ptr [ %mh.0.i, %for.inc.i.for.body.i_crit_edge ], [ %mh.028.i, %hash_mod_hdr_info.exit.for.body.i_crit_edge ]
  %key3.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.030.i, i32 0, i32 1
  %36 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %key3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %1)
  %cmp.not.i.i = icmp eq i32 %37, %1
  br i1 %cmp.not.i.i, label %cmp_mod_hdr_info.exit.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

cmp_mod_hdr_info.exit.i:                          ; preds = %for.body.i
  %actions.i.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.030.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %actions.i.i, align 4
  %bcmp.i = tail call i32 @bcmp(ptr %39, ptr %3, i32 %mul) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %if.then.i, label %cmp_mod_hdr_info.exit.i.for.inc.i_crit_edge

cmp_mod_hdr_info.exit.i.for.inc.i_crit_edge:      ; preds = %cmp_mod_hdr_info.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %cmp_mod_hdr_info.exit.i
  %refcnt.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.030.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #8
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #8, !srcloc !15
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !16

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !17

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #8
  br label %if.then

for.inc.i:                                        ; preds = %cmp_mod_hdr_info.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %42 = ptrtoint ptr %mh.030.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %mh.0.i = load ptr, ptr %mh.030.i, align 4
  %tobool2.not.i = icmp eq ptr %mh.0.i, null
  br i1 %tobool2.not.i, label %for.inc.i.if.end8.i.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end8.i.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %tbl) #8
  %res_ready = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.030.i, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %res_ready) #8
  %compl_result = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.030.i, i32 0, i32 5
  %43 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp = icmp slt i32 %44, 0
  br i1 %cmp, label %if.then.attach_header_err_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.attach_header_err_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %attach_header_err

if.end8.i.i:                                      ; preds = %for.inc.i.if.end8.i.i_crit_edge, %hash_mod_hdr_info.exit.if.end8.i.i_crit_edge
  %add = add i32 %mul, 84
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #12
  %tobool9.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %tbl) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8.i.i
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 84
  %key14 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 1
  %actions15 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %actions15 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr, ptr %actions15, align 4
  %46 = call ptr @memcpy(ptr %add.ptr, ptr %3, i32 %mul)
  %47 = ptrtoint ptr %key14 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %1, ptr %key14, align 8
  %refcnt = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #8
  %48 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 1, ptr %refcnt, align 4
  %res_ready21 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %res_ready21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %res_ready21, align 8
  %wait.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #8
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %52 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %call9.i.i, align 128
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.end13.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end13.hlist_add_head.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call9.i.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end13.hlist_add_head.exit_crit_edge
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call9.i.i, ptr %arrayidx.i, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %call9.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %arrayidx.i, ptr %pprev34.i, align 4
  tail call void @mutex_unlock(ptr noundef %tbl) #8
  %conv = trunc i32 %namespace to i8
  %56 = ptrtoint ptr %key14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %key14, align 8
  %conv26 = trunc i32 %57 to i8
  %58 = ptrtoint ptr %actions15 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %actions15, align 4
  %call29 = tail call ptr @mlx5_modify_header_alloc(ptr noundef %mdev, i8 noundef zeroext %conv, i8 noundef zeroext %conv26, ptr noundef %59) #8
  %modify_hdr = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call29, ptr %modify_hdr, align 16
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end36

if.then32:                                        ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %call29 to i32
  %compl_result35 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 5
  %62 = ptrtoint ptr %compl_result35 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %compl_result35, align 16
  tail call void @complete_all(ptr noundef %res_ready21) #8
  br label %attach_header_err

if.end36:                                         ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #10
  %compl_result37 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %call9.i.i, i32 0, i32 5
  %63 = ptrtoint ptr %compl_result37 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %compl_result37, align 16
  tail call void @complete_all(ptr noundef %res_ready21) #8
  br label %cleanup

attach_header_err:                                ; preds = %if.then32, %if.then.attach_header_err_crit_edge
  %err.0 = phi ptr [ %call29, %if.then32 ], [ inttoptr (i32 -121 to ptr), %if.then.attach_header_err_crit_edge ]
  %mh.1 = phi ptr [ %call9.i.i, %if.then32 ], [ %mh.030.i, %if.then.attach_header_err_crit_edge ]
  %refcnt.i82 = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.1, i32 0, i32 3
  %call.i = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt.i82, ptr noundef %tbl) #8
  br i1 %call.i, label %if.end.i, label %attach_header_err.cleanup_crit_edge

attach_header_err.cleanup_crit_edge:              ; preds = %attach_header_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %attach_header_err
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mh.1, i32 0, i32 1
  %64 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.not.i.i.i, label %if.end.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.hash_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %66 = ptrtoint ptr %mh.1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mh.1, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %67, ptr %65, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %65, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %70 = ptrtoint ptr %mh.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %mh.1, align 4
  %71 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %if.end.i.hash_del.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %tbl) #8
  %compl_result.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.1, i32 0, i32 5
  %72 = ptrtoint ptr %compl_result.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %compl_result.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i83 = icmp sgt i32 %73, 0
  br i1 %cmp.i83, label %if.then2.i, label %hash_del.exit.i.if.end3.i_crit_edge

hash_del.exit.i.if.end3.i_crit_edge:              ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %modify_hdr.i = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh.1, i32 0, i32 2
  %74 = ptrtoint ptr %modify_hdr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %modify_hdr.i, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %mdev, ptr noundef %75) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %hash_del.exit.i.if.end3.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %mh.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %attach_header_err.cleanup_crit_edge, %if.end36, %if.then10, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then10 ], [ %mh.030.i, %if.then.cleanup_crit_edge ], [ %call9.i.i, %if.end36 ], [ %err.0, %attach_header_err.cleanup_crit_edge ], [ %err.0, %if.end3.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx5_modify_header_alloc(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mod_hdr_detach(ptr noundef %mdev, ptr noundef %tbl, ptr noundef %mh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh, i32 0, i32 3
  %call = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %refcnt, ptr noundef %tbl) #8
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %mh, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del.exit_crit_edge, label %if.then.i.i

if.end.hash_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end
  %2 = ptrtoint ptr %mh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mh, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %6 = ptrtoint ptr %mh to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mh, align 4
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end.hash_del.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %tbl) #8
  %compl_result = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh, i32 0, i32 5
  %8 = ptrtoint ptr %compl_result to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %compl_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then2, label %hash_del.exit.if.end3_crit_edge

hash_del.exit.if.end3_crit_edge:                  ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %modify_hdr = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh, i32 0, i32 2
  %10 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modify_hdr, align 4
  tail call void @mlx5_modify_header_dealloc(ptr noundef %mdev, ptr noundef %11) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %hash_del.exit.if.end3_crit_edge
  tail call void @kfree(ptr noundef %mh) #8
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx5_modify_header_dealloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_mod_hdr_get(ptr nocapture noundef readonly %mh) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %modify_hdr = getelementptr inbounds %struct.mlx5e_mod_hdr_handle, ptr %mh, i32 0, i32 2
  %0 = ptrtoint ptr %modify_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %modify_hdr, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5e_mod_hdr_alloc(ptr nocapture noundef readonly %mdev, i32 noundef %namespace, ptr nocapture noundef %mod_hdr_acts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod_hdr_acts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod_hdr_acts, align 4
  %max_actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 1
  %2 = ptrtoint ptr %max_actions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_actions, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %namespace)
  %cmp.i = icmp eq i32 %namespace, 8
  %arrayidx.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 8
  %arrayidx3.i = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 7
  %.pn.in.i = select i1 %cmp.i, ptr %arrayidx.i, ptr %arrayidx3.i
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %retval.0.in.in.in.i = getelementptr i32, ptr %.pn.i, i32 17
  %5 = ptrtoint ptr %retval.0.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.in.in.i = load i32, ptr %retval.0.in.in.in.i, align 4
  %retval.0.in.i = lshr i32 %retval.0.in.in.i, 8
  %retval.0.i = and i32 %retval.0.in.i, 255
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %6 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actions, align 4
  %tobool.not = icmp eq ptr %7, null
  %mul = shl i32 %3, 1
  %spec.select = select i1 %tobool.not, i32 1, i32 %mul
  %8 = tail call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %spec.select)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %8)
  %cmp8 = icmp eq i32 %3, %8
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %mul12 = shl i32 %8, 3
  %mul14 = shl i32 %3, 3
  %is_static = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 2
  %9 = ptrtoint ptr %is_static to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_static, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  br i1 %tobool15.not, label %if.else, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end11
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul12, i32 noundef 3520) #12
  %tobool18.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end28

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end11
  %call24 = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %mul12, i32 noundef 3264) #13
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %if.end28.thread74

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28.thread74:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call24, i32 %mul14
  %sub = sub i32 %mul12, %mul14
  %11 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end32

if.end28:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %actions, align 4
  %14 = call ptr @memcpy(ptr %call9.i.i, ptr %13, i32 %mul14)
  %15 = ptrtoint ptr %is_static to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_static, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.end28.thread74
  %ret.077 = phi ptr [ %call24, %if.end28.thread74 ], [ %call9.i.i, %if.end28 ]
  %16 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ret.077, ptr %actions, align 4
  %17 = ptrtoint ptr %max_actions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %max_actions, align 4
  br label %out

out:                                              ; preds = %if.end32, %entry.out_crit_edge
  %actions35 = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %18 = ptrtoint ptr %actions35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %actions35, align 4
  %20 = ptrtoint ptr %mod_hdr_acts to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mod_hdr_acts, align 4
  %mul37 = shl i32 %21, 3
  %add.ptr38 = getelementptr i8, ptr %19, i32 %mul37
  br label %cleanup

cleanup:                                          ; preds = %out, %if.else.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr38, %out ], [ inttoptr (i32 -28 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5e_mod_hdr_dealloc(ptr nocapture noundef %mod_hdr_acts) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_static = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 2
  %0 = ptrtoint ptr %is_static to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_static, align 4, !range !18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %2 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %actions, align 4
  tail call void @kfree(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %actions1 = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %4 = ptrtoint ptr %actions1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %actions1, align 4
  %5 = ptrtoint ptr %mod_hdr_acts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %mod_hdr_acts, align 4
  %max_actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 1
  %6 = ptrtoint ptr %max_actions to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %max_actions, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlx5e_mod_hdr_get_item(ptr nocapture noundef readonly %mod_hdr_acts, i32 noundef %pos) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %actions = getelementptr inbounds %struct.mlx5e_tc_mod_hdr_acts, ptr %mod_hdr_acts, i32 0, i32 3
  %0 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actions, align 4
  %mul = shl i32 %pos, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mlx5e_mod_hdr_tbl_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/en/mod_hdr.c", i32 44, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @init_completion.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../include/linux/completion.h", i32 87, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148171879, i64 2148171911, i64 2148171940, i64 2148171974, i64 2148172005, i64 2148172028}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{i8 0, i8 2}
