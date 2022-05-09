; ModuleID = '/llk/IR_all_yes/fs/proc/stat.c_pt.bc'
source_filename = "../fs/proc/stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_cpustat = type { [10 x i64] }
%struct.kernel_stat = type { i32, [10 x i32] }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_proc__214_242_proc_stat_init5 = internal global ptr @proc_stat_init, section ".initcall5.init", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stat\00", [27 x i8] zeroinitializer }, align 32
@stat_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 1, ptr @stat_open, ptr null, ptr @seq_read_iter, ptr null, ptr @seq_lseek, ptr @single_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu  \00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cpu%d\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"intr \00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\0Actxt %llu\0Abtime %llu\0Aprocesses %lu\0Aprocs_running %u\0Aprocs_blocked %u\0A\00", [57 x i8] zeroinitializer }, align 32
@total_forks = external dso_local local_unnamed_addr global i32, align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"softirq \00", [23 x i8] zeroinitializer }, align 32
@kernel_cpustat = external dso_local global %struct.kernel_cpustat, section ".data..percpu", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kstat = external dso_local global %struct.kernel_stat, section ".data..percpu", align 4
@show_irq_gap.zeros = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 108, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 239, i32 14 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"stat_proc_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 229, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 153, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 154, i32 25 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 182, i32 17 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 195, i32 25 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 200, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 211, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"zeros\00", align 1
@___asan_gen_.36 = private constant [18 x i8] c"../fs/proc/stat.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 85, i32 20 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_proc__214_242_proc_stat_init5, ptr @.str, ptr @.str.1, ptr @stat_proc_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @show_irq_gap.zeros], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_irq_gap.zeros to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @get_idle_time(ptr nocapture noundef readonly %kcs, i32 noundef %cpu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %cpu)
  %cmp.not.i.i.i.i = icmp ugt i32 %0, %cpu
  br i1 %cmp.not.i.i.i.i, label %entry.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

entry.cpu_online.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %entry
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !32

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %entry.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %cpu, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %1 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu, 31
  %3 = shl nuw i32 1, %and.i.i.i
  %4 = and i32 %2, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.then2_crit_edge, label %if.end

cpu_online.exit.if.then2_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.end:                                           ; preds = %cpu_online.exit
  %call1 = tail call i64 @get_cpu_idle_time_us(i32 noundef %cpu, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1)
  %cmp = icmp eq i64 %call1, -1
  br i1 %cmp, label %if.end.if.then2_crit_edge, label %if.else

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then2

