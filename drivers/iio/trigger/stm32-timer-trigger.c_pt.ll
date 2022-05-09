; ModuleID = '/llk/IR_all_yes/drivers/iio/trigger/stm32-timer-trigger.c_pt.bc'
source_filename = "../drivers/iio/trigger/stm32-timer-trigger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+is_stm32_timer_trigger\22, \22a\22\09"
module asm "\09.weak\09__crc_is_stm32_timer_trigger\09\09\09\09"
module asm "\09.long\09__crc_is_stm32_timer_trigger\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_stm32_timer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22is_stm32_timer_trigger\22\09\09\09\09\09"
module asm "__kstrtabns_is_stm32_timer_trigger:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.70, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.70 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_timer_trigger_cfg = type { ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.stm32_timer_trigger = type { ptr, ptr, ptr, i8, i32, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.stm32_timer_trigger_regs }
%struct.stm32_timer_trigger_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@timer_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } zeroinitializer, align 32
@__kstrtab_is_stm32_timer_trigger = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_stm32_timer_trigger = external dso_local constant [0 x i8], align 1
@__ksymtab_is_stm32_timer_trigger = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_stm32_timer_trigger to i32), ptr @__kstrtab_is_stm32_timer_trigger, ptr @__kstrtabns_is_stm32_timer_trigger }, section "___ksymtab+is_stm32_timer_trigger", align 4
@__initcall__kmod_stm32_timer_trigger__232_913_stm32_timer_trigger_driver_init6 = internal global ptr @stm32_timer_trigger_driver_init, section ".initcall6.init", align 4
@stm32_timer_trigger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_timer_trigger_probe, ptr @stm32_timer_trigger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_trig_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_timer_trigger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_timer_trigger_driver_exit = internal global ptr @stm32_timer_trigger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias233 = internal constant [55 x i8] c"stm32_timer_trigger.alias=platform:stm32-timer-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [78 x i8] c"stm32_timer_trigger.description=STMicroelectronics STM32 Timer Trigger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [65 x i8] c"stm32_timer_trigger.file=drivers/iio/trigger/stm32-timer-trigger\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [35 x i8] c"stm32_timer_trigger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stm32-timer-trigger\00", [44 x i8] zeroinitializer }, align 32
@stm32_trig_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timer-trigger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32_timer_trg_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32h7-timer-trigger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32h7_timer_trg_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_timer_trigger_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr @stm32_timer_trigger_suspend, ptr @stm32_timer_trigger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@triggers_table = internal global { [17 x [7 x ptr]], [100 x i8] } { [17 x [7 x ptr]] [[7 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr null], [7 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null, ptr null], [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr null, ptr null], [7 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr null, ptr null], [7 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null, ptr null], [7 x ptr] [ptr @.str.39, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr null], [7 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.51, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [7 x ptr] [ptr @.str.59, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null]], [100 x i8] zeroinitializer }, align 32
@stm32_timer_trigger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32_trigger_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stm32_counter_read_raw, ptr null, ptr null, ptr @stm32_counter_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_counter_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stm32_trigger_channel = internal constant { %struct.iio_chan_spec, [40 x i8] } { %struct.iio_chan_spec { i32 29, i32 0, i32 0, i32 0, i32 0, %struct.anon.70 zeroinitializer, i32 524293, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_trigger_count_info, ptr null, ptr null, i8 64 }, [40 x i8] zeroinitializer }, align 32
@stm32_trigger_count_info = internal constant { [6 x %struct.iio_chan_spec_ext_info], [40 x i8] } { [6 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.3, i32 0, ptr @stm32_count_get_preset, ptr @stm32_count_set_preset, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.4, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_enable_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.5, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_enable_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.6, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_trigger_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.7, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_trigger_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"preset\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"enable_mode\00", [20 x i8] zeroinitializer }, align 32
@stm32_enable_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @stm32_enable_modes, i32 3, ptr @stm32_set_enable_mode, ptr @stm32_get_enable_mode }, [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enable_mode_available\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trigger_mode\00", [19 x i8] zeroinitializer }, align 32
@stm32_trigger_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @stm32_trigger_modes, i32 1, ptr @stm32_set_trigger_mode, ptr @stm32_get_trigger_mode }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trigger_mode_available\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@stm32_enable_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"always\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gated\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"triggered\00", [22 x i8] zeroinitializer }, align 32
@stm32_trigger_modes = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.12], [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trigger\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim1_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim1_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim1_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim2_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim2_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim3_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim3_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim4_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim4_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim4_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim4_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim4_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim5_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim5_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim6_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim7_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim8_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim8_trgo2\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim8_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim8_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim8_ch3\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim8_ch4\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim9_trgo\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim9_ch1\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tim9_ch2\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim10_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim11_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim12_trgo\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim12_ch1\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim12_ch2\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim13_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim14_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tim15_trgo\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim16_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tim17_oc1\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@stm32_trigger_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stm32_trigger_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trgo\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trgo2\00", [26 x i8] zeroinitializer }, align 32
@stm32_trigger_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stm32_trigger_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@stm32_trigger_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_sampling_frequency, ptr @iio_dev_attr_master_mode, ptr @iio_dev_attr_master_mode_available, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stm32_tt_read_frequency, ptr @stm32_tt_store_frequency }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_master_mode = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 432, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stm32_tt_show_master_mode, ptr @stm32_tt_store_master_mode }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_master_mode_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stm32_tt_show_master_mode_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@stm32_timer_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.67, i32 143, ptr @.str.68, ptr @.str.69 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"prescaler exceeds the maximum value\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_timer_start\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/iio/trigger/stm32-timer-trigger.c\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_timer_start._entry_ptr = internal global ptr @stm32_timer_start._entry, section ".printk_index", align 4
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"master_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@master_mode_table = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"update\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compare_pulse\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC1REF\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC2REF\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC3REF\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC4REF\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC5REF\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OC6REF\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"compare_pulse_OC4REF\00", [43 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"compare_pulse_OC6REF\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"compare_pulse_OC4REF_r_or_OC6REF_r\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"compare_pulse_OC4REF_r_or_OC6REF_f\00", [61 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"compare_pulse_OC5REF_r_or_OC6REF_r\00", [61 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"compare_pulse_OC5REF_r_or_OC6REF_f\00", [61 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"master_mode_available\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@stm32_timer_trg_cfg = internal constant { %struct.stm32_timer_trigger_cfg, [24 x i8] } { %struct.stm32_timer_trigger_cfg { ptr @valids_table, i32 12 }, [24 x i8] zeroinitializer }, align 32
@stm32h7_timer_trg_cfg = internal constant { %struct.stm32_timer_trigger_cfg, [24 x i8] } { %struct.stm32_timer_trigger_cfg { ptr @stm32h7_valids_table, i32 17 }, [24 x i8] zeroinitializer }, align 32
@valids_table = internal global { [12 x [5 x ptr]], [48 x i8] } { [12 x [5 x ptr]] [[5 x ptr] [ptr @.str.34, ptr @.str.19, ptr @.str.24, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.41, ptr @.str.24, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.34, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.24, ptr @.str.41, ptr null], [5 x ptr] [ptr @.str.19, ptr @.str.24, ptr @.str.29, ptr @.str.41, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.29, ptr @.str.34, ptr null], [5 x ptr] [ptr @.str.19, ptr @.str.24, ptr @.str.50, ptr @.str.51, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.29, ptr @.str.34, ptr @.str.55, ptr @.str.56, ptr null]], [48 x i8] zeroinitializer }, align 32
@stm32h7_valids_table = internal global { [17 x [5 x ptr]], [76 x i8] } { [17 x [5 x ptr]] [[5 x ptr] [ptr @.str.57, ptr @.str.19, ptr @.str.24, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.41, ptr @.str.24, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.57, ptr @.str.29, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.24, ptr @.str.41, ptr null], [5 x ptr] [ptr @.str.13, ptr @.str.41, ptr @.str.24, ptr @.str.29, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.13, ptr @.str.19, ptr @.str.29, ptr @.str.34, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.29, ptr @.str.34, ptr @.str.55, ptr @.str.56, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer, [5 x ptr] [ptr @.str.13, ptr @.str.24, ptr @.str.58, ptr @.str.59, ptr null], [5 x ptr] zeroinitializer, [5 x ptr] zeroinitializer], [76 x i8] zeroinitializer }, align 32
@switch.table.stm32_get_enable_mode = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 -22, i32 1, i32 2], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 19]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"timer_trigger_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 387, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"stm32_timer_trigger_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 904, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 908, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"stm32_trig_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 892, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [27 x i8] c"stm32_timer_trigger_pm_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 878, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 774, i32 41 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"triggers_table\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 22, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 800, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"stm32_trigger_info\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 541, i32 30 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"stm32_trigger_channel\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 705, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [25 x i8] c"stm32_trigger_count_info\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 691, i32 44 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 693, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 698, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"stm32_enable_mode_enum\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 651, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 699, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 700, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"stm32_trigger_mode_enum\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 573, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 701, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 668, i32 34 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"stm32_enable_modes\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 580, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 581, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 582, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 583, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"stm32_trigger_modes\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 547, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 548, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 27 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 47 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 23, i32 57 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 24, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 24, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 24, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 24, i32 35 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 24, i32 45 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 25, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 25, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 25, i32 25 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 25, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 25, i32 45 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 26, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 26, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 26, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 26, i32 35 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 26, i32 45 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 27, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 27, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 27, i32 25 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 27, i32 35 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 27, i32 45 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 28, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 29, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 15 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 27 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 37 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 47 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 30, i32 57 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 31, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 31, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 31, i32 25 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 32, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 33, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 34, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 34, i32 16 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 34, i32 27 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 35, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 36, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 37, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 38, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 39, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 415, i32 44 }
@___asan_gen_.314 = private unnamed_addr constant [26 x i8] c"stm32_trigger_attr_groups\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 382, i32 38 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 113, i32 25 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 113, i32 50 }
@___asan_gen_.323 = private unnamed_addr constant [25 x i8] c"stm32_trigger_attr_group\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 378, i32 37 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c"stm32_trigger_attrs\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 371, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sampling_frequency\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [25 x i8] c"iio_dev_attr_master_mode\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [35 x i8] c"iio_dev_attr_master_mode_available\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 257, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 254, i32 22 }
@___asan_gen_.344 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 143, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 366, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 299, i32 25 }
@___asan_gen_.368 = private unnamed_addr constant [18 x i8] c"master_mode_table\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 264, i32 14 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 265, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 266, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 267, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 268, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 269, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 270, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 271, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 272, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 274, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 275, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 276, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 277, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 278, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 279, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 280, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 281, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 363, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 355, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c"stm32_timer_trg_cfg\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 882, i32 45 }
@___asan_gen_.428 = private unnamed_addr constant [22 x i8] c"stm32h7_timer_trg_cfg\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 887, i32 45 }
@___asan_gen_.431 = private unnamed_addr constant [13 x i8] c"valids_table\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 43, i32 20 }
@___asan_gen_.434 = private unnamed_addr constant [21 x i8] c"stm32h7_valids_table\00", align 1
@___asan_gen_.435 = private constant [45 x i8] c"../drivers/iio/trigger/stm32-timer-trigger.c\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.435, i32 58, i32 20 }
@___asan_gen_.437 = private unnamed_addr constant [35 x i8] c"switch.table.stm32_get_enable_mode\00", align 1
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_stm32_timer_trigger_driver_exit, ptr @__initcall__kmod_stm32_timer_trigger__232_913_stm32_timer_trigger_driver_init6, ptr @__ksymtab_is_stm32_timer_trigger, ptr @stm32_timer_start._entry, ptr @stm32_timer_start._entry_ptr, ptr @stm32_timer_trigger_driver_exit, ptr @timer_trigger_ops, ptr @stm32_timer_trigger_driver, ptr @.str, ptr @stm32_trig_of_match, ptr @stm32_timer_trigger_pm_ops, ptr @.str.1, ptr @triggers_table, ptr @stm32_timer_trigger_probe.__key, ptr @.str.2, ptr @stm32_trigger_info, ptr @stm32_trigger_channel, ptr @stm32_trigger_count_info, ptr @.str.3, ptr @.str.4, ptr @stm32_enable_mode_enum, ptr @.str.5, ptr @.str.6, ptr @stm32_trigger_mode_enum, ptr @.str.7, ptr @.str.8, ptr @stm32_enable_modes, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @stm32_trigger_modes, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @stm32_trigger_attr_groups, ptr @.str.61, ptr @.str.62, ptr @stm32_trigger_attr_group, ptr @stm32_trigger_attrs, ptr @iio_dev_attr_sampling_frequency, ptr @iio_dev_attr_master_mode, ptr @iio_dev_attr_master_mode_available, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @master_mode_table, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @stm32_timer_trg_cfg, ptr @stm32h7_timer_trg_cfg, ptr @valids_table, ptr @stm32h7_valids_table, ptr @switch.table.stm32_get_enable_mode], section "llvm.metadata"
@0 = internal global [116 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_trigger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trig_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_trigger_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @triggers_table to i32), i32 476, i32 576, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_trigger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_channel to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_count_info to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_enable_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_enable_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_modes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_trigger_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_master_mode to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_master_mode_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_mode_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timer_trg_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_timer_trg_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valids_table to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32h7_valids_table to i32), i32 340, i32 416, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_get_enable_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_stm32_timer_trigger(ptr nocapture noundef readonly %trig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trig, align 8
  %cmp = icmp eq ptr %1, @timer_trigger_ops
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timer_trigger_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_timer_trigger_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timer_trigger_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !243
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef nonnull %index, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_match_table, align 4
  %call4 = call ptr @of_match_device(ptr noundef %10, ptr noundef %dev1) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp = icmp ugt i32 %14, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_valids_table = getelementptr inbounds %struct.stm32_timer_trigger_cfg, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %num_valids_table to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_valids_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp5.not = icmp ult i32 %14, %16
  br i1 %cmp5.not, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %arrayidx = getelementptr [5 x ptr], ptr %18, i32 %14
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %20, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call.i = call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 156) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then9.cleanup_crit_edge, label %if.end.i

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then9
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.dev_name.exit.i_crit_edge

