; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_lru_list.c_pt.bc'
source_filename = "../kernel/bpf/bpf_lru_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bpf_lru = type { %union.anon, ptr, ptr, i32, i32, i8, [111 x i8] }
%union.anon = type { %struct.bpf_common_lru }
%struct.bpf_common_lru = type { %struct.bpf_lru_list, ptr, [124 x i8] }
%struct.bpf_lru_list = type { [3 x %struct.list_head], [2 x i32], ptr, [92 x i8], %struct.raw_spinlock, [84 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_lru_node = type { %struct.list_head, i16, i8, i8 }
%struct.bpf_lru_locallist = type { [2 x %struct.list_head], i16, %struct.raw_spinlock }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__bpf_lru_node_move_to_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/bpf/bpf_lru_list.c\00", [38 x i8] zeroinitializer }, align 32
@__bpf_lru_node_move.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__bpf_lru_node_move_in.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_common_lru_push_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_common_lru_push_free.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_lru_list_push_free.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@bpf_lru_list_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&l->lock\00", [23 x i8] zeroinitializer }, align 32
@bpf_lru_locallist_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&loc_l->lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 66, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 643, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private constant [29 x i8] c"../kernel/bpf/bpf_lru_list.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 628, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @.str, ptr @bpf_lru_list_init.__key, ptr @.str.4, ptr @bpf_lru_locallist_init.__key, ptr @.str.5], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lru_list_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_lru_locallist_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @bpf_lru_pop_free(ptr noundef %lru, i32 noundef %hash) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 5
  %0 = ptrtoint ptr %percpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %percpu, align 16, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %and.i.i5 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i5 to ptr
  %cpu1.i6 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i6, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lru, align 128
  %8 = ptrtoint ptr %7 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, %8
  %11 = inttoptr i32 %add.i to ptr
  %lock.i = getelementptr inbounds %struct.bpf_lru_list, ptr %11, i32 0, i32 4
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  tail call fastcc void @__bpf_lru_list_rotate(ptr noundef %lru, ptr noundef %11) #5
  %arrayidx8.i = getelementptr [3 x %struct.list_head], ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx8.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %arrayidx8.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__bpf_lru_list_shrink(ptr noundef %lru, ptr noundef %11, i32 noundef 4, ptr noundef %arrayidx8.i, i32 noundef 2) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %14 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %arrayidx8.i, align 4
  %cmp.i40.not.i = icmp eq ptr %15, %arrayidx8.i
  br i1 %cmp.i40.not.i, label %if.end.i.bpf_percpu_lru_pop_free.exit_crit_edge, label %if.then13.i

if.end.i.bpf_percpu_lru_pop_free.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_percpu_lru_pop_free.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %hash_offset.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 3
  %16 = ptrtoint ptr %hash_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash_offset.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %hash, ptr %add.ptr15.i, align 4
  %ref.i = getelementptr inbounds %struct.bpf_lru_node, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %ref.i, align 1
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %11, ptr noundef %15, i32 noundef 1) #5
  br label %bpf_percpu_lru_pop_free.exit

bpf_percpu_lru_pop_free.exit:                     ; preds = %if.then13.i, %if.end.i.bpf_percpu_lru_pop_free.exit_crit_edge
  %node.0.i = phi ptr [ null, %if.end.i.bpf_percpu_lru_pop_free.exit_crit_edge ], [ %15, %if.then13.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #5
  br label %return

if.else:                                          ; preds = %entry
  %local_list.i = getelementptr inbounds %struct.bpf_common_lru, ptr %lru, i32 0, i32 1
  %20 = ptrtoint ptr %local_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %local_list.i, align 128
  %22 = ptrtoint ptr %21 to i32
  %arrayidx.i7 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %23 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i7, align 4
  %add.i8 = add i32 %24, %22
  %25 = inttoptr i32 %add.i8 to ptr
  %lock.i9 = getelementptr inbounds %struct.bpf_lru_locallist, ptr %25, i32 0, i32 2
  %call5.i10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i9) #5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %25, align 4
  %cmp.not.i.i = icmp eq ptr %27, %25
  %tobool.not.i189.i = icmp eq ptr %27, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not.i189.i
  br i1 %tobool.not.i.i, label %if.then.i11, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.else
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %27) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.if.then11.i_crit_edge

if.then.i.i.if.then11.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %if.then11.i

if.then.i11:                                      ; preds = %if.else
  %lock.i.i = getelementptr inbounds %struct.bpf_lru_list, ptr %lru, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #5
  %arrayidx.i.i.i.i = getelementptr [2 x %struct.list_head], ptr %25, i32 0, i32 1
  %prev.i.i134.i = getelementptr [2 x %struct.list_head], ptr %25, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i134.i, align 4
  %cmp.not44.i.i.i = icmp eq ptr %35, %arrayidx.i.i.i.i
  br i1 %cmp.not44.i.i.i, label %if.then.i11.__local_list_flush.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.then.i11.__local_list_flush.exit.i.i_crit_edge: ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %__local_list_flush.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.then.i11
  %arrayidx.i.i.i.i.i = getelementptr %struct.bpf_lru_list, ptr %lru, i32 0, i32 1, i32 0
  %arrayidx.i.i28.i.i.i = getelementptr %struct.bpf_lru_list, ptr %lru, i32 0, i32 1, i32 1
  %arrayidx.i31.i.i.i = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %node.045.i.i.i = phi ptr [ %35, %for.body.lr.ph.i.i.i ], [ %tmp_node.049.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %tmp_node.0.in48.i.i.i = getelementptr inbounds %struct.list_head, ptr %node.045.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %tmp_node.0.in48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %tmp_node.049.i.i.i = load ptr, ptr %tmp_node.0.in48.i.i.i, align 4
  %ref.i.i.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.045.i.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %ref.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ref.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not.i.i.i = icmp eq i8 %38, 0
  %type.i22.i.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.045.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %type.i22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type.i22.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp.i23.i.i.i = icmp ult i8 %40, 3
  br i1 %tobool.i.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  br i1 %cmp.i23.i.i.i, label %land.rhs.i.i.i.i, label %lor.lhs.false.critedge.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i.i.i
  %.b111.i.i.i.i = load i1, ptr @__bpf_lru_node_move_in.__already_done, align 1
  br i1 %.b111.i.i.i.i, label %land.rhs.i.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !34

land.rhs.i.i.i.i.for.inc.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__bpf_lru_node_move_in.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #5
  br label %for.inc.i.i.i

lor.lhs.false.critedge.i.i.i.i:                   ; preds = %if.then.i.i.i
  %41 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %inc.i.i.i.i.i = add i32 %42, 1
  store i32 %inc.i.i.i.i.i, ptr %arrayidx.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %type.i22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %type.i22.i.i.i, align 2
  %44 = ptrtoint ptr %ref.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ref.i.i.i.i, align 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.045.i.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %lor.lhs.false.critedge.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge

lor.lhs.false.critedge.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge: ; preds = %lor.lhs.false.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %lor.lhs.false.critedge.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %tmp_node.0.in48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tmp_node.0.in48.i.i.i, align 4
  %47 = ptrtoint ptr %node.045.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %node.045.i.i.i, align 4
  %prev1.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %__list_del_entry.exit.i.i.i.i.i

__list_del_entry.exit.i.i.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %lor.lhs.false.critedge.i.i.i.i.__list_del_entry.exit.i.i.i.i.i_crit_edge
  %51 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lru, align 4
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.045.i.i.i, ptr noundef %lru, ptr noundef %52) #5
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.i.i.for.inc.i.i.i_crit_edge

__list_del_entry.exit.i.i.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %__list_del_entry.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %node.045.i.i.i, ptr %prev1.i.i2.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %node.045.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %node.045.i.i.i, align 4
  %55 = ptrtoint ptr %tmp_node.0.in48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %lru, ptr %tmp_node.0.in48.i.i.i, align 4
  %56 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %node.045.i.i.i, ptr %lru, align 4
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i.i.i
  br i1 %cmp.i23.i.i.i, label %land.rhs.i25.i.i.i, label %lor.lhs.false.critedge.i27.i.i.i

land.rhs.i25.i.i.i:                               ; preds = %if.else.i.i.i
  %.b111.i24.i.i.i = load i1, ptr @__bpf_lru_node_move_in.__already_done, align 1
  br i1 %.b111.i24.i.i.i, label %land.rhs.i25.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i26.i.i.i, !prof !34

land.rhs.i25.i.i.i.for.inc.i.i.i_crit_edge:       ; preds = %land.rhs.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.then.i26.i.i.i:                                ; preds = %land.rhs.i25.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__bpf_lru_node_move_in.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #5
  br label %for.inc.i.i.i

