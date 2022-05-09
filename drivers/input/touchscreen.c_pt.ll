; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen.c_pt.bc'
source_filename = "../drivers/input/touchscreen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+touchscreen_parse_properties\22, \22a\22\09"
module asm "\09.weak\09__crc_touchscreen_parse_properties\09\09\09\09"
module asm "\09.long\09__crc_touchscreen_parse_properties\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_parse_properties\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_parse_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+touchscreen_set_mt_pos\22, \22a\22\09"
module asm "\09.weak\09__crc_touchscreen_set_mt_pos\09\09\09\09"
module asm "\09.long\09__crc_touchscreen_set_mt_pos\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_set_mt_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_set_mt_pos\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_set_mt_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+touchscreen_report_pos\22, \22a\22\09"
module asm "\09.weak\09__crc_touchscreen_report_pos\09\09\09\09"
module asm "\09.long\09__crc_touchscreen_report_pos\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_touchscreen_report_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22touchscreen_report_pos\22\09\09\09\09\09"
module asm "__kstrtabns_touchscreen_report_pos:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_mt_pos = type { i16, i16 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touchscreen-min-x\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-x\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-fuzz-x\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"touchscreen-min-y\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-size-y\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"touchscreen-fuzz-y\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"touchscreen-max-pressure\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"touchscreen-fuzz-pressure\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-x\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-y\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"touchscreen-swapped-x-y\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_touchscreen_parse_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_parse_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_parse_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_parse_properties to i32), ptr @__kstrtab_touchscreen_parse_properties, ptr @__kstrtabns_touchscreen_parse_properties }, section "___ksymtab+touchscreen_parse_properties", align 4
@__kstrtab_touchscreen_set_mt_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_set_mt_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_set_mt_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_set_mt_pos to i32), ptr @__kstrtab_touchscreen_set_mt_pos, ptr @__kstrtabns_touchscreen_set_mt_pos }, section "___ksymtab+touchscreen_set_mt_pos", align 4
@__kstrtab_touchscreen_report_pos = external dso_local constant [0 x i8], align 1
@__kstrtabns_touchscreen_report_pos = external dso_local constant [0 x i8], align 1
@__ksymtab_touchscreen_report_pos = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @touchscreen_report_pos to i32), ptr @__kstrtab_touchscreen_report_pos, ptr @__kstrtabns_touchscreen_report_pos }, section "___ksymtab+touchscreen_report_pos", align 4
@__UNIQUE_ID_file210 = internal constant [41 x i8] c"input_core.file=drivers/input/input-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license211 = internal constant [26 x i8] c"input_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [75 x i8] c"input_core.description=Helper functions for touchscreens and other devices\00", section ".modinfo", align 1
@touchscreen_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.13, i32 42, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Parameters are specified but the axis %lu is not set up\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen_set_params\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/touchscreen.c\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@touchscreen_set_params._entry_ptr = internal global ptr @touchscreen_set_params._entry, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 81, i32 47 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 84, i32 48 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 88, i32 48 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 94, i32 47 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 97, i32 48 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 101, i32 48 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 109, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 113, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 126, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 134, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 142, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [31 x i8] c"../drivers/input/touchscreen.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 40, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file210, ptr @__UNIQUE_ID_license211, ptr @__ksymtab_touchscreen_parse_properties, ptr @__ksymtab_touchscreen_report_pos, ptr @__ksymtab_touchscreen_set_mt_pos, ptr @touchscreen_set_params._entry, ptr @touchscreen_set_params._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @touchscreen_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @touchscreen_parse_properties(ptr noundef %input, i1 noundef zeroext %multitouch, ptr noundef writeonly %prop) #0 align 64 {
entry:
  %val.i288 = alloca i32, align 4
  %val.i276 = alloca i32, align 4
  %val.i251 = alloca i32, align 4
  %val.i239 = alloca i32, align 4
  %val.i227 = alloca i32, align 4
  %val.i211 = alloca i32, align 4
  %val.i201 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @input_alloc_absinfo(ptr noundef %input) #5
  %absinfo2 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 26
  %2 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %absinfo2, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %input_abs_get_min.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

input_abs_get_min.exit:                           ; preds = %entry
  %cond = select i1 %multitouch, i32 53, i32 0
  %cond5 = select i1 %multitouch, i32 54, i32 1
  %minimum.i = getelementptr %struct.input_absinfo, ptr %3, i32 %cond, i32 1
  %4 = ptrtoint ptr %minimum.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %minimum.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !50
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i196 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i196, label %if.end.i, label %input_abs_get_min.exit.touchscreen_get_prop_u32.exit_crit_edge

input_abs_get_min.exit.touchscreen_get_prop_u32.exit_crit_edge: ; preds = %input_abs_get_min.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %touchscreen_get_prop_u32.exit

