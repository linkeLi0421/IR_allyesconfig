; ModuleID = '/llk/IR_all_yes/drivers/input/misc/ad714x.c_pt.bc'
source_filename = "../drivers/input/misc/ad714x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ad714x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad714x_probe\09\09\09\09"
module asm "\09.long\09__crc_ad714x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad714x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad714x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad714x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ad714x_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_ad714x_disable\09\09\09\09"
module asm "\09.long\09__crc_ad714x_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad714x_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22ad714x_disable\22\09\09\09\09\09"
module asm "__kstrtabns_ad714x_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ad714x_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_ad714x_enable\09\09\09\09"
module asm "\09.long\09__crc_ad714x_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad714x_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22ad714x_enable\22\09\09\09\09\09"
module asm "__kstrtabns_ad714x_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ad714x_platform_data = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, [12 x [8 x i16]], [8 x i16], i32 }
%struct.ad714x_chip = type { i16, i16, i16, [12 x i16], [12 x i16], [12 x i16], ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, i32, i32, [52 x i8], [16 x i16], [96 x i8] }
%struct.ad714x_slider_plat = type { i32, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ad714x_slider_drv = type { i32, i32, i32, i32, ptr }
%struct.ad714x_wheel_plat = type { i32, i32, i32 }
%struct.ad714x_wheel_drv = type { i32, i32, i32, i32, i32, ptr }
%struct.ad714x_touchpad_plat = type { i32, i32, i32, i32, i32, i32 }
%struct.ad714x_touchpad_drv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ad714x_button_drv = type { i32, ptr }
%struct.ad714x_button_plat = type { i32, i16, i16 }
%struct.ad714x_driver_data = type { ptr, ptr, ptr, ptr }

@ad714x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 981, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IRQ not configured!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad714x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/misc/ad714x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad714x_probe._entry_ptr = internal global ptr @ad714x_probe._entry, section ".printk_index", align 4
@ad714x_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"platform data for ad714x doesn't exist\0A\00", [56 x i8] zeroinitializer }, align 32
@ad714x_probe._entry_ptr.7 = internal global ptr @ad714x_probe._entry.5, section ".printk_index", align 4
@ad714x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ad714x->mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ad714x_captouch_slider\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ad714x_captouch_wheel\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ad714x_captouch_pad\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ad714x_captouch_button\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ad714x_captouch\00", [16 x i8] zeroinitializer }, align 32
@ad714x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't allocate irq %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ad714x_probe._entry_ptr.16 = internal global ptr @ad714x_probe._entry.14, section ".printk_index", align 4
@__kstrtab_ad714x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad714x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad714x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad714x_probe to i32), ptr @__kstrtab_ad714x_probe, ptr @__kstrtabns_ad714x_probe }, section "___ksymtab+ad714x_probe", align 4
@ad714x_disable.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 1, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad714x\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ad714x_disable\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s enter\0A\00", [22 x i8] zeroinitializer }, align 32
@__kstrtab_ad714x_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad714x_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_ad714x_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad714x_disable to i32), ptr @__kstrtab_ad714x_disable, ptr @__kstrtabns_ad714x_disable }, section "___ksymtab+ad714x_disable", align 4
@ad714x_enable.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.20, ptr @.str.2, ptr @.str.19, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ad714x_enable\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_ad714x_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad714x_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_ad714x_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad714x_enable to i32), ptr @__kstrtab_ad714x_enable, ptr @__kstrtabns_ad714x_enable }, section "___ksymtab+ad714x_enable", align 4
@__UNIQUE_ID_description245 = internal constant [73 x i8] c"ad714x.description=Analog Devices AD714X Capacitance Touch Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [45 x i8] c"ad714x.author=Barry Song <21cnbao@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [38 x i8] c"ad714x.file=drivers/input/misc/ad714x\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [19 x i8] c"ad714x.license=GPL\00", section ".modinfo", align 1
@ad714x_hw_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 880, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found AD7142 captouch, rev:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ad714x_hw_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ad714x_hw_detect._entry_ptr = internal global ptr @ad714x_hw_detect._entry, section ".printk_index", align 4
@ad714x_hw_detect._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.22, ptr @.str.2, i32 887, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found AD7143 captouch, rev:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ad714x_hw_detect._entry_ptr.26 = internal global ptr @ad714x_hw_detect._entry.24, section ".printk_index", align 4
@ad714x_hw_detect._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.22, ptr @.str.2, i32 894, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"found AD7147(A) captouch, rev:%d\0A\00", [62 x i8] zeroinitializer }, align 32
@ad714x_hw_detect._entry_ptr.29 = internal global ptr @ad714x_hw_detect._entry.27, section ".printk_index", align 4
@ad714x_hw_detect._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.2, i32 901, ptr @.str.23, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"found AD7148 captouch, rev:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@ad714x_hw_detect._entry_ptr.32 = internal global ptr @ad714x_hw_detect._entry.30, section ".printk_index", align 4
@ad714x_hw_detect._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.2, i32 907, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fail to detect AD714X captouch, read ID is %04x\0A\00", [47 x i8] zeroinitializer }, align 32
@ad714x_hw_detect._entry_ptr.35 = internal global ptr @ad714x_hw_detect._entry.33, section ".printk_index", align 4
@ad714x_button_state_machine.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ad714x_button_state_machine\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"button %d touched\0A\00", [45 x i8] zeroinitializer }, align 32
@ad714x_button_state_machine.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.36, ptr @.str.2, ptr @.str.38, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"button %d released\0A\00", [44 x i8] zeroinitializer }, align 32
@ad714x_slider_state_machine.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ad714x_slider_state_machine\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"slider %d touched\0A\00", [45 x i8] zeroinitializer }, align 32
@ad714x_slider_state_machine.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slider %d released\0A\00", [44 x i8] zeroinitializer }, align 32
@ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ad714x_slider_cal_highest_stage\00", [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"slider %d highest_stage:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@ad714x_slider_cal_abs_pos.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ad714x_slider_cal_abs_pos\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"slider %d absolute position:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@ad714x_slider_cal_flt_pos.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ad714x_slider_cal_flt_pos\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"slider %d filter position:%d\0A\00", [34 x i8] zeroinitializer }, align 32
@ad714x_wheel_state_machine.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ad714x_wheel_state_machine\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wheel %d touched\0A\00", [46 x i8] zeroinitializer }, align 32
@ad714x_wheel_state_machine.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wheel %d released\0A\00", [45 x i8] zeroinitializer }, align 32
@ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ad714x_wheel_cal_highest_stage\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wheel %d highest_stage:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ad714x_touchpad_state_machine\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"touchpad %d touched\0A\00", [43 x i8] zeroinitializer }, align 32
@ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.53, ptr @.str.2, ptr @.str.55, i8 0, i8 -50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"touchpad%d, 2 fingers or endpoint\0A\00", [61 x i8] zeroinitializer }, align 32
@ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.53, ptr @.str.2, ptr @.str.56, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"touchpad %d released\0A\00", [42 x i8] zeroinitializer }, align 32
@touchpad_cal_highest_stage.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"touchpad_cal_highest_stage\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"touchpad %d x_highest_stage:%d, y_highest_stage:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@touchpad_cal_abs_pos.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"touchpad_cal_abs_pos\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"touchpad %d absolute position:(%d, %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@touchpad_cal_flt_pos.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"touchpad_cal_flt_pos\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"touchpad %d filter position:(%d, %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 5232, i64 5248, i64 58912, i64 58928]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 981, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 987, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1028, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1049, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1079, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1112, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1142, i32 17 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1155, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1157, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1170, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1185, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 879, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 886, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 893, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 900, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 905, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 222, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 232, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 358, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 388, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 274, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 299, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 320, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 530, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 562, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 416, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 814, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 824, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 858, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 604, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 664, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [31 x i8] c"../drivers/input/misc/ad714x.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 677, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__ksymtab_ad714x_disable, ptr @__ksymtab_ad714x_enable, ptr @__ksymtab_ad714x_probe, ptr @ad714x_hw_detect._entry, ptr @ad714x_hw_detect._entry.24, ptr @ad714x_hw_detect._entry.27, ptr @ad714x_hw_detect._entry.30, ptr @ad714x_hw_detect._entry.33, ptr @ad714x_hw_detect._entry_ptr, ptr @ad714x_hw_detect._entry_ptr.26, ptr @ad714x_hw_detect._entry_ptr.29, ptr @ad714x_hw_detect._entry_ptr.32, ptr @ad714x_hw_detect._entry_ptr.35, ptr @ad714x_probe._entry, ptr @ad714x_probe._entry.14, ptr @ad714x_probe._entry.5, ptr @ad714x_probe._entry_ptr, ptr @ad714x_probe._entry_ptr.16, ptr @ad714x_probe._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @ad714x_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_hw_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_hw_detect._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_hw_detect._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_hw_detect._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad714x_hw_detect._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ad714x_probe(ptr noundef %dev, i16 noundef zeroext %bus_type, i32 noundef %irq, ptr noundef %read, ptr noundef %write) #0 align 64 {
entry:
  %data.i446 = alloca i16, align 2
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp = icmp slt i32 %irq, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup255

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br label %cleanup255

if.end9:                                          ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mul = mul i32 %3, 20
  %add = add i32 %mul, 400
  %wheel_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %wheel_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wheel_num, align 4
  %mul10 = mul i32 %5, 24
  %add11 = add i32 %add, %mul10
  %touchpad_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %touchpad_num, align 4
  %mul12 = shl i32 %7, 6
  %add13 = add i32 %add11, %mul12
  %button_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %button_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %button_num, align 4
  %mul14 = shl i32 %9, 3
  %add15 = add i32 %add13, %mul14
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add15, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end9.cleanup255_crit_edge, label %if.end19

if.end9.cleanup255_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end19:                                         ; preds = %if.end9
  %hw = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %hw, align 16
  %add.ptr = getelementptr %struct.ad714x_chip, ptr %call.i, i32 1
  %sw = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %sw, align 4
  %add.ptr20 = getelementptr %struct.ad714x_chip, ptr %call.i, i32 1, i32 3, i32 5
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr20, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %mul24 = mul i32 %14, 20
  %add.ptr25 = getelementptr i8, ptr %add.ptr20, i32 %mul24
  %wheel = getelementptr %struct.ad714x_chip, ptr %call.i, i32 1, i32 2
  %15 = ptrtoint ptr %wheel to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr25, ptr %wheel, align 4
  %16 = ptrtoint ptr %wheel_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wheel_num, align 4
  %mul29 = mul i32 %17, 24
  %add.ptr30 = getelementptr i8, ptr %add.ptr25, i32 %mul29
  %touchpad = getelementptr %struct.ad714x_chip, ptr %call.i, i32 1, i32 3, i32 1
  %18 = ptrtoint ptr %touchpad to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr30, ptr %touchpad, align 4
  %19 = ptrtoint ptr %touchpad_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %touchpad_num, align 4
  %mul34 = shl i32 %20, 6
  %add.ptr35 = getelementptr i8, ptr %add.ptr30, i32 %mul34
  %button = getelementptr %struct.ad714x_chip, ptr %call.i, i32 1, i32 3, i32 3
  %21 = ptrtoint ptr %button to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr35, ptr %button, align 4
  %read41 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %read41 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %read, ptr %read41, align 32
  %write42 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 11
  %23 = ptrtoint ptr %write42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %write, ptr %write42, align 4
  %irq43 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %irq43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %irq, ptr %irq43, align 8
  %dev44 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 9
  %25 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %dev44, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %data.i, align 2, !annotation !140
  %call.i445 = call i32 %read(ptr noundef nonnull %call.i, i16 noundef zeroext 23, ptr noundef nonnull %data.i, i32 noundef 1) #7
  %27 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %data.i, align 2
  %and.i = and i16 %28, -16
  %29 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and.i, label %if.then47 [
    i16 -6624, label %sw.bb.i
    i16 -6608, label %sw.bb4.i
    i16 5232, label %sw.bb14.i
    i16 5248, label %sw.bb24.i
  ]

sw.bb.i:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %product.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %30 = ptrtoint ptr %product.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 28994, ptr %product.i, align 4
  %31 = and i16 %28, 15
  %and2.i = zext i16 %31 to i32
  %version.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and2.i, ptr %version.i, align 8
  %33 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.21, i32 noundef %and2.i) #10
  br label %if.end49

sw.bb4.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %product5.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %35 = ptrtoint ptr %product5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 28995, ptr %product5.i, align 4
  %36 = and i16 %28, 15
  %and7.i = zext i16 %36 to i32
  %version8.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  %37 = ptrtoint ptr %version8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and7.i, ptr %version8.i, align 8
  %38 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.25, i32 noundef %and7.i) #10
  br label %if.end49

sw.bb14.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %product15.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %40 = ptrtoint ptr %product15.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 28999, ptr %product15.i, align 4
  %41 = and i16 %28, 15
  %and17.i = zext i16 %41 to i32
  %version18.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  %42 = ptrtoint ptr %version18.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and17.i, ptr %version18.i, align 8
  %43 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.28, i32 noundef %and17.i) #10
  br label %if.end49

sw.bb24.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %product25.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %45 = ptrtoint ptr %product25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 29000, ptr %product25.i, align 4
  %46 = and i16 %28, 15
  %and27.i = zext i16 %46 to i32
  %version28.i = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  %47 = ptrtoint ptr %version28.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and27.i, ptr %version28.i, align 8
  %48 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.31, i32 noundef %and27.i) #10
  br label %if.end49

if.then47:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %28 to i32
  %50 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev44, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.34, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  br label %cleanup255

