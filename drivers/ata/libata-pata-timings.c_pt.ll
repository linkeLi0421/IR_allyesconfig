; ModuleID = '/llk/IR_all_yes/drivers/ata/libata-pata-timings.c_pt.bc'
source_filename = "../drivers/ata/libata-pata-timings.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ata_timing_merge\22, \22a\22\09"
module asm "\09.weak\09__crc_ata_timing_merge\09\09\09\09"
module asm "\09.long\09__crc_ata_timing_merge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_timing_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_timing_merge\22\09\09\09\09\09"
module asm "__kstrtabns_ata_timing_merge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ata_timing_find_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_ata_timing_find_mode\09\09\09\09"
module asm "\09.long\09__crc_ata_timing_find_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_timing_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_timing_find_mode\22\09\09\09\09\09"
module asm "__kstrtabns_ata_timing_find_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ata_timing_compute\22, \22a\22\09"
module asm "\09.weak\09__crc_ata_timing_compute\09\09\09\09"
module asm "\09.long\09__crc_ata_timing_compute\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ata_timing_compute:\09\09\09\09\09"
module asm "\09.asciz \09\22ata_timing_compute\22\09\09\09\09\09"
module asm "__kstrtabns_ata_timing_compute:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ata_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.78, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%union.anon.78 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }

