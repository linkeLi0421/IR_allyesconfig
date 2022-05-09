; ModuleID = '/llk/IR_all_yes/kernel/trace/trace_kdb.c_pt.bc'
source_filename = "../kernel/trace/trace_kdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._kdbtab = type { ptr, ptr, ptr, ptr, i16, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.cpumask = type { [1 x i32] }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, %struct.array_buffer, i8, i32, ptr, %struct.work_struct, %struct.irq_work, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, [452 x ptr], [452 x ptr], i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.list_head, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.30 }
%struct.llist_node = type { ptr }
%union.anon.30 = type { i32 }
%struct.rcuwait = type { ptr }

@__initcall__kmod_trace_kdb__272_164_kdb_ftrace_register7 = internal global ptr @kdb_ftrace_register, section ".initcall7.init", align 4
@ftdump_cmd = internal global { %struct._kdbtab, [32 x i8] } { %struct._kdbtab { ptr @.str, ptr @kdb_ftdump, ptr @.str.1, ptr @.str.2, i16 0, i32 512, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ftdump\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[skip_#entries] [cpu]\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Dump ftrace log; -skip dumps last #entries\00", [53 x i8] zeroinitializer }, align 32
@kdb_trap_printk = external dso_local local_unnamed_addr global i32, align 4
@iter = internal global { %struct.trace_iterator, [2112 x i8] } zeroinitializer, align 32
@buffer_iter = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@tracing_buffer_mask = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Dumping ftrace buffer:\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(skipping %d entries)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"---------------------------------\0A\00", [61 x i8] zeroinitializer }, align 32
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"   (ftrace buffer empty)\0A\00", [38 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [1 x i64] zeroinitializer
@0 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kdb.gcda\00", [35 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [17 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -806831404, i32 -2077059012 }, %emit_function_args_ty { i32 1, i32 2119311094, i32 -2077059012 }, %emit_function_args_ty { i32 2, i32 -1156383717, i32 -2077059012 }, %emit_function_args_ty { i32 3, i32 -1584402539, i32 -2077059012 }, %emit_function_args_ty { i32 4, i32 1592879505, i32 -2077059012 }, %emit_function_args_ty { i32 5, i32 -1023618272, i32 -2077059012 }, %emit_function_args_ty { i32 6, i32 -2043375099, i32 -2077059012 }, %emit_function_args_ty { i32 7, i32 491662117, i32 -2077059012 }, %emit_function_args_ty { i32 8, i32 -601403593, i32 -2077059012 }, %emit_function_args_ty { i32 9, i32 -1247584631, i32 -2077059012 }, %emit_function_args_ty { i32 10, i32 47165945, i32 -2077059012 }, %emit_function_args_ty { i32 11, i32 1193399290, i32 -2077059012 }, %emit_function_args_ty { i32 12, i32 -1672745738, i32 -2077059012 }, %emit_function_args_ty { i32 13, i32 1836136019, i32 -2077059012 }, %emit_function_args_ty { i32 14, i32 -983927146, i32 -2077059012 }, %emit_function_args_ty { i32 15, i32 1044414937, i32 -2077059012 }, %emit_function_args_ty { i32 16, i32 1311495864, i32 -2077059012 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [17 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 14, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.23 }]
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"ftdump_cmd\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 150, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 151, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 153, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 154, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 20, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"buffer_iter\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 21, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 108, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 38, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 62, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [28 x i8] c"../kernel/trace/trace_kdb.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 77, i32 14 }
@___asan_gen_.57 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_trace_kdb__272_164_kdb_ftrace_register7, ptr @ftdump_cmd, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @iter, ptr @buffer_iter, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@1 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftdump_cmd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iter to i32), i32 8448, i32 10560, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_iter to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_ftrace_register() #0 section ".init.text" align 64 !dbg !37 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !40
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !41
  %0 = add i64 %gcov_ctr, 1, !dbg !41
  store i64 %0, ptr @__llvm_gcov_ctr, align 8, !dbg !41
  %call = tail call i32 @kdb_register(ptr noundef nonnull @ftdump_cmd) #11, !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_ftdump(i32 noundef %argc, ptr nocapture noundef readonly %argv) #2 align 64 !dbg !43 {
entry:
  %cp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10, !dbg !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cp) #11, !dbg !45
  %0 = ptrtoint ptr %cp to i32, !dbg !46
  call void @__asan_store4_noabort(i32 %0), !dbg !46
  store ptr inttoptr (i32 -1 to ptr), ptr %cp, align 4, !dbg !46, !annotation !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc), !dbg !48
  %cmp = icmp sgt i32 %argc, 2, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !50
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 16, !dbg !50
  %1 = add i64 %gcov_ctr, 1, !dbg !50
  store i64 %1, ptr @__llvm_gcov_ctr.8, align 16, !dbg !50
  br label %cleanup, !dbg !50

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc), !dbg !51
  %tobool.not = icmp eq i32 %argc, 0, !dbg !51
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then1, !dbg !51

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !51
  br label %if.end20, !dbg !51

if.then1:                                         ; preds = %if.end
  %arrayidx = getelementptr ptr, ptr %argv, i32 1, !dbg !52
  %2 = ptrtoint ptr %arrayidx to i32, !dbg !52
  call void @__asan_load4_noabort(i32 %2), !dbg !52
  %3 = load ptr, ptr %arrayidx, align 4, !dbg !52
  %call = call i32 @simple_strtol(ptr noundef %3, ptr noundef nonnull %cp, i32 noundef 0) #11, !dbg !53
  %4 = ptrtoint ptr %cp to i32, !dbg !54
  call void @__asan_load4_noabort(i32 %4), !dbg !54
  %5 = load ptr, ptr %cp, align 4, !dbg !54
  %6 = ptrtoint ptr %5 to i32, !dbg !55
  call void @__asan_load1_noabort(i32 %6), !dbg !55
  %7 = load i8, ptr %5, align 1, !dbg !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7), !dbg !55
  %tobool2.not = icmp eq i8 %7, 0, !dbg !55
  br i1 %tobool2.not, label %if.then1.if.end5_crit_edge, label %if.then3, !dbg !55

if.then1.if.end5_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10, !dbg !55
  br label %if.end5, !dbg !55

if.then3:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10, !dbg !56
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !56
  %8 = add i64 %gcov_ctr62, 1, !dbg !56
  store i64 %8, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 1), align 8, !dbg !56
  br label %if.end5, !dbg !57

if.end5:                                          ; preds = %if.then3, %if.then1.if.end5_crit_edge
  %skip_entries.0 = phi i32 [ 0, %if.then3 ], [ %call, %if.then1.if.end5_crit_edge ], !dbg !58
  %gcov_ctr63 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !59
  %9 = add i64 %gcov_ctr63, 1, !dbg !59
  store i64 %9, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 2), align 16, !dbg !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %argc), !dbg !60
  %cmp6 = icmp eq i32 %argc, 2, !dbg !60
  br i1 %cmp6, label %if.then7, label %if.end5.if.end20_crit_edge, !dbg !61

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10, !dbg !61
  br label %if.end20, !dbg !61

