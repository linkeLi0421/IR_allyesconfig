; ModuleID = '/llk/IR_all_yes/kernel/time/sched_clock.c_pt.bc'
source_filename = "../kernel/time/sched_clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon }
%union.anon = type { ptr }
%struct.clock_data = type { %struct.seqcount_latch_t, [2 x %struct.clock_read_data], i64, i32, ptr }
%struct.seqcount_latch_t = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clock_read_data = type { i64, i64, i64, ptr, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irqtime = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_irqtime = internal constant %struct.kernel_param { ptr @___asan_gen_.5, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon { ptr @irqtime } }, section "__param", align 4
@cd = internal global %struct.clock_data { %struct.seqcount_latch_t zeroinitializer, [2 x %struct.clock_read_data] [%struct.clock_read_data { i64 0, i64 0, i64 0, ptr @jiffy_sched_clock_read, i32 10000000, i32 0 }, %struct.clock_read_data zeroinitializer], i64 0, i32 0, ptr @jiffy_sched_clock_read }, align 128
@sched_clock_timer = internal global { %struct.hrtimer, [48 x i8] } zeroinitializer, align 32
@sched_clock_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\016sched_clock: %u bits at %lu%cHz, resolution %lluns, wraps every %lluns\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sched_clock_register\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kernel/time/sched_clock.c\00", [38 x i8] zeroinitializer }, align 32
@sched_clock_register._entry_ptr = internal global ptr @sched_clock_register._entry, section ".printk_index", align 4
@sched_clock_register.__UNIQUE_ID_ddebug154 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 56, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sched_clock\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Registered %pS as sched_clock source\0A\00", [58 x i8] zeroinitializer }, align 32
@__initcall__kmod_sched_clock__155_297_sched_clock_syscore_init6 = internal global ptr @sched_clock_syscore_init, section ".initcall6.init", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sched_clock_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @sched_clock_suspend, ptr @sched_clock_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private constant [8 x i8] c"irqtime\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 47, i32 12 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"sched_clock_timer\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 46, i32 23 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 216, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 225, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"sched_clock_ops\00", align 1
@___asan_gen_.30 = private constant [29 x i8] c"../kernel/time/sched_clock.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 286, i32 27 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_sched_clock__155_297_sched_clock_syscore_init6, ptr @__param_irqtime, ptr @sched_clock_register._entry, ptr @sched_clock_register._entry_ptr, ptr @irqtime, ptr @sched_clock_timer, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sched_clock_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqtime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clock_timer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clock_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sched_clock_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @sched_clock_read_begin(ptr nocapture noundef writeonly %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load volatile i32, ptr @cd, align 128
  %1 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %seq, align 4
  %and = and i32 %0, 1
  %add.ptr = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_clock_read_retry(i32 noundef %seq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %0 = load volatile i32, ptr @cd, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %seq)
  %cmp.i.i.i = icmp ne i32 %0, %seq
  %lnot.ext.i.i.i = zext i1 %cmp.i.i.i to i32
  ret i32 %lnot.ext.i.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @sched_clock() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = load volatile i32, ptr @cd, align 128
  %and.i = and i32 %0, 1
  %add.ptr.i = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i
  %read_sched_clock = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i, i32 3
  %1 = ptrtoint ptr %read_sched_clock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read_sched_clock, align 8
  %call1 = tail call i64 %2() #6
  %epoch_cyc = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i, i32 1
  %3 = ptrtoint ptr %epoch_cyc to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %epoch_cyc, align 8
  %sched_clock_mask = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i, i32 2
  %5 = ptrtoint ptr %sched_clock_mask to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %sched_clock_mask, align 8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr.i, align 8
  %mult = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i, i32 4
  %9 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mult, align 4
  %shift = getelementptr %struct.clock_read_data, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 %and.i, i32 5
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  %13 = load volatile i32, ptr @cd, align 128
  %cmp.i.i.i.i.not = icmp eq i32 %13, %0
  br i1 %cmp.i.i.i.i.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i64 %call1, %4
  %and = and i64 %sub, %6
  %conv.i = zext i32 %10 to i64
  %mul.i = mul i64 %and, %conv.i
  %sh_prom.i = zext i32 %12 to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %add = add i64 %shr.i, %8
  ret i64 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_clock_register(ptr noundef %read, i32 noundef %bits, i32 noundef %rate) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  %new_mult = alloca i32, align 4
  %new_shift = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_mult) #6
  %0 = ptrtoint ptr %new_mult to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new_mult, align 4, !annotation !33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_shift) #6
  %1 = ptrtoint ptr %new_shift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %new_shift, align 4, !annotation !33
  %2 = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp = icmp ugt i32 %2, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !34
  %and.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then10, label %do.body1.do.end13_crit_edge

