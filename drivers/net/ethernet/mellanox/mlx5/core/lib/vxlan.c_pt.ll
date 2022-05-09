; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlx5_vxlan = type { ptr, [16 x %struct.hlist_head], %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_vxlan_port = type { %struct.hlist_node, i16 }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.138, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.161, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.138 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
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
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.139] }
%struct.anon.139 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.140 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.140 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.161 = type { %struct.mlx5_rsvd_gids, i32 }
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

@mlx5_vxlan_lookup_port.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@mlx5_vxlan_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vxlan->sync_lock\00", [46 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 82, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.16 = private constant [55 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 160, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 695, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 723, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @mlx5_vxlan_create.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_vxlan_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlx5_vxlan_lookup_port(ptr noundef %vxlan, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp ne ptr %vxlan, null
  %cmp.i.i = icmp ule ptr %vxlan, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %lnot.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !24
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @mlx5_vxlan_lookup_port.__warned, align 1
  br i1 %.b46, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @mlx5_vxlan_lookup_port.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %conv = zext i16 %port to i32
  %mul.i.i = mul i32 %conv, 1640531527
  %shr.i = lshr i32 %mul.i.i, 28
  %arrayidx = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 %shr.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %vxlanp.0.in = phi ptr [ %arrayidx, %do.end ], [ %vxlanp.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %vxlanp.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %vxlanp.0 = load volatile ptr, ptr %vxlanp.0.in, align 4
  %tobool16.not = icmp eq ptr %vxlanp.0, null
  br i1 %tobool16.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %udp_port = getelementptr inbounds %struct.mlx5_vxlan_port, ptr %vxlanp.0, i32 0, i32 1
  %5 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %udp_port, align 4
  %cmp = icmp eq i16 %6, %port
  br i1 %cmp, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %7 = xor i1 %tobool16.not, true
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i48, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i51

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i51:                                ; preds = %for.end
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !25
  %8 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i55 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %7, %rcu_read_unlock.exit ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vxlan_add_port(ptr noundef %vxlan, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %udp_port = getelementptr inbounds %struct.mlx5_vxlan_port, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %udp_port to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %port, ptr %udp_port, align 8
  %2 = ptrtoint ptr %vxlan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vxlan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %4 = getelementptr inbounds i8, ptr %in.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %4, align 4
  %6 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 136773632, ptr %in.i, align 4
  %conv.i = zext i16 %port to i32
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %7 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %8 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %3, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sync_lock = getelementptr inbounds %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %sync_lock, i32 noundef 0) #6
  %mul.i.i = mul i32 %conv.i, 1640531527
  %shr.i = lshr i32 %mul.i.i, 28
  %arrayidx = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 %shr.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %call7.i.i, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !26
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end4.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end4.hlist_add_head_rcu.exit_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end4.hlist_add_head_rcu.exit_crit_edge
  call void @mutex_unlock(ptr noundef %sync_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then3 ], [ 0, %hlist_add_head_rcu.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_vxlan_del_port(ptr noundef %vxlan, i16 noundef zeroext %port) local_unnamed_addr #0 align 64 {
entry:
  %in.i = alloca [4 x i32], align 4
  %_out.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sync_lock = getelementptr inbounds %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %sync_lock, i32 noundef 0) #6
  %conv.i = zext i16 %port to i32
  %mul.i.i.i = mul i32 %conv.i, 1640531527
  %shr.i.i = lshr i32 %mul.i.i.i, 28
  %arrayidx.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 %shr.i.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %vxlanp.0.in.i = phi ptr [ %arrayidx.i, %entry ], [ %vxlanp.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %vxlanp.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %vxlanp.0.i = load ptr, ptr %vxlanp.0.in.i, align 4
  %tobool2.not.i = icmp eq ptr %vxlanp.0.i, null
  br i1 %tobool2.not.i, label %do.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %udp_port.i = getelementptr inbounds %struct.mlx5_vxlan_port, ptr %vxlanp.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %udp_port.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %udp_port.i, align 4
  %cmp.i = icmp eq i16 %2, %port
  br i1 %cmp.i, label %if.end23, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #6
  br label %out_unlock

if.end23:                                         ; preds = %for.body.i
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %vxlanp.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.not.i.i, label %if.end23.hash_del_rcu.exit_crit_edge, label %if.then.i.i

if.end23.hash_del_rcu.exit_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %hash_del_rcu.exit

if.then.i.i:                                      ; preds = %if.end23
  %5 = ptrtoint ptr %vxlanp.0.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vxlanp.0.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %4, align 4
  %tobool.not.i7.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i7.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %4, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del_rcu.exit

hash_del_rcu.exit:                                ; preds = %__hlist_del.exit.i.i, %if.end23.hash_del_rcu.exit_crit_edge
  tail call void @synchronize_rcu() #6
  %10 = ptrtoint ptr %vxlan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vxlan, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in.i) #6
  %12 = getelementptr inbounds i8, ptr %in.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %12, align 4
  %14 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 136839168, ptr %in.i, align 4
  %add.ptr13.i = getelementptr inbounds i32, ptr %in.i, i32 3
  %15 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %add.ptr13.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_out.i) #6
  %16 = call ptr @memset(ptr %_out.i, i32 0, i32 16)
  %call.i = call i32 @mlx5_cmd_exec(ptr noundef %11, ptr noundef nonnull %in.i, i32 noundef 16, ptr noundef nonnull %_out.i, i32 noundef 16) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_out.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in.i) #6
  call void @kfree(ptr noundef nonnull %vxlanp.0.i) #6
  br label %out_unlock

