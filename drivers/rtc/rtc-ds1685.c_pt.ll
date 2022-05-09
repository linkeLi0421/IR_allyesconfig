; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1685.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1685.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ds1685_rtc_poweroff\22, \22a\22\09"
module asm "\09.weak\09__crc_ds1685_rtc_poweroff\09\09\09\09"
module asm "\09.long\09__crc_ds1685_rtc_poweroff\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ds1685_rtc_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22ds1685_rtc_poweroff\22\09\09\09\09\09"
module asm "__kstrtabns_ds1685_rtc_poweroff:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ds1685_priv = type { ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.ds1685_rtc_platform_data = type { i32, i8, i8, i8, ptr, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_ds1685__227_1365_ds1685_rtc_driver_init6 = internal global ptr @ds1685_rtc_driver_init, section ".initcall6.init", align 4
@ds1685_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ds1685_rtc_probe, ptr @ds1685_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ds1685_rtc_driver_exit = internal global ptr @ds1685_rtc_driver_exit, section ".exitcall.exit", align 4
@ds1685_rtc_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\010rtc_ds1685: platform device data not available, spinning forever ...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ds1685_rtc_poweroff\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1685.c\00", [39 x i8] zeroinitializer }, align 32
@ds1685_rtc_poweroff._entry_ptr = internal global ptr @ds1685_rtc_poweroff._entry, section ".printk_index", align 4
@ds1685_rtc_poweroff._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Powerdown.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1685_rtc_poweroff._entry_ptr.7 = internal global ptr @ds1685_rtc_poweroff._entry.3, section ".printk_index", align 4
@__kstrtab_ds1685_rtc_poweroff = external dso_local constant [0 x i8], align 1
@__kstrtabns_ds1685_rtc_poweroff = external dso_local constant [0 x i8], align 1
@__ksymtab_ds1685_rtc_poweroff = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ds1685_rtc_poweroff to i32), ptr @__kstrtab_ds1685_rtc_poweroff, ptr @__kstrtabns_ds1685_rtc_poweroff }, section "___ksymtab+ds1685_rtc_poweroff", align 4
@__UNIQUE_ID_author228 = internal constant [51 x i8] c"rtc_ds1685.author=Joshua Kinard <kumba@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [70 x i8] c"rtc_ds1685.author=Matthias Fuchs <matthias.fuchs@esd-electronics.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [68 x i8] c"rtc_ds1685.description=Dallas/Maxim DS1685/DS1687-series RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [39 x i8] c"rtc_ds1685.file=drivers/rtc/rtc-ds1685\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"rtc_ds1685.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [37 x i8] c"rtc_ds1685.alias=platform:rtc-ds1685\00", section ".modinfo", align 1
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rtc-ds1685\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1685_nvram\00", [19 x i8] zeroinitializer }, align 32
@__const.ds1685_rtc_probe.nvmem_cfg = private unnamed_addr constant { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, [1 x i8], ptr, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, ptr, i8, [3 x i8], ptr } { ptr null, ptr @.str.9, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, ptr null, i8 0, [3 x i8] zeroinitializer, ptr @ds1685_nvram_read, ptr @ds1685_nvram_write, ptr null, i32 242, i32 0, i32 0, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null }, align 4
@ds1685_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Main battery is exhausted! RTC may be invalid!\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ds1685_rtc_probe\00", [47 x i8] zeroinitializer }, align 32
@ds1685_rtc_probe._entry_ptr = internal global ptr @ds1685_rtc_probe._entry, section ".printk_index", align 4
@ds1685_rtc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 1237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Aux battery is exhausted or not available.\0A\00", [52 x i8] zeroinitializer }, align 32
@ds1685_rtc_probe._entry_ptr.14 = internal global ptr @ds1685_rtc_probe._entry.12, section ".printk_index", align 4
@ds1685_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1685_rtc_read_time, ptr @ds1685_rtc_set_time, ptr @ds1685_rtc_read_alarm, ptr @ds1685_rtc_set_alarm, ptr @ds1685_rtc_proc, ptr @ds1685_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1685_rtc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 1304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RTC interrupt not available\0A\00", [35 x i8] zeroinitializer }, align 32
@ds1685_rtc_probe._entry_ptr.17 = internal global ptr @ds1685_rtc_probe._entry.15, section ".printk_index", align 4
@ds1685_rtc_sysfs_misc_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.68, ptr null, ptr null, ptr @ds1685_rtc_sysfs_misc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DS1685/DS1687\00\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DS1689/DS1693\00\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DS17285/DS17287\00\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DS17485/DS17487\00\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DS17885/DS17887\00\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unknown\00\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [180 x i8], [44 x i8] } { [180 x i8] c"Model\09\09: %s\0AOscillator\09: %s\0A12/24hr\09\09: %s\0ADST\09\09: %s\0AData mode\09: %s\0ABattery\09\09: %s\0AAux batt\09: %s\0AUpdate IRQ\09: %s\0APeriodic IRQ\09: %s\0APeriodic Rate\09: %s\0ASQW Freq\09: %s\0ASerial #\09: %8phC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"24-hour\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"12-hour\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"binary\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BCD\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"exhausted or n/a\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@ds1685_rtc_pirq_rate = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.37, ptr @.str.38, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@ds1685_rtc_sqw_freq = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.35, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.50, ptr @.str.51, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"32768Hz\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3.90625ms\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"7.8125ms\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.122070ms\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.244141ms\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.488281ms\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0.9765625ms\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"1.953125ms\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15.625ms\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"31.25ms\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"62.5ms\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"125ms\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"250ms\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500ms\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"256Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"128Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8192Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4096Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2048Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1024Hz\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"512Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"64Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"32Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4Hz\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2Hz\00", [28 x i8] zeroinitializer }, align 32
@ds1685_rtc_extended_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 623, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Wake Alarm IRQ just occurred!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ds1685_rtc_extended_irq\00", [40 x i8] zeroinitializer }, align 32
@ds1685_rtc_extended_irq._entry_ptr = internal global ptr @ds1685_rtc_extended_irq._entry, section ".printk_index", align 4
@ds1685_rtc_extended_irq._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 646, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RAM-Clear IRQ just occurred!\0A\00", [34 x i8] zeroinitializer }, align 32
@ds1685_rtc_extended_irq._entry_ptr.67 = internal global ptr @ds1685_rtc_extended_irq._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@ds1685_rtc_sysfs_misc_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_battery, ptr @dev_attr_auxbatt, ptr @dev_attr_serial, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_battery = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1685_rtc_sysfs_battery_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_auxbatt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1685_rtc_sysfs_auxbatt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ds1685_rtc_sysfs_serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not ok or N/A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"auxbatt\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%8phC\0A\00", [25 x i8] zeroinitializer }, align 32
@switch.table.ds1685_rtc_proc = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.18, ptr @.str.20, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.23, ptr @.str.23, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"ds1685_rtc_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1358, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1384, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1431, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1360, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1077, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1231, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1236, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"ds1685_rtc_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 830, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1303, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"ds1685_rtc_sysfs_misc_grp\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1055, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 771, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 774, i32 11 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 777, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 780, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 783, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 786, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 792, i32 5 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 805, i32 33 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 805, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 806, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 806, i32 46 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 808, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 808, i32 43 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 809, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 809, i32 40 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 811, i32 33 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 811, i32 41 }
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"ds1685_rtc_pirq_rate\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 732, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 814, i32 59 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"ds1685_rtc_sqw_freq\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 741, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 816, i32 58 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 733, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 733, i32 23 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 733, i32 35 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 733, i32 49 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 734, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 734, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 734, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 14 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 25 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 44 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 735, i32 53 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 10 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 28 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 48 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 742, i32 58 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 37 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 45 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 53 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 60 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 743, i32 67 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 622, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 645, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1056, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant [28 x i8] c"ds1685_rtc_sysfs_misc_attrs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1044, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant [17 x i8] c"dev_attr_battery\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"dev_attr_auxbatt\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 995, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 992, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 993, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1017, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1038, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1685.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1036, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant [29 x i8] c"switch.table.ds1685_rtc_proc\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ds1685_rtc_driver_exit, ptr @__initcall__kmod_rtc_ds1685__227_1365_ds1685_rtc_driver_init6, ptr @__ksymtab_ds1685_rtc_poweroff, ptr @ds1685_rtc_driver_exit, ptr @ds1685_rtc_extended_irq._entry, ptr @ds1685_rtc_extended_irq._entry.65, ptr @ds1685_rtc_extended_irq._entry_ptr, ptr @ds1685_rtc_extended_irq._entry_ptr.67, ptr @ds1685_rtc_poweroff._entry, ptr @ds1685_rtc_poweroff._entry.3, ptr @ds1685_rtc_poweroff._entry_ptr, ptr @ds1685_rtc_poweroff._entry_ptr.7, ptr @ds1685_rtc_probe._entry, ptr @ds1685_rtc_probe._entry.12, ptr @ds1685_rtc_probe._entry.15, ptr @ds1685_rtc_probe._entry_ptr, ptr @ds1685_rtc_probe._entry_ptr.14, ptr @ds1685_rtc_probe._entry_ptr.17, ptr @ds1685_rtc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ds1685_rtc_ops, ptr @.str.16, ptr @ds1685_rtc_sysfs_misc_grp, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @ds1685_rtc_pirq_rate, ptr @.str.35, ptr @ds1685_rtc_sqw_freq, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @ds1685_rtc_sysfs_misc_attrs, ptr @dev_attr_battery, ptr @dev_attr_auxbatt, ptr @dev_attr_serial, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.ds1685_rtc_proc], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_poweroff._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_sysfs_misc_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_pirq_rate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_sqw_freq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_extended_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_extended_irq._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1685_rtc_sysfs_misc_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_battery to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_auxbatt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ds1685_rtc_proc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ds1685_rtc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1685_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @ds1685_rtc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ds1685_rtc_poweroff(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pdev, null
  br i1 %tobool.not, label %do.end, label %if.else, !prof !182

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.end
  br label %while.cond

if.else:                                          ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %no_irq = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %no_irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %no_irq, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.then6, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %irq_num = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %irq_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_num, align 4
  tail call void @disable_irq_nosync(i32 noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.else.if.end_crit_edge
  %read = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read, align 4
  %call7 = tail call zeroext i8 %7(ptr noundef %1, i32 noundef 10) #8
  %8 = and i8 %call7, -97
  %9 = or i8 %8, 32
  %write = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  tail call void %11(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %9) #8
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %14 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read, align 4
  %call.i = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 10) #8
  %16 = or i8 %call.i, 16
  tail call void %13(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %16) #8
  %17 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read, align 4
  %call12 = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 74) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call12)
  %tobool15.not = icmp sgt i8 %call12, -1
  br i1 %tobool15.not, label %if.end.do.end30_crit_edge, label %if.then16

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and18 = and i8 %call12, -8
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  tail call void %20(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %and18) #8
  %21 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %read, align 4
  %call22 = tail call zeroext i8 %22(ptr noundef %1, i32 noundef 75) #8
  %23 = or i8 %call22, -125
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  tail call void %25(ptr noundef %1, i32 noundef 75, i8 noundef zeroext %23) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then16, %if.end.do.end30_crit_edge
  %ctrl4a.0 = phi i8 [ %and18, %if.then16 ], [ %call12, %if.end.do.end30_crit_edge ]
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #11
  tail call void @msleep(i32 noundef 20) #8
  %26 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write, align 4
  %28 = or i8 %ctrl4a.0, 8
  tail call void %27(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %28) #8
  br label %while.cond35

while.cond35:                                     ; preds = %while.cond35, %do.end30
  br label %while.cond35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_probe(ptr noundef %pdev) #5 align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  %0 = call ptr @memcpy(ptr %nvmem_cfg, ptr @__const.ds1685_rtc_probe.nvmem_cfg, i32 88)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %access_type = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %access_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %access_type, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end4.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
  ]

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call5 to i32
  br label %cleanup

sw.bb12:                                          ; preds = %if.end4
  %call13 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs14 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regs14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %regs14, align 4
  %cmp.i440 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i440, label %if.then17, label %if.end20

if.then17:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end20:                                         ; preds = %sw.bb12
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #8
  %data = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call21, ptr %data, align 4
  %cmp.i441 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i441, label %if.then24, label %if.end20.sw.epilog.sink.split_crit_edge

