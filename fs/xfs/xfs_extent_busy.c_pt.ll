; ModuleID = '/llk/IR_all_yes/fs/xfs/xfs_extent_busy.c_pt.bc'
source_filename = "../fs/xfs/xfs_extent_busy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.72 }
%struct.atomic_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.xfs_perag = type { ptr, i32, %struct.atomic_t, i8, i8, i8, i8, [3 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.xfs_ag_resv, %struct.xfs_ag_resv, %struct.callback_head, i16, i16, %struct.spinlock, %struct.spinlock, %struct.rb_root, i32, %struct.wait_queue_head, %struct.atomic_t, %struct.spinlock, %struct.xarray, i32, i32, %struct.spinlock, %struct.rhashtable, %struct.delayed_work, %struct.rhashtable }
%struct.xfs_ag_resv = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xfs_extent_busy = type { %struct.rb_node, %struct.list_head, i32, i32, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfs_trans = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xfs_alloc_arg = type { ptr, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, %struct.xfs_owner_info, i32, i8 }
%struct.xfs_owner_info = type { i64, i64, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.xfs_sb = type { i32, i32, i64, i64, i64, %struct.uuid_t, i64, i64, i64, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, [12 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i64, i64, i64, i64, i64, i64, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.uuid_t }
%struct.uuid_t = type { [16 x i8] }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"new->bno + new->length <= busyp->bno\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fs/xfs/xfs_extent_busy.c\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bno >= busyp->bno + busyp->length\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flen > 0\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"*len > 0\00", [23 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_extent_busy = external dso_local global %struct.tracepoint, align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/xfs/xfs_trace.h\00", [45 x i8] zeroinitializer }, align 32
@trace_xfs_extent_busy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_xfs_extent_busy_reuse = external dso_local global %struct.tracepoint, align 4
@trace_xfs_extent_busy_reuse.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_extent_busy_force = external dso_local global %struct.tracepoint, align 4
@trace_xfs_extent_busy_force.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_extent_busy_trim = external dso_local global %struct.tracepoint, align 4
@trace_xfs_extent_busy_trim.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_xfs_extent_busy_clear = external dso_local global %struct.tracepoint, align 4
@trace_xfs_extent_busy_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 53, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 56, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 58, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 283, i32 2 }
@___asan_gen_.25 = private constant [28 x i8] c"../fs/xfs/xfs_extent_busy.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 332, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"../fs/xfs/xfs_trace.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 1653, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_extent_busy_insert(ptr noundef %tp, ptr noundef %pag, i32 noundef %bno, i32 noundef %len, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @kmem_alloc(i32 noundef 36, i32 noundef 16) #7
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %0 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pag_agno, align 4
  %agno = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %agno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %agno, align 4
  %bno1 = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %bno1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bno, ptr %bno1, align 4
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %length, align 4
  %list = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %flags2 = getelementptr inbounds %struct.xfs_extent_busy, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %flags2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %flags, ptr %flags2, align 4
  %t_mountp = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 10
  %8 = ptrtoint ptr %t_mountp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t_mountp, align 4
  %10 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_extent_busy(ptr noundef %9, i32 noundef %10, i32 noundef %bno, i32 noundef %len)
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 27
  %11 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pagb_tree, align 4
  %tobool.not68 = icmp eq ptr %12, null
  br i1 %tobool.not68, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %entry.while.body_crit_edge
  %13 = phi ptr [ %23, %if.end30.while.body_crit_edge ], [ %12, %entry.while.body_crit_edge ]
  %rbp.069 = phi ptr [ %rbp.1, %if.end30.while.body_crit_edge ], [ %pagb_tree, %entry.while.body_crit_edge ]
  %14 = ptrtoint ptr %bno1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bno1, align 4
  %bno5 = getelementptr inbounds %struct.xfs_extent_busy, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %bno5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bno5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp = icmp ult i32 %15, %17
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  %add = add i32 %19, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %17)
  %cmp9.not = icmp ugt i32 %add, %17
  br i1 %cmp9.not, label %cond.false, label %if.then.if.end30_crit_edge, !prof !41

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 53) #7
  br label %if.end30

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp14 = icmp ugt i32 %15, %17
  br i1 %cmp14, label %if.then15, label %if.else29

if.then15:                                        ; preds = %if.else
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  %length17 = getelementptr inbounds %struct.xfs_extent_busy, ptr %13, i32 0, i32 4
  %20 = ptrtoint ptr %length17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length17, align 4
  %add18 = add i32 %21, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %bno)
  %cmp19.not = icmp ugt i32 %add18, %bno
  br i1 %cmp19.not, label %cond.false27, label %if.then15.if.end30_crit_edge, !prof !41