@__kstrtab_ata_timing_merge = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_timing_merge = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_timing_merge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_timing_merge to i32), ptr @__kstrtab_ata_timing_merge, ptr @__kstrtabns_ata_timing_merge }, section "___ksymtab_gpl+ata_timing_merge", align 4
@ata_timing = internal constant { [23 x %struct.ata_timing], [116 x i8] } { [23 x %struct.ata_timing] [%struct.ata_timing { i16 8, i16 70, i16 290, i16 240, i16 600, i16 165, i16 150, i16 0, i16 600, i16 0 }, %struct.ata_timing { i16 9, i16 50, i16 290, i16 93, i16 383, i16 125, i16 100, i16 0, i16 383, i16 0 }, %struct.ata_timing { i16 10, i16 30, i16 290, i16 40, i16 330, i16 100, i16 90, i16 0, i16 240, i16 0 }, %struct.ata_timing { i16 11, i16 30, i16 80, i16 70, i16 180, i16 80, i16 70, i16 0, i16 180, i16 0 }, %struct.ata_timing { i16 12, i16 25, i16 70, i16 25, i16 120, i16 70, i16 25, i16 0, i16 120, i16 0 }, %struct.ata_timing { i16 13, i16 15, i16 65, i16 25, i16 100, i16 65, i16 25, i16 0, i16 100, i16 0 }, %struct.ata_timing { i16 14, i16 10, i16 55, i16 20, i16 80, i16 55, i16 20, i16 0, i16 80, i16 0 }, %struct.ata_timing { i16 16, i16 120, i16 0, i16 0, i16 0, i16 480, i16 480, i16 50, i16 960, i16 0 }, %struct.ata_timing { i16 17, i16 90, i16 0, i16 0, i16 0, i16 240, i16 240, i16 30, i16 480, i16 0 }, %struct.ata_timing { i16 18, i16 60, i16 0, i16 0, i16 0, i16 120, i16 120, i16 20, i16 240, i16 0 }, %struct.ata_timing { i16 32, i16 60, i16 0, i16 0, i16 0, i16 215, i16 215, i16 20, i16 480, i16 0 }, %struct.ata_timing { i16 33, i16 45, i16 0, i16 0, i16 0, i16 80, i16 50, i16 5, i16 150, i16 0 }, %struct.ata_timing { i16 34, i16 25, i16 0, i16 0, i16 0, i16 70, i16 25, i16 5, i16 120, i16 0 }, %struct.ata_timing { i16 35, i16 25, i16 0, i16 0, i16 0, i16 65, i16 25, i16 5, i16 100, i16 0 }, %struct.ata_timing { i16 36, i16 25, i16 0, i16 0, i16 0, i16 55, i16 20, i16 5, i16 80, i16 0 }, %struct.ata_timing { i16 64, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 120 }, %struct.ata_timing { i16 65, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 80 }, %struct.ata_timing { i16 66, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 60 }, %struct.ata_timing { i16 67, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 45 }, %struct.ata_timing { i16 68, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 30 }, %struct.ata_timing { i16 69, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 20 }, %struct.ata_timing { i16 70, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 15 }, %struct.ata_timing { i16 255, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0 }], [116 x i8] zeroinitializer }, align 32
@ata_timing_find_mode.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/ata/libata-pata-timings.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: unable to find timing for xfer_mode 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.ata_timing_find_mode = private unnamed_addr constant [21 x i8] c"ata_timing_find_mode\00", align 1
@__kstrtab_ata_timing_find_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_timing_find_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_timing_find_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_timing_find_mode to i32), ptr @__kstrtab_ata_timing_find_mode, ptr @__kstrtabns_ata_timing_find_mode }, section "___ksymtab_gpl+ata_timing_find_mode", align 4
@__kstrtab_ata_timing_compute = external dso_local constant [0 x i8], align 1
@__kstrtabns_ata_timing_compute = external dso_local constant [0 x i8], align 1
@__ksymtab_ata_timing_compute = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ata_timing_compute to i32), ptr @__kstrtab_ata_timing_compute, ptr @__kstrtabns_ata_timing_compute }, section "___ksymtab_gpl+ata_timing_compute", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33866, i64 33930]
@___asan_gen_.2 = private unnamed_addr constant [11 x i8] c"ata_timing\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 25, i32 32 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [37 x i8] c"../drivers/ata/libata-pata-timings.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 108, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ata_timing_compute, ptr @__ksymtab_ata_timing_find_mode, ptr @__ksymtab_ata_timing_merge, ptr @ata_timing, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ata_timing to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ata_timing_merge(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %m, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %what, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %setup = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %setup to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %setup, align 2
  %setup1 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %setup1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %setup1, align 2
  %4 = tail call i16 @llvm.umax.i16(i16 %1, i16 %3)
  %setup7 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %setup7 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %setup7, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %what, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end25_crit_edge, label %if.then10

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %act8b = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 2
  %6 = ptrtoint ptr %act8b to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %act8b, align 2
  %act8b11 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 2
  %8 = ptrtoint ptr %act8b11 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %act8b11, align 2
  %10 = tail call i16 @llvm.umax.i16(i16 %7, i16 %9)
  %act8b24 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 2
  %11 = ptrtoint ptr %act8b24 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %act8b24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then10, %if.end.if.end25_crit_edge
  %and26 = and i32 %what, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end43_crit_edge, label %if.then28

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %rec8b = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 3
  %12 = ptrtoint ptr %rec8b to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rec8b, align 2
  %rec8b29 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 3
  %14 = ptrtoint ptr %rec8b29 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %rec8b29, align 2
  %16 = tail call i16 @llvm.umax.i16(i16 %13, i16 %15)
  %rec8b42 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 3
  %17 = ptrtoint ptr %rec8b42 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %rec8b42, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.then28, %if.end25.if.end43_crit_edge
  %and44 = and i32 %what, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end61_crit_edge, label %if.then46

if.end43.if.end61_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %cyc8b = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 4
  %18 = ptrtoint ptr %cyc8b to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cyc8b, align 2
  %cyc8b47 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 4
  %20 = ptrtoint ptr %cyc8b47 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cyc8b47, align 2
  %22 = tail call i16 @llvm.umax.i16(i16 %19, i16 %21)
  %cyc8b60 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 4
  %23 = ptrtoint ptr %cyc8b60 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %cyc8b60, align 2
  br label %if.end61

if.end61:                                         ; preds = %if.then46, %if.end43.if.end61_crit_edge
  %and62 = and i32 %what, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end79_crit_edge, label %if.then64

if.end61.if.end79_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  %active = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 5
  %24 = ptrtoint ptr %active to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %active, align 2
  %active65 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 5
  %26 = ptrtoint ptr %active65 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %active65, align 2
  %28 = tail call i16 @llvm.umax.i16(i16 %25, i16 %27)
  %active78 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 5
  %29 = ptrtoint ptr %active78 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %active78, align 2
  br label %if.end79

if.end79:                                         ; preds = %if.then64, %if.end61.if.end79_crit_edge
  %and80 = and i32 %what, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end79.if.end97_crit_edge, label %if.then82

if.end79.if.end97_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %recover = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 6
  %30 = ptrtoint ptr %recover to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %recover, align 2
  %recover83 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 6
  %32 = ptrtoint ptr %recover83 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %recover83, align 2
  %34 = tail call i16 @llvm.umax.i16(i16 %31, i16 %33)
  %recover96 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 6
  %35 = ptrtoint ptr %recover96 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %recover96, align 2
  br label %if.end97

if.end97:                                         ; preds = %if.then82, %if.end79.if.end97_crit_edge
  %and98 = and i32 %what, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end115_crit_edge, label %if.then100

if.end97.if.end115_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end115

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  %dmack_hold = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 7
  %36 = ptrtoint ptr %dmack_hold to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %dmack_hold, align 2
  %dmack_hold101 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 7
  %38 = ptrtoint ptr %dmack_hold101 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %dmack_hold101, align 2
  %40 = tail call i16 @llvm.umax.i16(i16 %37, i16 %39)
  %dmack_hold114 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 7
  %41 = ptrtoint ptr %dmack_hold114 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %dmack_hold114, align 2
  br label %if.end115

if.end115:                                        ; preds = %if.then100, %if.end97.if.end115_crit_edge
  %and116 = and i32 %what, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end133_crit_edge, label %if.then118

if.end115.if.end133_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %cycle = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 8
  %42 = ptrtoint ptr %cycle to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %cycle, align 2
  %cycle119 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 8
  %44 = ptrtoint ptr %cycle119 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %cycle119, align 2
  %46 = tail call i16 @llvm.umax.i16(i16 %43, i16 %45)
  %cycle132 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 8
  %47 = ptrtoint ptr %cycle132 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %cycle132, align 2
  br label %if.end133

if.end133:                                        ; preds = %if.then118, %if.end115.if.end133_crit_edge
  %and134 = and i32 %what, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end133.if.end151_crit_edge, label %if.then136

if.end133.if.end151_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end151

if.then136:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %udma = getelementptr inbounds %struct.ata_timing, ptr %a, i32 0, i32 9
  %48 = ptrtoint ptr %udma to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %udma, align 2
  %udma137 = getelementptr inbounds %struct.ata_timing, ptr %b, i32 0, i32 9
  %50 = ptrtoint ptr %udma137 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %udma137, align 2
  %52 = tail call i16 @llvm.umax.i16(i16 %49, i16 %51)
  %udma150 = getelementptr inbounds %struct.ata_timing, ptr %m, i32 0, i32 9
  %53 = ptrtoint ptr %udma150 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %udma150, align 2
  br label %if.end151

if.end151:                                        ; preds = %if.then136, %if.end133.if.end151_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ata_timing_find_mode(i8 noundef zeroext %xfer_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %xfer_mode to i16
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %t.0 = phi ptr [ @ata_timing, %entry ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %1 = ptrtoint ptr %t.0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %t.0, align 2
  %cmp = icmp ult i16 %2, %0
  %incdec.ptr = getelementptr %struct.ata_timing, ptr %t.0, i32 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %conv = zext i8 %xfer_mode to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %0)
  %cmp6 = icmp eq i16 %2, %0
  br i1 %cmp6, label %while.end.cleanup_crit_edge, label %land.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.end:                                         ; preds = %while.end
  %.b51 = load i1, ptr @ata_timing_find_mode.__already_done, align 1
  br i1 %.b51, label %land.end.cleanup_crit_edge, label %if.then13, !prof !22

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ata_timing_find_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ata_timing_find_mode, i32 noundef %conv) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.end.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %t.0, %while.end.cleanup_crit_edge ], [ null, %if.then13 ], [ null, %land.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ata_timing_compute(ptr nocapture noundef readonly %adev, i16 noundef zeroext %speed, ptr noundef %t, i32 noundef %T, i32 noundef %UT) #2 align 64 {
entry:
  %p = alloca %struct.ata_timing, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %p) #5
  %0 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 3
  %3 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 4
  %4 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 5
  %5 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 6
  %6 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 7
  %7 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 8
  %8 = getelementptr inbounds %struct.ata_timing, ptr %p, i32 0, i32 9
  %9 = and i16 %speed, 255
  %10 = call ptr @memset(ptr %p, i32 255, i32 20)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %t.0.i = phi ptr [ @ata_timing, %entry ], [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ]
  %11 = ptrtoint ptr %t.0.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %t.0.i, align 2
  %cmp.i = icmp ult i16 %12, %9
  %incdec.ptr.i = getelementptr %struct.ata_timing, ptr %t.0.i, i32 1
  br i1 %cmp.i, label %while.cond.i.while.cond.i_crit_edge, label %while.end.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %13 = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 25
  %conv.i = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %9)
  %cmp6.i = icmp eq i16 %12, %9
  br i1 %cmp6.i, label %ata_timing_find_mode.exit, label %land.end.i