lor.lhs.false.critedge.i27.i.i.i:                 ; preds = %if.else.i.i.i
  %57 = ptrtoint ptr %arrayidx.i.i28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i28.i.i.i, align 4
  %inc.i.i29.i.i.i = add i32 %58, 1
  store i32 %inc.i.i29.i.i.i, ptr %arrayidx.i.i28.i.i.i, align 4
  %59 = ptrtoint ptr %type.i22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %type.i22.i.i.i, align 2
  %60 = ptrtoint ptr %ref.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %ref.i.i.i.i, align 1
  %call.i.i.i32.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.045.i.i.i) #5
  br i1 %call.i.i.i32.i.i.i, label %if.end.i.i.i35.i.i.i, label %lor.lhs.false.critedge.i27.i.i.i.__list_del_entry.exit.i.i37.i.i.i_crit_edge

lor.lhs.false.critedge.i27.i.i.i.__list_del_entry.exit.i.i37.i.i.i_crit_edge: ; preds = %lor.lhs.false.critedge.i27.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i37.i.i.i

if.end.i.i.i35.i.i.i:                             ; preds = %lor.lhs.false.critedge.i27.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %tmp_node.0.in48.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tmp_node.0.in48.i.i.i, align 4
  %63 = ptrtoint ptr %node.045.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node.045.i.i.i, align 4
  %prev1.i.i.i.i34.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i.i34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev1.i.i.i.i34.i.i.i, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %64, ptr %62, align 4
  br label %__list_del_entry.exit.i.i37.i.i.i

__list_del_entry.exit.i.i37.i.i.i:                ; preds = %if.end.i.i.i35.i.i.i, %lor.lhs.false.critedge.i27.i.i.i.__list_del_entry.exit.i.i37.i.i.i_crit_edge
  %67 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i31.i.i.i, align 4
  %call.i.i.i.i36.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.045.i.i.i, ptr noundef %arrayidx.i31.i.i.i, ptr noundef %68) #5
  br i1 %call.i.i.i.i36.i.i.i, label %if.end.i.i.i.i40.i.i.i, label %__list_del_entry.exit.i.i37.i.i.i.for.inc.i.i.i_crit_edge

__list_del_entry.exit.i.i37.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.end.i.i.i.i40.i.i.i:                           ; preds = %__list_del_entry.exit.i.i37.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i38.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i2.i.i38.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %node.045.i.i.i, ptr %prev1.i.i2.i.i38.i.i.i, align 4
  %70 = ptrtoint ptr %node.045.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %68, ptr %node.045.i.i.i, align 4
  %71 = ptrtoint ptr %tmp_node.0.in48.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx.i31.i.i.i, ptr %tmp_node.0.in48.i.i.i, align 4
  %72 = ptrtoint ptr %arrayidx.i31.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %node.045.i.i.i, ptr %arrayidx.i31.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i.i40.i.i.i, %__list_del_entry.exit.i.i37.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i26.i.i.i, %land.rhs.i25.i.i.i.for.inc.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.i, %__list_del_entry.exit.i.i.i.i.i.for.inc.i.i.i_crit_edge, %if.then.i.i.i.i, %land.rhs.i.i.i.i.for.inc.i.i.i_crit_edge
  %cmp.not.i.i.i = icmp eq ptr %tmp_node.049.i.i.i, %arrayidx.i.i.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.__local_list_flush.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

for.inc.i.i.i.__local_list_flush.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__local_list_flush.exit.i.i

__local_list_flush.exit.i.i:                      ; preds = %for.inc.i.i.i.__local_list_flush.exit.i.i_crit_edge, %if.then.i11.__local_list_flush.exit.i.i_crit_edge
  tail call fastcc void @__bpf_lru_list_rotate(ptr noundef %lru, ptr noundef %lru) #5
  %arrayidx.i.i = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i, align 16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %__local_list_flush.exit.i.i
  %nfree.0.i.i = phi i32 [ 0, %__local_list_flush.exit.i.i ], [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %node.0.i.i = phi ptr [ %74, %__local_list_flush.exit.i.i ], [ %tmp_node.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %cmp.not.i135.i = icmp eq ptr %node.0.i.i, %arrayidx.i.i
  br i1 %cmp.not.i135.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %75 = ptrtoint ptr %node.0.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %tmp_node.0.i.i = load ptr, ptr %node.0.i.i, align 4
  tail call fastcc void @__bpf_lru_node_move_to_free(ptr noundef %lru, ptr noundef %node.0.i.i, ptr noundef %25, i32 noundef 3) #5
  %inc.i.i = add nuw nsw i32 %nfree.0.i.i, 1
  %cmp8.i.i = icmp eq i32 %inc.i.i, 128
  br i1 %cmp8.i.i, label %for.body.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.body.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_lru_list_pop_free_to_local.exit.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %nfree.0.i.i)
  %cmp14.i.i = icmp ult i32 %nfree.0.i.i, 128
  br i1 %cmp14.i.i, label %if.then15.i.i, label %for.end.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge

for.end.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_lru_list_pop_free_to_local.exit.i

if.then15.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub nuw nsw i32 128, %nfree.0.i.i
  tail call fastcc void @__bpf_lru_list_shrink(ptr noundef %lru, ptr noundef %lru, i32 noundef %sub.i.i, ptr noundef %25, i32 noundef 3) #5
  br label %bpf_lru_list_pop_free_to_local.exit.i

bpf_lru_list_pop_free_to_local.exit.i:            ; preds = %if.then15.i.i, %for.end.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge, %for.body.i.i.bpf_lru_list_pop_free_to_local.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i) #5
  %76 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %25, align 4
  %cmp.not.i136.i = icmp eq ptr %77, %25
  %tobool.not.i138190.i = icmp eq ptr %77, null
  %tobool.not.i138.i = or i1 %cmp.not.i136.i, %tobool.not.i138190.i
  br i1 %tobool.not.i138.i, label %if.end24.critedge.i, label %if.then.i140.i

if.then.i140.i:                                   ; preds = %bpf_lru_list_pop_free_to_local.exit.i
  %call.i.i.i139.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %77) #5
  br i1 %call.i.i.i139.i, label %if.end.i.i.i143.i, label %if.then.i140.i.if.then11.i_crit_edge

if.then.i140.i.if.then11.i_crit_edge:             ; preds = %if.then.i140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

if.end.i.i.i143.i:                                ; preds = %if.then.i140.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i141.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i.i141.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i141.i, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %77, align 4
  %prev1.i.i.i.i142.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev1.i.i.i.i142.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev1.i.i.i.i142.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %81, ptr %79, align 4
  br label %if.then11.i

if.then11.i:                                      ; preds = %if.end.i.i.i143.i, %if.then.i140.i.if.then11.i_crit_edge, %if.end.i.i.i.i, %if.then.i.i.if.then11.i_crit_edge
  %.sink204.i = phi ptr [ %27, %if.then.i.i.if.then11.i_crit_edge ], [ %27, %if.end.i.i.i.i ], [ %77, %if.end.i.i.i143.i ], [ %77, %if.then.i140.i.if.then11.i_crit_edge ]
  %84 = ptrtoint ptr %.sink204.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr inttoptr (i32 256 to ptr), ptr %.sink204.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.sink204.i, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %hash_offset.i.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 3
  %86 = ptrtoint ptr %hash_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %hash_offset.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %.sink204.i, i32 %87
  %88 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %hash, ptr %add.ptr.i.i, align 4
  %conv.i.i = trunc i32 %5 to i16
  %cpu1.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %.sink204.i, i32 0, i32 1
  %89 = ptrtoint ptr %cpu1.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i.i, ptr %cpu1.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %.sink204.i, i32 0, i32 2
  %90 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %type.i.i, align 2
  %ref.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %.sink204.i, i32 0, i32 3
  %91 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %ref.i.i, align 1
  %arrayidx.i.i.i = getelementptr [2 x %struct.list_head], ptr %25, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i147.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %.sink204.i, ptr noundef %arrayidx.i.i.i, ptr noundef %93) #5
  br i1 %call.i.i.i147.i, label %if.end.i.i.i148.i, label %if.then11.i.cleanup.sink.split.i_crit_edge

if.then11.i.cleanup.sink.split.i_crit_edge:       ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i.i148.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %.sink204.i, ptr %prev1.i.i.i.i, align 4
  %95 = ptrtoint ptr %.sink204.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %.sink204.i, align 4
  %96 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %arrayidx.i.i.i, ptr %prev.i.i.i, align 4
  %97 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %.sink204.i, ptr %arrayidx.i.i.i, align 4
  br label %cleanup.sink.split.i

if.end24.critedge.i:                              ; preds = %bpf_lru_list_pop_free_to_local.exit.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i9, i32 noundef %call5.i10) #5
  %next_steal.i = getelementptr inbounds %struct.bpf_lru_locallist, ptr %25, i32 0, i32 1
  %98 = ptrtoint ptr %next_steal.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %next_steal.i, align 4
  %conv25.i = zext i16 %99 to i32
  %del_from_htab.i.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 1
  %del_arg.i.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 2
  br label %do.body26.i

