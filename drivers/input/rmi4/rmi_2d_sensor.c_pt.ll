; ModuleID = '/llk/IR_all_yes/drivers/input/rmi4/rmi_2d_sensor.c_pt.bc'
source_filename = "../drivers/input/rmi4/rmi_2d_sensor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rmi_2d_sensor_abs_process\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_2d_sensor_abs_process\09\09\09\09"
module asm "\09.long\09__crc_rmi_2d_sensor_abs_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_2d_sensor_abs_process:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_2d_sensor_abs_process\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_2d_sensor_abs_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_2d_sensor_abs_report\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_2d_sensor_abs_report\09\09\09\09"
module asm "\09.long\09__crc_rmi_2d_sensor_abs_report\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_2d_sensor_abs_report:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_2d_sensor_abs_report\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_2d_sensor_abs_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_2d_sensor_rel_report\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_2d_sensor_rel_report\09\09\09\09"
module asm "\09.long\09__crc_rmi_2d_sensor_rel_report\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_2d_sensor_rel_report:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_2d_sensor_rel_report\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_2d_sensor_rel_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_2d_sensor_configure_input\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_2d_sensor_configure_input\09\09\09\09"
module asm "\09.long\09__crc_rmi_2d_sensor_configure_input\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_2d_sensor_configure_input:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_2d_sensor_configure_input\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_2d_sensor_configure_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rmi_2d_sensor_of_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_rmi_2d_sensor_of_probe\09\09\09\09"
module asm "\09.long\09__crc_rmi_2d_sensor_of_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rmi_2d_sensor_of_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22rmi_2d_sensor_of_probe\22\09\09\09\09\09"
module asm "__kstrtabns_rmi_2d_sensor_of_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rmi_2d_axis_alignment = type { i8, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct.rmi_2d_sensor = type { %struct.rmi_2d_axis_alignment, ptr, ptr, i8, ptr, i32, i16, i16, i16, i16, i8, ptr, i32, i32, i8, i32, ptr, ptr, [32 x i8], i8, i8, i8, i8, i32, i32 }
%struct.rmi_2d_sensor_abs_object = type { i32, i32, i16, i16, i8, i8, i8 }
%struct.input_mt_pos = type { i16, i16 }
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
%struct.rmi_function = type { %struct.rmi_function_descriptor, ptr, %struct.device, %struct.list_head, i32, [6 x i32], i32, [0 x i32] }
%struct.rmi_function_descriptor = type { i16, i16, i16, i16, i8, i8, i8 }
%struct.rmi_driver_data = type { %struct.list_head, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, i8, i8, i8, i8, %struct.mutex, %struct.rmi4_attn_data, %struct.anon.72 }
%struct.rmi4_attn_data = type { i32, i32, ptr }
%struct.anon.72 = type { %union.anon.73, [16 x %struct.rmi4_attn_data] }
%union.anon.73 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.rmi_2d_sensor_platform_data = type { %struct.rmi_2d_axis_alignment, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32 }

