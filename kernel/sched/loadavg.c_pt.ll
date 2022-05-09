; ModuleID = '/llk/IR_all_yes/kernel/sched/loadavg.c_pt.bc'
source_filename = "../kernel/sched/loadavg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+avenrun\22, \22a\22\09"
module asm "\09.weak\09__crc_avenrun\09\09\09\09"
module asm "\09.long\09__crc_avenrun\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_avenrun:\09\09\09\09\09"
module asm "\09.asciz \09\22avenrun\22\09\09\09\09\09"
module asm "__kstrtabns_avenrun:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rq = type { %struct.raw_spinlock, i32, i32, i32, [8 x i8], %struct.__call_single_data, i32, %struct.atomic_t, i32, i64, [24 x i8], [2 x %struct.uclamp_rq], i32, [76 x i8], %struct.cfs_rq, %struct.rt_rq, %struct.dl_rq, %struct.list_head, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i64, [88 x i8], i64, i64, i32, %struct.atomic_t, i64, i32, i32, ptr, ptr, i32, i32, ptr, i8, i8, i32, i32, i32, %struct.cpu_stop_work, i32, i32, %struct.list_head, [12 x i8], %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, %struct.sched_avg, i64, i64, i32, i64, i64, %struct.rcuwait, i64, i64, i64, i32, i32, %struct.__call_single_data, %struct.hrtimer, i64, %struct.sched_info, i64, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.cpu_stop_work, ptr, ptr, i32, i32, %struct.rb_root, i32, i32, i32, i32, i32, i32, i64, [80 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uclamp_rq = type { i32, [5 x %struct.uclamp_bucket] }
%struct.uclamp_bucket = type { i32 }
%struct.cfs_rq = type { %struct.load_weight, i32, i32, i32, i32, i64, i64, i32, i64, i64, %struct.rb_root_cached, ptr, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg, i64, [120 x i8], %struct.anon, i32, i32, i32, i32, i64, ptr, ptr, i32, %struct.list_head, ptr, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list_head, [24 x i8] }
%struct.load_weight = type { i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon = type { %struct.raw_spinlock, i32, i32, i32, i32, [68 x i8] }
%struct.rt_rq = type { %struct.rt_prio_array, i32, i32, %struct.anon.45, i32, i32, i32, %struct.plist_head, i32, i32, i64, i64, %struct.raw_spinlock, i32, ptr, ptr }
%struct.rt_prio_array = type { [4 x i32], [100 x %struct.list_head] }
%struct.anon.45 = type { i32, i32 }
%struct.plist_head = type { %struct.list_head }
%struct.dl_rq = type { %struct.rb_root_cached, i32, %struct.anon.134, i32, i32, %struct.rb_root_cached, i64, i64, i64, i64 }
%struct.anon.134 = type { i64, i64 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.rcuwait = type { ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.cpu_stop_work = type { %struct.list_head, ptr, i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@avenrun = dso_local global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@__kstrtab_avenrun = external dso_local constant [0 x i8], align 1
@__kstrtabns_avenrun = external dso_local constant [0 x i8], align 1
@__ksymtab_avenrun = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @avenrun to i32), ptr @__kstrtab_avenrun, ptr @__kstrtabns_avenrun }, section "___ksymtab+avenrun", align 4
@runqueues = external dso_local global %struct.rq, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@calc_load_update = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@calc_load_tasks = dso_local global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@calc_load_nohz = internal global { [2 x %struct.atomic_t], [24 x i8] } zeroinitializer, align 32
@calc_load_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"avenrun\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 61, i32 15 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"calc_load_update\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 60, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"calc_load_tasks\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 59, i32 15 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"calc_load_nohz\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 206, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"calc_load_idx\00", align 1
@___asan_gen_.14 = private constant [26 x i8] c"../kernel/sched/loadavg.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 207, i32 12 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_avenrun, ptr @avenrun, ptr @calc_load_update, ptr @calc_load_tasks, ptr @calc_load_nohz, ptr @calc_load_idx], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avenrun to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_load_update to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_load_tasks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_load_nohz to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_load_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @get_avenrun(ptr nocapture noundef writeonly %loads, i32 noundef %offset, i32 noundef %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @avenrun, align 4
  %add = add i32 %0, %offset
  %shl = shl i32 %add, %shift
  %1 = ptrtoint ptr %loads to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %loads, align 4
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %add1 = add i32 %2, %offset
  %shl2 = shl i32 %add1, %shift
  %arrayidx3 = getelementptr i32, ptr %loads, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl2, ptr %arrayidx3, align 4
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %add4 = add i32 %4, %offset
  %shl5 = shl i32 %add4, %shift
  %arrayidx6 = getelementptr i32, ptr %loads, i32 2
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl5, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @calc_load_fold_active(ptr nocapture noundef %this_rq, i32 noundef %adjust) local_unnamed_addr #1 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_running = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 1
  %0 = ptrtoint ptr %nr_running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_running, align 4
  %sub = sub i32 %1, %adjust
  %nr_uninterruptible = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 19
  %2 = ptrtoint ptr %nr_uninterruptible to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_uninterruptible, align 4
  %add = add i32 %sub, %3
  %calc_load_active = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 64
  %4 = ptrtoint ptr %calc_load_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calc_load_active, align 4
  %cmp.not = icmp eq i32 %add, %5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sub2 = sub i32 %add, %5
  %6 = ptrtoint ptr %calc_load_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %calc_load_active, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %delta.0 = phi i32 [ %sub2, %if.then ], [ 0, %entry ]
  ret i32 %delta.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @calc_load_n(i32 noundef %load, i32 noundef %exp, i32 noundef %active, i32 noundef %n) local_unnamed_addr #2 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq i32 %n, 0
  br i1 %tobool.not.i, label %fixed_power_int.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %and1.i = and i32 %n, 1
  %tobool1.not2.i = icmp eq i32 %and1.i, 0
  %mul3.i = and i32 %exp, 2097151
  %result.16.i = select i1 %tobool1.not2.i, i32 2048, i32 %mul3.i
  %tobool5.not7.i = icmp eq i32 %n, 1
  br i1 %tobool5.not7.i, label %fixed_power_int.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end7.i, %for.cond.preheader.i
  %result.110.i = phi i32 [ %result.1.i, %if.end7.i ], [ %result.16.i, %for.cond.preheader.i ]
  %n.addr.09.i = phi i32 [ %shr4.i, %if.end7.i ], [ %n, %for.cond.preheader.i ]
  %x.addr.08.i = phi i32 [ %shr12.i, %if.end7.i ], [ %exp, %for.cond.preheader.i ]
  %shr4.i = lshr i32 %n.addr.09.i, 1
  %mul8.i = mul i32 %x.addr.08.i, %x.addr.08.i
  %add11.i = add i32 %mul8.i, 1024
  %shr12.i = lshr i32 %add11.i, 11
  %0 = and i32 %n.addr.09.i, 2
  %tobool1.not.i = icmp eq i32 %0, 0
  %mul.i = mul i32 %shr12.i, %result.110.i
  %add.i = add i32 %mul.i, 1024
  %shr.i = lshr i32 %add.i, 11
  %result.1.i = select i1 %tobool1.not.i, i32 %result.110.i, i32 %shr.i
  %tobool5.not.i = icmp ult i32 %n.addr.09.i, 4
  br i1 %tobool5.not.i, label %fixed_power_int.exit, label %if.end7.i

fixed_power_int.exit:                             ; preds = %if.end7.i, %for.cond.preheader.i, %entry
  %result.2.i = phi i32 [ 2048, %entry ], [ %result.16.i, %for.cond.preheader.i ], [ %result.1.i, %if.end7.i ]
  %mul.i2 = mul i32 %result.2.i, %load
  %sub.i = sub i32 2048, %result.2.i
  %mul1.i = mul i32 %sub.i, %active
  %add.i3 = add i32 %mul1.i, %mul.i2
  %cmp.not.i = icmp ult i32 %active, %load
  %add2.i = add i32 %add.i3, 2047
  %spec.select.i = select i1 %cmp.not.i, i32 %add.i3, i32 %add2.i
  %div7.i = lshr i32 %spec.select.i, 11
  ret i32 %div7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calc_load_nohz_start() local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %nr_running.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_running.i.i, align 4
  %nr_uninterruptible.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 19
  %9 = ptrtoint ptr %nr_uninterruptible.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_uninterruptible.i.i, align 4
  %add.i.i = add i32 %10, %8
  %calc_load_active.i.i = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 64
  %11 = ptrtoint ptr %calc_load_active.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %calc_load_active.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %add.i.i, %12
  br i1 %cmp.not.i.i, label %calc_load_nohz_fold.exit, label %calc_load_fold_active.exit.i

calc_load_fold_active.exit.i:                     ; preds = %entry
  %13 = ptrtoint ptr %calc_load_active.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.i.i, ptr %calc_load_active.i.i, align 4
  %sub2.i.i = sub i32 %add.i.i, %12
  %14 = load i32, ptr @calc_load_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = load volatile i32, ptr @calc_load_update, align 4
  %17 = xor i32 %15, -1
  %18 = add i32 %16, %17
  %sub.lobit.not.i.i = lshr i32 %18, 31
  %spec.select.i.i = add i32 %sub.lobit.not.i.i, %14
  %and.i.i = and i32 %spec.select.i.i, 1
  %arrayidx.i = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %and.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #8
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %sub2.i.i, ptr elementtype(i32) %arrayidx.i) #8, !srcloc !23
  br label %calc_load_nohz_fold.exit

calc_load_nohz_fold.exit:                         ; preds = %calc_load_fold_active.exit.i, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calc_load_nohz_remote(ptr nocapture noundef %rq) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_running.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 1
  %0 = ptrtoint ptr %nr_running.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_running.i.i, align 4
  %nr_uninterruptible.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 19
  %2 = ptrtoint ptr %nr_uninterruptible.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_uninterruptible.i.i, align 4
  %add.i.i = add i32 %3, %1
  %calc_load_active.i.i = getelementptr inbounds %struct.rq, ptr %rq, i32 0, i32 64
  %4 = ptrtoint ptr %calc_load_active.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %calc_load_active.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %add.i.i, %5
  br i1 %cmp.not.i.i, label %calc_load_nohz_fold.exit, label %calc_load_fold_active.exit.i

calc_load_fold_active.exit.i:                     ; preds = %entry
  %6 = ptrtoint ptr %calc_load_active.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i.i, ptr %calc_load_active.i.i, align 4
  %sub2.i.i = sub i32 %add.i.i, %5
  %7 = load i32, ptr @calc_load_idx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load volatile i32, ptr @calc_load_update, align 4
  %10 = xor i32 %8, -1
  %11 = add i32 %9, %10
  %sub.lobit.not.i.i = lshr i32 %11, 31
  %spec.select.i.i = add i32 %sub.lobit.not.i.i, %7
  %and.i.i = and i32 %spec.select.i.i, 1
  %arrayidx.i = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %and.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx.i, ptr %arrayidx.i, i32 %sub2.i.i, ptr elementtype(i32) %arrayidx.i) #8, !srcloc !23
  br label %calc_load_nohz_fold.exit

