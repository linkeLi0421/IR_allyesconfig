; ModuleID = '/llk/IR_all_yes/arch/arm/common/mcpm_entry.c_pt.bc'
source_filename = "../arch/arm/common/mcpm_entry.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mcpm_is_available\22, \22a\22\09"
module asm "\09.weak\09__crc_mcpm_is_available\09\09\09\09"
module asm "\09.long\09__crc_mcpm_is_available\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcpm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22mcpm_is_available\22\09\09\09\09\09"
module asm "__kstrtabns_mcpm_is_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sync_struct = type { [4 x %struct.mcpm_sync_struct] }
%struct.mcpm_sync_struct = type { [4 x %struct.anon.70], i8, [63 x i8], i8, [63 x i8] }
%struct.anon.70 = type { i8, [63 x i8] }
%struct.cpumask = type { [1 x i32] }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__raw_tickets = type { i16, i16 }
%struct.mcpm_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@mcpm_entry_vectors = external dso_local global [4 x [4 x i32]], align 4
@mcpm_entry_early_pokes = external dso_local global [4 x [4 x [2 x i32]]], align 4
@platform_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mcpm_is_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcpm_is_available = external dso_local constant [0 x i8], align 1
@__ksymtab_mcpm_is_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcpm_is_available to i32), ptr @__kstrtab_mcpm_is_available, ptr @__kstrtabns_mcpm_is_available }, section "___ksymtab_gpl+mcpm_is_available", align 4
@mcpm_cpu_power_up.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcpm_entry\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcpm_cpu_power_up\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/common/mcpm_entry.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: cpu %u cluster %u\0A\00", [41 x i8] zeroinitializer }, align 32
@mcpm_lock = internal global { %struct.arch_spinlock_t, [28 x i8] } zeroinitializer, align 32
@mcpm_cpu_use_count = internal global { [4 x [4 x i32]], [32 x i8] } zeroinitializer, align 32
@mcpm_cpu_power_down.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcpm_cpu_power_down\00", [44 x i8] zeroinitializer }, align 32
@mcpm_cpu_power_down.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@mcpm_wait_for_cpu_powerdown.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mcpm_wait_for_cpu_powerdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014%s: cpu %u, cluster %u failed to power down (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mcpm_wait_for_cpu_powerdown\00", [36 x i8] zeroinitializer }, align 32
@mcpm_wait_for_cpu_powerdown._entry_ptr = internal global ptr @mcpm_wait_for_cpu_powerdown._entry, section ".printk_index", align 4
@mcpm_cpu_suspend.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mcpm_loopback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013%s returned %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcpm_loopback\00", [18 x i8] zeroinitializer }, align 32
@mcpm_loopback._entry_ptr = internal global ptr @mcpm_loopback._entry, section ".printk_index", align 4
@mcpm_sync = dso_local global %struct.sync_struct zeroinitializer, align 64
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@mcpm_power_up_setup_phys = external dso_local global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 20]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 20]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 20]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 17, i64 20]
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"platform_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 161, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 200, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"mcpm_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 183, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"mcpm_cpu_use_count\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 185, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 248, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 317, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [32 x i8] c"../arch/arm/common/mcpm_entry.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 415, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_mcpm_is_available, ptr @mcpm_loopback._entry, ptr @mcpm_loopback._entry_ptr, ptr @mcpm_wait_for_cpu_powerdown._entry, ptr @mcpm_wait_for_cpu_powerdown._entry_ptr, ptr @platform_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mcpm_lock, ptr @mcpm_cpu_use_count, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcpm_lock to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcpm_cpu_use_count to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcpm_wait_for_cpu_powerdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcpm_loopback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcpm_set_entry_vector(i32 noundef %cpu, i32 noundef %cluster, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %ptr to i32
  %call = tail call i32 @__phys_addr_symbol(i32 noundef %0) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %arrayidx1 = getelementptr [4 x [4 x i32]], ptr @mcpm_entry_vectors, i32 0, i32 %cluster, i32 %cpu
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %arrayidx1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef %arrayidx1, i32 noundef 4) #12
  %3 = ptrtoint ptr %arrayidx1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  %add.ptr.i = getelementptr i8, ptr %arrayidx1, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %cond.end.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

cond.end.__sync_cache_range_w.exit_crit_edge:     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %cond.end.__sync_cache_range_w.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcpm_set_early_poke(i32 noundef %cpu, i32 noundef %cluster, i32 noundef %poke_phys_addr, i32 noundef %poke_val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1 = getelementptr [4 x [4 x [2 x i32]]], ptr @mcpm_entry_early_pokes, i32 0, i32 %cluster, i32 %cpu
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %poke_phys_addr, ptr %arrayidx1, align 4
  %arrayidx4 = getelementptr i32, ptr %arrayidx1, i32 1
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %poke_val, ptr %arrayidx4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %2(ptr noundef %arrayidx1, i32 noundef 8) #12
  %3 = ptrtoint ptr %arrayidx1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  %add.ptr.i = getelementptr i8, ptr %arrayidx1, i32 8
  %4 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mcpm_platform_register(ptr noundef %ops) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %ops, ptr @platform_ops, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mcpm_is_available() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool = icmp ne ptr %0, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcpm_cpu_power_up(i32 noundef %cpu, i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcpm_cpu_power_up.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcpm_cpu_power_up, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mcpm_cpu_power_up.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %cpu, i32 noundef %cluster) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %do.body6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %do.end
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 203) #12
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !45
  %and.i.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !46
  br i1 %tobool14.not, label %if.then17, label %do.body6.if.end18_crit_edge

do.body6.if.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #12
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.body6.if.end18_crit_edge
  tail call void @llvm.prefetch.p0(ptr nonnull @mcpm_lock, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #12, !srcloc !47
  %asmresult.i = extractvalue { i32, i32, i32 } %2, 0
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16
  %conv31.i = and i32 %asmresult.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i)
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i
  br i1 %cmp.not2.i, label %if.end18.arch_spin_lock.exit_crit_edge, label %if.end18.while.body.i_crit_edge

if.end18.while.body.i_crit_edge:                  ; preds = %if.end18
  br label %while.body.i