if.then15.if.end30_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

cond.false27:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 56) #7
  br label %if.end30

if.else29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 58) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else29, %cond.false27, %if.then15.if.end30_crit_edge, %cond.false, %if.then.if.end30_crit_edge
  %rbp.1 = phi ptr [ %rb_left, %if.then.if.end30_crit_edge ], [ %rb_left, %cond.false ], [ %rb_right, %if.then15.if.end30_crit_edge ], [ %rb_right, %cond.false27 ], [ %rbp.069, %if.else29 ]
  %22 = ptrtoint ptr %rbp.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rbp.1, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast.le = ptrtoint ptr %13 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %rbp.0.lcssa = phi ptr [ %rbp.1, %while.cond.while.end_crit_edge ], [ %pagb_tree, %entry.while.end_crit_edge ]
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %parent.0.lcssa, ptr %call.i, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %rb_left.i, align 4
  %27 = ptrtoint ptr %rbp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %rbp.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %call.i, ptr noundef %pagb_tree) #7
  %t_busy = getelementptr inbounds %struct.xfs_trans, ptr %tp, i32 0, i32 27
  %28 = ptrtoint ptr %t_busy to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %t_busy, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %t_busy, ptr noundef %29) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_add.exit_crit_edge

while.end.list_add.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %prev1.i.i, align 4
  %31 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %list, align 4
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %t_busy, ptr %prev.i, align 4
  %33 = ptrtoint ptr %t_busy to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %t_busy, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %while.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_extent_busy(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy, i32 0, i32 1), ptr blockaddress(@trace_xfs_extent_busy, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !44
  %call42 = tail call i32 @__traceiter_xfs_extent_busy(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !45
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_extent_busy.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_extent_busy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1653, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @assfail(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xfs_extent_busy_search(ptr nocapture noundef readnone %mp, ptr noundef %pag, i32 noundef %bno, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 27
  %0 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %rbp.036 = load ptr, ptr %pagb_tree, align 4
  %tobool.not37 = icmp eq ptr %rbp.036, null
  br i1 %tobool.not37, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add = add i32 %len, %bno
  br label %while.body

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.body.lr.ph
  %rbp.039 = phi ptr [ %rbp.036, %while.body.lr.ph ], [ %rbp.0, %if.end17.while.body_crit_edge ]
  %match.038 = phi i32 [ 0, %while.body.lr.ph ], [ %match.3, %if.end17.while.body_crit_edge ]
  %bno1 = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.039, i32 0, i32 3
  %1 = ptrtoint ptr %bno1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %bno1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %bno)
  %cmp = icmp ugt i32 %2, %bno
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp3 = icmp ugt i32 %add, %2
  %spec.select = select i1 %cmp3, i32 -1, i32 %match.038
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rbp.039, i32 0, i32 2
  br label %if.end17

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %bno)
  %cmp6 = icmp ult i32 %2, %bno
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.039, i32 0, i32 4
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 4
  br i1 %cmp6, label %if.then7, label %if.else13

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add9 = add i32 %4, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add9, i32 %bno)
  %cmp10 = icmp ugt i32 %add9, %bno
  %spec.select33 = select i1 %cmp10, i32 -1, i32 %match.038
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rbp.039, i32 0, i32 1
  br label %if.end17

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %len)
  %cmp15 = icmp eq i32 %4, %len
  %cond = select i1 %cmp15, i32 1, i32 -1
  br label %while.end

if.end17:                                         ; preds = %if.then7, %if.then
  %match.3 = phi i32 [ %spec.select, %if.then ], [ %spec.select33, %if.then7 ]
  %rbp.1.in = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then7 ]
  %5 = ptrtoint ptr %rbp.1.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %rbp.0 = load ptr, ptr %rbp.1.in, align 4
  %tobool.not = icmp eq ptr %rbp.0, null
  br i1 %tobool.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %if.else13, %entry.while.end_crit_edge
  %match.4 = phi i32 [ %cond, %if.else13 ], [ 0, %entry.while.end_crit_edge ], [ %match.3, %if.end17.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock) #7
  ret i32 %match.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_extent_busy_reuse(ptr noundef %mp, ptr noundef %pag, i32 noundef %fbno, i32 noundef %flen, i1 noundef zeroext %userdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flen)
  %cmp.not = icmp eq i32 %flen, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !41

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 283) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 27
  %add3 = add i32 %flen, %fbno
  %0 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pagb_tree, align 4
  %tobool2.not3032 = icmp eq ptr %1, null
  br i1 %tobool2.not3032, label %cond.end.while.end_crit_edge, label %cond.end.while.body_crit_edge