calc_load_nohz_fold.exit:                         ; preds = %calc_load_fold_active.exit.i, %entry
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @calc_load_nohz_stop() local_unnamed_addr #4 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @runqueues to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = load volatile i32, ptr @calc_load_update, align 4
  %calc_load_update = getelementptr inbounds %struct.rq, ptr %6, i32 0, i32 63
  %8 = ptrtoint ptr %calc_load_update to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %calc_load_update, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %9, %7
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add8.neg = sub i32 -10, %7
  %sub9 = add i32 %add8.neg, %10
  %cmp10 = icmp slt i32 %sub9, 0
  br i1 %cmp10, label %if.then11, label %cleanup

if.then11:                                        ; preds = %if.end
  %add13 = add i32 %7, 501
  %11 = ptrtoint ptr %calc_load_update to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add13, ptr %calc_load_update, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calc_global_load() local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @calc_load_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -10, %0
  %sub = add i32 %add.neg, %1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i32, ptr @calc_load_idx, align 4
  %and.i.i = and i32 %2, 1
  %arrayidx.i = getelementptr [2 x %struct.atomic_t], ptr @calc_load_nohz, i32 0, i32 %and.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end2, label %calc_load_nohz_read.exit

calc_load_nohz_read.exit:                         ; preds = %if.end
  %call.i.i5.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !24
  tail call void @llvm.prefetch.p0(ptr %arrayidx.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx.i) #8, !srcloc !25
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !26
  %tobool.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %calc_load_nohz_read.exit
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @calc_load_tasks, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @calc_load_tasks, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @calc_load_tasks, ptr nonnull @calc_load_tasks, i32 %asmresult.i.i.i.i, ptr nonnull elementtype(i32) @calc_load_tasks) #8, !srcloc !23
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %calc_load_nohz_read.exit, %if.end
  %call.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @calc_load_tasks, i32 noundef 4) #8
  %7 = load volatile i32, ptr @calc_load_tasks, align 4
  %cmp4 = icmp sgt i32 %7, 0
  %mul = shl i32 %7, 11
  %spec.select = select i1 %cmp4, i32 %mul, i32 0
  %8 = load i32, ptr @avenrun, align 4
  %mul.i = mul i32 %8, 1884
  %mul1.i = mul i32 %spec.select, 164
  %add.i = add i32 %mul1.i, %mul.i
  %cmp.not.i = icmp ult i32 %spec.select, %8
  %add2.i = add i32 %add.i, 2047
  %spec.select.i = select i1 %cmp.not.i, i32 %add.i, i32 %add2.i
  %div7.i = lshr i32 %spec.select.i, 11
  store i32 %div7.i, ptr @avenrun, align 4
  %9 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %mul.i27 = mul i32 %9, 2014
  %mul1.i28 = mul i32 %spec.select, 34
  %add.i29 = add i32 %mul.i27, %mul1.i28
  %cmp.not.i30 = icmp ult i32 %spec.select, %9
  %add2.i31 = add i32 %add.i29, 2047
  %spec.select.i32 = select i1 %cmp.not.i30, i32 %add.i29, i32 %add2.i31
  %div7.i33 = lshr i32 %spec.select.i32, 11
  store i32 %div7.i33, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %10 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %mul.i34 = mul i32 %10, 2037
  %mul1.i35 = mul i32 %spec.select, 11
  %add.i36 = add i32 %mul.i34, %mul1.i35
  %cmp.not.i37 = icmp ult i32 %spec.select, %10
  %add2.i38 = add i32 %add.i36, 2047
  %spec.select.i39 = select i1 %cmp.not.i37, i32 %add.i36, i32 %add2.i38
  %div7.i40 = lshr i32 %spec.select.i39, 11
  store i32 %div7.i40, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %add13 = add i32 %0, 501
  store volatile i32 %add13, ptr @calc_load_update, align 4
  %11 = load volatile i32, ptr @calc_load_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -10, %11
  %sub.i = add i32 %add.neg.i, %12
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %calc_global_nohz.exit, label %if.then.i44