if.then2:                                         ; preds = %if.end.if.then2_crit_edge, %cpu_online.exit.if.then2_crit_edge
  %arrayidx = getelementptr [10 x i64], ptr %kcs, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul i64 %call1, 1000
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %idle.0 = phi i64 [ %6, %if.then2 ], [ %mul, %if.else ]
  ret i64 %idle.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_idle_time_us(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @proc_stat_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create(ptr noundef nonnull @.str.1, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @stat_proc_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stat_open(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %0 = load volatile i32, ptr @__num_online_cpus, align 4
  %mul = shl i32 %0, 7
  %add = add i32 %mul, 1024
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %1 = load i32, ptr @nr_irqs, align 4
  %mul1 = shl i32 %1, 1
  %add2 = add i32 %add, %mul1
  %call3 = tail call i32 @single_open_size(ptr noundef %file, ptr noundef nonnull @show_stat, ptr noundef null, i32 noundef %add2) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read_iter(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_stat(ptr noundef %p, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  %boottime = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %boottime) #6
  %0 = call ptr @memset(ptr %boottime, i32 255, i32 16)
  call void @getboottime64(ptr noundef nonnull %boottime) #6
  %call238 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call238, i32 %1)
  %cmp239 = icmp ult i32 %call238, %1
  br i1 %cmp239, label %entry.cpu_online.exit.i_crit_edge, label %entry.for.end32_crit_edge

entry.for.end32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

entry.cpu_online.exit.i_crit_edge:                ; preds = %entry
  br label %cpu_online.exit.i

cpu_online.exit.i:                                ; preds = %get_iowait_time.exit.cpu_online.exit.i_crit_edge, %entry.cpu_online.exit.i_crit_edge
  %per_softirq_sums.sroa.0.0 = phi i32 [ %add29, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.6.0 = phi i32 [ %add29.1, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.9.0 = phi i32 [ %add29.2, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.12.0 = phi i32 [ %add29.3, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.15.0 = phi i32 [ %add29.4, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.18.0 = phi i32 [ %add29.5, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.21.0 = phi i32 [ %add29.6, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.24.0 = phi i32 [ %add29.7, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.27.0 = phi i32 [ %add29.8, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %per_softirq_sums.sroa.30.0 = phi i32 [ %add29.9, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %call252 = phi i32 [ %call, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ %call238, %entry.cpu_online.exit.i_crit_edge ]
  %user.0251 = phi i64 [ %add, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %sum_softirq.0250 = phi i64 [ %add31.9, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %sum.0249 = phi i64 [ %add21, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %guest_nice.0248 = phi i64 [ %add19, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %guest.0247 = phi i64 [ %add17, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %steal.0246 = phi i64 [ %add15, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %softirq.0245 = phi i64 [ %add13, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %irq.0244 = phi i64 [ %add11, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %iowait.0243 = phi i64 [ %add9, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %idle.0242 = phi i64 [ %add7, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %system.0241 = phi i64 [ %add5, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %nice.0240 = phi i64 [ %add3, %get_iowait_time.exit.cpu_online.exit.i_crit_edge ], [ 0, %entry.cpu_online.exit.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call252
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @kernel_cpustat to i32)
  %4 = inttoptr i32 %add.i to ptr
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %kcpustat.sroa.0.0.copyload = load i64, ptr %4, align 8
  %kcpustat.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %6 = ptrtoint ptr %kcpustat.sroa.5.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %kcpustat.sroa.5.0.copyload = load i64, ptr %kcpustat.sroa.5.0..sroa_idx, align 8
  %kcpustat.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 16
  %7 = ptrtoint ptr %kcpustat.sroa.6.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %7)
  %kcpustat.sroa.6.0.copyload = load i64, ptr %kcpustat.sroa.6.0..sroa_idx, align 8
  %kcpustat.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 24
  %8 = ptrtoint ptr %kcpustat.sroa.7.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %8)
  %kcpustat.sroa.7.0.copyload = load i64, ptr %kcpustat.sroa.7.0..sroa_idx, align 8
  %kcpustat.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 32
  %9 = ptrtoint ptr %kcpustat.sroa.8.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %9)
  %kcpustat.sroa.8.0.copyload = load i64, ptr %kcpustat.sroa.8.0..sroa_idx, align 8
  %kcpustat.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 40
  %10 = ptrtoint ptr %kcpustat.sroa.9.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %kcpustat.sroa.9.0.copyload = load i64, ptr %kcpustat.sroa.9.0..sroa_idx, align 8
  %kcpustat.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 48
  %11 = ptrtoint ptr %kcpustat.sroa.10.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %11)
  %kcpustat.sroa.10.0.copyload = load i64, ptr %kcpustat.sroa.10.0..sroa_idx, align 8
  %kcpustat.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 56
  %12 = ptrtoint ptr %kcpustat.sroa.11.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %12)
  %kcpustat.sroa.11.0.copyload = load i64, ptr %kcpustat.sroa.11.0..sroa_idx, align 8
  %kcpustat.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 64
  %13 = ptrtoint ptr %kcpustat.sroa.12.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %13)
  %kcpustat.sroa.12.0.copyload = load i64, ptr %kcpustat.sroa.12.0..sroa_idx, align 8
  %kcpustat.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 72
  %14 = ptrtoint ptr %kcpustat.sroa.13.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %14)
  %kcpustat.sroa.13.0.copyload = load i64, ptr %kcpustat.sroa.13.0..sroa_idx, align 8
  %add = add i64 %kcpustat.sroa.0.0.copyload, %user.0251
  %add3 = add i64 %kcpustat.sroa.5.0.copyload, %nice.0240
  %add5 = add i64 %kcpustat.sroa.6.0.copyload, %system.0241
  %div1.i.i.i.i = lshr i32 %call252, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %call252, 31
  %17 = shl nuw i32 1, %and.i.i.i.i
  %18 = and i32 %16, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %cpu_online.exit.i.get_idle_time.exit_crit_edge, label %if.end.i

cpu_online.exit.i.get_idle_time.exit_crit_edge:   ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_idle_time.exit

if.end.i:                                         ; preds = %cpu_online.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i64 @get_cpu_idle_time_us(i32 noundef %call252, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i)
  %cmp.i = icmp eq i64 %call1.i, -1
  %mul.i = mul i64 %call1.i, 1000
  %spec.select = select i1 %cmp.i, i64 %kcpustat.sroa.9.0.copyload, i64 %mul.i
  br label %get_idle_time.exit

get_idle_time.exit:                               ; preds = %if.end.i, %cpu_online.exit.i.get_idle_time.exit_crit_edge
  %idle.0.i = phi i64 [ %kcpustat.sroa.9.0.copyload, %cpu_online.exit.i.get_idle_time.exit_crit_edge ], [ %spec.select, %if.end.i ]
  %add7 = add i64 %idle.0.i, %idle.0242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call252)
  %cmp.not.i.i.i.i.i172 = icmp ugt i32 %19, %call252
  br i1 %cmp.not.i.i.i.i.i172, label %get_idle_time.exit.cpu_online.exit.i180_crit_edge, label %land.rhs.i.i.i.i.i174

get_idle_time.exit.cpu_online.exit.i180_crit_edge: ; preds = %get_idle_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i180

land.rhs.i.i.i.i.i174:                            ; preds = %get_idle_time.exit
  %.b37.i.i.i.i.i173 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i173, label %land.rhs.i.i.i.i.i174.cpu_online.exit.i180_crit_edge, label %if.then.i.i.i.i.i175, !prof !32

land.rhs.i.i.i.i.i174.cpu_online.exit.i180_crit_edge: ; preds = %land.rhs.i.i.i.i.i174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i180

if.then.i.i.i.i.i175:                             ; preds = %land.rhs.i.i.i.i.i174
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit.i180

cpu_online.exit.i180:                             ; preds = %if.then.i.i.i.i.i175, %land.rhs.i.i.i.i.i174.cpu_online.exit.i180_crit_edge, %get_idle_time.exit.cpu_online.exit.i180_crit_edge
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.i.i.i.i, align 4
  %22 = and i32 %21, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i179 = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i179, label %cpu_online.exit.i180.get_iowait_time.exit_crit_edge, label %if.end.i183

cpu_online.exit.i180.get_iowait_time.exit_crit_edge: ; preds = %cpu_online.exit.i180
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_iowait_time.exit

if.end.i183:                                      ; preds = %cpu_online.exit.i180
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i181 = call i64 @get_cpu_iowait_time_us(i32 noundef %call252, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i181)
  %cmp.i182 = icmp eq i64 %call1.i181, -1
  %mul.i186 = mul i64 %call1.i181, 1000
  %spec.select233 = select i1 %cmp.i182, i64 %kcpustat.sroa.10.0.copyload, i64 %mul.i186
  br label %get_iowait_time.exit

get_iowait_time.exit:                             ; preds = %if.end.i183, %cpu_online.exit.i180.get_iowait_time.exit_crit_edge
  %iowait.0.i = phi i64 [ %kcpustat.sroa.10.0.copyload, %cpu_online.exit.i180.get_iowait_time.exit_crit_edge ], [ %spec.select233, %if.end.i183 ]
  %add9 = add i64 %iowait.0.i, %iowait.0243
  %add13 = add i64 %kcpustat.sroa.7.0.copyload, %softirq.0245
  %add17 = add i64 %kcpustat.sroa.12.0.copyload, %guest.0247
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i189 = add i32 %24, ptrtoint (ptr @kstat to i32)
  %25 = inttoptr i32 %add.i189 to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %conv = zext i32 %27 to i64
  %arrayidx2.i = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 0
  %28 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i, align 4
  %add29 = add i32 %per_softirq_sums.sroa.0.0, %29
  %conv30 = zext i32 %29 to i64
  %add31 = add i64 %sum_softirq.0250, %conv30
  %arrayidx2.i.1 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i.1, align 4
  %add29.1 = add i32 %per_softirq_sums.sroa.6.0, %31
  %conv30.1 = zext i32 %31 to i64
  %add31.1 = add i64 %add31, %conv30.1
  %arrayidx2.i.2 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx2.i.2, align 4
  %add29.2 = add i32 %per_softirq_sums.sroa.9.0, %33
  %conv30.2 = zext i32 %33 to i64
  %add31.2 = add i64 %add31.1, %conv30.2
  %arrayidx2.i.3 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i.3, align 4
  %add29.3 = add i32 %per_softirq_sums.sroa.12.0, %35
  %conv30.3 = zext i32 %35 to i64
  %add31.3 = add i64 %add31.2, %conv30.3
  %arrayidx2.i.4 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 4
  %36 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i.4, align 4
  %add29.4 = add i32 %per_softirq_sums.sroa.15.0, %37
  %conv30.4 = zext i32 %37 to i64
  %add31.4 = add i64 %add31.3, %conv30.4
  %arrayidx2.i.5 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 5
  %38 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx2.i.5, align 4
  %add29.5 = add i32 %per_softirq_sums.sroa.18.0, %39
  %conv30.5 = zext i32 %39 to i64
  %add31.5 = add i64 %add31.4, %conv30.5
  %arrayidx2.i.6 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i.6, align 4
  %add29.6 = add i32 %per_softirq_sums.sroa.21.0, %41
  %conv30.6 = zext i32 %41 to i64
  %add31.6 = add i64 %add31.5, %conv30.6
  %arrayidx2.i.7 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx2.i.7, align 4
  %add29.7 = add i32 %per_softirq_sums.sroa.24.0, %43
  %conv30.7 = zext i32 %43 to i64
  %add31.7 = add i64 %add31.6, %conv30.7
  %arrayidx2.i.8 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 8
  %44 = ptrtoint ptr %arrayidx2.i.8 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx2.i.8, align 4
  %add29.8 = add i32 %per_softirq_sums.sroa.27.0, %45
  %conv30.8 = zext i32 %45 to i64
  %add31.8 = add i64 %add31.7, %conv30.8
  %arrayidx2.i.9 = getelementptr %struct.kernel_stat, ptr %25, i32 0, i32 1, i32 9
  %46 = ptrtoint ptr %arrayidx2.i.9 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx2.i.9, align 4
  %add29.9 = add i32 %per_softirq_sums.sroa.30.0, %47
  %conv30.9 = zext i32 %47 to i64
  %add31.9 = add i64 %add31.8, %conv30.9
  %add11 = add i64 %kcpustat.sroa.8.0.copyload, %irq.0244
  %add15 = add i64 %kcpustat.sroa.11.0.copyload, %steal.0246
  %add19 = add i64 %kcpustat.sroa.13.0.copyload, %guest_nice.0248
  %add21 = add i64 %sum.0249, %conv
  %call = call i32 @cpumask_next(i32 noundef %call252, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %48 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %48
  br i1 %cmp, label %get_iowait_time.exit.cpu_online.exit.i_crit_edge, label %get_iowait_time.exit.for.end32_crit_edge

get_iowait_time.exit.for.end32_crit_edge:         ; preds = %get_iowait_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end32

get_iowait_time.exit.cpu_online.exit.i_crit_edge: ; preds = %get_iowait_time.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i

for.end32:                                        ; preds = %get_iowait_time.exit.for.end32_crit_edge, %entry.for.end32_crit_edge
  %per_softirq_sums.sroa.0.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.6.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.1, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.9.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.2, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.12.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.3, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.15.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.4, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.18.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.5, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.21.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.6, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.24.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.7, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.27.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.8, %get_iowait_time.exit.for.end32_crit_edge ]
  %per_softirq_sums.sroa.30.1 = phi i32 [ 0, %entry.for.end32_crit_edge ], [ %add29.9, %get_iowait_time.exit.for.end32_crit_edge ]
  %nice.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add3, %get_iowait_time.exit.for.end32_crit_edge ]
  %system.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add5, %get_iowait_time.exit.for.end32_crit_edge ]
  %idle.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add7, %get_iowait_time.exit.for.end32_crit_edge ]
  %iowait.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add9, %get_iowait_time.exit.for.end32_crit_edge ]
  %irq.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add11, %get_iowait_time.exit.for.end32_crit_edge ]
  %softirq.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add13, %get_iowait_time.exit.for.end32_crit_edge ]
  %steal.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add15, %get_iowait_time.exit.for.end32_crit_edge ]
  %guest.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add17, %get_iowait_time.exit.for.end32_crit_edge ]
  %guest_nice.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add19, %get_iowait_time.exit.for.end32_crit_edge ]
  %sum.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add21, %get_iowait_time.exit.for.end32_crit_edge ]
  %sum_softirq.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add31.9, %get_iowait_time.exit.for.end32_crit_edge ]
  %user.0.lcssa = phi i64 [ 0, %entry.for.end32_crit_edge ], [ %add, %get_iowait_time.exit.for.end32_crit_edge ]
  %call34 = call i64 @nsec_to_clock_t(i64 noundef %user.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.2, i64 noundef %call34) #6
  %call35 = call i64 @nsec_to_clock_t(i64 noundef %nice.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call35) #6
  %call36 = call i64 @nsec_to_clock_t(i64 noundef %system.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call36) #6
  %call37 = call i64 @nsec_to_clock_t(i64 noundef %idle.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call37) #6
  %call38 = call i64 @nsec_to_clock_t(i64 noundef %iowait.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call38) #6
  %call39 = call i64 @nsec_to_clock_t(i64 noundef %irq.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call39) #6
  %call40 = call i64 @nsec_to_clock_t(i64 noundef %softirq.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call40) #6
  %call41 = call i64 @nsec_to_clock_t(i64 noundef %steal.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call41) #6
  %call42 = call i64 @nsec_to_clock_t(i64 noundef %guest.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call42) #6
  %call43 = call i64 @nsec_to_clock_t(i64 noundef %guest_nice.0.lcssa) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call43) #6
  call void @seq_putc(ptr noundef %p, i8 noundef zeroext 10) #6
  %call45264 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call45264, i32 %49)
  %cmp46265 = icmp ult i32 %call45264, %49
  br i1 %cmp46265, label %for.end32.cpu_online.exit.i202_crit_edge, label %for.end32.for.end73_crit_edge

for.end32.for.end73_crit_edge:                    ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end73

for.end32.cpu_online.exit.i202_crit_edge:         ; preds = %for.end32
  br label %cpu_online.exit.i202

cpu_online.exit.i202:                             ; preds = %get_iowait_time.exit229.cpu_online.exit.i202_crit_edge, %for.end32.cpu_online.exit.i202_crit_edge
  %call45266 = phi i32 [ %call45, %get_iowait_time.exit229.cpu_online.exit.i202_crit_edge ], [ %call45264, %for.end32.cpu_online.exit.i202_crit_edge ]
  %arrayidx.i192 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call45266
  %50 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i192, align 4
  %add.i193 = add i32 %51, ptrtoint (ptr @kernel_cpustat to i32)
  %52 = inttoptr i32 %add.i193 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load8_noabort(i32 %53)
  %kcpustat49.sroa.0.0.copyload = load i64, ptr %52, align 8
  %kcpustat49.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 8
  %54 = ptrtoint ptr %kcpustat49.sroa.5.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %54)
  %kcpustat49.sroa.5.0.copyload = load i64, ptr %kcpustat49.sroa.5.0..sroa_idx, align 8
  %kcpustat49.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 16
  %55 = ptrtoint ptr %kcpustat49.sroa.6.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %55)
  %kcpustat49.sroa.6.0.copyload = load i64, ptr %kcpustat49.sroa.6.0..sroa_idx, align 8
  %kcpustat49.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 24
  %56 = ptrtoint ptr %kcpustat49.sroa.7.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %56)
  %kcpustat49.sroa.7.0.copyload = load i64, ptr %kcpustat49.sroa.7.0..sroa_idx, align 8
  %kcpustat49.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 32
  %57 = ptrtoint ptr %kcpustat49.sroa.8.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %57)
  %kcpustat49.sroa.8.0.copyload = load i64, ptr %kcpustat49.sroa.8.0..sroa_idx, align 8
  %kcpustat49.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 40
  %58 = ptrtoint ptr %kcpustat49.sroa.9.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %58)
  %kcpustat49.sroa.9.0.copyload = load i64, ptr %kcpustat49.sroa.9.0..sroa_idx, align 8
  %kcpustat49.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 48
  %59 = ptrtoint ptr %kcpustat49.sroa.10.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %59)
  %kcpustat49.sroa.10.0.copyload = load i64, ptr %kcpustat49.sroa.10.0..sroa_idx, align 8
  %kcpustat49.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 56
  %60 = ptrtoint ptr %kcpustat49.sroa.11.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %60)
  %kcpustat49.sroa.11.0.copyload = load i64, ptr %kcpustat49.sroa.11.0..sroa_idx, align 8
  %kcpustat49.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 64
  %61 = ptrtoint ptr %kcpustat49.sroa.12.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %61)
  %kcpustat49.sroa.12.0.copyload = load i64, ptr %kcpustat49.sroa.12.0..sroa_idx, align 8
  %kcpustat49.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %52, i32 72
  %62 = ptrtoint ptr %kcpustat49.sroa.13.0..sroa_idx to i32
  call void @__asan_load8_noabort(i32 %62)
  %kcpustat49.sroa.13.0.copyload = load i64, ptr %kcpustat49.sroa.13.0..sroa_idx, align 8
  %div1.i.i.i.i198 = lshr i32 %call45266, 5
  %arrayidx.i.i.i.i199 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i.i198
  %63 = ptrtoint ptr %arrayidx.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.i.i.i199, align 4
  %and.i.i.i.i200 = and i32 %call45266, 31
  %65 = shl nuw i32 1, %and.i.i.i.i200
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.i.not.i201 = icmp eq i32 %66, 0
  br i1 %tobool.i.not.i201, label %cpu_online.exit.i202.get_idle_time.exit211_crit_edge, label %if.end.i205

