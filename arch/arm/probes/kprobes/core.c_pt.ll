; ModuleID = '/llk/IR_all_yes/arch/arm/probes/kprobes/core.c_pt.bc'
source_filename = "../arch/arm/probes/kprobes/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_action = type { ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.undef_hook = type { %struct.list_head, i32, i32, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kprobe_ctlblk = type { i32, %struct.prev_kprobe }
%struct.prev_kprobe = type { ptr, i32 }
%struct.kprobe_insn_cache = type { %struct.mutex, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kprobe = type { %struct.hlist_node, %struct.list_head, i32, ptr, ptr, i32, ptr, ptr, i32, %struct.arch_probes_insn, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.patch = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.kretprobe_instance = type { %union.anon, %struct.llist_node, ptr, ptr, ptr, [0 x i8] }
%union.anon = type { %struct.freelist_node }
%struct.freelist_node = type { %struct.atomic_t, ptr }
%struct.llist_node = type { ptr }

@current_kprobe = weak dso_local global ptr null, section ".data..percpu", align 4
@kprobes_arm_actions = external dso_local constant [0 x %union.decode_action], align 4
@kprobes_arm_checkers = external dso_local global [0 x ptr], align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kprobe_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014kprobes: Failed to recover from reentered kprobes.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kprobe_handler\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arch/arm/probes/kprobes/core.c\00", [33 x i8] zeroinitializer }, align 32
@kprobe_handler._entry_ptr = internal global ptr @kprobe_handler._entry, section ".printk_index", align 4
@kprobes_arm_break_hook = internal global { %struct.undef_hook, [36 x i8] } { %struct.undef_hook { %struct.list_head zeroinitializer, i32 268435455, i32 133169656, i32 31, i32 19, ptr @kprobe_trap_handler }, [36 x i8] zeroinitializer }, align 32
@__kprobes_text_start = external dso_local global [0 x i8], align 1
@__kprobes_text_end = external dso_local global [0 x i8], align 1
@__pcpu_scope_current_kprobe = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_current_kprobe = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_scope_kprobe_ctlblk = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_kprobe_ctlblk = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@kprobe_ctlblk = weak dso_local global %struct.kprobe_ctlblk zeroinitializer, section ".data..percpu", align 4
@kprobe_insn_slots = external dso_local global %struct.kprobe_insn_cache, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__irqentry_text_start = external dso_local global [0 x i8], align 1
@__irqentry_text_end = external dso_local global [0 x i8], align 1
@__entry_text_start = external dso_local global [0 x i8], align 1
@__entry_text_end = external dso_local global [0 x i8], align 1
@__idmap_text_start = external dso_local global [0 x i8], align 1
@__idmap_text_end = external dso_local global [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 283, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [23 x i8] c"kprobes_arm_break_hook\00", align 1
@___asan_gen_.20 = private constant [34 x i8] c"../arch/arm/probes/kprobes/core.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 455, i32 26 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @kprobe_handler._entry, ptr @kprobe_handler._entry_ptr, ptr @trampoline_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @kprobes_arm_break_hook], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobe_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kprobes_arm_break_hook to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_prepare_kprobe(ptr noundef %p) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  %tmp_insn = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp_insn) #11
  %0 = ptrtoint ptr %tmp_insn to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp_insn, align 4, !annotation !30
  %1 = getelementptr inbounds [2 x i32], ptr %tmp_insn, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !30
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr1, align 4
  %5 = ptrtoint ptr %4 to i32
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %4, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %opcode = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 8
  %9 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %opcode, align 4
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9
  %10 = ptrtoint ptr %ainsn to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tmp_insn, ptr %ainsn, align 4
  %call = call i32 @arm_probes_decode_insn(i32 noundef %8, ptr noundef %ainsn, i1 noundef zeroext true, ptr noundef nonnull @kprobes_arm_actions, ptr noundef nonnull @kprobes_arm_checkers) #11
  %11 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.cleanup_crit_edge
    i32 1, label %sw.bb5
    i32 2, label %sw.bb25
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  %call.i = call ptr @__get_insn_slot(ptr noundef nonnull @kprobe_insn_slots) #11
  %12 = ptrtoint ptr %ainsn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %ainsn, align 4
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %sw.bb5.cleanup_crit_edge, label %for.body.preheader

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %tmp_insn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp_insn, align 4
  %15 = ptrtoint ptr %ainsn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ainsn, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %16, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 4
  %20 = load ptr, ptr %ainsn, align 4
  %arrayidx16.1 = getelementptr i32, ptr %20, i32 1
  %21 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %arrayidx16.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %23 = load ptr, ptr %ainsn, align 4
  %24 = ptrtoint ptr %23 to i32
  %add = add i32 %24, 8
  call void %22(i32 noundef %24, i32 noundef %add) #11
  %25 = ptrtoint ptr %ainsn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ainsn, align 4
  %insn_fn = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9, i32 4
  %27 = ptrtoint ptr %insn_fn to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %insn_fn, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %ainsn to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ainsn, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %for.body.preheader, %if.end.sw.epilog_crit_edge
  %stack_space = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9, i32 5
  %29 = ptrtoint ptr %stack_space to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stack_space, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %30)
  %31 = icmp ugt i32 %30, 64
  %spec.select = select i1 %31, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %sw.bb5.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp_insn) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_probes_decode_insn(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_arm_kprobe(ptr nocapture noundef readonly %p) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %opcode = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 8
  %0 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %opcode, align 4
  %addr1 = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %1)
  %cmp = icmp ugt i32 %1, -536870913
  %and = and i32 %1, -268435456
  %or2 = or i32 %and, 133169656
  %brkp.0 = select i1 %cmp, i32 -403701256, i32 %or2
  tail call void @patch_text(ptr noundef %3, i32 noundef %brkp.0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @patch_text(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobes_remove_breakpoint(ptr noundef %addr, i32 noundef %insn) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  %p = alloca %struct.patch, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p) #11
  %0 = getelementptr inbounds %struct.patch, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %addr, ptr %p, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %insn, ptr %0, align 4
  %call = call i32 @stop_machine_cpuslocked(ptr noundef nonnull @__kprobes_remove_breakpoint, ptr noundef nonnull %p, ptr noundef nonnull @__cpu_online_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stop_machine_cpuslocked(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__kprobes_remove_breakpoint(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %insn = getelementptr inbounds %struct.patch, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %insn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insn, align 4
  tail call void @__patch_text_real(ptr noundef %1, i32 noundef %3, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_disarm_kprobe(ptr nocapture noundef readonly %p) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  %p.i = alloca %struct.patch, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 4
  %2 = ptrtoint ptr %1 to i32
  %and = and i32 %2, -2
  %3 = inttoptr i32 %and to ptr
  %opcode = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 8
  %4 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opcode, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #11
  %6 = getelementptr inbounds %struct.patch, ptr %p.i, i32 0, i32 1
  %7 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %p.i, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %6, align 4
  %call.i = call i32 @stop_machine_cpuslocked(ptr noundef nonnull @__kprobes_remove_breakpoint, ptr noundef nonnull %p.i, ptr noundef nonnull @__cpu_online_mask) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @arch_remove_kprobe(ptr nocapture noundef %p) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ainsn = getelementptr inbounds %struct.kprobe, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %ainsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ainsn, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_insn_slot(ptr noundef nonnull @kprobe_insn_slots, ptr noundef nonnull %1, i32 noundef 0) #11
  %2 = ptrtoint ptr %ainsn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ainsn, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kprobe_handler(ptr noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, ptrtoint (ptr @kprobe_ctlblk to i32)
  %6 = inttoptr i32 %add.i to ptr
  %add.i67 = add i32 %5, ptrtoint (ptr @current_kprobe to i32)
  %7 = inttoptr i32 %add.i67 to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = inttoptr i32 %11 to ptr
  %call2 = tail call ptr @get_kprobe(ptr noundef %12) #11
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end35_crit_edge, label %if.then

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then:                                          ; preds = %entry
  %insn_check_cc = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %insn_check_cc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %insn_check_cc, align 4
  %arrayidx4 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 %14(i32 noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add.i69 = add i32 %18, 4
  store i32 %add.i69, ptr %arrayidx, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %if.else19, label %if.then9

if.then9:                                         ; preds = %if.else
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %6, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %20, label %if.then9.do.body13_crit_edge [
    i32 1, label %if.then9.sw.bb_crit_edge
    i32 8, label %if.then9.sw.bb_crit_edge91
    i32 2, label %if.then9.sw.bb_crit_edge92
    i32 4, label %do.end
  ]

if.then9.sw.bb_crit_edge92:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then9.sw.bb_crit_edge91:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then9.sw.bb_crit_edge:                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.then9.do.body13_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

sw.bb:                                            ; preds = %if.then9.sw.bb_crit_edge, %if.then9.sw.bb_crit_edge91, %if.then9.sw.bb_crit_edge92
  tail call void @kprobes_inc_nmissed_count(ptr noundef nonnull %call2) #11
  %22 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %27, ptrtoint (ptr @current_kprobe to i32)
  %28 = inttoptr i32 %add.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %prev_kprobe.i = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 1
  %31 = ptrtoint ptr %prev_kprobe.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %prev_kprobe.i, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %6, align 4
  %status.i = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %status.i, align 4
  %35 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i70 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i70 to ptr
  %cpu.i71 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i71, align 4
  %arrayidx.i72 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i72, align 4
  %add.i73 = add i32 %40, ptrtoint (ptr @current_kprobe to i32)
  %41 = inttoptr i32 %add.i73 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call2, ptr %41, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %6, align 4
  %ainsn.i = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 9
  %insn_singlestep.i = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 9, i32 3
  %44 = ptrtoint ptr %insn_singlestep.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %insn_singlestep.i, align 4
  %opcode.i = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 8
  %46 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %opcode.i, align 4
  tail call void %45(i32 noundef %47, ptr noundef %ainsn.i, ptr noundef %regs) #11
  %48 = ptrtoint ptr %prev_kprobe.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev_kprobe.i, align 4
  %50 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i75 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i75 to ptr
  %cpu.i76 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i76 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i76, align 4
  %arrayidx.i77 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i77, align 4
  %add.i78 = add i32 %55, ptrtoint (ptr @current_kprobe to i32)
  %56 = inttoptr i32 %add.i78 to ptr
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %49, ptr %56, align 4
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %status.i, align 4
  %60 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %6, align 4
  br label %if.end35

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #14
  tail call void @dump_kprobe(ptr noundef nonnull %call2) #11
  br label %do.body13

do.body13:                                        ; preds = %do.end, %if.then9.do.body13_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/probes/kprobes/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 288, 0\0A.popsection", ""() #11, !srcloc !31
  unreachable

if.else19:                                        ; preds = %if.else
  %61 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i80 = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i80 to ptr
  %cpu.i81 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %cpu.i81 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cpu.i81, align 4
  %arrayidx.i82 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %64
  %65 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i82, align 4
  %add.i83 = add i32 %66, ptrtoint (ptr @current_kprobe to i32)
  %67 = inttoptr i32 %add.i83 to ptr
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call2, ptr %67, align 4
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %6, align 4
  %pre_handler = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 6
  %70 = ptrtoint ptr %pre_handler to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pre_handler, align 4
  %tobool21.not = icmp eq ptr %71, null
  br i1 %tobool21.not, label %if.else19.if.then25_crit_edge, label %lor.lhs.false

if.else19.if.then25_crit_edge:                    ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

lor.lhs.false:                                    ; preds = %if.else19
  %call23 = tail call i32 %71(ptr noundef nonnull %call2, ptr noundef %regs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.then25_crit_edge, label %lor.lhs.false.if.end31_crit_edge

lor.lhs.false.if.end31_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

lor.lhs.false.if.then25_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then25:                                        ; preds = %lor.lhs.false.if.then25_crit_edge, %if.else19.if.then25_crit_edge
  %72 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %6, align 4
  %ainsn.i84 = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 9
  %insn_singlestep.i85 = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %insn_singlestep.i85 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %insn_singlestep.i85, align 4
  %opcode.i86 = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 8
  %75 = ptrtoint ptr %opcode.i86 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %opcode.i86, align 4
  tail call void %74(i32 noundef %76, ptr noundef %ainsn.i84, ptr noundef %regs) #11
  %post_handler = getelementptr inbounds %struct.kprobe, ptr %call2, i32 0, i32 7
  %77 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %post_handler, align 4
  %tobool27.not = icmp eq ptr %78, null
  br i1 %tobool27.not, label %if.then25.if.end31_crit_edge, label %if.then28

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8, ptr %6, align 4
  %80 = ptrtoint ptr %post_handler to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %post_handler, align 4
  tail call void %81(ptr noundef nonnull %call2, ptr noundef %regs, i32 noundef 0) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25.if.end31_crit_edge, %lor.lhs.false.if.end31_crit_edge
  %82 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i87 = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i87 to ptr
  %cpu.i88 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %cpu.i88 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cpu.i88, align 4
  %arrayidx.i89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx.i89 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i89, align 4
  %add.i90 = add i32 %87, ptrtoint (ptr @current_kprobe to i32)
  %88 = inttoptr i32 %add.i90 to ptr
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %88, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end31, %sw.bb, %if.then7, %entry.if.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_kprobe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobes_inc_nmissed_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_kprobe(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kprobe_fault_handler(ptr nocapture noundef writeonly %regs, i32 noundef %fsr) local_unnamed_addr #5 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i8 = add i32 %5, ptrtoint (ptr @kprobe_ctlblk to i32)
  %6 = inttoptr i32 %add.i8 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %8, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge17
  ]

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17
  %add.i = add i32 %5, ptrtoint (ptr @current_kprobe to i32)
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %addr = getelementptr inbounds %struct.kprobe, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %15 = ptrtoint ptr %14 to i32
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp = icmp eq i32 %18, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %prev_kprobe.i = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 1
  %19 = ptrtoint ptr %prev_kprobe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev_kprobe.i, align 4
  %21 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i9 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i9 to ptr
  %cpu.i10 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i10, align 4
  %arrayidx.i11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i11, align 4
  %add.i12 = add i32 %26, ptrtoint (ptr @current_kprobe to i32)
  %27 = inttoptr i32 %add.i12 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %20, ptr %27, align 4
  %status.i = getelementptr inbounds %struct.kprobe_ctlblk, ptr %6, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status.i, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %6, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !20) #11
  %and.i.i13 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i13 to ptr
  %cpu.i14 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu.i14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i14, align 4
  %arrayidx.i15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i15, align 4
  %add.i16 = add i32 %37, ptrtoint (ptr @current_kprobe to i32)
  %38 = inttoptr i32 %add.i16 to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %38, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @kprobe_exceptions_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readnone %data) local_unnamed_addr #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__kretprobe_trampoline() #7 section ".kprobes.text" align 64 {
entry:
  tail call void asm sideeffect "sub\09sp, sp, #16\09\09\0A\09stmdb\09sp!, {r0 - r11}\09\09\0A\09mov\09r0, sp\09\09\09\0A\09bl\09trampoline_handler\09\0A\09mov\09lr, r0\09\09\09\0A\09ldmia\09sp!, {r0 - r11}\09\09\0A\09add\09sp, sp, #16\09\09\0A\09mov\09pc, lr\09\09\09\0A\09", "~{memory}"() #11, !srcloc !32
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @trampoline_handler(ptr noundef %regs) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  tail call void @kprobe_busy_begin() #11
  %call.i = tail call i32 @__kretprobe_trampoline_handler(ptr noundef %regs, ptr noundef %2) #11
  tail call void @kprobe_busy_end() #11
  %3 = inttoptr i32 %call.i to ptr
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @arch_prepare_kretprobe(ptr nocapture noundef writeonly %ri, ptr nocapture noundef %regs) local_unnamed_addr #8 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = inttoptr i32 %1 to ptr
  %ret_addr = getelementptr inbounds %struct.kretprobe_instance, ptr %ri, i32 0, i32 3
  %3 = ptrtoint ptr %ret_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %ret_addr, align 4
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 11
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = inttoptr i32 %5 to ptr
  %fp = getelementptr inbounds %struct.kretprobe_instance, ptr %ri, i32 0, i32 4
  %7 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %fp, align 4
  store i32 ptrtoint (ptr @__kretprobe_trampoline to i32), ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @arch_trampoline_kprobe(ptr nocapture noundef readnone %p) local_unnamed_addr #6 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arch_init_kprobes() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @arm_probes_decode_init() #14
  tail call void @register_undef_hook(ptr noundef nonnull @kprobes_arm_break_hook) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arm_probes_decode_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_undef_hook(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @arch_within_kprobe_blacklist(i32 noundef %addr) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %addr to ptr
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__irqentry_text_start to i32))
  %cmp.not.i = icmp ult i32 %addr, ptrtoint (ptr @__irqentry_text_start to i32)
  call void @__sanitizer_cov_trace_cmp4(i32 %addr, i32 ptrtoint (ptr @__irqentry_text_end to i32))
  %cmp1.i = icmp uge i32 %addr, ptrtoint (ptr @__irqentry_text_end to i32)
  %tobool.not = or i1 %cmp.not.i, %cmp1.i
  br i1 %tobool.not, label %lor.lhs.false, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %cmp.not.i.i = icmp uge ptr %0, @__entry_text_start
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 1
  %cmp1.i.i = icmp ule ptr %add.ptr.i.i, @__entry_text_end
  %1 = and i1 %cmp.not.i.i, %cmp1.i.i
  br i1 %1, label %lor.lhs.false.lor.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cmp.not.i.i8 = icmp uge ptr %0, @__idmap_text_start
  %cmp1.i.i10 = icmp ule ptr %add.ptr.i.i, @__idmap_text_end
  %2 = and i1 %cmp.not.i.i8, %cmp1.i.i10
  br i1 %2, label %lor.lhs.false2.lor.end_crit_edge, label %lor.rhs

lor.lhs.false2.lor.end_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %cmp.not.i11 = icmp uge ptr %0, @__kprobes_text_start
  %cmp1.i12 = icmp ule ptr %add.ptr.i.i, @__kprobes_text_end
  %3 = and i1 %cmp.not.i11, %cmp1.i12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %lor.lhs.false2.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %3, %lor.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_insn_slot(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__patch_text_real(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_insn_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_busy_begin() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kretprobe_trampoline_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kprobe_busy_end() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kprobe_trap_handler(ptr noundef %regs, i32 noundef %instr) #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !33
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then21, label %do.end11

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kprobe_handler(ptr noundef %regs)
  br label %do.body23

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  tail call void @kprobe_handler(ptr noundef %regs)
  tail call void @trace_hardirqs_on() #11
  br label %do.body23

do.body23:                                        ; preds = %if.then21, %do.end11
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !34
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool32.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool32.not, label %if.then36, label %do.body23.do.end39_crit_edge, !prof !35

do.body23.do.end39_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

if.then36:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body23.do.end39_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #11, !srcloc !36
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { naked noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @current_kprobe, !1, !"current_kprobe", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/kprobes/core.c", i32 44, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/kprobes/core.c", i32 283, i32 5}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @kprobe_handler._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @kprobe_handler._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__pcpu_scope_current_kprobe, !1, !"__pcpu_scope_current_kprobe", i1 false, i1 false}
!9 = !{ptr @__pcpu_unique_current_kprobe, !1, !"__pcpu_unique_current_kprobe", i1 false, i1 false}
!10 = !{ptr @__pcpu_scope_kprobe_ctlblk, !11, !"__pcpu_scope_kprobe_ctlblk", i1 false, i1 false}
!11 = !{!"../arch/arm/probes/kprobes/core.c", i32 45, i32 1}
!12 = !{ptr @__pcpu_unique_kprobe_ctlblk, !11, !"__pcpu_unique_kprobe_ctlblk", i1 false, i1 false}
!13 = !{ptr @kprobe_ctlblk, !11, !"kprobe_ctlblk", i1 false, i1 false}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/kprobes.h", i32 373, i32 9}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/probes/kprobes/core.c", i32 206, i32 2}
!18 = !{ptr @kprobes_arm_break_hook, !19, !"kprobes_arm_break_hook", i1 false, i1 false}
!19 = !{!"../arch/arm/probes/kprobes/core.c", i32 455, i32 26}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 2154347088, i64 2154347583, i64 2154347125, i64 2154347181, i64 2154347215, i64 2154347239, i64 2154347280, i64 2154347301, i64 2154347329, i64 2154347363}
!32 = !{i64 10769, i64 10789, i64 10821, i64 10877, i64 10908, i64 10930, i64 10962, i64 10988, i64 11061}
!33 = !{i64 613164, i64 613225}
!34 = !{i64 615896}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i64 616181}