if.end49:                                         ; preds = %sw.bb24.i, %sw.bb14.i, %sw.bb4.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i446) #7
  %52 = ptrtoint ptr %data.i446 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %data.i446, align 2, !annotation !140
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end49
  %i.065.i = phi i32 [ 0, %if.end49 ], [ %inc10.i, %for.body.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write42, align 4
  %i.065.i.tr = trunc i32 %i.065.i to i16
  %55 = shl i16 %i.065.i.tr, 3
  %conv7.i = add i16 %55, 128
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 16
  %arrayidx8.i = getelementptr %struct.ad714x_platform_data, ptr %57, i32 0, i32 8, i32 %i.065.i, i32 0
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx8.i, align 2
  %call.i448 = call i32 %54(ptr noundef %call.i, i16 noundef zeroext %conv7.i, i16 noundef zeroext %59) #7
  %60 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %write42, align 4
  %conv7.1.i = add i16 %55, 129
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 16
  %arrayidx8.1.i = getelementptr %struct.ad714x_platform_data, ptr %63, i32 0, i32 8, i32 %i.065.i, i32 1
  %64 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx8.1.i, align 2
  %call.1.i = call i32 %61(ptr noundef %call.i, i16 noundef zeroext %conv7.1.i, i16 noundef zeroext %65) #7
  %66 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write42, align 4
  %conv7.2.i = add i16 %55, 130
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 16
  %arrayidx8.2.i = getelementptr %struct.ad714x_platform_data, ptr %69, i32 0, i32 8, i32 %i.065.i, i32 2
  %70 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx8.2.i, align 2
  %call.2.i = call i32 %67(ptr noundef %call.i, i16 noundef zeroext %conv7.2.i, i16 noundef zeroext %71) #7
  %72 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write42, align 4
  %conv7.3.i = add i16 %55, 131
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 16
  %arrayidx8.3.i = getelementptr %struct.ad714x_platform_data, ptr %75, i32 0, i32 8, i32 %i.065.i, i32 3
  %76 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx8.3.i, align 2
  %call.3.i = call i32 %73(ptr noundef %call.i, i16 noundef zeroext %conv7.3.i, i16 noundef zeroext %77) #7
  %78 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write42, align 4
  %conv7.4.i = add i16 %55, 132
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 16
  %arrayidx8.4.i = getelementptr %struct.ad714x_platform_data, ptr %81, i32 0, i32 8, i32 %i.065.i, i32 4
  %82 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx8.4.i, align 2
  %call.4.i = call i32 %79(ptr noundef %call.i, i16 noundef zeroext %conv7.4.i, i16 noundef zeroext %83) #7
  %84 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %write42, align 4
  %conv7.5.i = add i16 %55, 133
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 16
  %arrayidx8.5.i = getelementptr %struct.ad714x_platform_data, ptr %87, i32 0, i32 8, i32 %i.065.i, i32 5
  %88 = ptrtoint ptr %arrayidx8.5.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx8.5.i, align 2
  %call.5.i = call i32 %85(ptr noundef %call.i, i16 noundef zeroext %conv7.5.i, i16 noundef zeroext %89) #7
  %90 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write42, align 4
  %conv7.6.i = add i16 %55, 134
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 16
  %arrayidx8.6.i = getelementptr %struct.ad714x_platform_data, ptr %93, i32 0, i32 8, i32 %i.065.i, i32 6
  %94 = ptrtoint ptr %arrayidx8.6.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %arrayidx8.6.i, align 2
  %call.6.i = call i32 %91(ptr noundef %call.i, i16 noundef zeroext %conv7.6.i, i16 noundef zeroext %95) #7
  %96 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write42, align 4
  %conv7.7.i = add i16 %55, 135
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 16
  %arrayidx8.7.i = getelementptr %struct.ad714x_platform_data, ptr %99, i32 0, i32 8, i32 %i.065.i, i32 7
  %100 = ptrtoint ptr %arrayidx8.7.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx8.7.i, align 2
  %call.7.i = call i32 %97(ptr noundef %call.i, i16 noundef zeroext %conv7.7.i, i16 noundef zeroext %101) #7
  %inc10.i = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 12
  br i1 %exitcond.not.i, label %ad714x_hw_init.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

ad714x_hw_init.exit:                              ; preds = %for.body.i
  %102 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %write42, align 4
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 16
  %arrayidx20.i = getelementptr %struct.ad714x_platform_data, ptr %105, i32 0, i32 9, i32 0
  %106 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx20.i, align 2
  %call21.i = call i32 %103(ptr noundef %call.i, i16 noundef zeroext 0, i16 noundef zeroext %107) #7
  %108 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write42, align 4
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 16
  %arrayidx20.1.i = getelementptr %struct.ad714x_platform_data, ptr %111, i32 0, i32 9, i32 1
  %112 = ptrtoint ptr %arrayidx20.1.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %arrayidx20.1.i, align 2
  %call21.1.i = call i32 %109(ptr noundef %call.i, i16 noundef zeroext 1, i16 noundef zeroext %113) #7
  %114 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write42, align 4
  %116 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw, align 16
  %arrayidx20.2.i = getelementptr %struct.ad714x_platform_data, ptr %117, i32 0, i32 9, i32 2
  %118 = ptrtoint ptr %arrayidx20.2.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %arrayidx20.2.i, align 2
  %call21.2.i = call i32 %115(ptr noundef %call.i, i16 noundef zeroext 2, i16 noundef zeroext %119) #7
  %120 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %write42, align 4
  %122 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw, align 16
  %arrayidx20.3.i = getelementptr %struct.ad714x_platform_data, ptr %123, i32 0, i32 9, i32 3
  %124 = ptrtoint ptr %arrayidx20.3.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx20.3.i, align 2
  %call21.3.i = call i32 %121(ptr noundef %call.i, i16 noundef zeroext 3, i16 noundef zeroext %125) #7
  %126 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write42, align 4
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 16
  %arrayidx20.4.i = getelementptr %struct.ad714x_platform_data, ptr %129, i32 0, i32 9, i32 4
  %130 = ptrtoint ptr %arrayidx20.4.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx20.4.i, align 2
  %call21.4.i = call i32 %127(ptr noundef %call.i, i16 noundef zeroext 4, i16 noundef zeroext %131) #7
  %132 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %write42, align 4
  %134 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw, align 16
  %arrayidx20.5.i = getelementptr %struct.ad714x_platform_data, ptr %135, i32 0, i32 9, i32 5
  %136 = ptrtoint ptr %arrayidx20.5.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %arrayidx20.5.i, align 2
  %call21.5.i = call i32 %133(ptr noundef %call.i, i16 noundef zeroext 5, i16 noundef zeroext %137) #7
  %138 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %write42, align 4
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 16
  %arrayidx20.6.i = getelementptr %struct.ad714x_platform_data, ptr %141, i32 0, i32 9, i32 6
  %142 = ptrtoint ptr %arrayidx20.6.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx20.6.i, align 2
  %call21.6.i = call i32 %139(ptr noundef %call.i, i16 noundef zeroext 6, i16 noundef zeroext %143) #7
  %144 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write42, align 4
  %146 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw, align 16
  %arrayidx20.7.i = getelementptr %struct.ad714x_platform_data, ptr %147, i32 0, i32 9, i32 7
  %148 = ptrtoint ptr %arrayidx20.7.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %arrayidx20.7.i, align 2
  %call21.7.i = call i32 %145(ptr noundef %call.i, i16 noundef zeroext 7, i16 noundef zeroext %149) #7
  %150 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %read41, align 32
  %call31.i = call i32 %151(ptr noundef %call.i, i16 noundef zeroext 0, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %152 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %read41, align 32
  %call31.1.i = call i32 %153(ptr noundef %call.i, i16 noundef zeroext 1, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %154 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read41, align 32
  %call31.2.i = call i32 %155(ptr noundef %call.i, i16 noundef zeroext 2, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %156 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read41, align 32
  %call31.3.i = call i32 %157(ptr noundef %call.i, i16 noundef zeroext 3, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %158 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %read41, align 32
  %call31.4.i = call i32 %159(ptr noundef %call.i, i16 noundef zeroext 4, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %160 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %read41, align 32
  %call31.5.i = call i32 %161(ptr noundef %call.i, i16 noundef zeroext 5, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %162 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %read41, align 32
  %call31.6.i = call i32 %163(ptr noundef %call.i, i16 noundef zeroext 6, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %164 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %read41, align 32
  %call31.7.i = call i32 %165(ptr noundef %call.i, i16 noundef zeroext 7, ptr noundef nonnull %data.i446, i32 noundef 1) #7
  %166 = ptrtoint ptr %write42 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %write42, align 4
  %call36.i = call i32 %167(ptr noundef %call.i, i16 noundef zeroext 1, i16 noundef zeroext 4095) #7
  %168 = ptrtoint ptr %read41 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %read41, align 32
  %call38.i = call i32 %169(ptr noundef %call.i, i16 noundef zeroext 8, ptr noundef %call.i, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i446) #7
  %mutex = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 12
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @ad714x_probe.__key) #7
  %170 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw, align 16
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp55 = icmp sgt i32 %173, 0
  br i1 %cmp55, label %if.then56, label %ad714x_hw_init.exit.if.end83_crit_edge

ad714x_hw_init.exit.if.end83_crit_edge:           ; preds = %ad714x_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then56:                                        ; preds = %ad714x_hw_init.exit
  %174 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw, align 16
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp61458 = icmp sgt i32 %177, 0
  br i1 %cmp61458, label %for.body.lr.ph, label %if.then56.if.end83_crit_edge

if.then56.if.end83_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

for.body.lr.ph:                                   ; preds = %if.then56
  %slider58 = getelementptr inbounds %struct.ad714x_platform_data, ptr %171, i32 0, i32 4
  %178 = ptrtoint ptr %slider58 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %slider58, align 4
  %max_coord = getelementptr inbounds %struct.ad714x_slider_plat, ptr %179, i32 0, i32 2
  %product = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %version = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end81.for.body_crit_edge, %for.body.lr.ph
  %i.0459 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end81.for.body_crit_edge ]
  %call62 = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %for.body.cleanup255_crit_edge, label %if.end66

for.body.cleanup255_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end66:                                         ; preds = %for.body
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 5
  %180 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %evbit, align 4
  %or.i427 = or i32 %181, 10
  store i32 %or.i427, ptr %evbit, align 4
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 8
  %182 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %absbit, align 4
  %or.i428 = or i32 %183, 1
  store i32 %or.i428, ptr %absbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call62, i32 0, i32 6, i32 10
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %add.ptr.i, align 4
  %or.i429 = or i32 %185, 1024
  store i32 %or.i429, ptr %add.ptr.i, align 4
  %186 = ptrtoint ptr %max_coord to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %max_coord, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call62, i32 noundef 0, i32 noundef 0, i32 noundef %187, i32 noundef 0, i32 noundef 0) #7
  %id = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 3
  %188 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %bus_type, ptr %id, align 4
  %189 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %product, align 4
  %conv = trunc i32 %190 to i16
  %product72 = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 3, i32 2
  %191 = ptrtoint ptr %product72 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv, ptr %product72, align 4
  %192 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %version, align 8
  %conv73 = trunc i32 %193 to i16
  %version75 = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 3, i32 3
  %194 = ptrtoint ptr %version75 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv73, ptr %version75, align 2
  %195 = ptrtoint ptr %call62 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr @.str.9, ptr %call62, align 8
  %parent = getelementptr inbounds %struct.input_dev, ptr %call62, i32 0, i32 40, i32 1
  %196 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %dev, ptr %parent, align 8
  %call77 = call i32 @input_register_device(ptr noundef nonnull %call62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end81, label %if.then79

if.then79:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %197 = inttoptr i32 %call77 to ptr
  br label %cleanup255

if.end81:                                         ; preds = %if.end66
  %input82 = getelementptr %struct.ad714x_slider_drv, ptr %add.ptr20, i32 %i.0459, i32 4
  %198 = ptrtoint ptr %input82 to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %call62, ptr %input82, align 4
  %inc = add nuw nsw i32 %i.0459, 1
  %199 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %hw, align 16
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %200, align 4
  %cmp61 = icmp slt i32 %inc, %202
  br i1 %cmp61, label %if.end81.for.body_crit_edge, label %if.end81.if.end83_crit_edge

if.end81.if.end83_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.end81.for.body_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end83:                                         ; preds = %if.end81.if.end83_crit_edge, %if.then56.if.end83_crit_edge, %ad714x_hw_init.exit.if.end83_crit_edge
  %203 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %hw, align 16
  %wheel_num85 = getelementptr inbounds %struct.ad714x_platform_data, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %wheel_num85 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %wheel_num85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp86 = icmp sgt i32 %206, 0
  br i1 %cmp86, label %if.then88, label %if.end83.if.end137_crit_edge

if.end83.if.end137_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

if.then88:                                        ; preds = %if.end83
  %207 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %hw, align 16
  %wheel_num93460 = getelementptr inbounds %struct.ad714x_platform_data, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %wheel_num93460 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %wheel_num93460, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp94461 = icmp sgt i32 %210, 0
  br i1 %cmp94461, label %for.body96.lr.ph, label %if.then88.if.end137_crit_edge

if.then88.if.end137_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

for.body96.lr.ph:                                 ; preds = %if.then88
  %wheel90 = getelementptr inbounds %struct.ad714x_platform_data, ptr %204, i32 0, i32 5
  %211 = ptrtoint ptr %wheel90 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %wheel90, align 4
  %max_coord110 = getelementptr inbounds %struct.ad714x_wheel_plat, ptr %212, i32 0, i32 2
  %product113 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %version117 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  br label %for.body96

for.body96:                                       ; preds = %if.end128.for.body96_crit_edge, %for.body96.lr.ph
  %i.1462 = phi i32 [ 0, %for.body96.lr.ph ], [ %inc132, %if.end128.for.body96_crit_edge ]
  %call97 = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %for.body96.cleanup255_crit_edge, label %if.end101

for.body96.cleanup255_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end101:                                        ; preds = %for.body96
  %evbit102 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 5
  %213 = ptrtoint ptr %evbit102 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %evbit102, align 4
  %or.i431 = or i32 %214, 10
  store i32 %or.i431, ptr %evbit102, align 4
  %absbit106 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 8
  %215 = ptrtoint ptr %absbit106 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %absbit106, align 4
  %or.i432 = or i32 %216, 256
  store i32 %or.i432, ptr %absbit106, align 4
  %add.ptr.i433 = getelementptr %struct.input_dev, ptr %call97, i32 0, i32 6, i32 10
  %217 = ptrtoint ptr %add.ptr.i433 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr.i433, align 4
  %or.i434 = or i32 %218, 1024
  store i32 %or.i434, ptr %add.ptr.i433, align 4
  %219 = ptrtoint ptr %max_coord110 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %max_coord110, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call97, i32 noundef 8, i32 noundef 0, i32 noundef %220, i32 noundef 0, i32 noundef 0) #7
  %id111 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 3
  %221 = ptrtoint ptr %id111 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 %bus_type, ptr %id111, align 4
  %222 = ptrtoint ptr %product113 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %product113, align 4
  %conv114 = trunc i32 %223 to i16
  %product116 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 3, i32 2
  %224 = ptrtoint ptr %product116 to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 %conv114, ptr %product116, align 4
  %225 = ptrtoint ptr %version117 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %version117, align 8
  %conv118 = trunc i32 %226 to i16
  %version120 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 3, i32 3
  %227 = ptrtoint ptr %version120 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv118, ptr %version120, align 2
  %228 = ptrtoint ptr %call97 to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @.str.10, ptr %call97, align 8
  %parent123 = getelementptr inbounds %struct.input_dev, ptr %call97, i32 0, i32 40, i32 1
  %229 = ptrtoint ptr %parent123 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %dev, ptr %parent123, align 8
  %call124 = call i32 @input_register_device(ptr noundef nonnull %call97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end128, label %if.then126

if.then126:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %230 = inttoptr i32 %call124 to ptr
  br label %cleanup255

if.end128:                                        ; preds = %if.end101
  %arrayidx129 = getelementptr %struct.ad714x_wheel_drv, ptr %add.ptr25, i32 %i.1462
  %input130 = getelementptr inbounds %struct.ad714x_wheel_drv, ptr %arrayidx129, i32 0, i32 5
  %231 = ptrtoint ptr %input130 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %call97, ptr %input130, align 4
  %inc132 = add nuw nsw i32 %i.1462, 1
  %232 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw, align 16
  %wheel_num93 = getelementptr inbounds %struct.ad714x_platform_data, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %wheel_num93 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %wheel_num93, align 4
  %cmp94 = icmp slt i32 %inc132, %235
  br i1 %cmp94, label %if.end128.for.body96_crit_edge, label %if.end128.if.end137_crit_edge

if.end128.if.end137_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end137

if.end128.for.body96_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body96

if.end137:                                        ; preds = %if.end128.if.end137_crit_edge, %if.then88.if.end137_crit_edge, %if.end83.if.end137_crit_edge
  %236 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw, align 16
  %touchpad_num139 = getelementptr inbounds %struct.ad714x_platform_data, ptr %237, i32 0, i32 2
  %238 = ptrtoint ptr %touchpad_num139 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %touchpad_num139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %cmp140 = icmp sgt i32 %239, 0
  br i1 %cmp140, label %if.then142, label %if.end137.if.end192_crit_edge

if.end137.if.end192_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.then142:                                       ; preds = %if.end137
  %240 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %hw, align 16
  %touchpad_num147463 = getelementptr inbounds %struct.ad714x_platform_data, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %touchpad_num147463 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %touchpad_num147463, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp148464 = icmp sgt i32 %243, 0
  br i1 %cmp148464, label %for.body150.lr.ph, label %if.then142.if.end192_crit_edge

if.then142.if.end192_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

for.body150.lr.ph:                                ; preds = %if.then142
  %touchpad144 = getelementptr inbounds %struct.ad714x_platform_data, ptr %237, i32 0, i32 6
  %244 = ptrtoint ptr %touchpad144 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %touchpad144, align 4
  %x_max_coord = getelementptr inbounds %struct.ad714x_touchpad_plat, ptr %245, i32 0, i32 2
  %y_max_coord = getelementptr inbounds %struct.ad714x_touchpad_plat, ptr %245, i32 0, i32 5
  %product168 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %version172 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  br label %for.body150

for.body150:                                      ; preds = %if.end183.for.body150_crit_edge, %for.body150.lr.ph
  %i.2465 = phi i32 [ 0, %for.body150.lr.ph ], [ %inc187, %if.end183.for.body150_crit_edge ]
  %call151 = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool152.not = icmp eq ptr %call151, null
  br i1 %tobool152.not, label %for.body150.cleanup255_crit_edge, label %if.end155

for.body150.cleanup255_crit_edge:                 ; preds = %for.body150
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end155:                                        ; preds = %for.body150
  %evbit156 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 5
  %246 = ptrtoint ptr %evbit156 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %evbit156, align 4
  %or.i436 = or i32 %247, 10
  store i32 %or.i436, ptr %evbit156, align 4
  %absbit160 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 8
  %248 = ptrtoint ptr %absbit160 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %absbit160, align 4
  %or.i438 = or i32 %249, 3
  store i32 %or.i438, ptr %absbit160, align 4
  %add.ptr.i439 = getelementptr %struct.input_dev, ptr %call151, i32 0, i32 6, i32 10
  %250 = ptrtoint ptr %add.ptr.i439 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %add.ptr.i439, align 4
  %or.i440 = or i32 %251, 1024
  store i32 %or.i440, ptr %add.ptr.i439, align 4
  %252 = ptrtoint ptr %x_max_coord to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %x_max_coord, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call151, i32 noundef 0, i32 noundef 0, i32 noundef %253, i32 noundef 0, i32 noundef 0) #7
  %254 = ptrtoint ptr %y_max_coord to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %y_max_coord, align 4
  call void @input_set_abs_params(ptr noundef nonnull %call151, i32 noundef 1, i32 noundef 0, i32 noundef %255, i32 noundef 0, i32 noundef 0) #7
  %id166 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 3
  %256 = ptrtoint ptr %id166 to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 %bus_type, ptr %id166, align 4
  %257 = ptrtoint ptr %product168 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %product168, align 4
  %conv169 = trunc i32 %258 to i16
  %product171 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 3, i32 2
  %259 = ptrtoint ptr %product171 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %conv169, ptr %product171, align 4
  %260 = ptrtoint ptr %version172 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %version172, align 8
  %conv173 = trunc i32 %261 to i16
  %version175 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 3, i32 3
  %262 = ptrtoint ptr %version175 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv173, ptr %version175, align 2
  %263 = ptrtoint ptr %call151 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @.str.11, ptr %call151, align 8
  %parent178 = getelementptr inbounds %struct.input_dev, ptr %call151, i32 0, i32 40, i32 1
  %264 = ptrtoint ptr %parent178 to i32
  call void @__asan_store4_noabort(i32 %264)
  store ptr %dev, ptr %parent178, align 8
  %call179 = call i32 @input_register_device(ptr noundef nonnull %call151) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.end183, label %if.then181

if.then181:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %265 = inttoptr i32 %call179 to ptr
  br label %cleanup255

if.end183:                                        ; preds = %if.end155
  %arrayidx184 = getelementptr %struct.ad714x_touchpad_drv, ptr %add.ptr30, i32 %i.2465
  %input185 = getelementptr inbounds %struct.ad714x_touchpad_drv, ptr %arrayidx184, i32 0, i32 15
  %266 = ptrtoint ptr %input185 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %call151, ptr %input185, align 4
  %inc187 = add nuw nsw i32 %i.2465, 1
  %267 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %hw, align 16
  %touchpad_num147 = getelementptr inbounds %struct.ad714x_platform_data, ptr %268, i32 0, i32 2
  %269 = ptrtoint ptr %touchpad_num147 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %touchpad_num147, align 4
  %cmp148 = icmp slt i32 %inc187, %270
  br i1 %cmp148, label %if.end183.for.body150_crit_edge, label %if.end183.if.end192_crit_edge

if.end183.if.end192_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.end183.for.body150_crit_edge:                  ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body150

if.end192:                                        ; preds = %if.end183.if.end192_crit_edge, %if.then142.if.end192_crit_edge, %if.end137.if.end192_crit_edge
  %271 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hw, align 16
  %button_num194 = getelementptr inbounds %struct.ad714x_platform_data, ptr %272, i32 0, i32 3
  %273 = ptrtoint ptr %button_num194 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %button_num194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %cmp195 = icmp sgt i32 %274, 0
  br i1 %cmp195, label %if.then197, label %if.end192.if.end242_crit_edge

if.end192.if.end242_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then197:                                       ; preds = %if.end192
  %button199 = getelementptr inbounds %struct.ad714x_platform_data, ptr %272, i32 0, i32 7
  %275 = ptrtoint ptr %button199 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %button199, align 4
  %call200 = call ptr @devm_input_allocate_device(ptr noundef %dev) #7
  %tobool201.not = icmp eq ptr %call200, null
  br i1 %tobool201.not, label %if.then197.cleanup255_crit_edge, label %if.end204

if.then197.cleanup255_crit_edge:                  ; preds = %if.then197
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

if.end204:                                        ; preds = %if.then197
  %evbit205 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 5
  %277 = ptrtoint ptr %evbit205 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %evbit205, align 4
  %or.i441 = or i32 %278, 2
  store i32 %or.i441, ptr %evbit205, align 4
  %279 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hw, align 16
  %button_num209466 = getelementptr inbounds %struct.ad714x_platform_data, ptr %280, i32 0, i32 3
  %281 = ptrtoint ptr %button_num209466 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %button_num209466, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp210467 = icmp sgt i32 %282, 0
  br i1 %cmp210467, label %for.body212.lr.ph, label %if.end204.for.end220_crit_edge

if.end204.for.end220_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end220

for.body212.lr.ph:                                ; preds = %if.end204
  %keybit216 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 6
  br label %for.body212

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %for.body212.lr.ph
  %i.3468 = phi i32 [ 0, %for.body212.lr.ph ], [ %inc219, %for.body212.for.body212_crit_edge ]
  %arrayidx213 = getelementptr %struct.ad714x_button_drv, ptr %add.ptr35, i32 %i.3468
  %input214 = getelementptr inbounds %struct.ad714x_button_drv, ptr %arrayidx213, i32 0, i32 1
  %283 = ptrtoint ptr %input214 to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr %call200, ptr %input214, align 4
  %arrayidx215 = getelementptr %struct.ad714x_button_plat, ptr %276, i32 %i.3468
  %284 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %arrayidx215, align 4
  %rem.i = and i32 %285, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %285, 5
  %add.ptr.i442 = getelementptr i32, ptr %keybit216, i32 %div2.i
  %286 = ptrtoint ptr %add.ptr.i442 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %add.ptr.i442, align 4
  %or.i443 = or i32 %shl.i, %287
  store i32 %or.i443, ptr %add.ptr.i442, align 4
  %inc219 = add nuw nsw i32 %i.3468, 1
  %288 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %hw, align 16
  %button_num209 = getelementptr inbounds %struct.ad714x_platform_data, ptr %289, i32 0, i32 3
  %290 = ptrtoint ptr %button_num209 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %button_num209, align 4
  %cmp210 = icmp slt i32 %inc219, %291
  br i1 %cmp210, label %for.body212.for.body212_crit_edge, label %for.body212.for.end220_crit_edge

for.body212.for.end220_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end220

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body212

for.end220:                                       ; preds = %for.body212.for.end220_crit_edge, %if.end204.for.end220_crit_edge
  %id221 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 3
  %292 = ptrtoint ptr %id221 to i32
  call void @__asan_store2_noabort(i32 %292)
  store i16 %bus_type, ptr %id221, align 4
  %product223 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 13
  %293 = ptrtoint ptr %product223 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %product223, align 4
  %conv224 = trunc i32 %294 to i16
  %product226 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 3, i32 2
  %295 = ptrtoint ptr %product226 to i32
  call void @__asan_store2_noabort(i32 %295)
  store i16 %conv224, ptr %product226, align 4
  %version227 = getelementptr inbounds %struct.ad714x_chip, ptr %call.i, i32 0, i32 14
  %296 = ptrtoint ptr %version227 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %version227, align 8
  %conv228 = trunc i32 %297 to i16
  %version230 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 3, i32 3
  %298 = ptrtoint ptr %version230 to i32
  call void @__asan_store2_noabort(i32 %298)
  store i16 %conv228, ptr %version230, align 2
  %299 = ptrtoint ptr %call200 to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr @.str.12, ptr %call200, align 8
  %parent233 = getelementptr inbounds %struct.input_dev, ptr %call200, i32 0, i32 40, i32 1
  %300 = ptrtoint ptr %parent233 to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %dev, ptr %parent233, align 8
  %call234 = call i32 @input_register_device(ptr noundef nonnull %call200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %tobool235.not = icmp eq i32 %call234, 0
  br i1 %tobool235.not, label %for.end220.if.end242_crit_edge, label %if.then236

for.end220.if.end242_crit_edge:                   ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then236:                                       ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #9
  %301 = inttoptr i32 %call234 to ptr
  br label %cleanup255

if.end242:                                        ; preds = %for.end220.if.end242_crit_edge, %if.end192.if.end242_crit_edge
  %irqflags243 = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 10
  %302 = ptrtoint ptr %irqflags243 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %irqflags243, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %tobool244.not = icmp eq i32 %303, 0
  %.op = or i32 %303, 8192
  %or = select i1 %tobool244.not, i32 8194, i32 %.op
  %304 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %irq43, align 8
  %call246 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %305, ptr noundef null, ptr noundef nonnull @ad714x_interrupt_thread, i32 noundef %or, ptr noundef nonnull @.str.13, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end242.cleanup255_crit_edge, label %do.end251

if.end242.cleanup255_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup255

do.end251:                                        ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #9
  %306 = ptrtoint ptr %irq43 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %irq43, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %307) #10
  %308 = inttoptr i32 %call246 to ptr
  br label %cleanup255

cleanup255:                                       ; preds = %do.end251, %if.end242.cleanup255_crit_edge, %if.then236, %if.then197.cleanup255_crit_edge, %if.then181, %for.body150.cleanup255_crit_edge, %if.then126, %for.body96.cleanup255_crit_edge, %if.then79, %for.body.cleanup255_crit_edge, %if.then47, %if.end9.cleanup255_crit_edge, %do.end7, %do.end
  %retval.7 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ inttoptr (i32 -19 to ptr), %if.then47 ], [ %308, %do.end251 ], [ %call.i, %if.end242.cleanup255_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup255_crit_edge ], [ %197, %if.then79 ], [ %230, %if.then126 ], [ %265, %if.then181 ], [ inttoptr (i32 -12 to ptr), %if.then197.cleanup255_crit_edge ], [ %301, %if.then236 ], [ inttoptr (i32 -12 to ptr), %for.body150.cleanup255_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body96.cleanup255_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.cleanup255_crit_edge ]
  ret ptr %retval.7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad714x_interrupt_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ad714x_chip, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %read = getelementptr inbounds %struct.ad714x_chip, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read, align 32
  %call = tail call i32 %1(ptr noundef %data, i16 noundef zeroext 8, ptr noundef %data, i32 noundef 3) #7
  %hw = getelementptr inbounds %struct.ad714x_chip, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 16
  %button_num46 = getelementptr inbounds %struct.ad714x_platform_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %button_num46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %button_num46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47 = icmp sgt i32 %5, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 16
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp349 = icmp sgt i32 %9, 0
  br i1 %cmp349, label %for.cond1.preheader.for.body4_crit_edge, label %for.cond1.preheader.for.cond8.preheader_crit_edge

for.cond1.preheader.for.cond8.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.cond1.preheader.for.body4_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @ad714x_button_state_machine(ptr noundef %data, i32 noundef %i.048)
  %inc = add nuw nsw i32 %i.048, 1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 16
  %button_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %button_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %button_num, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body4.for.cond8.preheader_crit_edge, %for.cond1.preheader.for.cond8.preheader_crit_edge
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 16
  %wheel_num51 = getelementptr inbounds %struct.ad714x_platform_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %wheel_num51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wheel_num51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1052 = icmp sgt i32 %17, 0
  br i1 %cmp1052, label %for.cond8.preheader.for.body11_crit_edge, label %for.cond8.preheader.for.cond15.preheader_crit_edge

for.cond8.preheader.for.cond15.preheader_crit_edge: ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.cond8.preheader.for.body11_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body11

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.cond1.preheader.for.body4_crit_edge
  %i.150 = phi i32 [ %inc6, %for.body4.for.body4_crit_edge ], [ 0, %for.cond1.preheader.for.body4_crit_edge ]
  tail call fastcc void @ad714x_slider_state_machine(ptr noundef %data, i32 noundef %i.150)
  %inc6 = add nuw nsw i32 %i.150, 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %cmp3 = icmp slt i32 %inc6, %21
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.cond8.preheader_crit_edge

for.body4.for.cond8.preheader_crit_edge:          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond8.preheader

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.cond15.preheader:                             ; preds = %for.body11.for.cond15.preheader_crit_edge, %for.cond8.preheader.for.cond15.preheader_crit_edge
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 16
  %touchpad_num54 = getelementptr inbounds %struct.ad714x_platform_data, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %touchpad_num54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %touchpad_num54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1755 = icmp sgt i32 %25, 0
  br i1 %cmp1755, label %for.cond15.preheader.for.body18_crit_edge, label %for.cond15.preheader.for.end21_crit_edge

for.cond15.preheader.for.end21_crit_edge:         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.cond15.preheader.for.body18_crit_edge:        ; preds = %for.cond15.preheader
  br label %for.body18

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %for.cond8.preheader.for.body11_crit_edge
  %i.253 = phi i32 [ %inc13, %for.body11.for.body11_crit_edge ], [ 0, %for.cond8.preheader.for.body11_crit_edge ]
  tail call fastcc void @ad714x_wheel_state_machine(ptr noundef %data, i32 noundef %i.253)
  %inc13 = add nuw nsw i32 %i.253, 1
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 16
  %wheel_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wheel_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wheel_num, align 4
  %cmp10 = icmp slt i32 %inc13, %29
  br i1 %cmp10, label %for.body11.for.body11_crit_edge, label %for.body11.for.cond15.preheader_crit_edge

for.body11.for.cond15.preheader_crit_edge:        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond15.preheader.for.body18_crit_edge
  %i.356 = phi i32 [ %inc20, %for.body18.for.body18_crit_edge ], [ 0, %for.cond15.preheader.for.body18_crit_edge ]
  tail call fastcc void @ad714x_touchpad_state_machine(ptr noundef %data, i32 noundef %i.356)
  %inc20 = add nuw nsw i32 %i.356, 1
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 16
  %touchpad_num = getelementptr inbounds %struct.ad714x_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %touchpad_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %touchpad_num, align 4
  %cmp17 = icmp slt i32 %inc20, %33
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.end21_crit_edge

for.body18.for.end21_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end21

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18

for.end21:                                        ; preds = %for.body18.for.end21_crit_edge, %for.cond15.preheader.for.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad714x_disable(ptr noundef %ad714x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_disable.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_disable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_disable.__UNIQUE_ID_ddebug243, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %hw = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 16
  %sys_cfg_reg = getelementptr inbounds %struct.ad714x_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %sys_cfg_reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sys_cfg_reg, align 4
  %6 = or i16 %5, 3
  %write = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %call4 = tail call i32 %8(ptr noundef %ad714x, i16 noundef zeroext 0, i16 noundef zeroext %6) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad714x_enable(ptr noundef %ad714x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_enable.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_enable, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_enable.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %write = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %hw = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 16
  %sys_cfg_reg = getelementptr inbounds %struct.ad714x_platform_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %sys_cfg_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %sys_cfg_reg, align 4
  %call3 = tail call i32 %3(ptr noundef %ad714x, i16 noundef zeroext 0, i16 noundef zeroext %7) #7
  %read = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 32
  %call4 = tail call i32 %9(ptr noundef %ad714x, i16 noundef zeroext 8, ptr noundef %ad714x, i32 noundef 3) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad714x_button_state_machine(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %button = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %button, align 4
  %arrayidx = getelementptr %struct.ad714x_button_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %button3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %button3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %button3, align 4
  %arrayidx4 = getelementptr %struct.ad714x_button_drv, ptr %7, i32 %idx
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %9, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %h_state = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 1
  %11 = ptrtoint ptr %h_state to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %h_state, align 2
  %h_mask = getelementptr %struct.ad714x_button_plat, ptr %3, i32 %idx, i32 2
  %13 = ptrtoint ptr %h_mask to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %h_mask, align 2
  %and91 = and i16 %14, %12
  call void @__sanitizer_cov_trace_cmp2(i16 %and91, i16 %14)
  %cmp = icmp eq i16 %and91, %14
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %15 = ptrtoint ptr %ad714x to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ad714x, align 128
  %l_mask = getelementptr %struct.ad714x_button_plat, ptr %3, i32 %idx, i32 1
  %17 = ptrtoint ptr %l_mask to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %l_mask, align 4
  %and1192 = and i16 %18, %16
  call void @__sanitizer_cov_trace_cmp2(i16 %and1192, i16 %18)
  %cmp14 = icmp eq i16 %and1192, %18
  br i1 %cmp14, label %do.body, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_button_state_machine.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_button_state_machine, %if.then18)) #7
          to label %sw.epilog.sink.split [label %if.then18], !srcloc !141

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_button_state_machine.__UNIQUE_ID_ddebug227, ptr noundef %20, ptr noundef nonnull @.str.37, i32 noundef %idx) #7
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %entry
  %h_state23 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 1
  %21 = ptrtoint ptr %h_state23 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %h_state23, align 2
  %h_mask25 = getelementptr %struct.ad714x_button_plat, ptr %3, i32 %idx, i32 2
  %23 = ptrtoint ptr %h_mask25 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %h_mask25, align 2
  %and2789 = and i16 %24, %22
  call void @__sanitizer_cov_trace_cmp2(i16 %and2789, i16 %24)
  %cmp30.not = icmp eq i16 %and2789, %24
  br i1 %cmp30.not, label %lor.lhs.false, label %sw.bb22.do.body42_crit_edge

sw.bb22.do.body42_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

lor.lhs.false:                                    ; preds = %sw.bb22
  %25 = ptrtoint ptr %ad714x to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ad714x, align 128
  %l_mask34 = getelementptr %struct.ad714x_button_plat, ptr %3, i32 %idx, i32 1
  %27 = ptrtoint ptr %l_mask34 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l_mask34, align 4
  %and3690 = and i16 %28, %26
  call void @__sanitizer_cov_trace_cmp2(i16 %and3690, i16 %28)
  %cmp39.not = icmp eq i16 %and3690, %28
  br i1 %cmp39.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.do.body42_crit_edge

lor.lhs.false.do.body42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body42:                                        ; preds = %lor.lhs.false.do.body42_crit_edge, %sw.bb22.do.body42_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_button_state_machine.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_button_state_machine, %if.then54)) #7
          to label %sw.epilog.sink.split [label %if.then54], !srcloc !141

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  %dev55 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %29 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_button_state_machine.__UNIQUE_ID_ddebug228, ptr noundef %30, ptr noundef nonnull @.str.38, i32 noundef %idx) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then54, %do.body42, %if.then18, %do.body
  %.sink101 = phi i32 [ 1, %do.body ], [ 1, %if.then18 ], [ 0, %do.body42 ], [ 0, %if.then54 ]
  %.sink = phi i32 [ 2, %do.body ], [ 2, %if.then18 ], [ 0, %do.body42 ], [ 0, %if.then54 ]
  %input = getelementptr %struct.ad714x_button_drv, ptr %7, i32 %idx, i32 1
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  tail call void @input_event(ptr noundef %32, i32 noundef 1, i32 noundef %34, i32 noundef %.sink101) #7
  %35 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %36, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %37 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %arrayidx4, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.lhs.false.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad714x_slider_state_machine(ptr noundef %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %data.i.i165 = alloca i16, align 2
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %slider = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %slider to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slider, align 4
  %arrayidx = getelementptr %struct.ad714x_slider_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %end_stage = getelementptr %struct.ad714x_slider_plat, ptr %3, i32 %idx, i32 1
  %8 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_stage, align 4
  %add = add i32 %9, 1
  %notmask.neg = shl nuw i32 1, %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %notmask104 = shl nsw i32 -1, %11
  %sub7 = add i32 %notmask.neg, %notmask104
  %h_state8 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 1
  %12 = ptrtoint ptr %h_state8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_state8, align 2
  %14 = trunc i32 %sub7 to i16
  %conv11 = and i16 %13, %14
  %c_state12 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 2
  %15 = ptrtoint ptr %c_state12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %c_state12, align 4
  %conv16 = and i16 %16, %14
  %state = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %18, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool.not = icmp eq i16 %conv11, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state, align 4
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 16
  %slider.i = getelementptr inbounds %struct.ad714x_platform_data, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %slider.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slider.i, align 4
  %arrayidx.i = getelementptr %struct.ad714x_slider_plat, ptr %24, i32 %idx
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %end_stage.i = getelementptr %struct.ad714x_slider_plat, ptr %24, i32 %idx, i32 1
  %27 = ptrtoint ptr %end_stage.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end_stage.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #7
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %data.i.i, align 2, !annotation !140
  %add.i.i = add i32 %28, 1
  %notmask.neg.i.i = shl nuw i32 1, %add.i.i
  %notmask23.i.i = shl nsw i32 -1, %26
  %sub3.i.i = add i32 %notmask.neg.i.i, %notmask23.i.i
  %read.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %30 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i.i, align 32
  %call.i.i = call i32 %31(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %shl4.i.i = shl nuw i32 1, %28
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i.i, align 2
  %34 = trunc i32 %shl4.i.i to i16
  %conv6.i.i = or i16 %33, %34
  store i16 %conv6.i.i, ptr %data.i.i, align 2
  %write.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %35 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i, align 4
  %call7.i.i = call i32 %36(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i) #7
  %37 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i.i, align 32
  %call9.i.i = call i32 %38(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data.i.i, align 2
  %41 = trunc i32 %sub3.i.i to i16
  %42 = xor i16 %41, -1
  %conv12.i.i = and i16 %40, %42
  store i16 %conv12.i.i, ptr %data.i.i, align 2
  %43 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i.i, align 4
  %call14.i.i = call i32 %44(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_state_machine.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_state_machine, %if.then21)) #7
          to label %sw.epilog [label %if.then21], !srcloc !141

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_state_machine.__UNIQUE_ID_ddebug232, ptr noundef %46, ptr noundef nonnull @.str.40, i32 noundef %idx) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %14)
  %cmp = icmp eq i16 %conv16, %14
  br i1 %cmp, label %if.then27, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb23
  %read.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %47 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i, align 32
  %49 = trunc i32 %11 to i16
  %conv.i = add i16 %49, 11
  %arrayidx3.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i = sub i32 %add, %11
  %call.i = tail call i32 %48(ptr noundef %ad714x, i16 noundef zeroext %conv.i, ptr noundef %arrayidx3.i, i32 noundef %add5.i) #7
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.not48.i = icmp sgt i32 %51, %53
  br i1 %cmp.not48.i, label %if.then27.ad714x_slider_cal_sensor_val.exit_crit_edge, label %if.then27.for.body.i_crit_edge

if.then27.for.body.i_crit_edge:                   ; preds = %if.then27
  br label %for.body.i

if.then27.ad714x_slider_cal_sensor_val.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_slider_cal_sensor_val.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then27.for.body.i_crit_edge
  %i.049.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %51, %if.then27.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read.i, align 32
  %56 = trunc i32 %i.049.i to i16
  %57 = mul i16 %56, 36
  %conv11.i = add i16 %57, 241
  %arrayidx12.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.049.i
  %call13.i = tail call i32 %55(ptr noundef %ad714x, i16 noundef zeroext %conv11.i, ptr noundef %arrayidx12.i, i32 noundef 1) #7
  %arrayidx15.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.049.i
  %58 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx15.i, align 2
  %conv16.i = zext i16 %59 to i32
  %60 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx12.i, align 2
  %conv19.i = zext i16 %61 to i32
  %sub20.i = sub nsw i32 %conv16.i, %conv19.i
  %62 = tail call i32 @llvm.abs.i32(i32 %sub20.i, i1 true) #7
  %conv24.i = trunc i32 %62 to i16
  %arrayidx25.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.049.i
  %63 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv24.i, ptr %arrayidx25.i, align 2
  %inc.i = add i32 %i.049.i, 1
  %64 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %end_stage, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %65
  br i1 %cmp.not.i, label %for.body.i.ad714x_slider_cal_sensor_val.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ad714x_slider_cal_sensor_val.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_slider_cal_sensor_val.exit

ad714x_slider_cal_sensor_val.exit:                ; preds = %for.body.i.ad714x_slider_cal_sensor_val.exit_crit_edge, %if.then27.ad714x_slider_cal_sensor_val.exit_crit_edge
  %66 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw1, align 16
  %slider.i113 = getelementptr inbounds %struct.ad714x_platform_data, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %slider.i113 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slider.i113, align 4
  %arrayidx.i114 = getelementptr %struct.ad714x_slider_plat, ptr %69, i32 %idx
  %70 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sw2, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %arrayidx4.i = getelementptr %struct.ad714x_slider_drv, ptr %73, i32 %idx
  %74 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i114, align 4
  %end_stage.i115 = getelementptr %struct.ad714x_slider_plat, ptr %69, i32 %idx, i32 1
  %76 = ptrtoint ptr %end_stage.i115 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end_stage.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp.not12.i.i = icmp sgt i32 %75, %77
  br i1 %cmp.not12.i.i, label %ad714x_slider_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge, label %ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge

ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge: ; preds = %ad714x_slider_cal_sensor_val.exit
  br label %for.body.i.i

ad714x_slider_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge: ; preds = %ad714x_slider_cal_sensor_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %75, %ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %max_idx.014.i.i = phi i32 [ %spec.select11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %max_res.013.i.i = phi i32 [ %80, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %ad714x_slider_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i.i
  %78 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i.i, i32 %conv.i.i)
  %cmp1.i.i = icmp ult i32 %max_res.013.i.i, %conv.i.i
  %80 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i.i, i32 %conv.i.i) #7
  %spec.select11.i.i = select i1 %cmp1.i.i, i32 %i.015.i.i, i32 %max_idx.014.i.i
  %inc.i.i = add i32 %i.015.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %77
  br i1 %cmp.not.i.i, label %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i

ad714x_cal_highest_stage.exit.i:                  ; preds = %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge, %ad714x_slider_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge
  %max_idx.0.lcssa.i.i = phi i32 [ 0, %ad714x_slider_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge ], [ %spec.select11.i.i, %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge ]
  %81 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %max_idx.0.lcssa.i.i, ptr %arrayidx4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_state_machine, %if.then.i)) #7
          to label %ad714x_slider_cal_highest_stage.exit [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %ad714x_cal_highest_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 4
  %84 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229, ptr noundef %83, ptr noundef nonnull @.str.43, i32 noundef %idx, i32 noundef %85) #7
  br label %ad714x_slider_cal_highest_stage.exit