if.end.i:                                         ; preds = %input_abs_get_min.exit
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  br label %touchscreen_get_prop_u32.exit

touchscreen_get_prop_u32.exit:                    ; preds = %if.end.i, %input_abs_get_min.exit.touchscreen_get_prop_u32.exit_crit_edge
  %storemerge.i = phi i32 [ %8, %if.end.i ], [ %5, %input_abs_get_min.exit.touchscreen_get_prop_u32.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %9 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i198 = icmp eq ptr %10, null
  br i1 %tobool.not.i198, label %touchscreen_get_prop_u32.exit.input_abs_get_max.exit_crit_edge, label %cond.true.i199

touchscreen_get_prop_u32.exit.input_abs_get_max.exit_crit_edge: ; preds = %touchscreen_get_prop_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit

cond.true.i199:                                   ; preds = %touchscreen_get_prop_u32.exit
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i = getelementptr %struct.input_absinfo, ptr %10, i32 %cond, i32 2
  %11 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maximum.i, align 4
  br label %input_abs_get_max.exit

input_abs_get_max.exit:                           ; preds = %cond.true.i199, %touchscreen_get_prop_u32.exit.input_abs_get_max.exit_crit_edge
  %cond.i200 = phi i32 [ %12, %cond.true.i199 ], [ 0, %touchscreen_get_prop_u32.exit.input_abs_get_max.exit_crit_edge ]
  %add = add i32 %cond.i200, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i201) #5
  %13 = ptrtoint ptr %val.i201 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i201, align 4, !annotation !50
  %call.i.i202 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %val.i201, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i202)
  %tobool.not.i203 = icmp eq i32 %call.i.i202, 0
  br i1 %tobool.not.i203, label %if.end.i204, label %input_abs_get_max.exit.touchscreen_get_prop_u32.exit206_crit_edge

input_abs_get_max.exit.touchscreen_get_prop_u32.exit206_crit_edge: ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %touchscreen_get_prop_u32.exit206

if.end.i204:                                      ; preds = %input_abs_get_max.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %val.i201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i201, align 4
  br label %touchscreen_get_prop_u32.exit206

touchscreen_get_prop_u32.exit206:                 ; preds = %if.end.i204, %input_abs_get_max.exit.touchscreen_get_prop_u32.exit206_crit_edge
  %storemerge.i205 = phi i32 [ %15, %if.end.i204 ], [ %add, %input_abs_get_max.exit.touchscreen_get_prop_u32.exit206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i201) #5
  %or191 = or i1 %tobool.not.i196, %tobool.not.i203
  %16 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i208 = icmp eq ptr %17, null
  br i1 %tobool.not.i208, label %touchscreen_get_prop_u32.exit206.input_abs_get_fuzz.exit_crit_edge, label %cond.true.i209

touchscreen_get_prop_u32.exit206.input_abs_get_fuzz.exit_crit_edge: ; preds = %touchscreen_get_prop_u32.exit206
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_fuzz.exit

cond.true.i209:                                   ; preds = %touchscreen_get_prop_u32.exit206
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i = getelementptr %struct.input_absinfo, ptr %17, i32 %cond, i32 3
  %18 = ptrtoint ptr %fuzz.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fuzz.i, align 4
  br label %input_abs_get_fuzz.exit

input_abs_get_fuzz.exit:                          ; preds = %cond.true.i209, %touchscreen_get_prop_u32.exit206.input_abs_get_fuzz.exit_crit_edge
  %cond.i210 = phi i32 [ %19, %cond.true.i209 ], [ 0, %touchscreen_get_prop_u32.exit206.input_abs_get_fuzz.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i211) #5
  %20 = ptrtoint ptr %val.i211 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %val.i211, align 4, !annotation !50
  %call.i.i212 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %val.i211, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212)
  %tobool.not.i213 = icmp eq i32 %call.i.i212, 0
  br i1 %tobool.not.i213, label %touchscreen_get_prop_u32.exit216.thread, label %touchscreen_get_prop_u32.exit216

touchscreen_get_prop_u32.exit216.thread:          ; preds = %input_abs_get_fuzz.exit
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val.i211 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i211, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i211) #5
  br label %if.then23

touchscreen_get_prop_u32.exit216:                 ; preds = %input_abs_get_fuzz.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i211) #5
  br i1 %or191, label %touchscreen_get_prop_u32.exit216.if.then23_crit_edge, label %touchscreen_get_prop_u32.exit216.if.end24_crit_edge

touchscreen_get_prop_u32.exit216.if.end24_crit_edge: ; preds = %touchscreen_get_prop_u32.exit216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

touchscreen_get_prop_u32.exit216.if.then23_crit_edge: ; preds = %touchscreen_get_prop_u32.exit216
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

