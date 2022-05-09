; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ad7606.c_pt.bc'
source_filename = "../drivers/iio/adc/ad7606.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ad7606_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7606_probe\09\09\09\09"
module asm "\09.long\09__crc_ad7606_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7606_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7606_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ad7606_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ad7606_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_ad7606_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_ad7606_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ad7606_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22ad7606_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_ad7606_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad7606_chip_info = type { ptr, i32, ptr, i32, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ad7606_state = type { ptr, ptr, ptr, ptr, [16 x i32], i32, ptr, i8, ptr, i32, ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, [92 x i8], [20 x i16], [2 x i16], [84 x i8] }
%struct.ad7606_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@ad7606_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ad7606_scale_avail = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 152588, i32 305176], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avcc\00", [27 x i8] zeroinitializer }, align 32
@ad7606_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to enable specified AVcc supply\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad7606_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/adc/ad7606.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad7606_probe._entry_ptr = internal global ptr @ad7606_probe._entry, section ".printk_index", align 4
@ad7606_chip_info_tbl = internal constant { [6 x %struct.ad7606_chip_info], [48 x i8] } { [6 x %struct.ad7606_chip_info] [%struct.ad7606_chip_info { ptr @ad7605_channels, i32 5, ptr null, i32 0, i8 0, i32 0 }, %struct.ad7606_chip_info { ptr @ad7606_channels, i32 9, ptr @ad7606_oversampling_avail, i32 7, i8 0, i32 0 }, %struct.ad7606_chip_info { ptr @ad7606_channels, i32 7, ptr @ad7606_oversampling_avail, i32 7, i8 0, i32 0 }, %struct.ad7606_chip_info { ptr @ad7606_channels, i32 5, ptr @ad7606_oversampling_avail, i32 7, i8 0, i32 0 }, %struct.ad7606_chip_info { ptr @ad7606_channels, i32 9, ptr @ad7606_oversampling_avail, i32 7, i8 0, i32 0 }, %struct.ad7606_chip_info { ptr @ad7616_channels, i32 17, ptr @ad7616_oversampling_avail, i32 8, i8 1, i32 15 }], [48 x i8] zeroinitializer }, align 32
@ad7606_info_os_and_range = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7606_attribute_group_os_and_range, ptr @ad7606_read_raw, ptr null, ptr null, ptr @ad7606_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7606_info_os = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7606_attribute_group_os, ptr @ad7606_read_raw, ptr null, ptr null, ptr @ad7606_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7606_info_range = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7606_attribute_group_range, ptr @ad7606_read_raw, ptr null, ptr null, ptr @ad7606_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7606_info_no_os_or_range = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad7606_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_validate_trigger, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad7606_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 636, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to RESET: no RESET GPIO specified\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ad7606_probe._entry_ptr.10 = internal global ptr @ad7606_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adi,sw-mode\00", [20 x i8] zeroinitializer }, align 32
@ad7616_sw_scale_avail = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 76293, i32 152588, i32 305176], [20 x i8] zeroinitializer }, align 32
@ad7606_info_os_range_and_debug = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ad7606_attribute_group_os_and_range, ptr @ad7606_read_raw, ptr null, ptr null, ptr @ad7606_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ad7606_validate_trigger, ptr null, ptr @ad7606_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@ad7606_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr null, ptr null, ptr @iio_trigger_validate_own_device }, [20 x i8] zeroinitializer }, align 32
@ad7606_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @ad7606_buffer_postenable, ptr @ad7606_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_ad7606_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7606_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7606_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7606_probe to i32), ptr @__kstrtab_ad7606_probe, ptr @__kstrtabns_ad7606_probe }, section "___ksymtab_gpl+ad7606_probe", align 4
@ad7606_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ad7606_suspend, ptr @ad7606_resume, ptr @ad7606_suspend, ptr @ad7606_resume, ptr @ad7606_suspend, ptr @ad7606_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ad7606_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_ad7606_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_ad7606_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ad7606_pm_ops to i32), ptr @__kstrtab_ad7606_pm_ops, ptr @__kstrtabns_ad7606_pm_ops }, section "___ksymtab_gpl+ad7606_pm_ops", align 4
@__UNIQUE_ID_author288 = internal constant [63 x i8] c"ad7606.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [45 x i8] c"ad7606.description=Analog Devices AD7606 ADC\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [35 x i8] c"ad7606.file=drivers/iio/adc/ad7606\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [22 x i8] c"ad7606.license=GPL v2\00", section ".modinfo", align 1
@ad7605_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [104 x i8] zeroinitializer }, align 32
@ad7606_channels = internal constant { [9 x %struct.iio_chan_spec], [200 x i8] } { [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [200 x i8] zeroinitializer }, align 32
@ad7606_oversampling_avail = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64], [36 x i8] zeroinitializer }, align 32
@ad7616_channels = internal constant { [17 x %struct.iio_chan_spec], [360 x i8] } { [17 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 16, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 3, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 4, i32 4, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 5, i32 5, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 6, i32 6, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 7, i32 7, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 8, i32 0, i32 8, i32 8, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 9, i32 0, i32 9, i32 9, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 10, i32 0, i32 10, i32 10, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 11, i32 0, i32 11, i32 11, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 12, i32 0, i32 12, i32 12, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 13, i32 0, i32 13, i32 13, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 14, i32 0, i32 14, i32 14, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 15, i32 0, i32 15, i32 15, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 33554432, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [360 x i8] zeroinitializer }, align 32
@ad7616_oversampling_avail = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128], [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,conversion-start\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"adi,range\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,first-data\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,oversampling-ratio\00", [41 x i8] zeroinitializer }, align 32
@ad7606_attribute_group_os_and_range = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7606_attributes_os_and_range, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7606_attributes_os_and_range = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_voltage_scale_available, ptr @iio_dev_attr_oversampling_ratio_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_voltage_scale_available_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_oversampling_ratio_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ad7606_oversampling_ratio_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%06u \00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u \00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"oversampling_ratio_available\00", [35 x i8] zeroinitializer }, align 32
@ad7606_attribute_group_os = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7606_attributes_os, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7606_attributes_os = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_oversampling_ratio_available, ptr null], [24 x i8] zeroinitializer }, align 32
@ad7606_attribute_group_range = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ad7606_attributes_range, ptr null }, [44 x i8] zeroinitializer }, align 32
@ad7606_attributes_range = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_in_voltage_scale_available, ptr null], [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 25]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 25]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 582, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"ad7606_scale_avail\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 34, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 591, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 597, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"ad7606_chip_info_tbl\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 389, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"ad7606_info_os_and_range\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 526, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"ad7606_info_os\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 541, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"ad7606_info_range\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 548, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [27 x i8] c"ad7606_info_no_os_or_range\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 521, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 636, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 649, i32 9 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"ad7616_sw_scale_avail\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 39, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"ad7606_info_os_range_and_debug\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 533, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 665, i32 41 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"ad7606_trigger_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 555, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"ad7606_buffer_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 516, i32 42 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"ad7606_pm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 727, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"ad7605_channels\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 339, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"ad7606_channels\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 347, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [26 x i8] c"ad7606_oversampling_avail\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 43, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"ad7616_channels\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 369, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"ad7616_oversampling_avail\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 47, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 433, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 438, i32 48 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 442, i32 48 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 447, i32 50 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 452, i32 51 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 461, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [36 x i8] c"ad7606_attribute_group_os_and_range\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 317, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"ad7606_attributes_os_and_range\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 311, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_oversampling_ratio_available\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 225, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 208, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 208, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 308, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"ad7606_attribute_group_os\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 326, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant [21 x i8] c"ad7606_attributes_os\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 321, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [29 x i8] c"ad7606_attribute_group_range\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 335, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"ad7606_attributes_range\00", align 1
@___asan_gen_.167 = private constant [28 x i8] c"../drivers/iio/adc/ad7606.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 330, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 87, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__ksymtab_ad7606_pm_ops, ptr @__ksymtab_ad7606_probe, ptr @ad7606_probe._entry, ptr @ad7606_probe._entry.7, ptr @ad7606_probe._entry_ptr, ptr @ad7606_probe._entry_ptr.10, ptr @ad7606_probe.__key, ptr @.str, ptr @ad7606_scale_avail, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ad7606_chip_info_tbl, ptr @ad7606_info_os_and_range, ptr @ad7606_info_os, ptr @ad7606_info_range, ptr @ad7606_info_no_os_or_range, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ad7616_sw_scale_avail, ptr @ad7606_info_os_range_and_debug, ptr @.str.12, ptr @ad7606_trigger_ops, ptr @ad7606_buffer_ops, ptr @ad7606_pm_ops, ptr @ad7605_channels, ptr @ad7606_channels, ptr @ad7606_oversampling_avail, ptr @ad7616_channels, ptr @ad7616_oversampling_avail, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @ad7606_attribute_group_os_and_range, ptr @ad7606_attributes_os_and_range, ptr @iio_dev_attr_in_voltage_scale_available, ptr @iio_dev_attr_oversampling_ratio_available, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @ad7606_attribute_group_os, ptr @ad7606_attributes_os, ptr @ad7606_attribute_group_range, ptr @ad7606_attributes_range, ptr @init_completion.__key, ptr @.str.23], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_scale_avail to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_chip_info_tbl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_info_os_and_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_info_os to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_info_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_info_no_os_or_range to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7616_sw_scale_avail to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_info_os_range_and_debug to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7605_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_channels to i32), i32 792, i32 992, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_oversampling_avail to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7616_channels to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7616_oversampling_avail to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attribute_group_os_and_range to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attributes_os_and_range to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_oversampling_ratio_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attribute_group_os to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attributes_os to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attribute_group_range to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7606_attributes_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ad7606_probe(ptr noundef %dev, i32 noundef %irq, ptr noundef %base_address, ptr noundef %name, i32 noundef %id, ptr noundef %bops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 512) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %1, align 128
  %lock = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 14
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @ad7606_probe.__key) #5
  %bops3 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bops3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bops, ptr %bops3, align 4
  %base_address4 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %base_address4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base_address, ptr %base_address4, align 4
  %range = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %range, align 16
  %oversampling = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %oversampling to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %oversampling, align 16
  %scale_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %scale_avail to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ad7606_scale_avail, ptr %scale_avail, align 4
  %num_scales = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %num_scales to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %num_scales, align 32
  %call5 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %reg = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %reg, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @regulator_enable(ptr noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end19, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ad7606_regulator_disable, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end23, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 8
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %13) #5
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %arrayidx24 = getelementptr [6 x %struct.ad7606_chip_info], ptr @ad7606_chip_info_tbl, i32 0, i32 %id
  %chip_info = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx24, ptr %chip_info, align 4
  %15 = and i32 %id, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool26.not = icmp eq i32 %15, 0
  br i1 %tobool26.not, label %if.end23.if.end32_crit_edge, label %if.then27

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %oversampling_avail = getelementptr [6 x %struct.ad7606_chip_info], ptr @ad7606_chip_info_tbl, i32 0, i32 %id, i32 2
  %16 = ptrtoint ptr %oversampling_avail to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %oversampling_avail, align 4
  %oversampling_avail29 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %oversampling_avail29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %oversampling_avail29, align 4
  %oversampling_num31 = getelementptr [6 x %struct.ad7606_chip_info], ptr @ad7606_chip_info_tbl, i32 0, i32 %id, i32 3
  %19 = ptrtoint ptr %oversampling_num31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oversampling_num31, align 4
  %num_os_ratios = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 11
  %21 = ptrtoint ptr %num_os_ratios to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_os_ratios, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.end23.if.end32_crit_edge
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 128
  %call.i212 = tail call ptr @devm_gpiod_get(ptr noundef %23, ptr noundef nonnull @.str.13, i32 noundef 3) #5
  %gpio_convst.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %gpio_convst.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i212, ptr %gpio_convst.i, align 16
  %cmp.i.i = icmp ugt ptr %call.i212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end32.ad7606_request_gpios.exit_crit_edge, label %if.end.i