ad714x_slider_cal_highest_stage.exit:             ; preds = %if.then.i, %ad714x_cal_highest_stage.exit.i
  tail call fastcc void @ad714x_slider_cal_abs_pos(ptr noundef %ad714x, i32 noundef %idx)
  %abs_pos = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 1
  %86 = ptrtoint ptr %abs_pos to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %abs_pos, align 4
  %flt_pos = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 2
  %88 = ptrtoint ptr %flt_pos to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %flt_pos, align 4
  %89 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %14)
  %cmp33 = icmp eq i16 %conv16, %14
  br i1 %cmp33, label %if.then35, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool36.not = icmp eq i16 %conv11, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then35
  %read.i119 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %90 = ptrtoint ptr %read.i119 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %read.i119, align 32
  %92 = trunc i32 %11 to i16
  %conv.i120 = add i16 %92, 11
  %arrayidx3.i121 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i124 = sub i32 %add, %11
  %call.i125 = tail call i32 %91(ptr noundef %ad714x, i16 noundef zeroext %conv.i120, ptr noundef %arrayidx3.i121, i32 noundef %add5.i124) #7
  %93 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx, align 4
  %95 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp.not48.i126 = icmp sgt i32 %94, %96
  br i1 %cmp.not48.i126, label %if.then37.ad714x_slider_cal_sensor_val.exit140_crit_edge, label %if.then37.for.body.i139_crit_edge