do.body26.i:                                      ; preds = %get_next_cpu.exit.i.do.body26.i_crit_edge, %if.end24.critedge.i
  %steal.0.i = phi i32 [ %conv25.i, %if.end24.critedge.i ], [ %cpu.addr.0.i.i, %get_next_cpu.exit.i.do.body26.i_crit_edge ]
  %100 = ptrtoint ptr %local_list.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %local_list.i, align 128
  %102 = ptrtoint ptr %101 to i32
  %arrayidx35.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %steal.0.i
  %103 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx35.i, align 4
  %add36.i = add i32 %104, %102
  %105 = inttoptr i32 %add36.i to ptr
  %lock43.i = getelementptr inbounds %struct.bpf_lru_locallist, ptr %105, i32 0, i32 2
  %call44.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock43.i) #5
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile ptr, ptr %105, align 4
  %cmp.not.i149.i = icmp eq ptr %107, %105
  %tobool.not.i151191.i = icmp eq ptr %107, null
  %tobool.not.i151.i = or i1 %cmp.not.i149.i, %tobool.not.i151191.i
  br i1 %tobool.not.i151.i, label %if.then49.i, label %if.then.i153.i

if.then.i153.i:                                   ; preds = %do.body26.i
  %call.i.i.i152.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %107) #5
  br i1 %call.i.i.i152.i, label %if.end.i.i.i156.i, label %if.then.i153.i.do.body52.sink.split.i_crit_edge

if.then.i153.i.do.body52.sink.split.i_crit_edge:  ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52.sink.split.i

if.end.i.i.i156.i:                                ; preds = %if.then.i153.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i154.i = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i.i154.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i154.i, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %prev1.i.i.i.i155.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i155.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %do.body52.sink.split.i

if.then49.i:                                      ; preds = %do.body26.i
  %arrayidx.i.i160.i = getelementptr [2 x %struct.list_head], ptr %105, i32 0, i32 1
  %node.0.in25.i.i = getelementptr [2 x %struct.list_head], ptr %105, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %node.0.in25.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %node.026.i.i = load ptr, ptr %node.0.in25.i.i, align 4
  %cmp.not27.i.i = icmp eq ptr %node.026.i.i, %arrayidx.i.i160.i
  br i1 %cmp.not27.i.i, label %if.then49.i.for.end.i171.i_crit_edge, label %if.then49.i.for.body.i161.i_crit_edge

if.then49.i.for.body.i161.i_crit_edge:            ; preds = %if.then49.i
  br label %for.body.i161.i

if.then49.i.for.end.i171.i_crit_edge:             ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i171.i

for.body.i161.i:                                  ; preds = %for.inc.i.i.for.body.i161.i_crit_edge, %if.then49.i.for.body.i161.i_crit_edge
  %node.028.i.i = phi ptr [ %node.0.i169.i, %for.inc.i.i.for.body.i161.i_crit_edge ], [ %node.026.i.i, %if.then49.i.for.body.i161.i_crit_edge ]
  %ref.i.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.028.i.i, i32 0, i32 3
  %115 = ptrtoint ptr %ref.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %ref.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.i.not.i.i = icmp eq i8 %116, 0
  br i1 %tobool.i.not.i.i, label %land.lhs.true.i.i, label %for.body.i161.i.for.inc.i.i_crit_edge

for.body.i161.i.for.inc.i.i_crit_edge:            ; preds = %for.body.i161.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i161.i
  %117 = ptrtoint ptr %del_from_htab.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %del_from_htab.i.i, align 128
  %119 = ptrtoint ptr %del_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %del_arg.i.i, align 4
  %call3.i.i = tail call zeroext i1 %118(ptr noundef %120, ptr noundef %node.028.i.i) #5
  br i1 %call3.i.i, label %land.lhs.true.i.i.if.then.i163.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i.if.then.i163.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i163.i

if.then.i163.i:                                   ; preds = %land.lhs.true.1.i.i.if.then.i163.i_crit_edge, %land.lhs.true.i.i.if.then.i163.i_crit_edge
  %node.028.lcssa.i.i = phi ptr [ %node.028.1.i.i, %land.lhs.true.1.i.i.if.then.i163.i_crit_edge ], [ %node.028.i.i, %land.lhs.true.i.i.if.then.i163.i_crit_edge ]
  %call.i.i.i162.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.028.lcssa.i.i) #5
  br i1 %call.i.i.i162.i, label %if.end.i.i.i166.i, label %if.then.i163.i.do.body52.sink.split.i_crit_edge

if.then.i163.i.do.body52.sink.split.i_crit_edge:  ; preds = %if.then.i163.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52.sink.split.i

if.end.i.i.i166.i:                                ; preds = %if.then.i163.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i164.i = getelementptr inbounds %struct.list_head, ptr %node.028.lcssa.i.i, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %prev.i.i.i164.i, align 4
  %123 = ptrtoint ptr %node.028.lcssa.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %node.028.lcssa.i.i, align 4
  %prev1.i.i.i.i165.i = getelementptr inbounds %struct.list_head, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %prev1.i.i.i.i165.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %122, ptr %prev1.i.i.i.i165.i, align 4
  %126 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile ptr %124, ptr %122, align 4
  br label %do.body52.sink.split.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i161.i.for.inc.i.i_crit_edge
  %node.0.in.i.i = getelementptr inbounds %struct.list_head, ptr %node.028.i.i, i32 0, i32 1
  %127 = ptrtoint ptr %node.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %node.0.i169.i = load ptr, ptr %node.0.in.i.i, align 4
  %cmp.not.i170.i = icmp eq ptr %node.0.i169.i, %arrayidx.i.i160.i
  br i1 %cmp.not.i170.i, label %for.inc.i.i.for.end.i171.i_crit_edge, label %for.inc.i.i.for.body.i161.i_crit_edge

for.inc.i.i.for.body.i161.i_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i161.i

for.inc.i.i.for.end.i171.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i171.i

for.end.i171.i:                                   ; preds = %for.inc.i.i.for.end.i171.i_crit_edge, %if.then49.i.for.end.i171.i_crit_edge
  %128 = ptrtoint ptr %node.0.in25.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %node.026.1.i.i = load ptr, ptr %node.0.in25.i.i, align 4
  %cmp.not27.1.i.i = icmp eq ptr %node.026.1.i.i, %arrayidx.i.i160.i
  br i1 %cmp.not27.1.i.i, label %for.end.i171.i.do.body52.i_crit_edge, label %for.end.i171.i.land.lhs.true.1.i.i_crit_edge

for.end.i171.i.land.lhs.true.1.i.i_crit_edge:     ; preds = %for.end.i171.i
  br label %land.lhs.true.1.i.i

for.end.i171.i.do.body52.i_crit_edge:             ; preds = %for.end.i171.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.1.i.i.land.lhs.true.1.i.i_crit_edge, %for.end.i171.i.land.lhs.true.1.i.i_crit_edge
  %node.028.1.i.i = phi ptr [ %node.0.1.i.i, %for.inc.1.i.i.land.lhs.true.1.i.i_crit_edge ], [ %node.026.1.i.i, %for.end.i171.i.land.lhs.true.1.i.i_crit_edge ]
  %129 = ptrtoint ptr %del_from_htab.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %del_from_htab.i.i, align 128
  %131 = ptrtoint ptr %del_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %del_arg.i.i, align 4
  %call3.1.i.i = tail call zeroext i1 %130(ptr noundef %132, ptr noundef %node.028.1.i.i) #5
  br i1 %call3.1.i.i, label %land.lhs.true.1.i.i.if.then.i163.i_crit_edge, label %for.inc.1.i.i

land.lhs.true.1.i.i.if.then.i163.i_crit_edge:     ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i163.i

for.inc.1.i.i:                                    ; preds = %land.lhs.true.1.i.i
  %node.0.in.1.i.i = getelementptr inbounds %struct.list_head, ptr %node.028.1.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %node.0.in.1.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %node.0.1.i.i = load ptr, ptr %node.0.in.1.i.i, align 4
  %cmp.not.1.i.i = icmp eq ptr %node.0.1.i.i, %arrayidx.i.i160.i
  br i1 %cmp.not.1.i.i, label %for.inc.1.i.i.do.body52.i_crit_edge, label %for.inc.1.i.i.land.lhs.true.1.i.i_crit_edge

for.inc.1.i.i.land.lhs.true.1.i.i_crit_edge:      ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.1.i.i

for.inc.1.i.i.do.body52.i_crit_edge:              ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body52.i

do.body52.sink.split.i:                           ; preds = %if.end.i.i.i166.i, %if.then.i163.i.do.body52.sink.split.i_crit_edge, %if.end.i.i.i156.i, %if.then.i153.i.do.body52.sink.split.i_crit_edge
  %node.028.lcssa.i.sink205.i = phi ptr [ %107, %if.then.i153.i.do.body52.sink.split.i_crit_edge ], [ %107, %if.end.i.i.i156.i ], [ %node.028.lcssa.i.i, %if.end.i.i.i166.i ], [ %node.028.lcssa.i.i, %if.then.i163.i.do.body52.sink.split.i_crit_edge ]
  %134 = ptrtoint ptr %node.028.lcssa.i.sink205.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 256 to ptr), ptr %node.028.lcssa.i.sink205.i, align 4
  %prev.i.i167.i = getelementptr inbounds %struct.list_head, ptr %node.028.lcssa.i.sink205.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i167.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i167.i, align 4
  br label %do.body52.i