land.end.i:                                       ; preds = %while.end.i
  %.b51.i = load i1, ptr @ata_timing_find_mode.__already_done, align 1
  br i1 %.b51.i, label %land.end.i.cleanup_crit_edge, label %if.then13.i, !prof !22

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ata_timing_find_mode.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ata_timing_find_mode, i32 noundef %conv.i) #5
  br label %cleanup

ata_timing_find_mode.exit:                        ; preds = %while.end.i
  %tobool.not = icmp eq ptr %t.0.i, null
  br i1 %tobool.not, label %ata_timing_find_mode.exit.cleanup_crit_edge, label %if.end

ata_timing_find_mode.exit.cleanup_crit_edge:      ; preds = %ata_timing_find_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ata_timing_find_mode.exit
  %14 = call ptr @memcpy(ptr %t, ptr %t.0.i, i32 20)
  %arrayidx = getelementptr i16, ptr %13, i32 53
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %17 = and i16 %16, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool2.not = icmp eq i16 %17, 0
  br i1 %tobool2.not, label %if.end.if.end42_crit_edge, label %if.then3

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then3:                                         ; preds = %if.end
  %18 = call ptr @memset(ptr %p, i32 0, i32 20)
  %19 = and i16 %speed, -8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %20 = icmp eq i16 %19, 8
  br i1 %20, label %if.then9, label %if.else29

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %speed)
  %cmp11 = icmp ult i16 %speed, 11
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14 = getelementptr i16, ptr %13, i32 67
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx14, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 2
  br label %if.end41.sink.split

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %speed)
  %cmp16 = icmp ult i16 %speed, 13
  br i1 %cmp16, label %if.else.if.then23_crit_edge, label %lor.lhs.false