if.end.i.dev_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.end.i.dev_name.exit.i_crit_edge ]
  %name.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 15
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %retval.0.i.i, ptr %name.i, align 8
  %info.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 17
  %26 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @stm32_trigger_info, ptr %info.i, align 8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 32, ptr %call.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 14
  %28 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %num_channels.i, align 4
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @stm32_trigger_channel, ptr %channels.i, align 8
  %call2.i = call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %dev_name.exit.i.cleanup_crit_edge

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 19
  %30 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv.i.i, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call.i56 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 156, i32 noundef 3520) #8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end5.i
  %priv.0 = phi ptr [ %call.i56, %if.else ], [ %31, %if.end5.i ]
  %tobool13.not = icmp eq ptr %priv.0, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %32 = ptrtoint ptr %priv.0 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %priv.0, align 4
  %regmap = getelementptr inbounds %struct.stm32_timers, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %regmap17 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 1
  %35 = ptrtoint ptr %regmap17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %regmap17, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 4
  %clk18 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 2
  %38 = ptrtoint ptr %clk18 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %clk18, align 4
  %max_arr = getelementptr inbounds %struct.stm32_timers, ptr %3, i32 0, i32 2
  %39 = ptrtoint ptr %max_arr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_arr, align 4
  %max_arr19 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 4
  %41 = ptrtoint ptr %max_arr19 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_arr19, align 4
  %42 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index, align 4
  %arrayidx20 = getelementptr [17 x [7 x ptr]], ptr @triggers_table, i32 0, i32 %43
  %triggers = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 5
  %44 = ptrtoint ptr %triggers to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx20, ptr %triggers, align 4
  %45 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %12, align 4
  %arrayidx23 = getelementptr [5 x ptr], ptr %46, i32 %43
  %valids = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 6
  %47 = ptrtoint ptr %valids to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx23, ptr %valids, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %val.i, align 4, !annotation !243
  %call.i.i57 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 4, i32 noundef 15728640, i32 noundef 15728640, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %49 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap17, align 4
  %call2.i58 = call i32 @regmap_read(ptr noundef %50, i32 noundef 4, ptr noundef nonnull %val.i) #8
  %51 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap17, align 4
  %call.i9.i = call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 4, i32 noundef 15728640, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.i = icmp ne i32 %54, 0
  %has_trgo2.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i to i8
  %55 = ptrtoint ptr %has_trgo2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool.i, ptr %has_trgo2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  %lock = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 8
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @stm32_timer_trigger_probe.__key) #8
  %56 = ptrtoint ptr %triggers to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %triggers, align 4
  %tr_list.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 9
  %58 = ptrtoint ptr %tr_list.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %tr_list.i, ptr %tr_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %priv.0, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %tr_list.i, ptr %prev.i.i, align 4
  %tobool.not55.i = icmp eq ptr %57, null
  br i1 %tobool.not55.i, label %if.end15.if.end28_crit_edge, label %if.end15.land.rhs.i_crit_edge

