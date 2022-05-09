; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_counter.c_pt.bc'
source_filename = "../net/netfilter/nft_counter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_counter = type { i64, i64 }
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }

@nft_counter_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_counter_obj_eval, i32 4, ptr @nft_counter_obj_init, ptr @nft_counter_obj_destroy, ptr @nft_counter_obj_dump, ptr null, ptr @nft_counter_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_counter_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nft_counter_obj_type = dso_local global %struct.nft_object_type { ptr null, ptr @nft_counter_obj_ops, %struct.list_head zeroinitializer, i32 1, i32 3, ptr null, ptr @nft_counter_policy }, section ".data..read_mostly", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@nft_counter_init_seqcount.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nft_counter_seq = weak dso_local global %struct.seqcount zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"per_cpu_ptr(&nft_counter_seq, cpu)\00", [61 x i8] zeroinitializer }, align 32
@nft_counter_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_counter_eval, ptr @nft_counter_clone, i32 16, ptr @nft_counter_init, ptr null, ptr null, ptr @nft_counter_destroy, ptr @nft_counter_destroy, ptr @nft_counter_dump, ptr null, ptr null, ptr null, ptr @nft_counter_offload, ptr null, ptr @nft_counter_offload_stats, ptr @nft_counter_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"counter\00", [24 x i8] zeroinitializer }, align 32
@nft_counter_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_counter_ops, %struct.list_head zeroinitializer, ptr @.str.1, ptr null, ptr @nft_counter_policy, i32 3, i8 0, i8 1 }, section ".data..read_mostly", align 4
@__pcpu_unique_nft_counter_seq = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"nft_counter_obj_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 179, i32 36 }
@___asan_gen_.6 = private unnamed_addr constant [19 x i8] c"nft_counter_policy\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 173, i32 32 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 283, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"nft_counter_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 287, i32 34 }
@___asan_gen_.19 = private constant [31 x i8] c"../net/netfilter/nft_counter.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 301, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nft_counter_obj_ops, ptr @nft_counter_policy, ptr @nft_counter_init_seqcount.__key, ptr @.str, ptr @nft_counter_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_counter_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_counter_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_counter_init_seqcount.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_counter_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_counter_eval(ptr nocapture noundef readonly %expr, ptr nocapture readnone %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  tail call fastcc void @nft_counter_do_eval(ptr noundef %data.i, ptr noundef %pkt)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_counter_do_eval(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %pkt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @local_bh_disable()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %10, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %11 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %16, ptrtoint (ptr @lockdep_recursion to i32)
  %17 = inttoptr i32 %add.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  %20 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i7.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not.i = icmp eq i32 %19, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i9.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %31, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %32 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %35, ptrtoint (ptr @hardirqs_enabled to i32)
  %36 = inttoptr i32 %add47.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %39 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i12.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %42, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool54.not.i = icmp eq i32 %38, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !35

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %add12 = add i32 %7, ptrtoint (ptr @nft_counter_seq to i32)
  %43 = inttoptr i32 %add12 to ptr
  %44 = ptrtoint ptr %1 to i32
  %add = add i32 %7, %44
  %45 = inttoptr i32 %add to ptr
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  %inc.i.i.i = add i32 %47, 1
  store i32 %inc.i.i.i, ptr %43, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !36
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %43, i32 0, i32 1
  %48 = tail call ptr @llvm.returnaddress(i32 0) #9
  %49 = ptrtoint ptr %48 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %49) #9
  %50 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  %conv = zext i32 %53 to i64
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %45, align 8
  %add21 = add i64 %55, %conv
  store i64 %add21, ptr %45, align 8
  %packets = getelementptr inbounds %struct.nft_counter, ptr %45, i32 0, i32 1
  %56 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %packets, align 8
  %inc = add i64 %57, 1
  store i64 %inc, ptr %packets, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %49) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !37
  %58 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %43, align 4
  %inc.i.i = add i32 %59, 1
  store i32 %inc.i.i, ptr %43, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_counter_init_seqcount() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %0)
  %cmp8 = icmp ult i32 %call7, %0
  br i1 %cmp8, label %entry.do.body1_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.do.body1_crit_edge:                         ; preds = %entry
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry.do.body1_crit_edge
  %call9 = phi i32 [ %call, %do.body1.do.body1_crit_edge ], [ %call7, %entry.do.body1_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @nft_counter_seq to i32)
  %3 = inttoptr i32 %add to ptr
  %dep_map.i = getelementptr inbounds %struct.seqcount, ptr %3, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef nonnull @nft_counter_init_seqcount.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %do.body1.for.end_crit_edge

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1