cond.end.while.body_crit_edge:                    ; preds = %cond.end
  br label %while.body

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

restart.loopexit:                                 ; preds = %if.end7
  %2 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pagb_tree, align 4
  %tobool2.not30 = icmp eq ptr %3, null
  br i1 %tobool2.not30, label %restart.loopexit.while.end_crit_edge, label %restart.loopexit.while.body.backedge_crit_edge

restart.loopexit.while.body.backedge_crit_edge:   ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.backedge

restart.loopexit.while.end_crit_edge:             ; preds = %restart.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.backedge, %cond.end.while.body_crit_edge
  %rbp.031 = phi ptr [ %rbp.031.be, %while.body.backedge ], [ %1, %cond.end.while.body_crit_edge ]
  %bno = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.031, i32 0, i32 3
  %4 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bno, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %5)
  %cmp4.not = icmp ugt i32 %add3, %5
  br i1 %cmp4.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rbp.031, i32 0, i32 2
  br label %cleanup.sink.split

if.else:                                          ; preds = %while.body
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.031, i32 0, i32 4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %add = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %fbno)
  %cmp5.not = icmp ugt i32 %add, %fbno
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rbp.031, i32 0, i32 1
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.else
  %call = tail call fastcc zeroext i1 @xfs_extent_busy_update_extent(ptr noundef %mp, ptr noundef %pag, ptr noundef nonnull %rbp.031, i32 noundef %fbno, i32 noundef %flen, i1 noundef zeroext %userdata)
  br i1 %call, label %if.end7.cleanup_crit_edge, label %restart.loopexit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then6, %if.then
  %rb_right.sink = phi ptr [ %rb_right, %if.then6 ], [ %rb_left, %if.then ]
  %8 = ptrtoint ptr %rb_right.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rb_right.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge
  %rbp.1 = phi ptr [ %rbp.031, %if.end7.cleanup_crit_edge ], [ %9, %cleanup.sink.split ]
  %tobool2.not = icmp eq ptr %rbp.1, null
  br i1 %tobool2.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body.backedge_crit_edge

cleanup.while.body.backedge_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.backedge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.backedge:                              ; preds = %cleanup.while.body.backedge_crit_edge, %restart.loopexit.while.body.backedge_crit_edge
  %rbp.031.be = phi ptr [ %rbp.1, %cleanup.while.body.backedge_crit_edge ], [ %3, %restart.loopexit.while.body.backedge_crit_edge ]
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %restart.loopexit.while.end_crit_edge, %cond.end.while.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock) #7
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xfs_extent_busy_update_extent(ptr noundef %mp, ptr noundef %pag, ptr noundef %busyp, i32 noundef %fbno, i32 noundef %flen, i1 noundef zeroext %userdata) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %flen, %fbno
  %bno = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 3
  %0 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bno, align 4
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 4
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %add1 = add i32 %3, %1
  %flags = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock) #7
  %call.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #7
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %userdata, label %if.end.out_force_log_crit_edge, label %if.end5

if.end.out_force_log_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_force_log

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fbno)
  %cmp = icmp ult i32 %1, %fbno
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %add)
  %cmp6 = icmp ugt i32 %add1, %add
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end5.out_force_log_crit_edge, label %if.else

if.end5.out_force_log_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_force_log

if.else:                                          ; preds = %if.end5
  %or.cond63 = select i1 %cmp, i1 true, i1 %cmp6
  br i1 %or.cond63, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 27
  tail call void @rb_erase(ptr noundef %busyp, ptr noundef %pagb_tree) #7
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %length, align 4
  br label %cleanup

if.else13:                                        ; preds = %if.else
  br i1 %cmp6, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %bno, align 4
  br label %if.end26

if.else17:                                        ; preds = %if.else13
  br i1 %cmp, label %if.then19, label %if.else22

if.then19:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %fbno, %1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %length, align 4
  br label %if.end26

if.else22:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 255) #7
  br label %if.end26

if.end26:                                         ; preds = %if.else22, %if.then19, %if.then15
  %pag_agno = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %9 = ptrtoint ptr %pag_agno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pag_agno, align 4
  tail call fastcc void @trace_xfs_extent_busy_reuse(ptr noundef %mp, i32 noundef %10, i32 noundef %fbno, i32 noundef %flen)
  br label %cleanup