if.then.i44:                                      ; preds = %if.end2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = sub i32 %13, %11
  %sub2.i = add i32 %sub1.i, -10
  %div.i = sdiv i32 %sub2.i, 501
  %add3.i = add nsw i32 %div.i, 1
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @calc_load_tasks, i32 noundef 4) #8
  %14 = load volatile i32, ptr @calc_load_tasks, align 4
  %cmp4.i = icmp sgt i32 %14, 0
  %mul.i42 = shl i32 %14, 11
  %spec.select.i43 = select i1 %cmp4.i, i32 %mul.i42, i32 0
  %15 = load i32, ptr @avenrun, align 4
  %tobool.not.i.i.i = icmp eq i32 %add3.i, 0
  br i1 %tobool.not.i.i.i, label %calc_load_n.exit.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.then.i44
  %and1.i.i.i = and i32 %add3.i, 1
  %tobool1.not2.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %result.16.i.i.i = select i1 %tobool1.not2.i.i.i, i32 2048, i32 1884
  %sub2.off.i = add i32 %sub1.i, 490
  %16 = icmp ult i32 %sub2.off.i, 1001
  br i1 %16, label %calc_load_n.exit.i, label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end7.i.i.i, %for.cond.preheader.i.i.i
  %result.110.i.i.i = phi i32 [ %result.1.i.i.i, %if.end7.i.i.i ], [ %result.16.i.i.i, %for.cond.preheader.i.i.i ]
  %n.addr.09.i.i.i = phi i32 [ %shr4.i.i.i, %if.end7.i.i.i ], [ %add3.i, %for.cond.preheader.i.i.i ]
  %x.addr.08.i.i.i = phi i32 [ %shr12.i.i.i, %if.end7.i.i.i ], [ 1884, %for.cond.preheader.i.i.i ]
  %shr4.i.i.i = lshr i32 %n.addr.09.i.i.i, 1
  %mul8.i.i.i = mul i32 %x.addr.08.i.i.i, %x.addr.08.i.i.i
  %add11.i.i.i = add i32 %mul8.i.i.i, 1024
  %shr12.i.i.i = lshr i32 %add11.i.i.i, 11
  %17 = and i32 %n.addr.09.i.i.i, 2
  %tobool1.not.i.i.i = icmp eq i32 %17, 0
  %mul.i.i.i = mul i32 %shr12.i.i.i, %result.110.i.i.i
  %add.i.i.i = add i32 %mul.i.i.i, 1024
  %shr.i.i.i = lshr i32 %add.i.i.i, 11
  %result.1.i.i.i = select i1 %tobool1.not.i.i.i, i32 %result.110.i.i.i, i32 %shr.i.i.i
  %tobool5.not.i.i.i = icmp ult i32 %n.addr.09.i.i.i, 4
  br i1 %tobool5.not.i.i.i, label %calc_load_n.exit.i, label %if.end7.i.i.i