for.end:                                          ; preds = %do.body1.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_counter_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef readnone %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  tail call fastcc void @nft_counter_do_eval(ptr noundef %data.i, ptr noundef %pkt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_counter_obj_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_counter_do_init(ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_counter_obj_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @free_percpu(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_counter_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #0 align 64 {
entry:
  %tmp.i8.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %total.i = alloca %struct.nft_counter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %total.i) #9
  %0 = call ptr @memset(ptr %total.i, i32 255, i32 16)
  call fastcc void @nft_counter_fetch(ptr noundef %data.i, ptr noundef nonnull %total.i) #9
  %1 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %total.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #9
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nft_counter_do_dump.exit_crit_edge

entry.nft_counter_do_dump.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_counter_do_dump.exit

lor.lhs.false.i:                                  ; preds = %entry
  %4 = getelementptr inbounds %struct.nft_counter, ptr %total.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i8.i) #9
  %7 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tmp.i8.i, align 8
  %call.i9.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i8.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool2.not.i = icmp ne i32 %call.i9.i, 0
  %reset.not.i = xor i1 %reset, true
  %brmerge.i = or i1 %tobool2.not.i, %reset.not.i
  %.mux.i = sext i1 %tobool2.not.i to i32
  br i1 %brmerge.i, label %lor.lhs.false.i.nft_counter_do_dump.exit_crit_edge, label %if.then4.i

lor.lhs.false.i.nft_counter_do_dump.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_counter_do_dump.exit

if.then4.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @local_bh_disable() #9
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i.i to ptr
  %packets2.i.i = getelementptr inbounds %struct.nft_counter, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %packets2.i.i, align 8
  %sub.i.i = sub i64 %19, %6
  store i64 %sub.i.i, ptr %packets2.i.i, align 8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %17, align 8
  %sub4.i.i = sub i64 %21, %2
  store i64 %sub4.i.i, ptr %17, align 8
  call fastcc void @local_bh_enable() #9
  br label %nft_counter_do_dump.exit

nft_counter_do_dump.exit:                         ; preds = %if.then4.i, %lor.lhs.false.i.nft_counter_do_dump.exit_crit_edge, %entry.nft_counter_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then4.i ], [ -1, %entry.nft_counter_do_dump.exit_crit_edge ], [ %.mux.i, %lor.lhs.false.i.nft_counter_do_dump.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %total.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_counter_do_init(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %priv) unnamed_addr #0 align 64 {
entry:
  %tmp.i30 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 16, i32 noundef 8) #13
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !38
  %4 = ptrtoint ptr %call to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %do.body.if.end10_crit_edge, label %if.then7

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #9
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -1, ptr %tmp.i, align 8, !annotation !39
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %13, i32 noundef 8) #9
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #9
  %packets = getelementptr inbounds %struct.nft_counter, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %packets to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %packets, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body.if.end10_crit_edge
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 1
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end10.do.body17_crit_edge, label %if.then13

if.end10.do.body17_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i30) #9
  %20 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 -1, ptr %tmp.i30, align 8, !annotation !39
  %call.i31 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i30, ptr noundef nonnull %19, i32 noundef 8) #9
  %21 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tmp.i30, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i30) #9
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %11, align 8
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %if.end10.do.body17_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !40
  %24 = call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i28 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i28 to ptr
  %preempt_count.i.i29 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i29, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i29, align 4
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call, ptr %priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_counter_fetch(ptr nocapture noundef readonly %priv, ptr nocapture noundef %total) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %total, i32 0, i32 16)
  %call55 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call55, i32 %1)
  %cmp56 = icmp ult i32 %call55, %1
  br i1 %cmp56, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %packets41 = getelementptr inbounds %struct.nft_counter, ptr %total, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.end38.do.body_crit_edge, %do.body.lr.ph
  %call57 = phi i32 [ %call55, %do.body.lr.ph ], [ %call, %do.end38.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call57
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @nft_counter_seq to i32)
  %4 = inttoptr i32 %add to ptr
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %7 = ptrtoint ptr %6 to i32
  %add10 = add i32 %3, %7
  %8 = inttoptr i32 %add10 to ptr
  %dep_map.c48.i = getelementptr inbounds %struct.seqcount, ptr %4, i32 0, i32 1
  %packets33 = getelementptr inbounds %struct.nft_counter, ptr %8, i32 0, i32 1
  br label %do.body11

