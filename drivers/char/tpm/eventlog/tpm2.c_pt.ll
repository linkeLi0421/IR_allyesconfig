; ModuleID = '/llk/IR_all_yes/drivers/char/tpm/eventlog/tpm2.c_pt.bc'
source_filename = "../drivers/char/tpm/eventlog/tpm2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }

@tpm2_binary_b_measurements_seqops = dso_local constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @tpm2_bios_measurements_start, ptr @tpm2_bios_measurements_stop, ptr @tpm2_bios_measurements_next, ptr @tpm2_binary_bios_measurements_show }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Spec ID Event03\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [34 x i8] c"tpm2_binary_b_measurements_seqops\00", align 1
@___asan_gen_.2 = private constant [36 x i8] c"../drivers/char/tpm/eventlog/tpm2.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 154, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [32 x i8] c"../include/linux/tpm_eventlog.h\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 221, i32 35 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @tpm2_binary_b_measurements_seqops, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm2_binary_b_measurements_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tpm2_bios_measurements_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %log1 = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %bios_event_log_end = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %bios_event_log_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios_event_log_end, align 4
  %event_size = getelementptr inbounds %struct.tcg_pcr_event, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %event_size to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %event_size, align 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %7, i32 32) #7
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp = icmp eq i64 %9, 0
  %add.ptr = getelementptr i8, ptr %3, i32 %spec.select.i
  %cmp2 = icmp ult ptr %add.ptr, %5
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then3, label %if.end9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %event_type = getelementptr inbounds %struct.tcg_pcr_event, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %event_type to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %event_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4 = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6 = icmp eq i32 %7, 0
  %or.cond66 = select i1 %cmp4, i1 %cmp6, i1 false
  %spec.select = select i1 %or.cond66, ptr null, ptr inttoptr (i32 1 to ptr)
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp10 = icmp sgt i64 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %call13 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %add.ptr, ptr noundef %3)
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %call13
  %cmp15.not = icmp uge ptr %add.ptr14, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp16 = icmp eq i32 %call13, 0
  %or.cond64 = or i1 %cmp16, %cmp15.not
  br i1 %or.cond64, label %if.then11.cleanup_crit_edge, label %if.then11.if.end19_crit_edge

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.then11.if.end19_crit_edge, %if.end9.if.end19_crit_edge
  %addr.0 = phi ptr [ %3, %if.end9.if.end19_crit_edge ], [ %add.ptr, %if.then11.if.end19_crit_edge ]
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pos, align 8
  %sub67 = add i64 %13, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub67)
  %cmp2068 = icmp sgt i64 %sub67, 0
  br i1 %cmp2068, label %if.end19.for.body_crit_edge, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.070, 1
  %conv = sext i32 %inc to i64
  %14 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %pos, align 8
  %sub = add i64 %15, -1
  %cmp20 = icmp sgt i64 %sub, %conv
  br i1 %cmp20, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end19.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %addr.169 = phi ptr [ %add.ptr23, %for.cond.for.body_crit_edge ], [ %addr.0, %if.end19.for.body_crit_edge ]
  %call22 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %addr.169, ptr noundef %3)
  %add.ptr23 = getelementptr i8, ptr %addr.169, i32 %call22
  %cmp24.not = icmp uge ptr %add.ptr23, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27 = icmp eq i32 %call22, 0
  %or.cond65 = or i1 %cmp27, %cmp24.not
  br i1 %or.cond65, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then11.cleanup_crit_edge, %if.then3
  %retval.0 = phi ptr [ null, %if.then11.cleanup_crit_edge ], [ %spec.select, %if.then3 ], [ %addr.0, %if.end19.cleanup_crit_edge ], [ null, %for.body.cleanup_crit_edge ], [ %add.ptr23, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tpm2_bios_measurements_stop(ptr nocapture noundef %m, ptr nocapture noundef %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tpm2_bios_measurements_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %log1 = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6
  %bios_event_log_end = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %bios_event_log_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios_event_log_end, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %pos, align 8
  %6 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %log1, align 4
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %event_size2 = getelementptr inbounds %struct.tcg_pcr_event, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %event_size2 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %event_size2, align 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 32) #7
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %v, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then
  %event_size.0 = phi i32 [ %spec.select.i, %if.then ], [ %call3, %if.else.if.end6_crit_edge ]
  %marker.0 = phi ptr [ %7, %if.then ], [ %v, %if.else.if.end6_crit_edge ]
  %add.ptr = getelementptr i8, ptr %marker.0, i32 %event_size.0
  %cmp7.not = icmp ult ptr %add.ptr, %3
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %add.ptr, ptr noundef %7)
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %call10
  %cmp12.not = icmp uge ptr %add.ptr11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp13 = icmp eq i32 %call10, 0
  %or.cond = or i1 %cmp13, %cmp12.not
  %spec.select = select i1 %or.cond, ptr null, ptr %add.ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.else.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %spec.select, %if.end9 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm2_binary_bios_measurements_show(ptr noundef %m, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %log1 = getelementptr inbounds %struct.tpm_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %log1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %log1, align 4
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %event_size = getelementptr inbounds %struct.tcg_pcr_event, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %event_size to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %event_size, align 1
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 32) #7
  %call4 = tail call i32 @seq_write(ptr noundef %m, ptr noundef %3, i32 noundef %spec.select.i) #7
  br label %if.end10