calc_load_n.exit.i:                               ; preds = %if.end7.i.i.i, %for.cond.preheader.i.i.i, %if.then.i44
  %result.2.i.i.i = phi i32 [ 2048, %if.then.i44 ], [ %result.16.i.i.i, %for.cond.preheader.i.i.i ], [ %result.1.i.i.i, %if.end7.i.i.i ]
  %mul.i2.i.i = mul i32 %result.2.i.i.i, %15
  %sub.i.i.i = sub i32 2048, %result.2.i.i.i
  %mul1.i.i.i = mul i32 %sub.i.i.i, %spec.select.i43
  %add.i3.i.i = add i32 %mul1.i.i.i, %mul.i2.i.i
  %cmp.not.i.i.i = icmp ult i32 %spec.select.i43, %15
  %add2.i.i.i = add i32 %add.i3.i.i, 2047
  %spec.select.i.i.i = select i1 %cmp.not.i.i.i, i32 %add.i3.i.i, i32 %add2.i.i.i
  %div7.i.i.i = lshr i32 %spec.select.i.i.i, 11
  store i32 %div7.i.i.i, ptr @avenrun, align 4
  %18 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  br i1 %tobool.not.i.i.i, label %calc_load_n.exit63.i, label %for.cond.preheader.i.i39.i