if.end32.ad7606_request_gpios.exit_crit_edge:     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

if.end.i:                                         ; preds = %if.end32
  %call6.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef 3) #5
  %gpio_reset.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call6.i, ptr %gpio_reset.i, align 4
  %cmp.i62.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.i, label %if.end.i.ad7606_request_gpios.exit_crit_edge, label %if.end12.i

if.end.i.ad7606_request_gpios.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

if.end12.i:                                       ; preds = %if.end.i
  %call13.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.15, i32 noundef 3) #5
  %gpio_range.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 17
  %26 = ptrtoint ptr %gpio_range.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call13.i, ptr %gpio_range.i, align 8
  %cmp.i63.i = icmp ugt ptr %call13.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63.i, label %if.end12.i.ad7606_request_gpios.exit_crit_edge, label %if.end19.i

if.end12.i.ad7606_request_gpios.exit_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

if.end19.i:                                       ; preds = %if.end12.i
  %call20.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef 7) #5
  %gpio_standby.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 18
  %27 = ptrtoint ptr %gpio_standby.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call20.i, ptr %gpio_standby.i, align 4
  %cmp.i64.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64.i, label %if.end19.i.ad7606_request_gpios.exit_crit_edge, label %if.end26.i

if.end19.i.ad7606_request_gpios.exit_crit_edge:   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