out_unlock:                                       ; preds = %hash_del_rcu.exit, %do.end
  %ret.0 = phi i32 [ -2, %do.end ], [ 0, %hash_del_rcu.exit ]
  call void @mutex_unlock(ptr noundef %sync_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_vxlan_create(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 8, i32 0, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %coredev_type.i = getelementptr inbounds %struct.mlx5_core_dev, ptr %mdev, i32 0, i32 1
  %4 = ptrtoint ptr %coredev_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %coredev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 160) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mdev, ptr %call7.i.i, align 8
  %sync_lock = getelementptr inbounds %struct.mlx5_vxlan, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %sync_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mlx5_vxlan_create.__key) #6
  %htable = getelementptr inbounds %struct.mlx5_vxlan, ptr %call7.i.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %htable, i32 0, i32 64)
  %call9 = tail call i32 @mlx5_vxlan_add_port(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 4789)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -524 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vxlan_destroy(ptr noundef %vxlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp ne ptr %vxlan, null
  %cmp.i.i = icmp ule ptr %vxlan, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %lnot.i, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlx5_vxlan_del_port(ptr noundef nonnull %vxlan, i16 noundef zeroext 4789)
  %htable = getelementptr inbounds %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1
  %0 = ptrtoint ptr %htable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %htable, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %for.cond.i, label %if.end.do.end_crit_edge, !prof !27

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.i:                                       ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.i.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.not.1.i, label %for.cond.1.i, label %for.cond.i.do.end_crit_edge, !prof !27

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.i.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.not.2.i, label %for.cond.2.i, label %for.cond.1.i.do.end_crit_edge, !prof !27

for.cond.1.i.do.end_crit_edge:                    ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.i.not.3.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.not.3.i, label %for.cond.3.i, label %for.cond.2.i.do.end_crit_edge, !prof !27

for.cond.2.i.do.end_crit_edge:                    ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.i.not.4.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.4.i, label %for.cond.4.i, label %for.cond.3.i.do.end_crit_edge, !prof !27

for.cond.3.i.do.end_crit_edge:                    ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 5
  %10 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx.5.i, align 4
  %tobool.not.i.not.5.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.not.5.i, label %for.cond.5.i, label %for.cond.4.i.do.end_crit_edge, !prof !27

for.cond.4.i.do.end_crit_edge:                    ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.6.i, align 4
  %tobool.not.i.not.6.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.not.6.i, label %for.cond.6.i, label %for.cond.5.i.do.end_crit_edge, !prof !27

for.cond.5.i.do.end_crit_edge:                    ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx.7.i, align 4
  %tobool.not.i.not.7.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.not.7.i, label %for.cond.7.i, label %for.cond.6.i.do.end_crit_edge, !prof !27

for.cond.6.i.do.end_crit_edge:                    ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 8
  %16 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %arrayidx.8.i, align 4
  %tobool.not.i.not.8.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.not.8.i, label %for.cond.8.i, label %for.cond.7.i.do.end_crit_edge, !prof !27

for.cond.7.i.do.end_crit_edge:                    ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.9.i, align 4
  %tobool.not.i.not.9.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.not.9.i, label %for.cond.9.i, label %for.cond.8.i.do.end_crit_edge, !prof !27

for.cond.8.i.do.end_crit_edge:                    ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.9.i:                                     ; preds = %for.cond.8.i
  %arrayidx.10.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 10
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.10.i, align 4
  %tobool.not.i.not.10.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.not.10.i, label %for.cond.10.i, label %for.cond.9.i.do.end_crit_edge, !prof !27

for.cond.9.i.do.end_crit_edge:                    ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.10.i:                                    ; preds = %for.cond.9.i
  %arrayidx.11.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 11
  %22 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.11.i, align 4
  %tobool.not.i.not.11.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.not.11.i, label %for.cond.11.i, label %for.cond.10.i.do.end_crit_edge, !prof !27

for.cond.10.i.do.end_crit_edge:                   ; preds = %for.cond.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.11.i:                                    ; preds = %for.cond.10.i
  %arrayidx.12.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 12
  %24 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %arrayidx.12.i, align 4
  %tobool.not.i.not.12.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.not.12.i, label %for.cond.12.i, label %for.cond.11.i.do.end_crit_edge, !prof !27

for.cond.11.i.do.end_crit_edge:                   ; preds = %for.cond.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.12.i:                                    ; preds = %for.cond.11.i
  %arrayidx.13.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 13
  %26 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.13.i, align 4
  %tobool.not.i.not.13.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.not.13.i, label %for.cond.13.i, label %for.cond.12.i.do.end_crit_edge, !prof !27

for.cond.12.i.do.end_crit_edge:                   ; preds = %for.cond.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.13.i:                                    ; preds = %for.cond.12.i
  %arrayidx.14.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 14
  %28 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %arrayidx.14.i, align 4
  %tobool.not.i.not.14.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.not.14.i, label %__hash_empty.exit, label %for.cond.13.i.do.end_crit_edge, !prof !27

for.cond.13.i.do.end_crit_edge:                   ; preds = %for.cond.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

__hash_empty.exit:                                ; preds = %for.cond.13.i
  %arrayidx.15.i = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 15
  %30 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %arrayidx.15.i, align 4
  %tobool.not.i.not.15.i = icmp eq ptr %31, null
  br i1 %tobool.not.i.not.15.i, label %__hash_empty.exit.if.end17_crit_edge, label %__hash_empty.exit.do.end_crit_edge, !prof !28

__hash_empty.exit.do.end_crit_edge:               ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

__hash_empty.exit.if.end17_crit_edge:             ; preds = %__hash_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %__hash_empty.exit.do.end_crit_edge, %for.cond.13.i.do.end_crit_edge, %for.cond.12.i.do.end_crit_edge, %for.cond.11.i.do.end_crit_edge, %for.cond.10.i.do.end_crit_edge, %for.cond.9.i.do.end_crit_edge, %for.cond.8.i.do.end_crit_edge, %for.cond.7.i.do.end_crit_edge, %for.cond.6.i.do.end_crit_edge, %for.cond.5.i.do.end_crit_edge, %for.cond.4.i.do.end_crit_edge, %for.cond.3.i.do.end_crit_edge, %for.cond.2.i.do.end_crit_edge, %for.cond.1.i.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 9, ptr noundef null) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end, %__hash_empty.exit.if.end17_crit_edge
  tail call void @kfree(ptr noundef nonnull %vxlan) #6
  br label %return