if.end15.land.rhs.i_crit_edge:                    ; preds = %if.end15
  br label %land.rhs.i

if.end15.if.end28_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %if.end15.land.rhs.i_crit_edge
  %cur.056.i = phi ptr [ %cur.1.i, %cleanup.i.land.rhs.i_crit_edge ], [ %57, %if.end15.land.rhs.i_crit_edge ]
  %60 = ptrtoint ptr %cur.056.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.056.i, align 4
  %tobool1.not.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i, label %land.rhs.i.if.end28_crit_edge, label %while.body.i

land.rhs.i.if.end28_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

while.body.i:                                     ; preds = %land.rhs.i
  %call.i.i60 = call ptr @strstr(ptr noundef nonnull %61, ptr noundef nonnull @.str.61) #8
  %tobool.not.i.i61 = icmp eq ptr %call.i.i60, null
  br i1 %tobool.not.i.i61, label %while.body.i.stm32_timer_is_trgo_name.exit.i_crit_edge, label %land.rhs.i.i

while.body.i.stm32_timer_is_trgo_name.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_timer_is_trgo_name.exit.i

land.rhs.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call ptr @strstr(ptr noundef nonnull %61, ptr noundef nonnull @.str.62) #8
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br label %stm32_timer_is_trgo_name.exit.i