do.body52.i:                                      ; preds = %do.body52.sink.split.i, %for.inc.1.i.i.do.body52.i_crit_edge, %for.end.i171.i.do.body52.i_crit_edge
  %node.1.i = phi ptr [ null, %for.end.i171.i.do.body52.i_crit_edge ], [ %node.028.lcssa.i.sink205.i, %do.body52.sink.split.i ], [ null, %for.inc.1.i.i.do.body52.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock43.i, i32 noundef %call44.i) #5
  %call.i.i = tail call i32 @cpumask_next(i32 noundef %steal.0.i, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %136 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %136)
  %cmp.not.i172.i = icmp ult i32 %call.i.i, %136
  br i1 %cmp.not.i172.i, label %do.body52.i.get_next_cpu.exit.i_crit_edge, label %if.then.i173.i

do.body52.i.get_next_cpu.exit.i_crit_edge:        ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_next_cpu.exit.i

if.then.i173.i:                                   ; preds = %do.body52.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %136) #5
  br label %get_next_cpu.exit.i

get_next_cpu.exit.i:                              ; preds = %if.then.i173.i, %do.body52.i.get_next_cpu.exit.i_crit_edge
  %cpu.addr.0.i.i = phi i32 [ %call.i.i.i, %if.then.i173.i ], [ %call.i.i, %do.body52.i.get_next_cpu.exit.i_crit_edge ]
  %tobool63.not.i = icmp eq ptr %node.1.i, null
  %tobool63.not.not.i = xor i1 %tobool63.not.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %cpu.addr.0.i.i, i32 %conv25.i)
  %cmp64.not.i = icmp eq i32 %cpu.addr.0.i.i, %conv25.i
  %or.cond.i = select i1 %tobool63.not.not.i, i1 true, i1 %cmp64.not.i
  br i1 %or.cond.i, label %do.end66.i, label %get_next_cpu.exit.i.do.body26.i_crit_edge

get_next_cpu.exit.i.do.body26.i_crit_edge:        ; preds = %get_next_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26.i

do.end66.i:                                       ; preds = %get_next_cpu.exit.i
  %conv67.i = trunc i32 %cpu.addr.0.i.i to i16
  %137 = ptrtoint ptr %next_steal.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv67.i, ptr %next_steal.i, align 4
  br i1 %tobool63.not.i, label %do.end66.i.return_crit_edge, label %do.body71.i

do.end66.i.return_crit_edge:                      ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body71.i:                                      ; preds = %do.end66.i
  %call78.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i9) #5
  %hash_offset.i174.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 3
  %138 = ptrtoint ptr %hash_offset.i174.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %hash_offset.i174.i, align 8
  %add.ptr.i175.i = getelementptr i8, ptr %node.1.i, i32 %139
  %140 = ptrtoint ptr %add.ptr.i175.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %hash, ptr %add.ptr.i175.i, align 4
  %conv.i176.i = trunc i32 %5 to i16
  %cpu1.i177.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.1.i, i32 0, i32 1
  %141 = ptrtoint ptr %cpu1.i177.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i176.i, ptr %cpu1.i177.i, align 4
  %type.i178.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.1.i, i32 0, i32 2
  %142 = ptrtoint ptr %type.i178.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 4, ptr %type.i178.i, align 2
  %ref.i179.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.1.i, i32 0, i32 3
  %143 = ptrtoint ptr %ref.i179.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 0, ptr %ref.i179.i, align 1
  %144 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %call.i.i.i181.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %node.1.i, ptr noundef %arrayidx.i.i.i.i, ptr noundef %145) #5
  br i1 %call.i.i.i181.i, label %if.end.i.i.i184.i, label %do.body71.i.cleanup.sink.split.i_crit_edge

do.body71.i.cleanup.sink.split.i_crit_edge:       ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i.i.i184.i:                                ; preds = %do.body71.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i182.i = getelementptr inbounds %struct.list_head, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %prev1.i.i.i182.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %node.1.i, ptr %prev1.i.i.i182.i, align 4
  %147 = ptrtoint ptr %node.1.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %145, ptr %node.1.i, align 4
  %prev3.i.i.i183.i = getelementptr inbounds %struct.list_head, ptr %node.1.i, i32 0, i32 1
  %148 = ptrtoint ptr %prev3.i.i.i183.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %arrayidx.i.i.i.i, ptr %prev3.i.i.i183.i, align 4
  %149 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %node.1.i, ptr %arrayidx.i.i.i.i, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.i.i184.i, %do.body71.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.i148.i, %if.then11.i.cleanup.sink.split.i_crit_edge
  %call78.sink.i = phi i32 [ %call5.i10, %if.then11.i.cleanup.sink.split.i_crit_edge ], [ %call5.i10, %if.end.i.i.i148.i ], [ %call78.i, %do.body71.i.cleanup.sink.split.i_crit_edge ], [ %call78.i, %if.end.i.i.i184.i ]
  %retval.0.ph.i = phi ptr [ %.sink204.i, %if.then11.i.cleanup.sink.split.i_crit_edge ], [ %.sink204.i, %if.end.i.i.i148.i ], [ %node.1.i, %do.body71.i.cleanup.sink.split.i_crit_edge ], [ %node.1.i, %if.end.i.i.i184.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i9, i32 noundef %call78.sink.i) #5
  br label %return

return:                                           ; preds = %cleanup.sink.split.i, %do.end66.i.return_crit_edge, %bpf_percpu_lru_pop_free.exit
  %retval.0 = phi ptr [ %node.0.i, %bpf_percpu_lru_pop_free.exit ], [ null, %do.end66.i.return_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_lru_push_free(ptr noundef %lru, ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 5
  %0 = ptrtoint ptr %percpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %percpu, align 16, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lru, align 128
  %4 = ptrtoint ptr %3 to i32
  %cpu.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 1
  %5 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cpu.i, align 4
  %idxprom.i = zext i16 %6 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %idxprom.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %8, %4
  %9 = inttoptr i32 %add.i to ptr
  %lock.i = getelementptr inbounds %struct.bpf_lru_list, ptr %9, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #5
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %9, ptr noundef %node, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %type.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %type.i, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.else.check_lru_list.i_crit_edge [
    i8 2, label %land.rhs.i
    i8 3, label %land.rhs53.i
    i8 4, label %if.then105.i
  ]

if.else.check_lru_list.i_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %check_lru_list.i

land.rhs.i:                                       ; preds = %if.else
  %.b172.i = load i1, ptr @bpf_common_lru_push_free.__already_done, align 1
  br i1 %.b172.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !34

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bpf_common_lru_push_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 508, i32 noundef 9, ptr noundef null) #5
  br label %if.end

land.rhs53.i:                                     ; preds = %if.else
  %.b170171.i = load i1, ptr @bpf_common_lru_push_free.__already_done.3, align 1
  br i1 %.b170171.i, label %land.rhs53.i.if.end_crit_edge, label %if.then64.i, !prof !34

land.rhs53.i.if.end_crit_edge:                    ; preds = %land.rhs53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then64.i:                                      ; preds = %land.rhs53.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bpf_common_lru_push_free.__already_done.3, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.then105.i:                                     ; preds = %if.else
  %local_list.i = getelementptr inbounds %struct.bpf_common_lru, ptr %lru, i32 0, i32 1
  %13 = ptrtoint ptr %local_list.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %local_list.i, align 128
  %15 = ptrtoint ptr %14 to i32
  %cpu.i4 = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 1
  %16 = ptrtoint ptr %cpu.i4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cpu.i4, align 4
  %idxprom.i5 = zext i16 %17 to i32
  %arrayidx.i6 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %idxprom.i5
  %18 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i6, align 4
  %add.i7 = add i32 %19, %15
  %20 = inttoptr i32 %add.i7 to ptr
  %lock.i8 = getelementptr inbounds %struct.bpf_lru_locallist, ptr %20, i32 0, i32 2
  %call.i9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i8) #5
  %21 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp119.not.i = icmp eq i8 %22, 4
  br i1 %cmp119.not.i, label %if.end137.i, label %do.body128.i, !prof !34

do.body128.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8, i32 noundef %call.i9) #5
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr.i = load i8, ptr %type.i, align 2
  br label %check_lru_list.i

if.end137.i:                                      ; preds = %if.then105.i
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %type.i, align 2
  %ref.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 3
  %25 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ref.i, align 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end137.i.__list_del_entry.exit.i.i_crit_edge