if.end20.sw.epilog.sink.split_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call21 to i32
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end20.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %ds1685_indirect_read.sink = phi ptr [ @ds1685_read, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @ds1685_indirect_read, %if.end20.sw.epilog.sink.split_crit_edge ]
  %ds1685_indirect_write.sink = phi ptr [ @ds1685_write, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @ds1685_indirect_write, %if.end20.sw.epilog.sink.split_crit_edge ]
  %read28 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %read28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ds1685_indirect_read.sink, ptr %read28, align 4
  %write29 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %write29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ds1685_indirect_write.sink, ptr %write29, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end4.sw.epilog_crit_edge
  %read30 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read30, align 4
  %tobool31.not = icmp eq ptr %15, null
  br i1 %tobool31.not, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %write32 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write32, align 4
  %tobool33.not = icmp eq ptr %17, null
  br i1 %tobool33.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end35

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  %spec.select = select i1 %cmp.not, i32 1, i32 %19
  %20 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %20, align 4
  %plat_prepare_poweroff = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 4
  %22 = ptrtoint ptr %plat_prepare_poweroff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat_prepare_poweroff, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %if.end35.if.end44_crit_edge, label %if.then42

if.end35.if.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %prepare_poweroff = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 9
  %24 = ptrtoint ptr %prepare_poweroff to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %prepare_poweroff, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end35.if.end44_crit_edge
  %plat_wake_alarm = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 5
  %25 = ptrtoint ptr %plat_wake_alarm to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plat_wake_alarm, align 4
  %tobool45.not = icmp eq ptr %26, null
  br i1 %tobool45.not, label %if.end44.if.end48_crit_edge, label %if.then46

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %wake_alarm = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 10
  %27 = ptrtoint ptr %wake_alarm to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %wake_alarm, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44.if.end48_crit_edge
  %plat_post_ram_clear = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %plat_post_ram_clear to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_post_ram_clear, align 4
  %tobool49.not = icmp eq ptr %29, null
  br i1 %tobool49.not, label %if.end48.if.end52_crit_edge, label %if.then50

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %post_ram_clear = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 11
  %30 = ptrtoint ptr %post_ram_clear to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %post_ram_clear, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end48.if.end52_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %32 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read30, align 4
  %call54 = tail call zeroext i8 %33(ptr noundef nonnull %call.i, i32 noundef 10) #8
  %or = and i8 %call54, -128
  %34 = or i8 %or, 48
  %35 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32, align 4
  tail call void %36(ptr noundef nonnull %call.i, i32 noundef 10, i8 noundef zeroext %34) #8
  %37 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %write32, align 4
  %39 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read30, align 4
  %call72 = tail call zeroext i8 %40(ptr noundef nonnull %call.i, i32 noundef 75) #8
  %41 = or i8 %call72, 64
  tail call void %38(ptr noundef nonnull %call.i, i32 noundef 75, i8 noundef zeroext %41) #8
  %42 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32, align 4
  %44 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read30, align 4
  %call78 = tail call zeroext i8 %45(ptr noundef nonnull %call.i, i32 noundef 11) #8
  %46 = or i8 %call78, -128
  tail call void %43(ptr noundef nonnull %call.i, i32 noundef 11, i8 noundef zeroext %46) #8
  %47 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %read30, align 4
  %call83501 = tail call zeroext i8 %48(ptr noundef nonnull %call.i, i32 noundef 74) #8
  %49 = and i8 %call83501, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool86.not502 = icmp eq i8 %49, 0
  br i1 %tobool86.not502, label %if.end52.while.end_crit_edge, label %if.end52.do.end_crit_edge

if.end52.do.end_crit_edge:                        ; preds = %if.end52
  br label %do.end

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.end52.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !184
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !185
  %50 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read30, align 4
  %call83 = tail call zeroext i8 %51(ptr noundef nonnull %call.i, i32 noundef 74) #8
  %52 = and i8 %call83, 64
  %tobool86.not = icmp eq i8 %52, 0
  br i1 %tobool86.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.end52.while.end_crit_edge
  %53 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read30, align 4
  %call94 = tail call zeroext i8 %54(ptr noundef nonnull %call.i, i32 noundef 11) #8
  %bcd_mode = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 1
  %55 = ptrtoint ptr %bcd_mode to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bcd_mode, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool95.not = icmp eq i8 %56, 0
  %57 = and i8 %call94, -6
  %masksel = select i1 %tobool95.not, i8 4, i8 0
  %ctrlb.0 = or i8 %masksel, %57
  %bcd_mode107 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 5
  %58 = ptrtoint ptr %bcd_mode107 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %56, ptr %bcd_mode107, align 4
  %59 = and i8 %call94, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool118.not = icmp eq i8 %59, 0
  br i1 %tobool118.not, label %if.then119, label %if.else169

if.then119:                                       ; preds = %while.end
  %60 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %read30, align 4
  %call121 = tail call zeroext i8 %61(ptr noundef nonnull %call.i, i32 noundef 4) #8
  %62 = ptrtoint ptr %bcd_mode107 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bcd_mode107, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i, label %if.end.i, label %cond.end.i

cond.end.i:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %call.i442 = tail call i32 @_bcd2bin(i8 noundef zeroext %call121) #12
  %64 = trunc i32 %call.i442 to i8
  %conv4.i = and i8 %64, 31
  br label %ds1685_rtc_bcd2bin.exit

if.end.i:                                         ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i = and i8 %call121, 15
  br label %ds1685_rtc_bcd2bin.exit

ds1685_rtc_bcd2bin.exit:                          ; preds = %if.end.i, %cond.end.i
  %retval.0.i = phi i8 [ %conv4.i, %cond.end.i ], [ %and713.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %retval.0.i)
  %cmp127 = icmp eq i8 %retval.0.i, 12
  %add = add nuw nsw i8 %retval.0.i, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call121)
  %tobool130.not498 = icmp slt i8 %call121, 0
  %spec.select438 = select i1 %tobool130.not498, i8 %add, i8 %retval.0.i
  %cond136 = select i1 %cmp127, i8 0, i8 %spec.select438
  %or139 = or i8 %ctrlb.0, 2
  %65 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write32, align 4
  tail call void %66(ptr noundef nonnull %call.i, i32 noundef 11, i8 noundef zeroext %or139) #8
  %67 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write32, align 4
  %69 = ptrtoint ptr %bcd_mode107 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bcd_mode107, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i444 = icmp eq i8 %70, 0
  br i1 %tobool.not.i444, label %if.end.i452, label %cond.end.i451

cond.end.i451:                                    ; preds = %ds1685_rtc_bcd2bin.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = zext i8 %cond136 to i32
  %call.i448 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i) #12
  %conv5.i = and i8 %call.i448, 63
  br label %ds1685_rtc_bin2bcd.exit

if.end.i452:                                      ; preds = %ds1685_rtc_bcd2bin.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and814.i = and i8 %cond136, 31
  br label %ds1685_rtc_bin2bcd.exit

ds1685_rtc_bin2bcd.exit:                          ; preds = %if.end.i452, %cond.end.i451
  %retval.0.i453 = phi i8 [ %conv5.i, %cond.end.i451 ], [ %and814.i, %if.end.i452 ]
  tail call void %68(ptr noundef nonnull %call.i, i32 noundef 4, i8 noundef zeroext %retval.0.i453) #8
  %71 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %read30, align 4
  %call145 = tail call zeroext i8 %72(ptr noundef nonnull %call.i, i32 noundef 5) #8
  %73 = ptrtoint ptr %bcd_mode107 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %bcd_mode107, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i455 = icmp eq i8 %74, 0
  br i1 %tobool.not.i455, label %if.end.i486, label %if.then.i473

if.then.i473:                                     ; preds = %ds1685_rtc_bin2bcd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i462 = tail call i32 @_bcd2bin(i8 noundef zeroext %call145) #12
  %75 = trunc i32 %call.i462 to i8
  %conv4.i465 = and i8 %75, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %conv4.i465)
  %cmp151 = icmp eq i8 %conv4.i465, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call145)
  %tobool156.not499 = icmp slt i8 %call145, 0
  %add159 = add nuw nsw i8 %conv4.i465, 12
  %spec.select439 = select i1 %tobool156.not499, i8 %add159, i8 %conv4.i465
  %cond165 = select i1 %cmp151, i8 0, i8 %spec.select439
  %conv2.i479 = zext i8 %cond165 to i32
  %call.i480 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i479) #12
  %conv5.i483 = and i8 %call.i480, 63
  br label %ds1685_rtc_bin2bcd.exit488

if.end.i486:                                      ; preds = %ds1685_rtc_bin2bcd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i467 = and i8 %call145, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %and713.i467)
  %cmp151492 = icmp eq i8 %and713.i467, 12
  %add159494 = add nuw nsw i8 %and713.i467, 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call145)
  %tobool156.not493500 = icmp slt i8 %call145, 0
  %spec.select439495 = select i1 %tobool156.not493500, i8 %add159494, i8 %and713.i467
  %cond165496 = select i1 %cmp151492, i8 0, i8 %spec.select439495
  br label %ds1685_rtc_bin2bcd.exit488

ds1685_rtc_bin2bcd.exit488:                       ; preds = %if.end.i486, %if.then.i473
  %retval.0.i487 = phi i8 [ %conv5.i483, %if.then.i473 ], [ %cond165496, %if.end.i486 ]
  %76 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write32, align 4
  tail call void %77(ptr noundef nonnull %call.i, i32 noundef 5, i8 noundef zeroext %retval.0.i487) #8
  br label %if.end171

if.else169:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write32, align 4
  tail call void %79(ptr noundef nonnull %call.i, i32 noundef 11, i8 noundef zeroext %ctrlb.0) #8
  br label %if.end171

if.end171:                                        ; preds = %if.else169, %ds1685_rtc_bin2bcd.exit488
  %80 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write32, align 4
  %82 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read30, align 4
  %call174 = tail call zeroext i8 %83(ptr noundef nonnull %call.i, i32 noundef 11) #8
  %84 = and i8 %call174, 127
  tail call void %81(ptr noundef nonnull %call.i, i32 noundef 11, i8 noundef zeroext %84) #8
  %85 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %read30, align 4
  %call179 = tail call zeroext i8 %86(ptr noundef nonnull %call.i, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call179)
  %tobool182.not = icmp sgt i8 %call179, -1
  br i1 %tobool182.not, label %do.end186, label %if.end171.if.end188_crit_edge

if.end171.if.end188_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end188

do.end186:                                        ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #11
  br label %if.end188

if.end188:                                        ; preds = %do.end186, %if.end171.if.end188_crit_edge
  %87 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read30, align 4
  %call190 = tail call zeroext i8 %88(ptr noundef nonnull %call.i, i32 noundef 74) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call190)
  %tobool193.not = icmp sgt i8 %call190, -1
  br i1 %tobool193.not, label %do.end197, label %if.end188.if.end199_crit_edge

if.end188.if.end199_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end199

do.end197:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #11
  br label %if.end199

if.end199:                                        ; preds = %do.end197, %if.end188.if.end199_crit_edge
  %89 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32, align 4
  %91 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read30, align 4
  %call202 = tail call zeroext i8 %92(ptr noundef nonnull %call.i, i32 noundef 11) #8
  %93 = and i8 %call202, -113
  tail call void %90(ptr noundef nonnull %call.i, i32 noundef 11, i8 noundef zeroext %93) #8
  %94 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %read30, align 4
  %call207 = tail call zeroext i8 %95(ptr noundef nonnull %call.i, i32 noundef 12) #8
  %96 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %write32, align 4
  %98 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read30, align 4
  %call210 = tail call zeroext i8 %99(ptr noundef nonnull %call.i, i32 noundef 75) #8
  %100 = and i8 %call210, -8
  tail call void %97(ptr noundef nonnull %call.i, i32 noundef 75, i8 noundef zeroext %100) #8
  %101 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write32, align 4
  %103 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %read30, align 4
  %call216 = tail call zeroext i8 %104(ptr noundef nonnull %call.i, i32 noundef 74) #8
  %105 = and i8 %call216, -8
  tail call void %102(ptr noundef nonnull %call.i, i32 noundef 74, i8 noundef zeroext %105) #8
  %106 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write32, align 4
  %108 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %read30, align 4
  %call222 = tail call zeroext i8 %109(ptr noundef nonnull %call.i, i32 noundef 75) #8
  %110 = or i8 %call222, 1
  tail call void %107(ptr noundef nonnull %call.i, i32 noundef 75, i8 noundef zeroext %110) #8
  %call227 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #8
  %cmp.i489 = icmp ugt ptr %call227, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i489, label %if.then229, label %if.end231