if.then23:                                        ; preds = %touchscreen_get_prop_u32.exit216.if.then23_crit_edge, %touchscreen_get_prop_u32.exit216.thread
  %storemerge.i215328 = phi i32 [ %22, %touchscreen_get_prop_u32.exit216.thread ], [ %cond.i210, %touchscreen_get_prop_u32.exit216.if.then23_crit_edge ]
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 8
  %div3.i.i = lshr i32 %cond, 5
  %arrayidx.i.i = getelementptr i32, ptr %absbit.i, i32 %div3.i.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %cond, 21
  %25 = shl nuw nsw i32 1, %and.i.i
  %26 = and i32 %24, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i217 = icmp eq i32 %26, 0
  br i1 %tobool.not.i217, label %do.end.i, label %if.end.i220

do.end.i:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.11, i32 noundef %cond) #8
  br label %if.end24

if.end.i220:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %storemerge.i205, -1
  %27 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %absinfo2, align 8
  %minimum.i218 = getelementptr %struct.input_absinfo, ptr %28, i32 %cond, i32 1
  %29 = ptrtoint ptr %minimum.i218 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i, ptr %minimum.i218, align 4
  %maximum.i219 = getelementptr %struct.input_absinfo, ptr %28, i32 %cond, i32 2
  %30 = ptrtoint ptr %maximum.i219 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %maximum.i219, align 4
  %fuzz3.i = getelementptr %struct.input_absinfo, ptr %28, i32 %cond, i32 3
  %31 = ptrtoint ptr %fuzz3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %storemerge.i215328, ptr %fuzz3.i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end.i220, %do.end.i, %touchscreen_get_prop_u32.exit216.if.end24_crit_edge
  %32 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i222 = icmp eq ptr %33, null
  br i1 %tobool.not.i222, label %if.end24.input_abs_get_min.exit226_crit_edge, label %cond.true.i224

if.end24.input_abs_get_min.exit226_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_min.exit226

cond.true.i224:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %minimum.i223 = getelementptr %struct.input_absinfo, ptr %33, i32 %cond5, i32 1
  %34 = ptrtoint ptr %minimum.i223 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %minimum.i223, align 4
  br label %input_abs_get_min.exit226

input_abs_get_min.exit226:                        ; preds = %cond.true.i224, %if.end24.input_abs_get_min.exit226_crit_edge
  %cond.i225 = phi i32 [ %35, %cond.true.i224 ], [ 0, %if.end24.input_abs_get_min.exit226_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i227) #5
  %36 = ptrtoint ptr %val.i227 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i227, align 4, !annotation !50
  %call.i.i228 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %val.i227, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228)
  %tobool.not.i229 = icmp eq i32 %call.i.i228, 0
  br i1 %tobool.not.i229, label %if.end.i230, label %input_abs_get_min.exit226.touchscreen_get_prop_u32.exit232_crit_edge

input_abs_get_min.exit226.touchscreen_get_prop_u32.exit232_crit_edge: ; preds = %input_abs_get_min.exit226
  call void @__sanitizer_cov_trace_pc() #7
  br label %touchscreen_get_prop_u32.exit232

if.end.i230:                                      ; preds = %input_abs_get_min.exit226
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %val.i227 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i227, align 4
  br label %touchscreen_get_prop_u32.exit232

touchscreen_get_prop_u32.exit232:                 ; preds = %if.end.i230, %input_abs_get_min.exit226.touchscreen_get_prop_u32.exit232_crit_edge
  %storemerge.i231 = phi i32 [ %38, %if.end.i230 ], [ %cond.i225, %input_abs_get_min.exit226.touchscreen_get_prop_u32.exit232_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i227) #5
  %39 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i234 = icmp eq ptr %40, null
  br i1 %tobool.not.i234, label %touchscreen_get_prop_u32.exit232.input_abs_get_max.exit238_crit_edge, label %cond.true.i236

touchscreen_get_prop_u32.exit232.input_abs_get_max.exit238_crit_edge: ; preds = %touchscreen_get_prop_u32.exit232
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit238

cond.true.i236:                                   ; preds = %touchscreen_get_prop_u32.exit232
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i235 = getelementptr %struct.input_absinfo, ptr %40, i32 %cond5, i32 2
  %41 = ptrtoint ptr %maximum.i235 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maximum.i235, align 4
  br label %input_abs_get_max.exit238

input_abs_get_max.exit238:                        ; preds = %cond.true.i236, %touchscreen_get_prop_u32.exit232.input_abs_get_max.exit238_crit_edge
  %cond.i237 = phi i32 [ %42, %cond.true.i236 ], [ 0, %touchscreen_get_prop_u32.exit232.input_abs_get_max.exit238_crit_edge ]
  %add29 = add i32 %cond.i237, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i239) #5
  %43 = ptrtoint ptr %val.i239 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i239, align 4, !annotation !50
  %call.i.i240 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %val.i239, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i240)
  %tobool.not.i241 = icmp eq i32 %call.i.i240, 0
  br i1 %tobool.not.i241, label %if.end.i242, label %input_abs_get_max.exit238.touchscreen_get_prop_u32.exit244_crit_edge