if.end137.i.__list_del_entry.exit.i.i_crit_edge:  ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end137.i.__list_del_entry.exit.i.i_crit_edge
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %20, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %20, ptr noundef %33) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_move.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node, ptr %prev1.i.i2.i.i, align 4
  %35 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %33, ptr %node, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %20, ptr %prev3.i.i.i.i, align 4
  %37 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %node, ptr %20, align 4
  br label %list_move.exit.i

list_move.exit.i:                                 ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i8, i32 noundef %call.i9) #5
  br label %if.end

check_lru_list.i:                                 ; preds = %do.body128.i, %if.else.check_lru_list.i_crit_edge
  %38 = phi i8 [ %11, %if.else.check_lru_list.i_crit_edge ], [ %.pr.i, %do.body128.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %38)
  %cmp.i.i = icmp ugt i8 %38, 2
  br i1 %cmp.i.i, label %land.rhs.i.i, label %do.body40.i.i

land.rhs.i.i:                                     ; preds = %check_lru_list.i
  %.b60.i.i = load i1, ptr @bpf_lru_list_push_free.__already_done, align 1
  br i1 %.b60.i.i, label %land.rhs.i.i.if.end_crit_edge, label %if.then.i.i, !prof !34

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @bpf_lru_list_push_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 310, i32 noundef 9, ptr noundef null) #5
  br label %if.end

do.body40.i.i:                                    ; preds = %check_lru_list.i
  call void @__sanitizer_cov_trace_pc() #7
  %lock.i.i = getelementptr inbounds %struct.bpf_lru_list, ptr %lru, i32 0, i32 4
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #5
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %lru, ptr noundef %node, i32 noundef 2) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call.i.i) #5
  br label %if.end

if.end:                                           ; preds = %do.body40.i.i, %if.then.i.i, %land.rhs.i.i.if.end_crit_edge, %list_move.exit.i, %if.then64.i, %land.rhs53.i.if.end_crit_edge, %if.then.i, %land.rhs.i.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_lru_populate(ptr noundef %lru, ptr noundef %buf, i32 noundef %node_offset, i32 noundef %elem_size, i32 noundef %nr_elems) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 5
  %0 = ptrtoint ptr %percpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %percpu, align 16, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %2) #5
  %div.i = udiv i32 %nr_elems, %call4.i.i.i
  %call125.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call125.i, i32 %3)
  %cmp26.i = icmp ult i32 %call125.i, %3
  br i1 %cmp26.i, label %if.end.i.i.i.for.body.i_crit_edge, label %if.end.i.i.i.if.end_crit_edge

if.end.i.i.i.if.end_crit_edge:                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.i.i.for.body.i_crit_edge:                ; preds = %if.end.i.i.i
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %if.end.i
  %call1.i = tail call i32 @cpumask_next(i32 noundef %call129.i, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call1.i, %4
  br i1 %cmp.i, label %for.cond.loopexit.i.for.body.i_crit_edge, label %for.cond.loopexit.i.if.end_crit_edge

for.cond.loopexit.i.if.end_crit_edge:             ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %if.end.i.i.i.for.body.i_crit_edge
  %call129.i = phi i32 [ %call1.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %call125.i, %if.end.i.i.i.for.body.i_crit_edge ]
  %buf.addr.028.i = phi ptr [ %add.ptr5.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ %buf, %if.end.i.i.i.for.body.i_crit_edge ]
  %i.027.i = phi i32 [ %inc.i, %for.cond.loopexit.i.for.body.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lru, align 128
  %7 = ptrtoint ptr %6 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call129.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %7
  %10 = inttoptr i32 %add.i to ptr
  %conv.i = trunc i32 %call129.i to i16
  %arrayidx4.i = getelementptr [3 x %struct.list_head], ptr %10, i32 0, i32 2
  br label %again.i

again.i:                                          ; preds = %if.end.i.again.i_crit_edge, %for.body.i
  %i.1.i = phi i32 [ %i.027.i, %for.body.i ], [ %inc.i, %if.end.i.again.i_crit_edge ]
  %buf.addr.1.i = phi ptr [ %buf.addr.028.i, %for.body.i ], [ %add.ptr5.i, %if.end.i.again.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf.addr.1.i, i32 %node_offset
  %cpu3.i = getelementptr inbounds %struct.bpf_lru_node, ptr %add.ptr.i, i32 0, i32 1
  %11 = ptrtoint ptr %cpu3.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %cpu3.i, align 4
  %type.i = getelementptr inbounds %struct.bpf_lru_node, ptr %add.ptr.i, i32 0, i32 2
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %type.i, align 2
  %ref.i = getelementptr inbounds %struct.bpf_lru_node, ptr %add.ptr.i, i32 0, i32 3
  %13 = ptrtoint ptr %ref.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ref.i, align 1
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i, ptr noundef %arrayidx4.i, ptr noundef %15) #5
  br i1 %call.i.i.i, label %if.end.i.i20.i, label %again.i.list_add.exit.i_crit_edge

again.i.list_add.exit.i_crit_edge:                ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i20.i:                                   ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %add.ptr.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx4.i, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %add.ptr.i, ptr %arrayidx4.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i20.i, %again.i.list_add.exit.i_crit_edge
  %inc.i = add i32 %i.1.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %nr_elems)
  %cmp6.i = icmp eq i32 %inc.i, %nr_elems
  br i1 %cmp6.i, label %list_add.exit.i.if.end_crit_edge, label %if.end.i

list_add.exit.i.if.end_crit_edge:                 ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i:                                         ; preds = %list_add.exit.i
  %add.ptr5.i = getelementptr i8, ptr %buf.addr.1.i, i32 %elem_size
  %rem.i = urem i32 %inc.i, %div.i
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %for.cond.loopexit.i, label %if.end.i.again.i_crit_edge

if.end.i.again.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %again.i

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elems)
  %cmp6.not.i = icmp eq i32 %nr_elems, 0
  br i1 %cmp6.not.i, label %if.else.if.end_crit_edge, label %for.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.else
  %arrayidx.i7 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 2
  br label %for.body.i12

for.body.i12:                                     ; preds = %list_add.exit.i17.for.body.i12_crit_edge, %for.body.lr.ph.i
  %buf.addr.08.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr1.i, %list_add.exit.i17.for.body.i12_crit_edge ]
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i16, %list_add.exit.i17.for.body.i12_crit_edge ]
  %add.ptr.i8 = getelementptr i8, ptr %buf.addr.08.i, i32 %node_offset
  %type.i9 = getelementptr inbounds %struct.bpf_lru_node, ptr %add.ptr.i8, i32 0, i32 2
  %20 = ptrtoint ptr %type.i9 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %type.i9, align 2
  %ref.i10 = getelementptr inbounds %struct.bpf_lru_node, ptr %add.ptr.i8, i32 0, i32 3
  %21 = ptrtoint ptr %ref.i10 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %ref.i10, align 1
  %22 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i7, align 4
  %call.i.i.i11 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i8, ptr noundef %arrayidx.i7, ptr noundef %23) #5
  br i1 %call.i.i.i11, label %if.end.i.i.i15, label %for.body.i12.list_add.exit.i17_crit_edge

for.body.i12.list_add.exit.i17_crit_edge:         ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i17

if.end.i.i.i15:                                   ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i13 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr.i8, ptr %prev1.i.i.i13, align 4
  %25 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %add.ptr.i8, align 4
  %prev3.i.i.i14 = getelementptr inbounds %struct.list_head, ptr %add.ptr.i8, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i7, ptr %prev3.i.i.i14, align 4
  %27 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %add.ptr.i8, ptr %arrayidx.i7, align 4
  br label %list_add.exit.i17

list_add.exit.i17:                                ; preds = %if.end.i.i.i15, %for.body.i12.list_add.exit.i17_crit_edge
  %add.ptr1.i = getelementptr i8, ptr %buf.addr.08.i, i32 %elem_size
  %inc.i16 = add nuw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i16, %nr_elems
  br i1 %exitcond.not.i, label %list_add.exit.i17.if.end_crit_edge, label %list_add.exit.i17.for.body.i12_crit_edge

list_add.exit.i17.for.body.i12_crit_edge:         ; preds = %list_add.exit.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i12

list_add.exit.i17.if.end_crit_edge:               ; preds = %list_add.exit.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %list_add.exit.i17.if.end_crit_edge, %if.else.if.end_crit_edge, %list_add.exit.i.if.end_crit_edge, %for.cond.loopexit.i.if.end_crit_edge, %if.end.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpf_lru_init(ptr noundef %lru, i1 noundef zeroext %percpu, i32 noundef %hash_offset, ptr noundef %del_from_htab, ptr noundef %del_arg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %percpu to i8
  br i1 %percpu, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 256, i32 noundef 128) #9
  %0 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %lru, align 128
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup33_crit_edge, label %for.cond.preheader

if.then.cleanup33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