do.body1.do.end13_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.then10:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @trace_hardirqs_off() #6
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body1.do.end13_crit_edge
  call void @clocks_calc_mult_shift(ptr noundef nonnull %new_mult, ptr noundef nonnull %new_shift, i32 noundef %rate, i32 noundef 1000000000, i32 noundef 3600) #6
  %sub14 = sub i32 64, %bits
  %sh_prom = zext i32 %sub14 to i64
  %shr = lshr i64 -1, %sh_prom
  store i32 %rate, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 3), align 8
  %4 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %new_mult, align 4
  %6 = ptrtoint ptr %new_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_shift, align 4
  %call15 = call i64 @clocks_calc_max_nsecs(i32 noundef %5, i32 noundef %7, i32 noundef 0, i64 noundef %shr, ptr noundef null) #6
  store i64 %call15, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 16
  %rd.sroa.0.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  %rd.sroa.8.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  %rd.sroa.10.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  %rd.sroa.13.0.copyload = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %rd.sroa.15.0.copyload = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  %rd.sroa.17.0.copyload = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %call17 = call i64 %read() #6
  %8 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %call18 = call i64 %8() #6
  %sub19 = sub i64 %call18, %rd.sroa.8.0.copyload
  %and20 = and i64 %sub19, %rd.sroa.10.0.copyload
  %conv.i = zext i32 %rd.sroa.13.0.copyload to i64
  %mul.i = mul i64 %and20, %conv.i
  %sh_prom.i = zext i32 %rd.sroa.15.0.copyload to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %add22 = add i64 %shr.i, %rd.sroa.0.0.copyload
  store ptr %read, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %9 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %new_mult, align 4
  %11 = ptrtoint ptr %new_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %new_shift, align 4
  store i64 %add22, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 8
  store i64 %call17, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 16
  store i64 %shr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 8
  store ptr %read, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 32
  store i32 %10, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %12, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 8
  store i32 %rd.sroa.17.0.copyload, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %13 = load i32, ptr @cd, align 128
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr @cd, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  store i64 %add22, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  store i64 %call17, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  store i64 %shr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  store ptr %read, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  store i32 %10, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %12, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  store i32 %rd.sroa.17.0.copyload, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %14 = load i32, ptr @cd, align 128
  %inc.i2.i = add i32 %14, 1
  store i32 %inc.i2.i, ptr @cd, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  %15 = load ptr, ptr getelementptr inbounds (%struct.hrtimer, ptr @sched_clock_timer, i32 0, i32 2), align 8
  %cmp28.not = icmp eq ptr %15, null
  br i1 %cmp28.not, label %do.end13.if.end31_crit_edge, label %if.then30

do.end13.if.end31_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %16 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 16
  call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %16, i64 noundef 0, i32 noundef 9) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %do.end13.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3999999, i32 %rate)
  %cmp32 = icmp ugt i32 %rate, 3999999
  br i1 %cmp32, label %if.then34, label %if.else

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %div = udiv i32 %rate, 1000000
  br label %if.end41