if.end18.arch_spin_lock.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end18.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !48
  %3 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %conv3.i = zext i16 %3 to i32
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %if.end18.arch_spin_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  %arrayidx21 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %cluster, i32 %cpu
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool22.not = icmp eq i32 %5, 0
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %cluster, i32 0
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %cluster, i32 1
  %8 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %cluster, i32 2
  %10 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.2.i, align 4
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %cluster, i32 3
  %12 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.3.i, align 4
  %inc = add i32 %5, 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %15 = icmp ult i32 %5, 2
  br i1 %15, label %do.end51, label %do.body43, !prof !50

do.body43:                                        ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #12, !srcloc !51
  unreachable

do.end51:                                         ; preds = %arch_spin_lock.exit
  %or.1.i = or i32 %9, %7
  %or.2.i = or i32 %or.1.i, %11
  %or.3.i = or i32 %or.2.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3.i)
  %tobool.not.i = icmp eq i32 %or.3.i, 0
  br i1 %tobool.not.i, label %if.then53, label %do.end51.if.end55_crit_edge

do.end51.if.end55_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load ptr, ptr @platform_ops, align 4
  %cluster_powerup = getelementptr inbounds %struct.mcpm_platform_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cluster_powerup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cluster_powerup, align 4
  %call54 = tail call i32 %18(i32 noundef %cluster) #12
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.end51.if.end55_crit_edge
  %ret.0 = phi i32 [ %call54, %if.then53 ], [ 0, %do.end51.if.end55_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool57.not = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %tobool22.not, i1 %tobool57.not, i1 false
  br i1 %or.cond, label %if.then58, label %if.end55.if.end60_crit_edge

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %19 = load ptr, ptr @platform_ops, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call59 = tail call i32 %21(i32 noundef %cpu, i32 noundef %cluster) #12
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %ret.1 = phi i32 [ %call59, %if.then58 ], [ %ret.0, %if.end55.if.end60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %22 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !54
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !55
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end60 ], [ -49, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcpm_cpu_power_down() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #13, !srcloc !56
  %and = and i32 %0, 255
  %shr1 = lshr i32 %0, 8
  %and2 = and i32 %shr1, 255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcpm_cpu_power_down.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcpm_cpu_power_down, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mcpm_cpu_power_down.__UNIQUE_ID_ddebug217, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %and, i32 noundef %and2) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @platform_ops, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %land.rhs, label %do.body61

land.rhs:                                         ; preds = %do.end
  %.b198 = load i1, ptr @mcpm_cpu_power_down.__already_done, align 1
  br i1 %.b198, label %land.rhs.if.then59_crit_edge, label %if.then24, !prof !50

land.rhs.if.then59_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then59

if.then24:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mcpm_cpu_power_down.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 9, ptr noundef null) #12
  br label %if.then59

if.then59:                                        ; preds = %if.then24, %land.rhs.if.then59_crit_edge
  ret void

do.body61:                                        ; preds = %do.end
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !45
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool75.not = icmp eq i32 %and.i, 0
  br i1 %tobool75.not, label %do.body85, label %do.end93, !prof !57

do.body85:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 251, 0\0A.popsection", ""() #12, !srcloc !58
  unreachable

do.end93:                                         ; preds = %do.body61
  tail call void @setup_mm_for_reboot() #12
  tail call fastcc void @__mcpm_cpu_going_down(i32 noundef %and, i32 noundef %and2)
  tail call void @llvm.prefetch.p0(ptr nonnull @mcpm_lock, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #12, !srcloc !47
  %asmresult.i = extractvalue { i32, i32, i32 } %3, 0
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16
  %conv31.i = and i32 %asmresult.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i)
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i
  br i1 %cmp.not2.i, label %do.end93.arch_spin_lock.exit_crit_edge, label %do.end93.while.body.i_crit_edge

do.end93.while.body.i_crit_edge:                  ; preds = %do.end93
  br label %while.body.i

do.end93.arch_spin_lock.exit_crit_edge:           ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end93.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !48
  %4 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %conv3.i = zext i16 %4 to i32
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %do.end93.arch_spin_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  %call95 = tail call fastcc i32 @__mcpm_cluster_state(i32 noundef %and2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %call95)
  %cmp96.not = icmp eq i32 %call95, 34
  br i1 %cmp96.not, label %do.end113, label %do.body105, !prof !50

do.body105:                                       ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 257, 0\0A.popsection", ""() #12, !srcloc !59
  unreachable

do.end113:                                        ; preds = %arch_spin_lock.exit
  %arrayidx114 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 %and
  %5 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx114, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %arrayidx114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp118.not = icmp eq i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %7 = icmp ugt i32 %dec, 1
  br i1 %7, label %do.body133, label %do.end141, !prof !57

do.body133:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 261, 0\0A.popsection", ""() #12, !srcloc !60
  unreachable

do.end141:                                        ; preds = %do.end113
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 0
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 1
  %10 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.1.i, align 4
  %or.1.i = or i32 %11, %9
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 2
  %12 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.2.i, align 4
  %or.2.i = or i32 %or.1.i, %13
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 3
  %14 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.3.i, align 4
  %or.3.i = or i32 %or.2.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3.i)
  %tobool.not.i = icmp eq i32 %or.3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %do.end141.if.else_crit_edge

do.end141.if.else_crit_edge:                      ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %do.end141
  %call152 = tail call fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %and, i32 noundef %and2)
  br i1 %call152, label %if.then154, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then154:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %16 = load ptr, ptr @platform_ops, align 4
  %cpu_powerdown_prepare = getelementptr inbounds %struct.mcpm_platform_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu_powerdown_prepare to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpu_powerdown_prepare, align 4
  tail call void %18(i32 noundef %and, i32 noundef %and2) #12
  %19 = load ptr, ptr @platform_ops, align 4
  %cluster_powerdown_prepare = getelementptr inbounds %struct.mcpm_platform_ops, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %cluster_powerdown_prepare to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cluster_powerdown_prepare, align 4
  tail call void %21(i32 noundef %and2) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %22 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !54
  %23 = load ptr, ptr @platform_ops, align 4
  %cluster_cache_disable = getelementptr inbounds %struct.mcpm_platform_ops, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %cluster_cache_disable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cluster_cache_disable, align 4
  tail call void %25() #12
  tail call fastcc void @__mcpm_outbound_leave_critical(i32 noundef %and2, i32 noundef 33)
  br label %if.end159

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end141.if.else_crit_edge
  br i1 %cmp118.not, label %if.then156, label %if.else.if.end158_crit_edge