input_abs_get_max.exit238.touchscreen_get_prop_u32.exit244_crit_edge: ; preds = %input_abs_get_max.exit238
  call void @__sanitizer_cov_trace_pc() #7
  br label %touchscreen_get_prop_u32.exit244

if.end.i242:                                      ; preds = %input_abs_get_max.exit238
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %val.i239 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i239, align 4
  br label %touchscreen_get_prop_u32.exit244

touchscreen_get_prop_u32.exit244:                 ; preds = %if.end.i242, %input_abs_get_max.exit238.touchscreen_get_prop_u32.exit244_crit_edge
  %storemerge.i243 = phi i32 [ %45, %if.end.i242 ], [ %add29, %input_abs_get_max.exit238.touchscreen_get_prop_u32.exit244_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i239) #5
  %or34193 = or i1 %tobool.not.i229, %tobool.not.i241
  %46 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i246 = icmp eq ptr %47, null
  br i1 %tobool.not.i246, label %touchscreen_get_prop_u32.exit244.input_abs_get_fuzz.exit250_crit_edge, label %cond.true.i248

touchscreen_get_prop_u32.exit244.input_abs_get_fuzz.exit250_crit_edge: ; preds = %touchscreen_get_prop_u32.exit244
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_fuzz.exit250

cond.true.i248:                                   ; preds = %touchscreen_get_prop_u32.exit244
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i247 = getelementptr %struct.input_absinfo, ptr %47, i32 %cond5, i32 3
  %48 = ptrtoint ptr %fuzz.i247 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fuzz.i247, align 4
  br label %input_abs_get_fuzz.exit250

input_abs_get_fuzz.exit250:                       ; preds = %cond.true.i248, %touchscreen_get_prop_u32.exit244.input_abs_get_fuzz.exit250_crit_edge
  %cond.i249 = phi i32 [ %49, %cond.true.i248 ], [ 0, %touchscreen_get_prop_u32.exit244.input_abs_get_fuzz.exit250_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i251) #5
  %50 = ptrtoint ptr %val.i251 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i251, align 4, !annotation !50
  %call.i.i252 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %val.i251, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i252)
  %tobool.not.i253 = icmp eq i32 %call.i.i252, 0
  br i1 %tobool.not.i253, label %touchscreen_get_prop_u32.exit256.thread, label %touchscreen_get_prop_u32.exit256

touchscreen_get_prop_u32.exit256.thread:          ; preds = %input_abs_get_fuzz.exit250
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %val.i251 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i251, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i251) #5
  br label %if.then46

touchscreen_get_prop_u32.exit256:                 ; preds = %input_abs_get_fuzz.exit250
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i251) #5
  br i1 %or34193, label %touchscreen_get_prop_u32.exit256.if.then46_crit_edge, label %touchscreen_get_prop_u32.exit256.if.end48_crit_edge

touchscreen_get_prop_u32.exit256.if.end48_crit_edge: ; preds = %touchscreen_get_prop_u32.exit256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

touchscreen_get_prop_u32.exit256.if.then46_crit_edge: ; preds = %touchscreen_get_prop_u32.exit256
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then46

if.then46:                                        ; preds = %touchscreen_get_prop_u32.exit256.if.then46_crit_edge, %touchscreen_get_prop_u32.exit256.thread
  %storemerge.i255331 = phi i32 [ %52, %touchscreen_get_prop_u32.exit256.thread ], [ %cond.i249, %touchscreen_get_prop_u32.exit256.if.then46_crit_edge ]
  %absbit.i257 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 8
  %div3.i.i258 = lshr i32 %cond5, 5
  %arrayidx.i.i259 = getelementptr i32, ptr %absbit.i257, i32 %div3.i.i258
  %53 = ptrtoint ptr %arrayidx.i.i259 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %arrayidx.i.i259, align 4
  %and.i.i260 = and i32 %cond5, 23
  %55 = shl nuw nsw i32 1, %and.i.i260
  %56 = and i32 %54, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i261 = icmp eq i32 %56, 0
  br i1 %tobool.not.i261, label %do.end.i263, label %if.end.i268

do.end.i263:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i262 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i262, ptr noundef nonnull @.str.11, i32 noundef %cond5) #8
  br label %if.end48