if.else:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %rate)
  %cmp35 = icmp ugt i32 %rate, 999
  %div38 = udiv i32 %rate, 1000
  %spec.select = select i1 %cmp35, i32 107, i32 32
  %spec.select129 = select i1 %cmp35, i32 %div38, i32 %rate
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  %r_unit.0 = phi i32 [ 77, %if.then34 ], [ %spec.select, %if.else ]
  %r.0 = phi i32 [ %div, %if.then34 ], [ %spec.select129, %if.else ]
  %17 = ptrtoint ptr %new_mult to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %new_mult, align 4
  %19 = ptrtoint ptr %new_shift to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new_shift, align 4
  %conv.i130 = zext i32 %18 to i64
  %sh_prom.i131 = zext i32 %20 to i64
  %shr.i132 = lshr i64 %conv.i130, %sh_prom.i131
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %bits, i32 noundef %r.0, i32 noundef %r_unit.0, i64 noundef %shr.i132, i64 noundef %call15) #9
  %21 = load i32, ptr @irqtime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp49 = icmp sgt i32 %21, 0
  br i1 %cmp49, label %if.end41.if.then55_crit_edge, label %lor.lhs.false

if.end41.if.then55_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

lor.lhs.false:                                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp51 = icmp eq i32 %21, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %rate)
  %cmp53 = icmp ugt i32 %rate, 999999
  %or.cond = and i1 %cmp53, %cmp51
  br i1 %or.cond, label %lor.lhs.false.if.then55_crit_edge, label %lor.lhs.false.do.body57_crit_edge

lor.lhs.false.do.body57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

lor.lhs.false.if.then55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false.if.then55_crit_edge, %if.end41.if.then55_crit_edge
  call void @enable_sched_clock_irqtime() #6
  br label %do.body57

do.body57:                                        ; preds = %if.then55, %lor.lhs.false.do.body57_crit_edge
  br i1 %tobool.not, label %if.then66, label %do.body57.do.body68_crit_edge

do.body57.do.body68_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body68

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  call void @trace_hardirqs_on() #6
  br label %do.body68

do.body68:                                        ; preds = %if.then66, %do.body57.do.body68_crit_edge
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !37
  %and.i.i = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool76.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool76.not, label %if.then80, label %do.body68.do.end83_crit_edge, !prof !38

do.body68.do.end83_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

if.then80:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  call void @warn_bogus_irq_restore() #6
  br label %do.end83

do.end83:                                         ; preds = %if.then80, %do.body68.do.end83_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #6, !srcloc !39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sched_clock_register.__UNIQUE_ID_ddebug154, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sched_clock_register, %if.then98)) #6
          to label %cleanup [label %if.then98], !srcloc !40