out_force_log:                                    ; preds = %if.end5.out_force_log_crit_edge, %if.end.out_force_log_crit_edge
  %pagb_lock27 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock27) #7
  %call = tail call i32 @xfs_log_force(ptr noundef %mp, i32 noundef 1) #7
  %pag_agno28 = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 1
  %11 = ptrtoint ptr %pag_agno28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pag_agno28, align 4
  tail call fastcc void @trace_xfs_extent_busy_force(ptr noundef %mp, i32 noundef %12, i32 noundef %fbno, i32 noundef %flen)
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock27) #7
  br label %cleanup

cleanup:                                          ; preds = %out_force_log, %if.end26, %if.then11, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %out_force_log ], [ false, %if.then11 ], [ true, %if.end26 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @xfs_extent_busy_trim(ptr nocapture noundef readonly %args, ptr nocapture noundef %bno, ptr nocapture noundef %len, ptr nocapture noundef writeonly %busy_gen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %cond.false, label %entry.cond.end_crit_edge, !prof !41

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @assfail(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 332) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %pag = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 3
  %2 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pag, align 4
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %3, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  %4 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bno, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pag, align 4
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pagb_tree, align 4
  %tobool3.not108 = icmp eq ptr %11, null
  br i1 %tobool3.not108, label %cond.end.out_crit_edge, label %land.rhs.lr.ph

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.rhs.lr.ph:                                   ; preds = %cond.end
  %minlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 7
  %12 = ptrtoint ptr %minlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minlen, align 8
  %maxlen = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 8
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %fbno.0111 = phi i32 [ %5, %land.rhs.lr.ph ], [ %fbno.2, %cleanup.land.rhs_crit_edge ]
  %flen.0110 = phi i32 [ %7, %land.rhs.lr.ph ], [ %flen.1, %cleanup.land.rhs_crit_edge ]
  %rbp.0109 = phi ptr [ %11, %land.rhs.lr.ph ], [ %rbp.1, %cleanup.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %flen.0110, i32 %13)
  %cmp4.not = icmp ult i32 %flen.0110, %13
  br i1 %cmp4.not, label %land.rhs.out_crit_edge, label %while.body

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body:                                       ; preds = %land.rhs
  %add = add i32 %fbno.0111, %flen.0110
  %bno5 = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.0109, i32 0, i32 3
  %14 = ptrtoint ptr %bno5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bno5, align 4
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %rbp.0109, i32 0, i32 4
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %add6 = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp7.not = icmp ugt i32 %add, %15
  br i1 %cmp7.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %rbp.0109, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rb_left, align 4
  br label %cleanup

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %fbno.0111, i32 %add6)
  %cmp8.not = icmp ult i32 %fbno.0111, %add6
  br i1 %cmp8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %rbp.0109, i32 0, i32 1
  %20 = ptrtoint ptr %rb_right to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rb_right, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %fbno.0111)
  %cmp11.not = icmp ugt i32 %15, %fbno.0111
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add6)
  %cmp17.not = icmp ugt i32 %add, %add6
  br i1 %cmp11.not, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.end10
  br i1 %cmp17.not, label %if.then12.if.end37_crit_edge, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then12.if.end37_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else16:                                        ; preds = %if.end10
  br i1 %cmp17.not, label %if.else19, label %if.else16.if.end37_crit_edge

if.else16.if.end37_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else19:                                        ; preds = %if.else16
  %sub = sub i32 %15, %fbno.0111
  %22 = ptrtoint ptr %maxlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %maxlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %23)
  %cmp20.not = icmp ult i32 %sub, %23
  br i1 %cmp20.not, label %if.else22, label %if.else19.if.end37_crit_edge

if.else19.if.end37_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else22:                                        ; preds = %if.else19
  %sub23 = sub i32 %add, %add6
  %mul = shl i32 %23, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub23, i32 %mul)
  %cmp25.not = icmp ult i32 %sub23, %mul
  br i1 %cmp25.not, label %if.else27, label %if.else22.if.end37_crit_edge

if.else22.if.end37_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else27:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %13)
  %cmp30.not = icmp ult i32 %sub, %13
  br i1 %cmp30.not, label %if.else27.out_crit_edge, label %if.else27.if.end37_crit_edge