if.end26.i:                                       ; preds = %if.end19.i
  %call27.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef 1) #5
  %gpio_frstdata.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 19
  %28 = ptrtoint ptr %gpio_frstdata.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call27.i, ptr %gpio_frstdata.i, align 32
  %cmp.i65.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65.i, label %if.end26.i.ad7606_request_gpios.exit_crit_edge, label %if.end33.i

if.end26.i.ad7606_request_gpios.exit_crit_edge:   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

if.end33.i:                                       ; preds = %if.end26.i
  %29 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip_info, align 4
  %oversampling_num.i = getelementptr inbounds %struct.ad7606_chip_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %oversampling_num.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oversampling_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i214 = icmp eq i32 %32, 0
  br i1 %tobool.not.i214, label %if.end33.i.if.end36_crit_edge, label %if.end35.i

if.end33.i.if.end36_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end35.i:                                       ; preds = %if.end33.i
  %call36.i = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %23, ptr noundef nonnull @.str.18, i32 noundef 3) #5
  %gpio_os.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %gpio_os.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call36.i, ptr %gpio_os.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end35.i.ad7606_request_gpios.exit_crit_edge, label %if.end35.i.if.end36_crit_edge

if.end35.i.if.end36_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end35.i.ad7606_request_gpios.exit_crit_edge:   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_request_gpios.exit

ad7606_request_gpios.exit:                        ; preds = %if.end35.i.ad7606_request_gpios.exit_crit_edge, %if.end26.i.ad7606_request_gpios.exit_crit_edge, %if.end19.i.ad7606_request_gpios.exit_crit_edge, %if.end12.i.ad7606_request_gpios.exit_crit_edge, %if.end.i.ad7606_request_gpios.exit_crit_edge, %if.end32.ad7606_request_gpios.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call36.i, %if.end35.i.ad7606_request_gpios.exit_crit_edge ], [ %call.i212, %if.end32.ad7606_request_gpios.exit_crit_edge ], [ %call6.i, %if.end.i.ad7606_request_gpios.exit_crit_edge ], [ %call13.i, %if.end12.i.ad7606_request_gpios.exit_crit_edge ], [ %call20.i, %if.end19.i.ad7606_request_gpios.exit_crit_edge ], [ %call27.i, %if.end26.i.ad7606_request_gpios.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool34.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool34.not, label %ad7606_request_gpios.exit.if.end36_crit_edge, label %ad7606_request_gpios.exit.cleanup_crit_edge

ad7606_request_gpios.exit.cleanup_crit_edge:      ; preds = %ad7606_request_gpios.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

ad7606_request_gpios.exit.if.end36_crit_edge:     ; preds = %ad7606_request_gpios.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %ad7606_request_gpios.exit.if.end36_crit_edge, %if.end35.i.if.end36_crit_edge, %if.end33.i.if.end36_crit_edge
  %gpio_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 20
  %34 = ptrtoint ptr %gpio_os to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpio_os, align 4
  %tobool37.not = icmp eq ptr %35, null
  %gpio_range44 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 17
  %36 = ptrtoint ptr %gpio_range44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gpio_range44, align 8
  %tobool45.not = icmp eq ptr %37, null
  %info49 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %ad7606_info_os.ad7606_info_os_and_range = select i1 %tobool45.not, ptr @ad7606_info_os, ptr @ad7606_info_os_and_range
  %ad7606_info_no_os_or_range.ad7606_info_range = select i1 %tobool45.not, ptr @ad7606_info_no_os_or_range, ptr @ad7606_info_range
  %ad7606_info_range.sink = select i1 %tobool37.not, ptr %ad7606_info_no_os_or_range.ad7606_info_range, ptr %ad7606_info_os.ad7606_info_os_and_range
  %38 = ptrtoint ptr %info49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ad7606_info_range.sink, ptr %info49, align 8
  %39 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %call, align 8
  %name52 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %40 = ptrtoint ptr %name52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %name, ptr %name52, align 8
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %channels54 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %45 = ptrtoint ptr %channels54 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %channels54, align 8
  %46 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad7606_chip_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_channels, align 4
  %num_channels56 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %49 = ptrtoint ptr %num_channels56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %num_channels56, align 4
  %completion = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 22
  %50 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 22, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @init_completion.__key) #5
  %gpio_reset.i215 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 16
  %51 = ptrtoint ptr %gpio_reset.i215 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gpio_reset.i215, align 4
  %tobool.not.i216 = icmp eq ptr %52, null
  br i1 %tobool.not.i216, label %do.end62, label %ad7606_reset.exit.thread