cpu_online.exit.i202.get_idle_time.exit211_crit_edge: ; preds = %cpu_online.exit.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_idle_time.exit211

if.end.i205:                                      ; preds = %cpu_online.exit.i202
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i203 = call i64 @get_cpu_idle_time_us(i32 noundef %call45266, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i203)
  %cmp.i204 = icmp eq i64 %call1.i203, -1
  %mul.i208 = mul i64 %call1.i203, 1000
  %spec.select234 = select i1 %cmp.i204, i64 %kcpustat49.sroa.9.0.copyload, i64 %mul.i208
  br label %get_idle_time.exit211

get_idle_time.exit211:                            ; preds = %if.end.i205, %cpu_online.exit.i202.get_idle_time.exit211_crit_edge
  %idle.0.i210 = phi i64 [ %kcpustat49.sroa.9.0.copyload, %cpu_online.exit.i202.get_idle_time.exit211_crit_edge ], [ %spec.select234, %if.end.i205 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %call45266)
  %cmp.not.i.i.i.i.i212 = icmp ugt i32 %67, %call45266
  br i1 %cmp.not.i.i.i.i.i212, label %get_idle_time.exit211.cpu_online.exit.i220_crit_edge, label %land.rhs.i.i.i.i.i214

get_idle_time.exit211.cpu_online.exit.i220_crit_edge: ; preds = %get_idle_time.exit211
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i220