do.body11:                                        ; preds = %while.end.do.body11_crit_edge, %do.body
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !41
  %and.i.i = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %10 = tail call ptr @llvm.returnaddress(i32 0) #9
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %11) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call ptr @llvm.returnaddress(i32 0) #9
  %13 = ptrtoint ptr %12 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %13) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %13) #9
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !42
  %and.i.i.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !43

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #9, !srcloc !44
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %4, align 4
  %and53 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool.not54 = icmp eq i32 %and53, 0
  br i1 %tobool.not54, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end19_crit_edge

seqcount_lockdep_reader_access.exit.do.end19_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end19

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end19:                                         ; preds = %do.end19.do.end19_crit_edge, %seqcount_lockdep_reader_access.exit.do.end19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !45
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !46
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %4, align 4
  %and = and i32 %18, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end19.while.end_crit_edge, label %do.end19.do.end19_crit_edge

do.end19.do.end19_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

do.end19.while.end_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %do.end19.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %16, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %18, %do.end19.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !47
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %8, align 8
  %21 = ptrtoint ptr %packets33 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %packets33, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %4, align 4
  %cmp.i.i.not = icmp eq i32 %24, %.lcssa
  br i1 %cmp.i.i.not, label %do.end38, label %while.end.do.body11_crit_edge

while.end.do.body11_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

do.end38:                                         ; preds = %while.end
  %25 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %total, align 8
  %add40 = add i64 %26, %20
  store i64 %add40, ptr %total, align 8
  %27 = ptrtoint ptr %packets41 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %packets41, align 8
  %add42 = add i64 %28, %22
  store i64 %add42, ptr %packets41, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call57, ptr noundef nonnull @__cpu_possible_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %29
  br i1 %cmp, label %do.end38.do.body_crit_edge, label %do.end38.for.end_crit_edge