for.cond.preheader:                               ; preds = %if.then
  %call368 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call368, i32 %1)
  %cmp69 = icmp ult i32 %call368, %1
  br i1 %cmp69, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end26_crit_edge

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call370 = phi i32 [ %call3, %for.body.for.body_crit_edge ], [ %call368, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %lru to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lru, align 128
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call370
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %7, align 4
  %prev.i.i = getelementptr [3 x %struct.list_head], ptr %7, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %prev.i.i, align 4
  %arrayidx.1.i = getelementptr [3 x %struct.list_head], ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr [3 x %struct.list_head], ptr %7, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %arrayidx.2.i = getelementptr [3 x %struct.list_head], ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr [3 x %struct.list_head], ptr %7, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %uglygep.i = getelementptr i8, ptr %7, i32 24
  %14 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %uglygep.i, align 4
  %next_inactive_rotation.i = getelementptr inbounds %struct.bpf_lru_list, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %next_inactive_rotation.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.1.i, ptr %next_inactive_rotation.i, align 32
  %lock.i = getelementptr inbounds %struct.bpf_lru_list, ptr %7, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @bpf_lru_list_init.__key, i16 noundef signext 2) #5
  %call3 = tail call i32 @cpumask_next(i32 noundef %call370, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.else:                                          ; preds = %entry
  %call5 = tail call noalias ptr @__alloc_percpu(i32 noundef 64, i32 noundef 4) #9
  %local_list = getelementptr inbounds %struct.bpf_common_lru, ptr %lru, i32 0, i32 1
  %17 = ptrtoint ptr %local_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5, ptr %local_list, align 128
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.else.cleanup33_crit_edge, label %for.cond10.preheader

if.else.cleanup33_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup33

for.cond10.preheader:                             ; preds = %if.else
  %call1165 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1165, i32 %18)
  %cmp1266 = icmp ult i32 %call1165, %18
  br i1 %cmp1266, label %for.cond10.preheader.for.body13_crit_edge, label %for.cond10.preheader.for.end24_crit_edge

for.cond10.preheader.for.end24_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24

for.cond10.preheader.for.body13_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond10.preheader.for.body13_crit_edge
  %call1167 = phi i32 [ %call11, %for.body13.for.body13_crit_edge ], [ %call1165, %for.cond10.preheader.for.body13_crit_edge ]
  %19 = ptrtoint ptr %local_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %local_list, align 128
  %21 = ptrtoint ptr %20 to i32
  %arrayidx22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1167
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx22, align 4
  %add23 = add i32 %23, %21
  %24 = inttoptr i32 %add23 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %24, align 4
  %prev.i.i53 = getelementptr [2 x %struct.list_head], ptr %24, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i53 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev.i.i53, align 4
  %arrayidx.1.i54 = getelementptr [2 x %struct.list_head], ptr %24, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.1.i54, ptr %arrayidx.1.i54, align 4
  %prev.i.1.i55 = getelementptr [2 x %struct.list_head], ptr %24, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.1.i55 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.1.i54, ptr %prev.i.1.i55, align 4
  %conv.i = trunc i32 %call1167 to i16
  %next_steal.i = getelementptr inbounds %struct.bpf_lru_locallist, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %next_steal.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %next_steal.i, align 4
  %lock.i56 = getelementptr inbounds %struct.bpf_lru_locallist, ptr %24, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i56, ptr noundef nonnull @.str.5, ptr noundef nonnull @bpf_lru_locallist_init.__key, i16 noundef signext 2) #5
  %call11 = tail call i32 @cpumask_next(i32 noundef %call1167, ptr noundef nonnull @__cpu_possible_mask) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp12 = icmp ult i32 %call11, %30
  br i1 %cmp12, label %for.body13.for.body13_crit_edge, label %for.body13.for.end24_crit_edge

for.body13.for.end24_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end24

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

for.end24:                                        ; preds = %for.body13.for.end24_crit_edge, %for.cond10.preheader.for.end24_crit_edge
  %31 = ptrtoint ptr %lru to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %lru, ptr %lru, align 4
  %prev.i.i57 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %lru, ptr %prev.i.i57, align 4
  %arrayidx.1.i58 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %arrayidx.1.i58, ptr %arrayidx.1.i58, align 4
  %prev.i.1.i59 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %prev.i.1.i59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx.1.i58, ptr %prev.i.1.i59, align 4
  %arrayidx.2.i60 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx.2.i60 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %arrayidx.2.i60, ptr %arrayidx.2.i60, align 4
  %prev.i.2.i61 = getelementptr [3 x %struct.list_head], ptr %lru, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i.2.i61 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx.2.i60, ptr %prev.i.2.i61, align 4
  %uglygep.i62 = getelementptr i8, ptr %lru, i32 24
  %37 = ptrtoint ptr %uglygep.i62 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 0, ptr %uglygep.i62, align 4
  %next_inactive_rotation.i63 = getelementptr inbounds %struct.bpf_lru_list, ptr %lru, i32 0, i32 2
  %38 = ptrtoint ptr %next_inactive_rotation.i63 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.1.i58, ptr %next_inactive_rotation.i63, align 32
  %lock.i64 = getelementptr inbounds %struct.bpf_lru_list, ptr %lru, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i64, ptr noundef nonnull @.str.4, ptr noundef nonnull @bpf_lru_list_init.__key, i16 noundef signext 2) #5
  br label %if.end26

if.end26:                                         ; preds = %for.end24, %for.body.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge
  %.sink = phi i32 [ 128, %for.end24 ], [ 4, %for.cond.preheader.if.end26_crit_edge ], [ 4, %for.body.if.end26_crit_edge ]
  %nr_scans25 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 4
  %39 = ptrtoint ptr %nr_scans25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %nr_scans25, align 4
  %percpu28 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 5
  %40 = ptrtoint ptr %percpu28 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool, ptr %percpu28, align 16
  %del_from_htab30 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 1
  %41 = ptrtoint ptr %del_from_htab30 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %del_from_htab, ptr %del_from_htab30, align 128
  %del_arg31 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 2
  %42 = ptrtoint ptr %del_arg31 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %del_arg, ptr %del_arg31, align 4
  %hash_offset32 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 3
  %43 = ptrtoint ptr %hash_offset32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %hash_offset, ptr %hash_offset32, align 8
  br label %cleanup33