if.then7:                                         ; preds = %if.end5
  %arrayidx8 = getelementptr ptr, ptr %argv, i32 2, !dbg !62
  %10 = ptrtoint ptr %arrayidx8 to i32, !dbg !62
  call void @__asan_load4_noabort(i32 %10), !dbg !62
  %11 = load ptr, ptr %arrayidx8, align 4, !dbg !62
  %call9 = call i32 @simple_strtol(ptr noundef %11, ptr noundef nonnull %cp, i32 noundef 0) #11, !dbg !63
  %12 = ptrtoint ptr %cp to i32, !dbg !64
  call void @__asan_load4_noabort(i32 %12), !dbg !64
  %13 = load ptr, ptr %cp, align 4, !dbg !64
  %14 = ptrtoint ptr %13 to i32, !dbg !65
  call void @__asan_load1_noabort(i32 %14), !dbg !65
  %15 = load i8, ptr %13, align 1, !dbg !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15), !dbg !65
  %tobool10.not = icmp eq i8 %15, 0, !dbg !65
  br i1 %tobool10.not, label %lor.lhs.false, label %if.then7.if.then18_crit_edge, !dbg !66

if.then7.if.then18_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10, !dbg !66
  br label %if.then18, !dbg !66

lor.lhs.false:                                    ; preds = %if.then7
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 3), align 8, !dbg !67
  %16 = add i64 %gcov_ctr64, 1, !dbg !67
  store i64 %16, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 3), align 8, !dbg !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call9), !dbg !68
  %cmp11 = icmp sgt i32 %call9, 3, !dbg !68
  br i1 %cmp11, label %lor.lhs.false.if.then18_crit_edge, label %lor.lhs.false13, !dbg !69

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10, !dbg !69
  br label %if.then18, !dbg !69

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %gcov_ctr65 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 4), align 16, !dbg !70
  %17 = add i64 %gcov_ctr65, 1, !dbg !70
  store i64 %17, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 4), align 16, !dbg !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9), !dbg !71
  %cmp14 = icmp slt i32 %call9, 0, !dbg !71
  br i1 %cmp14, label %lor.lhs.false13.if.then18_crit_edge, label %lor.lhs.false16, !dbg !72

lor.lhs.false13.if.then18_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #10, !dbg !72
  br label %if.then18, !dbg !72

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %gcov_ctr66 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 5), align 8, !dbg !73
  %18 = add i64 %gcov_ctr66, 1, !dbg !73
  store i64 %18, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 5), align 8, !dbg !73
  %gcov_ctr.i98 = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %19 = add i64 %gcov_ctr.i98, 1
  store i64 %19, ptr @__llvm_gcov_ctr.9, align 8
  %gcov_ctr.i.i99 = load i64, ptr @__llvm_gcov_ctr.13, align 8
  %20 = add i64 %gcov_ctr.i.i99, 1
  store i64 %20, ptr @__llvm_gcov_ctr.13, align 8
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.15, align 8
  %21 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.15, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !74
  %22 = load i32, ptr @nr_cpu_ids, align 4, !dbg !74
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.16, align 16
  %23 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %23, ptr @__llvm_gcov_ctr.16, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call9), !dbg !82
  %cmp.not.i.i.i.i = icmp ugt i32 %22, %call9, !dbg !82
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false16.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i, !dbg !82

lor.lhs.false16.cpu_online.exit_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #10, !dbg !82
  br label %cpu_online.exit, !dbg !82

land.rhs.i.i.i.i:                                 ; preds = %lor.lhs.false16
  %gcov_ctr35.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !82
  %24 = add i64 %gcov_ctr35.i.i.i.i, 1, !dbg !82
  store i64 %24, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !82
  %.b40.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !82
  br i1 %.b40.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !dbg !82, !prof !85

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !82
  br label %cpu_online.exit, !dbg !82

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !82
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1, !dbg !82
  %gcov_ctr36.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !82
  %25 = add i64 %gcov_ctr36.i.i.i.i, 1, !dbg !82
  store i64 %25, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 2), align 16, !dbg !82
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 108, i32 noundef 9, ptr noundef null) #11, !dbg !82
  %gcov_ctr37.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !82
  %26 = add i64 %gcov_ctr37.i.i.i.i, 1, !dbg !82
  store i64 %26, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 3), align 8, !dbg !82
  br label %cpu_online.exit, !dbg !82

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %lor.lhs.false16.cpu_online.exit_crit_edge
  %gcov_ctr.i.i.i100 = load i64, ptr @__llvm_gcov_ctr.14, align 8
  %27 = add i64 %gcov_ctr.i.i.i100, 1
  store i64 %27, ptr @__llvm_gcov_ctr.14, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_online_mask to i32)), !dbg !86
  %28 = load volatile i32, ptr @__cpu_online_mask, align 4, !dbg !86
  %29 = shl nuw nsw i32 1, %call9, !dbg !90
  %30 = and i32 %28, %29, !dbg !90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30), !dbg !90
  %tobool.i.not = icmp eq i32 %30, 0, !dbg !90
  br i1 %tobool.i.not, label %cpu_online.exit.if.then18_crit_edge, label %cpu_online.exit.if.end20_crit_edge, !dbg !65

cpu_online.exit.if.end20_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !65
  br label %if.end20, !dbg !65

cpu_online.exit.if.then18_crit_edge:              ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !65
  br label %if.then18, !dbg !65

if.then18:                                        ; preds = %cpu_online.exit.if.then18_crit_edge, %lor.lhs.false13.if.then18_crit_edge, %lor.lhs.false.if.then18_crit_edge, %if.then7.if.then18_crit_edge
  %gcov_ctr68 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 7), align 8, !dbg !91
  %31 = add i64 %gcov_ctr68, 1, !dbg !91
  store i64 %31, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 7), align 8, !dbg !91
  br label %cleanup, !dbg !91