if.else27.if.end37_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else27.out_crit_edge:                          ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end37:                                         ; preds = %if.else27.if.end37_crit_edge, %if.else22.if.end37_crit_edge, %if.else19.if.end37_crit_edge, %if.else16.if.end37_crit_edge, %if.then12.if.end37_crit_edge
  %fbno.1 = phi i32 [ %add6, %if.then12.if.end37_crit_edge ], [ %fbno.0111, %if.else16.if.end37_crit_edge ], [ %fbno.0111, %if.else19.if.end37_crit_edge ], [ %add6, %if.else22.if.end37_crit_edge ], [ %fbno.0111, %if.else27.if.end37_crit_edge ]
  %fend.0 = phi i32 [ %add, %if.then12.if.end37_crit_edge ], [ %15, %if.else16.if.end37_crit_edge ], [ %15, %if.else19.if.end37_crit_edge ], [ %add, %if.else22.if.end37_crit_edge ], [ %15, %if.else27.if.end37_crit_edge ]
  %sub38 = sub i32 %fend.0, %fbno.1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then9, %if.then
  %rbp.1 = phi ptr [ %19, %if.then ], [ %21, %if.then9 ], [ %rbp.0109, %if.end37 ]
  %flen.1 = phi i32 [ %flen.0110, %if.then ], [ %flen.0110, %if.then9 ], [ %sub38, %if.end37 ]
  %fbno.2 = phi i32 [ %fbno.0111, %if.then ], [ %fbno.0111, %if.then9 ], [ %fbno.1, %if.end37 ]
  %tobool3.not = icmp eq ptr %rbp.1, null
  br i1 %tobool3.not, label %cleanup.out_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.else27.out_crit_edge, %if.then12.out_crit_edge, %land.rhs.out_crit_edge, %cond.end.out_crit_edge
  %fbno.0.lcssa = phi i32 [ %5, %cond.end.out_crit_edge ], [ %fbno.0111, %if.else27.out_crit_edge ], [ %fbno.0111, %if.then12.out_crit_edge ], [ %fbno.0111, %land.rhs.out_crit_edge ], [ %fbno.2, %cleanup.out_crit_edge ]
  %flen.2 = phi i32 [ %7, %cond.end.out_crit_edge ], [ 0, %if.else27.out_crit_edge ], [ 0, %if.then12.out_crit_edge ], [ %flen.0110, %land.rhs.out_crit_edge ], [ %flen.1, %cleanup.out_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %fbno.0.lcssa, i32 %5)
  %cmp42.not = icmp eq i32 %fbno.0.lcssa, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %flen.2, i32 %7)
  %cmp43.not = icmp eq i32 %flen.2, %7
  %or.cond = select i1 %cmp42.not, i1 %cmp43.not, i1 false
  br i1 %or.cond, label %out.cleanup50_crit_edge, label %if.then44

out.cleanup50_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup50

if.then44:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %mp = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %mp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mp, align 4
  %agno = getelementptr inbounds %struct.xfs_alloc_arg, ptr %args, i32 0, i32 5
  %26 = ptrtoint ptr %agno to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %agno, align 8
  tail call fastcc void @trace_xfs_extent_busy_trim(ptr noundef %25, i32 noundef %27, i32 noundef %5, i32 noundef %7, i32 noundef %fbno.0.lcssa, i32 noundef %flen.2)
  %28 = ptrtoint ptr %bno to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %fbno.0.lcssa, ptr %bno, align 4
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %flen.2, ptr %len, align 4
  %30 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pag, align 4
  %pagb_gen = getelementptr inbounds %struct.xfs_perag, ptr %31, i32 0, i32 28
  %32 = ptrtoint ptr %pagb_gen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pagb_gen, align 4
  %34 = ptrtoint ptr %busy_gen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %busy_gen, align 4
  br label %cleanup50