if.then229:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %call227 to i32
  br label %cleanup

if.end231:                                        ; preds = %if.end199
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call227, i32 0, i32 3
  %112 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @ds1685_rtc_ops, ptr %ops, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call227, i32 0, i32 22
  %113 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 946684800, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call227, i32 0, i32 23
  %114 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 4102444799, ptr %range_max, align 8
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %call227, i32 0, i32 12
  %115 = ptrtoint ptr %max_user_freq to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 8192, ptr %max_user_freq, align 8
  %uie_unsupported = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 3
  %116 = ptrtoint ptr %uie_unsupported to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %uie_unsupported, align 2, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool232.not = icmp eq i8 %117, 0
  br i1 %tobool232.not, label %if.end231.if.end235_crit_edge, label %if.then233

if.end231.if.end235_crit_edge:                    ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end235

if.then233:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  %uie_unsupported234 = getelementptr inbounds %struct.rtc_device, ptr %call227, i32 0, i32 19
  %118 = ptrtoint ptr %uie_unsupported234 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %uie_unsupported234, align 8
  br label %if.end235

if.end235:                                        ; preds = %if.then233, %if.end231.if.end235_crit_edge
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call227, ptr %call.i, align 4
  %no_irq = getelementptr inbounds %struct.ds1685_rtc_platform_data, ptr %2, i32 0, i32 2
  %120 = ptrtoint ptr %no_irq to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %no_irq, align 1, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool237.not = icmp eq i8 %121, 0
  br i1 %tobool237.not, label %if.then238, label %if.end235.if.end257_crit_edge

if.end235.if.end257_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.then238:                                       ; preds = %if.end235
  %call239 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 1
  br i1 %cmp240, label %if.then238.cleanup_crit_edge, label %if.end243

if.then238.cleanup_crit_edge:                     ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end243:                                        ; preds = %if.then238
  %irq_num = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 4
  %122 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %call239, ptr %irq_num, align 4
  %123 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %pdev, align 8
  %call246 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call239, ptr noundef null, ptr noundef nonnull @ds1685_rtc_irq_handler, i32 noundef 8320, ptr noundef %124, ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %if.end243.if.end257_crit_edge, label %do.end253, !prof !186

if.end243.if.end257_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

do.end253:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.16) #11
  %125 = ptrtoint ptr %irq_num to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %irq_num, align 4
  br label %if.end257

if.end257:                                        ; preds = %do.end253, %if.end243.if.end257_crit_edge, %if.end235.if.end257_crit_edge
  %126 = ptrtoint ptr %no_irq to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %no_irq, align 1, !range !183
  %no_irq260 = getelementptr inbounds %struct.ds1685_priv, ptr %call.i, i32 0, i32 6
  %128 = ptrtoint ptr %no_irq260 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %no_irq260, align 1
  %129 = ptrtoint ptr %write32 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %write32, align 4
  %131 = ptrtoint ptr %read30 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %read30, align 4
  %call.i490 = tail call zeroext i8 %132(ptr noundef %call.i, i32 noundef 10) #8
  %133 = and i8 %call.i490, -17
  tail call void %130(ptr noundef %call.i, i32 noundef 10, i8 noundef zeroext %133) #8
  %call262 = tail call i32 @rtc_add_group(ptr noundef %call227, ptr noundef nonnull @ds1685_rtc_sysfs_misc_grp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.end265, label %if.end257.cleanup_crit_edge

if.end257.cleanup_crit_edge:                      ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end265:                                        ; preds = %if.end257
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %134 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call.i, ptr %priv, align 4
  %call266 = call i32 @devm_rtc_nvmem_register(ptr noundef %call227, ptr noundef nonnull %nvmem_cfg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call266)
  %tobool267.not = icmp eq i32 %call266, 0
  br i1 %tobool267.not, label %if.end269, label %if.end265.cleanup_crit_edge

if.end265.cleanup_crit_edge:                      ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end269:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #10
  %call270 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call227) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end269, %if.end265.cleanup_crit_edge, %if.end257.cleanup_crit_edge, %if.then238.cleanup_crit_edge, %if.then229, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then24, %if.then17, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %111, %if.then229 ], [ %call270, %if.end269 ], [ %9, %if.then17 ], [ %11, %if.then24 ], [ %7, %if.then8 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -6, %lor.lhs.false.cleanup_crit_edge ], [ -6, %sw.epilog.cleanup_crit_edge ], [ %call239, %if.then238.cleanup_crit_edge ], [ %call262, %if.end257.cleanup_crit_edge ], [ %call266, %if.end265.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_remove(ptr nocapture noundef readonly %pdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %write = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %read = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call1 = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 11) #8
  %6 = and i8 %call1, -113
  tail call void %3(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %6) #8
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call4 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 12) #8
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %11 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read, align 4
  %call7 = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 75) #8
  %13 = and i8 %call7, -8
  tail call void %10(ptr noundef %1, i32 noundef 75, i8 noundef zeroext %13) #8
  %14 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write, align 4
  %16 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read, align 4
  %call13 = tail call zeroext i8 %17(ptr noundef %1, i32 noundef 74) #8
  %18 = and i8 %call13, -8
  tail call void %15(ptr noundef %1, i32 noundef 74, i8 noundef zeroext %18) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_nvram_read(ptr noundef %priv, i32 noundef %pos, ptr nocapture noundef writeonly %val, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %priv, i32 noundef 10) #8
  %6 = and i8 %call.i, -17
  tail call void %3(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not66 = icmp eq i32 %size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %pos)
  %cmp168 = icmp ugt i32 %pos, 113
  %7 = or i1 %cmp.not66, %cmp168
  br i1 %7, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %buf.073 = phi ptr [ %buf.1, %for.body.for.body_crit_edge ], [ %val, %if.end.for.body_crit_edge ]
  %count.072 = phi i32 [ %inc11, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %size.addr.071 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %size, %if.end.for.body_crit_edge ]
  %pos.addr.070 = phi i32 [ %pos.addr.1, %for.body.for.body_crit_edge ], [ %pos, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %count.072)
  %cmp2 = icmp ult i32 %count.072, 50
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %. = select i1 %cmp2, i32 14, i32 64
  %add = add nuw nsw i32 %pos.addr.070, %.
  %call4 = tail call zeroext i8 %9(ptr noundef %priv, i32 noundef %add) #8
  %buf.1 = getelementptr i8, ptr %buf.073, i32 1
  %pos.addr.1 = add nuw nsw i32 %pos.addr.070, 1
  %10 = ptrtoint ptr %buf.073 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call4, ptr %buf.073, align 1
  %inc11 = add nuw nsw i32 %count.072, 1
  %dec = add i32 %size.addr.071, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %cmp.not.not = xor i1 %cmp.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %pos.addr.070)
  %cmp1 = icmp ult i32 %pos.addr.070, 113
  %or.cond = select i1 %cmp.not.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %pos.addr.0.lcssa = phi i32 [ %pos, %if.end.for.end_crit_edge ], [ %pos.addr.1, %for.body.for.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %size, %if.end.for.end_crit_edge ], [ %dec, %for.body.for.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %val, %if.end.for.end_crit_edge ], [ %buf.1, %for.body.for.end_crit_edge ]
  %cmp.not.lcssa = phi i1 [ %cmp.not66, %if.end.for.end_crit_edge ], [ %cmp.not, %for.body.for.end_crit_edge ]
  br i1 %cmp.not.lcssa, label %for.end.if.end28_crit_edge, label %if.then13

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then13:                                        ; preds = %for.end
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %call.i62 = tail call zeroext i8 %14(ptr noundef %priv, i32 noundef 10) #8
  %15 = or i8 %call.i62, 16
  tail call void %12(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %cmp15.not77 = icmp ne i32 %size.addr.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %pos.addr.0.lcssa)
  %cmp1778 = icmp ult i32 %pos.addr.0.lcssa, 242
  %or.cond5979 = select i1 %cmp15.not77, i1 %cmp1778, i1 false
  br i1 %or.cond5979, label %if.then13.for.body19_crit_edge, label %if.then13.for.end27_crit_edge

if.then13.for.end27_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

if.then13.for.body19_crit_edge:                   ; preds = %if.then13
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %if.then13.for.body19_crit_edge
  %buf.282 = phi ptr [ %incdec.ptr22, %for.body19.for.body19_crit_edge ], [ %buf.0.lcssa, %if.then13.for.body19_crit_edge ]
  %size.addr.181 = phi i32 [ %dec26, %for.body19.for.body19_crit_edge ], [ %size.addr.0.lcssa, %if.then13.for.body19_crit_edge ]
  %pos.addr.280 = phi i32 [ %inc23, %for.body19.for.body19_crit_edge ], [ %pos.addr.0.lcssa, %if.then13.for.body19_crit_edge ]
  %16 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write.i, align 4
  %18 = trunc i32 %pos.addr.280 to i8
  %conv = add i8 %18, -114
  tail call void %17(ptr noundef %priv, i32 noundef 80, i8 noundef zeroext %conv) #8
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %call21 = tail call zeroext i8 %20(ptr noundef %priv, i32 noundef 83) #8
  %incdec.ptr22 = getelementptr i8, ptr %buf.282, i32 1
  %21 = ptrtoint ptr %buf.282 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call21, ptr %buf.282, align 1
  %inc23 = add nuw nsw i32 %pos.addr.280, 1
  %dec26 = add i32 %size.addr.181, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec26)
  %cmp15.not = icmp ne i32 %dec26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %pos.addr.280)
  %cmp17 = icmp ult i32 %pos.addr.280, 241
  %or.cond59 = select i1 %cmp15.not, i1 %cmp17, i1 false
  br i1 %or.cond59, label %for.body19.for.body19_crit_edge, label %for.body19.for.end27_crit_edge

for.body19.for.end27_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body19

for.end27:                                        ; preds = %for.body19.for.end27_crit_edge, %if.then13.for.end27_crit_edge
  %22 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write.i, align 4
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i, align 4
  %call.i65 = tail call zeroext i8 %25(ptr noundef %priv, i32 noundef 10) #8
  %26 = and i8 %call.i65, -17
  tail call void %23(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %26) #8
  br label %if.end28

if.end28:                                         ; preds = %for.end27, %for.end.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_nvram_write(ptr noundef %priv, i32 noundef %pos, ptr nocapture noundef readonly %val, i32 noundef %size) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %priv, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %priv, i32 noundef 10) #8
  %6 = and i8 %call.i, -17
  tail call void %3(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp.not61 = icmp eq i32 %size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %pos)
  %cmp163 = icmp ugt i32 %pos, 113
  %7 = or i1 %cmp.not61, %cmp163
  br i1 %7, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %buf.068 = phi ptr [ %buf.1, %for.body.for.body_crit_edge ], [ %val, %if.end.for.body_crit_edge ]
  %count.067 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %size.addr.066 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %size, %if.end.for.body_crit_edge ]
  %pos.addr.065 = phi i32 [ %pos.addr.1, %for.body.for.body_crit_edge ], [ %pos, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %count.067)
  %cmp2 = icmp slt i32 %count.067, 50
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %add = add nuw nsw i32 %pos.addr.065, 14
  %add.sink = select i1 %cmp2, i32 %add, i32 64
  %inc = zext i1 %cmp2 to i32
  %pos.addr.1 = add nuw nsw i32 %pos.addr.065, %inc
  %10 = ptrtoint ptr %buf.068 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.068, align 1
  tail call void %9(ptr noundef %priv, i32 noundef %add.sink, i8 noundef zeroext %11) #8
  %buf.1 = getelementptr i8, ptr %buf.068, i32 1
  %inc7 = add i32 %count.067, 1
  %dec = add i32 %size.addr.066, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  %cmp.not.not = xor i1 %cmp.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 114, i32 %pos.addr.1)
  %cmp1 = icmp ult i32 %pos.addr.1, 114
  %or.cond = select i1 %cmp.not.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %pos.addr.0.lcssa = phi i32 [ %pos, %if.end.for.end_crit_edge ], [ %pos.addr.1, %for.body.for.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %size, %if.end.for.end_crit_edge ], [ %dec, %for.body.for.end_crit_edge ]
  %buf.0.lcssa = phi ptr [ %val, %if.end.for.end_crit_edge ], [ %buf.1, %for.body.for.end_crit_edge ]
  %cmp.not.lcssa = phi i1 [ %cmp.not61, %if.end.for.end_crit_edge ], [ %cmp.not, %for.body.for.end_crit_edge ]
  br i1 %cmp.not.lcssa, label %for.end.if.end24_crit_edge, label %if.then9

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then9:                                         ; preds = %for.end
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write.i, align 4
  %14 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i, align 4
  %call.i57 = tail call zeroext i8 %15(ptr noundef %priv, i32 noundef 10) #8
  %16 = or i8 %call.i57, 16
  tail call void %13(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %cmp11.not72 = icmp ne i32 %size.addr.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 242, i32 %pos.addr.0.lcssa)
  %cmp1373 = icmp ult i32 %pos.addr.0.lcssa, 242
  %or.cond5474 = select i1 %cmp11.not72, i1 %cmp1373, i1 false
  br i1 %or.cond5474, label %if.then9.for.body15_crit_edge, label %if.then9.for.end23_crit_edge