@__kstrtab_rmi_2d_sensor_abs_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_2d_sensor_abs_process = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_2d_sensor_abs_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_2d_sensor_abs_process to i32), ptr @__kstrtab_rmi_2d_sensor_abs_process, ptr @__kstrtabns_rmi_2d_sensor_abs_process }, section "___ksymtab_gpl+rmi_2d_sensor_abs_process", align 4
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: obj[%d]: type: 0x%02x X: %d Y: %d Z: %d WX: %d WY: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.rmi_2d_sensor_abs_report = private unnamed_addr constant [25 x i8] c"rmi_2d_sensor_abs_report\00", align 1
@__kstrtab_rmi_2d_sensor_abs_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_2d_sensor_abs_report = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_2d_sensor_abs_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_2d_sensor_abs_report to i32), ptr @__kstrtab_rmi_2d_sensor_abs_report, ptr @__kstrtabns_rmi_2d_sensor_abs_report }, section "___ksymtab_gpl+rmi_2d_sensor_abs_report", align 4
@__kstrtab_rmi_2d_sensor_rel_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_2d_sensor_rel_report = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_2d_sensor_rel_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_2d_sensor_rel_report to i32), ptr @__kstrtab_rmi_2d_sensor_rel_report, ptr @__kstrtabns_rmi_2d_sensor_rel_report }, section "___ksymtab_gpl+rmi_2d_sensor_rel_report", align 4
@__kstrtab_rmi_2d_sensor_configure_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_2d_sensor_configure_input = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_2d_sensor_configure_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_2d_sensor_configure_input to i32), ptr @__kstrtab_rmi_2d_sensor_configure_input, ptr @__kstrtabns_rmi_2d_sensor_configure_input }, section "___ksymtab_gpl+rmi_2d_sensor_configure_input", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"touchscreen-swapped-x-y\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-x\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"touchscreen-inverted-y\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syna,clip-x-low\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"syna,clip-y-low\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syna,clip-x-high\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syna,clip-y-high\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"syna,offset-x\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"syna,offset-y\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"syna,delta-x-threshold\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"syna,delta-y-threshold\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syna,sensor-type\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-x-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"touchscreen-y-mm\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"syna,disable-report-mask\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"syna,rezero-wait-ms\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_rmi_2d_sensor_of_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_rmi_2d_sensor_of_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_rmi_2d_sensor_of_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rmi_2d_sensor_of_probe to i32), ptr @__kstrtab_rmi_2d_sensor_of_probe, ptr @__kstrtabns_rmi_2d_sensor_of_probe }, section "___ksymtab_gpl+rmi_2d_sensor_of_probe", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 106, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 232, i32 7 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 235, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 238, i32 7 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 240, i32 47 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 246, i32 47 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 252, i32 47 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 258, i32 47 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 264, i32 47 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 270, i32 47 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 276, i32 47 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 283, i32 47 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 291, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 295, i32 47 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 301, i32 47 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 308, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [38 x i8] c"../drivers/input/rmi4/rmi_2d_sensor.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 314, i32 47 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_rmi_2d_sensor_abs_process, ptr @__ksymtab_rmi_2d_sensor_abs_report, ptr @__ksymtab_rmi_2d_sensor_configure_input, ptr @__ksymtab_rmi_2d_sensor_of_probe, ptr @__ksymtab_rmi_2d_sensor_rel_report, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rmi_2d_sensor_abs_process(ptr nocapture noundef readonly %sensor, ptr nocapture noundef %obj, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %obj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %flip_x = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 1
  %2 = ptrtoint ptr %flip_x to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flip_x, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %max_x = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 7
  %4 = ptrtoint ptr %max_x to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_x, align 2
  %x = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 2
  %6 = ptrtoint ptr %x to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %x, align 4
  %sub = sub i16 %5, %7
  store i16 %sub, ptr %x, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %flip_y = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 2
  %8 = ptrtoint ptr %flip_y to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flip_y, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.then8

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %max_y = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 9
  %10 = ptrtoint ptr %max_y to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_y, align 2
  %y = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 3
  %12 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %y, align 2
  %sub11 = sub i16 %11, %13
  store i16 %sub11, ptr %y, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end6.if.end14_crit_edge
  %14 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sensor, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %do.body

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %x17 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 2
  %16 = ptrtoint ptr %x17 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %x17, align 4
  %y18 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 3
  %18 = ptrtoint ptr %y18 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %y18, align 2
  store i16 %19, ptr %x17, align 4
  store i16 %17, ptr %y18, align 2
  br label %if.end21

if.end21:                                         ; preds = %do.body, %if.end14.if.end21_crit_edge
  %offset_x = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 7
  %20 = ptrtoint ptr %offset_x to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %offset_x, align 2
  %x23 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 2
  %22 = ptrtoint ptr %x23 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %x23, align 4
  %add = add i16 %23, %21
  store i16 %add, ptr %x23, align 4
  %offset_y = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 8
  %24 = ptrtoint ptr %offset_y to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %offset_y, align 2
  %y27 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 3
  %26 = ptrtoint ptr %y27 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %y27, align 2
  %add29 = add i16 %27, %25
  store i16 %add29, ptr %y27, align 2
  %clip_x_low = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 3
  %28 = ptrtoint ptr %clip_x_low to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %clip_x_low, align 2
  %30 = tail call i16 @llvm.umax.i16(i16 %29, i16 %add)
  %31 = ptrtoint ptr %x23 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %x23, align 4
  %clip_y_low = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 4
  %32 = ptrtoint ptr %clip_y_low to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %clip_y_low, align 2
  %34 = tail call i16 @llvm.umax.i16(i16 %33, i16 %add29)
  %35 = ptrtoint ptr %y27 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %y27, align 2
  %clip_x_high = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 5
  %36 = ptrtoint ptr %clip_x_high to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %clip_x_high, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool54.not = icmp eq i16 %37, 0
  br i1 %tobool54.not, label %if.end21.if.end71_crit_edge, label %if.then55