if.else.if.end158_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end158

if.then156:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %26 = load ptr, ptr @platform_ops, align 4
  %cpu_powerdown_prepare157 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu_powerdown_prepare157 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu_powerdown_prepare157, align 4
  tail call void %28(i32 noundef %and, i32 noundef %and2) #12
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %if.else.if.end158_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %29 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %inc.i200 = add i16 %29, 1
  store i16 %inc.i200, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !54
  %30 = load ptr, ptr @platform_ops, align 4
  %cpu_cache_disable = getelementptr inbounds %struct.mcpm_platform_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %cpu_cache_disable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_cache_disable, align 4
  tail call void %32() #12
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then154
  tail call fastcc void @__mcpm_cpu_down(i32 noundef %and, i32 noundef %and2)
  br i1 %cmp118.not, label %if.then161, label %if.end159.if.end162_crit_edge

if.end159.if.end162_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end162

if.then161:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "wfi", "~{memory}"() #12, !srcloc !61
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end159.if.end162_crit_edge
  %33 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i201 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i201 to ptr
  %cpu164 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu164 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu164, align 4
  %arrayidx165 = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx165, align 4
  %reset = getelementptr inbounds %struct.processor, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reset, align 4
  %41 = ptrtoint ptr %40 to i32
  %call167 = tail call i32 @__phys_addr_symbol(i32 noundef %41) #12
  %42 = inttoptr i32 %call167 to ptr
  %call171 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #12
  call void @__asan_handle_no_return()
  tail call void %42(i32 noundef %call171, i1 noundef zeroext false) #14
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @setup_mm_for_reboot() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mcpm_cpu_going_down(i32 noundef %cpu, i32 noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster
  %arrayidx1 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 20, ptr %arrayidx1, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %arrayidx1, i32 noundef 1) #12
  %2 = ptrtoint ptr %arrayidx1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %add.ptr.i = getelementptr i8, ptr %arrayidx1, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mcpm_cluster_state(i32 noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %cluster1 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.__sync_cache_range_r.exit_crit_edge, label %if.then.i

entry.__sync_cache_range_r.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit

if.then.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %cluster1, i32 noundef 1) #12
  %2 = ptrtoint ptr %cluster1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %add.ptr.i = getelementptr i8, ptr %cluster1, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.__sync_cache_range_r.exit_crit_edge, label %if.then.i.i

if.then.i.__sync_cache_range_r.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_r.exit

__sync_cache_range_r.exit:                        ; preds = %if.then.i.i, %if.then.i.__sync_cache_range_r.exit_crit_edge, %entry.__sync_cache_range_r.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %5(ptr noundef %cluster1, i32 noundef 1) #12
  %6 = ptrtoint ptr %cluster1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cluster1, align 64
  %conv = sext i8 %7 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %cpu, i32 noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster
  %cluster1 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster, i32 1
  %0 = ptrtoint ptr %cluster1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 35, ptr %cluster1, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %cluster1, i32 noundef 1) #12
  %2 = ptrtoint ptr %cluster1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %add.ptr.i = getelementptr i8, ptr %cluster1, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  %inbound = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %__sync_cache_range_w.exit.__sync_cache_range_r.exit_crit_edge, label %if.then.i

__sync_cache_range_w.exit.__sync_cache_range_r.exit_crit_edge: ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit

if.then.i:                                        ; preds = %__sync_cache_range_w.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %6(ptr noundef %inbound, i32 noundef 1) #12
  %7 = ptrtoint ptr %inbound to i32
  %call.i36 = tail call i32 @__virt_to_phys(i32 noundef %7) #12
  %add.ptr.i37 = getelementptr i8, ptr %inbound, i32 1
  %8 = ptrtoint ptr %add.ptr.i37 to i32
  %call1.i38 = tail call i32 @__virt_to_phys(i32 noundef %8) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i39 = icmp eq ptr %9, null
  br i1 %tobool.not.i.i39, label %if.then.i.__sync_cache_range_r.exit_crit_edge, label %if.then.i.i40

if.then.i.__sync_cache_range_r.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit

if.then.i.i40:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(i32 noundef %call.i36, i32 noundef %call1.i38) #12
  br label %__sync_cache_range_r.exit

__sync_cache_range_r.exit:                        ; preds = %if.then.i.i40, %if.then.i.__sync_cache_range_r.exit_crit_edge, %__sync_cache_range_w.exit.__sync_cache_range_r.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %10(ptr noundef %inbound, i32 noundef 1) #12
  %11 = ptrtoint ptr %inbound to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %inbound, align 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %12)
  %cmp = icmp eq i8 %12, 50
  br i1 %cmp, label %__sync_cache_range_r.exit.abort_crit_edge, label %if.end

__sync_cache_range_r.exit.abort_crit_edge:        ; preds = %__sync_cache_range_r.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end:                                           ; preds = %__sync_cache_range_r.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i41 = icmp eq ptr %13, null
  br i1 %tobool.not.i41, label %if.end.__sync_cache_range_r.exit48_crit_edge, label %if.then.i46

if.end.__sync_cache_range_r.exit48_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit48

if.then.i46:                                      ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %14(ptr noundef %arrayidx, i32 noundef 256) #12
  %15 = ptrtoint ptr %arrayidx to i32
  %call.i42 = tail call i32 @__virt_to_phys(i32 noundef %15) #12
  %add.ptr.i43 = getelementptr i8, ptr %arrayidx, i32 256
  %16 = ptrtoint ptr %add.ptr.i43 to i32
  %call1.i44 = tail call i32 @__virt_to_phys(i32 noundef %16) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i45 = icmp eq ptr %17, null
  br i1 %tobool.not.i.i45, label %if.then.i46.__sync_cache_range_r.exit48_crit_edge, label %if.then.i.i47

if.then.i46.__sync_cache_range_r.exit48_crit_edge: ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit48

if.then.i.i47:                                    ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %17(i32 noundef %call.i42, i32 noundef %call1.i44) #12
  br label %__sync_cache_range_r.exit48

