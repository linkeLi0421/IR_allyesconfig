; ModuleID = '/llk/IR_all_yes/drivers/net/team/team_mode_roundrobin.c_pt.bc'
source_filename = "../drivers/net/team/team_mode_roundrobin.c"
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
%struct.team_port = type { ptr, %struct.hlist_node, %struct.list_head, ptr, i32, i8, %struct.anon.120, %struct.anon.121, i8, i8, %struct.anon.122, ptr, i32, i16, %struct.list_head, %struct.callback_head, [0 x i32] }
%struct.anon.120 = type { i8, i32, i8 }
%struct.anon.121 = type { i8, i8 }
%struct.anon.122 = type { [32 x i8], i32 }
%struct.callback_head = type { ptr, ptr }
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

@rr_mode = internal constant { %struct.team_mode, [40 x i8] } { %struct.team_mode { ptr @.str, ptr null, i32 4, i32 0, ptr @rr_mode_ops, i32 3 }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_team_mode_roundrobin__373_70_rr_init_module6 = internal global ptr @rr_init_module, section ".initcall6.init", align 4
@__exitcall_rr_cleanup_module = internal global ptr @rr_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file374 = internal constant [64 x i8] c"team_mode_roundrobin.file=drivers/net/team/team_mode_roundrobin\00", section ".modinfo", align 1
@__UNIQUE_ID_license375 = internal constant [36 x i8] c"team_mode_roundrobin.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author376 = internal constant [59 x i8] c"team_mode_roundrobin.author=Jiri Pirko <jpirko@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description377 = internal constant [59 x i8] c"team_mode_roundrobin.description=Round-robin mode for team\00", section ".modinfo", align 1
@__UNIQUE_ID_alias378 = internal constant [48 x i8] c"team_mode_roundrobin.alias=team-mode-roundrobin\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"roundrobin\00", [21 x i8] zeroinitializer }, align 32
@rr_mode_ops = internal constant { %struct.team_mode_ops, [60 x i8] } { %struct.team_mode_ops { ptr null, ptr null, ptr null, ptr @rr_transmit, ptr @team_modeop_port_enter, ptr null, ptr @team_modeop_port_change_dev_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@team_get_port_by_index_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_team.h\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@team_get_first_port_txable_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.3 = private unnamed_addr constant [8 x i8] c"rr_mode\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 52, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 53, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [12 x i8] c"rr_mode_ops\00", align 1
@___asan_gen_.10 = private constant [43 x i8] c"../drivers/net/team/team_mode_roundrobin.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 46, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/if_team.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 275, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias378, ptr @__UNIQUE_ID_author376, ptr @__UNIQUE_ID_description377, ptr @__UNIQUE_ID_file374, ptr @__UNIQUE_ID_license375, ptr @__exitcall_rr_cleanup_module, ptr @__initcall__kmod_team_mode_roundrobin__373_70_rr_init_module6, ptr @rr_cleanup_module, ptr @rr_mode, ptr @.str, ptr @rr_mode_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_mode to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_mode_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rr_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @team_mode_unregister(ptr noundef nonnull @rr_mode) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @team_mode_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @team_mode_register(ptr noundef nonnull @rr_mode) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rr_transmit(ptr noundef %team, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_priv.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 17
  %0 = ptrtoint ptr %mode_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_priv.i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %mode_priv.i, align 4
  %en_port_count1.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 3
  %2 = ptrtoint ptr %en_port_count1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %en_port_count1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.team_num_to_port_index.exit_crit_edge, label %if.end.i, !prof !34

entry.team_num_to_port_index.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %team_num_to_port_index.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %rem.i = urem i32 %1, %3
  br label %team_num_to_port_index.exit

team_num_to_port_index.exit:                      ; preds = %if.end.i, %entry.team_num_to_port_index.exit_crit_edge
  %retval.0.i = phi i32 [ %rem.i, %if.end.i ], [ 0, %entry.team_num_to_port_index.exit_crit_edge ]
  %and.i.i = and i32 %retval.0.i, 15
  %arrayidx.i.i = getelementptr %struct.team, ptr %team, i32 0, i32 4, i32 %and.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i31 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i31, label %land.lhs.true.i, label %team_num_to_port_index.exit.do.end.i_crit_edge

team_num_to_port_index.exit.do.end.i_crit_edge:   ; preds = %team_num_to_port_index.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %team_num_to_port_index.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @team_get_port_by_index_rcu.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @team_get_port_by_index_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 275, ptr noundef nonnull @.str.2) #3
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %team_num_to_port_index.exit.do.end.i_crit_edge
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool11.not.i = icmp eq ptr %5, null
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %tobool13.not4346.i = icmp eq ptr %add.ptr.i, null
  %tobool13.not43.i = or i1 %tobool11.not.i, %tobool13.not4346.i
  br i1 %tobool13.not43.i, label %do.end.i.drop_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.drop_crit_edge:                          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %port.044.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %index.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 4
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %7, %retval.0.i
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 1
  %8 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %hlist.i, align 4
  %tobool23.not.i = icmp eq ptr %9, null
  %add.ptr27.i = getelementptr i8, ptr %9, i32 -4
  %tobool13.not47.i = icmp eq ptr %add.ptr27.i, null
  %tobool13.not.i = or i1 %tobool23.not.i, %tobool13.not47.i
  br i1 %tobool13.not.i, label %for.inc.i.drop_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.drop_crit_edge:                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end:                                           ; preds = %for.body.i
  %linkup.i.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 5
  %10 = ptrtoint ptr %linkup.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %linkup.i.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i, label %if.end.if.end.i32_crit_edge, label %team_port_txable.exit.i, !prof !36

if.end.if.end.i32_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i32

team_port_txable.exit.i:                          ; preds = %if.end
  %index.i.le = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 4
  %12 = ptrtoint ptr %index.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.i.not.i = icmp eq i32 %13, -1
  br i1 %cmp.i.i.not.i, label %team_port_txable.exit.i.if.end.i32_crit_edge, label %team_port_txable.exit.i.if.end17_crit_edge, !prof !34

team_port_txable.exit.i.if.end17_crit_edge:       ; preds = %team_port_txable.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

team_port_txable.exit.i.if.end.i32_crit_edge:     ; preds = %team_port_txable.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i32

if.end.i32:                                       ; preds = %team_port_txable.exit.i.if.end.i32_crit_edge, %if.end.if.end.i32_crit_edge
  %list.i = getelementptr inbounds %struct.team_port, ptr %port.044.i, i32 0, i32 2
  %port_list.i = getelementptr inbounds %struct.team, ptr %team, i32 0, i32 5
  %14 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn89.i = load volatile ptr, ptr %list.i, align 4
  %cmp.not90.i = icmp eq ptr %.pn89.i, %port_list.i
  br i1 %cmp.not90.i, label %if.end.i32.do.body16.i_crit_edge, label %if.end.i32.for.body.i33_crit_edge

if.end.i32.for.body.i33_crit_edge:                ; preds = %if.end.i32
  br label %for.body.i33

if.end.i32.do.body16.i_crit_edge:                 ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

for.body.i33:                                     ; preds = %for.cond.backedge.i.for.body.i33_crit_edge, %if.end.i32.for.body.i33_crit_edge
  %.pn91.i = phi ptr [ %.pn.i, %for.cond.backedge.i.for.body.i33_crit_edge ], [ %.pn89.i, %if.end.i32.for.body.i33_crit_edge ]
  %linkup.i74.i = getelementptr i8, ptr %.pn91.i, i32 16
  %15 = ptrtoint ptr %linkup.i74.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %linkup.i74.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i75.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i75.i, label %for.body.i33.for.cond.backedge.i_crit_edge, label %land.rhs.i78.i

for.body.i33.for.cond.backedge.i_crit_edge:       ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

land.rhs.i78.i:                                   ; preds = %for.body.i33
  %index.i.i76.i = getelementptr i8, ptr %.pn91.i, i32 12
  %17 = ptrtoint ptr %index.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp.i.i77.not.i = icmp eq i32 %18, -1
  br i1 %cmp.i.i77.not.i, label %land.rhs.i78.i.for.cond.backedge.i_crit_edge, label %cleanup.loopexit86.i

land.rhs.i78.i.for.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %land.rhs.i78.i.for.cond.backedge.i_crit_edge, %for.body.i33.for.cond.backedge.i_crit_edge
  %19 = ptrtoint ptr %.pn91.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load volatile ptr, ptr %.pn91.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %port_list.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.do.body16.i_crit_edge, label %for.cond.backedge.i.for.body.i33_crit_edge

for.cond.backedge.i.for.body.i33_crit_edge:       ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i33

for.cond.backedge.i.do.body16.i_crit_edge:        ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body16.i

do.body16.i:                                      ; preds = %for.cond.backedge.i.do.body16.i_crit_edge, %if.end.i32.do.body16.i_crit_edge
  %call17.i = tail call i32 @rcu_read_lock_any_held() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i34, label %do.body16.i.do.end26.i_crit_edge

do.body16.i.do.end26.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end26.i

land.lhs.true.i34:                                ; preds = %do.body16.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true.i34.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true.i34.do.end26.i_crit_edge:           ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true.i34
  %.b73.i = load i1, ptr @team_get_first_port_txable_rcu.__warned, align 1
  br i1 %.b73.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @team_get_first_port_txable_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @.str.2) #3
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true.i34.do.end26.i_crit_edge, %do.body16.i.do.end26.i_crit_edge
  %20 = ptrtoint ptr %port_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn7292.i = load volatile ptr, ptr %port_list.i, align 4
  %cur.193.i = getelementptr i8, ptr %.pn7292.i, i32 -12
  %cmp39.not94.i = icmp eq ptr %.pn7292.i, %port_list.i
  %cmp4195.i = icmp eq ptr %cur.193.i, %port.044.i
  %or.cond96.i = or i1 %cmp39.not94.i, %cmp4195.i
  br i1 %or.cond96.i, label %do.end26.i.drop_crit_edge, label %do.end26.i.if.end43.i_crit_edge

do.end26.i.if.end43.i_crit_edge:                  ; preds = %do.end26.i
  br label %if.end43.i

do.end26.i.drop_crit_edge:                        ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end43.i:                                       ; preds = %for.cond36.backedge.i.if.end43.i_crit_edge, %do.end26.i.if.end43.i_crit_edge
  %cur.198.i = phi ptr [ %cur.1.i, %for.cond36.backedge.i.if.end43.i_crit_edge ], [ %cur.193.i, %do.end26.i.if.end43.i_crit_edge ]
  %.pn7297.i = phi ptr [ %.pn72.i, %for.cond36.backedge.i.if.end43.i_crit_edge ], [ %.pn7292.i, %do.end26.i.if.end43.i_crit_edge ]
  %linkup.i80.i = getelementptr i8, ptr %.pn7297.i, i32 16
  %21 = ptrtoint ptr %linkup.i80.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %linkup.i80.i, align 4, !range !35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i81.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i81.i, label %if.end43.i.for.cond36.backedge.i_crit_edge, label %land.rhs.i84.i

if.end43.i.for.cond36.backedge.i_crit_edge:       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond36.backedge.i

land.rhs.i84.i:                                   ; preds = %if.end43.i
  %index.i.i82.i = getelementptr i8, ptr %.pn7297.i, i32 12
  %23 = ptrtoint ptr %index.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i.i83.not.i = icmp eq i32 %24, -1
  br i1 %cmp.i.i83.not.i, label %land.rhs.i84.i.for.cond36.backedge.i_crit_edge, label %land.rhs.i84.i.team_get_first_port_txable_rcu.exit_crit_edge

land.rhs.i84.i.team_get_first_port_txable_rcu.exit_crit_edge: ; preds = %land.rhs.i84.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %team_get_first_port_txable_rcu.exit

land.rhs.i84.i.for.cond36.backedge.i_crit_edge:   ; preds = %land.rhs.i84.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond36.backedge.i

for.cond36.backedge.i:                            ; preds = %land.rhs.i84.i.for.cond36.backedge.i_crit_edge, %if.end43.i.for.cond36.backedge.i_crit_edge
  %25 = ptrtoint ptr %.pn7297.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn72.i = load volatile ptr, ptr %.pn7297.i, align 4
  %cur.1.i = getelementptr i8, ptr %.pn72.i, i32 -12
  %cmp39.not.i = icmp eq ptr %.pn72.i, %port_list.i
  %cmp41.i = icmp eq ptr %cur.1.i, %port.044.i
  %or.cond.i = or i1 %cmp39.not.i, %cmp41.i
  br i1 %or.cond.i, label %for.cond36.backedge.i.drop_crit_edge, label %for.cond36.backedge.i.if.end43.i_crit_edge

for.cond36.backedge.i.if.end43.i_crit_edge:       ; preds = %for.cond36.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end43.i

for.cond36.backedge.i.drop_crit_edge:             ; preds = %for.cond36.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

cleanup.loopexit86.i:                             ; preds = %land.rhs.i78.i
  call void @__sanitizer_cov_trace_pc() #5
  %cur.0.le.i = getelementptr i8, ptr %.pn91.i, i32 -12
  br label %team_get_first_port_txable_rcu.exit

team_get_first_port_txable_rcu.exit:              ; preds = %cleanup.loopexit86.i, %land.rhs.i84.i.team_get_first_port_txable_rcu.exit_crit_edge
  %retval.0.i35 = phi ptr [ %cur.0.le.i, %cleanup.loopexit86.i ], [ %cur.198.i, %land.rhs.i84.i.team_get_first_port_txable_rcu.exit_crit_edge ]
  %tobool7.not = icmp eq ptr %retval.0.i35, null
  br i1 %tobool7.not, label %team_get_first_port_txable_rcu.exit.drop_crit_edge, label %team_get_first_port_txable_rcu.exit.if.end17_crit_edge, !prof !34

team_get_first_port_txable_rcu.exit.if.end17_crit_edge: ; preds = %team_get_first_port_txable_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

team_get_first_port_txable_rcu.exit.drop_crit_edge: ; preds = %team_get_first_port_txable_rcu.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %drop

if.end17:                                         ; preds = %team_get_first_port_txable_rcu.exit.if.end17_crit_edge, %team_port_txable.exit.i.if.end17_crit_edge
  %retval.0.i3547 = phi ptr [ %retval.0.i35, %team_get_first_port_txable_rcu.exit.if.end17_crit_edge ], [ %port.044.i, %team_port_txable.exit.i.if.end17_crit_edge ]
  %slave_dev_queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %slave_dev_queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %slave_dev_queue_mapping.i, align 4
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %28 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %queue_mapping1.i.i, align 8
  %29 = ptrtoint ptr %retval.0.i3547 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %retval.0.i3547, align 4
  %31 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %31, align 8
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #3, !srcloc !37
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i37, label %if.then.i36, !prof !38

if.then.i36:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %np.i.i = getelementptr inbounds %struct.team_port, ptr %retval.0.i3547, i32 0, i32 11
  %34 = ptrtoint ptr %np.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %np.i.i, align 4
  %call.i.i = tail call i32 @netpoll_send_skb(ptr noundef %35, ptr noundef %skb) #3
  br label %cleanup

if.end.i37:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %call4.i = tail call i32 @dev_queue_xmit(ptr noundef %skb) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %phi.cmp = icmp eq i32 %call4.i, 0
  br label %cleanup

drop:                                             ; preds = %team_get_first_port_txable_rcu.exit.drop_crit_edge, %for.cond36.backedge.i.drop_crit_edge, %do.end26.i.drop_crit_edge, %for.inc.i.drop_crit_edge, %do.end.i.drop_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end.i37, %if.then.i36
  %retval.0 = phi i1 [ false, %drop ], [ true, %if.then.i36 ], [ %phi.cmp, %if.end.i37 ]
  ret i1 %retval.0
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
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netpoll_send_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @team_mode_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_team_mode_roundrobin__373_70_rr_init_module6, !1, !"__initcall__kmod_team_mode_roundrobin__373_70_rr_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 70, i32 1}
!2 = !{ptr @__exitcall_rr_cleanup_module, !3, !"__exitcall_rr_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 71, i32 1}
!4 = !{ptr @__UNIQUE_ID_file374, !5, !"__UNIQUE_ID_file374", i1 false, i1 false}
!5 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 73, i32 1}
!6 = !{ptr @__UNIQUE_ID_license375, !5, !"__UNIQUE_ID_license375", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author376, !8, !"__UNIQUE_ID_author376", i1 false, i1 false}
!8 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 74, i32 1}
!9 = !{ptr @__UNIQUE_ID_description377, !10, !"__UNIQUE_ID_description377", i1 false, i1 false}
!10 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 75, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias378, !12, !"__UNIQUE_ID_alias378", i1 false, i1 false}
!12 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 76, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 53, i32 11}
!15 = !{ptr @rr_mode, !16, !"rr_mode", i1 false, i1 false}
!16 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 52, i32 31}
!17 = !{ptr @rr_mode_ops, !18, !"rr_mode_ops", i1 false, i1 false}
!18 = !{!"../drivers/net/team/team_mode_roundrobin.c", i32 46, i32 35}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/if_team.h", i32 275, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/if_team.h", i32 292, i32 2}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i8 0, i8 2}
!36 = !{!"branch_weights", i32 1073205, i32 2146410443}
!37 = !{i64 604809}
!38 = !{!"branch_weights", i32 2000, i32 1}