if.then37.for.body.i139_crit_edge:                ; preds = %if.then37
  br label %for.body.i139

if.then37.ad714x_slider_cal_sensor_val.exit140_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_slider_cal_sensor_val.exit140

for.body.i139:                                    ; preds = %for.body.i139.for.body.i139_crit_edge, %if.then37.for.body.i139_crit_edge
  %i.049.i127 = phi i32 [ %inc.i137, %for.body.i139.for.body.i139_crit_edge ], [ %94, %if.then37.for.body.i139_crit_edge ]
  %97 = ptrtoint ptr %read.i119 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %read.i119, align 32
  %99 = trunc i32 %i.049.i127 to i16
  %100 = mul i16 %99, 36
  %conv11.i128 = add i16 %100, 241
  %arrayidx12.i129 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.049.i127
  %call13.i130 = tail call i32 %98(ptr noundef %ad714x, i16 noundef zeroext %conv11.i128, ptr noundef %arrayidx12.i129, i32 noundef 1) #7
  %arrayidx15.i131 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.049.i127
  %101 = ptrtoint ptr %arrayidx15.i131 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx15.i131, align 2
  %conv16.i132 = zext i16 %102 to i32
  %103 = ptrtoint ptr %arrayidx12.i129 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx12.i129, align 2
  %conv19.i133 = zext i16 %104 to i32
  %sub20.i134 = sub nsw i32 %conv16.i132, %conv19.i133
  %105 = tail call i32 @llvm.abs.i32(i32 %sub20.i134, i1 true) #7
  %conv24.i135 = trunc i32 %105 to i16
  %arrayidx25.i136 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.049.i127
  %106 = ptrtoint ptr %arrayidx25.i136 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv24.i135, ptr %arrayidx25.i136, align 2
  %inc.i137 = add i32 %i.049.i127, 1
  %107 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %end_stage, align 4
  %cmp.not.i138 = icmp sgt i32 %inc.i137, %108
  br i1 %cmp.not.i138, label %for.body.i139.ad714x_slider_cal_sensor_val.exit140_crit_edge, label %for.body.i139.for.body.i139_crit_edge

for.body.i139.for.body.i139_crit_edge:            ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i139

for.body.i139.ad714x_slider_cal_sensor_val.exit140_crit_edge: ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_slider_cal_sensor_val.exit140

ad714x_slider_cal_sensor_val.exit140:             ; preds = %for.body.i139.ad714x_slider_cal_sensor_val.exit140_crit_edge, %if.then37.ad714x_slider_cal_sensor_val.exit140_crit_edge
  %109 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %hw1, align 16
  %slider.i142 = getelementptr inbounds %struct.ad714x_platform_data, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %slider.i142 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %slider.i142, align 4
  %arrayidx.i143 = getelementptr %struct.ad714x_slider_plat, ptr %112, i32 %idx
  %113 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sw2, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %arrayidx4.i145 = getelementptr %struct.ad714x_slider_drv, ptr %116, i32 %idx
  %117 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i143, align 4
  %end_stage.i146 = getelementptr %struct.ad714x_slider_plat, ptr %112, i32 %idx, i32 1
  %119 = ptrtoint ptr %end_stage.i146 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %end_stage.i146, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %120)
  %cmp.not12.i.i147 = icmp sgt i32 %118, %120
  br i1 %cmp.not12.i.i147, label %ad714x_slider_cal_sensor_val.exit140.ad714x_cal_highest_stage.exit.i159_crit_edge, label %ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge

ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge: ; preds = %ad714x_slider_cal_sensor_val.exit140
  br label %for.body.i.i157

ad714x_slider_cal_sensor_val.exit140.ad714x_cal_highest_stage.exit.i159_crit_edge: ; preds = %ad714x_slider_cal_sensor_val.exit140
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i159

for.body.i.i157:                                  ; preds = %for.body.i.i157.for.body.i.i157_crit_edge, %ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge
  %i.015.i.i148 = phi i32 [ %inc.i.i155, %for.body.i.i157.for.body.i.i157_crit_edge ], [ %118, %ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge ]
  %max_idx.014.i.i149 = phi i32 [ %spec.select11.i.i154, %for.body.i.i157.for.body.i.i157_crit_edge ], [ 0, %ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge ]
  %max_res.013.i.i150 = phi i32 [ %123, %for.body.i.i157.for.body.i.i157_crit_edge ], [ 0, %ad714x_slider_cal_sensor_val.exit140.for.body.i.i157_crit_edge ]
  %arrayidx.i.i151 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i.i148
  %121 = ptrtoint ptr %arrayidx.i.i151 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %arrayidx.i.i151, align 2
  %conv.i.i152 = zext i16 %122 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i.i150, i32 %conv.i.i152)
  %cmp1.i.i153 = icmp ult i32 %max_res.013.i.i150, %conv.i.i152
  %123 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i.i150, i32 %conv.i.i152) #7
  %spec.select11.i.i154 = select i1 %cmp1.i.i153, i32 %i.015.i.i148, i32 %max_idx.014.i.i149
  %inc.i.i155 = add i32 %i.015.i.i148, 1
  %cmp.not.i.i156 = icmp sgt i32 %inc.i.i155, %120
  br i1 %cmp.not.i.i156, label %for.body.i.i157.ad714x_cal_highest_stage.exit.i159_crit_edge, label %for.body.i.i157.for.body.i.i157_crit_edge

for.body.i.i157.for.body.i.i157_crit_edge:        ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i157

for.body.i.i157.ad714x_cal_highest_stage.exit.i159_crit_edge: ; preds = %for.body.i.i157
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i159

ad714x_cal_highest_stage.exit.i159:               ; preds = %for.body.i.i157.ad714x_cal_highest_stage.exit.i159_crit_edge, %ad714x_slider_cal_sensor_val.exit140.ad714x_cal_highest_stage.exit.i159_crit_edge
  %max_idx.0.lcssa.i.i158 = phi i32 [ 0, %ad714x_slider_cal_sensor_val.exit140.ad714x_cal_highest_stage.exit.i159_crit_edge ], [ %spec.select11.i.i154, %for.body.i.i157.ad714x_cal_highest_stage.exit.i159_crit_edge ]
  %124 = ptrtoint ptr %arrayidx4.i145 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %max_idx.0.lcssa.i.i158, ptr %arrayidx4.i145, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_state_machine, %if.then.i161)) #7
          to label %ad714x_slider_cal_highest_stage.exit162 [label %if.then.i161], !srcloc !141

if.then.i161:                                     ; preds = %ad714x_cal_highest_stage.exit.i159
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i160 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %125 = ptrtoint ptr %dev.i160 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i160, align 4
  %127 = ptrtoint ptr %arrayidx4.i145 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx4.i145, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229, ptr noundef %126, ptr noundef nonnull @.str.43, i32 noundef %idx, i32 noundef %128) #7
  br label %ad714x_slider_cal_highest_stage.exit162

ad714x_slider_cal_highest_stage.exit162:          ; preds = %if.then.i161, %ad714x_cal_highest_stage.exit.i159
  tail call fastcc void @ad714x_slider_cal_abs_pos(ptr noundef %ad714x, i32 noundef %idx)
  %129 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sw2, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  %flt_pos.i = getelementptr %struct.ad714x_slider_drv, ptr %132, i32 %idx, i32 2
  %133 = ptrtoint ptr %flt_pos.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %flt_pos.i, align 4
  %mul.i = mul i32 %134, 6
  %abs_pos.i = getelementptr %struct.ad714x_slider_drv, ptr %132, i32 %idx, i32 1
  %135 = ptrtoint ptr %abs_pos.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %abs_pos.i, align 4
  %mul2.i = shl i32 %136, 2
  %add.i = add i32 %mul2.i, %mul.i
  %div.i = sdiv i32 %add.i, 10
  store i32 %div.i, ptr %flt_pos.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_cal_flt_pos.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_state_machine, %if.then.i164)) #7
          to label %ad714x_slider_cal_flt_pos.exit [label %if.then.i164], !srcloc !141

if.then.i164:                                     ; preds = %ad714x_slider_cal_highest_stage.exit162
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i163 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %137 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i163, align 4
  %139 = ptrtoint ptr %flt_pos.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %flt_pos.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_cal_flt_pos.__UNIQUE_ID_ddebug231, ptr noundef %138, ptr noundef nonnull @.str.47, i32 noundef %idx, i32 noundef %140) #7
  br label %ad714x_slider_cal_flt_pos.exit

ad714x_slider_cal_flt_pos.exit:                   ; preds = %if.then.i164, %ad714x_slider_cal_highest_stage.exit162
  %input = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 4
  %141 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %input, align 4
  %flt_pos38 = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 2
  %143 = ptrtoint ptr %flt_pos38 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %flt_pos38, align 4
  tail call void @input_event(ptr noundef %142, i32 noundef 3, i32 noundef 0, i32 noundef %144) #7
  %145 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %146, i32 noundef 1, i32 noundef 330, i32 noundef 1) #7
  br label %if.end59

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i165) #7
  %147 = ptrtoint ptr %data.i.i165 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 -1, ptr %data.i.i165, align 2, !annotation !140
  %read.i.i174 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %148 = ptrtoint ptr %read.i.i174 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %read.i.i174, align 32
  %call.i.i175 = call i32 %149(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i165, i32 noundef 1) #7
  %shl4.i.i176 = shl nuw i32 1, %9
  %150 = ptrtoint ptr %data.i.i165 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %data.i.i165, align 2
  %152 = trunc i32 %shl4.i.i176 to i16
  %153 = xor i16 %152, -1
  %conv6.i.i177 = and i16 %151, %153
  store i16 %conv6.i.i177, ptr %data.i.i165, align 2
  %write.i.i178 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %154 = ptrtoint ptr %write.i.i178 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %write.i.i178, align 4
  %call7.i.i179 = call i32 %155(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i177) #7
  %156 = ptrtoint ptr %read.i.i174 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %read.i.i174, align 32
  %call9.i.i180 = call i32 %157(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i165, i32 noundef 1) #7
  %158 = ptrtoint ptr %data.i.i165 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %data.i.i165, align 2
  %conv12.i.i181 = or i16 %159, %14
  store i16 %conv12.i.i181, ptr %data.i.i165, align 2
  %160 = ptrtoint ptr %write.i.i178 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %write.i.i178, align 4
  %call14.i.i182 = call i32 %161(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i181) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i165) #7
  %162 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %state, align 4
  %input41 = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 4
  %163 = ptrtoint ptr %input41 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %input41, align 4
  call void @input_event(ptr noundef %164, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_state_machine.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_state_machine, %if.then54)) #7
          to label %if.end59 [label %if.then54], !srcloc !141

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev55 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %165 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_state_machine.__UNIQUE_ID_ddebug233, ptr noundef %166, ptr noundef nonnull @.str.41, i32 noundef %idx) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.else, %ad714x_slider_cal_flt_pos.exit
  %input60 = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 4
  %167 = ptrtoint ptr %input60 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %input60, align 4
  call void @input_event(ptr noundef %168, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %sw.bb30.sw.epilog_crit_edge, %ad714x_slider_cal_highest_stage.exit, %sw.bb23.sw.epilog_crit_edge, %if.then21, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad714x_wheel_state_machine(ptr noundef %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %data.i.i228 = alloca i16, align 2
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %wheel = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %wheel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wheel, align 4
  %arrayidx = getelementptr %struct.ad714x_wheel_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %wheel3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %wheel3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wheel3, align 4
  %arrayidx4 = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx
  %end_stage = getelementptr %struct.ad714x_wheel_plat, ptr %3, i32 %idx, i32 1
  %8 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end_stage, align 4
  %add = add i32 %9, 1
  %notmask.neg = shl nuw i32 1, %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %notmask104 = shl nsw i32 -1, %11
  %sub7 = add i32 %notmask.neg, %notmask104
  %h_state8 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 1
  %12 = ptrtoint ptr %h_state8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %h_state8, align 2
  %14 = trunc i32 %sub7 to i16
  %conv11 = and i16 %13, %14
  %c_state12 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 2
  %15 = ptrtoint ptr %c_state12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %c_state12, align 4
  %conv16 = and i16 %16, %14
  %state = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %18, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool.not = icmp eq i16 %conv11, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state, align 4
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 16
  %wheel.i = getelementptr inbounds %struct.ad714x_platform_data, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %wheel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wheel.i, align 4
  %arrayidx.i = getelementptr %struct.ad714x_wheel_plat, ptr %24, i32 %idx
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %end_stage.i = getelementptr %struct.ad714x_wheel_plat, ptr %24, i32 %idx, i32 1
  %27 = ptrtoint ptr %end_stage.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end_stage.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #7
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 -1, ptr %data.i.i, align 2, !annotation !140
  %add.i.i = add i32 %28, 1
  %notmask.neg.i.i = shl nuw i32 1, %add.i.i
  %notmask23.i.i = shl nsw i32 -1, %26
  %sub3.i.i = add i32 %notmask.neg.i.i, %notmask23.i.i
  %read.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %30 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i.i, align 32
  %call.i.i = call i32 %31(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %shl4.i.i = shl nuw i32 1, %28
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.i.i, align 2
  %34 = trunc i32 %shl4.i.i to i16
  %conv6.i.i = or i16 %33, %34
  store i16 %conv6.i.i, ptr %data.i.i, align 2
  %write.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %35 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i, align 4
  %call7.i.i = call i32 %36(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i) #7
  %37 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i.i, align 32
  %call9.i.i = call i32 %38(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %data.i.i, align 2
  %41 = trunc i32 %sub3.i.i to i16
  %42 = xor i16 %41, -1
  %conv12.i.i = and i16 %40, %42
  store i16 %conv12.i.i, ptr %data.i.i, align 2
  %43 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %write.i.i, align 4
  %call14.i.i = call i32 %44(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_wheel_state_machine, %if.then21)) #7
          to label %sw.epilog [label %if.then21], !srcloc !141

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug235, ptr noundef %46, ptr noundef nonnull @.str.49, i32 noundef %idx) #7
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %14)
  %cmp = icmp eq i16 %conv16, %14
  br i1 %cmp, label %if.then27, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb23
  %read.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %47 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read.i, align 32
  %49 = trunc i32 %11 to i16
  %conv.i = add i16 %49, 11
  %arrayidx3.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i = sub i32 %add, %11
  %call.i = tail call i32 %48(ptr noundef %ad714x, i16 noundef zeroext %conv.i, ptr noundef %arrayidx3.i, i32 noundef %add5.i) #7
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp.not59.i = icmp sgt i32 %51, %53
  br i1 %cmp.not59.i, label %if.then27.ad714x_wheel_cal_sensor_val.exit_crit_edge, label %if.then27.for.body.i_crit_edge

if.then27.for.body.i_crit_edge:                   ; preds = %if.then27
  br label %for.body.i

if.then27.ad714x_wheel_cal_sensor_val.exit_crit_edge: ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_sensor_val.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then27.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %51, %if.then27.for.body.i_crit_edge ]
  %54 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read.i, align 32
  %56 = trunc i32 %i.060.i to i16
  %57 = mul i16 %56, 36
  %conv11.i = add i16 %57, 241
  %arrayidx12.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.060.i
  %call13.i = tail call i32 %55(ptr noundef %ad714x, i16 noundef zeroext %conv11.i, ptr noundef %arrayidx12.i, i32 noundef 1) #7
  %arrayidx15.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.060.i
  %58 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx15.i, align 2
  %60 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx12.i, align 2
  %62 = tail call i16 @llvm.usub.sat.i16(i16 %59, i16 %61) #7
  %63 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.060.i
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %62, ptr %63, align 2
  %inc.i = add i32 %i.060.i, 1
  %65 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %end_stage, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %66
  br i1 %cmp.not.i, label %for.body.i.ad714x_wheel_cal_sensor_val.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ad714x_wheel_cal_sensor_val.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_sensor_val.exit

ad714x_wheel_cal_sensor_val.exit:                 ; preds = %for.body.i.ad714x_wheel_cal_sensor_val.exit_crit_edge, %if.then27.ad714x_wheel_cal_sensor_val.exit_crit_edge
  %67 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw1, align 16
  %wheel.i113 = getelementptr inbounds %struct.ad714x_platform_data, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %wheel.i113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wheel.i113, align 4
  %arrayidx.i114 = getelementptr %struct.ad714x_wheel_plat, ptr %70, i32 %idx
  %71 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sw2, align 4
  %wheel3.i = getelementptr inbounds %struct.ad714x_driver_data, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %wheel3.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %wheel3.i, align 4
  %highest_stage.i = getelementptr %struct.ad714x_wheel_drv, ptr %74, i32 %idx, i32 3
  %75 = ptrtoint ptr %highest_stage.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %highest_stage.i, align 4
  %pre_highest_stage.i = getelementptr %struct.ad714x_wheel_drv, ptr %74, i32 %idx, i32 2
  %77 = ptrtoint ptr %pre_highest_stage.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %pre_highest_stage.i, align 4
  %78 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i114, align 4
  %end_stage.i115 = getelementptr %struct.ad714x_wheel_plat, ptr %70, i32 %idx, i32 1
  %80 = ptrtoint ptr %end_stage.i115 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %end_stage.i115, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp.not12.i.i = icmp sgt i32 %79, %81
  br i1 %cmp.not12.i.i, label %ad714x_wheel_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge, label %ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge

ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge: ; preds = %ad714x_wheel_cal_sensor_val.exit
  br label %for.body.i.i

ad714x_wheel_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge: ; preds = %ad714x_wheel_cal_sensor_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %79, %ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %max_idx.014.i.i = phi i32 [ %spec.select11.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %max_res.013.i.i = phi i32 [ %84, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %ad714x_wheel_cal_sensor_val.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i.i
  %82 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %83 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i.i, i32 %conv.i.i)
  %cmp1.i.i = icmp ult i32 %max_res.013.i.i, %conv.i.i
  %84 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i.i, i32 %conv.i.i) #7
  %spec.select11.i.i = select i1 %cmp1.i.i, i32 %i.015.i.i, i32 %max_idx.014.i.i
  %inc.i.i = add i32 %i.015.i.i, 1
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %81
  br i1 %cmp.not.i.i, label %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i

ad714x_cal_highest_stage.exit.i:                  ; preds = %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge, %ad714x_wheel_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge
  %max_idx.0.lcssa.i.i = phi i32 [ 0, %ad714x_wheel_cal_sensor_val.exit.ad714x_cal_highest_stage.exit.i_crit_edge ], [ %spec.select11.i.i, %for.body.i.i.ad714x_cal_highest_stage.exit.i_crit_edge ]
  %85 = ptrtoint ptr %highest_stage.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %max_idx.0.lcssa.i.i, ptr %highest_stage.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_wheel_state_machine, %if.then.i)) #7
          to label %ad714x_wheel_cal_highest_stage.exit [label %if.then.i], !srcloc !141