__sync_cache_range_r.exit48:                      ; preds = %if.then.i.i47, %if.then.i46.__sync_cache_range_r.exit48_crit_edge, %if.end.__sync_cache_range_r.exit48_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %18(ptr noundef %arrayidx, i32 noundef 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp7 = icmp eq i32 %cpu, 0
  br i1 %cmp7, label %__sync_cache_range_r.exit48.while.cond.preheader.1_crit_edge, label %while.cond.preheader

__sync_cache_range_r.exit48.while.cond.preheader.1_crit_edge: ; preds = %__sync_cache_range_r.exit48
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.1

while.cond.preheader:                             ; preds = %__sync_cache_range_r.exit48
  %19 = ptrtoint ptr %arrayidx to i32
  %add.ptr.i51 = getelementptr i8, ptr %arrayidx, i32 1
  %20 = ptrtoint ptr %add.ptr.i51 to i32
  br label %while.cond

while.cond:                                       ; preds = %__sync_cache_range_r.exit56, %while.cond.preheader
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 64
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i8 %22, label %while.cond.abort_crit_edge [
    i8 20, label %if.end18
    i8 17, label %for.inc
  ]

while.cond.abort_crit_edge:                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end18:                                         ; preds = %while.cond
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i49 = icmp eq ptr %24, null
  br i1 %tobool.not.i49, label %if.end18.__sync_cache_range_r.exit56_crit_edge, label %if.then.i54

if.end18.__sync_cache_range_r.exit56_crit_edge:   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56

if.then.i54:                                      ; preds = %if.end18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %25(ptr noundef %arrayidx, i32 noundef 1) #12
  %call.i50 = tail call i32 @__virt_to_phys(i32 noundef %19) #12
  %call1.i52 = tail call i32 @__virt_to_phys(i32 noundef %20) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i53 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i53, label %if.then.i54.__sync_cache_range_r.exit56_crit_edge, label %if.then.i.i55

if.then.i54.__sync_cache_range_r.exit56_crit_edge: ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56

if.then.i.i55:                                    ; preds = %if.then.i54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %26(i32 noundef %call.i50, i32 noundef %call1.i52) #12
  br label %__sync_cache_range_r.exit56

__sync_cache_range_r.exit56:                      ; preds = %if.then.i.i55, %if.then.i54.__sync_cache_range_r.exit56_crit_edge, %if.end18.__sync_cache_range_r.exit56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %27(ptr noundef %arrayidx, i32 noundef 1) #12
  br label %while.cond

for.inc:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cpu)
  %cmp7.1 = icmp eq i32 %cpu, 1
  br i1 %cmp7.1, label %for.inc.while.cond.preheader.2_crit_edge, label %for.inc.while.cond.preheader.1_crit_edge

for.inc.while.cond.preheader.1_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.1

for.inc.while.cond.preheader.2_crit_edge:         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.2

while.cond.preheader.1:                           ; preds = %for.inc.while.cond.preheader.1_crit_edge, %__sync_cache_range_r.exit48.while.cond.preheader.1_crit_edge
  %arrayidx12.1 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx12.1 to i32
  %add.ptr.i51.1 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %add.ptr.i51.1 to i32
  br label %while.cond.1

while.cond.1:                                     ; preds = %__sync_cache_range_r.exit56.1, %while.cond.preheader.1
  %30 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12.1, align 64
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %31, label %while.cond.1.abort_crit_edge [
    i8 20, label %if.end18.1
    i8 17, label %for.inc.1
  ]

while.cond.1.abort_crit_edge:                     ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end18.1:                                       ; preds = %while.cond.1
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i49.1 = icmp eq ptr %33, null
  br i1 %tobool.not.i49.1, label %if.end18.1.__sync_cache_range_r.exit56.1_crit_edge, label %if.then.i54.1

if.end18.1.__sync_cache_range_r.exit56.1_crit_edge: ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.1

if.then.i54.1:                                    ; preds = %if.end18.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %34(ptr noundef %arrayidx12.1, i32 noundef 1) #12
  %call.i50.1 = tail call i32 @__virt_to_phys(i32 noundef %28) #12
  %call1.i52.1 = tail call i32 @__virt_to_phys(i32 noundef %29) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i53.1 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i53.1, label %if.then.i54.1.__sync_cache_range_r.exit56.1_crit_edge, label %if.then.i.i55.1

if.then.i54.1.__sync_cache_range_r.exit56.1_crit_edge: ; preds = %if.then.i54.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.1

if.then.i.i55.1:                                  ; preds = %if.then.i54.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %35(i32 noundef %call.i50.1, i32 noundef %call1.i52.1) #12
  br label %__sync_cache_range_r.exit56.1

__sync_cache_range_r.exit56.1:                    ; preds = %if.then.i.i55.1, %if.then.i54.1.__sync_cache_range_r.exit56.1_crit_edge, %if.end18.1.__sync_cache_range_r.exit56.1_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %36(ptr noundef %arrayidx12.1, i32 noundef 1) #12
  br label %while.cond.1

for.inc.1:                                        ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cpu)
  %cmp7.2 = icmp eq i32 %cpu, 2
  br i1 %cmp7.2, label %for.inc.1.while.cond.preheader.3_crit_edge, label %for.inc.1.while.cond.preheader.2_crit_edge

for.inc.1.while.cond.preheader.2_crit_edge:       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.2

for.inc.1.while.cond.preheader.3_crit_edge:       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.3

while.cond.preheader.2:                           ; preds = %for.inc.1.while.cond.preheader.2_crit_edge, %for.inc.while.cond.preheader.2_crit_edge
  %arrayidx12.2 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx12.2 to i32
  %add.ptr.i51.2 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %add.ptr.i51.2 to i32
  br label %while.cond.2

while.cond.2:                                     ; preds = %__sync_cache_range_r.exit56.2, %while.cond.preheader.2
  %39 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx12.2, align 64
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %40, label %while.cond.2.abort_crit_edge [
    i8 20, label %if.end18.2
    i8 17, label %for.inc.2
  ]

while.cond.2.abort_crit_edge:                     ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end18.2:                                       ; preds = %while.cond.2
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i49.2 = icmp eq ptr %42, null
  br i1 %tobool.not.i49.2, label %if.end18.2.__sync_cache_range_r.exit56.2_crit_edge, label %if.then.i54.2

if.end18.2.__sync_cache_range_r.exit56.2_crit_edge: ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.2