stm32_timer_is_trgo_name.exit.i:                  ; preds = %land.rhs.i.i, %while.body.i.stm32_timer_is_trgo_name.exit.i_crit_edge
  %62 = phi i1 [ false, %while.body.i.stm32_timer_is_trgo_name.exit.i_crit_edge ], [ %tobool2.not.i.i, %land.rhs.i.i ]
  %call.i49.i = call ptr @strstr(ptr noundef nonnull %61, ptr noundef nonnull @.str.62) #8
  %tobool.i.i = icmp ne ptr %call.i49.i, null
  br i1 %tobool.i.i, label %land.lhs.true.i, label %stm32_timer_is_trgo_name.exit.i.if.end.i62_crit_edge

stm32_timer_is_trgo_name.exit.i.if.end.i62_crit_edge: ; preds = %stm32_timer_is_trgo_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i62

land.lhs.true.i:                                  ; preds = %stm32_timer_is_trgo_name.exit.i
  %63 = ptrtoint ptr %has_trgo2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %has_trgo2.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool5.not.i = icmp eq i8 %64, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.cleanup.i_crit_edge, label %land.lhs.true.i.if.end.i62_crit_edge

land.lhs.true.i.if.end.i62_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i62

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i62:                                       ; preds = %land.lhs.true.i.if.end.i62_crit_edge, %stm32_timer_is_trgo_name.exit.i.if.end.i62_crit_edge
  %65 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.0, align 4
  %call6.i = call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %66, ptr noundef nonnull @.str.60, ptr noundef nonnull %61) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %if.end.i62.cleanup_crit_edge, label %if.end9.i

if.end.i62.cleanup_crit_edge:                     ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i62
  %67 = ptrtoint ptr %priv.0 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.0, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %parent.i, align 8
  %parent12.i = getelementptr inbounds %struct.iio_trigger, ptr %call6.i, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %parent12.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %parent12.i, align 8
  %72 = ptrtoint ptr %call6.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @timer_trigger_ops, ptr %call6.i, align 8
  %brmerge.i = select i1 %62, i1 true, i1 %tobool.i.i
  br i1 %brmerge.i, label %if.then15.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %groups.i = getelementptr inbounds %struct.iio_trigger, ptr %call6.i, i32 0, i32 4, i32 34
  %73 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @stm32_trigger_attr_groups, ptr %groups.i, align 8
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.end9.i.if.end17.i_crit_edge
  %driver_data.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call6.i, i32 0, i32 4, i32 8
  %74 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %priv.0, ptr %driver_data.i.i.i, align 4
  %call18.i = call i32 @__iio_trigger_register(ptr noundef nonnull %call6.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end17.i
  %75 = ptrtoint ptr %tr_list.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn10.i.i = load ptr, ptr %tr_list.i, align 4
  %cmp.not11.i.i = icmp eq ptr %.pn10.i.i, %tr_list.i
  br i1 %cmp.not11.i.i, label %if.then20.i.cleanup_crit_edge, label %if.then20.i.for.body.i.i_crit_edge

if.then20.i.for.body.i.i_crit_edge:               ; preds = %if.then20.i
  br label %for.body.i.i

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then20.i.for.body.i.i_crit_edge
  %.pn12.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn10.i.i, %if.then20.i.for.body.i.i_crit_edge ]
  %tr.0.i.i = getelementptr i8, ptr %.pn12.i.i, i32 -952
  call void @iio_trigger_unregister(ptr noundef %tr.0.i.i) #8
  %76 = ptrtoint ptr %.pn12.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn.i.i = load ptr, ptr %.pn12.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %tr_list.i
  br i1 %cmp.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21.i:                                       ; preds = %if.end17.i
  %alloc_list.i = getelementptr inbounds %struct.iio_trigger, ptr %call6.i, i32 0, i32 6
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %alloc_list.i, ptr noundef %78, ptr noundef %tr_list.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end21.i.cleanup.i_crit_edge

if.end21.i.cleanup.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i.i.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %alloc_list.i, ptr %prev.i.i, align 4
  %80 = ptrtoint ptr %alloc_list.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %tr_list.i, ptr %alloc_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iio_trigger, ptr %call6.i, i32 0, i32 6, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i.i, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %alloc_list.i, ptr %78, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.i.i, %if.end21.i.cleanup.i_crit_edge, %land.lhs.true.i.cleanup.i_crit_edge
  %cur.1.i = getelementptr ptr, ptr %cur.056.i, i32 1
  %tobool.not.i63 = icmp eq ptr %cur.1.i, null
  br i1 %tobool.not.i63, label %cleanup.i.if.end28_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

cleanup.i.if.end28_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %cleanup.i.if.end28_crit_edge, %land.rhs.i.if.end28_crit_edge, %if.end15.if.end28_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %83 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %priv.0, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.body.i.i.cleanup_crit_edge, %if.then20.i.cleanup_crit_edge, %if.end.i62.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %dev_name.exit.i.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ], [ -12, %if.then9.cleanup_crit_edge ], [ -12, %dev_name.exit.i.cleanup_crit_edge ], [ %call18.i, %if.then20.i.cleanup_crit_edge ], [ %call18.i, %for.body.i.i.cleanup_crit_edge ], [ -12, %if.end.i62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !243
  %tr_list.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %tr_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn10.i = load ptr, ptr %tr_list.i, align 4
  %cmp.not11.i = icmp eq ptr %.pn10.i, %tr_list.i
  br i1 %cmp.not11.i, label %entry.stm32_unregister_iio_triggers.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.stm32_unregister_iio_triggers.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_unregister_iio_triggers.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn12.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn10.i, %entry.for.body.i_crit_edge ]
  %tr.0.i = getelementptr i8, ptr %.pn12.i, i32 -952
  tail call void @iio_trigger_unregister(ptr noundef %tr.0.i) #8
  %4 = ptrtoint ptr %.pn12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn12.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tr_list.i
  br i1 %cmp.not.i, label %for.body.i.stm32_unregister_iio_triggers.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.stm32_unregister_iio_triggers.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_unregister_iio_triggers.exit