if.end.i268:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  %sub47 = add i32 %storemerge.i243, -1
  %57 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %absinfo2, align 8
  %minimum.i265 = getelementptr %struct.input_absinfo, ptr %58, i32 %cond5, i32 1
  %59 = ptrtoint ptr %minimum.i265 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %storemerge.i231, ptr %minimum.i265, align 4
  %maximum.i266 = getelementptr %struct.input_absinfo, ptr %58, i32 %cond5, i32 2
  %60 = ptrtoint ptr %maximum.i266 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub47, ptr %maximum.i266, align 4
  %fuzz3.i267 = getelementptr %struct.input_absinfo, ptr %58, i32 %cond5, i32 3
  %61 = ptrtoint ptr %fuzz3.i267 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %storemerge.i255331, ptr %fuzz3.i267, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end.i268, %do.end.i263, %touchscreen_get_prop_u32.exit256.if.end48_crit_edge
  %cond51 = select i1 %multitouch, i32 58, i32 24
  %62 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i271 = icmp eq ptr %63, null
  br i1 %tobool.not.i271, label %if.end48.input_abs_get_max.exit275_crit_edge, label %cond.true.i273

if.end48.input_abs_get_max.exit275_crit_edge:     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit275

cond.true.i273:                                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i272 = getelementptr %struct.input_absinfo, ptr %63, i32 %cond51, i32 2
  %64 = ptrtoint ptr %maximum.i272 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %maximum.i272, align 4
  br label %input_abs_get_max.exit275

input_abs_get_max.exit275:                        ; preds = %cond.true.i273, %if.end48.input_abs_get_max.exit275_crit_edge
  %cond.i274 = phi i32 [ %65, %cond.true.i273 ], [ 0, %if.end48.input_abs_get_max.exit275_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i276) #5
  %66 = ptrtoint ptr %val.i276 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %val.i276, align 4, !annotation !50
  %call.i.i277 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %val.i276, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i277)
  %tobool.not.i278 = icmp eq i32 %call.i.i277, 0
  br i1 %tobool.not.i278, label %if.end.i279, label %input_abs_get_max.exit275.touchscreen_get_prop_u32.exit281_crit_edge

input_abs_get_max.exit275.touchscreen_get_prop_u32.exit281_crit_edge: ; preds = %input_abs_get_max.exit275
  call void @__sanitizer_cov_trace_pc() #7
  br label %touchscreen_get_prop_u32.exit281

if.end.i279:                                      ; preds = %input_abs_get_max.exit275
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %val.i276 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i276, align 4
  br label %touchscreen_get_prop_u32.exit281

touchscreen_get_prop_u32.exit281:                 ; preds = %if.end.i279, %input_abs_get_max.exit275.touchscreen_get_prop_u32.exit281_crit_edge
  %storemerge.i280 = phi i32 [ %68, %if.end.i279 ], [ %cond.i274, %input_abs_get_max.exit275.touchscreen_get_prop_u32.exit281_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i276) #5
  %69 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i283 = icmp eq ptr %70, null
  br i1 %tobool.not.i283, label %touchscreen_get_prop_u32.exit281.input_abs_get_fuzz.exit287_crit_edge, label %cond.true.i285

touchscreen_get_prop_u32.exit281.input_abs_get_fuzz.exit287_crit_edge: ; preds = %touchscreen_get_prop_u32.exit281
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_fuzz.exit287

cond.true.i285:                                   ; preds = %touchscreen_get_prop_u32.exit281
  call void @__sanitizer_cov_trace_pc() #7
  %fuzz.i284 = getelementptr %struct.input_absinfo, ptr %70, i32 %cond51, i32 3
  %71 = ptrtoint ptr %fuzz.i284 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fuzz.i284, align 4
  br label %input_abs_get_fuzz.exit287

input_abs_get_fuzz.exit287:                       ; preds = %cond.true.i285, %touchscreen_get_prop_u32.exit281.input_abs_get_fuzz.exit287_crit_edge
  %cond.i286 = phi i32 [ %72, %cond.true.i285 ], [ 0, %touchscreen_get_prop_u32.exit281.input_abs_get_fuzz.exit287_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i288) #5
  %73 = ptrtoint ptr %val.i288 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %val.i288, align 4, !annotation !50
  %call.i.i289 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %val.i288, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i289)
  %tobool.not.i290 = icmp eq i32 %call.i.i289, 0
  br i1 %tobool.not.i290, label %touchscreen_get_prop_u32.exit293.thread, label %touchscreen_get_prop_u32.exit293

touchscreen_get_prop_u32.exit293.thread:          ; preds = %input_abs_get_fuzz.exit287
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %val.i288 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i288, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i288) #5
  br label %if.then64

touchscreen_get_prop_u32.exit293:                 ; preds = %input_abs_get_fuzz.exit287
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i288) #5
  br i1 %tobool.not.i278, label %touchscreen_get_prop_u32.exit293.if.then64_crit_edge, label %touchscreen_get_prop_u32.exit293.if.end65_crit_edge