if.then9.for.end23_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

if.then9.for.body15_crit_edge:                    ; preds = %if.then9
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.then9.for.body15_crit_edge
  %buf.277 = phi ptr [ %incdec.ptr18, %for.body15.for.body15_crit_edge ], [ %buf.0.lcssa, %if.then9.for.body15_crit_edge ]
  %size.addr.176 = phi i32 [ %dec22, %for.body15.for.body15_crit_edge ], [ %size.addr.0.lcssa, %if.then9.for.body15_crit_edge ]
  %pos.addr.275 = phi i32 [ %inc19, %for.body15.for.body15_crit_edge ], [ %pos.addr.0.lcssa, %if.then9.for.body15_crit_edge ]
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %19 = trunc i32 %pos.addr.275 to i8
  %conv = add i8 %19, -114
  tail call void %18(ptr noundef %priv, i32 noundef 80, i8 noundef zeroext %conv) #8
  %20 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i, align 4
  %incdec.ptr18 = getelementptr i8, ptr %buf.277, i32 1
  %22 = ptrtoint ptr %buf.277 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf.277, align 1
  tail call void %21(ptr noundef %priv, i32 noundef 83, i8 noundef zeroext %23) #8
  %inc19 = add nuw nsw i32 %pos.addr.275, 1
  %dec22 = add i32 %size.addr.176, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec22)
  %cmp11.not = icmp ne i32 %dec22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 241, i32 %pos.addr.275)
  %cmp13 = icmp ult i32 %pos.addr.275, 241
  %or.cond54 = select i1 %cmp11.not, i1 %cmp13, i1 false
  br i1 %or.cond54, label %for.body15.for.body15_crit_edge, label %for.body15.for.end23_crit_edge

for.body15.for.end23_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end23

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.end23:                                        ; preds = %for.body15.for.end23_crit_edge, %if.then9.for.end23_crit_edge
  %24 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i, align 4
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 4
  %call.i60 = tail call zeroext i8 %27(ptr noundef %priv, i32 noundef 10) #8
  %28 = and i8 %call.i60, -17
  tail call void %25(ptr noundef %priv, i32 noundef 10, i8 noundef zeroext %28) #8
  br label %if.end24

if.end24:                                         ; preds = %for.end23, %for.end.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds1685_read(ptr nocapture noundef readonly %rtc, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %regstep = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 3
  %2 = ptrtoint ptr %regstep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regstep, align 4
  %mul = mul i32 %3, %reg
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !188
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds1685_write(ptr nocapture noundef readonly %rtc, i32 noundef %reg, i8 noundef zeroext %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !189
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %regstep = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 3
  %2 = ptrtoint ptr %regstep to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %regstep, align 4
  %mul = mul i32 %3, %reg
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %value) #8, !srcloc !190
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ds1685_indirect_read(ptr nocapture noundef readonly %rtc, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !191
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %reg to i8
  %regs = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #8, !srcloc !190
  %data = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #8, !srcloc !187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !192
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ds1685_indirect_write(ptr nocapture noundef readonly %rtc, i32 noundef %reg, i8 noundef zeroext %value) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !193
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %reg to i8
  %regs = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %conv) #8, !srcloc !190
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !194
  tail call void @arm_heavy_mb() #8
  %data = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 %value) #8, !srcloc !190
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev_id, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !182

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #8
  %read = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call4 = tail call zeroext i8 %5(ptr noundef nonnull %1, i32 noundef 11) #8
  %6 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read, align 4
  %call6 = tail call zeroext i8 %7(ptr noundef nonnull %1, i32 noundef 12) #8
  %conv = zext i8 %call6 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end56_crit_edge, label %if.then14, !prof !182

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then14:                                        ; preds = %if.end
  %and16 = and i32 %conv, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else, label %if.then24, !prof !182

if.then24:                                        ; preds = %if.then14
  %conv25 = zext i8 %call4 to i32
  %and26 = and i32 %conv25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and29 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %or.cond = select i1 %tobool27.not, i1 true, i1 %tobool30.not
  %events.0 = select i1 %or.cond, i32 128, i32 192
  %not.or.cond = xor i1 %or.cond, true
  %num_irqs.0 = zext i1 %not.or.cond to i8
  %and34 = and i32 %conv25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %and38 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %or.cond89 = select i1 %tobool35.not, i1 true, i1 %tobool39.not
  %or41 = or i32 %events.0, 32
  %inc42 = select i1 %or.cond, i8 1, i8 2
  %events.1 = select i1 %or.cond89, i32 %events.0, i32 %or41
  %num_irqs.1 = select i1 %or.cond89, i8 %num_irqs.0, i8 %inc42
  %and45 = and i32 %conv25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %and49 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %or.cond90 = select i1 %tobool46.not, i1 true, i1 %tobool50.not
  br i1 %or.cond90, label %if.then24.if.end56_crit_edge, label %if.then51

if.then24.if.end56_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then51:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  %or52 = or i32 %events.1, 16
  %inc53 = add nuw nsw i8 %num_irqs.1, 1
  br label %if.end56

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @ds1685_rtc_extended_irq(ptr noundef nonnull %1, ptr noundef %dev_id)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then51, %if.then24.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %events.2 = phi i32 [ %or52, %if.then51 ], [ %events.1, %if.then24.if.end56_crit_edge ], [ 0, %if.else ], [ 0, %if.end.if.end56_crit_edge ]
  %num_irqs.2 = phi i8 [ %inc53, %if.then51 ], [ %num_irqs.1, %if.then24.if.end56_crit_edge ], [ 0, %if.else ], [ 0, %if.end.if.end56_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv58 = zext i8 %num_irqs.2 to i32
  tail call void @rtc_update_irq(ptr noundef %9, i32 noundef %conv58, i32 noundef %events.2) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %ops_lock60 = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %ops_lock60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events.2)
  %tobool61.not = icmp ne i32 %events.2, 0
  %cond = zext i1 %tobool61.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end56 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 11) #8
  %6 = or i8 %call.i, -128
  tail call void %3(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %6) #8
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call.i.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 10) #8
  %11 = or i8 %call.i.i, 16
  tail call void %8(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %11) #8
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %call315.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 74) #8
  %14 = and i8 %call315.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not16.i = icmp eq i8 %14, 0
  br i1 %tobool.not16.i, label %entry.ds1685_rtc_begin_data_access.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !196
  %15 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i, align 4
  %call3.i = tail call zeroext i8 %16(ptr noundef %1, i32 noundef 74) #8
  %17 = and i8 %call3.i, 64
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

ds1685_rtc_begin_data_access.exit:                ; preds = %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, %entry.ds1685_rtc_begin_data_access.exit_crit_edge
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %call1 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 0) #8
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call3 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 2) #8
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %call5 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 4) #8
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i, align 4
  %call7 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 6) #8
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 4
  %call9 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 7) #8
  %28 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i, align 4
  %call11 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 8) #8
  %30 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i, align 4
  %call13 = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 9) #8
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 4
  %call15 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 72) #8
  %34 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i, align 4
  %36 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i, align 4
  %call.i.i75 = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 10) #8
  %38 = and i8 %call.i.i75, -17
  tail call void %35(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %38) #8
  %39 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i, align 4
  %41 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read.i, align 4
  %call.i76 = tail call zeroext i8 %42(ptr noundef %1, i32 noundef 11) #8
  %43 = and i8 %call.i76, 127
  tail call void %40(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %43) #8
  %bcd_mode.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i77 = icmp eq i8 %45, 0
  br i1 %tobool.not.i77, label %if.end.i107, label %if.then.i81

if.then.i81:                                      ; preds = %ds1685_rtc_begin_data_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i78 = tail call i32 @_bcd2bin(i8 noundef zeroext %call13) #12
  %46 = trunc i32 %call.i78 to i8
  %call.i87 = tail call i32 @_bcd2bin(i8 noundef zeroext %call15) #12
  %47 = trunc i32 %call.i87 to i8
  %call.i102 = tail call i32 @_bcd2bin(i8 noundef zeroext %call1) #12
  %48 = trunc i32 %call.i102 to i8
  %conv4.i = and i8 %48, 127
  br label %ds1685_rtc_bcd2bin.exit109

if.end.i107:                                      ; preds = %ds1685_rtc_begin_data_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i = and i8 %call13, 127
  %and713.i106 = and i8 %call1, 63
  br label %ds1685_rtc_bcd2bin.exit109

ds1685_rtc_bcd2bin.exit109:                       ; preds = %if.end.i107, %if.then.i81
  %retval.0.i92202 = phi i8 [ %47, %if.then.i81 ], [ %call15, %if.end.i107 ]
  %retval.0.i196200 = phi i8 [ %46, %if.then.i81 ], [ %and713.i, %if.end.i107 ]
  %retval.0.i108 = phi i8 [ %conv4.i, %if.then.i81 ], [ %and713.i106, %if.end.i107 ]
  %conv = zext i8 %retval.0.i108 to i32
  %49 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv, ptr %tm, align 4
  %50 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i111 = icmp eq i8 %51, 0
  br i1 %tobool.not.i111, label %if.end.i124, label %cond.end.i122

cond.end.i122:                                    ; preds = %ds1685_rtc_bcd2bin.exit109
  call void @__sanitizer_cov_trace_pc() #10
  %call.i118 = tail call i32 @_bcd2bin(i8 noundef zeroext %call3) #12
  %52 = trunc i32 %call.i118 to i8
  %conv4.i121 = and i8 %52, 127
  br label %ds1685_rtc_bcd2bin.exit126

if.end.i124:                                      ; preds = %ds1685_rtc_bcd2bin.exit109
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i123 = and i8 %call3, 63
  br label %ds1685_rtc_bcd2bin.exit126

ds1685_rtc_bcd2bin.exit126:                       ; preds = %if.end.i124, %cond.end.i122
  %retval.0.i125 = phi i8 [ %conv4.i121, %cond.end.i122 ], [ %and713.i123, %if.end.i124 ]
  %conv20 = zext i8 %retval.0.i125 to i32
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %53 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv20, ptr %tm_min, align 4
  %54 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i128 = icmp eq i8 %55, 0
  br i1 %tobool.not.i128, label %if.end.i141, label %cond.end.i139

cond.end.i139:                                    ; preds = %ds1685_rtc_bcd2bin.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %call.i135 = tail call i32 @_bcd2bin(i8 noundef zeroext %call5) #12
  %56 = trunc i32 %call.i135 to i8
  %conv4.i138 = and i8 %56, 63
  br label %ds1685_rtc_bcd2bin.exit143

if.end.i141:                                      ; preds = %ds1685_rtc_bcd2bin.exit126
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i140 = and i8 %call5, 31
  br label %ds1685_rtc_bcd2bin.exit143

ds1685_rtc_bcd2bin.exit143:                       ; preds = %if.end.i141, %cond.end.i139
  %retval.0.i142 = phi i8 [ %conv4.i138, %cond.end.i139 ], [ %and713.i140, %if.end.i141 ]
  %conv22 = zext i8 %retval.0.i142 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %57 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv22, ptr %tm_hour, align 4
  %58 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i145 = icmp eq i8 %59, 0
  br i1 %tobool.not.i145, label %ds1685_rtc_bcd2bin.exit143.ds1685_rtc_bcd2bin.exit160_crit_edge, label %cond.end.i156

ds1685_rtc_bcd2bin.exit143.ds1685_rtc_bcd2bin.exit160_crit_edge: ; preds = %ds1685_rtc_bcd2bin.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_bcd2bin.exit160