cleanup50:                                        ; preds = %if.then44, %out.cleanup50_crit_edge
  %35 = xor i1 %or.cond, true
  %36 = ptrtoint ptr %pag to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pag, align 4
  %pagb_lock48 = getelementptr inbounds %struct.xfs_perag, ptr %37, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock48) #7
  ret i1 %35
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_extent_busy_trim(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i32 noundef %tbno, i32 noundef %tlen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_trim, i32 0, i32 1), ptr blockaddress(@trace_xfs_extent_busy_trim, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !48
  %call42 = tail call i32 @__traceiter_xfs_extent_busy_trim(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len, i32 noundef %tbno, i32 noundef %tlen) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !49
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_trim, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_trim, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_extent_busy_trim.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_extent_busy_trim.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1687, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_extent_busy_clear(ptr noundef %mp, ptr noundef readonly %list, i1 noundef zeroext %do_discard) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not57 = icmp eq ptr %1, %list
  br i1 %cmp.not57, label %entry.if.end28_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in62 = phi ptr [ %.pn64, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %pag.060 = phi ptr [ %pag.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %agno.059 = phi i32 [ %agno.1, %for.inc.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %wakeup.0.off058 = phi i1 [ %wakeup.2.off0, %for.inc.for.body_crit_edge ], [ false, %entry.for.body_crit_edge ]
  %busyp.063 = getelementptr i8, ptr %.pn.in62, i32 -12
  %2 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn64 = load ptr, ptr %.pn.in62, align 4
  %agno7 = getelementptr i8, ptr %.pn.in62, i32 8
  %3 = ptrtoint ptr %agno7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %agno7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %agno.059)
  %cmp8.not = icmp eq i32 %4, %agno.059
  br i1 %cmp8.not, label %for.body.if.end12_crit_edge, label %if.then

for.body.if.end12_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %pag.060, null
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then9:                                         ; preds = %if.then
  br i1 %wakeup.0.off058, label %if.then.i, label %if.then9.xfs_extent_busy_put_pag.exit_crit_edge

if.then9.xfs_extent_busy_put_pag.exit_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_extent_busy_put_pag.exit

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %pagb_gen.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.060, i32 0, i32 28
  %5 = ptrtoint ptr %pagb_gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pagb_gen.i, align 4
  %inc.i = add i32 %6, 1
  store i32 %inc.i, ptr %pagb_gen.i, align 4
  %pagb_wait.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.060, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %pagb_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %xfs_extent_busy_put_pag.exit

xfs_extent_busy_put_pag.exit:                     ; preds = %if.then.i, %if.then9.xfs_extent_busy_put_pag.exit_crit_edge
  %pagb_lock.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.060, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock.i) #7
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.060) #7
  br label %if.end

if.end:                                           ; preds = %xfs_extent_busy_put_pag.exit, %if.then.if.end_crit_edge
  %7 = ptrtoint ptr %agno7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %agno7, align 4
  %call = tail call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef %8) #7
  %pagb_lock = getelementptr inbounds %struct.xfs_perag, ptr %call, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %pagb_lock) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end, %for.body.if.end12_crit_edge
  %wakeup.1.off0 = phi i1 [ false, %if.end ], [ %wakeup.0.off058, %for.body.if.end12_crit_edge ]
  %agno.1 = phi i32 [ %8, %if.end ], [ %agno.059, %for.body.if.end12_crit_edge ]
  %pag.1 = phi ptr [ %call, %if.end ], [ %pag.060, %for.body.if.end12_crit_edge ]
  br i1 %do_discard, label %land.lhs.true, label %if.end12.if.else_crit_edge

if.end12.if.else_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end12
  %length = getelementptr i8, ptr %.pn.in62, i32 16
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool14.not = icmp eq i32 %10, 0
  br i1 %tobool14.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true15

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true15:                                  ; preds = %land.lhs.true
  %flags = getelementptr i8, ptr %.pn.in62, i32 20
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true15.if.else_crit_edge

land.lhs.true15.if.else_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %flags, align 4
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true15.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end12.if.else_crit_edge
  tail call fastcc void @xfs_extent_busy_clear_one(ptr noundef %mp, ptr noundef %pag.1, ptr noundef %busyp.063)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then17
  %wakeup.2.off0 = phi i1 [ true, %if.else ], [ %wakeup.1.off0, %if.then17 ]
  %cmp.not = icmp eq ptr %.pn64, %list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool25.not = icmp eq ptr %pag.1, null
  br i1 %tobool25.not, label %for.end.if.end28_crit_edge, label %if.then26

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %for.end
  br i1 %wakeup.2.off0, label %if.then.i52, label %if.then26.xfs_extent_busy_put_pag.exit54_crit_edge

if.then26.xfs_extent_busy_put_pag.exit54_crit_edge: ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %xfs_extent_busy_put_pag.exit54

if.then.i52:                                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %pagb_gen.i49 = getelementptr inbounds %struct.xfs_perag, ptr %pag.1, i32 0, i32 28
  %14 = ptrtoint ptr %pagb_gen.i49 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pagb_gen.i49, align 4
  %inc.i50 = add i32 %15, 1
  store i32 %inc.i50, ptr %pagb_gen.i49, align 4
  %pagb_wait.i51 = getelementptr inbounds %struct.xfs_perag, ptr %pag.1, i32 0, i32 29
  tail call void @__wake_up(ptr noundef %pagb_wait.i51, i32 noundef 3, i32 noundef 0, ptr noundef null) #7
  br label %xfs_extent_busy_put_pag.exit54

xfs_extent_busy_put_pag.exit54:                   ; preds = %if.then.i52, %if.then26.xfs_extent_busy_put_pag.exit54_crit_edge
  %pagb_lock.i53 = getelementptr inbounds %struct.xfs_perag, ptr %pag.1, i32 0, i32 26
  tail call void @_raw_spin_unlock(ptr noundef %pagb_lock.i53) #7
  tail call void @xfs_perag_put(ptr noundef nonnull %pag.1) #7
  br label %if.end28