ad7606_reset.exit.thread:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %52, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748) #5
  %54 = ptrtoint ptr %gpio_reset.i215 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpio_reset.i215, align 4
  tail call void @gpiod_set_value(ptr noundef %55, i32 noundef 0) #5
  br label %if.end64

do.end62:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.8) #8
  br label %if.end64

if.end64:                                         ; preds = %do.end62, %ad7606_reset.exit.thread
  %58 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chip_info, align 4
  %init_delay_ms = getelementptr inbounds %struct.ad7606_chip_info, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %init_delay_ms to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %init_delay_ms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool66.not = icmp eq i32 %61, 0
  br i1 %tobool66.not, label %if.end64.if.end74_crit_edge, label %if.then67

if.end64.if.end74_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then67:                                        ; preds = %if.end64
  %call70 = tail call i32 @msleep_interruptible(i32 noundef %61) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then67.if.end74_crit_edge, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %if.then67.if.end74_crit_edge, %if.end64.if.end74_crit_edge
  %write_scale = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 12
  %62 = ptrtoint ptr %write_scale to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ad7606_write_scale_hw, ptr %write_scale, align 4
  %write_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 13
  %63 = ptrtoint ptr %write_os to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @ad7606_write_os_hw, ptr %write_os, align 16
  %64 = ptrtoint ptr %bops3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bops3, align 4
  %sw_mode_config = getelementptr inbounds %struct.ad7606_bus_ops, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %sw_mode_config to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sw_mode_config, align 4
  %tobool76.not = icmp eq ptr %67, null
  br i1 %tobool76.not, label %if.end74.if.end80_crit_edge, label %if.then77

if.end74.if.end80_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 128
  %call79 = tail call zeroext i1 @device_property_present(ptr noundef %69, ptr noundef nonnull @.str.11) #5
  %sw_mode_en = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 7
  %frombool = zext i1 %call79 to i8
  %70 = ptrtoint ptr %sw_mode_en to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %frombool, ptr %sw_mode_en, align 8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end74.if.end80_crit_edge
  %sw_mode_en81 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 7
  %71 = ptrtoint ptr %sw_mode_en81 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %sw_mode_en81, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool82.not = icmp eq i8 %72, 0
  br i1 %tobool82.not, label %if.end80.if.end94_crit_edge, label %if.then83

if.end80.if.end94_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then83:                                        ; preds = %if.end80
  %73 = ptrtoint ptr %scale_avail to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @ad7616_sw_scale_avail, ptr %scale_avail, align 4
  %74 = ptrtoint ptr %num_scales to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %num_scales, align 32
  %call.i219 = tail call ptr @__memset32(ptr noundef %range, i32 noundef 2, i32 noundef 64) #5
  %info88 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %75 = ptrtoint ptr %info88 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @ad7606_info_os_range_and_debug, ptr %info88, align 8
  %76 = ptrtoint ptr %bops3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bops3, align 4
  %sw_mode_config90 = getelementptr inbounds %struct.ad7606_bus_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %sw_mode_config90 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sw_mode_config90, align 4
  %call91 = tail call i32 %79(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp = icmp slt i32 %call91, 0
  br i1 %cmp, label %if.then83.cleanup_crit_edge, label %if.then83.if.end94_crit_edge

if.then83.if.end94_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then83.cleanup_crit_edge:                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end94:                                         ; preds = %if.then83.if.end94_crit_edge, %if.end80.if.end94_crit_edge
  %80 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name52, align 8
  %call96 = tail call i32 @iio_device_id(ptr noundef nonnull %call) #5
  %call97 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %81, i32 noundef %call96) #5
  %trig = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 21
  %82 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call97, ptr %trig, align 8
  %tobool99.not = icmp eq ptr %call97, null
  br i1 %tobool99.not, label %if.end94.cleanup_crit_edge, label %if.end101

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end101:                                        ; preds = %if.end94
  %83 = ptrtoint ptr %call97 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @ad7606_trigger_ops, ptr %call97, align 8
  %84 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %trig, align 8
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %85, i32 0, i32 4, i32 8
  %86 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call, ptr %driver_data.i.i, align 4
  %87 = load ptr, ptr %trig, align 8
  %call105 = tail call i32 @__devm_iio_trigger_register(ptr noundef %dev, ptr noundef %87, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.end108, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end108:                                        ; preds = %if.end101
  %88 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trig, align 8
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %89, i32 0, i32 4
  %call.i220 = tail call ptr @get_device(ptr noundef %dev.i) #5
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %91) #5
  %trig111 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 10
  %92 = ptrtoint ptr %trig111 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %trig111, align 4
  %call112 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @ad7606_interrupt, i32 noundef 8194, ptr noundef %name, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end108.cleanup_crit_edge