cond.end.i156:                                    ; preds = %ds1685_rtc_bcd2bin.exit143
  call void @__sanitizer_cov_trace_pc() #10
  %call.i152 = tail call i32 @_bcd2bin(i8 noundef zeroext %call7) #12
  %60 = trunc i32 %call.i152 to i8
  br label %ds1685_rtc_bcd2bin.exit160

ds1685_rtc_bcd2bin.exit160:                       ; preds = %cond.end.i156, %ds1685_rtc_bcd2bin.exit143.ds1685_rtc_bcd2bin.exit160_crit_edge
  %retval.0.i159.in = phi i8 [ %60, %cond.end.i156 ], [ %call7, %ds1685_rtc_bcd2bin.exit143.ds1685_rtc_bcd2bin.exit160_crit_edge ]
  %retval.0.i159 = and i8 %retval.0.i159.in, 7
  %conv24 = zext i8 %retval.0.i159 to i32
  %sub = add nsw i32 %conv24, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %61 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub, ptr %tm_wday, align 4
  %62 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i162 = icmp eq i8 %63, 0
  br i1 %tobool.not.i162, label %if.end.i175, label %cond.end.i173

cond.end.i173:                                    ; preds = %ds1685_rtc_bcd2bin.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %call.i169 = tail call i32 @_bcd2bin(i8 noundef zeroext %call9) #12
  %64 = trunc i32 %call.i169 to i8
  %conv4.i172 = and i8 %64, 63
  br label %ds1685_rtc_bcd2bin.exit177

if.end.i175:                                      ; preds = %ds1685_rtc_bcd2bin.exit160
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i174 = and i8 %call9, 31
  br label %ds1685_rtc_bcd2bin.exit177

ds1685_rtc_bcd2bin.exit177:                       ; preds = %if.end.i175, %cond.end.i173
  %retval.0.i176 = phi i8 [ %conv4.i172, %cond.end.i173 ], [ %and713.i174, %if.end.i175 ]
  %conv26 = zext i8 %retval.0.i176 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %65 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv26, ptr %tm_mday, align 4
  %66 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i179 = icmp eq i8 %67, 0
  br i1 %tobool.not.i179, label %if.end.i192, label %cond.end.i190

cond.end.i190:                                    ; preds = %ds1685_rtc_bcd2bin.exit177
  call void @__sanitizer_cov_trace_pc() #10
  %call.i186 = tail call i32 @_bcd2bin(i8 noundef zeroext %call11) #12
  %68 = trunc i32 %call.i186 to i8
  %conv4.i189 = and i8 %68, 31
  br label %ds1685_rtc_bcd2bin.exit194

if.end.i192:                                      ; preds = %ds1685_rtc_bcd2bin.exit177
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i191 = and i8 %call11, 15
  br label %ds1685_rtc_bcd2bin.exit194

ds1685_rtc_bcd2bin.exit194:                       ; preds = %if.end.i192, %cond.end.i190
  %retval.0.i193 = phi i8 [ %conv4.i189, %cond.end.i190 ], [ %and713.i191, %if.end.i192 ]
  %conv28 = zext i8 %retval.0.i193 to i32
  %sub29 = add nsw i32 %conv28, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %69 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub29, ptr %tm_mon, align 4
  %conv30 = zext i8 %retval.0.i196200 to i32
  %conv31 = zext i8 %retval.0.i92202 to i32
  %mul = mul nuw nsw i32 %conv31, 100
  %add = add nuw nsw i32 %conv30, -1900
  %sub32 = add nsw i32 %add, %mul
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %70 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub32, ptr %tm_year, align 4
  %call36 = tail call i32 @rtc_year_days(i32 noundef %conv26, i32 noundef %sub29, i32 noundef %sub32) #8
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 7
  %71 = ptrtoint ptr %tm_yday to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %call36, ptr %tm_yday, align 4
  %tm_isdst = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 8
  %72 = ptrtoint ptr %tm_isdst to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %tm_isdst, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %tm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm, align 4
  %bcd_mode.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i242, label %if.then.i124

if.then.i124:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv2.i = and i32 %3, 255
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i) #12
  %conv5.i = and i8 %call.i, 127
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_min, align 4
  %conv2.i130 = and i32 %7, 255
  %call.i131 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i130) #12
  %conv5.i134 = and i8 %call.i131, 127
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour, align 4
  %conv2.i148 = and i32 %9, 255
  %call.i149 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i148) #12
  %conv5.i152 = and i8 %call.i149, 63
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %10 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_wday, align 4
  %conv6 = add i32 %11, 1
  %conv2.i166 = and i32 %conv6, 255
  %call.i167 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i166) #12
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %12 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_mday, align 4
  %conv2.i184 = and i32 %13, 255
  %call.i185 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i184) #12
  %conv5.i188 = and i8 %call.i185, 63
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon, align 4
  %conv11 = add i32 %15, 1
  %conv2.i202 = and i32 %conv11, 255
  %call.i203 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i202) #12
  %conv5.i206 = and i8 %call.i203, 31
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %16 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tm_year, align 4
  %rem = srem i32 %17, 100
  %conv2.i220 = and i32 %rem, 255
  %call.i221 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i220) #12
  %add16371 = add i32 %17, 1900
  %div372 = sdiv i32 %add16371, 100
  %conv2.i237 = and i32 %div372, 255
  %call.i238 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i237) #12
  br label %ds1685_rtc_bin2bcd.exit244

if.end.i242:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %3 to i8
  %and814.i = and i8 %conv, 63
  %tm_min250 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %18 = ptrtoint ptr %tm_min250 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_min250, align 4
  %conv2251 = trunc i32 %19 to i8
  %and814.i136 = and i8 %conv2251, 63
  %tm_hour260 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %20 = ptrtoint ptr %tm_hour260 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tm_hour260, align 4
  %conv4261 = trunc i32 %21 to i8
  %and814.i154 = and i8 %conv4261, 31
  %tm_wday276 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %22 = ptrtoint ptr %tm_wday276 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tm_wday276, align 4
  %24 = trunc i32 %23 to i8
  %conv6277 = add i8 %24, 1
  %tm_mday295 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %25 = ptrtoint ptr %tm_mday295 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tm_mday295, align 4
  %conv8296 = trunc i32 %26 to i8
  %and814.i190 = and i8 %conv8296, 31
  %tm_mon317 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %27 = ptrtoint ptr %tm_mon317 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_mon317, align 4
  %29 = trunc i32 %28 to i8
  %conv11318 = add i8 %29, 1
  %and814.i208 = and i8 %conv11318, 15
  %tm_year342 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %30 = ptrtoint ptr %tm_year342 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_year342, align 4
  %rem343 = srem i32 %31, 100
  %conv13344 = trunc i32 %rem343 to i8
  %and814.i225 = and i8 %conv13344, 127
  %add16 = add i32 %31, 1900
  %div = sdiv i32 %add16, 100
  %conv17 = trunc i32 %div to i8
  br label %ds1685_rtc_bin2bcd.exit244

ds1685_rtc_bin2bcd.exit244:                       ; preds = %if.end.i242, %if.then.i124
  %retval.0.i227390 = phi i8 [ %and814.i225, %if.end.i242 ], [ %call.i221, %if.then.i124 ]
  %32 = phi i32 [ %28, %if.end.i242 ], [ %15, %if.then.i124 ]
  %retval.0.i192331345388 = phi i8 [ %and814.i190, %if.end.i242 ], [ %conv5.i188, %if.then.i124 ]
  %retval.0.i156286297329347386 = phi i8 [ %and814.i154, %if.end.i242 ], [ %conv5.i152, %if.then.i124 ]
  %tm_min254262284299327349384 = phi ptr [ %tm_min250, %if.end.i242 ], [ %tm_min, %if.then.i124 ]
  %retval.0.i252264282301325351382 = phi i8 [ %and814.i, %if.end.i242 ], [ %conv5.i, %if.then.i124 ]
  %retval.0.i138266280303323353380 = phi i8 [ %and814.i136, %if.end.i242 ], [ %conv5.i134, %if.then.i124 ]
  %tm_hour268278305321355378 = phi ptr [ %tm_hour260, %if.end.i242 ], [ %tm_hour, %if.then.i124 ]
  %retval.0.i174307319357376.in = phi i8 [ %conv6277, %if.end.i242 ], [ %call.i167, %if.then.i124 ]
  %33 = phi i32 [ %26, %if.end.i242 ], [ %13, %if.then.i124 ]
  %retval.0.i210359374 = phi i8 [ %and814.i208, %if.end.i242 ], [ %conv5.i206, %if.then.i124 ]
  %34 = phi i32 [ %31, %if.end.i242 ], [ %17, %if.then.i124 ]
  %retval.0.i243 = phi i8 [ %conv17, %if.end.i242 ], [ %call.i238, %if.then.i124 ]
  %retval.0.i174307319357376 = and i8 %retval.0.i174307319357376.in, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %32)
  %cmp = icmp sgt i32 %32, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i192331345388)
  %cmp22 = icmp eq i8 %retval.0.i192331345388, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp22
  br i1 %or.cond, label %ds1685_rtc_bin2bcd.exit244.cleanup_crit_edge, label %if.end

ds1685_rtc_bin2bcd.exit244.cleanup_crit_edge:     ; preds = %ds1685_rtc_bin2bcd.exit244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ds1685_rtc_bin2bcd.exit244
  %call27 = tail call i32 @rtc_month_days(i32 noundef %32, i32 noundef %34) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call27)
  %cmp28 = icmp sgt i32 %33, %call27
  br i1 %cmp28, label %if.end.cleanup_crit_edge, label %if.end31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %35 = ptrtoint ptr %tm_hour268278305321355378 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_hour268278305321355378, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %36)
  %cmp33 = icmp sgt i32 %36, 23
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %lor.lhs.false35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false35:                                  ; preds = %if.end31
  %37 = ptrtoint ptr %tm_min254262284299327349384 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_min254262284299327349384, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %38)
  %cmp37 = icmp sgt i32 %38, 59
  br i1 %cmp37, label %lor.lhs.false35.cleanup_crit_edge, label %lor.lhs.false39

lor.lhs.false35.cleanup_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false35
  %39 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %40)
  %cmp41 = icmp sgt i32 %40, 59
  br i1 %cmp41, label %lor.lhs.false39.cleanup_crit_edge, label %if.end48

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %lor.lhs.false39
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read.i, align 4
  %call.i245 = tail call zeroext i8 %44(ptr noundef %1, i32 noundef 11) #8
  %45 = or i8 %call.i245, -128
  tail call void %42(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %45) #8
  %46 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i, align 4
  %48 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read.i, align 4
  %call.i.i = tail call zeroext i8 %49(ptr noundef %1, i32 noundef 10) #8
  %50 = or i8 %call.i.i, 16
  tail call void %47(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %50) #8
  %51 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %read.i, align 4
  %call315.i = tail call zeroext i8 %52(ptr noundef %1, i32 noundef 74) #8
  %53 = and i8 %call315.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not16.i = icmp eq i8 %53, 0
  br i1 %tobool.not16.i, label %if.end48.ds1685_rtc_begin_data_access.exit_crit_edge, label %if.end48.do.end.i_crit_edge

if.end48.do.end.i_crit_edge:                      ; preds = %if.end48
  br label %do.end.i

if.end48.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end48.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !196
  %54 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read.i, align 4
  %call3.i = tail call zeroext i8 %55(ptr noundef %1, i32 noundef 74) #8
  %56 = and i8 %call3.i, 64
  %tobool.not.i246 = icmp eq i8 %56, 0
  br i1 %tobool.not.i246, label %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