if.end21.if.end71_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

if.then55:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %max_x56 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 7
  %38 = ptrtoint ptr %max_x56 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %max_x56, align 2
  %40 = tail call i16 @llvm.umin.i16(i16 %39, i16 %30)
  %41 = ptrtoint ptr %x23 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %x23, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then55, %if.end21.if.end71_crit_edge
  %clip_y_high = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 6
  %42 = ptrtoint ptr %clip_y_high to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %clip_y_high, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool72.not = icmp eq i16 %43, 0
  br i1 %tobool72.not, label %if.end71.if.end89_crit_edge, label %if.then73

if.end71.if.end89_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %max_y74 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 9
  %44 = ptrtoint ptr %max_y74 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %max_y74, align 2
  %46 = tail call i16 @llvm.umin.i16(i16 %45, i16 %34)
  %47 = ptrtoint ptr %y27 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %y27, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.then73, %if.end71.if.end89_crit_edge
  %48 = ptrtoint ptr %x23 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %x23, align 4
  %tracking_pos = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 1
  %50 = ptrtoint ptr %tracking_pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tracking_pos, align 4
  %arrayidx = getelementptr %struct.input_mt_pos, ptr %51, i32 %slot
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %49, ptr %arrayidx, align 2
  %53 = ptrtoint ptr %y27 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %y27, align 2
  %55 = load ptr, ptr %tracking_pos, align 4
  %y95 = getelementptr %struct.input_mt_pos, ptr %55, i32 %slot, i32 1
  %56 = ptrtoint ptr %y95 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %54, ptr %y95, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_2d_sensor_abs_report(ptr nocapture noundef readonly %sensor, ptr nocapture noundef %obj, i32 noundef %slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input2 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 16
  %0 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input2, align 4
  %kernel_tracking = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 3
  %2 = ptrtoint ptr %kernel_tracking to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %kernel_tracking, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tracking_slots = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 2
  %4 = ptrtoint ptr %tracking_slots to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tracking_slots, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %slot
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slot.sink = phi i32 [ %7, %if.then ], [ %slot, %entry.if.end_crit_edge ]
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %slot.sink) #5
  %mt_tool = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 1
  %8 = ptrtoint ptr %mt_tool to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mt_tool, align 4
  %10 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %obj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp ne i32 %11, 0
  %call = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef %9, i1 noundef zeroext %cmp) #5
  %12 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %obj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not = icmp eq i32 %13, 0
  br i1 %cmp4.not, label %if.end.if.end84_crit_edge, label %if.then5

if.end.if.end84_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then5:                                         ; preds = %if.end
  %tracking_pos = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 1
  %14 = ptrtoint ptr %tracking_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tracking_pos, align 4
  %arrayidx6 = getelementptr %struct.input_mt_pos, ptr %15, i32 %slot
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx6, align 2
  %x7 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 2
  %18 = ptrtoint ptr %x7 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %x7, align 4
  %19 = load ptr, ptr %tracking_pos, align 4
  %y = getelementptr %struct.input_mt_pos, ptr %19, i32 %slot, i32 1
  %20 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %y, align 2
  %y10 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 3
  %22 = ptrtoint ptr %y10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %y10, align 2
  %23 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sensor, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %if.then5.if.end15_crit_edge, label %do.body

if.then5.if.end15_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %wx = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 5
  %25 = ptrtoint ptr %wx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %wx, align 1
  %wy = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 6
  %27 = ptrtoint ptr %wy to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %wy, align 2
  store i8 %28, ptr %wx, align 1
  store i8 %26, ptr %wy, align 2
  br label %if.end15

