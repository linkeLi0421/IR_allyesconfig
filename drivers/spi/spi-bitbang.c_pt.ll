; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bitbang.c_pt.bc'
source_filename = "../drivers/spi/spi-bitbang.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_setup_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_setup_transfer\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_setup_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_setup_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_setup_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_setup_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_setup\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_setup\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_cleanup\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_init\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_init\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_init:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_init\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_start\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_start\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_start:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_start\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spi_bitbang_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_spi_bitbang_stop\09\09\09\09"
module asm "\09.long\09__crc_spi_bitbang_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spi_bitbang_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22spi_bitbang_stop\22\09\09\09\09\09"
module asm "__kstrtabns_spi_bitbang_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_bitbang_cs = type { i32, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }

@__kstrtab_spi_bitbang_setup_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_setup_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_setup_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_setup_transfer to i32), ptr @__kstrtab_spi_bitbang_setup_transfer, ptr @__kstrtabns_spi_bitbang_setup_transfer }, section "___ksymtab_gpl+spi_bitbang_setup_transfer", align 4
@spi_bitbang_setup.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 53, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_bitbang\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi_bitbang_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-bitbang.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s, %u nsec/bit\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_spi_bitbang_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_setup to i32), ptr @__kstrtab_spi_bitbang_setup, ptr @__kstrtabns_spi_bitbang_setup }, section "___ksymtab_gpl+spi_bitbang_setup", align 4
@__kstrtab_spi_bitbang_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_cleanup to i32), ptr @__kstrtab_spi_bitbang_cleanup, ptr @__kstrtabns_spi_bitbang_cleanup }, section "___ksymtab_gpl+spi_bitbang_cleanup", align 4
@spi_bitbang_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&bitbang->lock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_spi_bitbang_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_init = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_init to i32), ptr @__kstrtab_spi_bitbang_init, ptr @__kstrtabns_spi_bitbang_init }, section "___ksymtab_gpl+spi_bitbang_init", align 4
@__kstrtab_spi_bitbang_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_start = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_start to i32), ptr @__kstrtab_spi_bitbang_start, ptr @__kstrtabns_spi_bitbang_start }, section "___ksymtab_gpl+spi_bitbang_start", align 4
@__kstrtab_spi_bitbang_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_spi_bitbang_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_spi_bitbang_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spi_bitbang_stop to i32), ptr @__kstrtab_spi_bitbang_stop, ptr @__kstrtabns_spi_bitbang_stop }, section "___ksymtab_gpl+spi_bitbang_stop", align 4
@__UNIQUE_ID_file235 = internal constant [41 x i8] c"spi_bitbang.file=drivers/spi/spi-bitbang\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"spi_bitbang.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 213, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [29 x i8] c"../drivers/spi/spi-bitbang.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 361, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__ksymtab_spi_bitbang_cleanup, ptr @__ksymtab_spi_bitbang_init, ptr @__ksymtab_spi_bitbang_setup, ptr @__ksymtab_spi_bitbang_setup_transfer, ptr @__ksymtab_spi_bitbang_start, ptr @__ksymtab_spi_bitbang_stop, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @spi_bitbang_init.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_bitbang_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spi_bitbang_setup_transfer(ptr nocapture noundef readonly %spi, ptr noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end:                                           ; preds = %entry
  %bits_per_word1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %2 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bits_per_word1, align 1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %hz.054 = phi i32 [ %5, %if.end.if.then3_crit_edge ], [ 0, %entry.if.then3_crit_edge ]
  %bits_per_word4 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word4, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %hz.053 = phi i32 [ %5, %if.end.if.end5_crit_edge ], [ %hz.054, %if.then3 ]
  %bits_per_word.1 = phi i8 [ %3, %if.end.if.end5_crit_edge ], [ %7, %if.then3 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %bits_per_word.1)
  %cmp = icmp ult i8 %bits_per_word.1, 9
  br i1 %cmp, label %if.end5.if.end23_crit_edge, label %if.else8

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %bits_per_word.1)
  %cmp10 = icmp ult i8 %bits_per_word.1, 17
  br i1 %cmp10, label %if.else8.if.end23_crit_edge, label %if.else14