ds1685_rtc_begin_data_access.exit:                ; preds = %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, %if.end48.ds1685_rtc_begin_data_access.exit_crit_edge
  %57 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %read.i, align 4
  %call49 = tail call zeroext i8 %58(ptr noundef %1, i32 noundef 11) #8
  %59 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not = icmp eq i8 %60, 0
  %61 = and i8 %call49, -5
  %masksel = select i1 %tobool.not, i8 4, i8 0
  %ctrlb.0 = or i8 %masksel, %61
  %62 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %write.i, align 4
  tail call void %63(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %ctrlb.0) #8
  %64 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write.i, align 4
  tail call void %65(ptr noundef %1, i32 noundef 0, i8 noundef zeroext %retval.0.i252264282301325351382) #8
  %66 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %retval.0.i138266280303323353380) #8
  %68 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i, align 4
  tail call void %69(ptr noundef %1, i32 noundef 4, i8 noundef zeroext %retval.0.i156286297329347386) #8
  %70 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write.i, align 4
  tail call void %71(ptr noundef %1, i32 noundef 6, i8 noundef zeroext %retval.0.i174307319357376) #8
  %72 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %write.i, align 4
  tail call void %73(ptr noundef %1, i32 noundef 7, i8 noundef zeroext %retval.0.i192331345388) #8
  %74 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write.i, align 4
  tail call void %75(ptr noundef %1, i32 noundef 8, i8 noundef zeroext %retval.0.i210359374) #8
  %76 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %write.i, align 4
  tail call void %77(ptr noundef %1, i32 noundef 9, i8 noundef zeroext %retval.0.i227390) #8
  %78 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i, align 4
  tail call void %79(ptr noundef %1, i32 noundef 72, i8 noundef zeroext %retval.0.i243) #8
  %80 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i, align 4
  %82 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %read.i, align 4
  %call.i.i247 = tail call zeroext i8 %83(ptr noundef %1, i32 noundef 10) #8
  %84 = and i8 %call.i.i247, -17
  tail call void %81(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %84) #8
  %85 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i, align 4
  %87 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %read.i, align 4
  %call.i248 = tail call zeroext i8 %88(ptr noundef %1, i32 noundef 11) #8
  %89 = and i8 %call.i248, 127
  tail call void %86(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %89) #8
  br label %cleanup

cleanup:                                          ; preds = %ds1685_rtc_begin_data_access.exit, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ds1685_rtc_bin2bcd.exit244.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ds1685_rtc_begin_data_access.exit ], [ -33, %ds1685_rtc_bin2bcd.exit244.cleanup_crit_edge ], [ -33, %if.end.cleanup_crit_edge ], [ -33, %lor.lhs.false39.cleanup_crit_edge ], [ -33, %lor.lhs.false35.cleanup_crit_edge ], [ -33, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %alrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 11) #8
  %6 = or i8 %call.i, -128
  tail call void %3(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %6) #8
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call.i.i = tail call zeroext i8 %10(ptr noundef %1, i32 noundef 10) #8
  %11 = or i8 %call.i.i, 16
  tail call void %8(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %11) #8
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %call315.i = tail call zeroext i8 %13(ptr noundef %1, i32 noundef 74) #8
  %14 = and i8 %call315.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not16.i = icmp eq i8 %14, 0
  br i1 %tobool.not16.i, label %entry.ds1685_rtc_begin_data_access.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !196
  %15 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read.i, align 4
  %call3.i = tail call zeroext i8 %16(ptr noundef %1, i32 noundef 74) #8
  %17 = and i8 %call3.i, 64
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

ds1685_rtc_begin_data_access.exit:                ; preds = %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, %entry.ds1685_rtc_begin_data_access.exit_crit_edge
  %18 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read.i, align 4
  %call1 = tail call zeroext i8 %19(ptr noundef %1, i32 noundef 1) #8
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call3 = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 3) #8
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %call5 = tail call zeroext i8 %23(ptr noundef %1, i32 noundef 5) #8
  %24 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read.i, align 4
  %call7 = tail call zeroext i8 %25(ptr noundef %1, i32 noundef 73) #8
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 4
  %call9 = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 11) #8
  %28 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i, align 4
  %call11 = tail call zeroext i8 %29(ptr noundef %1, i32 noundef 12) #8
  %30 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i, align 4
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 4
  %call.i.i102 = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 10) #8
  %34 = and i8 %call.i.i102, -17
  tail call void %31(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %34) #8
  %35 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i, align 4
  %37 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i, align 4
  %call.i103 = tail call zeroext i8 %38(ptr noundef %1, i32 noundef 11) #8
  %39 = and i8 %call.i103, 127
  tail call void %36(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %39) #8
  %bcd_mode.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i104 = icmp eq i8 %41, 0
  br i1 %tobool.not.i104, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ds1685_rtc_begin_data_access.exit
  %42 = add i8 %call7, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %42)
  %43 = icmp ult i8 %42, -49
  %44 = and i8 %call7, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %44)
  %cmp7.i = icmp ugt i8 %44, 9
  %or.cond24.i = or i1 %43, %cmp7.i
  br i1 %or.cond24.i, label %if.then.i.cleanup_crit_edge, label %if.end.thread

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %ds1685_rtc_begin_data_access.exit
  %45 = add i8 %call7, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -31, i8 %45)
  %46 = icmp ult i8 %45, -31
  br i1 %46, label %if.else.i.cleanup_crit_edge, label %if.end

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call1)
  %cmp = icmp ult i8 %call1, -64
  br i1 %cmp, label %if.end.i, label %if.end.if.end19_crit_edge, !prof !186

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.thread:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call1)
  %cmp163 = icmp ult i8 %call1, -64
  br i1 %cmp163, label %cond.end.i, label %if.end.thread.if.end19_crit_edge, !prof !186

if.end.thread.if.end19_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

cond.end.i:                                       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call.i108 = tail call i32 @_bcd2bin(i8 noundef zeroext %call1) #12
  %47 = trunc i32 %call.i108 to i8
  %conv4.i = and i8 %47, 127
  br label %ds1685_rtc_bcd2bin.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i = and i8 %call1, 63
  br label %ds1685_rtc_bcd2bin.exit

ds1685_rtc_bcd2bin.exit:                          ; preds = %if.end.i, %cond.end.i
  %retval.0.i109 = phi i8 [ %conv4.i, %cond.end.i ], [ %and713.i, %if.end.i ]
  %conv18 = zext i8 %retval.0.i109 to i32
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %48 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv18, ptr %time, align 4
  br label %if.end19

if.end19:                                         ; preds = %ds1685_rtc_bcd2bin.exit, %if.end.thread.if.end19_crit_edge, %if.end.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call3)
  %cmp21 = icmp ult i8 %call3, -64
  br i1 %cmp21, label %if.then29, label %if.end19.if.end33_crit_edge, !prof !186

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then29:                                        ; preds = %if.end19
  %49 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i111 = icmp eq i8 %50, 0
  br i1 %tobool.not.i111, label %if.end.i124, label %cond.end.i122

cond.end.i122:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call.i118 = tail call i32 @_bcd2bin(i8 noundef zeroext %call3) #12
  %51 = trunc i32 %call.i118 to i8
  %conv4.i121 = and i8 %51, 127
  br label %ds1685_rtc_bcd2bin.exit126

if.end.i124:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i123 = and i8 %call3, 63
  br label %ds1685_rtc_bcd2bin.exit126

ds1685_rtc_bcd2bin.exit126:                       ; preds = %if.end.i124, %cond.end.i122
  %retval.0.i125 = phi i8 [ %conv4.i121, %cond.end.i122 ], [ %and713.i123, %if.end.i124 ]
  %conv31 = zext i8 %retval.0.i125 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv31, ptr %tm_min, align 4
  br label %if.end33

if.end33:                                         ; preds = %ds1685_rtc_bcd2bin.exit126, %if.end19.if.end33_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call5)
  %cmp35 = icmp ult i8 %call5, -64
  br i1 %cmp35, label %if.then43, label %if.end33.if.end47_crit_edge, !prof !186

if.end33.if.end47_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %if.end33
  %53 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i128 = icmp eq i8 %54, 0
  br i1 %tobool.not.i128, label %if.end.i141, label %cond.end.i139

cond.end.i139:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %call.i135 = tail call i32 @_bcd2bin(i8 noundef zeroext %call5) #12
  %55 = trunc i32 %call.i135 to i8
  %conv4.i138 = and i8 %55, 63
  br label %ds1685_rtc_bcd2bin.exit143

if.end.i141:                                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i140 = and i8 %call5, 31
  br label %ds1685_rtc_bcd2bin.exit143

ds1685_rtc_bcd2bin.exit143:                       ; preds = %if.end.i141, %cond.end.i139
  %retval.0.i142 = phi i8 [ %conv4.i138, %cond.end.i139 ], [ %and713.i140, %if.end.i141 ]
  %conv45 = zext i8 %retval.0.i142 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv45, ptr %tm_hour, align 4
  br label %if.end47

if.end47:                                         ; preds = %ds1685_rtc_bcd2bin.exit143, %if.end33.if.end47_crit_edge
  %57 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i145 = icmp eq i8 %58, 0
  br i1 %tobool.not.i145, label %if.end.i158, label %cond.end.i156

cond.end.i156:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %call.i152 = tail call i32 @_bcd2bin(i8 noundef zeroext %call7) #12
  %59 = trunc i32 %call.i152 to i8
  %conv4.i155 = and i8 %59, 63
  br label %ds1685_rtc_bcd2bin.exit160

if.end.i158:                                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %and713.i157 = and i8 %call7, 31
  br label %ds1685_rtc_bcd2bin.exit160

ds1685_rtc_bcd2bin.exit160:                       ; preds = %if.end.i158, %cond.end.i156
  %retval.0.i159 = phi i8 [ %conv4.i155, %cond.end.i156 ], [ %and713.i157, %if.end.i158 ]
  %conv49 = zext i8 %retval.0.i159 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv49, ptr %tm_mday, align 4
  %61 = lshr i8 %call9, 5
  %.lobit = and i8 %61, 1
  %62 = ptrtoint ptr %alrm to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %.lobit, ptr %alrm, align 4
  %63 = lshr i8 %call11, 5
  %.lobit101 = and i8 %63, 1
  %pending = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 1
  %64 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %.lobit101, ptr %pending, align 1
  br label %cleanup

cleanup:                                          ; preds = %ds1685_rtc_bcd2bin.exit160, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ds1685_rtc_bcd2bin.exit160 ], [ -33, %if.then.i.cleanup_crit_edge ], [ -33, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alrm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %bcd_mode.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i130

if.then.i130:                                     ; preds = %entry
  %conv2.i = and i32 %3, 255
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i) #12
  %conv5.i = and i8 %call.i, 127
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tm_min, align 4
  %conv2.i136 = and i32 %7, 255
  %call.i137 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i136) #12
  %conv5.i140 = and i8 %call.i137, 127
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour, align 4
  %conv2.i154 = and i32 %9, 255
  %call.i155 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i154) #12
  %conv5.i158 = and i8 %call.i155, 63
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tm_mday, align 4
  %conv2.i172 = and i32 %11, 255
  %call.i173 = tail call zeroext i8 @_bin2bcd(i32 noundef %conv2.i172) #12
  %conv5.i176 = and i8 %call.i173, 63
  %12 = add nsw i8 %conv5.i176, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %12)
  %13 = icmp ult i8 %12, -49
  %14 = and i8 %call.i173, 14
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %14)
  %cmp7.i = icmp ugt i8 %14, 9
  %or.cond24.i = or i1 %cmp7.i, %13
  br i1 %or.cond24.i, label %if.then.i130.cleanup_crit_edge, label %if.then.i130.if.end39_crit_edge

if.then.i130.if.end39_crit_edge:                  ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then.i130.cleanup_crit_edge:                   ; preds = %if.then.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %conv = trunc i32 %3 to i8
  %and814.i = and i8 %conv, 63
  %tm_min191 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min191 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_min191, align 4
  %conv3192 = trunc i32 %16 to i8
  %and814.i142 = and i8 %conv3192, 63
  %tm_hour198 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %tm_hour198 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_hour198, align 4
  %conv6199 = trunc i32 %18 to i8
  %and814.i160 = and i8 %conv6199, 31
  %tm_mday208 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %tm_mday208 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tm_mday208, align 4
  %conv9209 = trunc i32 %20 to i8
  %and814.i178 = and i8 %conv9209, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and814.i178)
  %21 = icmp eq i8 %and814.i178, 0
  br i1 %21, label %if.else.i.cleanup_crit_edge, label %if.else.i.if.end39_crit_edge