for.cond.preheader.i.i39.i:                       ; preds = %calc_load_n.exit.i
  %and1.i.i35.i = and i32 %add3.i, 1
  %tobool1.not2.i.i36.i = icmp eq i32 %and1.i.i35.i, 0
  %result.16.i.i37.i = select i1 %tobool1.not2.i.i36.i, i32 2048, i32 2014
  %sub2.off94.i = add i32 %sub1.i, 490
  %19 = icmp ult i32 %sub2.off94.i, 1001
  br i1 %19, label %calc_load_n.exit63.i, label %if.end7.i.i53.i

if.end7.i.i53.i:                                  ; preds = %if.end7.i.i53.i, %for.cond.preheader.i.i39.i
  %result.110.i.i40.i = phi i32 [ %result.1.i.i51.i, %if.end7.i.i53.i ], [ %result.16.i.i37.i, %for.cond.preheader.i.i39.i ]
  %n.addr.09.i.i41.i = phi i32 [ %shr4.i.i43.i, %if.end7.i.i53.i ], [ %add3.i, %for.cond.preheader.i.i39.i ]
  %x.addr.08.i.i42.i = phi i32 [ %shr12.i.i46.i, %if.end7.i.i53.i ], [ 2014, %for.cond.preheader.i.i39.i ]
  %shr4.i.i43.i = lshr i32 %n.addr.09.i.i41.i, 1
  %mul8.i.i44.i = mul i32 %x.addr.08.i.i42.i, %x.addr.08.i.i42.i
  %add11.i.i45.i = add i32 %mul8.i.i44.i, 1024
  %shr12.i.i46.i = lshr i32 %add11.i.i45.i, 11
  %20 = and i32 %n.addr.09.i.i41.i, 2
  %tobool1.not.i.i47.i = icmp eq i32 %20, 0
  %mul.i.i48.i = mul i32 %shr12.i.i46.i, %result.110.i.i40.i
  %add.i.i49.i = add i32 %mul.i.i48.i, 1024
  %shr.i.i50.i = lshr i32 %add.i.i49.i, 11
  %result.1.i.i51.i = select i1 %tobool1.not.i.i47.i, i32 %result.110.i.i40.i, i32 %shr.i.i50.i
  %tobool5.not.i.i52.i = icmp ult i32 %n.addr.09.i.i41.i, 4
  br i1 %tobool5.not.i.i52.i, label %calc_load_n.exit63.i, label %if.end7.i.i53.i