if.then.i:                                        ; preds = %ad714x_cal_highest_stage.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  %88 = ptrtoint ptr %highest_stage.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %highest_stage.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234, ptr noundef %87, ptr noundef nonnull @.str.52, i32 noundef %idx, i32 noundef %89) #7
  br label %ad714x_wheel_cal_highest_stage.exit

ad714x_wheel_cal_highest_stage.exit:              ; preds = %if.then.i, %ad714x_cal_highest_stage.exit.i
  %90 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw1, align 16
  %wheel.i117 = getelementptr inbounds %struct.ad714x_platform_data, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %wheel.i117 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wheel.i117, align 4
  %arrayidx.i118 = getelementptr %struct.ad714x_wheel_plat, ptr %93, i32 %idx
  %94 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sw2, align 4
  %wheel3.i120 = getelementptr inbounds %struct.ad714x_driver_data, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %wheel3.i120 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %wheel3.i120, align 4
  %arrayidx4.i = getelementptr %struct.ad714x_wheel_drv, ptr %97, i32 %idx
  %end_stage.i121 = getelementptr %struct.ad714x_wheel_plat, ptr %93, i32 %idx, i32 1
  %98 = ptrtoint ptr %end_stage.i121 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %end_stage.i121, align 4
  %100 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i118, align 4
  %sub.i122 = sub i32 %99, %101
  %add.i = add i32 %sub.i122, 1
  %highest_stage.i123 = getelementptr %struct.ad714x_wheel_drv, ptr %97, i32 %idx, i32 3
  %102 = ptrtoint ptr %highest_stage.i123 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %highest_stage.i123, align 4
  %sub6.i = add i32 %103, %sub.i122
  %rem.i = srem i32 %sub6.i, %add.i
  %add5.i124 = add i32 %103, 1
  %add10.i = add i32 %add5.i124, %add.i
  %rem11.i = srem i32 %add10.i, %add.i
  %arrayidx12.i125 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %103
  %104 = ptrtoint ptr %arrayidx12.i125 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx12.i125, align 2
  %conv.i126 = zext i16 %105 to i32
  %sub14.i = sub i32 %103, %101
  %mul.i = mul i32 %sub14.i, %conv.i126
  %arrayidx16.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %rem.i
  %106 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = zext i16 %107 to i32
  %sub20.i = add i32 %sub14.i, -1
  %mul21.i = mul i32 %sub20.i, %conv17.i
  %add22.i = add i32 %mul21.i, %mul.i
  %arrayidx24.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %rem11.i
  %108 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %arrayidx24.i, align 2
  %conv25.i = zext i16 %109 to i32
  %add28.i = add i32 %sub14.i, 1
  %mul29.i = mul i32 %add28.i, %conv25.i
  %add30.i = add i32 %add22.i, %mul29.i
  %add37.i = add nuw nsw i32 %conv17.i, %conv.i126
  %add41.i = add nuw nsw i32 %add37.i, %conv25.i
  %max_coord.i = getelementptr %struct.ad714x_wheel_plat, ptr %93, i32 %idx, i32 2
  %110 = ptrtoint ptr %max_coord.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %max_coord.i, align 4
  %div.i = sdiv i32 %111, %sub.i122
  %mul45.i = mul i32 %add30.i, %div.i
  %div46.i = sdiv i32 %mul45.i, %add41.i
  %112 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %div46.i, ptr %arrayidx4.i, align 4
  %113 = load i32, ptr %max_coord.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div46.i, i32 %113)
  %cmp.i = icmp sgt i32 %div46.i, %113
  br i1 %cmp.i, label %ad714x_wheel_cal_highest_stage.exit.if.end57.sink.split.i_crit_edge, label %if.else.i

ad714x_wheel_cal_highest_stage.exit.if.end57.sink.split.i_crit_edge: ; preds = %ad714x_wheel_cal_highest_stage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i

if.else.i:                                        ; preds = %ad714x_wheel_cal_highest_stage.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div46.i)
  %cmp53.i = icmp slt i32 %div46.i, 0
  br i1 %cmp53.i, label %if.else.i.if.end57.sink.split.i_crit_edge, label %if.else.i.ad714x_wheel_cal_abs_pos.exit_crit_edge

if.else.i.ad714x_wheel_cal_abs_pos.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_abs_pos.exit

if.else.i.if.end57.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i

if.end57.sink.split.i:                            ; preds = %if.else.i.if.end57.sink.split.i_crit_edge, %ad714x_wheel_cal_highest_stage.exit.if.end57.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %113, %ad714x_wheel_cal_highest_stage.exit.if.end57.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end57.sink.split.i_crit_edge ]
  %114 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %.sink.i, ptr %arrayidx4.i, align 4
  br label %ad714x_wheel_cal_abs_pos.exit

ad714x_wheel_cal_abs_pos.exit:                    ; preds = %if.end57.sink.split.i, %if.else.i.ad714x_wheel_cal_abs_pos.exit_crit_edge
  %115 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx4, align 4
  %flt_pos = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 1
  %117 = ptrtoint ptr %flt_pos to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %flt_pos, align 4
  %118 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv16, i16 %14)
  %cmp33 = icmp eq i16 %conv16, %14
  br i1 %cmp33, label %if.then35, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then35:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv11)
  %tobool36.not = icmp eq i16 %conv11, 0
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then35
  %read.i130 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %119 = ptrtoint ptr %read.i130 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read.i130, align 32
  %121 = trunc i32 %11 to i16
  %conv.i131 = add i16 %121, 11
  %arrayidx3.i132 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i135 = sub i32 %add, %11
  %call.i136 = tail call i32 %120(ptr noundef %ad714x, i16 noundef zeroext %conv.i131, ptr noundef %arrayidx3.i132, i32 noundef %add5.i135) #7
  %122 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx, align 4
  %124 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %125)
  %cmp.not59.i137 = icmp sgt i32 %123, %125
  br i1 %cmp.not59.i137, label %if.then37.ad714x_wheel_cal_sensor_val.exit146_crit_edge, label %if.then37.for.body.i145_crit_edge

if.then37.for.body.i145_crit_edge:                ; preds = %if.then37
  br label %for.body.i145

if.then37.ad714x_wheel_cal_sensor_val.exit146_crit_edge: ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_sensor_val.exit146

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %if.then37.for.body.i145_crit_edge
  %i.060.i138 = phi i32 [ %inc.i143, %for.body.i145.for.body.i145_crit_edge ], [ %123, %if.then37.for.body.i145_crit_edge ]
  %126 = ptrtoint ptr %read.i130 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %read.i130, align 32
  %128 = trunc i32 %i.060.i138 to i16
  %129 = mul i16 %128, 36
  %conv11.i139 = add i16 %129, 241
  %arrayidx12.i140 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.060.i138
  %call13.i141 = tail call i32 %127(ptr noundef %ad714x, i16 noundef zeroext %conv11.i139, ptr noundef %arrayidx12.i140, i32 noundef 1) #7
  %arrayidx15.i142 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.060.i138
  %130 = ptrtoint ptr %arrayidx15.i142 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %arrayidx15.i142, align 2
  %132 = ptrtoint ptr %arrayidx12.i140 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %arrayidx12.i140, align 2
  %134 = tail call i16 @llvm.usub.sat.i16(i16 %131, i16 %133) #7
  %135 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.060.i138
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %134, ptr %135, align 2
  %inc.i143 = add i32 %i.060.i138, 1
  %137 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %end_stage, align 4
  %cmp.not.i144 = icmp sgt i32 %inc.i143, %138
  br i1 %cmp.not.i144, label %for.body.i145.ad714x_wheel_cal_sensor_val.exit146_crit_edge, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i145

for.body.i145.ad714x_wheel_cal_sensor_val.exit146_crit_edge: ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_sensor_val.exit146

ad714x_wheel_cal_sensor_val.exit146:              ; preds = %for.body.i145.ad714x_wheel_cal_sensor_val.exit146_crit_edge, %if.then37.ad714x_wheel_cal_sensor_val.exit146_crit_edge
  %139 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw1, align 16
  %wheel.i148 = getelementptr inbounds %struct.ad714x_platform_data, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %wheel.i148 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %wheel.i148, align 4
  %arrayidx.i149 = getelementptr %struct.ad714x_wheel_plat, ptr %142, i32 %idx
  %143 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sw2, align 4
  %wheel3.i151 = getelementptr inbounds %struct.ad714x_driver_data, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %wheel3.i151 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %wheel3.i151, align 4
  %highest_stage.i152 = getelementptr %struct.ad714x_wheel_drv, ptr %146, i32 %idx, i32 3
  %147 = ptrtoint ptr %highest_stage.i152 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %highest_stage.i152, align 4
  %pre_highest_stage.i153 = getelementptr %struct.ad714x_wheel_drv, ptr %146, i32 %idx, i32 2
  %149 = ptrtoint ptr %pre_highest_stage.i153 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %pre_highest_stage.i153, align 4
  %150 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i149, align 4
  %end_stage.i154 = getelementptr %struct.ad714x_wheel_plat, ptr %142, i32 %idx, i32 1
  %152 = ptrtoint ptr %end_stage.i154 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %end_stage.i154, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp.not12.i.i155 = icmp sgt i32 %151, %153
  br i1 %cmp.not12.i.i155, label %ad714x_wheel_cal_sensor_val.exit146.ad714x_cal_highest_stage.exit.i167_crit_edge, label %ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge

ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge: ; preds = %ad714x_wheel_cal_sensor_val.exit146
  br label %for.body.i.i165

ad714x_wheel_cal_sensor_val.exit146.ad714x_cal_highest_stage.exit.i167_crit_edge: ; preds = %ad714x_wheel_cal_sensor_val.exit146
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i167

for.body.i.i165:                                  ; preds = %for.body.i.i165.for.body.i.i165_crit_edge, %ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge
  %i.015.i.i156 = phi i32 [ %inc.i.i163, %for.body.i.i165.for.body.i.i165_crit_edge ], [ %151, %ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge ]
  %max_idx.014.i.i157 = phi i32 [ %spec.select11.i.i162, %for.body.i.i165.for.body.i.i165_crit_edge ], [ 0, %ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge ]
  %max_res.013.i.i158 = phi i32 [ %156, %for.body.i.i165.for.body.i.i165_crit_edge ], [ 0, %ad714x_wheel_cal_sensor_val.exit146.for.body.i.i165_crit_edge ]
  %arrayidx.i.i159 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i.i156
  %154 = ptrtoint ptr %arrayidx.i.i159 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %arrayidx.i.i159, align 2
  %conv.i.i160 = zext i16 %155 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i.i158, i32 %conv.i.i160)
  %cmp1.i.i161 = icmp ult i32 %max_res.013.i.i158, %conv.i.i160
  %156 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i.i158, i32 %conv.i.i160) #7
  %spec.select11.i.i162 = select i1 %cmp1.i.i161, i32 %i.015.i.i156, i32 %max_idx.014.i.i157
  %inc.i.i163 = add i32 %i.015.i.i156, 1
  %cmp.not.i.i164 = icmp sgt i32 %inc.i.i163, %153
  br i1 %cmp.not.i.i164, label %for.body.i.i165.ad714x_cal_highest_stage.exit.i167_crit_edge, label %for.body.i.i165.for.body.i.i165_crit_edge

for.body.i.i165.for.body.i.i165_crit_edge:        ; preds = %for.body.i.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i165

for.body.i.i165.ad714x_cal_highest_stage.exit.i167_crit_edge: ; preds = %for.body.i.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit.i167

ad714x_cal_highest_stage.exit.i167:               ; preds = %for.body.i.i165.ad714x_cal_highest_stage.exit.i167_crit_edge, %ad714x_wheel_cal_sensor_val.exit146.ad714x_cal_highest_stage.exit.i167_crit_edge
  %max_idx.0.lcssa.i.i166 = phi i32 [ 0, %ad714x_wheel_cal_sensor_val.exit146.ad714x_cal_highest_stage.exit.i167_crit_edge ], [ %spec.select11.i.i162, %for.body.i.i165.ad714x_cal_highest_stage.exit.i167_crit_edge ]
  %157 = ptrtoint ptr %highest_stage.i152 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %max_idx.0.lcssa.i.i166, ptr %highest_stage.i152, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_wheel_state_machine, %if.then.i169)) #7
          to label %ad714x_wheel_cal_highest_stage.exit170 [label %if.then.i169], !srcloc !141

if.then.i169:                                     ; preds = %ad714x_cal_highest_stage.exit.i167
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i168 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %158 = ptrtoint ptr %dev.i168 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i168, align 4
  %160 = ptrtoint ptr %highest_stage.i152 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %highest_stage.i152, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234, ptr noundef %159, ptr noundef nonnull @.str.52, i32 noundef %idx, i32 noundef %161) #7
  br label %ad714x_wheel_cal_highest_stage.exit170

ad714x_wheel_cal_highest_stage.exit170:           ; preds = %if.then.i169, %ad714x_cal_highest_stage.exit.i167
  %162 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw1, align 16
  %wheel.i172 = getelementptr inbounds %struct.ad714x_platform_data, ptr %163, i32 0, i32 5
  %164 = ptrtoint ptr %wheel.i172 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %wheel.i172, align 4
  %arrayidx.i173 = getelementptr %struct.ad714x_wheel_plat, ptr %165, i32 %idx
  %166 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %sw2, align 4
  %wheel3.i175 = getelementptr inbounds %struct.ad714x_driver_data, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %wheel3.i175 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %wheel3.i175, align 4
  %arrayidx4.i176 = getelementptr %struct.ad714x_wheel_drv, ptr %169, i32 %idx
  %end_stage.i177 = getelementptr %struct.ad714x_wheel_plat, ptr %165, i32 %idx, i32 1
  %170 = ptrtoint ptr %end_stage.i177 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %end_stage.i177, align 4
  %172 = ptrtoint ptr %arrayidx.i173 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i173, align 4
  %sub.i178 = sub i32 %171, %173
  %add.i179 = add i32 %sub.i178, 1
  %highest_stage.i180 = getelementptr %struct.ad714x_wheel_drv, ptr %169, i32 %idx, i32 3
  %174 = ptrtoint ptr %highest_stage.i180 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %highest_stage.i180, align 4
  %sub6.i181 = add i32 %175, %sub.i178
  %rem.i182 = srem i32 %sub6.i181, %add.i179
  %add5.i183 = add i32 %175, 1
  %add10.i184 = add i32 %add5.i183, %add.i179
  %rem11.i185 = srem i32 %add10.i184, %add.i179
  %arrayidx12.i186 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %175
  %176 = ptrtoint ptr %arrayidx12.i186 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %arrayidx12.i186, align 2
  %conv.i187 = zext i16 %177 to i32
  %sub14.i188 = sub i32 %175, %173
  %mul.i189 = mul i32 %sub14.i188, %conv.i187
  %arrayidx16.i190 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %rem.i182
  %178 = ptrtoint ptr %arrayidx16.i190 to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %arrayidx16.i190, align 2
  %conv17.i191 = zext i16 %179 to i32
  %sub20.i192 = add i32 %sub14.i188, -1
  %mul21.i193 = mul i32 %sub20.i192, %conv17.i191
  %add22.i194 = add i32 %mul21.i193, %mul.i189
  %arrayidx24.i195 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %rem11.i185
  %180 = ptrtoint ptr %arrayidx24.i195 to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %arrayidx24.i195, align 2
  %conv25.i196 = zext i16 %181 to i32
  %add28.i197 = add i32 %sub14.i188, 1
  %mul29.i198 = mul i32 %add28.i197, %conv25.i196
  %add30.i199 = add i32 %add22.i194, %mul29.i198
  %add37.i200 = add nuw nsw i32 %conv17.i191, %conv.i187
  %add41.i201 = add nuw nsw i32 %add37.i200, %conv25.i196
  %max_coord.i202 = getelementptr %struct.ad714x_wheel_plat, ptr %165, i32 %idx, i32 2
  %182 = ptrtoint ptr %max_coord.i202 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %max_coord.i202, align 4
  %div.i203 = sdiv i32 %183, %sub.i178
  %mul45.i204 = mul i32 %add30.i199, %div.i203
  %div46.i205 = sdiv i32 %mul45.i204, %add41.i201
  %184 = ptrtoint ptr %arrayidx4.i176 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %div46.i205, ptr %arrayidx4.i176, align 4
  %185 = load i32, ptr %max_coord.i202, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div46.i205, i32 %185)
  %cmp.i206 = icmp sgt i32 %div46.i205, %185
  br i1 %cmp.i206, label %ad714x_wheel_cal_highest_stage.exit170.if.end57.sink.split.i210_crit_edge, label %if.else.i208

ad714x_wheel_cal_highest_stage.exit170.if.end57.sink.split.i210_crit_edge: ; preds = %ad714x_wheel_cal_highest_stage.exit170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i210

if.else.i208:                                     ; preds = %ad714x_wheel_cal_highest_stage.exit170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div46.i205)
  %cmp53.i207 = icmp slt i32 %div46.i205, 0
  br i1 %cmp53.i207, label %if.else.i208.if.end57.sink.split.i210_crit_edge, label %if.else.i208.ad714x_wheel_cal_abs_pos.exit211_crit_edge

if.else.i208.ad714x_wheel_cal_abs_pos.exit211_crit_edge: ; preds = %if.else.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_abs_pos.exit211

if.else.i208.if.end57.sink.split.i210_crit_edge:  ; preds = %if.else.i208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.sink.split.i210

if.end57.sink.split.i210:                         ; preds = %if.else.i208.if.end57.sink.split.i210_crit_edge, %ad714x_wheel_cal_highest_stage.exit170.if.end57.sink.split.i210_crit_edge
  %.sink.i209 = phi i32 [ %185, %ad714x_wheel_cal_highest_stage.exit170.if.end57.sink.split.i210_crit_edge ], [ 0, %if.else.i208.if.end57.sink.split.i210_crit_edge ]
  %186 = ptrtoint ptr %arrayidx4.i176 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %.sink.i209, ptr %arrayidx4.i176, align 4
  br label %ad714x_wheel_cal_abs_pos.exit211

ad714x_wheel_cal_abs_pos.exit211:                 ; preds = %if.end57.sink.split.i210, %if.else.i208.ad714x_wheel_cal_abs_pos.exit211_crit_edge
  %187 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw1, align 16
  %wheel.i213 = getelementptr inbounds %struct.ad714x_platform_data, ptr %188, i32 0, i32 5
  %189 = ptrtoint ptr %wheel.i213 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %wheel.i213, align 4
  %arrayidx.i214 = getelementptr %struct.ad714x_wheel_plat, ptr %190, i32 %idx
  %191 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sw2, align 4
  %wheel3.i216 = getelementptr inbounds %struct.ad714x_driver_data, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %wheel3.i216 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %wheel3.i216, align 4
  %arrayidx4.i217 = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx
  %pre_highest_stage.i218 = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 2
  %195 = ptrtoint ptr %pre_highest_stage.i218 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pre_highest_stage.i218, align 4
  %end_stage.i219 = getelementptr %struct.ad714x_wheel_plat, ptr %190, i32 %idx, i32 1
  %197 = ptrtoint ptr %end_stage.i219 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %end_stage.i219, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp.i220 = icmp eq i32 %196, %198
  br i1 %cmp.i220, label %land.lhs.true.i, label %ad714x_wheel_cal_abs_pos.exit211.lor.lhs.false.i_crit_edge

ad714x_wheel_cal_abs_pos.exit211.lor.lhs.false.i_crit_edge: ; preds = %ad714x_wheel_cal_abs_pos.exit211
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %ad714x_wheel_cal_abs_pos.exit211
  %highest_stage.i221 = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 3
  %199 = ptrtoint ptr %highest_stage.i221 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %highest_stage.i221, align 4
  %201 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %200, i32 %202)
  %cmp5.i = icmp eq i32 %200, %202
  br i1 %cmp5.i, label %land.lhs.true.i.if.then.i222_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false.i