if.else.i.if.end39_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.else.i.if.end39_crit_edge, %if.then.i130.if.end39_crit_edge
  %retval.0.i180230 = phi i8 [ %and814.i178, %if.else.i.if.end39_crit_edge ], [ %conv5.i176, %if.then.i130.if.end39_crit_edge ]
  %retval.0.i144202210227 = phi i8 [ %and814.i142, %if.else.i.if.end39_crit_edge ], [ %conv5.i140, %if.then.i130.if.end39_crit_edge ]
  %retval.0.i193200212224 = phi i8 [ %and814.i, %if.else.i.if.end39_crit_edge ], [ %conv5.i, %if.then.i130.if.end39_crit_edge ]
  %retval.0.i162214221 = phi i8 [ %and814.i160, %if.else.i.if.end39_crit_edge ], [ %conv5.i158, %if.then.i130.if.end39_crit_edge ]
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, i32 4
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %22 = call ptr @memset(ptr %tm_mon, i32 255, i32 20)
  %23 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call.i186 = tail call zeroext i8 %26(ptr noundef %1, i32 noundef 11) #8
  %27 = or i8 %call.i186, -128
  tail call void %24(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %27) #8
  %28 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write.i, align 4
  %30 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %read.i, align 4
  %call.i.i = tail call zeroext i8 %31(ptr noundef %1, i32 noundef 10) #8
  %32 = or i8 %call.i.i, 16
  tail call void %29(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %32) #8
  %33 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read.i, align 4
  %call315.i = tail call zeroext i8 %34(ptr noundef %1, i32 noundef 74) #8
  %35 = and i8 %call315.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not16.i = icmp eq i8 %35, 0
  br i1 %tobool.not16.i, label %if.end39.ds1685_rtc_begin_data_access.exit_crit_edge, label %if.end39.do.end.i_crit_edge

if.end39.do.end.i_crit_edge:                      ; preds = %if.end39
  br label %do.end.i

if.end39.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %if.end39.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !195
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !196
  %36 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i, align 4
  %call3.i = tail call zeroext i8 %37(ptr noundef %1, i32 noundef 74) #8
  %38 = and i8 %call3.i, 64
  %tobool.not.i187 = icmp eq i8 %38, 0
  br i1 %tobool.not.i187, label %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ds1685_rtc_begin_data_access.exit

ds1685_rtc_begin_data_access.exit:                ; preds = %do.end.i.ds1685_rtc_begin_data_access.exit_crit_edge, %if.end39.ds1685_rtc_begin_data_access.exit_crit_edge
  %39 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read.i, align 4
  %call45 = tail call zeroext i8 %40(ptr noundef %1, i32 noundef 11) #8
  %41 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %write.i, align 4
  %43 = and i8 %call45, -33
  tail call void %42(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %43) #8
  %44 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i, align 4
  %call49 = tail call zeroext i8 %45(ptr noundef %1, i32 noundef 12) #8
  %46 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read.i, align 4
  %call51 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 11) #8
  %48 = ptrtoint ptr %bcd_mode.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bcd_mode.i, align 4, !range !183
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool52.not = icmp eq i8 %49, 0
  %50 = and i8 %call51, -5
  %masksel = select i1 %tobool52.not, i8 4, i8 0
  %ctrlb.0 = or i8 %masksel, %50
  %51 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i, align 4
  tail call void %52(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %ctrlb.0) #8
  %53 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %write.i, align 4
  tail call void %54(ptr noundef %1, i32 noundef 1, i8 noundef zeroext %retval.0.i193200212224) #8
  %55 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write.i, align 4
  tail call void %56(ptr noundef %1, i32 noundef 3, i8 noundef zeroext %retval.0.i144202210227) #8
  %57 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i, align 4
  tail call void %58(ptr noundef %1, i32 noundef 5, i8 noundef zeroext %retval.0.i162214221) #8
  %59 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write.i, align 4
  tail call void %60(ptr noundef %1, i32 noundef 73, i8 noundef zeroext %retval.0.i180230) #8
  %61 = ptrtoint ptr %alrm to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %alrm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool65.not = icmp eq i8 %62, 0
  br i1 %tobool65.not, label %ds1685_rtc_begin_data_access.exit.if.end73_crit_edge, label %if.then66

ds1685_rtc_begin_data_access.exit.if.end73_crit_edge: ; preds = %ds1685_rtc_begin_data_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then66:                                        ; preds = %ds1685_rtc_begin_data_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read.i, align 4
  %call68 = tail call zeroext i8 %64(ptr noundef %1, i32 noundef 11) #8
  %65 = or i8 %call68, 32
  %66 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write.i, align 4
  tail call void %67(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %65) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then66, %ds1685_rtc_begin_data_access.exit.if.end73_crit_edge
  %68 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i, align 4
  %70 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %read.i, align 4
  %call.i.i188 = tail call zeroext i8 %71(ptr noundef %1, i32 noundef 10) #8
  %72 = and i8 %call.i.i188, -17
  tail call void %69(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %72) #8
  %73 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i, align 4
  %75 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %read.i, align 4
  %call.i189 = tail call zeroext i8 %76(ptr noundef %1, i32 noundef 11) #8
  %77 = and i8 %call.i189, 127
  tail call void %74(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %77) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.else.i.cleanup_crit_edge, %if.then.i130.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ -33, %if.then.i130.cleanup_crit_edge ], [ -33, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_proc(ptr nocapture noundef readonly %dev, ptr noundef %seq) #5 align 64 {
entry:
  %ssn = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssn) #8
  %2 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 1
  %3 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 2
  %4 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 3
  %5 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 5
  %7 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 6
  %8 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 7
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %12(ptr noundef %1, i32 noundef 10) #8
  %13 = or i8 %call.i, 16
  tail call void %10(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %13) #8
  %14 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read.i, align 4
  %call.i81 = tail call zeroext i8 %15(ptr noundef %1, i32 noundef 64) #8
  %16 = ptrtoint ptr %ssn to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call.i81, ptr %ssn, align 1
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %call2.i = tail call zeroext i8 %18(ptr noundef %1, i32 noundef 65) #8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %call2.i, ptr %2, align 1
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %call5.i = tail call zeroext i8 %21(ptr noundef %1, i32 noundef 66) #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %call5.i, ptr %3, align 1
  %23 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i, align 4
  %call8.i = tail call zeroext i8 %24(ptr noundef %1, i32 noundef 67) #8
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %call8.i, ptr %4, align 1
  %26 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read.i, align 4
  %call11.i = tail call zeroext i8 %27(ptr noundef %1, i32 noundef 68) #8
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call11.i, ptr %5, align 1
  %29 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read.i, align 4
  %call14.i = tail call zeroext i8 %30(ptr noundef %1, i32 noundef 69) #8
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call14.i, ptr %6, align 1
  %32 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %read.i, align 4
  %call17.i = tail call zeroext i8 %33(ptr noundef %1, i32 noundef 70) #8
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %call17.i, ptr %7, align 1
  %35 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read.i, align 4
  %call20.i = tail call zeroext i8 %36(ptr noundef %1, i32 noundef 71) #8
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %call20.i, ptr %8, align 1
  %38 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read.i, align 4
  %call1 = tail call zeroext i8 %39(ptr noundef %1, i32 noundef 10) #8
  %40 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read.i, align 4
  %call3 = tail call zeroext i8 %41(ptr noundef %1, i32 noundef 11) #8
  %42 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i, align 4
  %call5 = tail call zeroext i8 %43(ptr noundef %1, i32 noundef 13) #8
  %44 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %read.i, align 4
  %call7 = tail call zeroext i8 %45(ptr noundef %1, i32 noundef 74) #8
  %46 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read.i, align 4
  %call9 = tail call zeroext i8 %47(ptr noundef %1, i32 noundef 75) #8
  %48 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %write.i, align 4
  %50 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read.i, align 4
  %call.i84 = tail call zeroext i8 %51(ptr noundef %1, i32 noundef 10) #8
  %52 = and i8 %call.i84, -17
  tail call void %49(ptr noundef %1, i32 noundef 10, i8 noundef zeroext %52) #8
  %switch.tableidx = add i8 %call.i81, -113
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %53 = icmp ult i8 %switch.tableidx, 8
  br i1 %53, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %54 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.ds1685_rtc_proc, i32 0, i32 %54
  %55 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %model.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.23, %entry.sw.epilog_crit_edge ]
  %conv14 = zext i8 %call1 to i32
  %56 = and i8 %call9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool45.not = icmp eq i8 %56, 0
  br i1 %tobool45.not, label %cond.true53, label %sw.epilog.cond.end58_crit_edge

sw.epilog.cond.end58_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end58

cond.true53:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and47 = and i32 %conv14, 15
  %arrayidx48 = getelementptr [16 x ptr], ptr @ds1685_rtc_pirq_rate, i32 0, i32 %and47
  %57 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx48, align 4
  %arrayidx56 = getelementptr [16 x ptr], ptr @ds1685_rtc_sqw_freq, i32 0, i32 %and47
  %59 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx56, align 4
  br label %cond.end58