if.end20:                                         ; preds = %cpu_online.exit.if.end20_crit_edge, %if.end5.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 6), %cpu_online.exit.if.end20_crit_edge ], [ getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 8), %if.end.if.end20_crit_edge ], [ getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 8), %if.end5.if.end20_crit_edge ]
  %skip_entries.1105 = phi i32 [ %skip_entries.0, %cpu_online.exit.if.end20_crit_edge ], [ 0, %if.end.if.end20_crit_edge ], [ %skip_entries.0, %if.end5.if.end20_crit_edge ]
  %cpu_file.0 = phi i32 [ %call9, %cpu_online.exit.if.end20_crit_edge ], [ -1, %if.end.if.end20_crit_edge ], [ -1, %if.end5.if.end20_crit_edge ], !dbg !58
  %32 = ptrtoint ptr %.sink to i32, !dbg !58
  call void @__asan_load8_noabort(i32 %32), !dbg !58
  %gcov_ctr69 = load i64, ptr %.sink, align 16, !dbg !58
  %33 = add i64 %gcov_ctr69, 1, !dbg !58
  store i64 %33, ptr %.sink, align 16, !dbg !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32)), !dbg !92
  %34 = load i32, ptr @kdb_trap_printk, align 4, !dbg !92
  %inc = add i32 %34, 1, !dbg !92
  store i32 %inc, ptr @kdb_trap_printk, align 4, !dbg !92
  call void @trace_init_global_iter(ptr noundef nonnull @iter) #11, !dbg !93
  store ptr @buffer_iter, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !94
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !95
  %35 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !95
  %call21108 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %35) #12, !dbg !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !95
  %36 = load i32, ptr @nr_cpu_ids, align 4, !dbg !95
  call void @__sanitizer_cov_trace_cmp4(i32 %call21108, i32 %36), !dbg !95
  %cmp22109 = icmp ult i32 %call21108, %36, !dbg !95
  br i1 %cmp22109, label %if.end20.do.body_crit_edge, label %if.end20.for.end_crit_edge, !dbg !95

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !95
  br label %for.end, !dbg !95

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  br label %do.body, !dbg !95

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end20.do.body_crit_edge
  %call21110 = phi i32 [ %call21, %do.body.do.body_crit_edge ], [ %call21108, %if.end20.do.body_crit_edge ]
  %gcov_ctr70 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 9), align 8, !dbg !96
  %37 = add i64 %gcov_ctr70, 1, !dbg !96
  store i64 %37, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 9), align 8, !dbg !96
  %38 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 2), align 8, !dbg !96
  %data = getelementptr inbounds %struct.array_buffer, ptr %38, i32 0, i32 2, !dbg !96
  %39 = ptrtoint ptr %data to i32, !dbg !96
  call void @__asan_load4_noabort(i32 %39), !dbg !96
  %40 = load ptr, ptr %data, align 8, !dbg !96
  %41 = ptrtoint ptr %40 to i32, !dbg !96
  %arrayidx25 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call21110, !dbg !96
  %42 = ptrtoint ptr %arrayidx25 to i32, !dbg !96
  call void @__asan_load4_noabort(i32 %42), !dbg !96
  %43 = load i32, ptr %arrayidx25, align 4, !dbg !96
  %add = add i32 %43, %41, !dbg !96
  %44 = inttoptr i32 %add to ptr, !dbg !96
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %45 = add i64 %gcov_ctr.i, 1
  store i64 %45, ptr @__llvm_gcov_ctr.10, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %46 = add i64 %gcov_ctr.i.i, 1
  store i64 %46, ptr @__llvm_gcov_ctr.17, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #11, !dbg !97
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %47 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %47, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.18, align 8
  %48 = add i64 %gcov_ctr.i2.i, 1
  store i64 %48, ptr @__llvm_gcov_ctr.18, align 8
  %gcov_ctr.i.i3.i = load i64, ptr @__llvm_gcov_ctr.20, align 8
  %49 = add i64 %gcov_ctr.i.i3.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.20, align 8
  call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #11, !dbg !104
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #11, !dbg !104, !srcloc !111
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !95
  %51 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !95
  %call21 = call i32 @cpumask_next(i32 noundef %call21110, ptr noundef %51) #12, !dbg !95
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !95
  %52 = load i32, ptr @nr_cpu_ids, align 4, !dbg !95
  %cmp22 = icmp ult i32 %call21, %52, !dbg !95
  br i1 %cmp22, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge, !dbg !95, !llvm.loop !112

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !95
  br label %for.end, !dbg !95

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !95
  br label %do.body, !dbg !95

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_entries.1105), !dbg !114
  %cmp26 = icmp slt i32 %skip_entries.1105, 0, !dbg !114
  br i1 %cmp26, label %if.then28, label %for.end.if.end40_crit_edge, !dbg !115

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !115
  br label %if.end40, !dbg !115

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu_file.0), !dbg !116
  %cmp29 = icmp eq i32 %cpu_file.0, -1, !dbg !116
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !117

if.then31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10, !dbg !118
  %gcov_ctr71 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 10), align 16, !dbg !118
  %53 = add i64 %gcov_ctr71, 1, !dbg !118
  store i64 %53, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 10), align 16, !dbg !118
  %call32 = call i32 @trace_total_entries(ptr noundef null) #11, !dbg !118
  br label %if.end35, !dbg !119

if.else33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10, !dbg !120
  %call34 = call i32 @trace_total_entries_cpu(ptr noundef null, i32 noundef %cpu_file.0) #11, !dbg !120
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then31
  %cnt.0 = phi i32 [ %call32, %if.then31 ], [ %call34, %if.else33 ], !dbg !58
  %add36 = add i32 %cnt.0, %skip_entries.1105, !dbg !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add36), !dbg !121
  %cmp38 = icmp sgt i32 %add36, 0, !dbg !121
  br i1 %cmp38, label %cond.true, label %cond.false, !dbg !121

cond.true:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10, !dbg !121
  %gcov_ctr72 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 11), align 8, !dbg !121
  %54 = add i64 %gcov_ctr72, 1, !dbg !121
  store i64 %54, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 11), align 8, !dbg !121
  br label %if.end40, !dbg !121

cond.false:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10, !dbg !121
  %gcov_ctr73 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 12), align 16, !dbg !121
  %55 = add i64 %gcov_ctr73, 1, !dbg !121
  store i64 %55, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 12), align 16, !dbg !121
  br label %if.end40, !dbg !121

if.end40:                                         ; preds = %cond.false, %cond.true, %for.end.if.end40_crit_edge
  %skip_entries.2 = phi i32 [ %skip_entries.1105, %for.end.if.end40_crit_edge ], [ %add36, %cond.true ], [ 0, %cond.false ], !dbg !58
  %56 = load ptr, ptr @iter, align 8, !dbg !122
  %trace_flags.i = getelementptr inbounds %struct.trace_array, ptr %56, i32 0, i32 24, !dbg !125
  %57 = ptrtoint ptr %trace_flags.i to i32, !dbg !125
  call void @__asan_load4_noabort(i32 %57), !dbg !125
  %58 = load i32, ptr %trace_flags.i, align 4, !dbg !125
  %and.i = and i32 %58, -2049, !dbg !126
  store i32 %and.i, ptr %trace_flags.i, align 4, !dbg !126
  %call.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4) #11, !dbg !127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_entries.2), !dbg !128
  %tobool.not.i = icmp eq i32 %skip_entries.2, 0, !dbg !128
  br i1 %tobool.not.i, label %if.end40.if.end.i_crit_edge, label %if.then.i, !dbg !128

if.end40.if.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10, !dbg !128
  br label %if.end.i, !dbg !128

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10, !dbg !129
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.11, align 16, !dbg !129
  %59 = add i64 %gcov_ctr.i101, 1, !dbg !129
  store i64 %59, ptr @__llvm_gcov_ctr.11, align 16, !dbg !129
  %call2.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.5, i32 noundef %skip_entries.2) #11, !dbg !130
  br label %if.end.i, !dbg !130