if.else.if.then23_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %speed)
  %cmp19 = icmp eq i16 %speed, 13
  br i1 %cmp19, label %land.lhs.true21, label %lor.lhs.false.if.end41_crit_edge

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true21:                                  ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %13, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i16 %25, label %ata_id_is_cfa.exit [
    i16 -31606, label %land.lhs.true21.if.end41_crit_edge
    i16 -31670, label %land.lhs.true21.if.end41_crit_edge197
  ]

land.lhs.true21.if.end41_crit_edge197:            ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

land.lhs.true21.if.end41_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

ata_id_is_cfa.exit:                               ; preds = %land.lhs.true21
  %arrayidx6.i = getelementptr i16, ptr %13, i32 83
  %27 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx6.i, align 2
  %29 = and i16 %28, -16380
  call void @__sanitizer_cov_trace_const_cmp2(i16 16388, i16 %29)
  %cmp8.i = icmp eq i16 %29, 16388
  br i1 %cmp8.i, label %ata_id_is_cfa.exit.if.end41_crit_edge, label %ata_id_is_cfa.exit.if.then23_crit_edge

ata_id_is_cfa.exit.if.then23_crit_edge:           ; preds = %ata_id_is_cfa.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

ata_id_is_cfa.exit.if.end41_crit_edge:            ; preds = %ata_id_is_cfa.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then23:                                        ; preds = %ata_id_is_cfa.exit.if.then23_crit_edge, %if.else.if.then23_crit_edge
  %arrayidx24 = getelementptr %struct.ata_device, ptr %adev, i32 0, i32 25, i32 0, i32 34
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx24, align 2
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %3, align 2
  br label %if.end41.sink.split

if.else29:                                        ; preds = %if.then3
  %33 = add i16 %speed, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %33)
  %34 = icmp ult i16 %33, 3
  br i1 %34, label %if.then37, label %if.else29.if.end41_crit_edge

if.else29.if.end41_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then37:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx38 = getelementptr i16, ptr %13, i32 65
  %35 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx38, align 2
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.then37, %if.then23, %if.then13
  %.sink = phi i16 [ %36, %if.then37 ], [ %22, %if.then13 ], [ %31, %if.then23 ]
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %.sink, ptr %7, align 2
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else29.if.end41_crit_edge, %ata_id_is_cfa.exit.if.end41_crit_edge, %land.lhs.true21.if.end41_crit_edge, %land.lhs.true21.if.end41_crit_edge197, %lor.lhs.false.if.end41_crit_edge
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %3, align 2
  %cyc8b47.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 4
  %40 = ptrtoint ptr %cyc8b47.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %cyc8b47.i, align 2
  %42 = tail call i16 @llvm.umax.i16(i16 %39, i16 %41) #5
  %43 = ptrtoint ptr %cyc8b47.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %cyc8b47.i, align 2
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %7, align 2
  %cycle119.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 8
  %46 = ptrtoint ptr %cycle119.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %cycle119.i, align 2
  %48 = tail call i16 @llvm.umax.i16(i16 %45, i16 %47) #5
  %49 = ptrtoint ptr %cycle119.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %cycle119.i, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end.if.end42_crit_edge
  %setup.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 1
  %50 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %setup.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i, label %if.end42.cond.end.i_crit_edge, label %cond.true.i