calc_load_n.exit63.i:                             ; preds = %if.end7.i.i53.i, %for.cond.preheader.i.i39.i, %calc_load_n.exit.i
  %result.2.i.i54.i = phi i32 [ 2048, %calc_load_n.exit.i ], [ %result.16.i.i37.i, %for.cond.preheader.i.i39.i ], [ %result.1.i.i51.i, %if.end7.i.i53.i ]
  %mul.i2.i55.i = mul i32 %result.2.i.i54.i, %18
  %sub.i.i56.i = sub i32 2048, %result.2.i.i54.i
  %mul1.i.i57.i = mul i32 %sub.i.i56.i, %spec.select.i43
  %add.i3.i58.i = add i32 %mul1.i.i57.i, %mul.i2.i55.i
  %cmp.not.i.i59.i = icmp ult i32 %spec.select.i43, %18
  %add2.i.i60.i = add i32 %add.i3.i58.i, 2047
  %spec.select.i.i61.i = select i1 %cmp.not.i.i59.i, i32 %add.i3.i58.i, i32 %add2.i.i60.i
  %div7.i.i62.i = lshr i32 %spec.select.i.i61.i, 11
  store i32 %div7.i.i62.i, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  br i1 %tobool.not.i.i.i, label %calc_load_n.exit93.i, label %for.cond.preheader.i.i69.i

for.cond.preheader.i.i69.i:                       ; preds = %calc_load_n.exit63.i
  %and1.i.i65.i = and i32 %add3.i, 1
  %tobool1.not2.i.i66.i = icmp eq i32 %and1.i.i65.i, 0
  %result.16.i.i67.i = select i1 %tobool1.not2.i.i66.i, i32 2048, i32 2037
  %sub2.off95.i = add i32 %sub1.i, 490
  %22 = icmp ult i32 %sub2.off95.i, 1001
  br i1 %22, label %calc_load_n.exit93.i, label %if.end7.i.i83.i

if.end7.i.i83.i:                                  ; preds = %if.end7.i.i83.i, %for.cond.preheader.i.i69.i
  %result.110.i.i70.i = phi i32 [ %result.1.i.i81.i, %if.end7.i.i83.i ], [ %result.16.i.i67.i, %for.cond.preheader.i.i69.i ]
  %n.addr.09.i.i71.i = phi i32 [ %shr4.i.i73.i, %if.end7.i.i83.i ], [ %add3.i, %for.cond.preheader.i.i69.i ]
  %x.addr.08.i.i72.i = phi i32 [ %shr12.i.i76.i, %if.end7.i.i83.i ], [ 2037, %for.cond.preheader.i.i69.i ]
  %shr4.i.i73.i = lshr i32 %n.addr.09.i.i71.i, 1
  %mul8.i.i74.i = mul i32 %x.addr.08.i.i72.i, %x.addr.08.i.i72.i
  %add11.i.i75.i = add i32 %mul8.i.i74.i, 1024
  %shr12.i.i76.i = lshr i32 %add11.i.i75.i, 11
  %23 = and i32 %n.addr.09.i.i71.i, 2
  %tobool1.not.i.i77.i = icmp eq i32 %23, 0
  %mul.i.i78.i = mul i32 %shr12.i.i76.i, %result.110.i.i70.i
  %add.i.i79.i = add i32 %mul.i.i78.i, 1024
  %shr.i.i80.i = lshr i32 %add.i.i79.i, 11
  %result.1.i.i81.i = select i1 %tobool1.not.i.i77.i, i32 %result.110.i.i70.i, i32 %shr.i.i80.i
  %tobool5.not.i.i82.i = icmp ult i32 %n.addr.09.i.i71.i, 4
  br i1 %tobool5.not.i.i82.i, label %calc_load_n.exit93.i, label %if.end7.i.i83.i