if.end.i:                                         ; preds = %if.then.i, %if.end40.if.end.i_crit_edge
  %gcov_ctr.i.i102 = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %60 = add i64 %gcov_ctr.i.i102, 1
  store i64 %60, ptr @__llvm_gcov_ctr.21, align 8
  %61 = call ptr @memset(ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 15, i32 0, i32 0), i32 0, i32 4176), !dbg !131
  store i64 -1, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 22), align 8, !dbg !135
  %62 = load i32, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 7), align 4, !dbg !136
  %or.i = or i32 %62, 1, !dbg !136
  store i32 %or.i, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 7), align 4, !dbg !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu_file.0), !dbg !137
  %cmp.i = icmp eq i32 %cpu_file.0, -1, !dbg !137
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.else.i, !dbg !138

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !139
  %63 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !139
  %call479.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef %63) #12, !dbg !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !139
  %64 = load i32, ptr @nr_cpu_ids, align 4, !dbg !139
  call void @__sanitizer_cov_trace_cmp4(i32 %call479.i, i32 %64), !dbg !139
  %cmp580.i = icmp ult i32 %call479.i, %64, !dbg !139
  br i1 %cmp580.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge, !dbg !139

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !139
  br label %for.end.i, !dbg !139

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !139

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call481.i = phi i32 [ %call4.i, %for.body.i.for.body.i_crit_edge ], [ %call479.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %gcov_ctr46.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !140
  %65 = add i64 %gcov_ctr46.i, 1, !dbg !140
  store i64 %65, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 1), align 8, !dbg !140
  %66 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 2), align 8, !dbg !140
  %buffer.i = getelementptr inbounds %struct.array_buffer, ptr %66, i32 0, i32 1, !dbg !141
  %67 = ptrtoint ptr %buffer.i to i32, !dbg !141
  call void @__asan_load4_noabort(i32 %67), !dbg !141
  %68 = load ptr, ptr %buffer.i, align 4, !dbg !141
  %call6.i = call ptr @ring_buffer_read_prepare(ptr noundef %68, i32 noundef %call481.i, i32 noundef 2592) #11, !dbg !142
  %69 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !143
  %arrayidx.i = getelementptr ptr, ptr %69, i32 %call481.i, !dbg !144
  %70 = ptrtoint ptr %arrayidx.i to i32, !dbg !145
  call void @__asan_store4_noabort(i32 %70), !dbg !145
  store ptr %call6.i, ptr %arrayidx.i, align 4, !dbg !145
  %71 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !146
  %arrayidx7.i = getelementptr ptr, ptr %71, i32 %call481.i, !dbg !147
  %72 = ptrtoint ptr %arrayidx7.i to i32, !dbg !147
  call void @__asan_load4_noabort(i32 %72), !dbg !147
  %73 = load ptr, ptr %arrayidx7.i, align 4, !dbg !147
  call void @ring_buffer_read_start(ptr noundef %73) #11, !dbg !148
  call void @tracing_iter_reset(ptr noundef nonnull @iter, i32 noundef %call481.i) #11, !dbg !149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !139
  %74 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !139
  %call4.i = call i32 @cpumask_next(i32 noundef %call481.i, ptr noundef %74) #12, !dbg !139
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !139
  %75 = load i32, ptr @nr_cpu_ids, align 4, !dbg !139
  %cmp5.i = icmp ult i32 %call4.i, %75, !dbg !139
  br i1 %cmp5.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge, !dbg !139, !llvm.loop !150

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !139
  br label %for.end.i, !dbg !139

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !139
  br label %for.body.i, !dbg !139

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %gcov_ctr47.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !152
  %76 = add i64 %gcov_ctr47.i, 1, !dbg !152
  store i64 %76, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 2), align 16, !dbg !152
  br label %while.cond.i.preheader, !dbg !152

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !153
  store i32 %cpu_file.0, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 4), align 8, !dbg !153
  %77 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 2), align 8, !dbg !154
  %buffer8.i = getelementptr inbounds %struct.array_buffer, ptr %77, i32 0, i32 1, !dbg !155
  %78 = ptrtoint ptr %buffer8.i to i32, !dbg !155
  call void @__asan_load4_noabort(i32 %78), !dbg !155
  %79 = load ptr, ptr %buffer8.i, align 4, !dbg !155
  %call9.i = call ptr @ring_buffer_read_prepare(ptr noundef %79, i32 noundef %cpu_file.0, i32 noundef 2592) #11, !dbg !156
  %80 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !157
  %arrayidx10.i = getelementptr ptr, ptr %80, i32 %cpu_file.0, !dbg !158
  %81 = ptrtoint ptr %arrayidx10.i to i32, !dbg !159
  call void @__asan_store4_noabort(i32 %81), !dbg !159
  store ptr %call9.i, ptr %arrayidx10.i, align 4, !dbg !159
  %82 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !160
  %arrayidx11.i = getelementptr ptr, ptr %82, i32 %cpu_file.0, !dbg !161
  %83 = ptrtoint ptr %arrayidx11.i to i32, !dbg !161
  call void @__asan_load4_noabort(i32 %83), !dbg !161
  %84 = load ptr, ptr %arrayidx11.i, align 4, !dbg !161
  call void @ring_buffer_read_start(ptr noundef %84) #11, !dbg !162
  call void @tracing_iter_reset(ptr noundef nonnull @iter, i32 noundef %cpu_file.0) #11, !dbg !163
  br label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.else.i, %for.end.i
  br label %while.cond.i, !dbg !164

while.cond.i:                                     ; preds = %if.end23.i.while.cond.i_crit_edge, %while.cond.i.preheader
  %skip_entries.addr.0.i = phi i32 [ %skip_entries.addr.1.i, %if.end23.i.while.cond.i_crit_edge ], [ %skip_entries.2, %while.cond.i.preheader ]
  %cnt.0.i = phi i32 [ %inc.i, %if.end23.i.while.cond.i_crit_edge ], [ 0, %while.cond.i.preheader ], !dbg !165
  %call13.i = call ptr @trace_find_next_entry_inc(ptr noundef nonnull @iter) #11, !dbg !166
  %tobool14.not.i = icmp eq ptr %call13.i, null, !dbg !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.i), !dbg !165
  %tobool28.not.i = icmp eq i32 %cnt.0.i, 0, !dbg !165
  br i1 %tobool14.not.i, label %while.end.i, label %while.body.i, !dbg !164

while.body.i:                                     ; preds = %while.cond.i
  br i1 %tobool28.not.i, label %if.then16.i, label %while.body.i.if.end18.i_crit_edge, !dbg !167

while.body.i.if.end18.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !167
  br label %if.end18.i, !dbg !167

if.then16.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !168
  %gcov_ctr48.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !168
  %85 = add i64 %gcov_ctr48.i, 1, !dbg !168
  store i64 %85, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 3), align 8, !dbg !168
  %call17.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6) #11, !dbg !168
  br label %if.end18.i, !dbg !168

if.end18.i:                                       ; preds = %if.then16.i, %while.body.i.if.end18.i_crit_edge
  %inc.i = add i32 %cnt.0.i, 1, !dbg !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_entries.addr.0.i), !dbg !170
  %tobool19.not.i = icmp eq i32 %skip_entries.addr.0.i, 0, !dbg !170
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else22.i, !dbg !171

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !172
  %gcov_ctr49.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !172
  %86 = add i64 %gcov_ctr49.i, 1, !dbg !172
  store i64 %86, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 4), align 16, !dbg !172
  %call21.i = call i32 @print_trace_line(ptr noundef nonnull @iter) #11, !dbg !172
  call void @trace_printk_seq(ptr noundef getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 15)) #11, !dbg !173
  br label %if.end23.i, !dbg !174