if.end42.cond.end.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i177 = zext i16 %51 to i32
  %mul.i = mul nuw nsw i32 %conv.i177, 1000
  %sub.i = add nsw i32 %mul.i, -1
  %div.i = sdiv i32 %sub.i, %T
  %52 = trunc i32 %div.i to i16
  %phi.cast.i = add i16 %52, 1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end42.cond.end.i_crit_edge
  %cond.i = phi i16 [ %phi.cast.i, %cond.true.i ], [ 0, %if.end42.cond.end.i_crit_edge ]
  %53 = ptrtoint ptr %setup.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %cond.i, ptr %setup.i, align 2
  %act8b.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 2
  %54 = ptrtoint ptr %act8b.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %act8b.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool6.not.i = icmp eq i16 %55, 0
  br i1 %tobool6.not.i, label %cond.end.i.cond.end15.i_crit_edge, label %cond.true7.i

cond.end.i.cond.end15.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end15.i

cond.true7.i:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv5.i = zext i16 %55 to i32
  %mul10.i = mul nuw nsw i32 %conv5.i, 1000
  %sub11.i = add nsw i32 %mul10.i, -1
  %div12.i = sdiv i32 %sub11.i, %T
  %56 = trunc i32 %div12.i to i16
  %phi.cast149.i = add i16 %56, 1
  br label %cond.end15.i

cond.end15.i:                                     ; preds = %cond.true7.i, %cond.end.i.cond.end15.i_crit_edge
  %cond16.i = phi i16 [ %phi.cast149.i, %cond.true7.i ], [ 0, %cond.end.i.cond.end15.i_crit_edge ]
  %57 = ptrtoint ptr %act8b.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %cond16.i, ptr %act8b.i, align 2
  %rec8b.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 3
  %58 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %rec8b.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool20.not.i = icmp eq i16 %59, 0
  br i1 %tobool20.not.i, label %cond.end15.i.cond.end29.i_crit_edge, label %cond.true21.i

cond.end15.i.cond.end29.i_crit_edge:              ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end29.i

cond.true21.i:                                    ; preds = %cond.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv19.i = zext i16 %59 to i32
  %mul24.i = mul nuw nsw i32 %conv19.i, 1000
  %sub25.i = add nsw i32 %mul24.i, -1
  %div26.i = sdiv i32 %sub25.i, %T
  %60 = trunc i32 %div26.i to i16
  %phi.cast150.i = add i16 %60, 1
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true21.i, %cond.end15.i.cond.end29.i_crit_edge
  %cond30.i = phi i16 [ %phi.cast150.i, %cond.true21.i ], [ 0, %cond.end15.i.cond.end29.i_crit_edge ]
  %61 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %cond30.i, ptr %rec8b.i, align 2
  %cyc8b.i178 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 4
  %62 = ptrtoint ptr %cyc8b.i178 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %cyc8b.i178, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool34.not.i = icmp eq i16 %63, 0
  br i1 %tobool34.not.i, label %cond.end29.i.cond.end43.i_crit_edge, label %cond.true35.i

cond.end29.i.cond.end43.i_crit_edge:              ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end43.i

cond.true35.i:                                    ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv33.i = zext i16 %63 to i32
  %mul38.i = mul nuw nsw i32 %conv33.i, 1000
  %sub39.i = add nsw i32 %mul38.i, -1
  %div40.i = sdiv i32 %sub39.i, %T
  %64 = trunc i32 %div40.i to i16
  %phi.cast151.i = add i16 %64, 1
  br label %cond.end43.i

cond.end43.i:                                     ; preds = %cond.true35.i, %cond.end29.i.cond.end43.i_crit_edge
  %cond44.i = phi i16 [ %phi.cast151.i, %cond.true35.i ], [ 0, %cond.end29.i.cond.end43.i_crit_edge ]
  %65 = ptrtoint ptr %cyc8b.i178 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %cond44.i, ptr %cyc8b.i178, align 2
  %active.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 5
  %66 = ptrtoint ptr %active.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %active.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool48.not.i = icmp eq i16 %67, 0
  br i1 %tobool48.not.i, label %cond.end43.i.cond.end57.i_crit_edge, label %cond.true49.i