if.else:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @calc_tpm2_event_size(ptr noundef %v, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.else.if.end10_crit_edge, label %if.then7

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 @seq_write(ptr noundef %m, ptr noundef %v, i32 noundef %call5) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else.if.end10_crit_edge, %if.then3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calc_tpm2_event_size(ptr noundef %event, ptr nocapture noundef readonly %event_header) unnamed_addr #0 align 64 {
entry:
  %zero_digest.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %zero_digest.i) #7
  %0 = call ptr @memset(ptr %zero_digest.i, i32 0, i32 20)
  %add.ptr2.i = getelementptr i8, ptr %event, i32 12
  %count6.i = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %event, i32 0, i32 2
  %1 = ptrtoint ptr %count6.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load volatile i32, ptr %count6.i, align 1
  %event_type11.i = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %event, i32 0, i32 1
  %3 = ptrtoint ptr %event_type11.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load volatile i32, ptr %event_type11.i, align 1
  %5 = ptrtoint ptr %event_header to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %event_header, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %entry.__calc_tpm2_event_size.exit_crit_edge

entry.__calc_tpm2_event_size.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

lor.lhs.false.i:                                  ; preds = %entry
  %event_type12.i = getelementptr inbounds %struct.tcg_pcr_event, ptr %event_header, i32 0, i32 1
  %7 = ptrtoint ptr %event_type12.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %event_type12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp13.not.i = icmp eq i32 %8, 3
  br i1 %cmp13.not.i, label %lor.lhs.false14.i, label %lor.lhs.false.i.__calc_tpm2_event_size.exit_crit_edge

lor.lhs.false.i.__calc_tpm2_event_size.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %digest.i = getelementptr inbounds %struct.tcg_pcr_event, ptr %event_header, i32 0, i32 2
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(20) %digest.i, ptr noundef nonnull dereferenceable(20) %zero_digest.i, i32 20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool16.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %lor.lhs.false14.i.__calc_tpm2_event_size.exit_crit_edge

lor.lhs.false14.i.__calc_tpm2_event_size.exit_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

if.end18.i:                                       ; preds = %lor.lhs.false14.i
  %event19.i = getelementptr inbounds %struct.tcg_pcr_event, ptr %event_header, i32 0, i32 4
  %bcmp1.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %event19.i, ptr noundef nonnull dereferenceable(16) @.str, i32 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp1.i)
  %tobool23.not.i = icmp eq i32 %bcmp1.i, 0
  br i1 %tobool23.not.i, label %lor.lhs.false24.i, label %if.end18.i.__calc_tpm2_event_size.exit_crit_edge

if.end18.i.__calc_tpm2_event_size.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

lor.lhs.false24.i:                                ; preds = %if.end18.i
  %num_algs.i = getelementptr inbounds %struct.tcg_pcr_event, ptr %event_header, i32 1, i32 2, i32 16
  %9 = ptrtoint ptr %num_algs.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %num_algs.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not.i = icmp ne i32 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %10)
  %cmp28.not.i = icmp eq i32 %2, %10
  %or.cond.i = select i1 %tobool25.not.i, i1 %cmp28.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.preheader.i, label %lor.lhs.false24.i.__calc_tpm2_event_size.exit_crit_edge

lor.lhs.false24.i.__calc_tpm2_event_size.exit_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

for.cond.preheader.i:                             ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp318.not.i = icmp eq i32 %2, 0
  br i1 %cmp318.not.i, label %for.cond.preheader.i.if.end73.i_crit_edge, label %if.end41.lr.ph.i

for.cond.preheader.i.if.end73.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.end41.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %digest_sizes.i = getelementptr inbounds %struct.tcg_pcr_event, ptr %event_header, i32 1, i32 3
  br label %if.end41.i

for.cond.i:                                       ; preds = %for.end.i
  %digest_size.i = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes.i, i32 0, i32 %j.07.i, i32 1
  %11 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %digest_size.i, align 1
  %conv53.i = zext i16 %12 to i32
  %add.ptr54.i = getelementptr i8, ptr %add.ptr42.i, i32 %conv53.i
  %inc62.i = add nuw i32 %i.010.i, 1
  %exitcond14.not.i = icmp eq i32 %inc62.i, %2
  br i1 %exitcond14.not.i, label %for.cond.i.if.end73.i_crit_edge, label %for.cond.i.if.end41.i_crit_edge