land.rhs.i.i.i.i.i214:                            ; preds = %get_idle_time.exit211
  %.b37.i.i.i.i.i213 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i213, label %land.rhs.i.i.i.i.i214.cpu_online.exit.i220_crit_edge, label %if.then.i.i.i.i.i215, !prof !32

land.rhs.i.i.i.i.i214.cpu_online.exit.i220_crit_edge: ; preds = %land.rhs.i.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i220

if.then.i.i.i.i.i215:                             ; preds = %land.rhs.i.i.i.i.i214
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit.i220

cpu_online.exit.i220:                             ; preds = %if.then.i.i.i.i.i215, %land.rhs.i.i.i.i.i214.cpu_online.exit.i220_crit_edge, %get_idle_time.exit211.cpu_online.exit.i220_crit_edge
  %68 = ptrtoint ptr %arrayidx.i.i.i.i199 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %arrayidx.i.i.i.i199, align 4
  %70 = and i32 %69, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i.not.i219 = icmp eq i32 %70, 0
  br i1 %tobool.i.not.i219, label %cpu_online.exit.i220.get_iowait_time.exit229_crit_edge, label %if.end.i223

cpu_online.exit.i220.get_iowait_time.exit229_crit_edge: ; preds = %cpu_online.exit.i220
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_iowait_time.exit229