touchscreen_get_prop_u32.exit293.if.end65_crit_edge: ; preds = %touchscreen_get_prop_u32.exit293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

touchscreen_get_prop_u32.exit293.if.then64_crit_edge: ; preds = %touchscreen_get_prop_u32.exit293
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then64

if.then64:                                        ; preds = %touchscreen_get_prop_u32.exit293.if.then64_crit_edge, %touchscreen_get_prop_u32.exit293.thread
  %storemerge.i292334 = phi i32 [ %75, %touchscreen_get_prop_u32.exit293.thread ], [ %cond.i286, %touchscreen_get_prop_u32.exit293.if.then64_crit_edge ]
  %absbit.i294 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 8
  %div3.i.i295 = lshr i32 %cond51, 5
  %arrayidx.i.i296 = getelementptr i32, ptr %absbit.i294, i32 %div3.i.i295
  %76 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %arrayidx.i.i296, align 4
  %and.i.i297 = and i32 %cond51, 26
  %78 = shl nuw nsw i32 1, %and.i.i297
  %79 = and i32 %77, %78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i298 = icmp eq i32 %79, 0
  br i1 %tobool.not.i298, label %do.end.i300, label %if.end.i305

do.end.i300:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %dev1.i299 = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i299, ptr noundef nonnull @.str.11, i32 noundef %cond51) #8
  br label %if.end65

if.end.i305:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %absinfo2, align 8
  %minimum.i302 = getelementptr %struct.input_absinfo, ptr %81, i32 %cond51, i32 1
  %82 = ptrtoint ptr %minimum.i302 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %minimum.i302, align 4
  %maximum.i303 = getelementptr %struct.input_absinfo, ptr %81, i32 %cond51, i32 2
  %83 = ptrtoint ptr %maximum.i303 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %storemerge.i280, ptr %maximum.i303, align 4
  %fuzz3.i304 = getelementptr %struct.input_absinfo, ptr %81, i32 %cond51, i32 3
  %84 = ptrtoint ptr %fuzz3.i304 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %storemerge.i292334, ptr %fuzz3.i304, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.end.i305, %do.end.i300, %touchscreen_get_prop_u32.exit293.if.end65_crit_edge
  %tobool66.not = icmp eq ptr %prop, null
  br i1 %tobool66.not, label %if.end65.cleanup_crit_edge, label %if.end68

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end68:                                         ; preds = %if.end65
  %85 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i308 = icmp eq ptr %86, null
  br i1 %tobool.not.i308, label %if.end68.input_abs_get_max.exit312_crit_edge, label %cond.true.i310

if.end68.input_abs_get_max.exit312_crit_edge:     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit312

cond.true.i310:                                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i309 = getelementptr %struct.input_absinfo, ptr %86, i32 %cond, i32 2
  %87 = ptrtoint ptr %maximum.i309 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %maximum.i309, align 4
  br label %input_abs_get_max.exit312

input_abs_get_max.exit312:                        ; preds = %cond.true.i310, %if.end68.input_abs_get_max.exit312_crit_edge
  %cond.i311 = phi i32 [ %88, %cond.true.i310 ], [ 0, %if.end68.input_abs_get_max.exit312_crit_edge ]
  %89 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond.i311, ptr %prop, align 4
  %90 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %absinfo2, align 8
  %tobool.not.i314 = icmp eq ptr %91, null
  br i1 %tobool.not.i314, label %input_abs_get_max.exit312.input_abs_get_max.exit318_crit_edge, label %cond.true.i316

input_abs_get_max.exit312.input_abs_get_max.exit318_crit_edge: ; preds = %input_abs_get_max.exit312
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_get_max.exit318

cond.true.i316:                                   ; preds = %input_abs_get_max.exit312
  call void @__sanitizer_cov_trace_pc() #7
  %maximum.i315 = getelementptr %struct.input_absinfo, ptr %91, i32 %cond5, i32 2
  %92 = ptrtoint ptr %maximum.i315 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %maximum.i315, align 4
  br label %input_abs_get_max.exit318

input_abs_get_max.exit318:                        ; preds = %cond.true.i316, %input_abs_get_max.exit312.input_abs_get_max.exit318_crit_edge
  %cond.i317 = phi i32 [ %93, %cond.true.i316 ], [ 0, %input_abs_get_max.exit312.input_abs_get_max.exit318_crit_edge ]
  %max_y = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 1
  %94 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond.i317, ptr %max_y, align 4
  %call.i = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.8) #5
  %invert_x = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 2
  %frombool72 = zext i1 %call.i to i8
  %95 = ptrtoint ptr %invert_x to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %frombool72, ptr %invert_x, align 4
  br i1 %call.i, label %if.then75, label %input_abs_get_max.exit318.if.end81_crit_edge