if.else22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !175
  %gcov_ctr50.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !175
  %87 = add i64 %gcov_ctr50.i, 1, !dbg !175
  store i64 %87, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 5), align 8, !dbg !175
  %dec.i = add i32 %skip_entries.addr.0.i, -1, !dbg !175
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else22.i, %if.then20.i
  %skip_entries.addr.1.i = phi i32 [ %dec.i, %if.else22.i ], [ 0, %if.then20.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32)), !dbg !176
  %88 = load i32, ptr @kdb_flags, align 4, !dbg !176
  %and24.i = and i32 %88, 4, !dbg !176
  %tobool25.not.i = icmp eq i32 %and24.i, 0, !dbg !176
  br i1 %tobool25.not.i, label %if.end23.i.while.cond.i_crit_edge, label %if.then26.i, !dbg !176, !llvm.loop !177

if.end23.i.while.cond.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !176
  br label %while.cond.i, !dbg !176

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !179
  %gcov_ctr51.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !179
  %89 = add i64 %gcov_ctr51.i, 1, !dbg !179
  store i64 %89, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 6), align 16, !dbg !179
  br label %out.i, !dbg !179

while.end.i:                                      ; preds = %while.cond.i
  br i1 %tobool28.not.i, label %if.then29.i, label %if.else31.i, !dbg !180

if.then29.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !181
  %gcov_ctr52.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 7), align 8, !dbg !181
  %90 = add i64 %gcov_ctr52.i, 1, !dbg !181
  store i64 %90, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 7), align 8, !dbg !181
  %call30.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.7) #11, !dbg !181
  br label %out.i, !dbg !181

if.else31.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !182
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 8), align 16, !dbg !182
  %91 = add i64 %gcov_ctr53.i, 1, !dbg !182
  store i64 %91, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 8), align 16, !dbg !182
  %call32.i = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.6) #11, !dbg !182
  br label %out.i

out.i:                                            ; preds = %if.else31.i, %if.then29.i, %if.then26.i
  %92 = ptrtoint ptr %trace_flags.i to i32, !dbg !183
  call void @__asan_store4_noabort(i32 %92), !dbg !183
  store i32 %58, ptr %trace_flags.i, align 4, !dbg !183
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !184
  %93 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !184
  %call3682.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef %93) #12, !dbg !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !184
  %94 = load i32, ptr @nr_cpu_ids, align 4, !dbg !184
  call void @__sanitizer_cov_trace_cmp4(i32 %call3682.i, i32 %94), !dbg !184
  %cmp3783.i = icmp ult i32 %call3682.i, %94, !dbg !184
  br i1 %cmp3783.i, label %out.i.for.body38.i_crit_edge, label %out.i.ftrace_dump_buf.exit_crit_edge, !dbg !184

out.i.ftrace_dump_buf.exit_crit_edge:             ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !184
  br label %ftrace_dump_buf.exit, !dbg !184

out.i.for.body38.i_crit_edge:                     ; preds = %out.i
  br label %for.body38.i, !dbg !184

for.body38.i:                                     ; preds = %if.end44.i.for.body38.i_crit_edge, %out.i.for.body38.i_crit_edge
  %call3684.i = phi i32 [ %call36.i, %if.end44.i.for.body38.i_crit_edge ], [ %call3682.i, %out.i.for.body38.i_crit_edge ]
  %95 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !185
  %arrayidx39.i = getelementptr ptr, ptr %95, i32 %call3684.i, !dbg !186
  %96 = ptrtoint ptr %arrayidx39.i to i32, !dbg !186
  call void @__asan_load4_noabort(i32 %96), !dbg !186
  %97 = load ptr, ptr %arrayidx39.i, align 4, !dbg !186
  %tobool40.not.i = icmp eq ptr %97, null, !dbg !186
  br i1 %tobool40.not.i, label %for.body38.i.if.end44.i_crit_edge, label %if.then41.i, !dbg !186

for.body38.i.if.end44.i_crit_edge:                ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !186
  br label %if.end44.i, !dbg !186

if.then41.i:                                      ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !187
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 9), align 8, !dbg !187
  %98 = add i64 %gcov_ctr54.i, 1, !dbg !187
  store i64 %98, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 9), align 8, !dbg !187
  %99 = ptrtoint ptr %arrayidx39.i to i32, !dbg !188
  call void @__asan_load4_noabort(i32 %99), !dbg !188
  %100 = load ptr, ptr %arrayidx39.i, align 4, !dbg !188
  call void @ring_buffer_read_finish(ptr noundef %100) #11, !dbg !189
  %101 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 6), align 8, !dbg !190
  %arrayidx43.i = getelementptr ptr, ptr %101, i32 %call3684.i, !dbg !191
  %102 = ptrtoint ptr %arrayidx43.i to i32, !dbg !192
  call void @__asan_store4_noabort(i32 %102), !dbg !192
  store ptr null, ptr %arrayidx43.i, align 4, !dbg !192
  br label %if.end44.i, !dbg !193

if.end44.i:                                       ; preds = %if.then41.i, %for.body38.i.if.end44.i_crit_edge
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 10), align 16, !dbg !184
  %103 = add i64 %gcov_ctr55.i, 1, !dbg !184
  store i64 %103, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.11, i32 0, i32 10), align 16, !dbg !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !184
  %104 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !184
  %call36.i = call i32 @cpumask_next(i32 noundef %call3684.i, ptr noundef %104) #12, !dbg !184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !184
  %105 = load i32, ptr @nr_cpu_ids, align 4, !dbg !184
  %cmp37.i = icmp ult i32 %call36.i, %105, !dbg !184
  br i1 %cmp37.i, label %if.end44.i.for.body38.i_crit_edge, label %if.end44.i.ftrace_dump_buf.exit_crit_edge, !dbg !184, !llvm.loop !194

if.end44.i.ftrace_dump_buf.exit_crit_edge:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !184
  br label %ftrace_dump_buf.exit, !dbg !184

if.end44.i.for.body38.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !184
  br label %for.body38.i, !dbg !184

ftrace_dump_buf.exit:                             ; preds = %if.end44.i.ftrace_dump_buf.exit_crit_edge, %out.i.ftrace_dump_buf.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !196
  %106 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !196
  %call42111 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %106) #12, !dbg !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !196
  %107 = load i32, ptr @nr_cpu_ids, align 4, !dbg !196
  call void @__sanitizer_cov_trace_cmp4(i32 %call42111, i32 %107), !dbg !196
  %cmp43112 = icmp ult i32 %call42111, %107, !dbg !196
  br i1 %cmp43112, label %ftrace_dump_buf.exit.do.body46_crit_edge, label %ftrace_dump_buf.exit.for.end57_crit_edge, !dbg !196

ftrace_dump_buf.exit.for.end57_crit_edge:         ; preds = %ftrace_dump_buf.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !196
  br label %for.end57, !dbg !196