stm32_unregister_iio_triggers.exit:               ; preds = %for.body.i.stm32_unregister_iio_triggers.exit_crit_edge, %entry.stm32_unregister_iio_triggers.exit_crit_edge
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 32, ptr noundef nonnull %val) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 4369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %stm32_unregister_iio_triggers.exit.if.end_crit_edge

stm32_unregister_iio_triggers.exit.if.end_crit_edge: ; preds = %stm32_unregister_iio_triggers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %stm32_unregister_iio_triggers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %stm32_unregister_iio_triggers.exit.if.end_crit_edge
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %14) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_counter_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #3 align 64 {
entry:
  %dat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dat) #8
  %2 = ptrtoint ptr %dat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dat, align 4, !annotation !243
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 19, label %sw.bb2
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 36, ptr noundef nonnull %dat) #8
  %6 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dat, align 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap3 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap3, align 4
  %call4 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %dat) #8
  %11 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dat, align 4
  %and = and i32 %12, 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap6 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap6, align 4
  %call7 = call i32 @regmap_read(ptr noundef %15, i32 noundef 8, ptr noundef nonnull %dat) #8
  %16 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dat, align 4
  %and8 = and i32 %17, 7
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8)
  %cmp = icmp eq i32 %and8, 3
  %spec.select = select i1 %cmp, i32 2, i32 0
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb5 ], [ 1, %sw.bb2 ], [ 1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dat) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_counter_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 19, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 36, i32 noundef %val) #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb3
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled, align 4
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_enable(ptr noundef %9) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %regmap8 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap8, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end18

if.else:                                          ; preds = %sw.bb3
  %regmap10 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap10, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %enabled12 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %enabled12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled12, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.else.if.end18_crit_edge, label %if.then14

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %enabled12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %enabled12, align 4
  %clk16 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %clk16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk16, align 4
  tail call void @clk_disable(ptr noundef %18) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.else.if.end18_crit_edge, %if.end
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_counter_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %trig) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %valids = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %valids to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %valids, align 4
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trig, align 8
  %cmp.i = icmp ne ptr %5, @timer_trigger_ops
  %tobool.not20 = icmp eq ptr %3, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool.not20
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.rhs.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end9.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.022 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %if.end9.land.rhs_crit_edge ]
  %cur.021 = phi ptr [ %3, %land.rhs.lr.ph ], [ %incdec.ptr, %if.end9.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %cur.021 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur.021, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call4 = tail call i32 @strlen(ptr noundef %9) #11
  %call5 = tail call i32 @strncmp(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %i.022, 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8, i32 noundef 112, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %incdec.ptr = getelementptr ptr, ptr %cur.021, i32 1
  %inc = add i32 %i.022, 1
  %tobool.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end9.land.rhs_crit_edge

if.end9.land.rhs_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.then7, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.rhs.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_get_preset(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %arr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr) #8
  %2 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %arr, align 4, !annotation !243
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 44, ptr noundef nonnull %arr) #8
  %5 = ptrtoint ptr %arr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arr, align 4
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_count_set_preset(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %preset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %preset) #8
  %2 = ptrtoint ptr %preset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %preset, align 4, !annotation !243
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %preset) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %preset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %preset, align 4
  %call4 = call i32 @regmap_write(ptr noundef %6, i32 noundef 44, i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %preset) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_set_enable_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end.thread_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %land.lhs.true
  ]

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread

if.end.thread:                                    ; preds = %sw.bb1.i, %entry.if.end.thread_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 5, %sw.bb1.i ], [ %mode, %entry.if.end.thread_crit_edge ]
  %lock22 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock22, i32 noundef 0) #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %lock = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then3, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %6) #8
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %enabled, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %land.lhs.true.if.end6_crit_edge, %if.end.thread
  %lock25 = phi ptr [ %lock22, %if.end.thread ], [ %lock, %if.then3 ], [ %lock, %land.lhs.true.if.end6_crit_edge ]
  %retval.0.i.ph24 = phi i32 [ %retval.0.i.ph.ph, %if.end.thread ], [ 6, %if.then3 ], [ 6, %land.lhs.true.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock25) #8
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8, i32 noundef 7, i32 noundef %retval.0.i.ph24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_get_enable_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #3 align 64 {
entry:
  %smcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smcr) #8
  %2 = ptrtoint ptr %smcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %smcr, align 4, !annotation !243
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %smcr) #8
  %5 = ptrtoint ptr %smcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smcr, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %.not = icmp eq i32 %and, 7
  br i1 %.not, label %entry.stm32_sms2enable_mode.exit_crit_edge, label %switch.lookup

entry.stm32_sms2enable_mode.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_sms2enable_mode.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.stm32_get_enable_mode, i32 0, i32 %and
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %stm32_sms2enable_mode.exit

stm32_sms2enable_mode.exit:                       ; preds = %switch.lookup, %entry.stm32_sms2enable_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.stm32_sms2enable_mode.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_set_trigger_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 8, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_get_trigger_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #3 align 64 {
entry:
  %smcr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smcr) #8
  %2 = ptrtoint ptr %smcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %smcr, align 4, !annotation !243
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %smcr) #8
  %5 = ptrtoint ptr %smcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %smcr, align 4
  %and = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and)
  %cmp = icmp eq i32 %and, 7
  %cond = select i1 %cmp, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smcr) #8
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_tt_read_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %psc = alloca i32, align 4
  %arr = alloca i32, align 4
  %cr1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %psc) #8
  %2 = ptrtoint ptr %psc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %psc, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr) #8
  %3 = ptrtoint ptr %arr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %arr, align 4, !annotation !243
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr1) #8
  %4 = ptrtoint ptr %cr1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %cr1, align 4, !annotation !243
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %cr1) #8
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %8, i32 noundef 40, ptr noundef nonnull %psc) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %10, i32 noundef 44, ptr noundef nonnull %arr) #8
  %11 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cr1, align 4
  %and = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end416_crit_edge, label %if.then