if.end108.cleanup_crit_edge:                      ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end115:                                        ; preds = %if.end108
  %call116 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @ad7606_trigger_handler, i32 noundef 0, ptr noundef nonnull @ad7606_buffer_ops, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end119, label %if.end115.cleanup_crit_edge

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end119:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #7
  %call120 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %if.end115.cleanup_crit_edge, %if.end108.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.then83.cleanup_crit_edge, %if.then67.cleanup_crit_edge, %ad7606_request_gpios.exit.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end18, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then8 ], [ %call13, %do.end18 ], [ %call120, %if.end119 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %retval.0.i, %ad7606_request_gpios.exit.cleanup_crit_edge ], [ -512, %if.then67.cleanup_crit_edge ], [ %call91, %if.then83.cleanup_crit_edge ], [ -12, %if.end94.cleanup_crit_edge ], [ %call105, %if.end101.cleanup_crit_edge ], [ %call112, %if.end108.cleanup_crit_edge ], [ %call116, %if.end115.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ad7606_regulator_disable(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.ad7606_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 8
  %call = tail call i32 @regulator_disable(ptr noundef %1) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_write_scale_hw(ptr nocapture noundef readonly %indio_dev, i32 noundef %ch, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %gpio_range = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %gpio_range to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_range, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef %val) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_write_os_hw(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #0 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #5
  %2 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %values, align 4
  %gpio_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 20
  %3 = ptrtoint ptr %gpio_os to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_os, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call3 = call i32 @gpiod_set_array_value(i32 noundef 1, ptr noundef %desc, ptr noundef %6, ptr noundef nonnull %values) #5
  %chip_info = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info, align 4
  %os_req_reset = getelementptr inbounds %struct.ad7606_chip_info, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %os_req_reset to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %os_req_reset, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %gpio_reset.i = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 16
  %11 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_reset.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @gpiod_set_value(ptr noundef nonnull %12, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 214748) #5
  %14 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_reset.i, align 4
  call void @gpiod_set_value(ptr noundef %15, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_trigger_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %dev_id, i32 0, i32 1
  %2 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %3, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_convst = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %gpio_convst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_convst, align 16
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #5
  %trig = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %trig, align 8
  tail call void @iio_trigger_poll_chained(ptr noundef %7) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %completion = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 22
  tail call void @complete(ptr noundef %completion) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %call2 = tail call fastcc i32 @ad7606_read_samples(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 24
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #5
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_timestamp.i, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %7, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %data, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call3, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %data) #5
  br label %if.end

if.end:                                           ; preds = %iio_push_to_buffers_with_timestamp.exit, %entry.if.end_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %10) #5
  %gpio_convst = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %gpio_convst to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_convst, align 16
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #5
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %gpio_standby = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %gpio_standby to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_standby, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_range = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %gpio_range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_range, align 8
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #5
  %8 = ptrtoint ptr %gpio_standby to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_standby, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %gpio_standby = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %gpio_standby to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_standby, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %gpio_range = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %gpio_range to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_range, align 8
  %range = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %range, align 16
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef %9) #5
  %10 = ptrtoint ptr %gpio_standby to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_standby, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #5
  %gpio_reset.i = getelementptr inbounds %struct.ad7606_state, ptr %3, i32 0, i32 16
  %12 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_reset.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #5
  %15 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 25, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %gpio_convst.i = getelementptr inbounds %struct.ad7606_state, ptr %6, i32 0, i32 15
  %7 = ptrtoint ptr %gpio_convst.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_convst.i, align 16
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #5
  %completion.i = getelementptr inbounds %struct.ad7606_state, ptr %6, i32 0, i32 22
  %call2.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end.ad7606_scan_direct.exit_crit_edge, label %if.end.i

if.end.ad7606_scan_direct.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_scan_direct.exit

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call fastcc i32 @ad7606_read_samples(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.ad7606_scan_direct.exit_crit_edge

if.end.i.ad7606_scan_direct.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_scan_direct.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.ad7606_state, ptr %6, i32 0, i32 24, i32 %4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %10 to i32
  br label %ad7606_scan_direct.exit

ad7606_scan_direct.exit:                          ; preds = %if.then4.i, %if.end.i.ad7606_scan_direct.exit_crit_edge, %if.end.ad7606_scan_direct.exit_crit_edge
  %ret.0.i = phi i32 [ %conv.i, %if.then4.i ], [ %call3.i, %if.end.i.ad7606_scan_direct.exit_crit_edge ], [ -110, %if.end.ad7606_scan_direct.exit_crit_edge ]
  %11 = ptrtoint ptr %gpio_convst.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_convst.i, align 16
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 0) #5
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %ad7606_scan_direct.exit.cleanup_crit_edge, label %if.end4

ad7606_scan_direct.exit.cleanup_crit_edge:        ; preds = %ad7606_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %ad7606_scan_direct.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sext = shl i32 %ret.0.i, 16
  %conv5 = ashr exact i32 %sext, 16
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %sw_mode_en = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %sw_mode_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sw_mode_en, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %sw.bb6.if.end10_crit_edge, label %if.then8

sw.bb6.if.end10_crit_edge:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %address9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %sw.bb6.if.end10_crit_edge
  %ch.0 = phi i32 [ %17, %if.then8 ], [ 0, %sw.bb6.if.end10_crit_edge ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  %scale_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %scale_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scale_avail, align 4
  %arrayidx = getelementptr %struct.ad7606_state, ptr %1, i32 0, i32 4, i32 %ch.0
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %arrayidx11 = getelementptr i32, ptr %20, i32 %22
  %23 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx11, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %val2, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %oversampling = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %oversampling to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %oversampling, align 16
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %if.end10, %if.end4, %ad7606_scan_direct.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ 2, %if.end10 ], [ 1, %if.end4 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %ret.0.i, %ad7606_scan_direct.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 25, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %num_scales = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %num_scales to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_scales, align 32
  %sub = add i32 %4, -1
  %scale_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %scale_avail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scale_avail, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %__fc_i.0 = phi i32 [ 0, %sw.bb ], [ %add, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0, i32 %sub)
  %exitcond96.not = icmp eq i32 %__fc_i.0, %sub
  br i1 %exitcond96.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i32, ptr %6, i32 %__fc_i.0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %__fc_i.0, 1
  %arrayidx1 = getelementptr i32, ptr %6, i32 %add
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1, align 4
  %add2 = add i32 %8, 1
  %add3 = add i32 %add2, %10
  %div495 = lshr i32 %add3, 1
  %cmp5.not = icmp ult i32 %div495, %val2
  br i1 %cmp5.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %__fc_i.0.lcssa = phi i32 [ %__fc_i.0, %for.body.for.end_crit_edge ], [ %sub, %for.cond.for.end_crit_edge ]
  %sw_mode_en = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %sw_mode_en to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sw_mode_en, align 8, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %for.end.if.end8_crit_edge, label %if.then7

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %address, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge
  %ch.0 = phi i32 [ %14, %if.then7 ], [ 0, %for.end.if.end8_crit_edge ]
  %write_scale = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %write_scale to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_scale, align 4
  %call9 = tail call i32 %16(ptr noundef %indio_dev, i32 noundef %ch.0, i32 noundef %__fc_i.0.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup.sink.split_crit_edge, label %if.end13

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx14 = getelementptr %struct.ad7606_state, ptr %1, i32 0, i32 4, i32 %ch.0
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %__fc_i.0.lcssa, ptr %arrayidx14, align 4
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool17.not = icmp eq i32 %val2, 0
  br i1 %tobool17.not, label %if.end19, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %sw.bb16
  %num_os_ratios = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %num_os_ratios to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_os_ratios, align 8
  %sub22 = add i32 %19, -1
  %oversampling_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %oversampling_avail to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %oversampling_avail, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.body27.for.cond25_crit_edge, %if.end19
  %__fc_i20.0 = phi i32 [ 0, %if.end19 ], [ %add30, %for.body27.for.cond25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i20.0, i32 %sub22)
  %exitcond.not = icmp eq i32 %__fc_i20.0, %sub22
  br i1 %exitcond.not, label %for.cond25.for.end43_crit_edge, label %for.body27

for.cond25.for.end43_crit_edge:                   ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr i32, ptr %21, i32 %__fc_i20.0
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29, align 4
  %add30 = add i32 %__fc_i20.0, 1
  %arrayidx31 = getelementptr i32, ptr %21, i32 %add30
  %24 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %23, 1
  %add36 = add i32 %add32, %25
  %div3794 = lshr i32 %add36, 1
  %cmp38.not = icmp ult i32 %div3794, %val
  br i1 %cmp38.not, label %for.body27.for.cond25_crit_edge, label %for.body27.for.end43_crit_edge

for.body27.for.end43_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43

for.body27.for.cond25_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond25

for.end43:                                        ; preds = %for.body27.for.end43_crit_edge, %for.cond25.for.end43_crit_edge
  %__fc_i20.0.lcssa = phi i32 [ %__fc_i20.0, %for.body27.for.end43_crit_edge ], [ %sub22, %for.cond25.for.end43_crit_edge ]
  %lock45 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock45, i32 noundef 0) #5
  %write_os = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %write_os to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_os, align 16
  %call46 = tail call i32 %27(ptr noundef %indio_dev, i32 noundef %__fc_i20.0.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %for.end43.cleanup.sink.split_crit_edge, label %if.end50

for.end43.cleanup.sink.split_crit_edge:           ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end50:                                         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %oversampling_avail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oversampling_avail, align 4
  %arrayidx52 = getelementptr i32, ptr %29, i32 %__fc_i20.0.lcssa
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx52, align 4
  %oversampling = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %oversampling to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %oversampling, align 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end50, %for.end43.cleanup.sink.split_crit_edge, %if.end13, %if.end8.cleanup.sink.split_crit_edge
  %lock45.sink = phi ptr [ %lock45, %if.end50 ], [ %lock, %if.end13 ], [ %lock, %if.end8.cleanup.sink.split_crit_edge ], [ %lock45, %for.end43.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end50 ], [ 0, %if.end13 ], [ %call9, %if.end8.cleanup.sink.split_crit_edge ], [ %call46, %for.end43.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock45.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb16.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad7606_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trig1 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %trig1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trig1, align 8
  %cmp.not = icmp eq ptr %3, %trig
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_voltage_scale_available_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %scale_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %scale_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scale_avail, align 4
  %num_scales = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %num_scales to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_scales, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not.i = icmp eq i32 %5, 0
  br i1 %cmp10.not.i, label %entry.ad7606_show_avail.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ad7606_show_avail.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_show_avail.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %len.011.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.ptr.i4 = getelementptr i8, ptr %buf, i32 %len.011.i
  %sub.i = sub i32 4096, %len.011.i
  %arrayidx.i = getelementptr i32, ptr %3, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i4, i32 noundef %sub.i, ptr noundef nonnull @.str.20, i32 noundef %7) #5
  %add.i = add i32 %call.i, %len.011.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.ad7606_show_avail.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.ad7606_show_avail.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_show_avail.exit

ad7606_show_avail.exit:                           ; preds = %for.body.i.ad7606_show_avail.exit_crit_edge, %entry.ad7606_show_avail.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.ad7606_show_avail.exit_crit_edge ], [ %add.i, %for.body.i.ad7606_show_avail.exit_crit_edge ]
  %sub1.i = add i32 %len.0.lcssa.i, -1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 %sub1.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %arrayidx2.i, align 1
  ret i32 %len.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_oversampling_ratio_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %oversampling_avail = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %oversampling_avail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oversampling_avail, align 4
  %num_os_ratios = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_os_ratios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_os_ratios, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10.not.i = icmp eq i32 %5, 0
  br i1 %cmp10.not.i, label %entry.ad7606_show_avail.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ad7606_show_avail.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_show_avail.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %len.011.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.ptr.i4 = getelementptr i8, ptr %buf, i32 %len.011.i
  %sub.i = sub i32 4096, %len.011.i
  %arrayidx.i = getelementptr i32, ptr %3, i32 %i.012.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.i4, i32 noundef %sub.i, ptr noundef nonnull @.str.21, i32 noundef %7) #5
  %add.i = add i32 %call.i, %len.011.i
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.body.i.ad7606_show_avail.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.ad7606_show_avail.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ad7606_show_avail.exit

ad7606_show_avail.exit:                           ; preds = %for.body.i.ad7606_show_avail.exit_crit_edge, %entry.ad7606_show_avail.exit_crit_edge
  %len.0.lcssa.i = phi i32 [ 0, %entry.ad7606_show_avail.exit_crit_edge ], [ %add.i, %for.body.i.ad7606_show_avail.exit_crit_edge ]
  %sub1.i = add i32 %len.0.lcssa.i, -1
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 %sub1.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 10, ptr %arrayidx2.i, align 1
  ret i32 %len.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ad7606_read_samples(ptr noundef %st) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_info = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 1
  %0 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ad7606_chip_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %sub = add i32 %3, -1
  %data1 = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 24
  %gpio_frstdata = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 19
  %4 = ptrtoint ptr %gpio_frstdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_frstdata, align 32
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then:                                          ; preds = %entry
  %bops = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 3
  %6 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st, align 128
  %call = tail call i32 %9(ptr noundef %11, i32 noundef 1, ptr noundef %data1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %gpio_frstdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gpio_frstdata, align 32
  %call5 = tail call i32 @gpiod_get_value(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %gpio_reset.i = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 16
  %14 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_reset.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then7.cleanup_crit_edge, label %if.then.i

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %15, i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #5
  %17 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gpio_reset.i, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 0) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr %struct.ad7606_state, ptr %st, i32 0, i32 24, i32 1
  %dec = add i32 %3, -2
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry.if.end10_crit_edge
  %num.0 = phi i32 [ %dec, %if.end9 ], [ %sub, %entry.if.end10_crit_edge ]
  %data.0 = phi ptr [ %incdec.ptr, %if.end9 ], [ %data1, %entry.if.end10_crit_edge ]
  %bops11 = getelementptr inbounds %struct.ad7606_state, ptr %st, i32 0, i32 3
  %19 = ptrtoint ptr %bops11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bops11, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %st, align 128
  %call14 = tail call i32 %22(ptr noundef %24, i32 noundef %num.0, ptr noundef %data.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.i, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end10 ], [ %call, %if.then.cleanup_crit_edge ], [ -5, %if.then7.cleanup_crit_edge ], [ -5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %readval, null
  %bops3 = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bops3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bops3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %reg_read = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_read, align 4
  %call1 = tail call i32 %5(ptr noundef %1, i32 noundef %reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.err_unlock_crit_edge, label %if.end

if.then.err_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unlock

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %readval, align 4
  br label %err_unlock

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %reg_write = getelementptr inbounds %struct.ad7606_bus_ops, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_write, align 4
  %call4 = tail call i32 %8(ptr noundef %1, i32 noundef %reg, i32 noundef %writeval) #5
  br label %err_unlock

err_unlock:                                       ; preds = %if.else, %if.end, %if.then.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call1, %if.then.err_unlock_crit_edge ], [ 0, %if.end ], [ %call4, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_trigger_validate_own_device(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %gpio_convst = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %gpio_convst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_convst, align 16
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad7606_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %gpio_convst = getelementptr inbounds %struct.ad7606_state, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %gpio_convst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_convst, align 16
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !72, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @ad7606_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ad7606.c", i32 582, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ad7606.c", i32 591, i32 36}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ad7606.c", i32 597, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ad7606_probe._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @ad7606_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/adc/ad7606.c", i32 636, i32 3}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ad7606_probe._entry.7, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ad7606_probe._entry_ptr.10, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ad7606.c", i32 649, i32 9}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/adc/ad7606.c", i32 665, i32 41}
!22 = !{ptr @__ksymtab_ad7606_probe, !23, !"__ksymtab_ad7606_probe", i1 false, i1 false}
!23 = !{!"../drivers/iio/adc/ad7606.c", i32 696, i32 1}
!24 = !{ptr @ad7606_pm_ops, !25, !"ad7606_pm_ops", i1 false, i1 false}
!25 = !{!"../drivers/iio/adc/ad7606.c", i32 727, i32 1}
!26 = !{ptr @__ksymtab_ad7606_pm_ops, !27, !"__ksymtab_ad7606_pm_ops", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/ad7606.c", i32 728, i32 1}
!28 = !{ptr @__UNIQUE_ID_author288, !29, !"__UNIQUE_ID_author288", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/ad7606.c", i32 732, i32 1}
!30 = !{ptr @__UNIQUE_ID_description289, !31, !"__UNIQUE_ID_description289", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/ad7606.c", i32 733, i32 1}
!32 = !{ptr @__UNIQUE_ID_file290, !33, !"__UNIQUE_ID_file290", i1 false, i1 false}
!33 = !{!"../drivers/iio/adc/ad7606.c", i32 734, i32 1}
!34 = !{ptr @__UNIQUE_ID_license291, !33, !"__UNIQUE_ID_license291", i1 false, i1 false}
!35 = !{ptr @ad7606_scale_avail, !36, !"ad7606_scale_avail", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ad7606.c", i32 34, i32 27}
!37 = !{ptr @ad7606_chip_info_tbl, !38, !"ad7606_chip_info_tbl", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ad7606.c", i32 389, i32 38}
!39 = !{ptr @ad7605_channels, !40, !"ad7605_channels", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/ad7606.c", i32 339, i32 35}
!41 = !{ptr @ad7606_channels, !42, !"ad7606_channels", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/ad7606.c", i32 347, i32 35}
!43 = !{ptr @ad7606_oversampling_avail, !44, !"ad7606_oversampling_avail", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/ad7606.c", i32 43, i32 27}
!45 = !{ptr @ad7616_channels, !46, !"ad7616_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/ad7606.c", i32 369, i32 35}
!47 = !{ptr @ad7616_oversampling_avail, !48, !"ad7616_oversampling_avail", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/ad7606.c", i32 47, i32 27}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/ad7606.c", i32 433, i32 40}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/ad7606.c", i32 438, i32 48}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/adc/ad7606.c", i32 442, i32 48}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/adc/ad7606.c", i32 447, i32 50}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/adc/ad7606.c", i32 452, i32 51}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/adc/ad7606.c", i32 461, i32 11}
!61 = !{ptr @ad7606_info_os_and_range, !62, !"ad7606_info_os_and_range", i1 false, i1 false}
!62 = !{!"../drivers/iio/adc/ad7606.c", i32 526, i32 30}
!63 = !{ptr @ad7606_attribute_group_os_and_range, !64, !"ad7606_attribute_group_os_and_range", i1 false, i1 false}
!64 = !{!"../drivers/iio/adc/ad7606.c", i32 317, i32 37}
!65 = !{ptr @ad7606_attributes_os_and_range, !66, !"ad7606_attributes_os_and_range", i1 false, i1 false}
!66 = !{!"../drivers/iio/adc/ad7606.c", i32 311, i32 26}
!67 = !{ptr @.str.19, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/adc/ad7606.c", i32 225, i32 8}
!69 = !{ptr @iio_dev_attr_in_voltage_scale_available, !68, !"iio_dev_attr_in_voltage_scale_available", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/adc/ad7606.c", i32 208, i32 13}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/adc/ad7606.c", i32 208, i32 25}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/adc/ad7606.c", i32 308, i32 8}
!76 = !{ptr @iio_dev_attr_oversampling_ratio_available, !75, !"iio_dev_attr_oversampling_ratio_available", i1 false, i1 false}
!77 = !{ptr @ad7606_info_os, !78, !"ad7606_info_os", i1 false, i1 false}
!78 = !{!"../drivers/iio/adc/ad7606.c", i32 541, i32 30}
!79 = !{ptr @ad7606_attribute_group_os, !80, !"ad7606_attribute_group_os", i1 false, i1 false}
!80 = !{!"../drivers/iio/adc/ad7606.c", i32 326, i32 37}
!81 = !{ptr @ad7606_attributes_os, !82, !"ad7606_attributes_os", i1 false, i1 false}
!82 = !{!"../drivers/iio/adc/ad7606.c", i32 321, i32 26}
!83 = !{ptr @ad7606_info_range, !84, !"ad7606_info_range", i1 false, i1 false}
!84 = !{!"../drivers/iio/adc/ad7606.c", i32 548, i32 30}
!85 = !{ptr @ad7606_attribute_group_range, !86, !"ad7606_attribute_group_range", i1 false, i1 false}
!86 = !{!"../drivers/iio/adc/ad7606.c", i32 335, i32 37}
!87 = !{ptr @ad7606_attributes_range, !88, !"ad7606_attributes_range", i1 false, i1 false}
!88 = !{!"../drivers/iio/adc/ad7606.c", i32 330, i32 26}
!89 = !{ptr @ad7606_info_no_os_or_range, !90, !"ad7606_info_no_os_or_range", i1 false, i1 false}
!90 = !{!"../drivers/iio/adc/ad7606.c", i32 521, i32 30}
!91 = !{ptr @init_completion.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../include/linux/completion.h", i32 87, i32 2}
!93 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ad7616_sw_scale_avail, !95, !"ad7616_sw_scale_avail", i1 false, i1 false}
!95 = !{!"../drivers/iio/adc/ad7606.c", i32 39, i32 27}
!96 = !{ptr @ad7606_info_os_range_and_debug, !97, !"ad7606_info_os_range_and_debug", i1 false, i1 false}
!97 = !{!"../drivers/iio/adc/ad7606.c", i32 533, i32 30}
!98 = !{ptr @ad7606_trigger_ops, !99, !"ad7606_trigger_ops", i1 false, i1 false}
!99 = !{!"../drivers/iio/adc/ad7606.c", i32 555, i32 37}
!100 = !{ptr @ad7606_buffer_ops, !101, !"ad7606_buffer_ops", i1 false, i1 false}
!101 = !{!"../drivers/iio/adc/ad7606.c", i32 516, i32 42}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i8 0, i8 2}