if.then.i54.2:                                    ; preds = %if.end18.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %43(ptr noundef %arrayidx12.2, i32 noundef 1) #12
  %call.i50.2 = tail call i32 @__virt_to_phys(i32 noundef %37) #12
  %call1.i52.2 = tail call i32 @__virt_to_phys(i32 noundef %38) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i53.2 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i53.2, label %if.then.i54.2.__sync_cache_range_r.exit56.2_crit_edge, label %if.then.i.i55.2

if.then.i54.2.__sync_cache_range_r.exit56.2_crit_edge: ; preds = %if.then.i54.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.2

if.then.i.i55.2:                                  ; preds = %if.then.i54.2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %44(i32 noundef %call.i50.2, i32 noundef %call1.i52.2) #12
  br label %__sync_cache_range_r.exit56.2

__sync_cache_range_r.exit56.2:                    ; preds = %if.then.i.i55.2, %if.then.i54.2.__sync_cache_range_r.exit56.2_crit_edge, %if.end18.2.__sync_cache_range_r.exit56.2_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %45(ptr noundef %arrayidx12.2, i32 noundef 1) #12
  br label %while.cond.2

for.inc.2:                                        ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cpu)
  %cmp7.3 = icmp eq i32 %cpu, 3
  br i1 %cmp7.3, label %for.inc.2.cleanup22_crit_edge, label %for.inc.2.while.cond.preheader.3_crit_edge

for.inc.2.while.cond.preheader.3_crit_edge:       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader.3

for.inc.2.cleanup22_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

while.cond.preheader.3:                           ; preds = %for.inc.2.while.cond.preheader.3_crit_edge, %for.inc.1.while.cond.preheader.3_crit_edge
  %arrayidx12.3 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 3
  %46 = ptrtoint ptr %arrayidx12.3 to i32
  %add.ptr.i51.3 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %add.ptr.i51.3 to i32
  br label %while.cond.3

while.cond.3:                                     ; preds = %__sync_cache_range_r.exit56.3, %while.cond.preheader.3
  %48 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx12.3, align 64
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %49, label %while.cond.3.abort_crit_edge [
    i8 20, label %if.end18.3
    i8 17, label %while.cond.3.cleanup22_crit_edge
  ]

while.cond.3.cleanup22_crit_edge:                 ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

while.cond.3.abort_crit_edge:                     ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end18.3:                                       ; preds = %while.cond.3
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !62
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i49.3 = icmp eq ptr %51, null
  br i1 %tobool.not.i49.3, label %if.end18.3.__sync_cache_range_r.exit56.3_crit_edge, label %if.then.i54.3

if.end18.3.__sync_cache_range_r.exit56.3_crit_edge: ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.3

if.then.i54.3:                                    ; preds = %if.end18.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %52(ptr noundef %arrayidx12.3, i32 noundef 1) #12
  %call.i50.3 = tail call i32 @__virt_to_phys(i32 noundef %46) #12
  %call1.i52.3 = tail call i32 @__virt_to_phys(i32 noundef %47) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 2), align 4
  %tobool.not.i.i53.3 = icmp eq ptr %53, null
  br i1 %tobool.not.i.i53.3, label %if.then.i54.3.__sync_cache_range_r.exit56.3_crit_edge, label %if.then.i.i55.3

if.then.i54.3.__sync_cache_range_r.exit56.3_crit_edge: ; preds = %if.then.i54.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_r.exit56.3

if.then.i.i55.3:                                  ; preds = %if.then.i54.3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %53(i32 noundef %call.i50.3, i32 noundef %call1.i52.3) #12
  br label %__sync_cache_range_r.exit56.3

__sync_cache_range_r.exit56.3:                    ; preds = %if.then.i.i55.3, %if.then.i54.3.__sync_cache_range_r.exit56.3_crit_edge, %if.end18.3.__sync_cache_range_r.exit56.3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %54(ptr noundef %arrayidx12.3, i32 noundef 1) #12
  br label %while.cond.3

abort:                                            ; preds = %while.cond.3.abort_crit_edge, %while.cond.2.abort_crit_edge, %while.cond.1.abort_crit_edge, %while.cond.abort_crit_edge, %__sync_cache_range_r.exit.abort_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  %55 = ptrtoint ptr %cluster1 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 34, ptr %cluster1, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %56(ptr noundef %cluster1, i32 noundef 1) #12
  %call.i.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %call1.i.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %abort.__mcpm_outbound_leave_critical.exit_crit_edge, label %if.then.i.i.i

abort.__mcpm_outbound_leave_critical.exit_crit_edge: ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  br label %__mcpm_outbound_leave_critical.exit

if.then.i.i.i:                                    ; preds = %abort
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %57(i32 noundef %call.i.i, i32 noundef %call1.i.i) #12
  br label %__mcpm_outbound_leave_critical.exit

__mcpm_outbound_leave_critical.exit:              ; preds = %if.then.i.i.i, %abort.__mcpm_outbound_leave_critical.exit_crit_edge
  tail call void asm sideeffect "sev", "~{memory}"() #12, !srcloc !64
  br label %cleanup22