if.end.i223:                                      ; preds = %cpu_online.exit.i220
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i221 = call i64 @get_cpu_iowait_time_us(i32 noundef %call45266, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i221)
  %cmp.i222 = icmp eq i64 %call1.i221, -1
  %mul.i226 = mul i64 %call1.i221, 1000
  %spec.select235 = select i1 %cmp.i222, i64 %kcpustat49.sroa.10.0.copyload, i64 %mul.i226
  br label %get_iowait_time.exit229

get_iowait_time.exit229:                          ; preds = %if.end.i223, %cpu_online.exit.i220.get_iowait_time.exit229_crit_edge
  %iowait.0.i228 = phi i64 [ %kcpustat49.sroa.10.0.copyload, %cpu_online.exit.i220.get_iowait_time.exit229_crit_edge ], [ %spec.select235, %if.end.i223 ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.4, i32 noundef %call45266) #6
  %call63 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.0.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call63) #6
  %call64 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.5.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call64) #6
  %call65 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.6.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call65) #6
  %call66 = call i64 @nsec_to_clock_t(i64 noundef %idle.0.i210) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call66) #6
  %call67 = call i64 @nsec_to_clock_t(i64 noundef %iowait.0.i228) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call67) #6
  %call68 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.8.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call68) #6
  %call69 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.7.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call69) #6
  %call70 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.11.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call70) #6
  %call71 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.12.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call71) #6
  %call72 = call i64 @nsec_to_clock_t(i64 noundef %kcpustat49.sroa.13.0.copyload) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %call72) #6
  call void @seq_putc(ptr noundef %p, i8 noundef zeroext 10) #6
  %call45 = call i32 @cpumask_next(i32 noundef %call45266, ptr noundef nonnull @__cpu_online_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %71 = load i32, ptr @nr_cpu_ids, align 4
  %cmp46 = icmp ult i32 %call45, %71
  br i1 %cmp46, label %get_iowait_time.exit229.cpu_online.exit.i202_crit_edge, label %get_iowait_time.exit229.for.end73_crit_edge

get_iowait_time.exit229.for.end73_crit_edge:      ; preds = %get_iowait_time.exit229
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end73

get_iowait_time.exit229.cpu_online.exit.i202_crit_edge: ; preds = %get_iowait_time.exit229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit.i202

for.end73:                                        ; preds = %get_iowait_time.exit229.for.end73_crit_edge, %for.end32.for.end73_crit_edge
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.5, i64 noundef %sum.0.lcssa) #6
  %call.i = call i32 @irq_get_next_irq(i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %72 = load i32, ptr @nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %72)
  %cmp20.i = icmp ult i32 %call.i, %72
  br i1 %cmp20.i, label %for.end73.for.body.i_crit_edge, label %for.end73.for.end.i_crit_edge