for.cond.i.if.end41.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.i

for.cond.i.if.end73.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.end41.i:                                       ; preds = %for.cond.i.if.end41.i_crit_edge, %if.end41.lr.ph.i
  %i.010.i = phi i32 [ 0, %if.end41.lr.ph.i ], [ %inc62.i, %for.cond.i.if.end41.i_crit_edge ]
  %marker.09.i = phi ptr [ %add.ptr2.i, %if.end41.lr.ph.i ], [ %add.ptr54.i, %for.cond.i.if.end41.i_crit_edge ]
  %13 = ptrtoint ptr %marker.09.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %marker.09.i, align 1
  %add.ptr42.i = getelementptr i8, ptr %marker.09.i, i32 2
  br label %for.body46.i

for.body46.i:                                     ; preds = %for.inc.i.for.body46.i_crit_edge, %if.end41.i
  %j.07.i = phi i32 [ 0, %if.end41.i ], [ %inc.i, %for.inc.i.for.body46.i_crit_edge ]
  %arrayidx.i = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %digest_sizes.i, i32 0, i32 %j.07.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp48.i = icmp eq i16 %14, %16
  br i1 %cmp48.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body46.i
  %inc.i = add nuw i32 %j.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.__calc_tpm2_event_size.exit_crit_edge, label %for.inc.i.for.body46.i_crit_edge

for.inc.i.for.body46.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body46.i

for.inc.i.__calc_tpm2_event_size.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

for.end.i:                                        ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %j.07.i, i32 %2)
  %cmp57.i = icmp eq i32 %j.07.i, %2
  br i1 %cmp57.i, label %for.end.i.__calc_tpm2_event_size.exit_crit_edge, label %for.cond.i

for.end.i.__calc_tpm2_event_size.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__calc_tpm2_event_size.exit

if.end73.i:                                       ; preds = %for.cond.i.if.end73.i_crit_edge, %for.cond.preheader.i.if.end73.i_crit_edge
  %marker.0.lcssa.i = phi ptr [ %add.ptr2.i, %for.cond.preheader.i.if.end73.i_crit_edge ], [ %add.ptr54.i, %for.cond.i.if.end73.i_crit_edge ]
  %add.ptr74.i = getelementptr i8, ptr %marker.0.lcssa.i, i32 4
  %17 = ptrtoint ptr %marker.0.lcssa.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %marker.0.lcssa.i, align 1
  %add.ptr75.i = getelementptr i8, ptr %add.ptr74.i, i32 %18
  %sub.ptr.lhs.cast76.i = ptrtoint ptr %add.ptr75.i to i32
  %sub.ptr.rhs.cast77.i = ptrtoint ptr %event to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast76.i, %sub.ptr.rhs.cast77.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp79.i = icmp eq i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp82.i = icmp eq i32 %18, 0
  %or.cond2.i = select i1 %cmp79.i, i1 %cmp82.i, i1 false
  %spec.select.i = select i1 %or.cond2.i, i32 0, i32 %sub.ptr.sub78.i
  br label %__calc_tpm2_event_size.exit

__calc_tpm2_event_size.exit:                      ; preds = %if.end73.i, %for.end.i.__calc_tpm2_event_size.exit_crit_edge, %for.inc.i.__calc_tpm2_event_size.exit_crit_edge, %lor.lhs.false24.i.__calc_tpm2_event_size.exit_crit_edge, %if.end18.i.__calc_tpm2_event_size.exit_crit_edge, %lor.lhs.false14.i.__calc_tpm2_event_size.exit_crit_edge, %lor.lhs.false.i.__calc_tpm2_event_size.exit_crit_edge, %entry.__calc_tpm2_event_size.exit_crit_edge
  %size.0.i = phi i32 [ 0, %lor.lhs.false14.i.__calc_tpm2_event_size.exit_crit_edge ], [ 0, %lor.lhs.false.i.__calc_tpm2_event_size.exit_crit_edge ], [ 0, %entry.__calc_tpm2_event_size.exit_crit_edge ], [ 0, %lor.lhs.false24.i.__calc_tpm2_event_size.exit_crit_edge ], [ 0, %if.end18.i.__calc_tpm2_event_size.exit_crit_edge ], [ %spec.select.i, %if.end73.i ], [ 0, %for.inc.i.__calc_tpm2_event_size.exit_crit_edge ], [ 0, %for.end.i.__calc_tpm2_event_size.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %zero_digest.i) #7
  ret i32 %size.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @tpm2_binary_b_measurements_seqops, !1, !"tpm2_binary_b_measurements_seqops", i1 false, i1 false}
!1 = !{!"../drivers/char/tpm/eventlog/tpm2.c", i32 154, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/tpm_eventlog.h", i32 221, i32 35}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