if.then98:                                        ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sched_clock_register.__UNIQUE_ID_ddebug154, ptr noundef nonnull @.str.4, ptr noundef %read) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.end83, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_shift) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_mult) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clocks_calc_mult_shift(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @clocks_calc_max_nsecs(i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_sched_clock_irqtime() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @generic_sched_clock_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %cmp = icmp eq ptr %0, @jiffy_sched_clock_read
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sched_clock_register(ptr noundef nonnull @jiffy_sched_clock_read, i32 noundef 32, i32 noundef 100) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @update_sched_clock()
  tail call void @hrtimer_init(ptr noundef nonnull @sched_clock_timer, i32 noundef 1, i32 noundef 9) #6
  store ptr @sched_clock_poll, ptr getelementptr inbounds (%struct.hrtimer, ptr @sched_clock_timer, i32 0, i32 2), align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 16
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %1, i64 noundef 0, i32 noundef 9) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @jiffy_sched_clock_read() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %0, 30000
  %conv = zext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_sched_clock() unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rd.sroa.0.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  %rd.sroa.8.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  %rd.sroa.10.0.copyload = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  %rd.sroa.11.0.copyload = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  %rd.sroa.1113.0.copyload = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %rd.sroa.12.0.copyload = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  %rd.sroa.13.0.copyload = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %call = tail call i64 %0() #6
  %sub = sub i64 %call, %rd.sroa.8.0.copyload
  %and = and i64 %sub, %rd.sroa.10.0.copyload
  %conv.i = zext i32 %rd.sroa.1113.0.copyload to i64
  %mul.i = mul i64 %and, %conv.i
  %sh_prom.i = zext i32 %rd.sroa.12.0.copyload to i64
  %shr.i = lshr i64 %mul.i, %sh_prom.i
  %add = add i64 %shr.i, %rd.sroa.0.0.copyload
  store i64 %add, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 8
  store i64 %call, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 16
  store i64 %rd.sroa.10.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 8
  store ptr %rd.sroa.11.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 32
  store i32 %rd.sroa.1113.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 8
  store i32 %rd.sroa.13.0.copyload, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %1 = load i32, ptr @cd, align 128
  %inc.i.i = add i32 %1, 1
  store i32 %inc.i.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  store i64 %add, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  store i64 %call, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  store i64 %rd.sroa.10.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  store ptr %rd.sroa.11.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  store i32 %rd.sroa.1113.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  store i32 %rd.sroa.13.0.copyload, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %2 = load i32, ptr @cd, align 128
  %inc.i2.i = add i32 %2, 1
  store i32 %inc.i2.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_clock_poll(ptr noundef %hrt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rd.sroa.0.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  %rd.sroa.8.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  %rd.sroa.10.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  %rd.sroa.11.0.copyload.i = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  %rd.sroa.1113.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %rd.sroa.12.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  %rd.sroa.13.0.copyload.i = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %call.i = tail call i64 %0() #6
  %sub.i = sub i64 %call.i, %rd.sroa.8.0.copyload.i
  %and.i = and i64 %sub.i, %rd.sroa.10.0.copyload.i
  %conv.i.i = zext i32 %rd.sroa.1113.0.copyload.i to i64
  %mul.i.i = mul i64 %and.i, %conv.i.i
  %sh_prom.i.i = zext i32 %rd.sroa.12.0.copyload.i to i64
  %shr.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %add.i = add i64 %shr.i.i, %rd.sroa.0.0.copyload.i
  store i64 %add.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 8
  store i64 %call.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 16
  store i64 %rd.sroa.10.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 8
  store ptr %rd.sroa.11.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 32
  store i32 %rd.sroa.1113.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 8
  store i32 %rd.sroa.13.0.copyload.i, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %1 = load i32, ptr @cd, align 128
  %inc.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  store i64 %add.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  store i64 %call.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  store i64 %rd.sroa.10.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  store ptr %rd.sroa.11.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  store i32 %rd.sroa.1113.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  store i32 %rd.sroa.13.0.copyload.i, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %2 = load i32, ptr @cd, align 128
  %inc.i2.i.i = add i32 %2, 1
  store i32 %inc.i2.i.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  %3 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 16
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrt, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_time.i, align 4
  %call.i1 = tail call i64 %7() #6
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrt, i64 noundef %call.i1, i64 noundef %3) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sched_clock_suspend() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rd.sroa.0.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  %rd.sroa.8.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  %rd.sroa.10.0.copyload.i = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  %rd.sroa.11.0.copyload.i = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  %rd.sroa.1113.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  %rd.sroa.12.0.copyload.i = load i32, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  %rd.sroa.13.0.copyload.i = load i32, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  %0 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %call.i = tail call i64 %0() #6
  %sub.i = sub i64 %call.i, %rd.sroa.8.0.copyload.i
  %and.i = and i64 %sub.i, %rd.sroa.10.0.copyload.i
  %conv.i.i = zext i32 %rd.sroa.1113.0.copyload.i to i64
  %mul.i.i = mul i64 %and.i, %conv.i.i
  %sh_prom.i.i = zext i32 %rd.sroa.12.0.copyload.i to i64
  %shr.i.i = lshr i64 %mul.i.i, %sh_prom.i.i
  %add.i = add i64 %shr.i.i, %rd.sroa.0.0.copyload.i
  store i64 %add.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), align 8
  store i64 %call.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 1), align 16
  store i64 %rd.sroa.10.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 2), align 8
  store ptr %rd.sroa.11.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 3), align 32
  store i32 %rd.sroa.1113.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1, i32 5), align 8
  store i32 %rd.sroa.13.0.copyload.i, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %1 = load i32, ptr @cd, align 128
  %inc.i.i.i = add i32 %1, 1
  store i32 %inc.i.i.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  store i64 %add.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), align 32
  store i64 %call.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  store i64 %rd.sroa.10.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 2), align 16
  store ptr %rd.sroa.11.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  store i32 %rd.sroa.1113.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 4), align 4
  store i32 %rd.sroa.12.0.copyload.i, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 5), align 64
  store i32 %rd.sroa.13.0.copyload.i, ptr getelementptr inbounds (i8, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1), i32 36), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  %2 = load i32, ptr @cd, align 128
  %inc.i2.i.i = add i32 %2, 1
  store i32 %inc.i2.i.i, ptr @cd, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  %call = tail call i32 @hrtimer_cancel(ptr noundef nonnull @sched_clock_timer) #6
  store ptr @suspended_sched_clock_read, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @suspended_sched_clock_read() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load volatile i32, ptr @cd, align 128
  %and = and i32 %0, 1
  %epoch_cyc = getelementptr %struct.clock_data, ptr @cd, i32 0, i32 1, i32 %and, i32 1
  %1 = ptrtoint ptr %epoch_cyc to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %epoch_cyc, align 8
  ret i64 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sched_clock_resume() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  %call = tail call i64 %0() #6
  store i64 %call, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 1), align 8
  %1 = load i64, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 2), align 16
  tail call void @hrtimer_start_range_ns(ptr noundef nonnull @sched_clock_timer, i64 noundef %1, i64 noundef 0, i32 noundef 9) #6
  %2 = load ptr, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 4), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.clock_data, ptr @cd, i32 0, i32 1, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sched_clock_syscore_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_syscore_ops(ptr noundef nonnull @sched_clock_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__param_irqtime, !1, !"__param_irqtime", i1 false, i1 false}