land.lhs.true.i.if.then.i222_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i222

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %ad714x_wheel_cal_abs_pos.exit211.lor.lhs.false.i_crit_edge
  %203 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx.i214, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %204)
  %cmp8.i = icmp eq i32 %196, %204
  br i1 %cmp8.i, label %land.lhs.true9.i, label %lor.lhs.false.i.if.else.i226_crit_edge

lor.lhs.false.i.if.else.i226_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i226

land.lhs.true9.i:                                 ; preds = %lor.lhs.false.i
  %highest_stage10.i = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 3
  %205 = ptrtoint ptr %highest_stage10.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %highest_stage10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %198)
  %cmp12.i = icmp eq i32 %206, %198
  br i1 %cmp12.i, label %land.lhs.true9.i.if.then.i222_crit_edge, label %land.lhs.true9.i.if.else.i226_crit_edge

land.lhs.true9.i.if.else.i226_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i226

land.lhs.true9.i.if.then.i222_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i222

if.then.i222:                                     ; preds = %land.lhs.true9.i.if.then.i222_crit_edge, %land.lhs.true.i.if.then.i222_crit_edge
  %207 = ptrtoint ptr %arrayidx4.i217 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx4.i217, align 4
  %flt_pos.i = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 1
  %209 = ptrtoint ptr %flt_pos.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %flt_pos.i, align 4
  br label %if.end.i

if.else.i226:                                     ; preds = %land.lhs.true9.i.if.else.i226_crit_edge, %lor.lhs.false.i.if.else.i226_crit_edge
  %flt_pos13.i = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 1
  %210 = ptrtoint ptr %flt_pos13.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %flt_pos13.i, align 4
  %mul.i223 = mul i32 %211, 30
  %212 = ptrtoint ptr %arrayidx4.i217 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx4.i217, align 4
  %mul15.i = mul i32 %213, 71
  %add.i224 = add i32 %mul15.i, %mul.i223
  %div.i225 = sdiv i32 %add.i224, 100
  store i32 %div.i225, ptr %flt_pos13.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i226, %if.then.i222
  %flt_pos17.i = getelementptr %struct.ad714x_wheel_drv, ptr %194, i32 %idx, i32 1
  %214 = ptrtoint ptr %flt_pos17.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %flt_pos17.i, align 4
  %max_coord.i227 = getelementptr %struct.ad714x_wheel_plat, ptr %190, i32 %idx, i32 2
  %216 = ptrtoint ptr %max_coord.i227 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %max_coord.i227, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp18.i = icmp sgt i32 %215, %217
  br i1 %cmp18.i, label %if.then19.i, label %if.end.i.ad714x_wheel_cal_flt_pos.exit_crit_edge

if.end.i.ad714x_wheel_cal_flt_pos.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_wheel_cal_flt_pos.exit

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %flt_pos17.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %flt_pos17.i, align 4
  br label %ad714x_wheel_cal_flt_pos.exit

ad714x_wheel_cal_flt_pos.exit:                    ; preds = %if.then19.i, %if.end.i.ad714x_wheel_cal_flt_pos.exit_crit_edge
  %input = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 5
  %219 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %input, align 4
  %flt_pos38 = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 1
  %221 = ptrtoint ptr %flt_pos38 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flt_pos38, align 4
  tail call void @input_event(ptr noundef %220, i32 noundef 3, i32 noundef 8, i32 noundef %222) #7
  %223 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %224, i32 noundef 1, i32 noundef 330, i32 noundef 1) #7
  br label %if.end59

if.else:                                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i228) #7
  %225 = ptrtoint ptr %data.i.i228 to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -1, ptr %data.i.i228, align 2, !annotation !140
  %read.i.i237 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %226 = ptrtoint ptr %read.i.i237 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %read.i.i237, align 32
  %call.i.i238 = call i32 %227(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i228, i32 noundef 1) #7
  %shl4.i.i239 = shl nuw i32 1, %9
  %228 = ptrtoint ptr %data.i.i228 to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %data.i.i228, align 2
  %230 = trunc i32 %shl4.i.i239 to i16
  %231 = xor i16 %230, -1
  %conv6.i.i240 = and i16 %229, %231
  store i16 %conv6.i.i240, ptr %data.i.i228, align 2
  %write.i.i241 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %232 = ptrtoint ptr %write.i.i241 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %write.i.i241, align 4
  %call7.i.i242 = call i32 %233(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i240) #7
  %234 = ptrtoint ptr %read.i.i237 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %read.i.i237, align 32
  %call9.i.i243 = call i32 %235(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i228, i32 noundef 1) #7
  %236 = ptrtoint ptr %data.i.i228 to i32
  call void @__asan_load2_noabort(i32 %236)
  %237 = load i16, ptr %data.i.i228, align 2
  %conv12.i.i244 = or i16 %237, %14
  store i16 %conv12.i.i244, ptr %data.i.i228, align 2
  %238 = ptrtoint ptr %write.i.i241 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %write.i.i241, align 4
  %call14.i.i245 = call i32 %239(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i244) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i228) #7
  %240 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 0, ptr %state, align 4
  %input41 = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 5
  %241 = ptrtoint ptr %input41 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %input41, align 4
  call void @input_event(ptr noundef %242, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_wheel_state_machine, %if.then54)) #7
          to label %if.end59 [label %if.then54], !srcloc !141

if.then54:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev55 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %243 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug236, ptr noundef %244, ptr noundef nonnull @.str.50, i32 noundef %idx) #7
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.else, %ad714x_wheel_cal_flt_pos.exit
  %input60 = getelementptr %struct.ad714x_wheel_drv, ptr %7, i32 %idx, i32 5
  %245 = ptrtoint ptr %input60 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %input60, align 4
  call void @input_event(ptr noundef %246, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end59, %sw.bb30.sw.epilog_crit_edge, %ad714x_wheel_cal_abs_pos.exit, %sw.bb23.sw.epilog_crit_edge, %if.then21, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad714x_touchpad_state_machine(ptr noundef %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  %data.i7.i = alloca i16, align 2
  %data.i.i192 = alloca i16, align 2
  %data.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %touchpad = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %arrayidx = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %touchpad3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad3, align 4
  %x_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 1
  %8 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %x_end_stage, align 4
  %add = add i32 %9, 1
  %notmask.neg = shl nuw i32 1, %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %notmask159 = shl nsw i32 -1, %11
  %sub7 = add i32 %notmask.neg, %notmask159
  %y_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 4
  %12 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_end_stage, align 4
  %add8 = add i32 %13, 1
  %notmask.neg161 = shl nuw i32 1, %add8
  %y_start_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 3
  %14 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y_start_stage, align 4
  %notmask160 = shl nsw i32 -1, %15
  %sub13 = add i32 %notmask160, %sub7
  %add14 = add i32 %sub13, %notmask.neg161
  %h_state15 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 1
  %16 = ptrtoint ptr %h_state15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_state15, align 2
  %18 = trunc i32 %add14 to i16
  %conv18 = and i16 %17, %18
  %c_state19 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 2
  %19 = ptrtoint ptr %c_state19 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %c_state19, align 4
  %conv23 = and i16 %20, %18
  %state = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 14
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %22, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb60
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18)
  %tobool.not = icmp eq i16 %conv18, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state, align 4
  %25 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1, align 16
  %touchpad.i = getelementptr inbounds %struct.ad714x_platform_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %touchpad.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %touchpad.i, align 4
  %arrayidx.i = getelementptr %struct.ad714x_touchpad_plat, ptr %28, i32 %idx
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %x_end_stage.i = getelementptr %struct.ad714x_touchpad_plat, ptr %28, i32 %idx, i32 1
  %31 = ptrtoint ptr %x_end_stage.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x_end_stage.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #7
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -1, ptr %data.i.i, align 2, !annotation !140
  %add.i.i = add i32 %32, 1
  %notmask.neg.i.i = shl nuw i32 1, %add.i.i
  %notmask23.i.i = shl nsw i32 -1, %30
  %sub3.i.i = add i32 %notmask.neg.i.i, %notmask23.i.i
  %read.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %34 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i.i, align 32
  %call.i.i = call i32 %35(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %shl4.i.i = shl nuw i32 1, %32
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %data.i.i, align 2
  %38 = trunc i32 %shl4.i.i to i16
  %conv6.i.i = or i16 %37, %38
  store i16 %conv6.i.i, ptr %data.i.i, align 2
  %write.i.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %39 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i.i, align 4
  %call7.i.i = call i32 %40(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i) #7
  %41 = ptrtoint ptr %read.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i.i, align 32
  %call9.i.i = call i32 %42(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i, i32 noundef 1) #7
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %data.i.i, align 2
  %45 = trunc i32 %sub3.i.i to i16
  %46 = xor i16 %45, -1
  %conv12.i.i = and i16 %44, %46
  store i16 %conv12.i.i, ptr %data.i.i, align 2
  %47 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i.i, align 4
  %call14.i.i = call i32 %48(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_touchpad_state_machine, %if.then28)) #7
          to label %sw.epilog [label %if.then28], !srcloc !141

if.then28:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug240, ptr noundef %50, ptr noundef nonnull @.str.54, i32 noundef %idx) #7
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv23, i16 %18)
  %cmp = icmp eq i16 %conv23, %18
  br i1 %cmp, label %if.then34, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb30
  %read.i = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %51 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read.i, align 32
  %53 = trunc i32 %11 to i16
  %conv.i = add i16 %53, 11
  %arrayidx3.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i = sub i32 %add, %11
  %call.i = tail call i32 %52(ptr noundef %ad714x, i16 noundef zeroext %conv.i, ptr noundef %arrayidx3.i, i32 noundef %add5.i) #7
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx, align 4
  %56 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %x_end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp.not59.i = icmp sgt i32 %55, %57
  br i1 %cmp.not59.i, label %if.then34.touchpad_cal_sensor_val.exit_crit_edge, label %if.then34.for.body.i_crit_edge

if.then34.for.body.i_crit_edge:                   ; preds = %if.then34
  br label %for.body.i

if.then34.touchpad_cal_sensor_val.exit_crit_edge: ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %touchpad_cal_sensor_val.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then34.for.body.i_crit_edge
  %i.060.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %55, %if.then34.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %read.i, align 32
  %60 = trunc i32 %i.060.i to i16
  %61 = mul i16 %60, 36
  %conv11.i = add i16 %61, 241
  %arrayidx12.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.060.i
  %call13.i = tail call i32 %59(ptr noundef %ad714x, i16 noundef zeroext %conv11.i, ptr noundef %arrayidx12.i, i32 noundef 1) #7
  %arrayidx15.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.060.i
  %62 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx15.i, align 2
  %64 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx12.i, align 2
  %66 = tail call i16 @llvm.usub.sat.i16(i16 %63, i16 %65) #7
  %67 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.060.i
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %66, ptr %67, align 2
  %inc.i = add i32 %i.060.i, 1
  %69 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %x_end_stage, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %70
  br i1 %cmp.not.i, label %for.body.i.touchpad_cal_sensor_val.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.touchpad_cal_sensor_val.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %touchpad_cal_sensor_val.exit

touchpad_cal_sensor_val.exit:                     ; preds = %for.body.i.touchpad_cal_sensor_val.exit_crit_edge, %if.then34.touchpad_cal_sensor_val.exit_crit_edge
  tail call fastcc void @touchpad_cal_highest_stage(ptr noundef %ad714x, i32 noundef %idx)
  %call35 = tail call fastcc i32 @touchpad_check_second_peak(ptr noundef %ad714x, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true, label %touchpad_cal_sensor_val.exit.sw.epilog_crit_edge

touchpad_cal_sensor_val.exit.sw.epilog_crit_edge: ; preds = %touchpad_cal_sensor_val.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true:                                    ; preds = %touchpad_cal_sensor_val.exit
  %call37 = tail call fastcc i32 @touchpad_check_endpoint(ptr noundef %ad714x, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body40, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body40:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_touchpad_state_machine, %if.then52)) #7
          to label %do.end56 [label %if.then52], !srcloc !141

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %71 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug241, ptr noundef %72, ptr noundef nonnull @.str.55, i32 noundef %idx) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %do.body40
  tail call fastcc void @touchpad_cal_abs_pos(ptr noundef %ad714x, i32 noundef %idx)
  %x_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 2
  %73 = ptrtoint ptr %x_abs_pos to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %x_abs_pos, align 4
  %x_flt_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 1
  %75 = ptrtoint ptr %x_flt_pos to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %x_flt_pos, align 4
  %y_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 5
  %76 = ptrtoint ptr %y_abs_pos to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %y_abs_pos, align 4
  %y_flt_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 4
  %78 = ptrtoint ptr %y_flt_pos to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %y_flt_pos, align 4
  %79 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp2(i16 %conv23, i16 %18)
  %cmp63 = icmp eq i16 %conv23, %18
  br i1 %cmp63, label %if.then65, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then65:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv18)
  %tobool66.not = icmp eq i16 %conv18, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then65
  %read.i175 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %80 = ptrtoint ptr %read.i175 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %read.i175, align 32
  %82 = trunc i32 %11 to i16
  %conv.i176 = add i16 %82, 11
  %arrayidx3.i177 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %11
  %add5.i180 = sub i32 %add, %11
  %call.i181 = tail call i32 %81(ptr noundef %ad714x, i16 noundef zeroext %conv.i176, ptr noundef %arrayidx3.i177, i32 noundef %add5.i180) #7
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx, align 4
  %85 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %x_end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %86)
  %cmp.not59.i182 = icmp sgt i32 %84, %86
  br i1 %cmp.not59.i182, label %if.then67.touchpad_cal_sensor_val.exit191_crit_edge, label %if.then67.for.body.i190_crit_edge

if.then67.for.body.i190_crit_edge:                ; preds = %if.then67
  br label %for.body.i190

if.then67.touchpad_cal_sensor_val.exit191_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %touchpad_cal_sensor_val.exit191

for.body.i190:                                    ; preds = %for.body.i190.for.body.i190_crit_edge, %if.then67.for.body.i190_crit_edge
  %i.060.i183 = phi i32 [ %inc.i188, %for.body.i190.for.body.i190_crit_edge ], [ %84, %if.then67.for.body.i190_crit_edge ]
  %87 = ptrtoint ptr %read.i175 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read.i175, align 32
  %89 = trunc i32 %i.060.i183 to i16
  %90 = mul i16 %89, 36
  %conv11.i184 = add i16 %90, 241
  %arrayidx12.i185 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 4, i32 %i.060.i183
  %call13.i186 = tail call i32 %88(ptr noundef %ad714x, i16 noundef zeroext %conv11.i184, ptr noundef %arrayidx12.i185, i32 noundef 1) #7
  %arrayidx15.i187 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 3, i32 %i.060.i183
  %91 = ptrtoint ptr %arrayidx15.i187 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx15.i187, align 2
  %93 = ptrtoint ptr %arrayidx12.i185 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx12.i185, align 2
  %95 = tail call i16 @llvm.usub.sat.i16(i16 %92, i16 %94) #7
  %96 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.060.i183
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %95, ptr %96, align 2
  %inc.i188 = add i32 %i.060.i183, 1
  %98 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %x_end_stage, align 4
  %cmp.not.i189 = icmp sgt i32 %inc.i188, %99
  br i1 %cmp.not.i189, label %for.body.i190.touchpad_cal_sensor_val.exit191_crit_edge, label %for.body.i190.for.body.i190_crit_edge

for.body.i190.for.body.i190_crit_edge:            ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i190

for.body.i190.touchpad_cal_sensor_val.exit191_crit_edge: ; preds = %for.body.i190
  call void @__sanitizer_cov_trace_pc() #9
  br label %touchpad_cal_sensor_val.exit191

touchpad_cal_sensor_val.exit191:                  ; preds = %for.body.i190.touchpad_cal_sensor_val.exit191_crit_edge, %if.then67.touchpad_cal_sensor_val.exit191_crit_edge
  tail call fastcc void @touchpad_cal_highest_stage(ptr noundef %ad714x, i32 noundef %idx)
  %call68 = tail call fastcc i32 @touchpad_check_second_peak(ptr noundef %ad714x, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true70, label %touchpad_cal_sensor_val.exit191.if.end98_crit_edge

touchpad_cal_sensor_val.exit191.if.end98_crit_edge: ; preds = %touchpad_cal_sensor_val.exit191
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

land.lhs.true70:                                  ; preds = %touchpad_cal_sensor_val.exit191
  %call71 = tail call fastcc i32 @touchpad_check_endpoint(ptr noundef %ad714x, i32 noundef %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %land.lhs.true70.if.end98_crit_edge

land.lhs.true70.if.end98_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @touchpad_cal_abs_pos(ptr noundef %ad714x, i32 noundef %idx)
  tail call fastcc void @touchpad_cal_flt_pos(ptr noundef %ad714x, i32 noundef %idx)
  %input = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 15
  %100 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %input, align 4
  %x_flt_pos74 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 1
  %102 = ptrtoint ptr %x_flt_pos74 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %x_flt_pos74, align 4
  tail call void @input_event(ptr noundef %101, i32 noundef 3, i32 noundef 0, i32 noundef %103) #7
  %104 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %input, align 4
  %y_flt_pos76 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 4
  %106 = ptrtoint ptr %y_flt_pos76 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %y_flt_pos76, align 4
  tail call void @input_event(ptr noundef %105, i32 noundef 3, i32 noundef 1, i32 noundef %107) #7
  %108 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %109, i32 noundef 1, i32 noundef 330, i32 noundef 1) #7
  br label %if.end98

if.else:                                          ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i192) #7
  %110 = ptrtoint ptr %data.i.i192 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %data.i.i192, align 2, !annotation !140
  %read.i.i201 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 10
  %111 = ptrtoint ptr %read.i.i201 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %read.i.i201, align 32
  %call.i.i202 = call i32 %112(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i.i192, i32 noundef 1) #7
  %shl4.i.i203 = shl nuw i32 1, %9
  %113 = ptrtoint ptr %data.i.i192 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %data.i.i192, align 2
  %115 = trunc i32 %shl4.i.i203 to i16
  %116 = xor i16 %115, -1
  %conv6.i.i204 = and i16 %114, %116
  store i16 %conv6.i.i204, ptr %data.i.i192, align 2
  %write.i.i205 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 11
  %117 = ptrtoint ptr %write.i.i205 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %write.i.i205, align 4
  %call7.i.i206 = call i32 %118(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i.i204) #7
  %119 = ptrtoint ptr %read.i.i201 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %read.i.i201, align 32
  %call9.i.i207 = call i32 %120(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i.i192, i32 noundef 1) #7
  %121 = ptrtoint ptr %data.i.i192 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %data.i.i192, align 2
  %123 = trunc i32 %sub7 to i16
  %conv12.i.i208 = or i16 %122, %123
  store i16 %conv12.i.i208, ptr %data.i.i192, align 2
  %124 = ptrtoint ptr %write.i.i205 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write.i.i205, align 4
  %call14.i.i209 = call i32 %125(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i.i208) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i192) #7
  %126 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %y_start_stage, align 4
  %128 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %y_end_stage, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i7.i) #7
  %130 = ptrtoint ptr %data.i7.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 -1, ptr %data.i7.i, align 2, !annotation !140
  %add.i8.i = add i32 %129, 1
  %notmask.neg.i9.i = shl nuw i32 1, %add.i8.i
  %notmask23.i10.i = shl nsw i32 -1, %127
  %sub3.i11.i = add i32 %notmask.neg.i9.i, %notmask23.i10.i
  %131 = ptrtoint ptr %read.i.i201 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read.i.i201, align 32
  %call.i13.i = call i32 %132(ptr noundef %ad714x, i16 noundef zeroext 7, ptr noundef nonnull %data.i7.i, i32 noundef 1) #7
  %shl4.i14.i = shl nuw i32 1, %129
  %133 = ptrtoint ptr %data.i7.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %data.i7.i, align 2
  %135 = trunc i32 %shl4.i14.i to i16
  %136 = xor i16 %135, -1
  %conv6.i15.i = and i16 %134, %136
  store i16 %conv6.i15.i, ptr %data.i7.i, align 2
  %137 = ptrtoint ptr %write.i.i205 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write.i.i205, align 4
  %call7.i17.i = call i32 %138(ptr noundef %ad714x, i16 noundef zeroext 7, i16 noundef zeroext %conv6.i15.i) #7
  %139 = ptrtoint ptr %read.i.i201 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %read.i.i201, align 32
  %call9.i18.i = call i32 %140(ptr noundef %ad714x, i16 noundef zeroext 6, ptr noundef nonnull %data.i7.i, i32 noundef 1) #7
  %141 = ptrtoint ptr %data.i7.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %data.i7.i, align 2
  %143 = trunc i32 %sub3.i11.i to i16
  %conv12.i19.i = or i16 %142, %143
  store i16 %conv12.i19.i, ptr %data.i7.i, align 2
  %144 = ptrtoint ptr %write.i.i205 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %write.i.i205, align 4
  %call14.i20.i = call i32 %145(ptr noundef %ad714x, i16 noundef zeroext 6, i16 noundef zeroext %conv12.i19.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i7.i) #7
  %146 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %state, align 4
  %input80 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 15
  %147 = ptrtoint ptr %input80 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %input80, align 4
  call void @input_event(ptr noundef %148, i32 noundef 1, i32 noundef 330, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_touchpad_state_machine, %if.then93)) #7
          to label %if.end98 [label %if.then93], !srcloc !141