input_abs_get_max.exit318.if.end81_crit_edge:     ; preds = %input_abs_get_max.exit318
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then75:                                        ; preds = %input_abs_get_max.exit318
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %absinfo2, align 8
  %minimum77 = getelementptr %struct.input_absinfo, ptr %97, i32 %cond, i32 1
  %98 = ptrtoint ptr %minimum77 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %minimum77, align 4
  %maximum78 = getelementptr %struct.input_absinfo, ptr %97, i32 %cond, i32 2
  %100 = ptrtoint ptr %maximum78 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %maximum78, align 4
  %sub79 = sub i32 %101, %99
  store i32 %sub79, ptr %maximum78, align 4
  store i32 0, ptr %minimum77, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %input_abs_get_max.exit318.if.end81_crit_edge
  %call.i319 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.9) #5
  %invert_y = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 3
  %frombool83 = zext i1 %call.i319 to i8
  %102 = ptrtoint ptr %invert_y to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %frombool83, ptr %invert_y, align 1
  br i1 %call.i319, label %if.then86, label %if.end81.if.end93_crit_edge

if.end81.if.end93_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %absinfo2, align 8
  %minimum89 = getelementptr %struct.input_absinfo, ptr %104, i32 %cond5, i32 1
  %105 = ptrtoint ptr %minimum89 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %minimum89, align 4
  %maximum90 = getelementptr %struct.input_absinfo, ptr %104, i32 %cond5, i32 2
  %107 = ptrtoint ptr %maximum90 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %maximum90, align 4
  %sub91 = sub i32 %108, %106
  store i32 %sub91, ptr %maximum90, align 4
  store i32 0, ptr %minimum89, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.end81.if.end93_crit_edge
  %call.i320 = call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.10) #5
  %swap_x_y = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 4
  %frombool95 = zext i1 %call.i320 to i8
  %109 = ptrtoint ptr %swap_x_y to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %frombool95, ptr %swap_x_y, align 2
  br i1 %call.i320, label %do.body, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %absinfo2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %absinfo2, align 8
  %arrayidx100 = getelementptr %struct.input_absinfo, ptr %111, i32 %cond
  %112 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %112)
  %__tmp.sroa.0.0.copyload = load i32, ptr %arrayidx100, align 4
  %__tmp.sroa.5.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 4
  %113 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx100.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %113)
  %__tmp.sroa.5.0.copyload = load i32, ptr %__tmp.sroa.5.0.arrayidx100.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 8
  %114 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx100.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %114)
  %__tmp.sroa.6.0.copyload = load i32, ptr %__tmp.sroa.6.0.arrayidx100.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 12
  %115 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx100.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %115)
  %__tmp.sroa.7.0.copyload = load i32, ptr %__tmp.sroa.7.0.arrayidx100.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 16
  %116 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx100.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %116)
  %__tmp.sroa.8.0.copyload = load i32, ptr %__tmp.sroa.8.0.arrayidx100.sroa_idx, align 4
  %__tmp.sroa.9.0.arrayidx100.sroa_idx = getelementptr inbounds i8, ptr %arrayidx100, i32 20
  %117 = ptrtoint ptr %__tmp.sroa.9.0.arrayidx100.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %117)
  %__tmp.sroa.9.0.copyload = load i32, ptr %__tmp.sroa.9.0.arrayidx100.sroa_idx, align 4
  %arrayidx104 = getelementptr %struct.input_absinfo, ptr %111, i32 %cond5
  %118 = call ptr @memcpy(ptr %arrayidx100, ptr %arrayidx104, i32 24)
  %119 = load ptr, ptr %absinfo2, align 8
  %arrayidx106 = getelementptr %struct.input_absinfo, ptr %119, i32 %cond5
  %120 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %__tmp.sroa.0.0.copyload, ptr %arrayidx106, align 4
  %__tmp.sroa.5.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 4
  %121 = ptrtoint ptr %__tmp.sroa.5.0.arrayidx106.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %__tmp.sroa.5.0.copyload, ptr %__tmp.sroa.5.0.arrayidx106.sroa_idx, align 4
  %__tmp.sroa.6.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 8
  %122 = ptrtoint ptr %__tmp.sroa.6.0.arrayidx106.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %__tmp.sroa.6.0.copyload, ptr %__tmp.sroa.6.0.arrayidx106.sroa_idx, align 4
  %__tmp.sroa.7.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 12
  %123 = ptrtoint ptr %__tmp.sroa.7.0.arrayidx106.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %__tmp.sroa.7.0.copyload, ptr %__tmp.sroa.7.0.arrayidx106.sroa_idx, align 4
  %__tmp.sroa.8.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 16
  %124 = ptrtoint ptr %__tmp.sroa.8.0.arrayidx106.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %__tmp.sroa.8.0.copyload, ptr %__tmp.sroa.8.0.arrayidx106.sroa_idx, align 4
  %__tmp.sroa.9.0.arrayidx106.sroa_idx = getelementptr inbounds i8, ptr %arrayidx106, i32 20
  %125 = ptrtoint ptr %__tmp.sroa.9.0.arrayidx106.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %__tmp.sroa.9.0.copyload, ptr %__tmp.sroa.9.0.arrayidx106.sroa_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end93.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @touchscreen_set_mt_pos(ptr nocapture noundef writeonly %pos, ptr nocapture noundef readonly %prop, i32 noundef %x, i32 noundef %y) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %invert_x.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 2
  %0 = ptrtoint ptr %invert_x.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert_x.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prop, align 4
  %sub.i = sub i32 %3, %x
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %x.addr.0 = phi i32 [ %x, %entry.if.end.i_crit_edge ], [ %sub.i, %if.then.i ]
  %invert_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 3
  %4 = ptrtoint ptr %invert_y.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert_y.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 1
  %6 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_y.i, align 4
  %sub3.i = sub i32 %7, %y
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %y.addr.0 = phi i32 [ %y, %if.end.i.if.end4.i_crit_edge ], [ %sub3.i, %if.then2.i ]
  %swap_x_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 4
  %8 = ptrtoint ptr %swap_x_y.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %swap_x_y.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool5.not.i, i32 %x.addr.0, i32 %y.addr.0
  %spec.select9 = select i1 %tobool5.not.i, i32 %y.addr.0, i32 %x.addr.0
  %conv = trunc i32 %spec.select to i16
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %pos, align 2
  %conv2 = trunc i32 %spec.select9 to i16
  %y3 = getelementptr inbounds %struct.input_mt_pos, ptr %pos, i32 0, i32 1
  %11 = ptrtoint ptr %y3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2, ptr %y3, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @touchscreen_report_pos(ptr noundef %input, ptr nocapture noundef readonly %prop, i32 noundef %x, i32 noundef %y, i1 noundef zeroext %multitouch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %invert_x.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 2
  %0 = ptrtoint ptr %invert_x.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert_x.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prop, align 4
  %sub.i = sub i32 %3, %x
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %x.addr.0 = phi i32 [ %x, %entry.if.end.i_crit_edge ], [ %sub.i, %if.then.i ]
  %invert_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 3
  %4 = ptrtoint ptr %invert_y.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invert_y.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 1
  %6 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_y.i, align 4
  %sub3.i = sub i32 %7, %y
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %y.addr.0 = phi i32 [ %y, %if.end.i.if.end4.i_crit_edge ], [ %sub3.i, %if.then2.i ]
  %swap_x_y.i = getelementptr inbounds %struct.touchscreen_properties, ptr %prop, i32 0, i32 4
  %8 = ptrtoint ptr %swap_x_y.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %swap_x_y.i, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  %spec.select = select i1 %tobool5.not.i, i32 %x.addr.0, i32 %y.addr.0
  %spec.select9 = select i1 %tobool5.not.i, i32 %y.addr.0, i32 %x.addr.0
  %cond = select i1 %multitouch, i32 53, i32 0
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %cond, i32 noundef %spec.select) #5
  %cond2 = select i1 %multitouch, i32 54, i32 1
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %cond2, i32 noundef %spec.select9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !36, !37, !38, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen.c", i32 81, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen.c", i32 84, i32 48}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen.c", i32 88, i32 48}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen.c", i32 94, i32 47}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen.c", i32 97, i32 48}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen.c", i32 101, i32 48}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen.c", i32 109, i32 7}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen.c", i32 113, i32 8}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen.c", i32 126, i32 34}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/touchscreen.c", i32 134, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/touchscreen.c", i32 142, i32 34}
!22 = !{ptr @__ksymtab_touchscreen_parse_properties, !23, !"__ksymtab_touchscreen_parse_properties", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen.c", i32 146, i32 1}
!24 = !{ptr @__ksymtab_touchscreen_set_mt_pos, !25, !"__ksymtab_touchscreen_set_mt_pos", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen.c", i32 181, i32 1}
!26 = !{ptr @__ksymtab_touchscreen_report_pos, !27, !"__ksymtab_touchscreen_report_pos", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen.c", i32 204, i32 1}
!28 = !{ptr @__UNIQUE_ID_file210, !29, !"__UNIQUE_ID_file210", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen.c", i32 206, i32 1}
!30 = !{ptr @__UNIQUE_ID_license211, !29, !"__UNIQUE_ID_license211", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_description212, !32, !"__UNIQUE_ID_description212", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen.c", i32 207, i32 1}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen.c", i32 40, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @touchscreen_set_params._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @touchscreen_set_params._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
!51 = !{i8 0, i8 2}