!1 = !{!"../kernel/time/sched_clock.c", i32 49, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/sched_clock.c", i32 216, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sched_clock_register._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sched_clock_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/time/sched_clock.c", i32 225, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sched_clock_register.__UNIQUE_ID_ddebug154, !9, !"__UNIQUE_ID_ddebug154", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_sched_clock__155_297_sched_clock_syscore_init6, !13, !"__initcall__kmod_sched_clock__155_297_sched_clock_syscore_init6", i1 false, i1 false}
!13 = !{!"../kernel/time/sched_clock.c", i32 297, i32 1}
!14 = !{ptr @sched_clock_timer, !15, !"sched_clock_timer", i1 false, i1 false}
!15 = !{!"../kernel/time/sched_clock.c", i32 46, i32 23}
!16 = !{ptr @___asan_gen_.5, !1, !"__param_str_irqtime", i1 false, i1 false}
!17 = !{ptr @irqtime, !18, !"irqtime", i1 false, i1 false}
!18 = !{!"../kernel/time/sched_clock.c", i32 47, i32 12}
!19 = !{ptr @cd, !20, !"cd", i1 false, i1 false}
!20 = !{!"../kernel/time/sched_clock.c", i32 60, i32 26}
!21 = !{ptr @sched_clock_ops, !22, !"sched_clock_ops", i1 false, i1 false}
!22 = !{!"../kernel/time/sched_clock.c", i32 286, i32 27}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2149955939}
!33 = !{!"auto-init"}
!34 = !{i64 623441, i64 623502}
!35 = !{i64 2149963078}
!36 = !{i64 2149963234}
!37 = !{i64 626173}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 626458}
!40 = !{i64 2148895047, i64 2148895052, i64 2148895065, i64 2148895109, i64 2148895143, i64 2148895164}