cond.end43.i.cond.end57.i_crit_edge:              ; preds = %cond.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end57.i

cond.true49.i:                                    ; preds = %cond.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv47.i = zext i16 %67 to i32
  %mul52.i = mul nuw nsw i32 %conv47.i, 1000
  %sub53.i = add nsw i32 %mul52.i, -1
  %div54.i = sdiv i32 %sub53.i, %T
  %68 = trunc i32 %div54.i to i16
  %phi.cast152.i = add i16 %68, 1
  br label %cond.end57.i

cond.end57.i:                                     ; preds = %cond.true49.i, %cond.end43.i.cond.end57.i_crit_edge
  %cond58.i = phi i16 [ %phi.cast152.i, %cond.true49.i ], [ 0, %cond.end43.i.cond.end57.i_crit_edge ]
  %69 = ptrtoint ptr %active.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %cond58.i, ptr %active.i, align 2
  %recover.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 6
  %70 = ptrtoint ptr %recover.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %recover.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool62.not.i = icmp eq i16 %71, 0
  br i1 %tobool62.not.i, label %cond.end57.i.cond.end71.i_crit_edge, label %cond.true63.i

cond.end57.i.cond.end71.i_crit_edge:              ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end71.i

cond.true63.i:                                    ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv61.i = zext i16 %71 to i32
  %mul66.i = mul nuw nsw i32 %conv61.i, 1000
  %sub67.i = add nsw i32 %mul66.i, -1
  %div68.i = sdiv i32 %sub67.i, %T
  %72 = trunc i32 %div68.i to i16
  %phi.cast153.i = add i16 %72, 1
  br label %cond.end71.i

cond.end71.i:                                     ; preds = %cond.true63.i, %cond.end57.i.cond.end71.i_crit_edge
  %cond72.i = phi i16 [ %phi.cast153.i, %cond.true63.i ], [ 0, %cond.end57.i.cond.end71.i_crit_edge ]
  %73 = ptrtoint ptr %recover.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %cond72.i, ptr %recover.i, align 2
  %dmack_hold.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 7
  %74 = ptrtoint ptr %dmack_hold.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %dmack_hold.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool76.not.i = icmp eq i16 %75, 0
  br i1 %tobool76.not.i, label %cond.end71.i.cond.end85.i_crit_edge, label %cond.true77.i

cond.end71.i.cond.end85.i_crit_edge:              ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end85.i

cond.true77.i:                                    ; preds = %cond.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv75.i = zext i16 %75 to i32
  %mul80.i = mul nuw nsw i32 %conv75.i, 1000
  %sub81.i = add nsw i32 %mul80.i, -1
  %div82.i = sdiv i32 %sub81.i, %T
  %76 = trunc i32 %div82.i to i16
  %phi.cast154.i = add i16 %76, 1
  br label %cond.end85.i

cond.end85.i:                                     ; preds = %cond.true77.i, %cond.end71.i.cond.end85.i_crit_edge
  %cond86.i = phi i16 [ %phi.cast154.i, %cond.true77.i ], [ 0, %cond.end71.i.cond.end85.i_crit_edge ]
  %77 = ptrtoint ptr %dmack_hold.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %cond86.i, ptr %dmack_hold.i, align 2
  %cycle.i179 = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 8
  %78 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cycle.i179, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %79)
  %tobool90.not.i = icmp eq i16 %79, 0
  br i1 %tobool90.not.i, label %cond.end85.i.cond.end99.i_crit_edge, label %cond.true91.i

cond.end85.i.cond.end99.i_crit_edge:              ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end99.i

cond.true91.i:                                    ; preds = %cond.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv89.i = zext i16 %79 to i32
  %mul94.i = mul nuw nsw i32 %conv89.i, 1000
  %sub95.i = add nsw i32 %mul94.i, -1
  %div96.i = sdiv i32 %sub95.i, %T
  %80 = trunc i32 %div96.i to i16
  %phi.cast155.i = add i16 %80, 1
  br label %cond.end99.i