for.end73.for.end.i_crit_edge:                    ; preds = %for.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end73.for.body.i_crit_edge:                   ; preds = %for.end73
  br label %for.body.i

for.body.i:                                       ; preds = %show_irq_gap.exit.i.for.body.i_crit_edge, %for.end73.for.body.i_crit_edge
  %next.022.i = phi i32 [ %add.i231, %show_irq_gap.exit.i.for.body.i_crit_edge ], [ 0, %for.end73.for.body.i_crit_edge ]
  %i.021.i = phi i32 [ %call3.i, %show_irq_gap.exit.i.for.body.i_crit_edge ], [ %call.i, %for.end73.for.body.i_crit_edge ]
  %sub.i = sub i32 %i.021.i, %next.022.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.not7.i.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not7.i.i, label %for.body.i.show_irq_gap.exit.i_crit_edge, label %for.body.i.while.body.i.i_crit_edge

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

for.body.i.show_irq_gap.exit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %show_irq_gap.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  %gap.addr.08.i.i = phi i32 [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %sub.i, %for.body.i.while.body.i.i_crit_edge ]
  %73 = call i32 @llvm.umin.i32(i32 %gap.addr.08.i.i, i32 16) #6
  %mul.i.i = shl nuw nsw i32 %73, 1
  %call.i.i = call i32 @seq_write(ptr noundef %p, ptr noundef nonnull @show_irq_gap.zeros, i32 noundef %mul.i.i) #6
  %sub.i.i = sub i32 %gap.addr.08.i.i, %73
  %cmp.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %while.body.i.i.show_irq_gap.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.show_irq_gap.exit.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %show_irq_gap.exit.i