if.then93:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev94 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %149 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug242, ptr noundef %150, ptr noundef nonnull @.str.56, i32 noundef %idx) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %if.else, %if.then73, %land.lhs.true70.if.end98_crit_edge, %touchpad_cal_sensor_val.exit191.if.end98_crit_edge
  %input99 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 15
  %151 = ptrtoint ptr %input99 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %input99, align 4
  call void @input_event(ptr noundef %152, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end98, %sw.bb60.sw.epilog_crit_edge, %do.end56, %land.lhs.true.sw.epilog_crit_edge, %touchpad_cal_sensor_val.exit.sw.epilog_crit_edge, %sw.bb30.sw.epilog_crit_edge, %if.then28, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ad714x_slider_cal_abs_pos(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %slider = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %slider to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slider, align 4
  %arrayidx = getelementptr %struct.ad714x_slider_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx4 = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %end_stage = getelementptr %struct.ad714x_slider_plat, ptr %3, i32 %idx, i32 1
  %10 = ptrtoint ptr %end_stage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end_stage, align 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %max_coord = getelementptr %struct.ad714x_slider_plat, ptr %3, i32 %idx, i32 2
  %14 = ptrtoint ptr %max_coord to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_coord, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp eq i32 %13, %9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %9, 1
  %arrayidx.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %17 to i32
  %arrayidx2.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %9
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i, align 2
  %conv3.i = zext i16 %19 to i32
  %add8.i = add nuw nsw i32 %conv3.i, %conv.i
  br label %ad714x_cal_abs_pos.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp9.i = icmp eq i32 %13, %11
  %arrayidx13.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %13
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %21 to i32
  %sub.i = sub i32 %13, %9
  %mul.i = mul i32 %sub.i, %conv14.i
  %sub16.i = add i32 %13, -1
  %arrayidx17.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub16.i
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %23 to i32
  %sub20.i = add i32 %sub.i, -1
  %mul21.i = mul i32 %sub20.i, %conv18.i
  %add22.i = add i32 %mul21.i, %mul.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else31.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add30.i = add nuw nsw i32 %conv18.i, %conv14.i
  br label %ad714x_cal_abs_pos.exit

if.else31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add46.i = add i32 %13, 1
  %arrayidx47.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add46.i
  %24 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx47.i, align 2
  %conv48.i = zext i16 %25 to i32
  %add50.i = add i32 %sub.i, 1
  %mul51.i = mul i32 %add50.i, %conv48.i
  %add52.i = add i32 %mul51.i, %add22.i
  %add60.i = add nuw nsw i32 %conv18.i, %conv14.i
  %add65.i = add nuw nsw i32 %add60.i, %conv48.i
  br label %ad714x_cal_abs_pos.exit

ad714x_cal_abs_pos.exit:                          ; preds = %if.else31.i, %if.then11.i, %if.then.i
  %a_param.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add22.i, %if.then11.i ], [ %add52.i, %if.else31.i ]
  %b_param.0.i = phi i32 [ %add8.i, %if.then.i ], [ %add30.i, %if.then11.i ], [ %add65.i, %if.else31.i ]
  %sub67.i = sub i32 %11, %9
  %div.i = sdiv i32 %15, %sub67.i
  %mul68.i = mul i32 %div.i, %a_param.0.i
  %div69.i = sdiv i32 %mul68.i, %b_param.0.i
  %abs_pos = getelementptr %struct.ad714x_slider_drv, ptr %7, i32 %idx, i32 1
  %26 = ptrtoint ptr %abs_pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div69.i, ptr %abs_pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ad714x_slider_cal_abs_pos.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ad714x_slider_cal_abs_pos, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %ad714x_cal_abs_pos.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %29 = ptrtoint ptr %abs_pos to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %abs_pos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ad714x_slider_cal_abs_pos.__UNIQUE_ID_ddebug230, ptr noundef %28, ptr noundef nonnull @.str.45, i32 noundef %idx, i32 noundef %30) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %ad714x_cal_abs_pos.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @touchpad_cal_highest_stage(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %touchpad = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %arrayidx = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %touchpad3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad3, align 4
  %arrayidx4 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %x_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 1
  %10 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %x_end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not12.i = icmp sgt i32 %9, %11
  br i1 %cmp.not12.i, label %entry.ad714x_cal_highest_stage.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ad714x_cal_highest_stage.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %9, %entry.for.body.i_crit_edge ]
  %max_idx.014.i = phi i32 [ %spec.select11.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %max_res.013.i = phi i32 [ %14, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i, i32 %conv.i)
  %cmp1.i = icmp ult i32 %max_res.013.i, %conv.i
  %14 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i, i32 %conv.i) #7
  %spec.select11.i = select i1 %cmp1.i, i32 %i.015.i, i32 %max_idx.014.i
  %inc.i = add i32 %i.015.i, 1
  %cmp.not.i = icmp sgt i32 %inc.i, %11
  br i1 %cmp.not.i, label %for.body.i.ad714x_cal_highest_stage.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.ad714x_cal_highest_stage.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit

ad714x_cal_highest_stage.exit:                    ; preds = %for.body.i.ad714x_cal_highest_stage.exit_crit_edge, %entry.ad714x_cal_highest_stage.exit_crit_edge
  %max_idx.0.lcssa.i = phi i32 [ 0, %entry.ad714x_cal_highest_stage.exit_crit_edge ], [ %spec.select11.i, %for.body.i.ad714x_cal_highest_stage.exit_crit_edge ]
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max_idx.0.lcssa.i, ptr %arrayidx4, align 4
  %y_start_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 3
  %16 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y_start_stage, align 4
  %y_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 4
  %18 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y_end_stage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not12.i23 = icmp sgt i32 %17, %19
  br i1 %cmp.not12.i23, label %ad714x_cal_highest_stage.exit.ad714x_cal_highest_stage.exit35_crit_edge, label %ad714x_cal_highest_stage.exit.for.body.i33_crit_edge

ad714x_cal_highest_stage.exit.for.body.i33_crit_edge: ; preds = %ad714x_cal_highest_stage.exit
  br label %for.body.i33

ad714x_cal_highest_stage.exit.ad714x_cal_highest_stage.exit35_crit_edge: ; preds = %ad714x_cal_highest_stage.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit35

for.body.i33:                                     ; preds = %for.body.i33.for.body.i33_crit_edge, %ad714x_cal_highest_stage.exit.for.body.i33_crit_edge
  %i.015.i24 = phi i32 [ %inc.i31, %for.body.i33.for.body.i33_crit_edge ], [ %17, %ad714x_cal_highest_stage.exit.for.body.i33_crit_edge ]
  %max_idx.014.i25 = phi i32 [ %spec.select11.i30, %for.body.i33.for.body.i33_crit_edge ], [ 0, %ad714x_cal_highest_stage.exit.for.body.i33_crit_edge ]
  %max_res.013.i26 = phi i32 [ %22, %for.body.i33.for.body.i33_crit_edge ], [ 0, %ad714x_cal_highest_stage.exit.for.body.i33_crit_edge ]
  %arrayidx.i27 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.015.i24
  %20 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i27, align 2
  %conv.i28 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %max_res.013.i26, i32 %conv.i28)
  %cmp1.i29 = icmp ult i32 %max_res.013.i26, %conv.i28
  %22 = tail call i32 @llvm.smax.i32(i32 %max_res.013.i26, i32 %conv.i28) #7
  %spec.select11.i30 = select i1 %cmp1.i29, i32 %i.015.i24, i32 %max_idx.014.i25
  %inc.i31 = add i32 %i.015.i24, 1
  %cmp.not.i32 = icmp sgt i32 %inc.i31, %19
  br i1 %cmp.not.i32, label %for.body.i33.ad714x_cal_highest_stage.exit35_crit_edge, label %for.body.i33.for.body.i33_crit_edge

for.body.i33.for.body.i33_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

for.body.i33.ad714x_cal_highest_stage.exit35_crit_edge: ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %ad714x_cal_highest_stage.exit35

ad714x_cal_highest_stage.exit35:                  ; preds = %for.body.i33.ad714x_cal_highest_stage.exit35_crit_edge, %ad714x_cal_highest_stage.exit.ad714x_cal_highest_stage.exit35_crit_edge
  %max_idx.0.lcssa.i34 = phi i32 [ 0, %ad714x_cal_highest_stage.exit.ad714x_cal_highest_stage.exit35_crit_edge ], [ %spec.select11.i30, %for.body.i33.ad714x_cal_highest_stage.exit35_crit_edge ]
  %y_highest_stage = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 3
  %23 = ptrtoint ptr %y_highest_stage to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %max_idx.0.lcssa.i34, ptr %y_highest_stage, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @touchpad_cal_highest_stage.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@touchpad_cal_highest_stage, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %ad714x_cal_highest_stage.exit35
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4, align 4
  %28 = ptrtoint ptr %y_highest_stage to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %y_highest_stage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @touchpad_cal_highest_stage.__UNIQUE_ID_ddebug237, ptr noundef %25, ptr noundef nonnull @.str.58, i32 noundef %idx, i32 noundef %27, i32 noundef %29) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %ad714x_cal_highest_stage.exit35
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @touchpad_check_second_peak(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %touchpad = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %arrayidx = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %touchpad3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad3, align 4
  %arrayidx4 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 %11)
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ %9, %entry ], [ %add, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %smax)
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body

for.cond16.preheader:                             ; preds = %for.cond
  %x_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 1
  %12 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %x_end_stage, align 4
  %smax142 = call i32 @llvm.smax.i32(i32 %13, i32 %11)
  br label %for.cond16

for.body:                                         ; preds = %for.cond
  %arrayidx5 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.0
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %15 to i32
  %add = add i32 %i.0, 1
  %arrayidx7 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx7, align 2
  %conv8 = zext i16 %17 to i32
  %sub = sub nsw i32 %conv, %conv8
  %div129 = udiv i16 %17, 10
  %div.zext = zext i16 %div129 to i32
  %cmp13 = icmp sgt i32 %sub, %div.zext
  br i1 %cmp13, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond16:                                       ; preds = %for.body19.for.cond16_crit_edge, %for.cond16.preheader
  %i.1 = phi i32 [ %add21, %for.body19.for.cond16_crit_edge ], [ %11, %for.cond16.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %smax142)
  %exitcond143.not = icmp eq i32 %i.1, %smax142
  br i1 %exitcond143.not, label %for.end38, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %add21 = add i32 %i.1, 1
  %arrayidx22 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add21
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx22, align 2
  %conv23 = zext i16 %19 to i32
  %arrayidx25 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx25, align 2
  %conv26 = zext i16 %21 to i32
  %sub27 = sub nsw i32 %conv23, %conv26
  %div31130 = udiv i16 %21, 10
  %div31.zext = zext i16 %div31130 to i32
  %cmp32 = icmp sgt i32 %sub27, %div31.zext
  br i1 %cmp32, label %for.body19.cleanup_crit_edge, label %for.body19.for.cond16_crit_edge

for.body19.for.cond16_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end38:                                        ; preds = %for.cond16
  %y_start_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 3
  %22 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y_start_stage, align 4
  %y_highest_stage = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 3
  %24 = ptrtoint ptr %y_highest_stage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %y_highest_stage, align 4
  %smax144 = call i32 @llvm.smax.i32(i32 %23, i32 %25)
  br label %for.cond39

for.cond39:                                       ; preds = %for.body42.for.cond39_crit_edge, %for.end38
  %i.2 = phi i32 [ %23, %for.end38 ], [ %add47, %for.body42.for.cond39_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %smax144)
  %exitcond145.not = icmp eq i32 %i.2, %smax144
  br i1 %exitcond145.not, label %for.cond64.preheader, label %for.body42

for.cond64.preheader:                             ; preds = %for.cond39
  %y_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 4
  %26 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y_end_stage, align 4
  %smax146 = call i32 @llvm.smax.i32(i32 %25, i32 %27)
  br label %for.cond64

for.body42:                                       ; preds = %for.cond39
  %arrayidx44 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.2
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %29 to i32
  %add47 = add i32 %i.2, 1
  %arrayidx48 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add47
  %30 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx48, align 2
  %conv49 = zext i16 %31 to i32
  %sub50 = sub nsw i32 %conv45, %conv49
  %div55131 = udiv i16 %31, 10
  %div55.zext = zext i16 %div55131 to i32
  %cmp56 = icmp sgt i32 %sub50, %div55.zext
  br i1 %cmp56, label %for.body42.cleanup_crit_edge, label %for.body42.for.cond39_crit_edge

for.body42.for.cond39_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond39

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond64:                                       ; preds = %for.body67.for.cond64_crit_edge, %for.cond64.preheader
  %i.3 = phi i32 [ %add69, %for.body67.for.cond64_crit_edge ], [ %25, %for.cond64.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3, i32 %smax146)
  %exitcond147.not = icmp eq i32 %i.3, %smax146
  br i1 %exitcond147.not, label %for.cond64.cleanup_crit_edge, label %for.body67

for.cond64.cleanup_crit_edge:                     ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body67:                                       ; preds = %for.cond64
  %add69 = add i32 %i.3, 1
  %arrayidx70 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add69
  %32 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx70, align 2
  %conv71 = zext i16 %33 to i32
  %arrayidx73 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %i.3
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %35 to i32
  %sub75 = sub nsw i32 %conv71, %conv74
  %div79132 = udiv i16 %35, 10
  %div79.zext = zext i16 %div79132 to i32
  %cmp80 = icmp sgt i32 %sub75, %div79.zext
  br i1 %cmp80, label %for.body67.cleanup_crit_edge, label %for.body67.for.cond64_crit_edge

for.body67.for.cond64_crit_edge:                  ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond64

for.body67.cleanup_crit_edge:                     ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body67.cleanup_crit_edge, %for.cond64.cleanup_crit_edge, %for.body42.cleanup_crit_edge, %for.body19.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond64.cleanup_crit_edge ], [ 1, %for.body67.cleanup_crit_edge ], [ 1, %for.body42.cleanup_crit_edge ], [ 1, %for.body19.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @touchpad_check_endpoint(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %touchpad = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %arrayidx = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %touchpad3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad3, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx5, align 2
  %conv = zext i16 %11 to i32
  %add = add i32 %9, 1
  %arrayidx8 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx8, align 2
  %conv9 = zext i16 %13 to i32
  %sub = sub nsw i32 %conv, %conv9
  %mul = mul nsw i32 %sub, 100
  %div = sdiv i32 %mul, %conv9
  %left_ep = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 6
  %14 = ptrtoint ptr %left_ep to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %left_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 549, i32 %div)
  %cmp = icmp sgt i32 %div, 549
  br i1 %cmp, label %if.then16, label %if.then.if.end37_crit_edge

if.then.if.end37_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %left_ep to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %left_ep, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add20 = add i32 %18, 1
  %arrayidx21 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add20
  %19 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx21, align 2
  %conv22 = zext i16 %20 to i32
  %left_ep_val = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 7
  %21 = ptrtoint ptr %left_ep_val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv22, ptr %left_ep_val, align 4
  br label %if.end37

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %div)
  %cmp23 = icmp slt i32 %div, 550
  br i1 %cmp23, label %land.lhs.true, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

land.lhs.true:                                    ; preds = %if.else
  %left_ep_val30 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 7
  %22 = ptrtoint ptr %left_ep_val30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %left_ep_val30, align 4
  %add31 = add i32 %23, 850
  call void @__sanitizer_cov_trace_cmp4(i32 %add31, i32 %conv9)
  %cmp32 = icmp slt i32 %add31, %conv9
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end37_crit_edge

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %left_ep to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %left_ep, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true.if.end37_crit_edge, %if.else.if.end37_crit_edge, %if.then16, %if.then.if.end37_crit_edge
  %x_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 1
  %25 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %x_end_stage, align 4
  %arrayidx39 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %26
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx39, align 2
  %conv40 = zext i16 %28 to i32
  %sub43 = add i32 %26, -1
  %arrayidx44 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub43
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %30 to i32
  %sub46 = sub nsw i32 %conv40, %conv45
  %mul47 = mul nsw i32 %sub46, 100
  %div53 = sdiv i32 %mul47, %conv45
  %right_ep = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 8
  %31 = ptrtoint ptr %right_ep to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %right_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %if.then55, label %if.else66

if.then55:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 749, i32 %div53)
  %cmp56 = icmp sgt i32 %div53, 749
  br i1 %cmp56, label %if.then58, label %if.then55.if.end82_crit_edge

if.then55.if.end82_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %right_ep to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %right_ep, align 4
  %34 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %x_end_stage, align 4
  %sub62 = add i32 %35, -1
  %arrayidx63 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub62
  %36 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx63, align 2
  %conv64 = zext i16 %37 to i32
  %right_ep_val = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 9
  %38 = ptrtoint ptr %right_ep_val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv64, ptr %right_ep_val, align 4
  br label %if.end82

if.else66:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %div53)
  %cmp67 = icmp slt i32 %div53, 750
  br i1 %cmp67, label %land.lhs.true69, label %if.else66.if.end82_crit_edge

if.else66.if.end82_crit_edge:                     ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true69:                                  ; preds = %if.else66
  %right_ep_val75 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 9
  %39 = ptrtoint ptr %right_ep_val75 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %right_ep_val75, align 4
  %add76 = add i32 %40, 850
  call void @__sanitizer_cov_trace_cmp4(i32 %add76, i32 %conv45)
  %cmp77 = icmp slt i32 %add76, %conv45
  br i1 %cmp77, label %if.then79, label %land.lhs.true69.if.end82_crit_edge

land.lhs.true69.if.end82_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

if.then79:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %right_ep to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %right_ep, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %land.lhs.true69.if.end82_crit_edge, %if.else66.if.end82_crit_edge, %if.then58, %if.then55.if.end82_crit_edge
  %y_start_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 3
  %42 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %y_start_stage, align 4
  %arrayidx84 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %43
  %44 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx84, align 2
  %conv85 = zext i16 %45 to i32
  %add88 = add i32 %43, 1
  %arrayidx89 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add88
  %46 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx89, align 2
  %conv90 = zext i16 %47 to i32
  %sub91 = sub nsw i32 %conv85, %conv90
  %mul92 = mul nsw i32 %sub91, 100
  %div98 = sdiv i32 %mul92, %conv90
  %top_ep = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 10
  %48 = ptrtoint ptr %top_ep to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %top_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool99.not = icmp eq i32 %49, 0
  br i1 %tobool99.not, label %if.then100, label %if.else111