ftrace_dump_buf.exit.do.body46_crit_edge:         ; preds = %ftrace_dump_buf.exit
  br label %do.body46, !dbg !196

do.body46:                                        ; preds = %do.body46.do.body46_crit_edge, %ftrace_dump_buf.exit.do.body46_crit_edge
  %call42113 = phi i32 [ %call42, %do.body46.do.body46_crit_edge ], [ %call42111, %ftrace_dump_buf.exit.do.body46_crit_edge ]
  %gcov_ctr74 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 13), align 8, !dbg !197
  %108 = add i64 %gcov_ctr74, 1, !dbg !197
  store i64 %108, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.8, i32 0, i32 13), align 8, !dbg !197
  %109 = load ptr, ptr getelementptr inbounds (%struct.trace_iterator, ptr @iter, i32 0, i32 2), align 8, !dbg !197
  %data52 = getelementptr inbounds %struct.array_buffer, ptr %109, i32 0, i32 2, !dbg !197
  %110 = ptrtoint ptr %data52 to i32, !dbg !197
  call void @__asan_load4_noabort(i32 %110), !dbg !197
  %111 = load ptr, ptr %data52, align 8, !dbg !197
  %112 = ptrtoint ptr %111 to i32, !dbg !197
  %arrayidx54 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call42113, !dbg !197
  %113 = ptrtoint ptr %arrayidx54 to i32, !dbg !197
  call void @__asan_load4_noabort(i32 %113), !dbg !197
  %114 = load i32, ptr %arrayidx54, align 4, !dbg !197
  %add55 = add i32 %114, %112, !dbg !197
  %115 = inttoptr i32 %add55 to ptr, !dbg !197
  %gcov_ctr.i92 = load i64, ptr @__llvm_gcov_ctr.12, align 8
  %116 = add i64 %gcov_ctr.i92, 1
  store i64 %116, ptr @__llvm_gcov_ctr.12, align 8
  %gcov_ctr.i.i93 = load i64, ptr @__llvm_gcov_ctr.17, align 8
  %117 = add i64 %gcov_ctr.i.i93, 1
  store i64 %117, ptr @__llvm_gcov_ctr.17, align 8
  %call.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef %115, i32 noundef 4) #11, !dbg !198
  %gcov_ctr.i.i.i95 = load i64, ptr @__llvm_gcov_ctr.19, align 8
  %118 = add i64 %gcov_ctr.i.i.i95, 1
  store i64 %118, ptr @__llvm_gcov_ctr.19, align 8
  %gcov_ctr.i2.i96 = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %119 = add i64 %gcov_ctr.i2.i96, 1
  store i64 %119, ptr @__llvm_gcov_ctr.22, align 8
  %gcov_ctr.i.i3.i97 = load i64, ptr @__llvm_gcov_ctr.23, align 8
  %120 = add i64 %gcov_ctr.i.i3.i97, 1
  store i64 %120, ptr @__llvm_gcov_ctr.23, align 8
  call void @llvm.prefetch.p0(ptr %115, i32 1, i32 3, i32 1) #11, !dbg !202
  %121 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #11, !dbg !202, !srcloc !207
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tracing_buffer_mask to i32)), !dbg !196
  %122 = load ptr, ptr @tracing_buffer_mask, align 4, !dbg !196
  %call42 = call i32 @cpumask_next(i32 noundef %call42113, ptr noundef %122) #12, !dbg !196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !196
  %123 = load i32, ptr @nr_cpu_ids, align 4, !dbg !196
  %cmp43 = icmp ult i32 %call42, %123, !dbg !196
  br i1 %cmp43, label %do.body46.do.body46_crit_edge, label %do.body46.for.end57_crit_edge, !dbg !196, !llvm.loop !208

do.body46.for.end57_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10, !dbg !196
  br label %for.end57, !dbg !196

do.body46.do.body46_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #10, !dbg !196
  br label %do.body46, !dbg !196

for.end57:                                        ; preds = %do.body46.for.end57_crit_edge, %ftrace_dump_buf.exit.for.end57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_trap_printk to i32)), !dbg !210
  %124 = load i32, ptr @kdb_trap_printk, align 4, !dbg !210
  %dec = add i32 %124, -1, !dbg !210
  store i32 %dec, ptr @kdb_trap_printk, align 4, !dbg !210
  br label %cleanup, !dbg !211