if.end15:                                         ; preds = %do.body, %if.then5.if.end15_crit_edge
  %wx16 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 5
  %29 = ptrtoint ptr %wx16 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wx16, align 1
  %wy17 = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 6
  %31 = ptrtoint ptr %wy17 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %wy17, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp19 = icmp ugt i8 %30, %32
  %conv20 = zext i1 %cmp19 to i32
  %33 = tail call i8 @llvm.umax.i8(i8 %30, i8 %32)
  %cond = zext i8 %33 to i32
  %34 = tail call i8 @llvm.umin.i8(i8 %30, i8 %32)
  %cond41 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp43 = icmp eq i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp47 = icmp eq i8 %33, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp54 = icmp eq i8 %34, 0
  %35 = select i1 %cmp43, i1 %cmp54, i1 false
  %minor.0 = select i1 %35, i32 1, i32 %cond41
  %36 = select i1 %cmp43, i1 %cmp47, i1 false
  %major.0 = select i1 %36, i32 1, i32 %cond
  %37 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input2, align 4
  %conv63 = zext i16 %17 to i32
  tail call void @input_event(ptr noundef %38, i32 noundef 3, i32 noundef 53, i32 noundef %conv63) #5
  %39 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input2, align 4
  %41 = ptrtoint ptr %y10 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %y10, align 2
  %conv66 = zext i16 %42 to i32
  tail call void @input_event(ptr noundef %40, i32 noundef 3, i32 noundef 54, i32 noundef %conv66) #5
  %43 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input2, align 4
  tail call void @input_event(ptr noundef %44, i32 noundef 3, i32 noundef 52, i32 noundef %conv20) #5
  %45 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %input2, align 4
  %z = getelementptr inbounds %struct.rmi_2d_sensor_abs_object, ptr %obj, i32 0, i32 4
  %47 = ptrtoint ptr %z to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %z, align 4
  %conv69 = zext i8 %48 to i32
  tail call void @input_event(ptr noundef %46, i32 noundef 3, i32 noundef 58, i32 noundef %conv69) #5
  %49 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %input2, align 4
  tail call void @input_event(ptr noundef %50, i32 noundef 3, i32 noundef 48, i32 noundef %major.0) #5
  %51 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input2, align 4
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 49, i32 noundef %minor.0) #5
  %53 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input2, align 4
  %dev = getelementptr inbounds %struct.input_dev, ptr %54, i32 0, i32 40
  %55 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %obj, align 4
  %57 = ptrtoint ptr %x7 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %x7, align 4
  %conv75 = zext i16 %58 to i32
  %59 = ptrtoint ptr %y10 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %y10, align 2
  %conv77 = zext i16 %60 to i32
  %61 = ptrtoint ptr %z to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %z, align 4
  %conv79 = zext i8 %62 to i32
  %63 = ptrtoint ptr %wx16 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %wx16, align 1
  %conv81 = zext i8 %64 to i32
  %65 = ptrtoint ptr %wy17 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %wy17, align 2
  %conv83 = zext i8 %66 to i32
  tail call void (i32, ptr, ptr, ...) @rmi_dbg(i32 noundef 8, ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rmi_2d_sensor_abs_report, i32 noundef %slot, i32 noundef %56, i32 noundef %conv75, i32 noundef %conv77, i32 noundef %conv79, i32 noundef %conv81, i32 noundef %conv83) #5
  br label %if.end84