cond.end99.i:                                     ; preds = %cond.true91.i, %cond.end85.i.cond.end99.i_crit_edge
  %cond100.i = phi i16 [ %phi.cast155.i, %cond.true91.i ], [ 0, %cond.end85.i.cond.end99.i_crit_edge ]
  %81 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %cond100.i, ptr %cycle.i179, align 2
  %udma.i = getelementptr inbounds %struct.ata_timing, ptr %t, i32 0, i32 9
  %82 = ptrtoint ptr %udma.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %udma.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool104.not.i = icmp eq i16 %83, 0
  br i1 %tobool104.not.i, label %cond.end99.i.ata_timing_quantize.exit_crit_edge, label %cond.true105.i

cond.end99.i.ata_timing_quantize.exit_crit_edge:  ; preds = %cond.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ata_timing_quantize.exit

cond.true105.i:                                   ; preds = %cond.end99.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv103.i = zext i16 %83 to i32
  %mul108.i = mul nuw nsw i32 %conv103.i, 1000
  %sub109.i = add nsw i32 %mul108.i, -1
  %div110.i = sdiv i32 %sub109.i, %UT
  %84 = trunc i32 %div110.i to i16
  %phi.cast156.i = add i16 %84, 1
  br label %ata_timing_quantize.exit

ata_timing_quantize.exit:                         ; preds = %cond.true105.i, %cond.end99.i.ata_timing_quantize.exit_crit_edge
  %cond114.i = phi i16 [ %phi.cast156.i, %cond.true105.i ], [ 0, %cond.end99.i.ata_timing_quantize.exit_crit_edge ]
  %85 = ptrtoint ptr %udma.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %cond114.i, ptr %udma.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %speed)
  %cmp44 = icmp ugt i16 %speed, 14
  br i1 %cmp44, label %if.then46, label %ata_timing_quantize.exit.if.end49_crit_edge

ata_timing_quantize.exit.if.end49_crit_edge:      ; preds = %ata_timing_quantize.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then46:                                        ; preds = %ata_timing_quantize.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pio_mode = getelementptr inbounds %struct.ata_device, ptr %adev, i32 0, i32 11
  %86 = ptrtoint ptr %pio_mode to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %pio_mode, align 16
  %conv47 = zext i8 %87 to i16
  %call48 = call i32 @ata_timing_compute(ptr noundef %adev, i16 noundef zeroext %conv47, ptr noundef nonnull %p, i32 noundef %T, i32 noundef %UT)
  %88 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %0, align 2
  %90 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %setup.i, align 2
  %92 = call i16 @llvm.umax.i16(i16 %89, i16 %91) #5
  %93 = ptrtoint ptr %setup.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %setup.i, align 2
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %1, align 2
  %96 = ptrtoint ptr %act8b.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %act8b.i, align 2
  %98 = call i16 @llvm.umax.i16(i16 %95, i16 %97) #5
  %99 = ptrtoint ptr %act8b.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %act8b.i, align 2
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %2, align 2
  %102 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %rec8b.i, align 2
  %104 = call i16 @llvm.umax.i16(i16 %101, i16 %103) #5
  %105 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %104, ptr %rec8b.i, align 2
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %3, align 2
  %108 = ptrtoint ptr %cyc8b.i178 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %cyc8b.i178, align 2
  %110 = call i16 @llvm.umax.i16(i16 %107, i16 %109) #5
  %111 = ptrtoint ptr %cyc8b.i178 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %110, ptr %cyc8b.i178, align 2
  %112 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %4, align 2
  %114 = ptrtoint ptr %active.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %active.i, align 2
  %116 = call i16 @llvm.umax.i16(i16 %113, i16 %115) #5
  %117 = ptrtoint ptr %active.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %active.i, align 2
  %118 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %5, align 2
  %120 = ptrtoint ptr %recover.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %recover.i, align 2
  %122 = call i16 @llvm.umax.i16(i16 %119, i16 %121) #5
  %123 = ptrtoint ptr %recover.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %122, ptr %recover.i, align 2
  %124 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %6, align 2
  %126 = ptrtoint ptr %dmack_hold.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %dmack_hold.i, align 2
  %128 = call i16 @llvm.umax.i16(i16 %125, i16 %127) #5
  %129 = ptrtoint ptr %dmack_hold.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %dmack_hold.i, align 2
  %130 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %7, align 2
  %132 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %cycle.i179, align 2
  %134 = call i16 @llvm.umax.i16(i16 %131, i16 %133) #5
  %135 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %134, ptr %cycle.i179, align 2
  %136 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %8, align 2
  %138 = ptrtoint ptr %udma.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %udma.i, align 2
  %140 = call i16 @llvm.umax.i16(i16 %137, i16 %139) #5
  %141 = ptrtoint ptr %udma.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %udma.i, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %ata_timing_quantize.exit.if.end49_crit_edge
  %142 = ptrtoint ptr %act8b.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %act8b.i, align 2
  %conv50 = zext i16 %143 to i32
  %144 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %rec8b.i, align 2
  %conv51 = zext i16 %145 to i32
  %add = add nuw nsw i32 %conv51, %conv50
  %146 = ptrtoint ptr %cyc8b.i178 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %cyc8b.i178, align 2
  %conv53 = zext i16 %147 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv53)
  %cmp54 = icmp ult i32 %add, %conv53
  br i1 %cmp54, label %if.then56, label %if.end49.if.end75_crit_edge