cleanup:                                          ; preds = %for.end57, %if.then18, %if.then
  %retval.0 = phi i32 [ -2, %if.then ], [ -15, %if.then18 ], [ 0, %for.end57 ], !dbg !58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cp) #11, !dbg !212
  ret i32 %retval.0, !dbg !212
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_init_global_iter(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_total_entries(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_total_entries_cpu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_read_prepare(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_read_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_iter_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_find_next_entry_inc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @print_trace_line(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_printk_seq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_read_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 -2077059012) #11
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #11
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #11
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 17
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @__llvm_gcov_ctr.8, i8 0, i64 112, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.11, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.12, align 8
  store i64 0, ptr @__llvm_gcov_ctr.13, align 8
  store i64 0, ptr @__llvm_gcov_ctr.14, align 8
  store i64 0, ptr @__llvm_gcov_ctr.15, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.16, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.17, align 8
  store i64 0, ptr @__llvm_gcov_ctr.18, align 8
  store i64 0, ptr @__llvm_gcov_ctr.19, align 8
  store i64 0, ptr @__llvm_gcov_ctr.20, align 8
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  store i64 0, ptr @__llvm_gcov_ctr.22, align 8
  store i64 0, ptr @__llvm_gcov_ctr.23, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { noinline nounwind uwtable(sync) }
attributes #7 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.gcov = !{!35}
!llvm.ident = !{!36}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/trace_kdb.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__initcall__kmod_trace_kdb__272_164_kdb_ftrace_register7, !3, !"__initcall__kmod_trace_kdb__272_164_kdb_ftrace_register7", i1 false, i1 false}
!3 = !{!"../kernel/trace/trace_kdb.c", i32 164, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/trace/trace_kdb.c", i32 151, i32 10}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/trace/trace_kdb.c", i32 153, i32 11}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/trace/trace_kdb.c", i32 154, i32 10}
!10 = !{ptr @ftdump_cmd, !11, !"ftdump_cmd", i1 false, i1 false}
!11 = !{!"../kernel/trace/trace_kdb.c", i32 150, i32 17}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iter, !16, !"iter", i1 false, i1 false}
!16 = !{!"../kernel/trace/trace_kdb.c", i32 20, i32 30}
!17 = !{ptr @buffer_iter, !18, !"buffer_iter", i1 false, i1 false}
!18 = !{!"../kernel/trace/trace_kdb.c", i32 21, i32 33}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../kernel/trace/trace_kdb.c", i32 36, i32 13}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../kernel/trace/trace_kdb.c", i32 38, i32 14}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../kernel/trace/trace_kdb.c", i32 62, i32 15}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../kernel/trace/trace_kdb.c", i32 77, i32 14}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kdb.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/trace_kdb.gcda", !0}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = distinct !DISubprogram(name: "kdb_ftrace_register", scope: !1, file: !1, line: 158, type: !38, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!38 = !DISubroutineType(types: !39)
!39 = !{}
!40 = !DILocation(line: 159, scope: !37)
!41 = !DILocation(line: 160, column: 2, scope: !37)
!42 = !DILocation(line: 161, column: 2, scope: !37)
!43 = distinct !DISubprogram(name: "kdb_ftdump", scope: !1, file: !1, line: 95, type: !38, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!44 = !DILocation(line: 96, scope: !43)
!45 = !DILocation(line: 99, column: 2, scope: !43)
!46 = !DILocation(line: 99, column: 8, scope: !43)
!47 = !{!"auto-init"}
!48 = !DILocation(line: 103, column: 11, scope: !43)
!49 = !DILocation(line: 103, column: 6, scope: !43)
!50 = !DILocation(line: 104, column: 3, scope: !43)
!51 = !DILocation(line: 106, column: 6, scope: !43)
!52 = !DILocation(line: 107, column: 32, scope: !43)
!53 = !DILocation(line: 107, column: 18, scope: !43)
!54 = !DILocation(line: 108, column: 8, scope: !43)
!55 = !DILocation(line: 108, column: 7, scope: !43)
!56 = !DILocation(line: 109, column: 17, scope: !43)
!57 = !DILocation(line: 109, column: 4, scope: !43)
!58 = !DILocation(line: 0, scope: !43)
!59 = !DILocation(line: 110, column: 2, scope: !43)
!60 = !DILocation(line: 112, column: 11, scope: !43)
!61 = !DILocation(line: 112, column: 6, scope: !43)
!62 = !DILocation(line: 113, column: 28, scope: !43)
!63 = !DILocation(line: 113, column: 14, scope: !43)
!64 = !DILocation(line: 114, column: 8, scope: !43)
!65 = !DILocation(line: 114, column: 7, scope: !43)
!66 = !DILocation(line: 114, column: 11, scope: !43)
!67 = !DILocation(line: 114, column: 14, scope: !43)
!68 = !DILocation(line: 114, column: 23, scope: !43)
!69 = !DILocation(line: 114, column: 34, scope: !43)
!70 = !DILocation(line: 114, column: 37, scope: !43)
!71 = !DILocation(line: 114, column: 46, scope: !43)
!72 = !DILocation(line: 114, column: 50, scope: !43)
!73 = !DILocation(line: 115, column: 19, scope: !43)
!74 = !DILocation(line: 115, column: 25, scope: !75, inlinedAt: !77)
!75 = distinct !DISubprogram(name: "cpumask_check", scope: !76, file: !76, line: 113, type: !38, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!76 = !DIFile(filename: "../include/linux/cpumask.h", directory: "/llk/linux-5.17/build_arm_allyes")
!77 = distinct !DILocation(line: 379, column: 18, scope: !78, inlinedAt: !79)
!78 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !76, file: !76, line: 377, type: !38, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!79 = distinct !DILocation(line: 921, column: 9, scope: !80, inlinedAt: !81)
!80 = distinct !DISubprogram(name: "cpu_online", scope: !76, file: !76, line: 919, type: !38, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!81 = distinct !DILocation(line: 115, column: 8, scope: !43)
!82 = !DILocation(line: 108, column: 2, scope: !83, inlinedAt: !84)
!83 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !76, file: !76, line: 105, type: !38, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!84 = distinct !DILocation(line: 115, column: 2, scope: !75, inlinedAt: !77)
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !DILocation(line: 118, column: 16, scope: !87, inlinedAt: !89)
!87 = distinct !DISubprogram(name: "arch_test_bit", scope: !88, file: !88, line: 116, type: !38, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!88 = !DIFile(filename: "../include/asm-generic/bitops/non-atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!89 = distinct !DILocation(line: 379, column: 9, scope: !78, inlinedAt: !79)
!90 = !DILocation(line: 921, column: 9, scope: !80, inlinedAt: !81)
!91 = !DILocation(line: 116, column: 4, scope: !43)
!92 = !DILocation(line: 121, column: 17, scope: !43)
!93 = !DILocation(line: 123, column: 2, scope: !43)
!94 = !DILocation(line: 124, column: 19, scope: !43)
!95 = !DILocation(line: 126, column: 2, scope: !43)
!96 = !DILocation(line: 127, column: 15, scope: !43)
!97 = !DILocation(line: 101, column: 2, scope: !98, inlinedAt: !100)
!98 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !99, file: !99, line: 99, type: !38, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!99 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!100 = distinct !DILocation(line: 190, column: 2, scope: !101, inlinedAt: !103)
!101 = distinct !DISubprogram(name: "atomic_inc", scope: !102, file: !102, line: 188, type: !38, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!102 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!103 = distinct !DILocation(line: 127, column: 3, scope: !43)
!104 = !DILocation(line: 223, column: 1, scope: !105, inlinedAt: !107)
!105 = distinct !DISubprogram(name: "arch_atomic_add", scope: !106, file: !106, line: 223, type: !38, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!106 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!107 = distinct !DILocation(line: 340, column: 2, scope: !108, inlinedAt: !110)
!108 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !109, file: !109, line: 338, type: !38, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!109 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!110 = distinct !DILocation(line: 191, column: 2, scope: !101, inlinedAt: !103)
!111 = !{i64 2148160634, i64 2148160660, i64 2148160689, i64 2148160723, i64 2148160754, i64 2148160777}
!112 = distinct !{!112, !95, !113}
!113 = !DILocation(line: 128, column: 2, scope: !43)
!114 = !DILocation(line: 131, column: 19, scope: !43)
!115 = !DILocation(line: 131, column: 6, scope: !43)
!116 = !DILocation(line: 132, column: 16, scope: !43)
!117 = !DILocation(line: 132, column: 7, scope: !43)
!118 = !DILocation(line: 133, column: 10, scope: !43)
!119 = !DILocation(line: 133, column: 4, scope: !43)
!120 = !DILocation(line: 135, column: 10, scope: !43)
!121 = !DILocation(line: 136, column: 18, scope: !43)
!122 = !DILocation(line: 29, column: 12, scope: !123, inlinedAt: !124)
!123 = distinct !DISubprogram(name: "ftrace_dump_buf", scope: !1, file: !1, line: 23, type: !38, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!124 = distinct !DILocation(line: 139, column: 2, scope: !43)
!125 = !DILocation(line: 31, column: 20, scope: !123, inlinedAt: !124)
!126 = !DILocation(line: 34, column: 18, scope: !123, inlinedAt: !124)
!127 = !DILocation(line: 36, column: 2, scope: !123, inlinedAt: !124)
!128 = !DILocation(line: 37, column: 6, scope: !123, inlinedAt: !124)
!129 = !DILocation(line: 38, column: 41, scope: !123, inlinedAt: !124)
!130 = !DILocation(line: 38, column: 3, scope: !123, inlinedAt: !124)
!131 = !DILocation(line: 1970, column: 2, scope: !132, inlinedAt: !134)
!132 = distinct !DISubprogram(name: "trace_iterator_reset", scope: !133, file: !133, line: 1968, type: !38, scopeLine: 1969, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!133 = !DIFile(filename: "../kernel/trace/trace.h", directory: "/llk/linux-5.17/build_arm_allyes")
!134 = distinct !DILocation(line: 40, column: 2, scope: !123, inlinedAt: !124)
!135 = !DILocation(line: 1971, column: 12, scope: !132, inlinedAt: !134)
!136 = !DILocation(line: 41, column: 18, scope: !123, inlinedAt: !124)
!137 = !DILocation(line: 43, column: 15, scope: !123, inlinedAt: !124)
!138 = !DILocation(line: 43, column: 6, scope: !123, inlinedAt: !124)
!139 = !DILocation(line: 44, column: 3, scope: !123, inlinedAt: !124)
!140 = !DILocation(line: 46, column: 34, scope: !123, inlinedAt: !124)
!141 = !DILocation(line: 46, column: 48, scope: !123, inlinedAt: !124)
!142 = !DILocation(line: 46, column: 4, scope: !123, inlinedAt: !124)
!143 = !DILocation(line: 45, column: 9, scope: !123, inlinedAt: !124)
!144 = !DILocation(line: 45, column: 4, scope: !123, inlinedAt: !124)
!145 = !DILocation(line: 45, column: 26, scope: !123, inlinedAt: !124)
!146 = !DILocation(line: 48, column: 32, scope: !123, inlinedAt: !124)
!147 = !DILocation(line: 48, column: 27, scope: !123, inlinedAt: !124)
!148 = !DILocation(line: 48, column: 4, scope: !123, inlinedAt: !124)
!149 = !DILocation(line: 49, column: 4, scope: !123, inlinedAt: !124)
!150 = distinct !{!150, !139, !151}
!151 = !DILocation(line: 50, column: 3, scope: !123, inlinedAt: !124)
!152 = !DILocation(line: 51, column: 2, scope: !123, inlinedAt: !124)
!153 = !DILocation(line: 52, column: 17, scope: !123, inlinedAt: !124)
!154 = !DILocation(line: 54, column: 34, scope: !123, inlinedAt: !124)
!155 = !DILocation(line: 54, column: 48, scope: !123, inlinedAt: !124)
!156 = !DILocation(line: 54, column: 4, scope: !123, inlinedAt: !124)
!157 = !DILocation(line: 53, column: 8, scope: !123, inlinedAt: !124)
!158 = !DILocation(line: 53, column: 3, scope: !123, inlinedAt: !124)
!159 = !DILocation(line: 53, column: 30, scope: !123, inlinedAt: !124)
!160 = !DILocation(line: 56, column: 31, scope: !123, inlinedAt: !124)
!161 = !DILocation(line: 56, column: 26, scope: !123, inlinedAt: !124)
!162 = !DILocation(line: 56, column: 3, scope: !123, inlinedAt: !124)
!163 = !DILocation(line: 57, column: 3, scope: !123, inlinedAt: !124)
!164 = !DILocation(line: 60, column: 2, scope: !123, inlinedAt: !124)
!165 = !DILocation(line: 0, scope: !123, inlinedAt: !124)
!166 = !DILocation(line: 60, column: 9, scope: !123, inlinedAt: !124)
!167 = !DILocation(line: 61, column: 7, scope: !123, inlinedAt: !124)
!168 = !DILocation(line: 62, column: 4, scope: !123, inlinedAt: !124)
!169 = !DILocation(line: 63, column: 6, scope: !123, inlinedAt: !124)
!170 = !DILocation(line: 65, column: 8, scope: !123, inlinedAt: !124)
!171 = !DILocation(line: 65, column: 7, scope: !123, inlinedAt: !124)
!172 = !DILocation(line: 66, column: 4, scope: !123, inlinedAt: !124)
!173 = !DILocation(line: 67, column: 4, scope: !123, inlinedAt: !124)
!174 = !DILocation(line: 68, column: 3, scope: !123, inlinedAt: !124)
!175 = !DILocation(line: 69, column: 16, scope: !123, inlinedAt: !124)
!176 = !DILocation(line: 72, column: 7, scope: !123, inlinedAt: !124)
!177 = distinct !{!177, !164, !178}
!178 = !DILocation(line: 74, column: 2, scope: !123, inlinedAt: !124)
!179 = !DILocation(line: 73, column: 4, scope: !123, inlinedAt: !124)
!180 = !DILocation(line: 76, column: 6, scope: !123, inlinedAt: !124)
!181 = !DILocation(line: 77, column: 3, scope: !123, inlinedAt: !124)
!182 = !DILocation(line: 79, column: 3, scope: !123, inlinedAt: !124)
!183 = !DILocation(line: 82, column: 18, scope: !123, inlinedAt: !124)
!184 = !DILocation(line: 84, column: 2, scope: !123, inlinedAt: !124)
!185 = !DILocation(line: 85, column: 12, scope: !123, inlinedAt: !124)
!186 = !DILocation(line: 85, column: 7, scope: !123, inlinedAt: !124)
!187 = !DILocation(line: 86, column: 33, scope: !123, inlinedAt: !124)
!188 = !DILocation(line: 86, column: 28, scope: !123, inlinedAt: !124)
!189 = !DILocation(line: 86, column: 4, scope: !123, inlinedAt: !124)
!190 = !DILocation(line: 87, column: 9, scope: !123, inlinedAt: !124)
!191 = !DILocation(line: 87, column: 4, scope: !123, inlinedAt: !124)
!192 = !DILocation(line: 87, column: 26, scope: !123, inlinedAt: !124)
!193 = !DILocation(line: 88, column: 3, scope: !123, inlinedAt: !124)
!194 = distinct !{!194, !184, !195}
!195 = !DILocation(line: 89, column: 2, scope: !123, inlinedAt: !124)
!196 = !DILocation(line: 141, column: 2, scope: !43)
!197 = !DILocation(line: 142, column: 15, scope: !43)
!198 = !DILocation(line: 101, column: 2, scope: !98, inlinedAt: !199)
!199 = distinct !DILocation(line: 257, column: 2, scope: !200, inlinedAt: !201)
!200 = distinct !DISubprogram(name: "atomic_dec", scope: !102, file: !102, line: 255, type: !38, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!201 = distinct !DILocation(line: 142, column: 3, scope: !43)
!202 = !DILocation(line: 224, column: 1, scope: !203, inlinedAt: !204)
!203 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !106, file: !106, line: 224, type: !38, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!204 = distinct !DILocation(line: 511, column: 2, scope: !205, inlinedAt: !206)
!205 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !109, file: !109, line: 509, type: !38, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!206 = distinct !DILocation(line: 258, column: 2, scope: !200, inlinedAt: !201)
!207 = !{i64 2148163099, i64 2148163125, i64 2148163154, i64 2148163188, i64 2148163219, i64 2148163242}
!208 = distinct !{!208, !196, !209}
!209 = !DILocation(line: 143, column: 2, scope: !43)
!210 = !DILocation(line: 145, column: 17, scope: !43)
!211 = !DILocation(line: 147, column: 2, scope: !43)
!212 = !DILocation(line: 148, column: 1, scope: !43)