if.end84:                                         ; preds = %if.end15, %if.end.if.end84_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmi_dbg(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmi_2d_sensor_rel_report(ptr nocapture noundef readonly %sensor, i32 noundef %x, i32 noundef %y) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %x, i32 -128)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 127)
  %2 = tail call i32 @llvm.smax.i32(i32 %y, i32 -128)
  %3 = tail call i32 @llvm.smin.i32(i32 %2, i32 127)
  %flip_x = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %flip_x to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flip_x, align 1, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %sub = sub nsw i32 0, %1
  %minmaxop = select i1 %tobool.not, i32 %0, i32 %sub
  %x.addr.0 = tail call i32 @llvm.smin.i32(i32 %minmaxop, i32 127)
  %flip_y = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 2
  %6 = ptrtoint ptr %flip_y to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flip_y, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool26.not = icmp eq i8 %7, 0
  %sub28 = sub nsw i32 0, %3
  %minmaxop68 = select i1 %tobool26.not, i32 %2, i32 %sub28
  %y.addr.0 = tail call i32 @llvm.smin.i32(i32 %minmaxop68, i32 127)
  %8 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sensor, align 2, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool36.not = icmp eq i8 %9, 0
  %y.addr.1 = select i1 %tobool36.not, i32 %y.addr.0, i32 %x.addr.0
  %x.addr.1 = select i1 %tobool36.not, i32 %x.addr.0, i32 %y.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x.addr.1)
  %tobool39.not = icmp eq i32 %x.addr.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %y.addr.1)
  %tobool40.not = icmp eq i32 %y.addr.1, 0
  %or.cond = select i1 %tobool39.not, i1 %tobool40.not, i1 false
  br i1 %or.cond, label %entry.if.end43_crit_edge, label %if.then41

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then41:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %input = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 16
  %10 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %11, i32 noundef 2, i32 noundef 0, i32 noundef %x.addr.1) #5
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 2, i32 noundef 1, i32 noundef %y.addr.1) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %entry.if.end43_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_2d_sensor_configure_input(ptr nocapture noundef readonly %fn, ptr noundef %sensor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmi_dev1 = getelementptr inbounds %struct.rmi_function, ptr %fn, i32 0, i32 1
  %0 = ptrtoint ptr %rmi_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmi_dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %input = getelementptr inbounds %struct.rmi_driver_data, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %input3 = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 16
  %6 = ptrtoint ptr %input3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %input3, align 4
  %report_abs.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 19
  %7 = ptrtoint ptr %report_abs.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %report_abs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.if.end84.i_crit_edge, label %if.then.i

if.end.if.end84.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84.i

if.then.i:                                        ; preds = %if.end
  %clip_x_low.i = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 3
  %9 = ptrtoint ptr %clip_x_low.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %clip_x_low.i, align 4
  %min_x.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 6
  %11 = ptrtoint ptr %min_x.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %min_x.i, align 4
  %clip_x_high.i = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 5
  %12 = ptrtoint ptr %clip_x_high.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %clip_x_high.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool3.not.i = icmp eq i16 %13, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_x5.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 7
  %14 = ptrtoint ptr %max_x5.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %max_x5.i, align 2
  %16 = tail call i16 @llvm.umin.i16(i16 %15, i16 %13) #5
  %17 = ptrtoint ptr %max_x5.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %max_x5.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %clip_y_low.i = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 4
  %18 = ptrtoint ptr %clip_y_low.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %clip_y_low.i, align 2
  %min_y.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 8
  %20 = ptrtoint ptr %min_y.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %min_y.i, align 4
  %clip_y_high.i = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %sensor, i32 0, i32 6
  %21 = ptrtoint ptr %clip_y_high.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %clip_y_high.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool16.not.i = icmp eq i16 %22, 0
  br i1 %tobool16.not.i, label %if.end.i.if.end34.i_crit_edge, label %if.then17.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34.i

if.then17.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %max_y18.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 9
  %23 = ptrtoint ptr %max_y18.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %max_y18.i, align 2
  %25 = tail call i16 @llvm.umin.i16(i16 %24, i16 %22) #5
  %26 = ptrtoint ptr %max_y18.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %max_y18.i, align 2
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then17.i, %if.end.i.if.end34.i_crit_edge
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %evbit.i) #5
  %max_x35.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 7
  %27 = ptrtoint ptr %max_x35.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %max_x35.i, align 2
  %conv36.i = zext i16 %28 to i32
  %max_y37.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 9
  %29 = ptrtoint ptr %max_y37.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %max_y37.i, align 2
  %conv38.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sensor, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool40.not.i = icmp eq i8 %32, 0
  %spec.select.i = select i1 %tobool40.not.i, i32 %conv38.i, i32 %conv36.i
  %spec.select159.i = select i1 %tobool40.not.i, i32 %conv36.i, i32 %conv38.i
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 53, i32 noundef 0, i32 noundef %spec.select159.i, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 54, i32 noundef 0, i32 noundef %spec.select.i, i32 noundef 0, i32 noundef 0) #5
  %x_mm.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 21
  %33 = ptrtoint ptr %x_mm.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %x_mm.i, align 2
  %conv43.i = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool44.not.i = icmp eq i8 %34, 0
  br i1 %tobool44.not.i, label %if.end34.i.if.end75.i_crit_edge, label %land.lhs.true.i

if.end34.i.if.end75.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %y_mm.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 22
  %35 = ptrtoint ptr %y_mm.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %y_mm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool46.not.i = icmp eq i8 %36, 0
  br i1 %tobool46.not.i, label %land.lhs.true.i.if.end75.i_crit_edge, label %if.then47.i

land.lhs.true.i.if.end75.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