if.else8.if.end23_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.else14:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %bits_per_word.1)
  %cmp16 = icmp ult i8 %bits_per_word.1, 33
  br i1 %cmp16, label %if.else14.if.end23_crit_edge, label %if.else14.cleanup_crit_edge

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else14.if.end23_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23:                                         ; preds = %if.else14.if.end23_crit_edge, %if.else8.if.end23_crit_edge, %if.end5.if.end23_crit_edge
  %bitbang_txrx_16.sink = phi ptr [ @bitbang_txrx_8, %if.end5.if.end23_crit_edge ], [ @bitbang_txrx_16, %if.else8.if.end23_crit_edge ], [ @bitbang_txrx_32, %if.else14.if.end23_crit_edge ]
  %txrx_bufs13 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %txrx_bufs13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bitbang_txrx_16.sink, ptr %txrx_bufs13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz.053)
  %tobool24.not = icmp eq i32 %hz.053, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.if.then28_crit_edge

if.end23.if.then28_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end26:                                         ; preds = %if.end23
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %9 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool27.not = icmp eq i32 %10, 0
  br i1 %tobool27.not, label %if.end26.if.end34_crit_edge, label %if.end26.if.then28_crit_edge

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end23.if.then28_crit_edge
  %hz.157 = phi i32 [ %10, %if.end26.if.then28_crit_edge ], [ %hz.053, %if.end23.if.then28_crit_edge ]
  %div = udiv i32 500000000, %hz.157
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %hz.157)
  %cmp30 = icmp ult i32 %hz.157, 250
  br i1 %cmp30, label %if.then28.cleanup_crit_edge, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.then28.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then28.cleanup_crit_edge, %if.else14.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -22, %if.else14.cleanup_crit_edge ], [ -22, %if.then28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_8(ptr noundef %spi, ptr nocapture noundef readonly %txrx_word, i32 noundef %ns, ptr nocapture noundef readonly %t, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not22 = icmp eq i32 %3, 0
  br i1 %cmp.not22, label %entry.while.end_crit_edge, label %while.body.preheader, !prof !33

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf, align 4
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.preheader
  %rx.025 = phi ptr [ %rx.1, %if.end10.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %tx.024 = phi ptr [ %tx.1, %if.end10.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %count.023 = phi i32 [ %sub, %if.end10.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %tobool3.not = icmp eq ptr %tx.024, null
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i8, ptr %tx.024, i32 1
  %8 = ptrtoint ptr %tx.024 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx.024, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %tx.1 = phi ptr [ %incdec.ptr, %if.then ], [ null, %while.body.if.end_crit_edge ]
  %word.0 = phi i8 [ %9, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %conv4 = zext i8 %word.0 to i32
  %call = tail call i32 %txrx_word(ptr noundef %spi, i32 noundef %ns, i32 noundef %conv4, i8 noundef zeroext %1, i32 noundef %flags) #4
  %tobool7.not = icmp eq ptr %rx.025, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i32 %call to i8
  %incdec.ptr9 = getelementptr i8, ptr %rx.025, i32 1
  %10 = ptrtoint ptr %rx.025 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %rx.025, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %rx.1 = phi ptr [ %incdec.ptr9, %if.then8 ], [ null, %if.end.if.end10_crit_edge ]
  %sub = add i32 %count.023, -1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge, !prof !33

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_16(ptr noundef %spi, ptr nocapture noundef readonly %txrx_word, i32 noundef %ns, ptr nocapture noundef readonly %t, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp22 = icmp ugt i32 %3, 1
  br i1 %cmp22, label %while.body.preheader, label %entry.while.end_crit_edge, !prof !34

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf, align 4
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  br label %while.body

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %while.body.preheader
  %rx.025 = phi ptr [ %rx.1, %if.end10.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %tx.024 = phi ptr [ %tx.1, %if.end10.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %count.023 = phi i32 [ %sub, %if.end10.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %tobool3.not = icmp eq ptr %tx.024, null
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i16, ptr %tx.024, i32 1
  %8 = ptrtoint ptr %tx.024 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx.024, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %tx.1 = phi ptr [ %incdec.ptr, %if.then ], [ null, %while.body.if.end_crit_edge ]
  %word.0 = phi i16 [ %9, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %conv4 = zext i16 %word.0 to i32
  %call = tail call i32 %txrx_word(ptr noundef %spi, i32 noundef %ns, i32 noundef %conv4, i8 noundef zeroext %1, i32 noundef %flags) #4
  %tobool7.not = icmp eq ptr %rx.025, null
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv6 = trunc i32 %call to i16
  %incdec.ptr9 = getelementptr i16, ptr %rx.025, i32 1
  %10 = ptrtoint ptr %rx.025 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6, ptr %rx.025, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %rx.1 = phi ptr [ %incdec.ptr9, %if.then8 ], [ null, %if.end.if.end10_crit_edge ]
  %sub = add i32 %count.023, -2
  %cmp = icmp ugt i32 %sub, 1
  br i1 %cmp, label %if.end10.while.body_crit_edge, label %if.end10.while.end_crit_edge, !prof !34

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %sub, %if.end10.while.end_crit_edge ]
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %sub12 = sub i32 %12, %count.0.lcssa
  ret i32 %sub12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bitbang_txrx_32(ptr noundef %spi, ptr nocapture noundef readonly %txrx_word, i32 noundef %ns, ptr nocapture noundef readonly %t, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp20 = icmp ugt i32 %3, 3
  br i1 %cmp20, label %while.body.preheader, label %entry.while.end_crit_edge, !prof !34

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.preheader:                             ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf, align 4
  %6 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %t, align 4
  br label %while.body

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %while.body.preheader
  %rx.023 = phi ptr [ %rx.1, %if.end8.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %tx.022 = phi ptr [ %tx.1, %if.end8.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %count.021 = phi i32 [ %sub, %if.end8.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %tobool3.not = icmp eq ptr %tx.022, null
  br i1 %tobool3.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr = getelementptr i32, ptr %tx.022, i32 1
  %8 = ptrtoint ptr %tx.022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx.022, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %tx.1 = phi ptr [ %incdec.ptr, %if.then ], [ null, %while.body.if.end_crit_edge ]
  %word.0 = phi i32 [ %9, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %call = tail call i32 %txrx_word(ptr noundef %spi, i32 noundef %ns, i32 noundef %word.0, i8 noundef zeroext %1, i32 noundef %flags) #4
  %tobool5.not = icmp eq ptr %rx.023, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %incdec.ptr7 = getelementptr i32, ptr %rx.023, i32 1
  %10 = ptrtoint ptr %rx.023 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call, ptr %rx.023, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %rx.1 = phi ptr [ %incdec.ptr7, %if.then6 ], [ null, %if.end.if.end8_crit_edge ]
  %sub = add i32 %count.021, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %if.end8.while.body_crit_edge, label %if.end8.while.end_crit_edge, !prof !34

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end8.while.end_crit_edge, %entry.while.end_crit_edge
  %count.0.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %sub, %if.end8.while.end_crit_edge ]
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %sub10 = sub i32 %12, %count.0.lcssa
  ret i32 %sub10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_setup(ptr noundef %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #7
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %controller_state, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %cs.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call7.i.i, %if.end ]
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 8
  %and = and i32 %9, 3
  %arrayidx = getelementptr %struct.spi_bitbang, ptr %5, i32 0, i32 8, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %txrx_word7 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %cs.0, i32 0, i32 1
  %12 = ptrtoint ptr %txrx_word7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %txrx_word7, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %if.end6.err_free_crit_edge, label %if.end11

if.end6.err_free_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

if.end11:                                         ; preds = %if.end6
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %setup_transfer, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end11.do.body_crit_edge, label %if.then13

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then13:                                        ; preds = %if.end11
  %call15 = tail call i32 %14(ptr noundef %spi, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then13.err_free_crit_edge, label %if.then13.do.body_crit_edge

if.then13.do.body_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.then13.err_free_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_free

do.body:                                          ; preds = %if.then13.do.body_crit_edge, %if.end11.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_bitbang_setup.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@spi_bitbang_setup, %cleanup)) #4
          to label %if.then24 [label %cleanup], !srcloc !35

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %cs.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cs.0, align 4
  %mul = shl i32 %16, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spi_bitbang_setup.__UNIQUE_ID_ddebug234, ptr noundef %spi, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %mul) #4
  br label %cleanup

err_free:                                         ; preds = %if.then13.err_free_crit_edge, %if.end6.err_free_crit_edge
  %retval1.0 = phi i32 [ %call15, %if.then13.err_free_crit_edge ], [ -22, %if.end6.err_free_crit_edge ]
  br i1 %tobool.not, label %if.then27, label %err_free.cleanup_crit_edge

err_free.cleanup_crit_edge:                       ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then27:                                        ; preds = %err_free
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %cs.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %err_free.cleanup_crit_edge, %if.then24, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.cleanup_crit_edge ], [ 0, %if.then24 ], [ %retval1.0, %if.then27 ], [ %retval1.0, %err_free.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_bitbang_cleanup(ptr nocapture noundef readonly %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_init(ptr noundef %bitbang) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 4
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup34_crit_edge, label %if.end

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

if.end:                                           ; preds = %entry
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 56
  %2 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %use_gpio_descriptors, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.end.land.lhs.true_crit_edge, label %lor.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.end:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3.not = icmp eq i16 %6, 0
  br i1 %tobool3.not, label %lor.end.do.body_crit_edge, label %lor.end.land.lhs.true_crit_edge

lor.end.land.lhs.true_crit_edge:                  ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

lor.end.do.body_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true:                                    ; preds = %lor.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 6
  %7 = ptrtoint ptr %chipselect to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chipselect, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup34_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

land.lhs.true.cleanup34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %lor.end.do.body_crit_edge
  %9 = phi i1 [ false, %lor.end.do.body_crit_edge ], [ true, %land.lhs.true.do.body_crit_edge ]
  tail call void @__mutex_init(ptr noundef %bitbang, ptr noundef nonnull @.str.4, ptr noundef nonnull @spi_bitbang_init.__key) #4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %mode_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_bits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %if.then10, label %do.body.if.end14_crit_edge

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %flags11 = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 3
  %12 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags11, align 2
  %14 = or i16 %13, 3
  %or = zext i16 %14 to i32
  %15 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %mode_bits, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body.if.end14_crit_edge
  %transfer = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 22
  %16 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %transfer, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %lor.lhs.false, label %if.end14.cleanup34_crit_edge

if.end14.cleanup34_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

lor.lhs.false:                                    ; preds = %if.end14
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 45
  %18 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_one_message, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end18, label %lor.lhs.false.cleanup34_crit_edge

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

if.end18:                                         ; preds = %lor.lhs.false
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @spi_bitbang_prepare_hardware, ptr %prepare_transfer_hardware, align 8
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 46
  %21 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @spi_bitbang_unprepare_hardware, ptr %unprepare_transfer_hardware, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 51
  %22 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @spi_bitbang_transfer_one, ptr %transfer_one, align 4
  br i1 %9, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 50
  %23 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @spi_bitbang_set_cs, ptr %set_cs, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 7
  %24 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %txrx_bufs, align 4
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %if.then23, label %if.end21.cleanup34_crit_edge

if.end21.cleanup34_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

if.then23:                                        ; preds = %if.end21
  %use_dma = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 2
  %26 = ptrtoint ptr %use_dma to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %use_dma, align 1
  %27 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @spi_bitbang_bufs, ptr %txrx_bufs, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %setup, align 4
  %tobool25.not = icmp eq ptr %29, null
  br i1 %tobool25.not, label %if.then26, label %if.then23.cleanup34_crit_edge

if.then23.cleanup34_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup34

if.then26:                                        ; preds = %if.then23
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 5
  %30 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %setup_transfer, align 4
  %tobool27.not = icmp eq ptr %31, null
  br i1 %tobool27.not, label %if.then28, label %if.then26.if.end30_crit_edge

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @spi_bitbang_setup_transfer, ptr %setup_transfer, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then26.if.end30_crit_edge
  %33 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @spi_bitbang_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 23
  %34 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @spi_bitbang_cleanup, ptr %cleanup, align 8
  br label %cleanup34

cleanup34:                                        ; preds = %if.end30, %if.then23.cleanup34_crit_edge, %if.end21.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %if.end14.cleanup34_crit_edge, %land.lhs.true.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup34_crit_edge ], [ -22, %land.lhs.true.cleanup34_crit_edge ], [ -22, %lor.lhs.false.cleanup34_crit_edge ], [ -22, %if.end14.cleanup34_crit_edge ], [ 0, %if.then23.cleanup34_crit_edge ], [ 0, %if.end30 ], [ 0, %if.end21.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_bitbang_prepare_hardware(ptr nocapture noundef readonly %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #4
  %busy = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %busy, align 4
  tail call void @mutex_unlock(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_bitbang_unprepare_hardware(ptr nocapture noundef readonly %spi) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #4
  %busy = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %busy, align 4
  tail call void @mutex_unlock(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_bitbang_transfer_one(ptr noundef %master, ptr noundef %spi, ptr noundef %transfer) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setup_transfer, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 %3(ptr noundef %spi, ptr noundef %transfer) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.out_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %status.0 = phi i32 [ %call2, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %if.then6

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txrx_bufs, align 4
  %call7 = tail call i32 %7(ptr noundef %spi, ptr noundef %transfer) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  %status.1 = phi i32 [ %call7, %if.then6 ], [ %status.0, %if.end4.if.end8_crit_edge ]
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %status.1, i32 %9)
  %cmp10 = icmp eq i32 %status.1, %9
  br i1 %cmp10, label %if.end8.out_crit_edge, label %if.else

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status.1)
  %cmp12 = icmp sgt i32 %status.1, -1
  %spec.store.select = select i1 %cmp12, i32 -121, i32 %status.1
  br label %out

out:                                              ; preds = %if.else, %if.end8.out_crit_edge, %if.then.out_crit_edge
  %status.2 = phi i32 [ %call2, %if.then.out_crit_edge ], [ %spec.store.select, %if.else ], [ 0, %if.end8.out_crit_edge ]
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #4
  ret i32 %status.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_bitbang_set_cs(ptr noundef %spi, i1 noundef zeroext %enable) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %cmp = xor i1 %7, %enable
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %chipselect to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chipselect, align 4
  %cond = zext i1 %cmp to i32
  tail call void %10(ptr noundef %spi, i32 noundef %cond) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_bitbang_bufs(ptr noundef %spi, ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %set_line_direction = getelementptr inbounds %struct.spi_bitbang, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %set_line_direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_line_direction, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t, align 4
  %tobool3 = icmp ne ptr %11, null
  %call5 = tail call i32 %9(ptr noundef %spi, i1 noundef zeroext %tobool3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then.cleanup18_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then.cleanup18_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup18

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode, align 8
  %and = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.cleanup18.sink.split_crit_edge, label %if.then9

if.end7.cleanup18.sink.split_crit_edge:           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup18.sink.split

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %t, align 4
  %tobool11.not = icmp eq ptr %15, null
  %cond = select i1 %tobool11.not, i32 4, i32 2
  br label %cleanup18.sink.split

cleanup18.sink.split:                             ; preds = %if.then9, %if.end7.cleanup18.sink.split_crit_edge
  %.sink37 = phi i32 [ %cond, %if.then9 ], [ 0, %if.end7.cleanup18.sink.split_crit_edge ]
  %txrx_bufs15 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %txrx_bufs15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txrx_bufs15, align 4
  %txrx_word16 = getelementptr inbounds %struct.spi_bitbang_cs, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %txrx_word16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %txrx_word16, align 4
  %call17 = tail call i32 %17(ptr noundef %spi, ptr noundef %19, i32 noundef %3, ptr noundef %t, i32 noundef %.sink37) #4
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup18.sink.split, %if.then.cleanup18_crit_edge
  %retval.1 = phi i32 [ %call5, %if.then.cleanup18_crit_edge ], [ %call17, %cleanup18.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spi_bitbang_start(ptr noundef %bitbang) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master1 = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 4
  %0 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master1, align 4
  %call = tail call i32 @spi_bitbang_init(ptr noundef %bitbang)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %spi_controller_get.exit, label %spi_controller_get.exit.thread

spi_controller_get.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 @spi_register_controller(ptr noundef null) #4
  br label %cleanup

spi_controller_get.exit.thread:                   ; preds = %if.end
  %call.i = tail call ptr @get_device(ptr noundef nonnull %1) #4
  %tobool1.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool1.not.i, ptr null, ptr %1
  %call315 = tail call i32 @spi_register_controller(ptr noundef %spec.select.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call315)
  %tobool4.not16 = icmp eq i32 %call315, 0
  br i1 %tobool4.not16, label %spi_controller_get.exit.thread.cleanup_crit_edge, label %if.then.i

spi_controller_get.exit.thread.cleanup_crit_edge: ; preds = %spi_controller_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %spi_controller_get.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @put_device(ptr noundef nonnull %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %spi_controller_get.exit.thread.cleanup_crit_edge, %spi_controller_get.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %spi_controller_get.exit.thread.cleanup_crit_edge ], [ %call315, %if.then.i ], [ %call3, %spi_controller_get.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spi_bitbang_stop(ptr nocapture noundef readonly %bitbang) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_bitbang, ptr %bitbang, i32 0, i32 4
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__ksymtab_spi_bitbang_setup_transfer, !1, !"__ksymtab_spi_bitbang_setup_transfer", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bitbang.c", i32 178, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-bitbang.c", i32 213, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @spi_bitbang_setup.__UNIQUE_ID_ddebug234, !3, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!8 = !{ptr @__ksymtab_spi_bitbang_setup, !9, !"__ksymtab_spi_bitbang_setup", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-bitbang.c", i32 222, i32 1}
!10 = !{ptr @__ksymtab_spi_bitbang_cleanup, !11, !"__ksymtab_spi_bitbang_cleanup", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-bitbang.c", i32 231, i32 1}
!12 = !{ptr @spi_bitbang_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-bitbang.c", i32 361, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_spi_bitbang_init, !16, !"__ksymtab_spi_bitbang_init", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-bitbang.c", i32 393, i32 1}
!17 = !{ptr @__ksymtab_spi_bitbang_start, !18, !"__ksymtab_spi_bitbang_start", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-bitbang.c", i32 441, i32 1}
!19 = !{ptr @__ksymtab_spi_bitbang_stop, !20, !"__ksymtab_spi_bitbang_stop", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-bitbang.c", i32 450, i32 1}
!21 = !{ptr @__UNIQUE_ID_file235, !22, !"__UNIQUE_ID_file235", i1 false, i1 false}
!22 = !{!"../drivers/spi/spi-bitbang.c", i32 452, i32 1}
!23 = !{ptr @__UNIQUE_ID_license236, !22, !"__UNIQUE_ID_license236", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2148311447, i64 2148311452, i64 2148311465, i64 2148311509, i64 2148311543, i64 2148311564}
!36 = !{i8 0, i8 2}