entry.if.end416_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end416

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call7 = call i32 @clk_get_rate(ptr noundef %14) #8
  %15 = ptrtoint ptr %psc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %psc, align 4
  %add = add i32 %16, 1
  %div186 = udiv i32 %call7, %add
  %17 = ptrtoint ptr %arr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arr, align 4
  %add195 = add i32 %18, 1
  %div408 = udiv i32 %div186, %add195
  br label %if.end416

if.end416:                                        ; preds = %if.then, %entry.if.end416_crit_edge
  %freq.1.off0 = phi i32 [ 0, %entry.if.end416_crit_edge ], [ %div408, %if.then ]
  %call418 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.64, i32 noundef %freq.1.off0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %psc) #8
  ret i32 %call418
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_tt_store_frequency(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #3 align 64 {
entry:
  %ccer.i18 = alloca i32, align 4
  %ccer.i = alloca i32, align 4
  %freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %freq) #8
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %freq, align 4, !annotation !243
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i) #8
  %5 = ptrtoint ptr %ccer.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ccer.i, align 4, !annotation !243
  %regmap.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 32, ptr noundef nonnull %ccer.i) #8
  %8 = ptrtoint ptr %ccer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccer.i, align 4
  %and.i = and i32 %9, 4369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.stm32_timer_stop.exit_crit_edge

if.then3.stm32_timer_stop.exit_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_timer_stop.exit

if.end.i:                                         ; preds = %if.then3
  %lock.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i35.i = call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %15, i32 noundef 40, i32 noundef 0) #8
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %17, i32 noundef 44, i32 noundef 0) #8
  %name.i = getelementptr i8, ptr %dev, i32 -4
  %18 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name.i, align 4
  %call.i36.i = call ptr @strstr(ptr noundef %19, ptr noundef nonnull @.str.62) #8
  %tobool.i.not.i = icmp eq ptr %call.i36.i, null
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %tobool.i.not.i, i32 112, i32 15728640
  %call.i38.i = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef %..i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i39.i = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %enabled.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled.i, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not.i = icmp eq i8 %25, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then19.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enabled.i, align 4
  %clk.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %28) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end.i.if.end21.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %stm32_timer_stop.exit

stm32_timer_stop.exit:                            ; preds = %if.end21.i, %if.then3.stm32_timer_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ccer.i18) #8
  %29 = ptrtoint ptr %ccer.i18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %ccer.i18, align 4, !annotation !243
  %clk.i19 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %clk.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i19, align 4
  %call.i20 = call i32 @clk_get_rate(ptr noundef %31) #8
  %div176.i = udiv i32 %call.i20, %4
  %max_arr.i = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %max_arr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_arr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div176.i, i32 %33)
  %cmp185705.i = icmp ugt i32 %div176.i, %33
  br i1 %cmp185705.i, label %if.else.while.body.i_crit_edge, label %if.else.if.end412.i_crit_edge

if.else.if.end412.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end412.i

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %prescaler.0706.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.else.while.body.i_crit_edge ]
  %inc.i = add i32 %prescaler.0706.i, 1
  %add188.i = add i32 %prescaler.0706.i, 2
  %div401.i = udiv i32 %div176.i, %add188.i
  %cmp185.i = icmp ugt i32 %div401.i, %33
  br i1 %cmp185.i, label %while.body.i.while.body.i_crit_edge, label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %inc.i)
  %cmp409.i = icmp sgt i32 %inc.i, 65535
  br i1 %cmp409.i, label %do.end.i, label %while.end.i.if.end412.i_crit_edge

while.end.i.if.end412.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end412.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.65) #12
  br label %stm32_timer_start.exit.thread

if.end412.i:                                      ; preds = %while.end.i.if.end412.i_crit_edge, %if.else.if.end412.i_crit_edge
  %prescaler.0.lcssa713.i = phi i32 [ %inc.i, %while.end.i.if.end412.i_crit_edge ], [ 0, %if.else.if.end412.i_crit_edge ]
  %div.1.lcssa.off0712.i = phi i32 [ %div401.i, %while.end.i.if.end412.i_crit_edge ], [ %div176.i, %if.else.if.end412.i_crit_edge ]
  %regmap.i22 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i22, align 4
  %call413.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 32, ptr noundef nonnull %ccer.i18) #8
  %38 = ptrtoint ptr %ccer.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ccer.i18, align 4
  %and414.i = and i32 %39, 4369
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and414.i)
  %tobool415.not.i = icmp eq i32 %and414.i, 0
  br i1 %tobool415.not.i, label %if.end417.i, label %if.end412.i.stm32_timer_start.exit.thread_crit_edge

if.end412.i.stm32_timer_start.exit.thread_crit_edge: ; preds = %if.end412.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stm32_timer_start.exit.thread

if.end417.i:                                      ; preds = %if.end412.i
  %lock.i23 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock.i23, i32 noundef 0) #8
  %enabled.i24 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %enabled.i24 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enabled.i24, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool418.not.i = icmp eq i8 %41, 0
  br i1 %tobool418.not.i, label %if.then419.i, label %if.end417.i.if.end423.i_crit_edge

if.end417.i.if.end423.i_crit_edge:                ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end423.i

if.then419.i:                                     ; preds = %if.end417.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %enabled.i24 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %enabled.i24, align 4
  %43 = ptrtoint ptr %clk.i19 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %clk.i19, align 4
  %call422.i = call i32 @clk_enable(ptr noundef %44) #8
  br label %if.end423.i

if.end423.i:                                      ; preds = %if.then419.i, %if.end417.i.if.end423.i_crit_edge
  %45 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i22, align 4
  %call425.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 40, i32 noundef %prescaler.0.lcssa713.i) #8
  %47 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i22, align 4
  %conv428.i = add i32 %div.1.lcssa.off0712.i, -1
  %call429.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 44, i32 noundef %conv428.i) #8
  %49 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i22, align 4
  %call.i.i25 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %name.i26 = getelementptr i8, ptr %dev, i32 -4
  %51 = ptrtoint ptr %name.i26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name.i26, align 4
  %call.i653.i = call ptr @strstr(ptr noundef %52, ptr noundef nonnull @.str.62) #8
  %tobool.i.not.i27 = icmp eq ptr %call.i653.i, null
  %53 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i22, align 4
  br i1 %tobool.i.not.i27, label %if.else436.i, label %if.then433.i