cleanup22:                                        ; preds = %__mcpm_outbound_leave_critical.exit, %while.cond.3.cleanup22_crit_edge, %for.inc.2.cleanup22_crit_edge
  %retval.0 = phi i1 [ false, %__mcpm_outbound_leave_critical.exit ], [ true, %for.inc.2.cleanup22_crit_edge ], [ true, %while.cond.3.cleanup22_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mcpm_outbound_leave_critical(i32 noundef %cluster, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !63
  %conv = trunc i32 %state to i8
  %cluster1 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster, i32 1
  %0 = ptrtoint ptr %cluster1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %cluster1, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %cluster1, i32 noundef 1) #12
  %2 = ptrtoint ptr %cluster1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %add.ptr.i = getelementptr i8, ptr %cluster1, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  tail call void asm sideeffect "sev", "~{memory}"() #12, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mcpm_cpu_down(i32 noundef %cpu, i32 noundef %cluster) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !65
  %arrayidx = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %cluster
  %arrayidx1 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %arrayidx1, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %1(ptr noundef %arrayidx1, i32 noundef 1) #12
  %2 = ptrtoint ptr %arrayidx1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #12
  %add.ptr.i = getelementptr i8, ptr %arrayidx1, i32 1
  %3 = ptrtoint ptr %add.ptr.i to i32
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %entry.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

entry.__sync_cache_range_w.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %entry.__sync_cache_range_w.exit_crit_edge
  tail call void asm sideeffect "sev", "~{memory}"() #12, !srcloc !66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcpm_entry_point() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcpm_wait_for_cpu_powerdown(i32 noundef %cpu, i32 noundef %cluster) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.land.rhs_crit_edge, label %lor.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.rhs:                                          ; preds = %entry
  %wait_for_powerdown = getelementptr inbounds %struct.mcpm_platform_ops, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %wait_for_powerdown to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wait_for_powerdown, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.rhs.land.rhs_crit_edge, label %if.end40

lor.rhs.land.rhs_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b56 = load i1, ptr @mcpm_wait_for_cpu_powerdown.__already_done, align 1
  br i1 %.b56, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !50

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mcpm_wait_for_cpu_powerdown.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 312, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %lor.rhs
  %call = tail call i32 %2(i32 noundef %cpu, i32 noundef %cluster) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool42.not = icmp eq i32 %call, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %cpu, i32 noundef %cluster, i32 noundef %call) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end40.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -49, %if.then ], [ %call, %do.end46 ], [ 0, %if.end40.cleanup_crit_edge ], [ -49, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mcpm_cpu_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %land.rhs, label %if.end39.critedge

land.rhs:                                         ; preds = %entry
  %.b49 = load i1, ptr @mcpm_cpu_suspend.__already_done, align 1
  br i1 %.b49, label %land.rhs.return_crit_edge, label %if.then, !prof !50

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mcpm_cpu_suspend.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 325, i32 noundef 9, ptr noundef null) #12
  br label %return

if.end39.critedge:                                ; preds = %entry
  %cpu_suspend_prepare = getelementptr inbounds %struct.mcpm_platform_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %cpu_suspend_prepare to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpu_suspend_prepare, align 4
  %tobool40.not = icmp eq ptr %2, null
  br i1 %tobool40.not, label %if.end39.critedge.if.end45_crit_edge, label %if.then41

if.end39.critedge.if.end45_crit_edge:             ; preds = %if.end39.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then41:                                        ; preds = %if.end39.critedge
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #13, !srcloc !56
  %and = and i32 %3, 255
  %shr42 = lshr i32 %3, 8
  %and43 = and i32 %shr42, 255
  tail call void @llvm.prefetch.p0(ptr nonnull @mcpm_lock, i32 1, i32 3, i32 1) #12
  %4 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #12, !srcloc !47
  %asmresult.i = extractvalue { i32, i32, i32 } %4, 0
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16
  %conv31.i = and i32 %asmresult.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i)
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i
  br i1 %cmp.not2.i, label %if.then41.arch_spin_lock.exit_crit_edge, label %if.then41.while.body.i_crit_edge

if.then41.while.body.i_crit_edge:                 ; preds = %if.then41
  br label %while.body.i

if.then41.arch_spin_lock.exit_crit_edge:          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then41.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !48
  %5 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %conv3.i = zext i16 %5 to i32
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %if.then41.arch_spin_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  %6 = load ptr, ptr @platform_ops, align 4
  %cpu_suspend_prepare44 = getelementptr inbounds %struct.mcpm_platform_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %cpu_suspend_prepare44 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_suspend_prepare44, align 4
  tail call void %8(i32 noundef %and, i32 noundef %and43) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %9 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %inc.i = add i16 %9, 1
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !54
  br label %if.end45

if.end45:                                         ; preds = %arch_spin_lock.exit, %if.end39.critedge.if.end45_crit_edge
  tail call void @mcpm_cpu_power_down()
  br label %return

return:                                           ; preds = %if.end45, %if.then, %land.rhs.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcpm_cpu_powered_up() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = load ptr, ptr @platform_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #13, !srcloc !56
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !67
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.then13, label %if.end.do.end16_crit_edge

if.end.do.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #12
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.end.do.end16_crit_edge
  tail call void @llvm.prefetch.p0(ptr nonnull @mcpm_lock, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$3]\0A\09add\09$1, $0, $4\0A\09strex\09$2, $1, [$3]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,r,I,~{cc}"(ptr nonnull @mcpm_lock, i32 65536) #12, !srcloc !47
  %asmresult.i = extractvalue { i32, i32, i32 } %3, 0
  %lockval.sroa.0.0.extract.shift.i = lshr i32 %asmresult.i, 16
  %conv31.i = and i32 %asmresult.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %lockval.sroa.0.0.extract.shift.i, i32 %conv31.i)
  %cmp.not2.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv31.i
  br i1 %cmp.not2.i, label %do.end16.arch_spin_lock.exit_crit_edge, label %do.end16.while.body.i_crit_edge

do.end16.while.body.i_crit_edge:                  ; preds = %do.end16
  br label %while.body.i

do.end16.arch_spin_lock.exit_crit_edge:           ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end16.while.body.i_crit_edge
  tail call void asm sideeffect "wfe", "~{memory}"() #12, !srcloc !48
  %4 = load volatile i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %conv3.i = zext i16 %4 to i32
  %cmp.not.i = icmp eq i32 %lockval.sroa.0.0.extract.shift.i, %conv3.i
  br i1 %cmp.not.i, label %while.body.i.arch_spin_lock.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.arch_spin_lock.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %arch_spin_lock.exit

arch_spin_lock.exit:                              ; preds = %while.body.i.arch_spin_lock.exit_crit_edge, %do.end16.arch_spin_lock.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !49
  %arrayidx17 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 %and
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not = icmp eq i32 %6, 0
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 0
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 1
  %9 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.1.i, align 4
  %or.1.i = or i32 %10, %8
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 2
  %11 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.2.i, align 4
  %or.2.i = or i32 %or.1.i, %12
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and2, i32 3
  %13 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx1.3.i, align 4
  %or.3.i = or i32 %or.2.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.3.i)
  %tobool.not.i = icmp eq i32 %or.3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true, label %arch_spin_lock.exit.if.end26_crit_edge