if.end49.if.end75_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub nsw i32 %conv53, %add
  %div = sdiv i32 %sub, 2
  %148 = trunc i32 %div to i16
  %conv67 = add i16 %143, %148
  %149 = ptrtoint ptr %act8b.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %conv67, ptr %act8b.i, align 2
  %sub72 = sub i16 %147, %conv67
  %150 = ptrtoint ptr %rec8b.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %sub72, ptr %rec8b.i, align 2
  br label %if.end75

if.end75:                                         ; preds = %if.then56, %if.end49.if.end75_crit_edge
  %151 = ptrtoint ptr %active.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %active.i, align 2
  %conv76 = zext i16 %152 to i32
  %153 = ptrtoint ptr %recover.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %recover.i, align 2
  %conv77 = zext i16 %154 to i32
  %add78 = add nuw nsw i32 %conv77, %conv76
  %155 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %cycle.i179, align 2
  %conv80 = zext i16 %156 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %conv80)
  %cmp81 = icmp ult i32 %add78, %conv80
  br i1 %cmp81, label %if.then83, label %if.end75.if.end104_crit_edge

if.end75.if.end104_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end104

if.then83:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %sub91 = sub nsw i32 %conv80, %add78
  %div92 = sdiv i32 %sub91, 2
  %157 = trunc i32 %div92 to i16
  %conv96 = add i16 %152, %157
  %158 = ptrtoint ptr %active.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %conv96, ptr %active.i, align 2
  %sub101 = sub i16 %156, %conv96
  %159 = ptrtoint ptr %recover.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %sub101, ptr %recover.i, align 2
  br label %if.end104

if.end104:                                        ; preds = %if.then83, %if.end75.if.end104_crit_edge
  %160 = ptrtoint ptr %active.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %active.i, align 2
  %conv106 = zext i16 %161 to i32
  %162 = ptrtoint ptr %recover.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %recover.i, align 2
  %conv108 = zext i16 %163 to i32
  %add109 = add nuw nsw i32 %conv108, %conv106
  call void @__sanitizer_cov_trace_cmp4(i32 %add109, i32 %conv80)
  %cmp112 = icmp ugt i32 %add109, %conv80
  br i1 %cmp112, label %if.then114, label %if.end104.cleanup_crit_edge

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then114:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %conv120 = trunc i32 %add109 to i16
  %164 = ptrtoint ptr %cycle.i179 to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %conv120, ptr %cycle.i179, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end104.cleanup_crit_edge, %ata_timing_find_mode.exit.cleanup_crit_edge, %if.then13.i, %land.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %ata_timing_find_mode.exit.cleanup_crit_edge ], [ 0, %if.then114 ], [ 0, %if.end104.cleanup_crit_edge ], [ -22, %if.then13.i ], [ -22, %land.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %p) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__ksymtab_ata_timing_merge, !1, !"__ksymtab_ata_timing_merge", i1 false, i1 false}
!1 = !{!"../drivers/ata/libata-pata-timings.c", i32 96, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../drivers/ata/libata-pata-timings.c", i32 108, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__func__.ata_timing_find_mode, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_ata_timing_find_mode, !8, !"__ksymtab_ata_timing_find_mode", i1 false, i1 false}
!8 = !{!"../drivers/ata/libata-pata-timings.c", i32 113, i32 1}
!9 = !{ptr @__ksymtab_ata_timing_compute, !10, !"__ksymtab_ata_timing_compute", i1 false, i1 false}
!10 = !{!"../drivers/ata/libata-pata-timings.c", i32 192, i32 1}
!11 = !{ptr @ata_timing, !12, !"ata_timing", i1 false, i1 false}
!12 = !{!"../drivers/ata/libata-pata-timings.c", i32 25, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