if.then100:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 549, i32 %div98)
  %cmp101 = icmp sgt i32 %div98, 549
  br i1 %cmp101, label %if.then103, label %if.then100.if.end127_crit_edge

if.then100.if.end127_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %top_ep to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %top_ep, align 4
  %51 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %y_start_stage, align 4
  %add107 = add i32 %52, 1
  %arrayidx108 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add107
  %53 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx108, align 2
  %conv109 = zext i16 %54 to i32
  %top_ep_val = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 11
  %55 = ptrtoint ptr %top_ep_val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv109, ptr %top_ep_val, align 4
  br label %if.end127

if.else111:                                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %div98)
  %cmp112 = icmp slt i32 %div98, 550
  br i1 %cmp112, label %land.lhs.true114, label %if.else111.if.end127_crit_edge

if.else111.if.end127_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true114:                                 ; preds = %if.else111
  %top_ep_val120 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 11
  %56 = ptrtoint ptr %top_ep_val120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %top_ep_val120, align 4
  %add121 = add i32 %57, 700
  call void @__sanitizer_cov_trace_cmp4(i32 %add121, i32 %conv90)
  %cmp122 = icmp slt i32 %add121, %conv90
  br i1 %cmp122, label %if.then124, label %land.lhs.true114.if.end127_crit_edge

land.lhs.true114.if.end127_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then124:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %top_ep to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %top_ep, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %land.lhs.true114.if.end127_crit_edge, %if.else111.if.end127_crit_edge, %if.then103, %if.then100.if.end127_crit_edge
  %y_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 4
  %59 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y_end_stage, align 4
  %arrayidx129 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %60
  %61 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx129, align 2
  %conv130 = zext i16 %62 to i32
  %sub133 = add i32 %60, -1
  %arrayidx134 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub133
  %63 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx134, align 2
  %conv135 = zext i16 %64 to i32
  %sub136 = sub nsw i32 %conv130, %conv135
  %mul137 = mul nsw i32 %sub136, 100
  %div143 = sdiv i32 %mul137, %conv135
  %bottom_ep = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 12
  %65 = ptrtoint ptr %bottom_ep to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bottom_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool144.not = icmp eq i32 %66, 0
  br i1 %tobool144.not, label %if.then145, label %if.else156

if.then145:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_const_cmp4(i32 949, i32 %div143)
  %cmp146 = icmp sgt i32 %div143, 949
  br i1 %cmp146, label %if.then148, label %if.then145.if.end172_crit_edge

if.then145.if.end172_crit_edge:                   ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then148:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %bottom_ep to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %bottom_ep, align 4
  %68 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %y_end_stage, align 4
  %sub152 = add i32 %69, -1
  %arrayidx153 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub152
  %70 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx153, align 2
  %conv154 = zext i16 %71 to i32
  %bottom_ep_val = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 13
  %72 = ptrtoint ptr %bottom_ep_val to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %conv154, ptr %bottom_ep_val, align 4
  br label %if.end172

if.else156:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_const_cmp4(i32 950, i32 %div143)
  %cmp157 = icmp slt i32 %div143, 950
  br i1 %cmp157, label %land.lhs.true159, label %if.else156.if.end172_crit_edge

if.else156.if.end172_crit_edge:                   ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

land.lhs.true159:                                 ; preds = %if.else156
  %bottom_ep_val165 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 13
  %73 = ptrtoint ptr %bottom_ep_val165 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bottom_ep_val165, align 4
  %add166 = add i32 %74, 700
  call void @__sanitizer_cov_trace_cmp4(i32 %add166, i32 %conv135)
  %cmp167 = icmp slt i32 %add166, %conv135
  br i1 %cmp167, label %if.then169, label %land.lhs.true159.if.end172_crit_edge

land.lhs.true159.if.end172_crit_edge:             ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

if.then169:                                       ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %bottom_ep to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %bottom_ep, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %land.lhs.true159.if.end172_crit_edge, %if.else156.if.end172_crit_edge, %if.then148, %if.then145.if.end172_crit_edge
  %76 = ptrtoint ptr %left_ep to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %left_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool174.not = icmp eq i32 %77, 0
  br i1 %tobool174.not, label %lor.lhs.false, label %if.end172.lor.end_crit_edge

if.end172.lor.end_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %if.end172
  %78 = ptrtoint ptr %right_ep to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %right_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool176.not = icmp eq i32 %79, 0
  br i1 %tobool176.not, label %lor.lhs.false177, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false177:                                 ; preds = %lor.lhs.false
  %80 = ptrtoint ptr %top_ep to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %top_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool179.not = icmp eq i32 %81, 0
  br i1 %tobool179.not, label %lor.rhs, label %lor.lhs.false177.lor.end_crit_edge

lor.lhs.false177.lor.end_crit_edge:               ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false177
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %bottom_ep to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bottom_ep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool181 = icmp ne i32 %83, 0
  %phi.cast = zext i1 %tobool181 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false177.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %if.end172.lor.end_crit_edge
  %84 = phi i32 [ 1, %lor.lhs.false177.lor.end_crit_edge ], [ 1, %lor.lhs.false.lor.end_crit_edge ], [ 1, %if.end172.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @touchpad_cal_abs_pos(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 6
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 16
  %touchpad = getelementptr inbounds %struct.ad714x_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %arrayidx = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx
  %sw2 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %4 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw2, align 4
  %touchpad3 = getelementptr inbounds %struct.ad714x_driver_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %touchpad3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %touchpad3, align 4
  %arrayidx4 = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %x_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 1
  %10 = ptrtoint ptr %x_end_stage to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %x_end_stage, align 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %x_max_coord = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 2
  %14 = ptrtoint ptr %x_max_coord to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x_max_coord, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp eq i32 %13, %9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %9, 1
  %arrayidx.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %17 to i32
  %arrayidx2.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %9
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx2.i, align 2
  %conv3.i = zext i16 %19 to i32
  %add8.i = add nuw nsw i32 %conv3.i, %conv.i
  br label %ad714x_cal_abs_pos.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp9.i = icmp eq i32 %13, %11
  %arrayidx13.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %13
  %20 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx13.i, align 2
  %conv14.i = zext i16 %21 to i32
  %sub.i = sub i32 %13, %9
  %mul.i = mul i32 %sub.i, %conv14.i
  %sub16.i = add i32 %13, -1
  %arrayidx17.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub16.i
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx17.i, align 2
  %conv18.i = zext i16 %23 to i32
  %sub20.i = add i32 %sub.i, -1
  %mul21.i = mul i32 %sub20.i, %conv18.i
  %add22.i = add i32 %mul21.i, %mul.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else31.i

if.then11.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add30.i = add nuw nsw i32 %conv18.i, %conv14.i
  br label %ad714x_cal_abs_pos.exit

if.else31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %add46.i = add i32 %13, 1
  %arrayidx47.i = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add46.i
  %24 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx47.i, align 2
  %conv48.i = zext i16 %25 to i32
  %add50.i = add i32 %sub.i, 1
  %mul51.i = mul i32 %add50.i, %conv48.i
  %add52.i = add i32 %mul51.i, %add22.i
  %add60.i = add nuw nsw i32 %conv18.i, %conv14.i
  %add65.i = add nuw nsw i32 %add60.i, %conv48.i
  br label %ad714x_cal_abs_pos.exit

ad714x_cal_abs_pos.exit:                          ; preds = %if.else31.i, %if.then11.i, %if.then.i
  %a_param.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add22.i, %if.then11.i ], [ %add52.i, %if.else31.i ]
  %b_param.0.i = phi i32 [ %add8.i, %if.then.i ], [ %add30.i, %if.then11.i ], [ %add65.i, %if.else31.i ]
  %sub67.i = sub i32 %11, %9
  %div.i = sdiv i32 %15, %sub67.i
  %mul68.i = mul i32 %div.i, %a_param.0.i
  %div69.i = sdiv i32 %mul68.i, %b_param.0.i
  %x_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 2
  %26 = ptrtoint ptr %x_abs_pos to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div69.i, ptr %x_abs_pos, align 4
  %y_start_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 3
  %27 = ptrtoint ptr %y_start_stage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %y_start_stage, align 4
  %y_end_stage = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 4
  %29 = ptrtoint ptr %y_end_stage to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y_end_stage, align 4
  %y_highest_stage = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 3
  %31 = ptrtoint ptr %y_highest_stage to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %y_highest_stage, align 4
  %y_max_coord = getelementptr %struct.ad714x_touchpad_plat, ptr %3, i32 %idx, i32 5
  %33 = ptrtoint ptr %y_max_coord to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %y_max_coord, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %28)
  %cmp.i27 = icmp eq i32 %32, %28
  br i1 %cmp.i27, label %if.then.i34, label %if.else.i46

if.then.i34:                                      ; preds = %ad714x_cal_abs_pos.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.i28 = add i32 %28, 1
  %arrayidx.i29 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add.i28
  %35 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i29, align 2
  %conv.i30 = zext i16 %36 to i32
  %arrayidx2.i31 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %28
  %37 = ptrtoint ptr %arrayidx2.i31 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx2.i31, align 2
  %conv3.i32 = zext i16 %38 to i32
  %add8.i33 = add nuw nsw i32 %conv3.i32, %conv.i30
  br label %ad714x_cal_abs_pos.exit64

if.else.i46:                                      ; preds = %ad714x_cal_abs_pos.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp9.i35 = icmp eq i32 %32, %30
  %arrayidx13.i36 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %32
  %39 = ptrtoint ptr %arrayidx13.i36 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx13.i36, align 2
  %conv14.i37 = zext i16 %40 to i32
  %sub.i38 = sub i32 %32, %28
  %mul.i39 = mul i32 %sub.i38, %conv14.i37
  %sub16.i40 = add i32 %32, -1
  %arrayidx17.i41 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %sub16.i40
  %41 = ptrtoint ptr %arrayidx17.i41 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx17.i41, align 2
  %conv18.i42 = zext i16 %42 to i32
  %sub20.i43 = add i32 %sub.i38, -1
  %mul21.i44 = mul i32 %sub20.i43, %conv18.i42
  %add22.i45 = add i32 %mul21.i44, %mul.i39
  br i1 %cmp9.i35, label %if.then11.i48, label %if.else31.i57

if.then11.i48:                                    ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #9
  %add30.i47 = add nuw nsw i32 %conv18.i42, %conv14.i37
  br label %ad714x_cal_abs_pos.exit64

if.else31.i57:                                    ; preds = %if.else.i46
  call void @__sanitizer_cov_trace_pc() #9
  %add46.i49 = add i32 %32, 1
  %arrayidx47.i50 = getelementptr %struct.ad714x_chip, ptr %ad714x, i32 0, i32 5, i32 %add46.i49
  %43 = ptrtoint ptr %arrayidx47.i50 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx47.i50, align 2
  %conv48.i51 = zext i16 %44 to i32
  %add50.i52 = add i32 %sub.i38, 1
  %mul51.i53 = mul i32 %add50.i52, %conv48.i51
  %add52.i54 = add i32 %mul51.i53, %add22.i45
  %add60.i55 = add nuw nsw i32 %conv18.i42, %conv14.i37
  %add65.i56 = add nuw nsw i32 %add60.i55, %conv48.i51
  br label %ad714x_cal_abs_pos.exit64

ad714x_cal_abs_pos.exit64:                        ; preds = %if.else31.i57, %if.then11.i48, %if.then.i34
  %a_param.0.i58 = phi i32 [ %conv.i30, %if.then.i34 ], [ %add22.i45, %if.then11.i48 ], [ %add52.i54, %if.else31.i57 ]
  %b_param.0.i59 = phi i32 [ %add8.i33, %if.then.i34 ], [ %add30.i47, %if.then11.i48 ], [ %add65.i56, %if.else31.i57 ]
  %sub67.i60 = sub i32 %30, %28
  %div.i61 = sdiv i32 %34, %sub67.i60
  %mul68.i62 = mul i32 %div.i61, %a_param.0.i58
  %div69.i63 = sdiv i32 %mul68.i62, %b_param.0.i59
  %y_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %7, i32 %idx, i32 5
  %45 = ptrtoint ptr %y_abs_pos to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div69.i63, ptr %y_abs_pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @touchpad_cal_abs_pos.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@touchpad_cal_abs_pos, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %ad714x_cal_abs_pos.exit64
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  %48 = ptrtoint ptr %x_abs_pos to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %x_abs_pos, align 4
  %50 = ptrtoint ptr %y_abs_pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %y_abs_pos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @touchpad_cal_abs_pos.__UNIQUE_ID_ddebug238, ptr noundef %47, ptr noundef nonnull @.str.60, i32 noundef %idx, i32 noundef %49, i32 noundef %51) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %ad714x_cal_abs_pos.exit64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @touchpad_cal_flt_pos(ptr nocapture noundef readonly %ad714x, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 7
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  %touchpad = getelementptr inbounds %struct.ad714x_driver_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %touchpad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %touchpad, align 4
  %x_flt_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %3, i32 %idx, i32 1
  %4 = ptrtoint ptr %x_flt_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %x_flt_pos, align 4
  %mul = mul i32 %5, 6
  %x_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %3, i32 %idx, i32 2
  %6 = ptrtoint ptr %x_abs_pos to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %x_abs_pos, align 4
  %mul2 = shl i32 %7, 2
  %add = add i32 %mul2, %mul
  %div = sdiv i32 %add, 10
  store i32 %div, ptr %x_flt_pos, align 4
  %y_flt_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %3, i32 %idx, i32 4
  %8 = ptrtoint ptr %y_flt_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y_flt_pos, align 4
  %mul4 = mul i32 %9, 6
  %y_abs_pos = getelementptr %struct.ad714x_touchpad_drv, ptr %3, i32 %idx, i32 5
  %10 = ptrtoint ptr %y_abs_pos to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y_abs_pos, align 4
  %mul5 = shl i32 %11, 2
  %add6 = add i32 %mul5, %mul4
  %div7 = sdiv i32 %add6, 10
  store i32 %div7, ptr %y_flt_pos, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @touchpad_cal_flt_pos.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@touchpad_cal_flt_pos, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !141

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ad714x_chip, ptr %ad714x, i32 0, i32 9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %x_flt_pos to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %x_flt_pos, align 4
  %16 = ptrtoint ptr %y_flt_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y_flt_pos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @touchpad_cal_flt_pos.__UNIQUE_ID_ddebug239, ptr noundef %13, ptr noundef nonnull @.str.62, i32 noundef %idx, i32 noundef %15, i32 noundef %17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.usub.sat.i16(i16, i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !40, !41, !43, !45, !47, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/ad714x.c", i32 981, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ad714x_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ad714x_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/ad714x.c", i32 987, i32 3}
!10 = !{ptr @ad714x_probe._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ad714x_probe._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @ad714x_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/ad714x.c", i32 1028, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/misc/ad714x.c", i32 1049, i32 18}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/misc/ad714x.c", i32 1079, i32 18}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/ad714x.c", i32 1112, i32 18}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/ad714x.c", i32 1142, i32 17}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/misc/ad714x.c", i32 1155, i32 18}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/ad714x.c", i32 1157, i32 3}
!27 = !{ptr @ad714x_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ad714x_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_ad714x_probe, !30, !"__ksymtab_ad714x_probe", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/ad714x.c", i32 1163, i32 1}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/ad714x.c", i32 1170, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ad714x_disable.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!36 = !{ptr @__ksymtab_ad714x_disable, !37, !"__ksymtab_ad714x_disable", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/ad714x.c", i32 1181, i32 1}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/misc/ad714x.c", i32 1185, i32 2}
!40 = !{ptr @ad714x_enable.__UNIQUE_ID_ddebug244, !39, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!41 = !{ptr @__ksymtab_ad714x_enable, !42, !"__ksymtab_ad714x_enable", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/ad714x.c", i32 1204, i32 1}
!43 = !{ptr @__UNIQUE_ID_description245, !44, !"__UNIQUE_ID_description245", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/ad714x.c", i32 1207, i32 1}
!45 = !{ptr @__UNIQUE_ID_author246, !46, !"__UNIQUE_ID_author246", i1 false, i1 false}
!46 = !{!"../drivers/input/misc/ad714x.c", i32 1208, i32 1}
!47 = !{ptr @__UNIQUE_ID_file247, !48, !"__UNIQUE_ID_file247", i1 false, i1 false}
!48 = !{!"../drivers/input/misc/ad714x.c", i32 1209, i32 1}
!49 = !{ptr @__UNIQUE_ID_license248, !48, !"__UNIQUE_ID_license248", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/ad714x.c", i32 879, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ad714x_hw_detect._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @ad714x_hw_detect._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/ad714x.c", i32 886, i32 3}
!58 = !{ptr @ad714x_hw_detect._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ad714x_hw_detect._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/misc/ad714x.c", i32 893, i32 3}
!62 = !{ptr @ad714x_hw_detect._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ad714x_hw_detect._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/ad714x.c", i32 900, i32 3}
!66 = !{ptr @ad714x_hw_detect._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ad714x_hw_detect._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/ad714x.c", i32 905, i32 3}
!70 = !{ptr @ad714x_hw_detect._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ad714x_hw_detect._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/ad714x.c", i32 222, i32 4}
!74 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ad714x_button_state_machine.__UNIQUE_ID_ddebug227, !73, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/ad714x.c", i32 232, i32 4}
!78 = !{ptr @ad714x_button_state_machine.__UNIQUE_ID_ddebug228, !77, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/ad714x.c", i32 358, i32 4}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ad714x_slider_state_machine.__UNIQUE_ID_ddebug232, !80, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/ad714x.c", i32 388, i32 5}
!85 = !{ptr @ad714x_slider_state_machine.__UNIQUE_ID_ddebug233, !84, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/input/misc/ad714x.c", i32 274, i32 2}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @ad714x_slider_cal_highest_stage.__UNIQUE_ID_ddebug229, !87, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/misc/ad714x.c", i32 299, i32 2}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ad714x_slider_cal_abs_pos.__UNIQUE_ID_ddebug230, !91, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/ad714x.c", i32 320, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @ad714x_slider_cal_flt_pos.__UNIQUE_ID_ddebug231, !95, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/ad714x.c", i32 530, i32 4}
!100 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug235, !99, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/input/misc/ad714x.c", i32 562, i32 5}
!104 = !{ptr @ad714x_wheel_state_machine.__UNIQUE_ID_ddebug236, !103, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/ad714x.c", i32 416, i32 2}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ad714x_wheel_cal_highest_stage.__UNIQUE_ID_ddebug234, !106, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/ad714x.c", i32 814, i32 4}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug240, !110, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/misc/ad714x.c", i32 824, i32 5}
!115 = !{ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug241, !114, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/misc/ad714x.c", i32 858, i32 5}
!118 = !{ptr @ad714x_touchpad_state_machine.__UNIQUE_ID_ddebug242, !117, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/misc/ad714x.c", i32 604, i32 2}
!121 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @touchpad_cal_highest_stage.__UNIQUE_ID_ddebug237, !120, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/misc/ad714x.c", i32 664, i32 2}
!125 = !{ptr @.str.60, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @touchpad_cal_abs_pos.__UNIQUE_ID_ddebug238, !124, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/misc/ad714x.c", i32 677, i32 2}
!129 = !{ptr @.str.62, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @touchpad_cal_flt_pos.__UNIQUE_ID_ddebug239, !128, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"auto-init"}
!141 = !{i64 2148310393, i64 2148310398, i64 2148310411, i64 2148310455, i64 2148310489, i64 2148310510}