arch_spin_lock.exit.if.end26_crit_edge:           ; preds = %arch_spin_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %arch_spin_lock.exit
  %15 = load ptr, ptr @platform_ops, align 4
  %cluster_is_up = getelementptr inbounds %struct.mcpm_platform_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %cluster_is_up to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cluster_is_up, align 4
  %tobool23.not = icmp eq ptr %17, null
  br i1 %tobool23.not, label %land.lhs.true.if.end26_crit_edge, label %if.then24

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %17(i32 noundef %and2) #12
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true.if.end26_crit_edge, %arch_spin_lock.exit.if.end26_crit_edge
  br i1 %tobool18.not, label %if.then28, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %arrayidx17, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %19 = load ptr, ptr @platform_ops, align 4
  %cpu_is_up = getelementptr inbounds %struct.mcpm_platform_ops, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %cpu_is_up to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpu_is_up, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %21(i32 noundef %and, i32 noundef %and2) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end31.if.end35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !52
  %22 = load i16, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  %inc.i = add i16 %22, 1
  store i16 %inc.i, ptr getelementptr inbounds (%struct.__raw_tickets, ptr @mcpm_lock, i32 0, i32 1), align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !54
  br i1 %tobool12.not, label %if.then45, label %if.end35.do.body47_crit_edge

if.end35.do.body47_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.then45:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #12
  br label %do.body47

do.body47:                                        ; preds = %if.then45, %if.end35.do.body47_crit_edge
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !45
  %and.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool55.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool55.not, label %if.then60, label %do.body47.do.end63_crit_edge, !prof !57

do.body47.do.end63_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end63

if.then60:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body47.do.end63_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #12, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end63 ], [ -49, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcpm_loopback(ptr noundef %cache_disable) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !45
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !46
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void asm sideeffect "cpsid f\09@ __clf", "~{memory},~{cc}"() #12, !srcloc !69
  %call2 = tail call i32 @cpu_pm_enter() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %cache_disable to i32
  %call5 = tail call i32 @cpu_suspend(i32 noundef %1, ptr noundef nonnull @nocache_trampoline) #12
  %call6 = tail call i32 @cpu_pm_exit() #12
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.if.end7_crit_edge ], [ %call5, %if.then4 ]
  tail call void asm sideeffect "cpsie f\09@ __stf", "~{memory},~{cc}"() #12, !srcloc !70
  tail call void @trace_hardirqs_on() #12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end7.if.end17_crit_edge, label %do.end15

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #15
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end7.if.end17_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nocache_trampoline(i32 noundef %_arg) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #13, !srcloc !56
  %and = and i32 %0, 255
  %shr1 = lshr i32 %0, 8
  %and2 = and i32 %shr1, 255
  tail call void @mcpm_set_entry_vector(i32 noundef %and, i32 noundef %and2, ptr noundef nonnull @cpu_resume_no_hyp)
  tail call void @setup_mm_for_reboot() #12
  tail call fastcc void @__mcpm_cpu_going_down(i32 noundef %and, i32 noundef %and2)
  %call3 = tail call fastcc zeroext i1 @__mcpm_outbound_enter_critical(i32 noundef %and, i32 noundef %and2)
  br i1 %call3, label %do.end11, label %do.body6, !prof !50

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/common/mcpm_entry.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 385, 0\0A.popsection", ""() #12, !srcloc !71
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = inttoptr i32 %_arg to ptr
  tail call void %1() #12
  tail call fastcc void @__mcpm_outbound_leave_critical(i32 noundef %and2, i32 noundef 33)
  tail call fastcc void @__mcpm_cpu_down(i32 noundef %and, i32 noundef %and2)
  %2 = tail call i32 @llvm.read_register.i32(metadata !35) #12
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu13 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu13, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %reset = getelementptr inbounds %struct.processor, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  %10 = ptrtoint ptr %9 to i32
  %call14 = tail call i32 @__phys_addr_symbol(i32 noundef %10) #12
  %11 = inttoptr i32 %call14 to ptr
  %call18 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @mcpm_entry_point to i32)) #12
  call void @__asan_handle_no_return()
  tail call void %11(i32 noundef %call18, i1 noundef zeroext false) #14
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcpm_sync_init(ptr noundef %power_up_setup) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.inc16.for.body_crit_edge, %entry
  %i.055 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %i.055
  %cluster = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %i.055, i32 1
  %0 = ptrtoint ptr %cluster to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 33, ptr %cluster, align 64
  %inbound = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %i.055, i32 3
  %1 = ptrtoint ptr %inbound to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 49, ptr %inbound, align 64
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.body
  %j.054 = phi i32 [ 0, %for.body ], [ %inc, %for.body13.for.body13_crit_edge ]
  %arrayidx15 = getelementptr [4 x %struct.anon.70], ptr %arrayidx, i32 0, i32 %j.054
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %arrayidx15, align 64
  %inc = add nuw nsw i32 %j.054, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc16, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

for.inc16:                                        ; preds = %for.body13
  %inc17 = add nuw nsw i32 %i.055, 1
  %exitcond59.not = icmp eq i32 %inc17, 4
  br i1 %exitcond59.not, label %for.end18, label %for.inc16.for.body_crit_edge

for.inc16.for.body_crit_edge:                     ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end18:                                        ; preds = %for.inc16
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #13, !srcloc !56
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call2056 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call2056, i32 %4)
  %cmp2157 = icmp ult i32 %call2056, %4
  br i1 %cmp2157, label %for.body22.lr.ph, label %for.end18.for.end29_crit_edge

for.end18.for.end29_crit_edge:                    ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body22.lr.ph:                                 ; preds = %for.end18
  %arrayidx25 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %and
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %call2058 = phi i32 [ %call2056, %for.body22.lr.ph ], [ %call20, %for.body22.for.body22_crit_edge ]
  %arrayidx24 = getelementptr [4 x [4 x i32]], ptr @mcpm_cpu_use_count, i32 0, i32 %and, i32 %call2058
  %5 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx24, align 4
  %arrayidx27 = getelementptr [4 x %struct.anon.70], ptr %arrayidx25, i32 0, i32 %call2058
  %6 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 19, ptr %arrayidx27, align 64
  %call20 = tail call i32 @cpumask_next(i32 noundef %call2058, ptr noundef nonnull @__cpu_online_mask) #16
  %cmp21 = icmp ult i32 %call20, %4
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.for.end29_crit_edge