cleanup33:                                        ; preds = %if.end26, %if.else.cleanup33_crit_edge, %if.then.cleanup33_crit_edge
  %retval.1 = phi i32 [ 0, %if.end26 ], [ -12, %if.then.cleanup33_crit_edge ], [ -12, %if.else.cleanup33_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_lru_destroy(ptr nocapture noundef readonly %lru) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %percpu = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 5
  %0 = ptrtoint ptr %percpu to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %percpu, align 16, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %local_list = getelementptr inbounds %struct.bpf_common_lru, ptr %lru, i32 0, i32 1
  %local_list.sink = select i1 %tobool.not, ptr %local_list, ptr %lru
  %2 = ptrtoint ptr %local_list.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_list.sink, align 128
  tail call void @free_percpu(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bpf_lru_list_rotate(ptr nocapture noundef readonly %lru, ptr noundef %l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counts.i = getelementptr inbounds %struct.bpf_lru_list, ptr %l, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.bpf_lru_list, ptr %l, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %2 = ptrtoint ptr %counts.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %counts.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i = icmp ult i32 %1, %3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %l, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %l, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %nr_scans.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then
  %i.0.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.cond.i_crit_edge ]
  %node.0.i = phi ptr [ %7, %if.then ], [ %tmp_node.0.i, %for.body.i.for.cond.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %node.0.i, %l
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %tmp_node.0.in.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %tmp_node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp_node.0.i = load ptr, ptr %tmp_node.0.in.i, align 4
  %ref.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ref.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.i.not.i = icmp eq i8 %10, 0
  %..i = zext i1 %tobool.i.not.i to i32
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %l, ptr noundef %node.0.i, i32 noundef %..i) #5
  %inc.i = add i32 %i.0.i, 1
  %11 = ptrtoint ptr %nr_scans.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_scans.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %12)
  %cmp9.i = icmp eq i32 %inc.i, %12
  %cmp10.i = icmp eq ptr %node.0.i, %5
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i4 = getelementptr [3 x %struct.list_head], ptr %l, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %arrayidx.i4, align 4
  %cmp.i.not.i = icmp eq ptr %14, %arrayidx.i4
  br i1 %cmp.i.not.i, label %if.end.__bpf_lru_list_rotate_inactive.exit_crit_edge, label %if.end.i

if.end.__bpf_lru_list_rotate_inactive.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__bpf_lru_list_rotate_inactive.exit

if.end.i:                                         ; preds = %if.end
  %next_inactive_rotation.i = getelementptr inbounds %struct.bpf_lru_list, ptr %l, i32 0, i32 2
  %15 = ptrtoint ptr %next_inactive_rotation.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %next_inactive_rotation.i, align 32
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %cmp.i5 = icmp eq ptr %18, %arrayidx.i4
  %spec.select = select i1 %cmp.i5, ptr %14, ptr %18
  %nr_scans.i6 = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 4
  %19 = ptrtoint ptr %nr_scans.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_scans.i6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp645.not.i = icmp eq i32 %20, 0
  br i1 %cmp645.not.i, label %if.end.i.while.end.i_crit_edge, label %while.body.lr.ph.preheader.i

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.lr.ph.preheader.i:                     ; preds = %if.end.i
  %prev.i7 = getelementptr [3 x %struct.list_head], ptr %l, i32 0, i32 1, i32 1
  br label %while.body.lr.ph.i

while.cond.outer.i:                               ; preds = %if.end13.i
  %inc.i8 = add nuw i32 %i.0.ph47.i, 1
  %21 = ptrtoint ptr %nr_scans.i6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_scans.i6, align 4
  %cmp6.i = icmp ult i32 %inc.i8, %22
  br i1 %cmp6.i, label %while.cond.outer.i.while.body.lr.ph.i_crit_edge, label %while.cond.outer.i.while.end.i_crit_edge

while.cond.outer.i.while.end.i_crit_edge:         ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.cond.outer.i.while.body.lr.ph.i_crit_edge:  ; preds = %while.cond.outer.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.outer.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.preheader.i
  %cur.0.ph48.i = phi ptr [ %26, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ %16, %while.body.lr.ph.preheader.i ]
  %i.0.ph47.i = phi i32 [ %inc.i8, %while.cond.outer.i.while.body.lr.ph.i_crit_edge ], [ 0, %while.body.lr.ph.preheader.i ]
  %cmp7.i11 = icmp eq ptr %cur.0.ph48.i, %arrayidx.i4
  br i1 %cmp7.i11, label %if.then8.i.lr.ph, label %while.body.lr.ph.i.if.end9.i_crit_edge

while.body.lr.ph.i.if.end9.i_crit_edge:           ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then8.i.lr.ph:                                 ; preds = %while.body.lr.ph.i
  %23 = ptrtoint ptr %prev.i7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i7, align 4
  %cmp7.i = icmp eq ptr %24, %arrayidx.i4
  br i1 %cmp7.i, label %if.then8.i.lr.ph.if.then8.i_crit_edge, label %if.then8.i.lr.ph.if.end9.i_crit_edge

if.then8.i.lr.ph.if.end9.i_crit_edge:             ; preds = %if.then8.i.lr.ph
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then8.i.lr.ph.if.then8.i_crit_edge:            ; preds = %if.then8.i.lr.ph
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.then8.i, %if.then8.i.lr.ph.if.then8.i_crit_edge
  br label %if.then8.i

if.end9.i:                                        ; preds = %if.then8.i.lr.ph.if.end9.i_crit_edge, %while.body.lr.ph.i.if.end9.i_crit_edge
  %cur.043.i.lcssa = phi ptr [ %cur.0.ph48.i, %while.body.lr.ph.i.if.end9.i_crit_edge ], [ %24, %if.then8.i.lr.ph.if.end9.i_crit_edge ]
  %prev10.i = getelementptr inbounds %struct.list_head, ptr %cur.043.i.lcssa, i32 0, i32 1
  %25 = ptrtoint ptr %prev10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev10.i, align 4
  %ref.i.i9 = getelementptr inbounds %struct.bpf_lru_node, ptr %cur.043.i.lcssa, i32 0, i32 3
  %27 = ptrtoint ptr %ref.i.i9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ref.i.i9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.i.not.i10 = icmp eq i8 %28, 0
  br i1 %tobool.i.not.i10, label %if.end9.i.if.end13.i_crit_edge, label %if.then12.i

if.end9.i.if.end13.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %l, ptr noundef %cur.043.i.lcssa, i32 noundef 0) #5
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end9.i.if.end13.i_crit_edge
  %cmp14.i = icmp eq ptr %cur.043.i.lcssa, %spec.select
  br i1 %cmp14.i, label %if.end13.i.while.end.i_crit_edge, label %while.cond.outer.i

if.end13.i.while.end.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %if.end13.i.while.end.i_crit_edge, %while.cond.outer.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge
  %next.1.i = phi ptr [ %arrayidx.i4, %if.end.i.while.end.i_crit_edge ], [ %26, %while.cond.outer.i.while.end.i_crit_edge ], [ %26, %if.end13.i.while.end.i_crit_edge ]
  %29 = ptrtoint ptr %next_inactive_rotation.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %next.1.i, ptr %next_inactive_rotation.i, align 32
  br label %__bpf_lru_list_rotate_inactive.exit

__bpf_lru_list_rotate_inactive.exit:              ; preds = %while.end.i, %if.end.__bpf_lru_list_rotate_inactive.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bpf_lru_list_shrink(ptr nocapture noundef readonly %lru, ptr noundef %l, i32 noundef %tgt_nshrink, ptr noundef %free_list, i32 noundef %tgt_free_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [3 x %struct.list_head], ptr %l, i32 0, i32 1
  %prev.i = getelementptr [3 x %struct.list_head], ptr %l, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %del_from_htab.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 1
  %del_arg.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 2
  %nr_scans.i = getelementptr inbounds %struct.bpf_lru, ptr %lru, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end11.i.for.cond.i_crit_edge, %entry
  %i.0.i = phi i32 [ 0, %entry ], [ %inc12.i, %if.end11.i.for.cond.i_crit_edge ]
  %nshrinked.0.i = phi i32 [ 0, %entry ], [ %nshrinked.1.i, %if.end11.i.for.cond.i_crit_edge ]
  %node.0.i = phi ptr [ %1, %entry ], [ %tmp_node.0.i, %if.end11.i.for.cond.i_crit_edge ]
  %tmp_node.0.in.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %tmp_node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_node.0.i = load ptr, ptr %tmp_node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %arrayidx.i
  br i1 %cmp.not.i, label %for.cond.i.__bpf_lru_list_shrink_inactive.exit_crit_edge, label %for.body.i

for.cond.i.__bpf_lru_list_shrink_inactive.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__bpf_lru_list_shrink_inactive.exit

for.body.i:                                       ; preds = %for.cond.i
  %ref.i.i = getelementptr inbounds %struct.bpf_lru_node, ptr %node.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %ref.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ref.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not.i = icmp eq i8 %4, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__bpf_lru_node_move(ptr noundef %l, ptr noundef %node.0.i, i32 noundef 0) #5
  br label %if.end11.i

if.else.i:                                        ; preds = %for.body.i
  %5 = ptrtoint ptr %del_from_htab.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %del_from_htab.i, align 128
  %7 = ptrtoint ptr %del_arg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %del_arg.i, align 4
  %call6.i = tail call zeroext i1 %6(ptr noundef %8, ptr noundef %node.0.i) #5
  br i1 %call6.i, label %if.then7.i, label %if.else.i.if.end11.i_crit_edge

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.else.i
  tail call fastcc void @__bpf_lru_node_move_to_free(ptr noundef %l, ptr noundef %node.0.i, ptr noundef %free_list, i32 noundef %tgt_free_type) #5
  %inc.i = add i32 %nshrinked.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %tgt_nshrink)
  %cmp8.i = icmp eq i32 %inc.i, %tgt_nshrink
  br i1 %cmp8.i, label %if.then7.i.__bpf_lru_list_shrink_inactive.exit_crit_edge, label %if.then7.i.if.end11.i_crit_edge

if.then7.i.if.end11.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then7.i.__bpf_lru_list_shrink_inactive.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__bpf_lru_list_shrink_inactive.exit

if.end11.i:                                       ; preds = %if.then7.i.if.end11.i_crit_edge, %if.else.i.if.end11.i_crit_edge, %if.then.i
  %nshrinked.1.i = phi i32 [ %nshrinked.0.i, %if.then.i ], [ %inc.i, %if.then7.i.if.end11.i_crit_edge ], [ %nshrinked.0.i, %if.else.i.if.end11.i_crit_edge ]
  %inc12.i = add i32 %i.0.i, 1
  %9 = ptrtoint ptr %nr_scans.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_scans.i, align 4
  %cmp13.i = icmp eq i32 %inc12.i, %10
  br i1 %cmp13.i, label %if.end11.i.__bpf_lru_list_shrink_inactive.exit_crit_edge, label %if.end11.i.for.cond.i_crit_edge

if.end11.i.for.cond.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

if.end11.i.__bpf_lru_list_shrink_inactive.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__bpf_lru_list_shrink_inactive.exit

__bpf_lru_list_shrink_inactive.exit:              ; preds = %if.end11.i.__bpf_lru_list_shrink_inactive.exit_crit_edge, %if.then7.i.__bpf_lru_list_shrink_inactive.exit_crit_edge, %for.cond.i.__bpf_lru_list_shrink_inactive.exit_crit_edge
  %nshrinked.2.i = phi i32 [ %nshrinked.1.i, %if.end11.i.__bpf_lru_list_shrink_inactive.exit_crit_edge ], [ %tgt_nshrink, %if.then7.i.__bpf_lru_list_shrink_inactive.exit_crit_edge ], [ %nshrinked.0.i, %for.cond.i.__bpf_lru_list_shrink_inactive.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nshrinked.2.i)
  %tobool.not = icmp eq i32 %nshrinked.2.i, 0
  br i1 %tobool.not, label %if.end, label %__bpf_lru_list_shrink_inactive.exit.cleanup_crit_edge

