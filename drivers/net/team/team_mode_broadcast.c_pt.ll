; ModuleID = '/llk/IR_all_yes/drivers/net/team/team_mode_broadcast.c_pt.bc'
source_filename = "../drivers/net/team/team_mode_broadcast.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.team_mode = type { ptr, ptr, i32, i32, ptr, i32 }
%struct.team_mode_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.team = type { ptr, ptr, %struct.mutex, i32, [16 x %struct.hlist_head], %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.team_mode_ops, i8, i8, ptr, i8, %struct.anon.123, %struct.anon.124, %struct.lock_class_key, [4 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i32, i32, %struct.atomic_t, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.124 = type { i32, i32, %struct.atomic_t, %struct.delayed_work }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.team_port = type { ptr, %struct.hlist_node, %struct.list_head, ptr, i32, i8, %struct.anon.120, %struct.anon.121, i8, i8, %struct.anon.122, ptr, i32, i16, %struct.list_head, %struct.callback_head, [0 x i32] }
%struct.anon.120 = type { i8, i32, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.anon.122 = type { [32 x i8], i32 }
%struct.callback_head = type { ptr, ptr }

@bc_mode = internal constant { %struct.team_mode, [40 x i8] } { %struct.team_mode { ptr @.str, ptr null, i32 0, i32 0, ptr @bc_mode_ops, i32 2 }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_team_mode_broadcast__375_68_bc_init_module6 = internal global ptr @bc_init_module, section ".initcall6.init", align 4
@__exitcall_bc_cleanup_module = internal global ptr @bc_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file376 = internal constant [62 x i8] c"team_mode_broadcast.file=drivers/net/team/team_mode_broadcast\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [35 x i8] c"team_mode_broadcast.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author378 = internal constant [58 x i8] c"team_mode_broadcast.author=Jiri Pirko <jpirko@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description379 = internal constant [56 x i8] c"team_mode_broadcast.description=Broadcast mode for team\00", section ".modinfo", align 1
@__UNIQUE_ID_alias380 = internal constant [46 x i8] c"team_mode_broadcast.alias=team-mode-broadcast\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"broadcast\00", [22 x i8] zeroinitializer }, align 32
@bc_mode_ops = internal constant { %struct.team_mode_ops, [60 x i8] } { %struct.team_mode_ops { ptr null, ptr null, ptr null, ptr @bc_transmit, ptr @team_modeop_port_enter, ptr null, ptr @team_modeop_port_change_dev_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bc_transmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/team/team_mode_broadcast.c\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [8 x i8] c"bc_mode\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 51, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 52, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"bc_mode_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 45, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [42 x i8] c"../drivers/net/team/team_mode_broadcast.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 23, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias380, ptr @__UNIQUE_ID_author378, ptr @__UNIQUE_ID_description379, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_bc_cleanup_module, ptr @__initcall__kmod_team_mode_broadcast__375_68_bc_init_module6, ptr @bc_cleanup_module, ptr @bc_mode, ptr @.str, ptr @bc_mode_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bc_mode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bc_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @team_mode_unregister(ptr noundef nonnull @bc_mode) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_mode_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bc_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @team_mode_register(ptr noundef nonnull @bc_mode) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @bc_transmit(ptr noundef %team, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b72 = load i1, ptr @bc_transmit.__warned, align 1
  br i1 %.b72, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @bc_transmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 23, ptr noundef nonnull @.str.2) #3
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %port_list = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 5
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn85 = load volatile ptr, ptr %port_list, align 4
  %cmp.not87 = icmp eq ptr %.pn85, %port_list
  br i1 %cmp.not87, label %do.end.if.end47_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end47_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn90 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn85, %do.end.for.body_crit_edge ]
  %last.089 = phi ptr [ %last.1, %for.inc.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %sum_ret.0.off088 = phi i1 [ %sum_ret.2.off0, %for.inc.for.body_crit_edge ], [ false, %do.end.for.body_crit_edge ]
  %cur.091 = getelementptr i8, ptr %.pn90, i32 -12
  %linkup.i = getelementptr i8, ptr %.pn90, i32 16
  %1 = ptrtoint ptr %linkup.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %linkup.i, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %team_port_txable.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

team_port_txable.exit:                            ; preds = %for.body
  %index.i.i = getelementptr i8, ptr %.pn90, i32 12
  %3 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i.i.not = icmp eq i32 %4, -1
  br i1 %cmp.i.i.not, label %team_port_txable.exit.for.inc_crit_edge, label %if.then11

team_port_txable.exit.for.inc_crit_edge:          ; preds = %team_port_txable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then11:                                        ; preds = %team_port_txable.exit
  %tobool12.not = icmp eq ptr %last.089, null
  br i1 %tobool12.not, label %if.then11.for.inc_crit_edge, label %if.then13

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then13:                                        ; preds = %if.then11
  %call14 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #3
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.for.inc_crit_edge, label %if.then16

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then16:                                        ; preds = %if.then13
  %slave_dev_queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %call14, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %slave_dev_queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %slave_dev_queue_mapping.i, align 4
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call14, i32 0, i32 10
  %7 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %queue_mapping1.i.i, align 8
  %8 = ptrtoint ptr %last.089 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %last.089, align 4
  %10 = getelementptr inbounds %struct.anon.44, ptr %call14, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #3, !srcloc !33
  %and.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i, !prof !34

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %np.i.i = getelementptr inbounds %struct.team_port, ptr %last.089, i32 0, i32 11
  %13 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %np.i.i, align 4
  %call.i.i = tail call i32 @netpoll_send_skb(ptr noundef %14, ptr noundef nonnull %call14) #3
  br label %team_dev_queue_xmit.exit

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call14) #3
  br label %team_dev_queue_xmit.exit

team_dev_queue_xmit.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ %call4.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool18.not = icmp eq i32 %retval.0.i, 0
  %spec.select = select i1 %sum_ret.0.off088, i1 true, i1 %tobool18.not
  br label %for.inc

for.inc:                                          ; preds = %team_dev_queue_xmit.exit, %if.then13.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %team_port_txable.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %sum_ret.2.off0 = phi i1 [ %sum_ret.0.off088, %team_port_txable.exit.for.inc_crit_edge ], [ %sum_ret.0.off088, %if.then13.for.inc_crit_edge ], [ %sum_ret.0.off088, %if.then11.for.inc_crit_edge ], [ %spec.select, %team_dev_queue_xmit.exit ], [ %sum_ret.0.off088, %for.body.for.inc_crit_edge ]
  %last.1 = phi ptr [ %last.089, %team_port_txable.exit.for.inc_crit_edge ], [ %cur.091, %if.then13.for.inc_crit_edge ], [ %cur.091, %if.then11.for.inc_crit_edge ], [ %cur.091, %team_dev_queue_xmit.exit ], [ %last.089, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn90 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn90, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool36.not = icmp eq ptr %last.1, null
  br i1 %tobool36.not, label %for.end.if.end47_crit_edge, label %if.then37

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then37:                                        ; preds = %for.end
  %slave_dev_queue_mapping.i74 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %slave_dev_queue_mapping.i74 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %slave_dev_queue_mapping.i74, align 4
  %queue_mapping1.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %18 = ptrtoint ptr %queue_mapping1.i.i75 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %queue_mapping1.i.i75, align 8
  %19 = ptrtoint ptr %last.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %last.1, align 4
  %21 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 8
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #3, !srcloc !33
  %and.i.i.i76 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i76)
  %tobool.i.not.i77 = icmp eq i32 %and.i.i.i76, 0
  br i1 %tobool.i.not.i77, label %if.end.i82, label %if.then.i80, !prof !34

if.then.i80:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %np.i.i78 = getelementptr inbounds %struct.team_port, ptr %last.1, i32 0, i32 11
  %24 = ptrtoint ptr %np.i.i78 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %np.i.i78, align 4
  %call.i.i79 = tail call i32 @netpoll_send_skb(ptr noundef %25, ptr noundef %skb) #3
  br label %team_dev_queue_xmit.exit84

if.end.i82:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i81 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i81)
  %phi.cmp = icmp eq i32 %call4.i81, 0
  br label %team_dev_queue_xmit.exit84

team_dev_queue_xmit.exit84:                       ; preds = %if.end.i82, %if.then.i80
  %retval.0.i83 = phi i1 [ true, %if.then.i80 ], [ %phi.cmp, %if.end.i82 ]
  %spec.select73 = select i1 %sum_ret.2.off0, i1 true, i1 %retval.0.i83
  br label %if.end47

if.end47:                                         ; preds = %team_dev_queue_xmit.exit84, %for.end.if.end47_crit_edge, %do.end.if.end47_crit_edge
  %sum_ret.3.off0 = phi i1 [ %sum_ret.2.off0, %for.end.if.end47_crit_edge ], [ %spec.select73, %team_dev_queue_xmit.exit84 ], [ false, %do.end.if.end47_crit_edge ]
  ret i1 %sum_ret.3.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @team_modeop_port_enter(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_modeop_port_change_dev_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @team_mode_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_team_mode_broadcast__375_68_bc_init_module6, !1, !"__initcall__kmod_team_mode_broadcast__375_68_bc_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 68, i32 1}
!2 = !{ptr @__exitcall_bc_cleanup_module, !3, !"__exitcall_bc_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 69, i32 1}
!4 = !{ptr @__UNIQUE_ID_file376, !5, !"__UNIQUE_ID_file376", i1 false, i1 false}
!5 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 71, i32 1}
!6 = !{ptr @__UNIQUE_ID_license377, !5, !"__UNIQUE_ID_license377", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author378, !8, !"__UNIQUE_ID_author378", i1 false, i1 false}
!8 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 72, i32 1}
!9 = !{ptr @__UNIQUE_ID_description379, !10, !"__UNIQUE_ID_description379", i1 false, i1 false}
!10 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 73, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias380, !12, !"__UNIQUE_ID_alias380", i1 false, i1 false}
!12 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 74, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 52, i32 11}
!15 = !{ptr @bc_mode, !16, !"bc_mode", i1 false, i1 false}
!16 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 51, i32 31}
!17 = !{ptr @bc_mode_ops, !18, !"bc_mode_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 45, i32 35}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../drivers/net/team/team_mode_broadcast.c", i32 23, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i8 0, i8 2}
!33 = !{i64 604707}
!34 = !{!"branch_weights", i32 2000, i32 1}