show_irq_gap.exit.i:                              ; preds = %while.body.i.i.show_irq_gap.exit.i_crit_edge, %for.body.i.show_irq_gap.exit.i_crit_edge
  %call1.i230 = call i32 @kstat_irqs_usr(i32 noundef %i.021.i) #6
  %conv.i = zext i32 %call1.i230 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv.i) #6
  %add.i231 = add i32 %i.021.i, 1
  %call3.i = call i32 @irq_get_next_irq(i32 noundef %add.i231) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_irqs to i32))
  %74 = load i32, ptr @nr_irqs, align 4
  %cmp.i232 = icmp ult i32 %call3.i, %74
  br i1 %cmp.i232, label %show_irq_gap.exit.i.for.body.i_crit_edge, label %show_irq_gap.exit.i.for.end.i_crit_edge

show_irq_gap.exit.i.for.end.i_crit_edge:          ; preds = %show_irq_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

show_irq_gap.exit.i.for.body.i_crit_edge:         ; preds = %show_irq_gap.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %show_irq_gap.exit.i.for.end.i_crit_edge, %for.end73.for.end.i_crit_edge
  %next.0.lcssa.i = phi i32 [ 0, %for.end73.for.end.i_crit_edge ], [ %add.i231, %show_irq_gap.exit.i.for.end.i_crit_edge ]
  %.lcssa.i = phi i32 [ %72, %for.end73.for.end.i_crit_edge ], [ %74, %show_irq_gap.exit.i.for.end.i_crit_edge ]
  %sub4.i = sub i32 %.lcssa.i, %next.0.lcssa.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %cmp.not7.i12.i = icmp eq i32 %sub4.i, 0
  br i1 %cmp.not7.i12.i, label %for.end.i.show_all_irqs.exit_crit_edge, label %for.end.i.while.body.i18.i_crit_edge