__bpf_lru_list_shrink_inactive.exit.cleanup_crit_edge: ; preds = %__bpf_lru_list_shrink_inactive.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %__bpf_lru_list_shrink_inactive.exit
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not = icmp eq ptr %12, %arrayidx.i
  %arrayidx.l = select i1 %cmp.i.not, ptr %l, ptr %arrayidx.i
  %prev = getelementptr inbounds %struct.list_head, ptr %arrayidx.l, i32 0, i32 1
  %13 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %node.0 = phi ptr [ %14, %if.end ], [ %tmp_node.0, %for.body.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %node.0, %arrayidx.l
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %tmp_node.0.in = getelementptr inbounds %struct.list_head, ptr %node.0, i32 0, i32 1
  %15 = ptrtoint ptr %tmp_node.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %tmp_node.0 = load ptr, ptr %tmp_node.0.in, align 4
  %16 = ptrtoint ptr %del_from_htab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %del_from_htab.i, align 128
  %18 = ptrtoint ptr %del_arg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %del_arg.i, align 4
  %call14 = tail call zeroext i1 %17(ptr noundef %19, ptr noundef %node.0) #5
  br i1 %call14, label %if.then15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @__bpf_lru_node_move_to_free(ptr noundef %l, ptr noundef %node.0, ptr noundef %free_list, i32 noundef %tgt_free_type)
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %for.cond.cleanup_crit_edge, %__bpf_lru_list_shrink_inactive.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bpf_lru_node_move(ptr noundef %l, ptr noundef %node, i32 noundef %tgt_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %land.rhs, label %lor.lhs.false.critedge

land.rhs:                                         ; preds = %entry
  %.b133 = load i1, ptr @__bpf_lru_node_move.__already_done, align 1
  br i1 %.b133, label %land.rhs.return_crit_edge, label %if.then, !prof !34

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__bpf_lru_node_move.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #5
  br label %return

lor.lhs.false.critedge:                           ; preds = %entry
  %conv98 = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv98, i32 %tgt_type)
  %cmp99.not = icmp eq i32 %conv98, %tgt_type
  br i1 %cmp99.not, label %lor.lhs.false.critedge.if.end106_crit_edge, label %if.then101

lor.lhs.false.critedge.if.end106_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then101:                                       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp.i = icmp ult i8 %1, 2
  br i1 %cmp.i, label %if.then.i, label %if.then101.bpf_lru_list_count_dec.exit_crit_edge

if.then101.bpf_lru_list_count_dec.exit_crit_edge: ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_lru_list_count_dec.exit

if.then.i:                                        ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.bpf_lru_list, ptr %l, i32 0, i32 1, i32 %conv98
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  br label %bpf_lru_list_count_dec.exit

bpf_lru_list_count_dec.exit:                      ; preds = %if.then.i, %if.then101.bpf_lru_list_count_dec.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %tgt_type)
  %cmp.i135 = icmp ult i32 %tgt_type, 2
  br i1 %cmp.i135, label %if.then.i137, label %bpf_lru_list_count_dec.exit.bpf_lru_list_count_inc.exit_crit_edge

bpf_lru_list_count_dec.exit.bpf_lru_list_count_inc.exit_crit_edge: ; preds = %bpf_lru_list_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_lru_list_count_inc.exit

if.then.i137:                                     ; preds = %bpf_lru_list_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i136 = getelementptr %struct.bpf_lru_list, ptr %l, i32 0, i32 1, i32 %tgt_type
  %4 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i136, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %arrayidx.i136, align 4
  br label %bpf_lru_list_count_inc.exit

bpf_lru_list_count_inc.exit:                      ; preds = %if.then.i137, %bpf_lru_list_count_dec.exit.bpf_lru_list_count_inc.exit_crit_edge
  %conv104 = trunc i32 %tgt_type to i8
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv104, ptr %type, align 2
  br label %if.end106

if.end106:                                        ; preds = %bpf_lru_list_count_inc.exit, %lor.lhs.false.critedge.if.end106_crit_edge
  %ref = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 3
  %7 = ptrtoint ptr %ref to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %ref, align 1
  %next_inactive_rotation = getelementptr inbounds %struct.bpf_lru_list, ptr %l, i32 0, i32 2
  %8 = ptrtoint ptr %next_inactive_rotation to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_inactive_rotation, align 32
  %cmp107 = icmp eq ptr %9, %node
  br i1 %cmp107, label %if.then109, label %if.end106.if.end112_crit_edge

if.end106.if.end112_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %prev = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %10 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev, align 4
  %12 = ptrtoint ptr %next_inactive_rotation to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %next_inactive_rotation, align 32
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end106.if.end112_crit_edge
  %arrayidx = getelementptr [3 x %struct.list_head], ptr %l, i32 0, i32 %tgt_type
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end112.__list_del_entry.exit.i_crit_edge

if.end112.__list_del_entry.exit.i_crit_edge:      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end112.__list_del_entry.exit.i_crit_edge
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %arrayidx, ptr noundef %20) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.return_crit_edge

__list_del_entry.exit.i.return_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %node, ptr %prev1.i.i2.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__bpf_lru_node_move_to_free(ptr nocapture noundef %l, ptr noundef %node, ptr noundef %free_list, i32 noundef %tgt_free_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.bpf_lru_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ugt i8 %1, 2
  br i1 %cmp, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b60 = load i1, ptr @__bpf_lru_node_move_to_free.__already_done, align 1
  br i1 %.b60, label %land.rhs.return_crit_edge, label %if.then, !prof !34

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @__bpf_lru_node_move_to_free.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end39.critedge:                                ; preds = %entry
  %next_inactive_rotation = getelementptr inbounds %struct.bpf_lru_list, ptr %l, i32 0, i32 2
  %2 = ptrtoint ptr %next_inactive_rotation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_inactive_rotation, align 32
  %cmp40 = icmp eq ptr %3, %node
  br i1 %cmp40, label %if.then42, label %if.end39.critedge.if.end45_crit_edge

if.end39.critedge.if.end45_crit_edge:             ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then42:                                        ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %prev = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %6 = ptrtoint ptr %next_inactive_rotation to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %next_inactive_rotation, align 32
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.critedge.if.end45_crit_edge
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp.i = icmp ult i8 %8, 2
  br i1 %cmp.i, label %if.then.i, label %if.end45.bpf_lru_list_count_dec.exit_crit_edge

if.end45.bpf_lru_list_count_dec.exit_crit_edge:   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %bpf_lru_list_count_dec.exit

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %conv47 = zext i8 %8 to i32
  %arrayidx.i = getelementptr %struct.bpf_lru_list, ptr %l, i32 0, i32 1, i32 %conv47
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %10, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  br label %bpf_lru_list_count_dec.exit

bpf_lru_list_count_dec.exit:                      ; preds = %if.then.i, %if.end45.bpf_lru_list_count_dec.exit_crit_edge
  %conv48 = trunc i32 %tgt_free_type to i8
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv48, ptr %type, align 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #5
  br i1 %call.i.i, label %if.end.i.i, label %bpf_lru_list_count_dec.exit.__list_del_entry.exit.i_crit_edge

bpf_lru_list_count_dec.exit.__list_del_entry.exit.i_crit_edge: ; preds = %bpf_lru_list_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %bpf_lru_list_count_dec.exit
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %bpf_lru_list_count_dec.exit.__list_del_entry.exit.i_crit_edge
  %18 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %free_list, ptr noundef %19) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.return_crit_edge

__list_del_entry.exit.i.return_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %prev1.i.i2.i, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %node, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %free_list, align 4
  br label %return

return:                                           ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.return_crit_edge, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind allocsize(0) }

!llvm.named.register.sp = !{!0}
!llvm.asan.globals = !{!1, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{!"sp"}
!1 = distinct !{null, !2, !"__already_done", i1 false, i1 false}
!2 = !{!"../kernel/bpf/bpf_lru_list.c", i32 66, i32 6}
!3 = !{ptr @.str, !2, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_lru_list.c", i32 104, i32 6}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_lru_list.c", i32 105, i32 6}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../kernel/bpf/bpf_lru_list.c", i32 86, i32 6}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../kernel/bpf/bpf_lru_list.c", i32 87, i32 6}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../kernel/bpf/bpf_lru_list.c", i32 508, i32 6}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/bpf/bpf_lru_list.c", i32 509, i32 6}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../kernel/bpf/bpf_lru_list.c", i32 310, i32 6}
!18 = !{ptr @bpf_lru_list_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../kernel/bpf/bpf_lru_list.c", i32 643, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bpf_lru_locallist_init.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../kernel/bpf/bpf_lru_list.c", i32 628, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i8 0, i8 2}
!34 = !{!"branch_weights", i32 2000, i32 1}