for.body22.for.end29_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.end29:                                        ; preds = %for.body22.for.end29_crit_edge, %for.end18.for.end29_crit_edge
  %cluster31 = getelementptr [4 x %struct.mcpm_sync_struct], ptr @mcpm_sync, i32 0, i32 %and, i32 1
  %7 = ptrtoint ptr %cluster31 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 34, ptr %cluster31, align 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %8(ptr noundef nonnull @mcpm_sync, i32 noundef 1536) #12
  %call.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @mcpm_sync to i32)) #12
  %call1.i = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (%struct.sync_struct, ptr @mcpm_sync, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0) to i32)) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.end29.__sync_cache_range_w.exit_crit_edge, label %if.then.i.i

for.end29.__sync_cache_range_w.exit_crit_edge:    ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sync_cache_range_w.exit

if.then.i.i:                                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %9(i32 noundef %call.i, i32 noundef %call1.i) #12
  br label %__sync_cache_range_w.exit

__sync_cache_range_w.exit:                        ; preds = %if.then.i.i, %for.end29.__sync_cache_range_w.exit_crit_edge
  %tobool32.not = icmp eq ptr %power_up_setup, null
  br i1 %tobool32.not, label %__sync_cache_range_w.exit.if.end35_crit_edge, label %if.then33

__sync_cache_range_w.exit.if.end35_crit_edge:     ; preds = %__sync_cache_range_w.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then33:                                        ; preds = %__sync_cache_range_w.exit
  %10 = ptrtoint ptr %power_up_setup to i32
  %call34 = tail call i32 @__phys_addr_symbol(i32 noundef %10) #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @mcpm_power_up_setup_phys to i32))
  store i32 %call34, ptr @mcpm_power_up_setup_phys, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %11(ptr noundef nonnull @mcpm_power_up_setup_phys, i32 noundef 4) #12
  %call.i49 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @mcpm_power_up_setup_phys to i32)) #12
  %call1.i50 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @mcpm_power_up_setup_phys, i32 1) to i32)) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i.i51 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i51, label %if.then33.if.end35_crit_edge, label %if.then.i.i52

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then.i.i52:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %12(i32 noundef %call.i49, i32 noundef %call1.i50) #12
  br label %if.end35

if.end35:                                         ; preds = %if.then.i.i52, %if.then33.if.end35_crit_edge, %__sync_cache_range_w.exit.if.end35_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_resume_no_hyp() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold noreturn nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !24, !25, !26, !27, !29, !31, !33}
!llvm.named.register.sp = !{!35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_mcpm_is_available, !1, !"__ksymtab_mcpm_is_available", i1 false, i1 false}
!1 = !{!"../arch/arm/common/mcpm_entry.c", i32 175, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/common/mcpm_entry.c", i32 200, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @mcpm_cpu_power_up.__UNIQUE_ID_ddebug216, !3, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/common/mcpm_entry.c", i32 248, i32 2}
!10 = !{ptr @mcpm_cpu_power_down.__UNIQUE_ID_ddebug217, !9, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../arch/arm/common/mcpm_entry.c", i32 249, i32 6}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../arch/arm/common/mcpm_entry.c", i32 312, i32 6}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/common/mcpm_entry.c", i32 317, i32 3}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mcpm_wait_for_cpu_powerdown._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mcpm_wait_for_cpu_powerdown._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../arch/arm/common/mcpm_entry.c", i32 325, i32 6}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/common/mcpm_entry.c", i32 415, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mcpm_loopback._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mcpm_loopback._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mcpm_sync, !28, !"mcpm_sync", i1 false, i1 false}
!28 = !{!"../arch/arm/common/mcpm_entry.c", i32 27, i32 20}
!29 = !{ptr @platform_ops, !30, !"platform_ops", i1 false, i1 false}
!30 = !{!"../arch/arm/common/mcpm_entry.c", i32 161, i32 40}
!31 = !{ptr @mcpm_cpu_use_count, !32, !"mcpm_cpu_use_count", i1 false, i1 false}
!32 = !{!"../arch/arm/common/mcpm_entry.c", i32 185, i32 12}
!33 = !{ptr @mcpm_lock, !34, !"mcpm_lock", i1 false, i1 false}
!34 = !{!"../arch/arm/common/mcpm_entry.c", i32 183, i32 24}
!35 = !{!"sp"}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148702621, i64 2148702626, i64 2148702639, i64 2148702683, i64 2148702717, i64 2148702738}
!45 = !{i64 616019}
!46 = !{i64 613722}
!47 = !{i64 1674484, i64 1674507, i64 1674527, i64 1674551, i64 1674567}
!48 = !{i64 2149162883}
!49 = !{i64 2149165999}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2153329179, i64 2153329672, i64 2153329216, i64 2153329272, i64 2153329306, i64 2153329330, i64 2153329371, i64 2153329392, i64 2153329420, i64 2153329454}
!52 = !{i64 2149166681}
!53 = !{i64 2149162355}
!54 = !{i64 2149162454, i64 2149162481, i64 2149162528, i64 2149162550, i64 2149162578, i64 2149162598}
!55 = !{i64 613532}
!56 = !{i64 2153317835}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2153335840, i64 2153336333, i64 2153335877, i64 2153335933, i64 2153335967, i64 2153335991, i64 2153336032, i64 2153336053, i64 2153336081, i64 2153336115}
!59 = !{i64 2153337502, i64 2153337995, i64 2153337539, i64 2153337595, i64 2153337629, i64 2153337653, i64 2153337694, i64 2153337715, i64 2153337743, i64 2153337777}
!60 = !{i64 2153339257, i64 2153339750, i64 2153339294, i64 2153339350, i64 2153339384, i64 2153339408, i64 2153339449, i64 2153339470, i64 2153339498, i64 2153339532}
!61 = !{i64 2153340600}
!62 = !{i64 2153319597}
!63 = !{i64 2153319147}
!64 = !{i64 2153319347}
!65 = !{i64 2153318886}
!66 = !{i64 2153319103}
!67 = !{i64 613287, i64 613348}
!68 = !{i64 616304}
!69 = !{i64 2153353315}
!70 = !{i64 2153353363}
!71 = !{i64 2153349323, i64 2153349816, i64 2153349360, i64 2153349416, i64 2153349450, i64 2153349474, i64 2153349515, i64 2153349536, i64 2153349564, i64 2153349598}