for.end.i.while.body.i18.i_crit_edge:             ; preds = %for.end.i
  br label %while.body.i18.i

for.end.i.show_all_irqs.exit_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %show_all_irqs.exit

while.body.i18.i:                                 ; preds = %while.body.i18.i.while.body.i18.i_crit_edge, %for.end.i.while.body.i18.i_crit_edge
  %gap.addr.08.i13.i = phi i32 [ %sub.i16.i, %while.body.i18.i.while.body.i18.i_crit_edge ], [ %sub4.i, %for.end.i.while.body.i18.i_crit_edge ]
  %75 = call i32 @llvm.umin.i32(i32 %gap.addr.08.i13.i, i32 16) #6
  %mul.i14.i = shl nuw nsw i32 %75, 1
  %call.i15.i = call i32 @seq_write(ptr noundef %p, ptr noundef nonnull @show_irq_gap.zeros, i32 noundef %mul.i14.i) #6
  %sub.i16.i = sub i32 %gap.addr.08.i13.i, %75
  %cmp.not.i17.i = icmp eq i32 %sub.i16.i, 0
  br i1 %cmp.not.i17.i, label %while.body.i18.i.show_all_irqs.exit_crit_edge, label %while.body.i18.i.while.body.i18.i_crit_edge

while.body.i18.i.while.body.i18.i_crit_edge:      ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i18.i

while.body.i18.i.show_all_irqs.exit_crit_edge:    ; preds = %while.body.i18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %show_all_irqs.exit

show_all_irqs.exit:                               ; preds = %while.body.i18.i.show_all_irqs.exit_crit_edge, %for.end.i.show_all_irqs.exit_crit_edge
  %call74 = call i64 @nr_context_switches() #6
  %76 = ptrtoint ptr %boottime to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %boottime, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @total_forks to i32))
  %78 = load i32, ptr @total_forks, align 4
  %call75 = call i32 @nr_running() #6
  %call76 = call i32 @nr_iowait() #6
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.6, i64 noundef %call74, i64 noundef %77, i32 noundef %78, i32 noundef %call75, i32 noundef %call76) #6
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.7, i64 noundef %sum_softirq.0.lcssa) #6
  %conv82 = zext i32 %per_softirq_sums.sroa.0.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82) #6
  %conv82.1 = zext i32 %per_softirq_sums.sroa.6.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.1) #6
  %conv82.2 = zext i32 %per_softirq_sums.sroa.9.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.2) #6
  %conv82.3 = zext i32 %per_softirq_sums.sroa.12.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.3) #6
  %conv82.4 = zext i32 %per_softirq_sums.sroa.15.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.4) #6
  %conv82.5 = zext i32 %per_softirq_sums.sroa.18.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.5) #6
  %conv82.6 = zext i32 %per_softirq_sums.sroa.21.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.6) #6
  %conv82.7 = zext i32 %per_softirq_sums.sroa.24.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.7) #6
  %conv82.8 = zext i32 %per_softirq_sums.sroa.27.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.8) #6
  %conv82.9 = zext i32 %per_softirq_sums.sroa.30.1 to i64
  call void @seq_put_decimal_ull(ptr noundef %p, ptr noundef nonnull @.str.3, i64 noundef %conv82.9) #6
  call void @seq_putc(ptr noundef %p, i8 noundef zeroext 10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %boottime) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @getboottime64(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ull(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nr_context_switches() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_running() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_iowait() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_cpu_iowait_time_us(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstat_irqs_usr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__initcall__kmod_proc__214_242_proc_stat_init5, !1, !"__initcall__kmod_proc__214_242_proc_stat_init5", i1 false, i1 false}
!1 = !{!"../fs/proc/stat.c", i32 242, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../fs/proc/stat.c", i32 239, i32 14}
!7 = !{ptr @stat_proc_ops, !8, !"stat_proc_ops", i1 false, i1 false}
!8 = !{!"../fs/proc/stat.c", i32 229, i32 30}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/proc/stat.c", i32 153, i32 25}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/proc/stat.c", i32 154, i32 25}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/proc/stat.c", i32 182, i32 17}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/proc/stat.c", i32 195, i32 25}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/proc/stat.c", i32 200, i32 3}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/proc/stat.c", i32 211, i32 25}
!21 = !{ptr @show_irq_gap.zeros, !22, !"zeros", i1 false, i1 false}
!22 = !{!"../fs/proc/stat.c", i32 85, i32 20}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 2000, i32 1}