if.end28:                                         ; preds = %xfs_extent_busy_put_pag.exit54, %for.end.if.end28_crit_edge, %entry.if.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfs_perag_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xfs_extent_busy_clear_one(ptr noundef %mp, ptr noundef %pag, ptr noundef %busyp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 4
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %agno = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 2
  %2 = ptrtoint ptr %agno to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agno, align 4
  %bno = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 3
  %4 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bno, align 4
  tail call fastcc void @trace_xfs_extent_busy_clear(ptr noundef %mp, i32 noundef %3, i32 noundef %5, i32 noundef %1)
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 27
  tail call void @rb_erase(ptr noundef %busyp, ptr noundef %pagb_tree) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.xfs_extent_busy, ptr %busyp, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call void @kvfree(ptr noundef %busyp) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_extent_busy_flush(ptr noundef %mp, ptr noundef %pag, i32 noundef %busy_gen) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %call4 = call i32 @xfs_log_force(ptr noundef %mp, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %pagb_wait = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 29
  call void @prepare_to_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait, i32 noundef 258) #7
  %pagb_gen = getelementptr inbounds %struct.xfs_perag, ptr %pag, i32 0, i32 28
  %13 = ptrtoint ptr %pagb_gen to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %pagb_gen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %busy_gen)
  %cmp.not14 = icmp eq i32 %14, %busy_gen
  br i1 %cmp.not14, label %do.body.preheader.if.end7_crit_edge, label %do.body.preheader.do.end9_crit_edge

do.body.preheader.do.end9_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.body.preheader.if.end7_crit_edge:              ; preds = %do.body.preheader
  br label %if.end7

if.end7:                                          ; preds = %if.end7.if.end7_crit_edge, %do.body.preheader.if.end7_crit_edge
  call void @schedule() #7
  call void @prepare_to_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait, i32 noundef 258) #7
  %15 = ptrtoint ptr %pagb_gen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %pagb_gen, align 4
  %cmp.not = icmp eq i32 %16, %busy_gen
  br i1 %cmp.not, label %if.end7.if.end7_crit_edge, label %if.end7.do.end9_crit_edge

if.end7.do.end9_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

if.end7.if.end7_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end9:                                          ; preds = %if.end7.do.end9_crit_edge, %do.body.preheader.do.end9_crit_edge
  call void @finish_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xfs_log_force(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xfs_extent_busy_wait_all(ptr noundef %mp) local_unnamed_addr #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #7
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %call4 = call ptr @xfs_perag_get(ptr noundef %mp, i32 noundef 0) #7
  %cmp.not17 = icmp eq ptr %call4, null
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %do.body.preheader.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.preheader.lr.ph:                          ; preds = %entry
  %sb_agcount = getelementptr inbounds %struct.xfs_sb, ptr %mp, i32 0, i32 12
  br label %do.body.preheader

do.body.preheader:                                ; preds = %xfs_perag_next.exit.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %pag.018 = phi ptr [ %call4, %do.body.preheader.lr.ph ], [ %call.i, %xfs_perag_next.exit.do.body.preheader_crit_edge ]
  %pagb_wait = getelementptr inbounds %struct.xfs_perag, ptr %pag.018, i32 0, i32 29
  call void @prepare_to_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait, i32 noundef 258) #7
  %pagb_tree = getelementptr inbounds %struct.xfs_perag, ptr %pag.018, i32 0, i32 27
  %13 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %pagb_tree, align 4
  %cmp616 = icmp eq ptr %14, null
  br i1 %cmp616, label %do.body.preheader.do.end8_crit_edge, label %do.body.preheader.if.end_crit_edge

do.body.preheader.if.end_crit_edge:               ; preds = %do.body.preheader
  br label %if.end

do.body.preheader.do.end8_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.end:                                           ; preds = %if.end.if.end_crit_edge, %do.body.preheader.if.end_crit_edge
  call void @schedule() #7
  call void @prepare_to_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait, i32 noundef 258) #7
  %15 = ptrtoint ptr %pagb_tree to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %pagb_tree, align 4
  %cmp6 = icmp eq ptr %16, null
  br i1 %cmp6, label %if.end.do.end8_crit_edge, label %if.end.if.end_crit_edge

if.end.if.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