if.then47.i:                                      ; preds = %land.lhs.true.i
  %conv45.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %max_x35.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %max_x35.i, align 2
  %conv49.i = zext i16 %38 to i32
  %39 = ptrtoint ptr %min_x.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %min_x.i, align 4
  %conv51.i = zext i16 %40 to i32
  %sub.i = sub nsw i32 %conv49.i, %conv51.i
  %div.i = sdiv i32 %sub.i, %conv43.i
  %41 = ptrtoint ptr %max_y37.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_y37.i, align 2
  %conv55.i = zext i16 %42 to i32
  %43 = ptrtoint ptr %min_y.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %min_y.i, align 4
  %conv57.i = zext i16 %44 to i32
  %sub58.i = sub nsw i32 %conv55.i, %conv57.i
  %div61.i = sdiv i32 %sub58.i, %conv45.i
  %45 = ptrtoint ptr %sensor to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %sensor, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool64.not.i = icmp eq i8 %46, 0
  %spec.select160.i = select i1 %tobool64.not.i, i32 %div61.i, i32 %div.i
  %spec.select161.i = select i1 %tobool64.not.i, i32 %div.i, i32 %div61.i
  tail call void @input_alloc_absinfo(ptr noundef nonnull %5) #5
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 26
  %47 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.then47.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.then47.i.input_abs_set_res.exit.i_crit_edge:   ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select161.i, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.then47.i.input_abs_set_res.exit.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %5) #5
  %50 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i164.i = icmp eq ptr %51, null
  br i1 %tobool.not.i164.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit167.i_crit_edge, label %if.then.i166.i

input_abs_set_res.exit.i.input_abs_set_res.exit167.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit167.i

if.then.i166.i:                                   ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i165.i = getelementptr %struct.input_absinfo, ptr %51, i32 1, i32 5
  %52 = ptrtoint ptr %resolution.i165.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.select160.i, ptr %resolution.i165.i, align 4
  br label %input_abs_set_res.exit167.i

input_abs_set_res.exit167.i:                      ; preds = %if.then.i166.i, %input_abs_set_res.exit.i.input_abs_set_res.exit167.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %5) #5
  %53 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i169.i = icmp eq ptr %54, null
  br i1 %tobool.not.i169.i, label %input_abs_set_res.exit167.i.input_abs_set_res.exit172.i_crit_edge, label %if.then.i171.i

input_abs_set_res.exit167.i.input_abs_set_res.exit172.i_crit_edge: ; preds = %input_abs_set_res.exit167.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit172.i

if.then.i171.i:                                   ; preds = %input_abs_set_res.exit167.i
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i170.i = getelementptr %struct.input_absinfo, ptr %54, i32 53, i32 5
  %55 = ptrtoint ptr %resolution.i170.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select161.i, ptr %resolution.i170.i, align 4
  br label %input_abs_set_res.exit172.i

input_abs_set_res.exit172.i:                      ; preds = %if.then.i171.i, %input_abs_set_res.exit167.i.input_abs_set_res.exit172.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %5) #5
  %56 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i174.i = icmp eq ptr %57, null
  br i1 %tobool.not.i174.i, label %input_abs_set_res.exit172.i.input_abs_set_res.exit177.i_crit_edge, label %if.then.i176.i

input_abs_set_res.exit172.i.input_abs_set_res.exit177.i_crit_edge: ; preds = %input_abs_set_res.exit172.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %input_abs_set_res.exit177.i

if.then.i176.i:                                   ; preds = %input_abs_set_res.exit172.i
  call void @__sanitizer_cov_trace_pc() #7
  %resolution.i175.i = getelementptr %struct.input_absinfo, ptr %57, i32 54, i32 5
  %58 = ptrtoint ptr %resolution.i175.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select160.i, ptr %resolution.i175.i, align 4
  br label %input_abs_set_res.exit177.i

input_abs_set_res.exit177.i:                      ; preds = %if.then.i176.i, %input_abs_set_res.exit172.i.input_abs_set_res.exit177.i_crit_edge
  %dmax.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 5
  %59 = ptrtoint ptr %dmax.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dmax.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool71.not.i = icmp eq i32 %60, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %input_abs_set_res.exit177.i.if.end75.i_crit_edge

input_abs_set_res.exit177.i.if.end75.i_crit_edge: ; preds = %input_abs_set_res.exit177.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75.i

if.then72.i:                                      ; preds = %input_abs_set_res.exit177.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul nsw i32 %spec.select161.i, 10
  %61 = ptrtoint ptr %dmax.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.i, ptr %dmax.i, align 4
  br label %if.end75.i