return:                                           ; preds = %if.end17, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_vxlan_reset_to_default(ptr noundef %vxlan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp ne ptr %vxlan, null
  %cmp.i.i = icmp ule ptr %vxlan, inttoptr (i32 -4096 to ptr)
  %lnot.i = and i1 %tobool.not.i.i, %cmp.i.i
  br i1 %lnot.i, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc27.for.body_crit_edge, %entry.for.body_crit_edge
  %bkt.045 = phi i32 [ %inc, %for.inc27.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx5_vxlan, ptr %vxlan, i32 0, i32 1, i32 %bkt.045
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool5.not43 = icmp eq ptr %1, null
  br i1 %tobool5.not43, label %for.body.for.inc27_crit_edge, label %for.body.land.rhs6_crit_edge

for.body.land.rhs6_crit_edge:                     ; preds = %for.body
  br label %land.rhs6

for.body.for.inc27_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

land.rhs6:                                        ; preds = %for.inc.land.rhs6_crit_edge, %for.body.land.rhs6_crit_edge
  %vxlanp.144 = phi ptr [ %3, %for.inc.land.rhs6_crit_edge ], [ %1, %for.body.land.rhs6_crit_edge ]
  %2 = ptrtoint ptr %vxlanp.144 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vxlanp.144, align 4
  %udp_port = getelementptr inbounds %struct.mlx5_vxlan_port, ptr %vxlanp.144, i32 0, i32 1
  %4 = ptrtoint ptr %udp_port to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %udp_port, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4789, i16 %5)
  %cmp11 = icmp eq i16 %5, 4789
  br i1 %cmp11, label %land.rhs6.for.inc_crit_edge, label %if.end14

land.rhs6.for.inc_crit_edge:                      ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end14:                                         ; preds = %land.rhs6
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @mlx5_vxlan_del_port(ptr noundef nonnull %vxlan, i16 noundef zeroext %5)
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %land.rhs6.for.inc_crit_edge
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %for.inc.for.inc27_crit_edge, label %for.inc.land.rhs6_crit_edge

for.inc.land.rhs6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs6

for.inc.for.inc27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc.for.inc27_crit_edge, %for.body.for.inc27_crit_edge
  %inc = add nuw nsw i32 %bkt.045, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc27.cleanup_crit_edge, label %for.inc27.for.body_crit_edge

for.inc27.for.body_crit_edge:                     ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc27.cleanup_crit_edge:                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc27.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !10, !11, !13}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c", i32 82, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlx5_vxlan_create.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/vxlan.c", i32 160, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2149359511}
!25 = !{i64 2149359777}
!26 = !{i64 2151934321}
!27 = !{!"branch_weights", i32 2146410443, i32 1073205}
!28 = !{!"branch_weights", i32 2000, i32 1}