cond.end58:                                       ; preds = %cond.true53, %sw.epilog.cond.end58_crit_edge
  %cond4986 = phi ptr [ %58, %cond.true53 ], [ @.str.35, %sw.epilog.cond.end58_crit_edge ]
  %cond59 = phi ptr [ %60, %cond.true53 ], [ @.str.36, %sw.epilog.cond.end58_crit_edge ]
  %conv15 = zext i8 %call3 to i32
  %and40 = and i32 %conv15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.34, ptr @.str.33
  %and36 = and i32 %conv15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %cond38 = select i1 %tobool37.not, ptr @.str.34, ptr @.str.33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call7)
  %tobool33.not = icmp sgt i8 %call7, -1
  %cond34 = select i1 %tobool33.not, ptr @.str.32, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call5)
  %tobool29.not = icmp sgt i8 %call5, -1
  %cond30 = select i1 %tobool29.not, ptr @.str.32, ptr @.str.31
  %and24 = and i32 %conv15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %cond26 = select i1 %tobool25.not, ptr @.str.30, ptr @.str.29
  %and20 = and i32 %conv15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.26, ptr @.str.25
  %and16 = and i32 %conv15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.28, ptr @.str.27
  %and = and i32 %conv14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, ptr noundef nonnull %model.0, ptr noundef nonnull %cond, ptr noundef nonnull %cond18, ptr noundef nonnull %cond22, ptr noundef nonnull %cond26, ptr noundef nonnull %cond30, ptr noundef nonnull %cond34, ptr noundef nonnull %cond38, ptr noundef nonnull %cond42, ptr noundef %cond4986, ptr noundef %cond59, ptr noundef nonnull %ssn) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssn) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool.not = icmp eq i32 %enabled, 0
  %write3 = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %write3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write3, align 4
  %read4 = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %read4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read4, align 4
  %call5 = tail call zeroext i8 %5(ptr noundef %1, i32 noundef 11) #8
  %6 = and i8 %call5, -33
  %masksel = select i1 %tobool.not, i8 0, i8 32
  %.sink = or i8 %6, %masksel
  tail call void %3(ptr noundef %1, i32 noundef 11, i8 noundef zeroext %.sink) #8
  %read8 = getelementptr inbounds %struct.ds1685_priv, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %read8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read8, align 4
  %call9 = tail call zeroext i8 %8(ptr noundef %1, i32 noundef 12) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_year_days(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ds1685_rtc_extended_irq(ptr noundef %rtc, ptr noundef %pdev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 8
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 7
  %2 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %3(ptr noundef %rtc, i32 noundef 10) #8
  %4 = or i8 %call.i, 16
  tail call void %1(ptr noundef %rtc, i32 noundef 10, i8 noundef zeroext %4) #8
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %call = tail call zeroext i8 %6(ptr noundef %rtc, i32 noundef 74) #8
  %7 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read.i, align 4
  %call2 = tail call zeroext i8 %8(ptr noundef %rtc, i32 noundef 75) #8
  %conv = zext i8 %call2 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %9 = and i8 %call, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %entry.if.end23_crit_edge, label %if.then

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 4
  %12 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read.i, align 4
  %call7 = tail call zeroext i8 %13(ptr noundef %rtc, i32 noundef 75) #8
  %14 = and i8 %call7, -2
  tail call void %11(ptr noundef %rtc, i32 noundef 75, i8 noundef zeroext %14) #8
  %15 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write.i, align 4
  %and13 = and i8 %call, -2
  tail call void %16(ptr noundef %rtc, i32 noundef 74, i8 noundef zeroext %and13) #8
  tail call void @msleep(i32 noundef 500) #8
  %17 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i, align 4
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %call17 = tail call zeroext i8 %20(ptr noundef %rtc, i32 noundef 75) #8
  %21 = or i8 %call17, 1
  tail call void %18(ptr noundef %rtc, i32 noundef 75, i8 noundef zeroext %21) #8
  %prepare_poweroff = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 9
  %22 = ptrtoint ptr %prepare_poweroff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prepare_poweroff, align 4
  %cmp.not = icmp eq ptr %23, null
  br i1 %cmp.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %23() #8
  br label %if.end23

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void @ds1685_rtc_poweroff(ptr noundef %pdev) #13
  unreachable

if.end23:                                         ; preds = %if.then21, %entry.if.end23_crit_edge
  %and25 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %24 = and i8 %call, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool30.not = icmp eq i8 %24, 0
  %or.cond102 = select i1 %tobool26.not, i1 true, i1 %tobool30.not
  br i1 %or.cond102, label %if.end23.if.end42_crit_edge, label %if.then31

if.end23.if.end42_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then31:                                        ; preds = %if.end23
  %25 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write.i, align 4
  %and34 = and i8 %call, -3
  tail call void %26(ptr noundef %rtc, i32 noundef 74, i8 noundef zeroext %and34) #8
  %wake_alarm = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 10
  %27 = ptrtoint ptr %wake_alarm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wake_alarm, align 4
  %cmp36.not = icmp eq ptr %28, null
  br i1 %cmp36.not, label %do.end, label %if.then38

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %28() #8
  br label %if.end42

do.end:                                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.63) #11
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.then38, %if.end23.if.end42_crit_edge
  %and44 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %29 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool49.not = icmp eq i8 %29, 0
  %or.cond103 = select i1 %tobool45.not, i1 true, i1 %tobool49.not
  br i1 %or.cond103, label %if.end42.if.end65_crit_edge, label %if.then50

if.end42.if.end65_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then50:                                        ; preds = %if.end42
  %30 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write.i, align 4
  %and53 = and i8 %call, -5
  tail call void %31(ptr noundef %rtc, i32 noundef 74, i8 noundef zeroext %and53) #8
  tail call void @msleep(i32 noundef 150) #8
  %post_ram_clear = getelementptr inbounds %struct.ds1685_priv, ptr %rtc, i32 0, i32 11
  %32 = ptrtoint ptr %post_ram_clear to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %post_ram_clear, align 4
  %cmp55.not = icmp eq ptr %33, null
  br i1 %cmp55.not, label %do.end62, label %if.then57

if.then57:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %33() #8
  br label %if.end65

do.end62:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev63, ptr noundef nonnull @.str.66) #11
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %if.then57, %if.end42.if.end65_crit_edge
  %34 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i, align 4
  %36 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %read.i, align 4
  %call.i106 = tail call zeroext i8 %37(ptr noundef %rtc, i32 noundef 10) #8
  %38 = and i8 %call.i106, -17
  tail call void %35(ptr noundef %rtc, i32 noundef 10, i8 noundef zeroext %38) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_sysfs_battery_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %read = getelementptr inbounds %struct.ds1685_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call1 = tail call zeroext i8 %5(ptr noundef %3, i32 noundef 13) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1)
  %tobool.not = icmp sgt i8 %call1, -1
  %cond = select i1 %tobool.not, ptr @.str.71, ptr @.str.31
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_sysfs_auxbatt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %7(ptr noundef %3, i32 noundef 10) #8
  %8 = or i8 %call.i, 16
  tail call void %5(ptr noundef %3, i32 noundef 10, i8 noundef zeroext %8) #8
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %call1 = tail call zeroext i8 %10(ptr noundef %3, i32 noundef 74) #8
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %call.i8 = tail call zeroext i8 %14(ptr noundef %3, i32 noundef 10) #8
  %15 = and i8 %call.i8, -17
  tail call void %12(ptr noundef %3, i32 noundef 10, i8 noundef zeroext %15) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call1)
  %tobool.not = icmp sgt i8 %call1, -1
  %cond = select i1 %tobool.not, ptr @.str.71, ptr @.str.31
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1685_rtc_sysfs_serial_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  %ssn = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ssn) #8
  %4 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 1
  %5 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 2
  %6 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 4
  %8 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 5
  %9 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 6
  %10 = getelementptr inbounds [8 x i8], ptr %ssn, i32 0, i32 7
  %write.i = getelementptr inbounds %struct.ds1685_priv, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %read.i = getelementptr inbounds %struct.ds1685_priv, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %call.i = tail call zeroext i8 %14(ptr noundef %3, i32 noundef 10) #8
  %15 = or i8 %call.i, 16
  tail call void %12(ptr noundef %3, i32 noundef 10, i8 noundef zeroext %15) #8
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %call.i6 = tail call zeroext i8 %17(ptr noundef %3, i32 noundef 64) #8
  %18 = ptrtoint ptr %ssn to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %call.i6, ptr %ssn, align 1
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %call2.i = tail call zeroext i8 %20(ptr noundef %3, i32 noundef 65) #8
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %call2.i, ptr %4, align 1
  %22 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read.i, align 4
  %call5.i = tail call zeroext i8 %23(ptr noundef %3, i32 noundef 66) #8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call5.i, ptr %5, align 1
  %25 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read.i, align 4
  %call8.i = tail call zeroext i8 %26(ptr noundef %3, i32 noundef 67) #8
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call8.i, ptr %6, align 1
  %28 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %read.i, align 4
  %call11.i = tail call zeroext i8 %29(ptr noundef %3, i32 noundef 68) #8
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call11.i, ptr %7, align 1
  %31 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read.i, align 4
  %call14.i = tail call zeroext i8 %32(ptr noundef %3, i32 noundef 69) #8
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call14.i, ptr %8, align 1
  %34 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read.i, align 4
  %call17.i = tail call zeroext i8 %35(ptr noundef %3, i32 noundef 70) #8
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call17.i, ptr %9, align 1
  %37 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read.i, align 4
  %call20.i = tail call zeroext i8 %38(ptr noundef %3, i32 noundef 71) #8
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call20.i, ptr %10, align 1
  %40 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i, align 4
  %42 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %read.i, align 4
  %call.i9 = tail call zeroext i8 %43(ptr noundef %3, i32 noundef 10) #8
  %44 = and i8 %call.i9, -17
  tail call void %41(ptr noundef %3, i32 noundef 10, i8 noundef zeroext %44) #8
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.74, ptr noundef nonnull %ssn)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ssn) #8
  ret i32 %call2
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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !156, !158, !160, !161, !163, !165, !167, !168, !170, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_rtc_ds1685__227_1365_ds1685_rtc_driver_init6, !1, !"__initcall__kmod_rtc_ds1685__227_1365_ds1685_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1365, i32 1}
!2 = !{ptr @__exitcall_ds1685_rtc_driver_exit, !1, !"__exitcall_ds1685_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1384, i32 3}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ds1685_rtc_poweroff._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @ds1685_rtc_poweroff._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1431, i32 3}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ds1685_rtc_poweroff._entry.3, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @ds1685_rtc_poweroff._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_ds1685_rtc_poweroff, !16, !"__ksymtab_ds1685_rtc_poweroff", i1 false, i1 false}
!16 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1441, i32 1}
!17 = !{ptr @__UNIQUE_ID_author228, !18, !"__UNIQUE_ID_author228", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1445, i32 1}
!19 = !{ptr @__UNIQUE_ID_author229, !20, !"__UNIQUE_ID_author229", i1 false, i1 false}
!20 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1446, i32 1}
!21 = !{ptr @__UNIQUE_ID_description230, !22, !"__UNIQUE_ID_description230", i1 false, i1 false}
!22 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1447, i32 1}
!23 = !{ptr @__UNIQUE_ID_file231, !24, !"__UNIQUE_ID_file231", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1448, i32 1}
!25 = !{ptr @__UNIQUE_ID_license232, !24, !"__UNIQUE_ID_license232", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_alias233, !27, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!27 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1449, i32 1}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1360, i32 11}
!30 = !{ptr @ds1685_rtc_driver, !31, !"ds1685_rtc_driver", i1 false, i1 false}
!31 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1358, i32 31}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1077, i32 11}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1231, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ds1685_rtc_probe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ds1685_rtc_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1236, i32 3}
!41 = !{ptr @ds1685_rtc_probe._entry.12, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ds1685_rtc_probe._entry_ptr.14, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1303, i32 4}
!45 = !{ptr @ds1685_rtc_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ds1685_rtc_probe._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ds1685_rtc_ops, !48, !"ds1685_rtc_ops", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-ds1685.c", i32 830, i32 1}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-ds1685.c", i32 771, i32 11}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-ds1685.c", i32 774, i32 11}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-ds1685.c", i32 777, i32 11}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-ds1685.c", i32 780, i32 11}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-ds1685.c", i32 783, i32 11}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-ds1685.c", i32 786, i32 11}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-ds1685.c", i32 792, i32 5}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-ds1685.c", i32 805, i32 33}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-ds1685.c", i32 805, i32 45}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/rtc/rtc-ds1685.c", i32 806, i32 34}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/rtc/rtc-ds1685.c", i32 806, i32 46}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rtc/rtc-ds1685.c", i32 808, i32 32}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/rtc/rtc-ds1685.c", i32 808, i32 43}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/rtc/rtc-ds1685.c", i32 809, i32 33}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rtc/rtc-ds1685.c", i32 809, i32 40}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/rtc/rtc-ds1685.c", i32 811, i32 33}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/rtc/rtc-ds1685.c", i32 811, i32 41}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rtc/rtc-ds1685.c", i32 814, i32 59}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/rtc/rtc-ds1685.c", i32 816, i32 58}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rtc/rtc-ds1685.c", i32 733, i32 10}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/rtc/rtc-ds1685.c", i32 733, i32 23}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/rtc/rtc-ds1685.c", i32 733, i32 35}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/rtc/rtc-ds1685.c", i32 733, i32 49}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/rtc/rtc-ds1685.c", i32 734, i32 2}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/rtc/rtc-ds1685.c", i32 734, i32 16}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/rtc/rtc-ds1685.c", i32 734, i32 31}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 14}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 25}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 35}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 44}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/rtc/rtc-ds1685.c", i32 735, i32 53}
!113 = !{ptr @ds1685_rtc_pirq_rate, !114, !"ds1685_rtc_pirq_rate", i1 false, i1 false}
!114 = !{!"../drivers/rtc/rtc-ds1685.c", i32 732, i32 20}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 10}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 19}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 28}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 38}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 48}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rtc/rtc-ds1685.c", i32 742, i32 58}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 2}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 29}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 37}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 45}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 53}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 60}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/rtc/rtc-ds1685.c", i32 743, i32 67}
!141 = !{ptr @ds1685_rtc_sqw_freq, !142, !"ds1685_rtc_sqw_freq", i1 false, i1 false}
!142 = !{!"../drivers/rtc/rtc-ds1685.c", i32 741, i32 20}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/rtc/rtc-ds1685.c", i32 622, i32 4}
!145 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @ds1685_rtc_extended_irq._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @ds1685_rtc_extended_irq._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.66, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/rtc/rtc-ds1685.c", i32 645, i32 4}
!150 = !{ptr @ds1685_rtc_extended_irq._entry.65, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @ds1685_rtc_extended_irq._entry_ptr.67, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.68, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1056, i32 10}
!154 = !{ptr @ds1685_rtc_sysfs_misc_grp, !155, !"ds1685_rtc_sysfs_misc_grp", i1 false, i1 false}
!155 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1055, i32 1}
!156 = !{ptr @ds1685_rtc_sysfs_misc_attrs, !157, !"ds1685_rtc_sysfs_misc_attrs", i1 false, i1 false}
!157 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1044, i32 1}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/rtc/rtc-ds1685.c", i32 995, i32 8}
!160 = !{ptr @dev_attr_battery, !159, !"dev_attr_battery", i1 false, i1 false}
!161 = !{ptr @.str.70, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/rtc/rtc-ds1685.c", i32 992, i32 22}
!163 = !{ptr @.str.71, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/rtc/rtc-ds1685.c", i32 993, i32 38}
!165 = !{ptr @.str.72, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1017, i32 8}
!167 = !{ptr @dev_attr_auxbatt, !166, !"dev_attr_auxbatt", i1 false, i1 false}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1038, i32 8}
!170 = !{ptr @dev_attr_serial, !169, !"dev_attr_serial", i1 false, i1 false}
!171 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/rtc/rtc-ds1685.c", i32 1036, i32 22}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"branch_weights", i32 1, i32 2000}
!183 = !{i8 0, i8 2}
!184 = !{i64 2153885399}
!185 = !{i64 2153885241}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 3016878}
!188 = !{i64 2153866689}
!189 = !{i64 2153866945}
!190 = !{i64 3016483}
!191 = !{i64 2153867246}
!192 = !{i64 2153867507}
!193 = !{i64 2153867713}
!194 = !{i64 2153867966}
!195 = !{i64 2153869927}
!196 = !{i64 2153869769}