if.end75.i:                                       ; preds = %if.then72.i, %input_abs_set_res.exit177.i.if.end75.i_crit_edge, %land.lhs.true.i.if.end75.i_crit_edge, %if.end34.i.if.end75.i_crit_edge
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 48, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 49, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 52, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %5, i32 noundef 55, i32 noundef 0, i32 noundef 15, i32 noundef 0, i32 noundef 0) #5
  %sensor_type.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 15
  %62 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sensor_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %63)
  %cmp76.i = icmp eq i32 %63, 2
  %.162.i = select i1 %cmp76.i, i32 1, i32 2
  %kernel_tracking.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 3
  %64 = ptrtoint ptr %kernel_tracking.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %kernel_tracking.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool80.not.i = icmp eq i8 %65, 0
  %or.i = or i32 %.162.i, 8
  %input_flags.1.i = select i1 %tobool80.not.i, i32 %.162.i, i32 %or.i
  %nbr_fingers.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 10
  %66 = ptrtoint ptr %nbr_fingers.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %nbr_fingers.i, align 4
  %conv83.i = zext i8 %67 to i32
  %call.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %5, i32 noundef %conv83.i, i32 noundef %input_flags.1.i) #5
  br label %if.end84.i

if.end84.i:                                       ; preds = %if.end75.i, %if.end.if.end84.i_crit_edge
  %report_rel.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 20
  %68 = ptrtoint ptr %report_rel.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %report_rel.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool85.not.i = icmp eq i8 %69, 0
  br i1 %tobool85.not.i, label %if.end84.i.if.end92.i_crit_edge, label %if.then86.i

if.end84.i.if.end92.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i

if.then86.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #7
  %evbit87.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %evbit87.i) #5
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %relbit.i) #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %relbit.i) #5
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then86.i, %if.end84.i.if.end92.i_crit_edge
  %topbuttonpad.i = getelementptr inbounds %struct.rmi_2d_sensor, ptr %sensor, i32 0, i32 14
  %70 = ptrtoint ptr %topbuttonpad.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %topbuttonpad.i, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool93.not.i = icmp eq i8 %71, 0
  br i1 %tobool93.not.i, label %if.end92.i.cleanup_crit_edge, label %if.then94.i