do.end38.for.end_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end38.do.body_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %do.end38.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_counter_clone(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) #0 align 64 {
entry:
  %total = alloca %struct.nft_counter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %src, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %total) #9
  %0 = call ptr @memset(ptr %total, i32 255, i32 16)
  call fastcc void @nft_counter_fetch(ptr noundef %data.i, ptr noundef nonnull %total)
  %call2 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 16, i32 noundef 8, i32 noundef 2592) #13
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = getelementptr inbounds %struct.nft_counter, ptr %total, i32 0, i32 1
  %data.i22 = getelementptr inbounds %struct.nft_expr, ptr %dst, i32 0, i32 2
  %2 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !49
  %6 = ptrtoint ptr %call2 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %add = add i32 %12, %6
  %13 = inttoptr i32 %add to ptr
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %1, align 8
  %packets8 = getelementptr inbounds %struct.nft_counter, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %packets8 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %packets8, align 8
  %17 = ptrtoint ptr %total to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %total, align 8
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %13, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %20 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i20 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i20 to ptr
  %preempt_count.i.i21 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i21, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i21, align 4
  %24 = ptrtoint ptr %data.i22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2, ptr %data.i22, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %total) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_counter_init(ptr nocapture noundef readnone %ctx, ptr nocapture noundef writeonly %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_counter_do_init(ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_counter_destroy(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  tail call void @free_percpu(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_counter_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i8.i = alloca i64, align 8
  %tmp.i.i = alloca i64, align 8
  %total.i = alloca %struct.nft_counter, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %total.i) #9
  %0 = call ptr @memset(ptr %total.i, i32 255, i32 16)
  call fastcc void @nft_counter_fetch(ptr noundef %data.i, ptr noundef nonnull %total.i) #9
  %1 = ptrtoint ptr %total.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %total.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #9
  %3 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %tmp.i.i, align 8
  %call.i.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nft_counter_do_dump.exit_crit_edge

entry.nft_counter_do_dump.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_counter_do_dump.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = getelementptr inbounds %struct.nft_counter, ptr %total.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i8.i) #9
  %7 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tmp.i8.i, align 8
  %call.i9.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i8.i, i32 noundef 3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool2.not.i = icmp ne i32 %call.i9.i, 0
  %.mux.i = sext i1 %tobool2.not.i to i32
  br label %nft_counter_do_dump.exit

nft_counter_do_dump.exit:                         ; preds = %lor.lhs.false.i, %entry.nft_counter_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.nft_counter_do_dump.exit_crit_edge ], [ %.mux.i, %lor.lhs.false.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %total.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_counter_offload(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %flow, ptr nocapture noundef readnone %expr) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_counter_offload_stats(ptr nocapture noundef readonly %expr, ptr nocapture noundef readonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !51
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %12 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %14, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !31
  %15 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %add.i49 = add i32 %20, ptrtoint (ptr @lockdep_recursion to i32)
  %21 = inttoptr i32 %add.i49 to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !32
  %24 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i7.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not.i = icmp eq i32 %23, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %28 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i50 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i50 to ptr
  %preempt_count.i.i51 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i = icmp eq i32 %31, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %32 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i9.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %35, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !33
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %39, ptrtoint (ptr @hardirqs_enabled to i32)
  %40 = inttoptr i32 %add47.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %40, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %43 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i12.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %46, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool54.not.i = icmp eq i32 %42, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !35

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %add16 = add i32 %11, ptrtoint (ptr @nft_counter_seq to i32)
  %47 = inttoptr i32 %add16 to ptr
  %48 = ptrtoint ptr %5 to i32
  %add = add i32 %11, %48
  %49 = inttoptr i32 %add to ptr
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %47, align 4
  %inc.i.i.i = add i32 %51, 1
  store i32 %inc.i.i.i, ptr %47, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !36
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %47, i32 0, i32 1
  %52 = tail call ptr @llvm.returnaddress(i32 0) #9
  %53 = ptrtoint ptr %52 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %53) #9
  %54 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %stats, align 8
  %packets = getelementptr inbounds %struct.nft_counter, ptr %49, i32 0, i32 1
  %56 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %packets, align 8
  %add25 = add i64 %57, %55
  store i64 %add25, ptr %packets, align 8
  %bytes = getelementptr inbounds %struct.flow_stats, ptr %stats, i32 0, i32 1
  %58 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %bytes, align 8
  %60 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %49, align 8
  %add27 = add i64 %61, %59
  store i64 %add27, ptr %49, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %53) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !37
  %62 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %47, align 4
  %inc.i.i = add i32 %63, 1
  store i32 %inc.i.i, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !52
  %64 = tail call i32 @llvm.read_register.i32(metadata !21) #9
  %and.i.i.i47 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i47 to ptr
  %preempt_count.i.i48 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %preempt_count.i.i48 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %preempt_count.i.i48, align 4
  %sub.i = add i32 %67, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @nft_counter_obj_type, !1, !"nft_counter_obj_type", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_counter.c", i32 188, i32 24}
!2 = !{ptr @nft_counter_init_seqcount.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_counter.c", i32 283, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/netfilter/nft_counter.c", i32 301, i32 11}
!7 = !{ptr @nft_counter_type, !8, !"nft_counter_type", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_counter.c", i32 300, i32 22}
!9 = !{ptr @__pcpu_unique_nft_counter_seq, !10, !"__pcpu_unique_nft_counter_seq", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_counter.c", i32 28, i32 8}
!11 = !{ptr @nft_counter_seq, !10, !"nft_counter_seq", i1 false, i1 false}
!12 = !{ptr @nft_counter_obj_ops, !13, !"nft_counter_obj_ops", i1 false, i1 false}
!13 = !{!"../net/netfilter/nft_counter.c", i32 179, i32 36}
!14 = !{ptr @nft_counter_policy, !15, !"nft_counter_policy", i1 false, i1 false}
!15 = !{!"../net/netfilter/nft_counter.c", i32 173, i32 32}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nft_counter_ops, !20, !"nft_counter_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_counter.c", i32 287, i32 34}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149870038}
!32 = !{i64 2149874970}
!33 = !{i64 2149896682}
!34 = !{i64 2149901574}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2149978031}
!37 = !{i64 2149978356}
!38 = !{i64 2156581889}
!39 = !{!"auto-init"}
!40 = !{i64 2156583001}
!41 = !{i64 608051, i64 608112}
!42 = !{i64 610783}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 611068}
!45 = !{i64 2156588634}
!46 = !{i64 2156588476}
!47 = !{i64 2156588804}
!48 = !{i64 2149977706}
!49 = !{i64 2156590830}
!50 = !{i64 2156591780}
!51 = !{i64 2156591973}
!52 = !{i64 2156604402}