calc_load_n.exit93.i:                             ; preds = %if.end7.i.i83.i, %for.cond.preheader.i.i69.i, %calc_load_n.exit63.i
  %result.2.i.i84.i = phi i32 [ 2048, %calc_load_n.exit63.i ], [ %result.16.i.i67.i, %for.cond.preheader.i.i69.i ], [ %result.1.i.i81.i, %if.end7.i.i83.i ]
  %mul.i2.i85.i = mul i32 %result.2.i.i84.i, %21
  %sub.i.i86.i = sub i32 2048, %result.2.i.i84.i
  %mul1.i.i87.i = mul i32 %sub.i.i86.i, %spec.select.i43
  %add.i3.i88.i = add i32 %mul1.i.i87.i, %mul.i2.i85.i
  %cmp.not.i.i89.i = icmp ult i32 %spec.select.i43, %21
  %add2.i.i90.i = add i32 %add.i3.i88.i, 2047
  %spec.select.i.i91.i = select i1 %cmp.not.i.i89.i, i32 %add.i3.i88.i, i32 %add2.i.i90.i
  %div7.i.i92.i = lshr i32 %spec.select.i.i91.i, 11
  store i32 %div7.i.i92.i, ptr getelementptr inbounds ([3 x i32], ptr @avenrun, i32 0, i32 2), align 4
  %mul13.i = mul i32 %add3.i, 501
  %add14.i = add i32 %mul13.i, %11
  store volatile i32 %add14.i, ptr @calc_load_update, align 4
  br label %calc_global_nohz.exit

calc_global_nohz.exit:                            ; preds = %calc_load_n.exit93.i, %if.end2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  %24 = load i32, ptr @calc_load_idx, align 4
  %inc.i = add i32 %24, 1
  store i32 %inc.i, ptr @calc_load_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %calc_global_nohz.exit, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @calc_global_load_tick(ptr nocapture noundef %this_rq) local_unnamed_addr #3 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %calc_load_update = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 63
  %1 = ptrtoint ptr %calc_load_update to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %calc_load_update, align 8
  %sub = sub i32 %0, %2
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %nr_running.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 1
  %3 = ptrtoint ptr %nr_running.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_running.i, align 4
  %nr_uninterruptible.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 19
  %5 = ptrtoint ptr %nr_uninterruptible.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_uninterruptible.i, align 4
  %add.i = add i32 %6, %4
  %calc_load_active.i = getelementptr inbounds %struct.rq, ptr %this_rq, i32 0, i32 64
  %7 = ptrtoint ptr %calc_load_active.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %calc_load_active.i, align 4
  %cmp.not.i = icmp eq i32 %add.i, %8
  br i1 %cmp.not.i, label %if.end2, label %calc_load_fold_active.exit

calc_load_fold_active.exit:                       ; preds = %if.end
  %9 = ptrtoint ptr %calc_load_active.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %calc_load_active.i, align 4
  %sub2.i = sub i32 %add.i, %8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @calc_load_tasks, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @calc_load_tasks, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @calc_load_tasks, ptr nonnull @calc_load_tasks, i32 %sub2.i, ptr nonnull elementtype(i32) @calc_load_tasks) #8, !srcloc !23
  br label %if.end2

if.end2:                                          ; preds = %calc_load_fold_active.exit, %if.end
  %11 = ptrtoint ptr %calc_load_update to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %calc_load_update, align 8
  %add = add i32 %12, 501
  store i32 %add, ptr %calc_load_update, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_avenrun, !1, !"__ksymtab_avenrun", i1 false, i1 false}
!1 = !{!"../kernel/sched/loadavg.c", i32 62, i32 1}
!2 = !{ptr @calc_load_tasks, !3, !"calc_load_tasks", i1 false, i1 false}
!3 = !{!"../kernel/sched/loadavg.c", i32 59, i32 15}
!4 = !{ptr @calc_load_update, !5, !"calc_load_update", i1 false, i1 false}
!5 = !{!"../kernel/sched/loadavg.c", i32 60, i32 15}
!6 = !{ptr @avenrun, !7, !"avenrun", i1 false, i1 false}
!7 = !{!"../kernel/sched/loadavg.c", i32 61, i32 15}
!8 = !{ptr @calc_load_idx, !9, !"calc_load_idx", i1 false, i1 false}
!9 = !{!"../kernel/sched/loadavg.c", i32 207, i32 12}
!10 = !{ptr @calc_load_nohz, !11, !"calc_load_nohz", i1 false, i1 false}
!11 = !{!"../kernel/sched/loadavg.c", i32 206, i32 22}
!12 = !{!"sp"}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2158446226}
!23 = !{i64 2148511654, i64 2148511680, i64 2148511709, i64 2148511743, i64 2148511774, i64 2148511797}
!24 = !{i64 2148687317}
!25 = !{i64 1018422, i64 1018439, i64 1018463, i64 1018489, i64 1018507}
!26 = !{i64 2148687687}
!27 = !{i64 2158465238}