if.then433.i:                                     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i654.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 4, i32 noundef 15728640, i32 noundef 2097152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %stm32_timer_start.exit

if.else436.i:                                     ; preds = %if.end423.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i655.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 4, i32 noundef 112, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %stm32_timer_start.exit

stm32_timer_start.exit.thread:                    ; preds = %if.end412.i.stm32_timer_start.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -16, %if.end412.i.stm32_timer_start.exit.thread_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i18) #8
  br label %cleanup

stm32_timer_start.exit:                           ; preds = %if.else436.i, %if.then433.i
  %55 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i22, align 4
  %call.i656.i = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 20, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %57 = ptrtoint ptr %regmap.i22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i22, align 4
  %call.i657.i = call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @mutex_unlock(ptr noundef %lock.i23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ccer.i18) #8
  br label %cleanup

cleanup:                                          ; preds = %stm32_timer_start.exit, %stm32_timer_start.exit.thread, %stm32_timer_stop.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %stm32_timer_start.exit.thread ], [ %len, %stm32_timer_start.exit ], [ %len, %stm32_timer_stop.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %freq) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_tt_show_master_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  %cr2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr2) #8
  %2 = ptrtoint ptr %cr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cr2, align 4, !annotation !243
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %cr2) #8
  %name = getelementptr i8, ptr %dev, i32 -4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call.i = call ptr @strstr(ptr noundef %6, ptr noundef nonnull @.str.62) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  %7 = ptrtoint ptr %cr2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cr2, align 4
  %. = select i1 %tobool.i.not, i32 4, i32 20
  %.9 = select i1 %tobool.i.not, i32 7, i32 15
  %and4 = lshr i32 %8, %.
  %shr5 = and i32 %and4, %.9
  store i32 %shr5, ptr %cr2, align 4
  %arrayidx = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %shr5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.71, ptr noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr2) #8
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_tt_store_master_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr i8, ptr %dev, i32 -4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call.i = tail call ptr @strstr(ptr noundef %3, ptr noundef nonnull @.str.62) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.i.not, i32 112, i32 15728640
  %.30 = select i1 %tobool.i.not, i32 4, i32 20
  %4 = select i1 %tobool.i.not, i32 8, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @strlen(ptr noundef %6) #11
  %call5 = tail call i32 @strncmp(ptr noundef %6, ptr noundef %buf, i32 noundef %call4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  %lock = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then8, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %enabled, align 4
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_enable(ptr noundef %11) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.then6.if.end11_crit_edge
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %i.034, %.30
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4, i32 noundef %., i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond = icmp eq i32 %inc, %4
  br i1 %exitcond, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end11
  %retval.0 = phi i32 [ %len, %if.end11 ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_tt_show_master_mode_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call.i = tail call ptr @strstr(ptr noundef %1, ptr noundef nonnull @.str.62) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  %2 = select i1 %tobool.i.not, i32 8, i32 16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %len.013 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.013
  %sub = sub i32 4096, %len.013
  %arrayidx = getelementptr [16 x ptr], ptr @master_mode_table, i32 0, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.89, ptr noundef %4) #8
  %add = add i32 %call2, %len.013
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond = icmp eq i32 %inc, %2
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub3 = add i32 %add, -1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 %sub3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %arrayidx4, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %bak = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef %bak) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %cr2 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 1
  %call4 = tail call i32 @regmap_read(ptr noundef %7, i32 noundef 4, ptr noundef %cr2) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %psc = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 2
  %call7 = tail call i32 @regmap_read(ptr noundef %9, i32 noundef 40, ptr noundef %psc) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %arr = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 3
  %call10 = tail call i32 @regmap_read(ptr noundef %11, i32 noundef 44, ptr noundef %arr) #8
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %cnt = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 4
  %call13 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef 36, ptr noundef %cnt) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %smcr = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 5
  %call16 = tail call i32 @regmap_read(ptr noundef %15, i32 noundef 8, ptr noundef %smcr) #8
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %19) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timer_trigger_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enabled = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !244
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %bak = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10
  %smcr = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 5
  %8 = ptrtoint ptr %smcr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %smcr, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8, i32 noundef %9) #8
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %cr2 = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %cr2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr2, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 4, i32 noundef %13) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %psc = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %psc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %psc, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 40, i32 noundef %17) #8
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %arr = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 3
  %20 = ptrtoint ptr %arr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arr, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 44, i32 noundef %21) #8
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %cnt = getelementptr inbounds %struct.stm32_timer_trigger, ptr %1, i32 0, i32 10, i32 4
  %24 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cnt, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 36, i32 noundef %25) #8
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %28 = ptrtoint ptr %bak to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bak, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 0, i32 noundef %29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 116)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !168, !170, !172, !173, !174, !175, !176, !177, !178, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !222, !224, !226, !228, !230, !232}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @__ksymtab_is_stm32_timer_trigger, !1, !"__ksymtab_is_stm32_timer_trigger", i1 false, i1 false}
!1 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 749, i32 1}
!2 = !{ptr @__initcall__kmod_stm32_timer_trigger__232_913_stm32_timer_trigger_driver_init6, !3, !"__initcall__kmod_stm32_timer_trigger__232_913_stm32_timer_trigger_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 913, i32 1}
!4 = !{ptr @__exitcall_stm32_timer_trigger_driver_exit, !3, !"__exitcall_stm32_timer_trigger_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_alias233, !6, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!6 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 915, i32 1}
!7 = !{ptr @__UNIQUE_ID_description234, !8, !"__UNIQUE_ID_description234", i1 false, i1 false}
!8 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 916, i32 1}
!9 = !{ptr @__UNIQUE_ID_file235, !10, !"__UNIQUE_ID_file235", i1 false, i1 false}
!10 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 917, i32 1}
!11 = !{ptr @__UNIQUE_ID_license236, !10, !"__UNIQUE_ID_license236", i1 false, i1 false}
!12 = !{ptr @timer_trigger_ops, !13, !"timer_trigger_ops", i1 false, i1 false}
!13 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 387, i32 37}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 908, i32 11}
!16 = !{ptr @stm32_timer_trigger_driver, !17, !"stm32_timer_trigger_driver", i1 false, i1 false}
!17 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 904, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 774, i32 41}
!20 = !{ptr @stm32_timer_trigger_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 800, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stm32_trigger_info, !24, !"stm32_trigger_info", i1 false, i1 false}
!24 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 541, i32 30}
!25 = !{ptr @stm32_trigger_channel, !26, !"stm32_trigger_channel", i1 false, i1 false}
!26 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 705, i32 35}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 693, i32 11}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 698, i32 2}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 699, i32 2}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 700, i32 2}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 701, i32 2}
!37 = !{ptr @stm32_trigger_count_info, !38, !"stm32_trigger_count_info", i1 false, i1 false}
!38 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 691, i32 44}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 668, i32 34}
!41 = !{ptr @stm32_enable_mode_enum, !42, !"stm32_enable_mode_enum", i1 false, i1 false}
!42 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 651, i32 30}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 581, i32 2}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 582, i32 2}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 583, i32 2}
!49 = !{ptr @stm32_enable_modes, !50, !"stm32_enable_modes", i1 false, i1 false}
!50 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 580, i32 26}
!51 = !{ptr @stm32_trigger_mode_enum, !52, !"stm32_trigger_mode_enum", i1 false, i1 false}
!52 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 573, i32 30}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 548, i32 2}
!55 = !{ptr @stm32_trigger_modes, !56, !"stm32_trigger_modes", i1 false, i1 false}
!56 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 547, i32 26}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 4}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 15}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 27}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 37}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 47}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 23, i32 57}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 24, i32 4}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 24, i32 15}
!73 = !{ptr @.str.21, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 24, i32 25}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 24, i32 35}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 24, i32 45}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 25, i32 4}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 25, i32 15}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 25, i32 25}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 25, i32 35}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 25, i32 45}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 26, i32 4}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 26, i32 15}
!93 = !{ptr @.str.31, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 26, i32 25}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 26, i32 35}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 26, i32 45}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 27, i32 4}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 27, i32 15}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 27, i32 25}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 27, i32 35}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 27, i32 45}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 28, i32 4}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 29, i32 4}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 4}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 15}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 27}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 37}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 47}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 30, i32 57}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 31, i32 4}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 31, i32 15}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 31, i32 25}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 32, i32 4}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 33, i32 4}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 34, i32 4}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 34, i32 16}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 34, i32 27}
!141 = !{ptr @.str.55, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 35, i32 4}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 36, i32 4}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 37, i32 4}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 38, i32 4}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 39, i32 4}
!151 = !{ptr @triggers_table, !152, !"triggers_table", i1 false, i1 false}
!152 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 22, i32 20}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 415, i32 44}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 113, i32 25}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 113, i32 50}
!159 = !{ptr @stm32_trigger_attr_groups, !160, !"stm32_trigger_attr_groups", i1 false, i1 false}
!160 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 382, i32 38}
!161 = !{ptr @stm32_trigger_attr_group, !162, !"stm32_trigger_attr_group", i1 false, i1 false}
!162 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 378, i32 37}
!163 = !{ptr @stm32_trigger_attrs, !164, !"stm32_trigger_attrs", i1 false, i1 false}
!164 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 371, i32 26}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 257, i32 8}
!167 = !{ptr @iio_dev_attr_sampling_frequency, !166, !"iio_dev_attr_sampling_frequency", i1 false, i1 false}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 254, i32 22}
!170 = !{ptr @.str.65, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 143, i32 3}
!172 = !{ptr @.str.66, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.67, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.68, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @stm32_timer_start._entry, !171, !"_entry", i1 false, i1 false}
!177 = !{ptr @stm32_timer_start._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.70, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 366, i32 8}
!180 = !{ptr @iio_dev_attr_master_mode, !179, !"iio_dev_attr_master_mode", i1 false, i1 false}
!181 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 299, i32 25}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 265, i32 2}
!185 = !{ptr @.str.73, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 266, i32 2}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 267, i32 2}
!189 = !{ptr @.str.75, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 268, i32 2}
!191 = !{ptr @.str.76, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 269, i32 2}
!193 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 270, i32 2}
!195 = !{ptr @.str.78, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 271, i32 2}
!197 = !{ptr @.str.79, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 272, i32 2}
!199 = !{ptr @.str.80, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 274, i32 2}
!201 = !{ptr @.str.81, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 275, i32 2}
!203 = !{ptr @.str.82, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 276, i32 2}
!205 = !{ptr @.str.83, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 277, i32 2}
!207 = !{ptr @.str.84, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 278, i32 2}
!209 = !{ptr @.str.85, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 279, i32 2}
!211 = !{ptr @.str.86, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 280, i32 2}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 281, i32 2}
!215 = !{ptr @master_mode_table, !216, !"master_mode_table", i1 false, i1 false}
!216 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 264, i32 14}
!217 = !{ptr @.str.88, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 363, i32 8}
!219 = !{ptr @iio_dev_attr_master_mode_available, !218, !"iio_dev_attr_master_mode_available", i1 false, i1 false}
!220 = !{ptr @.str.89, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 355, i32 4}
!222 = !{ptr @stm32_trig_of_match, !223, !"stm32_trig_of_match", i1 false, i1 false}
!223 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 892, i32 34}
!224 = !{ptr @stm32_timer_trg_cfg, !225, !"stm32_timer_trg_cfg", i1 false, i1 false}
!225 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 882, i32 45}
!226 = !{ptr @valids_table, !227, !"valids_table", i1 false, i1 false}
!227 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 43, i32 20}
!228 = !{ptr @stm32h7_timer_trg_cfg, !229, !"stm32h7_timer_trg_cfg", i1 false, i1 false}
!229 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 887, i32 45}
!230 = !{ptr @stm32h7_valids_table, !231, !"stm32h7_valids_table", i1 false, i1 false}
!231 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 58, i32 20}
!232 = !{ptr @stm32_timer_trigger_pm_ops, !233, !"stm32_timer_trigger_pm_ops", i1 false, i1 false}
!233 = !{!"../drivers/iio/trigger/stm32-timer-trigger.c", i32 878, i32 8}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{!"auto-init"}
!244 = !{i8 0, i8 2}