do.end8:                                          ; preds = %if.end.do.end8_crit_edge, %do.body.preheader.do.end8_crit_edge
  call void @finish_wait(ptr noundef %pagb_wait, ptr noundef nonnull %wait) #7
  %17 = ptrtoint ptr %sb_agcount to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sb_agcount, align 8
  %sub = add i32 %18, -1
  %19 = ptrtoint ptr %pag.018 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pag.018, align 4
  %pag_agno.i = getelementptr inbounds %struct.xfs_perag, ptr %pag.018, i32 0, i32 1
  %21 = ptrtoint ptr %pag_agno.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pag_agno.i, align 4
  %add.i = add i32 %22, 1
  call void @xfs_perag_put(ptr noundef nonnull %pag.018) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub)
  %cmp.i = icmp ugt i32 %add.i, %sub
  br i1 %cmp.i, label %do.end8.for.end_crit_edge, label %xfs_perag_next.exit

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

xfs_perag_next.exit:                              ; preds = %do.end8
  %call.i = call ptr @xfs_perag_get(ptr noundef %20, i32 noundef %add.i) #7
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %xfs_perag_next.exit.for.end_crit_edge, label %xfs_perag_next.exit.do.body.preheader_crit_edge

xfs_perag_next.exit.do.body.preheader_crit_edge:  ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.preheader

xfs_perag_next.exit.for.end_crit_edge:            ; preds = %xfs_perag_next.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %xfs_perag_next.exit.for.end_crit_edge, %do.end8.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @xfs_extent_busy_ag_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %l1, ptr nocapture noundef readonly %l2) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %agno = getelementptr i8, ptr %l1, i32 8
  %0 = ptrtoint ptr %agno to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %agno, align 4
  %agno4 = getelementptr i8, ptr %l2, i32 8
  %2 = ptrtoint ptr %agno4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %agno4, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bno = getelementptr i8, ptr %l1, i32 12
  %4 = ptrtoint ptr %bno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bno, align 4
  %bno5 = getelementptr i8, ptr %l2, i32 12
  %6 = ptrtoint ptr %bno5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bno5, align 4
  %sub6 = sub i32 %5, %7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %diff.0 = phi i32 [ %sub, %entry.if.end_crit_edge ], [ %sub6, %if.then ]
  ret i32 %diff.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_alloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_extent_busy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_extent_busy_reuse(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_reuse, i32 0, i32 1), ptr blockaddress(@trace_xfs_extent_busy_reuse, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  %call42 = tail call i32 @__traceiter_xfs_extent_busy_reuse(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_reuse, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_reuse, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_extent_busy_reuse.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_extent_busy_reuse.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1656, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_extent_busy_force(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_force, i32 0, i32 1), ptr blockaddress(@trace_xfs_extent_busy_force, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !52
  %call42 = tail call i32 @__traceiter_xfs_extent_busy_force(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_force, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_force, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_extent_busy_force.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_extent_busy_force.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1655, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_extent_busy_reuse(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_extent_busy_force(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_extent_busy_trim(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfs_perag_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xfs_extent_busy_clear(ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_clear, i32 0, i32 1), ptr blockaddress(@trace_xfs_extent_busy_clear, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !42

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !43

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %call42 = tail call i32 @__traceiter_xfs_extent_busy_clear(ptr noundef null, ptr noundef %mp, i32 noundef %agno, i32 noundef %agbno, i32 noundef %len) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !55
  %13 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !43

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_clear, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xfs_extent_busy_clear, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xfs_extent_busy_clear.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xfs_extent_busy_clear.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 1657, ptr noundef nonnull @.str.7) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !47
  %31 = tail call i32 @llvm.read_register.i32(metadata !31) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xfs_extent_busy_clear(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/xfs/xfs_extent_busy.c", i32 53, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/xfs/xfs_extent_busy.c", i32 56, i32 4}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/xfs/xfs_extent_busy.c", i32 58, i32 4}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/xfs/xfs_extent_busy.c", i32 283, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/xfs/xfs_extent_busy.c", i32 332, i32 2}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../fs/xfs/xfs_trace.h", i32 1653, i32 1}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!15 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../fs/xfs/xfs_trace.h", i32 1656, i32 1}
!21 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/xfs/xfs_trace.h", i32 1655, i32 1}
!24 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../fs/xfs/xfs_trace.h", i32 1659, i32 1}
!27 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../fs/xfs/xfs_trace.h", i32 1657, i32 1}
!30 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2148258950, i64 2148258955, i64 2148258968, i64 2148259012, i64 2148259046, i64 2148259067}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2159841643}
!45 = !{i64 2159841876}
!46 = !{i64 2149961043}
!47 = !{i64 2149962079}
!48 = !{i64 2159936188}
!49 = !{i64 2159936455}
!50 = !{i64 2159899644}
!51 = !{i64 2159899889}
!52 = !{i64 2159877526}
!53 = !{i64 2159877771}
!54 = !{i64 2159917701}
!55 = !{i64 2159917946}