if.end92.i.cleanup_crit_edge:                     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 4, ptr noundef %propbit.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then94.i, %if.end92.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end92.i.cleanup_crit_edge ], [ 0, %if.then94.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rmi_2d_sensor_of_probe(ptr noundef %dev, ptr noundef %pdata) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !56
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null) #5
  %tobool.i = icmp ne ptr %call.i, null
  %frombool = zext i1 %tobool.i to i8
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %pdata, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i131 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.i132 = icmp ne ptr %call.i131, null
  %flip_x = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 1
  %frombool5 = zext i1 %tobool.i132 to i8
  %6 = ptrtoint ptr %flip_x to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool5, ptr %flip_x, align 1
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i133 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %tobool.i134 = icmp ne ptr %call.i133, null
  %flip_y = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 2
  %frombool9 = zext i1 %tobool.i134 to i8
  %9 = ptrtoint ptr %flip_y to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool9, ptr %flip_y, align 2
  %call10 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.4, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i16
  %clip_x_low = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 3
  %12 = ptrtoint ptr %clip_x_low to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %clip_x_low, align 4
  %call12 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.5, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %conv16 = trunc i32 %14 to i16
  %clip_y_low = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 4
  %15 = ptrtoint ptr %clip_y_low to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv16, ptr %clip_y_low, align 2
  %call18 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.6, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %conv22 = trunc i32 %17 to i16
  %clip_x_high = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 5
  %18 = ptrtoint ptr %clip_x_high to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv22, ptr %clip_x_high, align 4
  %call24 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.7, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %conv28 = trunc i32 %20 to i16
  %clip_y_high = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 6
  %21 = ptrtoint ptr %clip_y_high to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv28, ptr %clip_y_high, align 2
  %call30 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.8, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv34 = trunc i32 %23 to i16
  %offset_x = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 7
  %24 = ptrtoint ptr %offset_x to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv34, ptr %offset_x, align 4
  %call36 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.9, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %conv40 = trunc i32 %26 to i16
  %offset_y = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 8
  %27 = ptrtoint ptr %offset_y to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv40, ptr %offset_y, align 2
  %call42 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.10, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %conv46 = trunc i32 %29 to i8
  %delta_x_threshold = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 9
  %30 = ptrtoint ptr %delta_x_threshold to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv46, ptr %delta_x_threshold, align 4
  %call48 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.11, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %conv52 = trunc i32 %32 to i8
  %delta_y_threshold = getelementptr inbounds %struct.rmi_2d_axis_alignment, ptr %pdata, i32 0, i32 10
  %33 = ptrtoint ptr %delta_y_threshold to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv52, ptr %delta_y_threshold, align 1
  %sensor_type = getelementptr inbounds %struct.rmi_2d_sensor_platform_data, ptr %pdata, i32 0, i32 1
  %call54 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef %sensor_type, ptr noundef nonnull @.str.12, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %if.end51
  %call58 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.13, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %x_mm = getelementptr inbounds %struct.rmi_2d_sensor_platform_data, ptr %pdata, i32 0, i32 2
  %36 = ptrtoint ptr %x_mm to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %x_mm, align 4
  %call62 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.14, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end65:                                         ; preds = %if.end61
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %y_mm = getelementptr inbounds %struct.rmi_2d_sensor_platform_data, ptr %pdata, i32 0, i32 3
  %39 = ptrtoint ptr %y_mm to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %y_mm, align 4
  %call66 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.15, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end69:                                         ; preds = %if.end65
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  %disable_report_mask = getelementptr inbounds %struct.rmi_2d_sensor_platform_data, ptr %pdata, i32 0, i32 4
  %42 = ptrtoint ptr %disable_report_mask to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %disable_report_mask, align 4
  %call70 = call i32 @rmi_of_property_read_u32(ptr noundef %dev, ptr noundef nonnull %val, ptr noundef nonnull @.str.16, i1 noundef zeroext true) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %conv74 = trunc i32 %44 to i16
  %rezero_wait = getelementptr inbounds %struct.rmi_2d_sensor_platform_data, ptr %pdata, i32 0, i32 5
  %45 = ptrtoint ptr %rezero_wait to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv74, ptr %rezero_wait, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end69.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ %call10, %entry.cleanup_crit_edge ], [ %call12, %if.end.cleanup_crit_edge ], [ %call18, %if.end15.cleanup_crit_edge ], [ %call24, %if.end21.cleanup_crit_edge ], [ %call30, %if.end27.cleanup_crit_edge ], [ %call36, %if.end33.cleanup_crit_edge ], [ %call42, %if.end39.cleanup_crit_edge ], [ %call48, %if.end45.cleanup_crit_edge ], [ %call54, %if.end51.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call66, %if.end65.cleanup_crit_edge ], [ %call70, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rmi_of_property_read_u32(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__ksymtab_rmi_2d_sensor_abs_process, !1, !"__ksymtab_rmi_2d_sensor_abs_process", i1 false, i1 false}
!1 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 64, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 106, i32 4}
!4 = !{ptr @__func__.rmi_2d_sensor_abs_report, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 107, i32 4}
!6 = !{ptr @__ksymtab_rmi_2d_sensor_abs_report, !7, !"__ksymtab_rmi_2d_sensor_abs_report", i1 false, i1 false}
!7 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 111, i32 1}
!8 = !{ptr @__ksymtab_rmi_2d_sensor_rel_report, !9, !"__ksymtab_rmi_2d_sensor_rel_report", i1 false, i1 false}
!9 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 134, i32 1}
!10 = !{ptr @__ksymtab_rmi_2d_sensor_configure_input, !11, !"__ksymtab_rmi_2d_sensor_configure_input", i1 false, i1 false}
!11 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 222, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 232, i32 7}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 235, i32 7}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 238, i32 7}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 240, i32 47}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 246, i32 47}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 252, i32 47}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 258, i32 47}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 264, i32 47}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 270, i32 47}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 276, i32 47}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 283, i32 47}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 291, i32 4}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 295, i32 47}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 301, i32 47}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 308, i32 5}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 314, i32 47}
!44 = !{ptr @__ksymtab_rmi_2d_sensor_of_probe, !45, !"__ksymtab_rmi_2d_sensor_of_probe", i1 false, i1 false}
!45 = !{!"../drivers/input/rmi4/rmi_2d_sensor.c", i32 330, i32 1}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"auto-init"}
