; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/mpu3050-core.c_pt.bc'
source_filename = "../drivers/iio/gyro/mpu3050-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mpu3050_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_mpu3050_common_probe\09\09\09\09"
module asm "\09.long\09__crc_mpu3050_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mpu3050_common_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_mpu3050_common_remove\09\09\09\09"
module asm "\09.long\09__crc_mpu3050_common_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_common_remove\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mpu3050_dev_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mpu3050_dev_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_mpu3050_dev_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mpu3050_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mpu3050_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mpu3050_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mpu3050 = type { ptr, %struct.iio_mount_matrix, ptr, %struct.mutex, i32, [2 x %struct.regulator_bulk_data], i32, i32, i8, [3 x i16], ptr, i8, i8, i8, i8, i8, i64, ptr }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anon.85 = type { [4 x i16], i64 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.iio_trigger = type { ptr, ptr, i32, ptr, %struct.device, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.irq_chip, i32, [2 x %struct.iio_subirq], [1 x i32], %struct.mutex, i8, %struct.work_struct }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iio_subirq = type { i8 }

@mpu3050_common_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mpu3050->lock\00", [17 x i8] zeroinitializer }, align 32
@mpu3050_reg_vdd = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@mpu3050_reg_vlogic = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vlogic\00", [25 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get regulators\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpu3050_common_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/gyro/mpu3050-core.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr = internal global ptr @mpu3050_common_probe._entry, section ".printk_index", align 4
@mpu3050_common_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not read device ID\0A\00", [38 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.8 = internal global ptr @mpu3050_common_probe._entry.6, section ".printk_index", align 4
@mpu3050_common_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported chip id %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.11 = internal global ptr @mpu3050_common_probe._entry.9, section ".printk_index", align 4
@mpu3050_common_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.13 = internal global ptr @mpu3050_common_probe._entry.12, section ".printk_index", align 4
@mpu3050_common_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1206, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"found MPU-3050 part no: %d, version: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.17 = internal global ptr @mpu3050_common_probe._entry.14, section ".printk_index", align 4
@mpu3050_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 1, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 2, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 3, %struct.anon.84 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @mpu3050_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@mpu3050_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mpu3050_attribute_group, ptr @mpu3050_read_raw, ptr null, ptr null, ptr @mpu3050_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mpu3050_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 15, i32 0], [24 x i8] zeroinitializer }, align 32
@mpu3050_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @mpu3050_buffer_preenable, ptr null, ptr null, ptr @mpu3050_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1223, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"triggered buffer setup failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.20 = internal global ptr @mpu3050_common_probe._entry.18, section ".printk_index", align 4
@mpu3050_common_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1229, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.23 = internal global ptr @mpu3050_common_probe._entry.21, section ".printk_index", align 4
@mpu3050_common_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register trigger\0A\00", [36 x i8] zeroinitializer }, align 32
@mpu3050_common_probe._entry_ptr.26 = internal global ptr @mpu3050_common_probe._entry.24, section ".printk_index", align 4
@__kstrtab_mpu3050_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_common_probe to i32), ptr @__kstrtab_mpu3050_common_probe, ptr @__kstrtabns_mpu3050_common_probe }, section "___ksymtab+mpu3050_common_probe", align 4
@__kstrtab_mpu3050_common_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_common_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_common_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_common_remove to i32), ptr @__kstrtab_mpu3050_common_remove, ptr @__kstrtabns_mpu3050_common_remove }, section "___ksymtab+mpu3050_common_remove", align 4
@mpu3050_dev_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mpu3050_runtime_suspend, ptr @mpu3050_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_mpu3050_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mpu3050_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mpu3050_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mpu3050_dev_pm_ops to i32), ptr @__kstrtab_mpu3050_dev_pm_ops, ptr @__kstrtabns_mpu3050_dev_pm_ops }, section "___ksymtab+mpu3050_dev_pm_ops", align 4
@__UNIQUE_ID_author323 = internal constant [29 x i8] c"mpu3050.author=Linus Walleij\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [45 x i8] c"mpu3050.description=MPU3050 gyroscope driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [38 x i8] c"mpu3050.file=drivers/iio/gyro/mpu3050\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [20 x i8] c"mpu3050.license=GPL\00", section ".modinfo", align 1
@mpu3050_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 864, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot enable regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpu3050_power_up\00", [47 x i8] zeroinitializer }, align 32
@mpu3050_power_up._entry_ptr = internal global ptr @mpu3050_power_up._entry, section ".printk_index", align 4
@mpu3050_power_up._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error setting power mode\0A\00", [38 x i8] zeroinitializer }, align 32
@mpu3050_power_up._entry_ptr.31 = internal global ptr @mpu3050_power_up._entry.29, section ".printk_index", align 4
@mpu3050_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 853, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"die ID: %04llX, wafer ID: %02llX, A lot ID: %04llX, W lot ID: %03llX, WP ID: %01llX, rev ID: %02llX\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mpu3050_hw_init\00", [16 x i8] zeroinitializer }, align 32
@mpu3050_hw_init._entry_ptr = internal global ptr @mpu3050_hw_init._entry, section ".printk_index", align 4
@mpu3050_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.34, i32 1, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @mpu3050_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@mpu3050_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mpu3050_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mpu3050_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_anglevel_scale_available, i64 4), ptr null], [24 x i8] zeroinitializer }, align 32
@iio_const_attr_anglevel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.35, %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"0.000122070 0.000274658 0.000518798 0.001068115\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"anglevel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@mpu3050_fs_precision = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 9, i32 17, i32 35], [16 x i8] zeroinitializer }, align 32
@mpu3050_read_raw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error reading temperature\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mpu3050_read_raw\00", [47 x i8] zeroinitializer }, align 32
@mpu3050_read_raw._entry_ptr = internal global ptr @mpu3050_read_raw._entry, section ".printk_index", align 4
@mpu3050_read_raw._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error reading axis data\0A\00", [39 x i8] zeroinitializer }, align 32
@mpu3050_read_raw._entry_ptr.41 = internal global ptr @mpu3050_read_raw._entry.39, section ".printk_index", align 4
@mpu3050_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 512, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"FIFO overflow! Emptying and resetting FIFO\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpu3050_trigger_handler\00", [40 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler._entry_ptr = internal global ptr @mpu3050_trigger_handler._entry, section ".printk_index", align 4
@mpu3050_trigger_handler._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 522, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error resetting FIFO\0A\00", [42 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler._entry_ptr.46 = internal global ptr @mpu3050_trigger_handler._entry.44, section ".printk_index", align 4
@mpu3050_trigger_handler.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.43, ptr @.str.3, ptr @.str.48, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu3050\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%d bytes in the FIFO\0A\00", [42 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.43, ptr @.str.3, ptr @.str.49, i8 0, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%04x %04x %04x %04x %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.43, ptr @.str.3, ptr @.str.50, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d bytes left in the FIFO\0A\00", [37 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.43, ptr @.str.3, ptr @.str.51, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read %d datums from the FIFO\0A\00", [34 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.43, ptr @.str.3, i32 637, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mpu3050_trigger_handler._entry_ptr.53 = internal global ptr @mpu3050_trigger_handler._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1076, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pulse interrupts on the rising edge\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mpu3050_trigger_probe\00", [42 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr = internal global ptr @mpu3050_trigger_probe._entry, section ".printk_index", align 4
@mpu3050_trigger_probe._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.3, i32 1081, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pulse interrupts on the falling edge\0A\00", [58 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr.60 = internal global ptr @mpu3050_trigger_probe._entry.58, section ".printk_index", align 4
@mpu3050_trigger_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.3, i32 1086, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"interrupts active high level\0A\00", [34 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr.63 = internal global ptr @mpu3050_trigger_probe._entry.61, section ".printk_index", align 4
@mpu3050_trigger_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.3, i32 1099, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"interrupts active low level\0A\00", [35 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr.66 = internal global ptr @mpu3050_trigger_probe._entry.64, section ".printk_index", align 4
@mpu3050_trigger_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.3, i32 1105, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"unsupported IRQ trigger specified (%lx), enforce rising edge\0A\00", [34 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr.69 = internal global ptr @mpu3050_trigger_probe._entry.67, section ".printk_index", align 4
@mpu3050_trigger_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't get IRQ %d, error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@mpu3050_trigger_probe._entry_ptr.72 = internal global ptr @mpu3050_trigger_probe._entry.70, section ".printk_index", align 4
@mpu3050_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @mpu3050_drdy_trigger_set_state, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@mpu3050_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 934, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading IRQ status\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpu3050_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@mpu3050_irq_thread._entry_ptr = internal global ptr @mpu3050_irq_thread._entry, section ".printk_index", align 4
@mpu3050_drdy_trigger_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 965, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error disabling IRQ\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mpu3050_drdy_trigger_set_state\00", [33 x i8] zeroinitializer }, align 32
@mpu3050_drdy_trigger_set_state._entry_ptr = internal global ptr @mpu3050_drdy_trigger_set_state._entry, section ".printk_index", align 4
@mpu3050_drdy_trigger_set_state._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 970, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error clearing IRQ status\0A\00", [37 x i8] zeroinitializer }, align 32
@mpu3050_drdy_trigger_set_state._entry_ptr.79 = internal global ptr @mpu3050_drdy_trigger_set_state._entry.77, section ".printk_index", align 4
@mpu3050_drdy_trigger_set_state._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.3, i32 975, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error disabling FIFO\0A\00", [42 x i8] zeroinitializer }, align 32
@mpu3050_drdy_trigger_set_state._entry_ptr.82 = internal global ptr @mpu3050_drdy_trigger_set_state._entry.80, section ".printk_index", align 4
@mpu3050_drdy_trigger_set_state._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.76, ptr @.str.3, i32 980, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mpu3050_drdy_trigger_set_state._entry_ptr.84 = internal global ptr @mpu3050_drdy_trigger_set_state._entry.83, section ".printk_index", align 4
@mpu3050_drdy_trigger_set_state._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 1026, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@mpu3050_drdy_trigger_set_state._entry_ptr.86 = internal global ptr @mpu3050_drdy_trigger_set_state._entry.85, section ".printk_index", align 4
@mpu3050_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error putting to sleep\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpu3050_power_down\00", [45 x i8] zeroinitializer }, align 32
@mpu3050_power_down._entry_ptr = internal global ptr @mpu3050_power_down._entry, section ".printk_index", align 4
@mpu3050_power_down._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error disabling regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@mpu3050_power_down._entry_ptr.91 = internal global ptr @mpu3050_power_down._entry.89, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 5, i64 12]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 9]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 12]
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"mpu3050_reg_vdd\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 176, i32 19 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"mpu3050_reg_vlogic\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 177, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1175, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1185, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1192, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1200, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1205, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"mpu3050_channels\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 711, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant [13 x i8] c"mpu3050_info\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 754, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"mpu3050_scan_masks\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 733, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"mpu3050_buffer_setup_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 673, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1223, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1229, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1239, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"mpu3050_dev_pm_ops\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1296, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 864, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 877, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 839, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"mpu3050_ext_info\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 687, i32 44 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 688, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [24 x i8] c"mpu3050_attribute_group\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 750, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant [19 x i8] c"mpu3050_attributes\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 745, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant [40 x i8] c"iio_const_attr_anglevel_scale_available\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 739, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [21 x i8] c"mpu3050_fs_precision\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 166, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 336, i32 5 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 351, i32 5 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 511, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 522, i32 5 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 529, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 563, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 596, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 627, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 636, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1057, i32 13 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1064, i32 51 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1075, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1080, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1085, i32 3 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1098, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1103, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1121, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c"mpu3050_trigger_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1046, i32 37 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 934, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 965, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 970, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 975, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 980, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1026, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 899, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.376 = private constant [35 x i8] c"../drivers/iio/gyro/mpu3050-core.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 903, i32 3 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__ksymtab_mpu3050_common_probe, ptr @__ksymtab_mpu3050_common_remove, ptr @__ksymtab_mpu3050_dev_pm_ops, ptr @mpu3050_common_probe._entry, ptr @mpu3050_common_probe._entry.12, ptr @mpu3050_common_probe._entry.14, ptr @mpu3050_common_probe._entry.18, ptr @mpu3050_common_probe._entry.21, ptr @mpu3050_common_probe._entry.24, ptr @mpu3050_common_probe._entry.6, ptr @mpu3050_common_probe._entry.9, ptr @mpu3050_common_probe._entry_ptr, ptr @mpu3050_common_probe._entry_ptr.11, ptr @mpu3050_common_probe._entry_ptr.13, ptr @mpu3050_common_probe._entry_ptr.17, ptr @mpu3050_common_probe._entry_ptr.20, ptr @mpu3050_common_probe._entry_ptr.23, ptr @mpu3050_common_probe._entry_ptr.26, ptr @mpu3050_common_probe._entry_ptr.8, ptr @mpu3050_drdy_trigger_set_state._entry, ptr @mpu3050_drdy_trigger_set_state._entry.77, ptr @mpu3050_drdy_trigger_set_state._entry.80, ptr @mpu3050_drdy_trigger_set_state._entry.83, ptr @mpu3050_drdy_trigger_set_state._entry.85, ptr @mpu3050_drdy_trigger_set_state._entry_ptr, ptr @mpu3050_drdy_trigger_set_state._entry_ptr.79, ptr @mpu3050_drdy_trigger_set_state._entry_ptr.82, ptr @mpu3050_drdy_trigger_set_state._entry_ptr.84, ptr @mpu3050_drdy_trigger_set_state._entry_ptr.86, ptr @mpu3050_hw_init._entry, ptr @mpu3050_hw_init._entry_ptr, ptr @mpu3050_irq_thread._entry, ptr @mpu3050_irq_thread._entry_ptr, ptr @mpu3050_power_down._entry, ptr @mpu3050_power_down._entry.89, ptr @mpu3050_power_down._entry_ptr, ptr @mpu3050_power_down._entry_ptr.91, ptr @mpu3050_power_up._entry, ptr @mpu3050_power_up._entry.29, ptr @mpu3050_power_up._entry_ptr, ptr @mpu3050_power_up._entry_ptr.31, ptr @mpu3050_read_raw._entry, ptr @mpu3050_read_raw._entry.39, ptr @mpu3050_read_raw._entry_ptr, ptr @mpu3050_read_raw._entry_ptr.41, ptr @mpu3050_trigger_handler._entry, ptr @mpu3050_trigger_handler._entry.44, ptr @mpu3050_trigger_handler._entry.52, ptr @mpu3050_trigger_handler._entry_ptr, ptr @mpu3050_trigger_handler._entry_ptr.46, ptr @mpu3050_trigger_handler._entry_ptr.53, ptr @mpu3050_trigger_probe._entry, ptr @mpu3050_trigger_probe._entry.58, ptr @mpu3050_trigger_probe._entry.61, ptr @mpu3050_trigger_probe._entry.64, ptr @mpu3050_trigger_probe._entry.67, ptr @mpu3050_trigger_probe._entry.70, ptr @mpu3050_trigger_probe._entry_ptr, ptr @mpu3050_trigger_probe._entry_ptr.60, ptr @mpu3050_trigger_probe._entry_ptr.63, ptr @mpu3050_trigger_probe._entry_ptr.66, ptr @mpu3050_trigger_probe._entry_ptr.69, ptr @mpu3050_trigger_probe._entry_ptr.72, ptr @mpu3050_common_probe.__key, ptr @.str, ptr @mpu3050_reg_vdd, ptr @mpu3050_reg_vlogic, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.15, ptr @.str.16, ptr @mpu3050_channels, ptr @mpu3050_info, ptr @mpu3050_scan_masks, ptr @mpu3050_buffer_setup_ops, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @mpu3050_dev_pm_ops, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @mpu3050_ext_info, ptr @.str.34, ptr @mpu3050_attribute_group, ptr @mpu3050_attributes, ptr @iio_const_attr_anglevel_scale_available, ptr @.str.35, ptr @.str.36, ptr @mpu3050_fs_precision, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @mpu3050_trigger_ops, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.87, ptr @.str.88, ptr @.str.90], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_reg_vdd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_reg_vlogic to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_common_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_power_up._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_anglevel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_fs_precision to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_read_raw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_read_raw._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_handler._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_drdy_trigger_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_drdy_trigger_set_state._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_drdy_trigger_set_state._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_drdy_trigger_set_state._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_drdy_trigger_set_state._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu3050_power_down._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpu3050_common_probe(ptr noundef %dev, ptr noundef %map, i32 noundef %irq, ptr noundef %name) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !201
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 208) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 8
  %map3 = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %map3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %map, ptr %map3, align 8
  %lock = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mpu3050_common_probe.__key) #8
  %fullscale = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %fullscale to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %fullscale, align 4
  %lpf = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %lpf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %lpf, align 8
  %divisor = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 8
  %7 = ptrtoint ptr %divisor to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 99, ptr %divisor, align 4
  %orientation = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 1
  %call4 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %regs = getelementptr inbounds %struct.mpu3050, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mpu3050_reg_vdd, ptr %regs, align 4
  %arrayidx9 = getelementptr %struct.mpu3050, ptr %2, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mpu3050_reg_vlogic, ptr %arrayidx9, align 4
  %call12 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call fastcc i32 @mpu3050_power_up(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = call i32 @regmap_read(ptr noundef %map, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %err_power_down

if.end29:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and = and i32 %11, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %and)
  %cmp.not = icmp eq i32 %and, 104
  br i1 %cmp.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %and) #11
  br label %err_power_down

if.end36:                                         ; preds = %if.end29
  %call37 = call i32 @regmap_read(ptr noundef %map, i32 noundef 1, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.end46, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  br label %err_power_down

do.end46:                                         ; preds = %if.end36
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %shr = lshr i32 %13, 4
  %and47 = and i32 %shr, 15
  %and48 = and i32 %13, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %and47, i32 noundef %and48) #11
  %call49 = call fastcc i32 @mpu3050_hw_init(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %do.end46.err_power_down_crit_edge

do.end46.err_power_down_crit_edge:                ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power_down

if.end52:                                         ; preds = %do.end46
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mpu3050_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mpu3050_info, ptr %info, align 8
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @mpu3050_scan_masks, ptr %available_scan_masks, align 4
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call, align 8
  %name53 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %19 = ptrtoint ptr %name53 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %name53, align 8
  %call54 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @mpu3050_trigger_handler, i32 noundef 0, ptr noundef nonnull @mpu3050_buffer_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end60, label %do.end59

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #11
  br label %err_power_down

if.end60:                                         ; preds = %if.end52
  %call61 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end67, label %do.end66

do.end66:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #11
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #8
  br label %err_power_down

if.end67:                                         ; preds = %if.end60
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool68.not = icmp eq i32 %irq, 0
  br i1 %tobool68.not, label %if.end67.if.end77_crit_edge, label %if.then69

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then69:                                        ; preds = %if.end67
  %call70 = call fastcc i32 @mpu3050_trigger_probe(ptr noundef nonnull %call, i32 noundef %irq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then69.if.end77_crit_edge, label %do.end75

if.then69.if.end77_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end75:                                         ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #11
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.then69.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %21 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !202
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  call void @pm_runtime_enable(ptr noundef %dev) #8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 10000) #8
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i141 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #8
  br label %cleanup

err_power_down:                                   ; preds = %do.end66, %do.end59, %do.end46.err_power_down_crit_edge, %do.end42, %do.end33, %do.end28
  %ret.0 = phi i32 [ -19, %do.end28 ], [ -19, %do.end33 ], [ -19, %do.end42 ], [ %call49, %do.end46.err_power_down_crit_edge ], [ %call54, %do.end59 ], [ %call61, %do.end66 ]
  call fastcc void @mpu3050_power_down(ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %err_power_down, %if.end77, %if.end18.cleanup_crit_edge, %do.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ %ret.0, %err_power_down ], [ 0, %if.end77 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_power_up(ptr noundef %mpu3050) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 5
  %call = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %mpu3050 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpu3050, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 200) #8
  %map = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 2
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 62, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mpu3050 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpu3050, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call.i, %do.end6 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_hw_init(ptr nocapture noundef readonly %mpu3050) unnamed_addr #0 align 64 {
entry:
  %otp_le = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %otp_le) #8
  %0 = ptrtoint ptr %otp_le to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %otp_le, align 8, !annotation !201
  %map = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 2
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 8
  %call.i138 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 62, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool3.not = icmp eq i32 %call.i138, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %call7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 23, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %call.i139 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 55, i32 noundef 52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 56, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %mpu3050_read_mem.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mpu3050_read_mem.exit:                            ; preds = %if.end.i
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %call9.i = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 57, ptr noundef nonnull %otp_le, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool12.not = icmp eq i32 %call9.i, 0
  br i1 %tobool12.not, label %if.end14, label %mpu3050_read_mem.exit.cleanup_crit_edge

mpu3050_read_mem.exit.cleanup_crit_edge:          ; preds = %mpu3050_read_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %mpu3050_read_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @add_device_randomness(ptr noundef nonnull %otp_le, i32 noundef 8) #8
  %13 = ptrtoint ptr %otp_le to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %otp_le, align 8
  %15 = call i64 @llvm.bswap.i64(i64 %14)
  %16 = ptrtoint ptr %mpu3050 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mpu3050, align 8
  %and = and i64 %15, 8191
  %and46 = lshr i64 %15, 13
  %shr47 = and i64 %and46, 31
  %and64 = lshr i64 %15, 18
  %shr65 = and i64 %and64, 65535
  %and82 = lshr i64 %15, 34
  %shr83 = and i64 %and82, 4095
  %and100 = lshr i64 %15, 47
  %shr101 = and i64 %and100, 7
  %and118 = lshr i64 %15, 50
  %shr119 = and i64 %and118, 63
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.32, i64 noundef %and, i64 noundef %shr47, i64 noundef %shr65, i64 noundef %shr83, i64 noundef %shr101, i64 noundef %shr119) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %mpu3050_read_mem.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i138, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call9.i, %mpu3050_read_mem.exit.cleanup_crit_edge ], [ %call3.i, %if.end.i.cleanup_crit_edge ], [ %call.i139, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %otp_le) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %scan = alloca %struct.anon.85, align 8
  %raw_fifocnt = alloca i16, align 2
  %fifo_values = alloca [5 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %scan) #8
  %4 = call ptr @memset(ptr %scan, i32 255, i32 16)
  %call2 = tail call zeroext i1 @iio_trigger_using_own(ptr noundef %1) #8
  br i1 %call2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hw_timestamp = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 16
  %5 = ptrtoint ptr %hw_timestamp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %hw_timestamp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %timestamp.0 = phi i64 [ %6, %if.then ], [ %call3, %if.else ]
  %lock = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %hw_irq_trigger = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_irq_trigger, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end143_crit_edge, label %if.then4

if.end.if.end143_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_fifocnt) #8
  %9 = ptrtoint ptr %raw_fifocnt to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %raw_fifocnt, align 2, !annotation !201
  %map = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 8
  %call5 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 58, ptr noundef nonnull %raw_fifocnt, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then4.cleanup117.thread_crit_edge

if.then4.cleanup117.thread_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup117.thread

if.end8:                                          ; preds = %if.then4
  %12 = ptrtoint ptr %raw_fifocnt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %raw_fifocnt, align 2
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %13)
  %cmp = icmp ne i16 %13, 512
  br i1 %cmp, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.42) #11
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 61, i32 noundef 66, i32 noundef 66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end20.thread, label %do.end17

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.45) #11
  br label %cleanup117.thread

if.end20.thread:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %pending_fifo_footer = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 15
  %20 = ptrtoint ptr %pending_fifo_footer to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pending_fifo_footer, align 4
  br label %do.body23

if.end20:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool21.not = icmp eq i16 %13, 0
  br i1 %tobool21.not, label %if.end20.if.end123.thread_crit_edge, label %if.end20.do.body23_crit_edge

if.end20.do.body23_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body23

if.end20.if.end123.thread_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123.thread

do.body23:                                        ; preds = %if.end20.do.body23_crit_edge, %if.end20.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpu3050_trigger_handler, %if.then28)) #8
          to label %if.end34 [label %if.then28], !srcloc !204

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpu3050_trigger_handler.__UNIQUE_ID_ddebug289, ptr noundef %22, ptr noundef nonnull @.str.48, i32 noundef %conv) #8
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body23
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp37237 = icmp ugt i16 %13, 8
  %23 = and i1 %cmp, %cmp37237
  br i1 %23, label %while.body.lr.ph, label %if.end34.if.end123.thread_crit_edge

if.end34.if.end123.thread_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123.thread

while.body.lr.ph:                                 ; preds = %if.end34
  %24 = getelementptr inbounds [5 x i16], ptr %fifo_values, i32 0, i32 1
  %25 = getelementptr inbounds [5 x i16], ptr %fifo_values, i32 0, i32 2
  %26 = getelementptr inbounds [5 x i16], ptr %fifo_values, i32 0, i32 3
  %27 = getelementptr inbounds [5 x i16], ptr %fifo_values, i32 0, i32 4
  %pending_fifo_footer39 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %timestamp.1241 = phi i64 [ %timestamp.0, %while.body.lr.ph ], [ 0, %cleanup.while.body_crit_edge ]
  %datums_from_fifo.0240 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %fifocnt.0239 = phi i16 [ %13, %while.body.lr.ph ], [ %fifocnt.2, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fifo_values) #8
  %28 = call ptr @memset(ptr %fifo_values, i32 255, i32 10)
  %29 = ptrtoint ptr %pending_fifo_footer39 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pending_fifo_footer39, align 4, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool40.not = icmp eq i8 %30, 0
  br i1 %tobool40.not, label %if.else42, label %while.body.if.end43_crit_edge

while.body.if.end43_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else42:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %fifo_values to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -21846, ptr %fifo_values, align 2
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %while.body.if.end43_crit_edge
  %toread.0 = phi i32 [ 8, %if.else42 ], [ 10, %while.body.if.end43_crit_edge ]
  %offset.0 = phi i32 [ 1, %if.else42 ], [ 0, %while.body.if.end43_crit_edge ]
  %32 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map, align 8
  %arrayidx45 = getelementptr [5 x i16], ptr %fifo_values, i32 0, i32 %offset.0
  %call46 = call i32 @regmap_bulk_read(ptr noundef %33, i32 noundef 60, ptr noundef %arrayidx45, i32 noundef %toread.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body50, label %if.end43.cleanup.thread_crit_edge

if.end43.cleanup.thread_crit_edge:                ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body50:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpu3050_trigger_handler, %if.then62)) #8
          to label %do.end76 [label %if.then62], !srcloc !204

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  %36 = ptrtoint ptr %fifo_values to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %fifo_values, align 2
  %conv65 = zext i16 %37 to i32
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %24, align 2
  %conv67 = zext i16 %39 to i32
  %40 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %25, align 2
  %conv69 = zext i16 %41 to i32
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %26, align 2
  %conv71 = zext i16 %43 to i32
  %44 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %27, align 2
  %conv73 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpu3050_trigger_handler.__UNIQUE_ID_ddebug290, ptr noundef %35, ptr noundef nonnull @.str.49, i32 noundef %conv65, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %conv71, i32 noundef %conv73) #8
  br label %do.end76

do.end76:                                         ; preds = %if.then62, %do.body50
  %call78 = call i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef %1, ptr noundef %24, i32 noundef 8, i64 noundef %timestamp.1241) #8
  %46 = trunc i32 %toread.0 to i16
  %conv80 = sub i16 %fifocnt.0239, %46
  %inc = add i32 %datums_from_fifo.0240, 1
  %47 = ptrtoint ptr %pending_fifo_footer39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %pending_fifo_footer39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %conv80)
  %cmp83 = icmp ult i16 %conv80, 8
  br i1 %cmp83, label %if.then85, label %do.end76.cleanup_crit_edge

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then85:                                        ; preds = %do.end76
  %48 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map, align 8
  %call87 = call i32 @regmap_bulk_read(ptr noundef %49, i32 noundef 58, ptr noundef nonnull %raw_fifocnt, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end91, label %if.then85.cleanup.thread_crit_edge

if.then85.cleanup.thread_crit_edge:               ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end91:                                         ; preds = %if.then85
  %50 = ptrtoint ptr %raw_fifocnt to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %raw_fifocnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %51)
  %cmp93 = icmp ult i16 %51, 8
  br i1 %cmp93, label %do.body96, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpu3050_trigger_handler, %cleanup.thread245)) #8
          to label %cleanup [label %cleanup.thread245], !srcloc !204

cleanup.thread245:                                ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %conv92.le = zext i16 %51 to i32
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpu3050_trigger_handler.__UNIQUE_ID_ddebug291, ptr noundef %53, ptr noundef nonnull @.str.50, i32 noundef %conv92.le) #8
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fifo_values) #8
  br label %if.end123

cleanup.thread:                                   ; preds = %if.then85.cleanup.thread_crit_edge, %if.end43.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fifo_values) #8
  br label %cleanup117.thread

cleanup:                                          ; preds = %do.body96, %if.end91.cleanup_crit_edge, %do.end76.cleanup_crit_edge
  %fifocnt.2 = phi i16 [ %51, %if.end91.cleanup_crit_edge ], [ %51, %do.body96 ], [ %conv80, %do.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fifo_values) #8
  %cmp37 = icmp ugt i16 %fifocnt.2, 8
  br i1 %cmp37, label %cleanup.while.body_crit_edge, label %cleanup.if.end123_crit_edge

cleanup.if.end123_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end123

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup117.thread:                                ; preds = %cleanup.thread, %do.end17, %if.then4.cleanup117.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_fifocnt) #8
  br label %cleanup155

if.end123.thread:                                 ; preds = %if.end34.if.end123.thread_crit_edge, %if.end20.if.end123.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_fifocnt) #8
  br label %if.end143

if.end123:                                        ; preds = %cleanup.if.end123_crit_edge, %cleanup.thread245
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_fifocnt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool124.not = icmp eq i32 %inc, 0
  br i1 %tobool124.not, label %if.end123.if.end143_crit_edge, label %do.body126

if.end123.if.end143_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

do.body126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mpu3050_trigger_handler, %if.then138)) #8
          to label %cleanup155 [label %if.then138], !srcloc !204

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mpu3050_trigger_handler.__UNIQUE_ID_ddebug292, ptr noundef %55, ptr noundef nonnull @.str.51, i32 noundef %inc) #8
  br label %cleanup155

if.end143:                                        ; preds = %if.end123.if.end143_crit_edge, %if.end123.thread, %if.end.if.end143_crit_edge
  %timestamp.4233 = phi i64 [ 0, %if.end123.if.end143_crit_edge ], [ %timestamp.0, %if.end.if.end143_crit_edge ], [ %timestamp.0, %if.end123.thread ]
  %map144 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %map144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map144, align 8
  %call145 = call i32 @regmap_bulk_read(ptr noundef %57, i32 noundef 27, ptr noundef nonnull %scan, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end152, label %do.end150

do.end150:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.40) #11
  br label %cleanup155

if.end152:                                        ; preds = %if.end143
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %scan_timestamp.i, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i, label %if.end152.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end152.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %63, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %timestamp.4233, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end152.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i214 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %scan) #8
  br label %cleanup155

cleanup155:                                       ; preds = %iio_push_to_buffers_with_timestamp.exit, %do.end150, %if.then138, %do.body126, %cleanup117.thread
  call void @mutex_unlock(ptr noundef %lock) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %65 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %66) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %scan) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_trigger_probe(ptr noundef %indio_dev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @iio_device_id(ptr noundef %indio_dev) #8
  %call2 = tail call ptr (ptr, ptr, ...) @devm_iio_trigger_alloc(ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef %3, i32 noundef %call1) #8
  %trig = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %trig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %trig, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.55, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %irq_opendrain = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %irq_opendrain to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %irq_opendrain, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %call8 = tail call ptr @irq_get_irq_data(i32 noundef %irq) #8
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call8, i32 0, i32 3
  %10 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %common.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i = and i32 %13, 15
  %14 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end31 [
    i32 1, label %do.end
    i32 2, label %sw.bb11
    i32 4, label %sw.bb16
    i32 8, label %sw.bb21
  ]

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.56) #11
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %irq_actl = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 12
  %15 = ptrtoint ptr %irq_actl to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %irq_actl, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.59) #11
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %irq_latch = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %irq_latch to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %irq_latch, align 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.62) #11
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %irq_latch22 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %irq_latch22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %irq_latch22, align 2
  %irq_actl23 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %irq_actl23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %irq_actl23, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.65) #11
  br label %sw.epilog

do.end31:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %and.i) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %sw.bb21, %sw.bb16, %sw.bb11, %do.end
  %irq_trig.0 = phi i32 [ 1, %do.end31 ], [ 8200, %sw.bb21 ], [ 8196, %sw.bb16 ], [ 2, %sw.bb11 ], [ 1, %do.end ]
  %irq_opendrain33 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %irq_opendrain33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %irq_opendrain33, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool34.not = icmp eq i8 %20, 0
  %or36 = or i32 %irq_trig.0, 128
  %spec.select = select i1 %tobool34.not, i32 %irq_trig.0, i32 %or36
  %21 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %trig, align 4
  %name39 = getelementptr inbounds %struct.iio_trigger, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name39, align 4
  %call41 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @mpu3050_irq_handler, ptr noundef nonnull @mpu3050_irq_thread, i32 noundef %spec.select, ptr noundef %24, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.71, i32 noundef %irq, i32 noundef %call41) #11
  br label %cleanup

if.end48:                                         ; preds = %sw.epilog
  %irq49 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %irq49 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %irq, ptr %irq49, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %trig, align 4
  %parent = getelementptr inbounds %struct.iio_trigger, ptr %31, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %parent, align 8
  %33 = load ptr, ptr %trig, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mpu3050_trigger_ops, ptr %33, align 8
  %35 = load ptr, ptr %trig, align 4
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %35, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %indio_dev, ptr %driver_data.i.i, align 4
  %37 = load ptr, ptr %trig, align 4
  %call56 = tail call i32 @__iio_trigger_register(ptr noundef %37, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trig, align 4
  %dev.i = getelementptr inbounds %struct.iio_trigger, ptr %39, i32 0, i32 4
  %call.i105 = tail call ptr @get_device(ptr noundef %dev.i) #8
  %owner.i = getelementptr inbounds %struct.iio_trigger, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %owner.i, align 4
  tail call void @__module_get(ptr noundef %41) #8
  %trig62 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 10
  %42 = ptrtoint ptr %trig62 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %trig62, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end48.cleanup_crit_edge, %do.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %do.end46 ], [ 0, %if.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call56, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mpu3050_power_down(ptr noundef %mpu3050) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 2
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %mpu3050 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpu3050, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.87) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 5
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mpu3050 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpu3050, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.90) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mpu3050_common_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !205
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !206
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !207
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #8
  %irq = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %pm_runtime_put_noidle.exit.if.end_crit_edge, label %if.then

pm_runtime_put_noidle.exit.if.end_crit_edge:      ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pm_runtime_put_noidle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_runtime_put_noidle.exit.if.end_crit_edge
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %map.i = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.87) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %regs.i = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 5
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.mpu3050_power_down.exit_crit_edge, label %do.end6.i

if.end.i.mpu3050_power_down.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mpu3050_power_down.exit

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.90) #11
  br label %mpu3050_power_down.exit

mpu3050_power_down.exit:                          ; preds = %do.end6.i, %if.end.i.mpu3050_power_down.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %map.i = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 62, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.87) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %regs.i = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 5
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regs.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.mpu3050_power_down.exit_crit_edge, label %do.end6.i

if.end.i.mpu3050_power_down.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mpu3050_power_down.exit

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.90) #11
  br label %mpu3050_power_down.exit

mpu3050_power_down.exit:                          ; preds = %do.end6.i, %if.end.i.mpu3050_power_down.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call2 = tail call fastcc i32 @mpu3050_power_up(ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @mpu3050_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 1
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %raw_val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_val) #8
  %2 = ptrtoint ptr %raw_val to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %raw_val, align 2, !annotation !201
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb2
    i32 12, label %sw.bb6
    i32 2, label %sw.bb8
    i32 0, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cond46 = icmp eq i32 %5, 9
  br i1 %cond46, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 23000, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %7 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cond = icmp eq i32 %8, 4
  br i1 %cond, label %sw.bb4, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %9 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_index, align 4
  %sub = add i32 %10, -1
  %arrayidx = getelementptr %struct.mpu3050, ptr %1, i32 0, i32 9, i32 %sub
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lpf.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lpf.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i = icmp eq i32 %15, 0
  %divisor.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %divisor.i, align 4
  %conv.i = zext i8 %17 to i16
  %add.i = add nuw nsw i16 %conv.i, 1
  %div.lhs.trunc.i = select i1 %cmp.i, i16 8000, i16 1000
  %div3.i = udiv i16 %div.lhs.trunc.i, %add.i
  %div.zext.i = zext i16 %div3.i to i32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.zext.i, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chan, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %20, label %sw.bb8.cleanup_crit_edge [
    i32 9, label %sw.bb10
    i32 4, label %sw.bb11
  ]

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1000, ptr %val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 280, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  %fullscale = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %fullscale to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fullscale, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @mpu3050_fs_precision, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx12, align 4
  %mul = shl i32 %27, 1
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %val, align 4
  %29 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65535, ptr %val2, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #8
  %lock = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %lpf1.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 7
  %32 = ptrtoint ptr %lpf1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lpf1.i, align 8
  %divisor2.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %divisor2.i, align 4
  store i32 0, ptr %lpf1.i, align 8
  store i8 0, ptr %divisor2.i, align 4
  %call.i74 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %1) #8
  %36 = ptrtoint ptr %lpf1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %lpf1.i, align 8
  %37 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %35, ptr %divisor2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not = icmp eq i32 %call.i74, 0
  br i1 %tobool.not, label %if.end, label %sw.bb14.out_read_raw_unlock_crit_edge

sw.bb14.out_read_raw_unlock_crit_edge:            ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_read_raw_unlock

if.end:                                           ; preds = %sw.bb14
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %39, label %if.end.out_read_raw_unlock_crit_edge [
    i32 9, label %sw.bb18
    i32 4, label %sw.bb25
  ]

if.end.out_read_raw_unlock_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_read_raw_unlock

sw.bb18:                                          ; preds = %if.end
  %map = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 8
  %call19 = call i32 @regmap_bulk_read(ptr noundef %42, i32 noundef 27, ptr noundef nonnull %raw_val, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end23, label %do.end

do.end:                                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.37) #11
  br label %out_read_raw_unlock

if.end23:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %raw_val to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %raw_val, align 2
  %conv24 = sext i16 %46 to i32
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv24, ptr %val, align 4
  br label %out_read_raw_unlock

sw.bb25:                                          ; preds = %if.end
  %map26 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %map26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map26, align 8
  %scan_index27 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %50 = ptrtoint ptr %scan_index27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_index27, align 4
  %add = add i32 %51, 27
  %call29 = call i32 @regmap_bulk_read(ptr noundef %49, i32 noundef %add, ptr noundef nonnull %raw_val, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end36, label %do.end34

do.end34:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.40) #11
  br label %out_read_raw_unlock

if.end36:                                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %raw_val to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %raw_val, align 2
  %conv37 = zext i16 %55 to i32
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv37, ptr %val, align 4
  br label %out_read_raw_unlock

out_read_raw_unlock:                              ; preds = %if.end36, %do.end34, %if.end23, %do.end, %if.end.out_read_raw_unlock_crit_edge, %sw.bb14.out_read_raw_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i74, %sw.bb14.out_read_raw_unlock_crit_edge ], [ %call29, %do.end34 ], [ 1, %if.end36 ], [ %call19, %do.end ], [ 1, %if.end23 ], [ -22, %if.end.out_read_raw_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 8
  %call.i75 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 12, i32 22
  %59 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store volatile i64 %call.i75, ptr %last_busy.i, align 8
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  %call.i76 = call i32 @__pm_runtime_suspend(ptr noundef %61, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %out_read_raw_unlock, %sw.bb11, %sw.bb10, %sw.bb8.cleanup_crit_edge, %sw.bb6, %sw.bb4, %sw.bb2.cleanup_crit_edge, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_read_raw_unlock ], [ 10, %sw.bb11 ], [ 10, %sw.bb10 ], [ 1, %sw.bb6 ], [ 1, %sw.bb4 ], [ 1, %sw.bb1 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %sw.bb8.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_val) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mpu3050_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 12, label %sw.bb36
    i32 2, label %sw.bb87
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.not = icmp eq i32 %4, 4
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv35 = trunc i32 %val to i16
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scan_index, align 4
  %sub = add i32 %6, -1
  %arrayidx = getelementptr %struct.mpu3050, ptr %1, i32 0, i32 9, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv35, ptr %arrayidx, align 2
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  %8 = add i32 %val, -8001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7997, i32 %8)
  %9 = icmp ult i32 %8, -7997
  br i1 %9, label %sw.bb36.cleanup_crit_edge, label %if.end42

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %val)
  %cmp43 = icmp ugt i32 %val, 1000
  %lpf = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 7
  br i1 %cmp43, label %if.then45, label %if.end63

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %lpf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lpf, align 8
  %11 = trunc i32 %val to i16
  %12 = lshr i16 %11, 1
  %div57182.lhs.trunc = add nuw nsw i16 %12, 8000
  %div57182183 = udiv i16 %div57182.lhs.trunc, %11
  %13 = trunc i16 %div57182183 to i8
  %conv62 = add nsw i8 %13, -1
  %divisor = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %divisor to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv62, ptr %divisor, align 4
  br label %cleanup

if.end63:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %lpf to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %lpf, align 8
  %16 = trunc i32 %val to i16
  %17 = lshr i16 %16, 1
  %div77186.lhs.trunc = add nuw nsw i16 %17, 1000
  %div77186187 = udiv i16 %div77186.lhs.trunc, %16
  %18 = trunc i16 %div77186187 to i8
  %conv85 = add i8 %18, -1
  %divisor86 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %divisor86 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv85, ptr %divisor86, align 4
  br label %cleanup

sw.bb87:                                          ; preds = %entry
  %20 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp89.not = icmp eq i32 %21, 4
  br i1 %cmp89.not, label %if.end92, label %sw.bb87.cleanup_crit_edge

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end92:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp93.not = icmp eq i32 %val, 0
  br i1 %cmp93.not, label %if.end96, label %if.then95

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %fullscale = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %fullscale to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %fullscale, align 4
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %val2)
  %cmp102 = icmp ult i32 %val2, 198
  br i1 %cmp102, label %if.then104, label %if.else

if.then104:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  %fullscale105 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %fullscale105 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %fullscale105, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 397, i32 %val2)
  %cmp111 = icmp ult i32 %val2, 397
  br i1 %cmp111, label %if.then113, label %if.else115

if.then113:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %fullscale114 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %fullscale114 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %fullscale114, align 4
  br label %cleanup

if.else115:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 793, i32 %val2)
  %cmp121 = icmp ult i32 %val2, 793
  %fullscale124 = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 6
  br i1 %cmp121, label %if.then123, label %if.else125

if.then123:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %fullscale124 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %fullscale124, align 4
  br label %cleanup

if.else125:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %fullscale124 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %fullscale124, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else125, %if.then123, %if.then113, %if.then104, %if.then95, %sw.bb87.cleanup_crit_edge, %if.end63, %if.then45, %sw.bb36.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then95 ], [ 0, %if.then45 ], [ 0, %if.end63 ], [ 0, %if.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %sw.bb87.cleanup_crit_edge ], [ 0, %if.then113 ], [ 0, %if.else125 ], [ 0, %if.then123 ], [ 0, %if.then104 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mpu3050_start_sampling(ptr nocapture noundef readonly %mpu3050) unnamed_addr #0 align 64 {
entry:
  %raw_val = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %raw_val) #8
  %map = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 2
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 62, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 62, i32 noundef 7, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool3.not = icmp eq i32 %call.i48, 0
  br i1 %tobool3.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %uglygep = getelementptr i8, ptr %mpu3050, i32 174
  %4 = call ptr @memcpy(ptr %raw_val, ptr %uglygep, i32 6)
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %call8 = call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %raw_val, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %for.body.preheader
  %7 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map, align 8
  %fullscale = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 6
  %9 = ptrtoint ptr %fullscale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fullscale, align 4
  %shl = shl i32 %10, 3
  %lpf = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 7
  %11 = ptrtoint ptr %lpf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lpf, align 8
  %or14 = or i32 %shl, %12
  %call15 = call i32 @regmap_write(ptr noundef %8, i32 noundef 22, i32 noundef %or14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %divisor = getelementptr inbounds %struct.mpu3050, ptr %mpu3050, i32 0, i32 8
  %15 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %divisor, align 4
  %conv = zext i8 %16 to i32
  %call20 = call i32 @regmap_write(ptr noundef %14, i32 noundef 21, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %lpf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lpf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %divisor, align 4
  %conv.i = zext i8 %20 to i16
  %add.i = add nuw nsw i16 %conv.i, 1
  %div.lhs.trunc.i = select i1 %cmp.i, i16 8000, i16 1000
  %div3.i = udiv i16 %div.lhs.trunc.i, %add.i
  %div49 = udiv i16 1000, %div3.i
  %narrow = add nuw nsw i16 %div49, 50
  %add = zext i16 %narrow to i32
  call void @msleep(i32 noundef %add) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end18.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i48, %if.end.cleanup_crit_edge ], [ %call8, %for.body.preheader.cleanup_crit_edge ], [ %call15, %if.end11.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %raw_val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @iio_trigger_using_own(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers_with_ts_unaligned(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %hw_irq_trigger = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_irq_trigger, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %lpf1.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %lpf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lpf1.i, align 8
  %divisor2.i = getelementptr inbounds %struct.mpu3050, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %divisor2.i, align 4
  store i32 0, ptr %lpf1.i, align 8
  store i8 0, ptr %divisor2.i, align 4
  %call.i5 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %1) #8
  %10 = ptrtoint ptr %lpf1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %lpf1.i, align 8
  %11 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %9, ptr %divisor2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i5, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %4 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_trigger_alloc(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %p, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %hw_irq_trigger = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_irq_trigger, align 8, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %hw_timestamp = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %hw_timestamp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call2, ptr %hw_timestamp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_irq_thread(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %p, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !201
  %map = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef 26, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.73) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @iio_trigger_poll_chained(ptr noundef %p) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 1, %if.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_trigger_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_poll_chained(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpu3050_drdy_trigger_set_state(ptr nocapture noundef readonly %trig, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.iio_trigger, ptr %trig, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !201
  br i1 %enable, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 23, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.75) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 8
  %call6 = call i32 @regmap_read(ptr noundef %10, i32 noundef 26, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %do.end11

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.78) #11
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.end.if.end13_crit_edge
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %call15 = call i32 @regmap_write(ptr noundef %14, i32 noundef 18, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.if.end22_crit_edge, label %do.end20

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.81) #11
  br label %if.end22

if.end22:                                         ; preds = %do.end20, %if.end13.if.end22_crit_edge
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %call24 = call i32 @regmap_write(ptr noundef %18, i32 noundef 61, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end22.if.end31_crit_edge, label %do.end29

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.45) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end29, %if.end22.if.end31_crit_edge
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %call.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %call.i123 = call i32 @__pm_runtime_suspend(ptr noundef %25, i32 noundef 13) #8
  %hw_irq_trigger = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 11
  %26 = ptrtoint ptr %hw_irq_trigger to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %hw_irq_trigger, align 8
  br label %cleanup

if.else:                                          ; preds = %entry
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %call.i124 = tail call i32 @__pm_runtime_resume(ptr noundef %28, i32 noundef 4) #8
  %hw_irq_trigger37 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %hw_irq_trigger37 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %hw_irq_trigger37, align 8
  %map38 = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %map38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map38, align 8
  %call39 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 18, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end42:                                         ; preds = %if.else
  %32 = ptrtoint ptr %map38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map38, align 8
  %call.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 61, i32 noundef 66, i32 noundef 66, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool45.not = icmp eq i32 %call.i125, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  %pending_fifo_footer = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 15
  %34 = ptrtoint ptr %pending_fifo_footer to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %pending_fifo_footer, align 4
  %35 = ptrtoint ptr %map38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map38, align 8
  %call49 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 18, i32 noundef 241) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end47
  %call53 = tail call fastcc i32 @mpu3050_start_sampling(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %37 = ptrtoint ptr %map38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map38, align 8
  %call58 = call i32 @regmap_read(ptr noundef %38, i32 noundef 26, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end56.if.end65_crit_edge, label %do.end63

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.78) #11
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end56.if.end65_crit_edge
  %irq_actl = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 12
  %41 = ptrtoint ptr %irq_actl to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %irq_actl, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool66.not = icmp eq i8 %42, 0
  %spec.store.select = select i1 %tobool66.not, i32 1, i32 129
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.store.select, ptr %val, align 4
  %irq_latch = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 13
  %44 = ptrtoint ptr %irq_latch to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %irq_latch, align 2, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool69.not = icmp eq i8 %45, 0
  br i1 %tobool69.not, label %if.end65.if.end72_crit_edge, label %if.then70

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %or71 = or i32 %spec.store.select, 32
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or71, ptr %val, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end65.if.end72_crit_edge
  %irq_opendrain = getelementptr inbounds %struct.mpu3050, ptr %3, i32 0, i32 14
  %47 = ptrtoint ptr %irq_opendrain to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %irq_opendrain, align 1, !range !203
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool73.not = icmp eq i8 %48, 0
  br i1 %tobool73.not, label %if.end72.if.end76_crit_edge, label %if.then74

if.end72.if.end76_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %or75 = or i32 %50, 64
  store i32 %or75, ptr %val, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %if.end72.if.end76_crit_edge
  %51 = ptrtoint ptr %map38 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map38, align 8
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %call78 = call i32 @regmap_write(ptr noundef %52, i32 noundef 23, i32 noundef %54) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end52.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end31
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call39, %if.else.cleanup_crit_edge ], [ %call.i125, %if.end42.cleanup_crit_edge ], [ %call49, %if.end47.cleanup_crit_edge ], [ %call53, %if.end52.cleanup_crit_edge ], [ %call78, %if.end76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !182, !183, !185, !186, !187, !188, !190, !191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @mpu3050_common_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1157, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1175, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mpu3050_common_probe._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @mpu3050_common_probe._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1185, i32 3}
!13 = !{ptr @mpu3050_common_probe._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mpu3050_common_probe._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1192, i32 3}
!17 = !{ptr @mpu3050_common_probe._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mpu3050_common_probe._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mpu3050_common_probe._entry.12, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1200, i32 3}
!21 = !{ptr @mpu3050_common_probe._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1205, i32 2}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mpu3050_common_probe._entry.14, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mpu3050_common_probe._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1223, i32 3}
!29 = !{ptr @mpu3050_common_probe._entry.18, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mpu3050_common_probe._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.22, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1229, i32 3}
!33 = !{ptr @mpu3050_common_probe._entry.21, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mpu3050_common_probe._entry_ptr.23, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1239, i32 4}
!37 = !{ptr @mpu3050_common_probe._entry.24, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mpu3050_common_probe._entry_ptr.26, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_mpu3050_common_probe, !40, !"__ksymtab_mpu3050_common_probe", i1 false, i1 false}
!40 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1264, i32 1}
!41 = !{ptr @__ksymtab_mpu3050_common_remove, !42, !"__ksymtab_mpu3050_common_remove", i1 false, i1 false}
!42 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1282, i32 1}
!43 = !{ptr @mpu3050_dev_pm_ops, !44, !"mpu3050_dev_pm_ops", i1 false, i1 false}
!44 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1296, i32 25}
!45 = !{ptr @__ksymtab_mpu3050_dev_pm_ops, !46, !"__ksymtab_mpu3050_dev_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1302, i32 1}
!47 = !{ptr @__UNIQUE_ID_author323, !48, !"__UNIQUE_ID_author323", i1 false, i1 false}
!48 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1304, i32 1}
!49 = !{ptr @__UNIQUE_ID_description324, !50, !"__UNIQUE_ID_description324", i1 false, i1 false}
!50 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1305, i32 1}
!51 = !{ptr @__UNIQUE_ID_file325, !52, !"__UNIQUE_ID_file325", i1 false, i1 false}
!52 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1306, i32 1}
!53 = !{ptr @__UNIQUE_ID_license326, !52, !"__UNIQUE_ID_license326", i1 false, i1 false}
!54 = !{ptr @mpu3050_reg_vdd, !55, !"mpu3050_reg_vdd", i1 false, i1 false}
!55 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 176, i32 19}
!56 = !{ptr @mpu3050_reg_vlogic, !57, !"mpu3050_reg_vlogic", i1 false, i1 false}
!57 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 177, i32 19}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 864, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @mpu3050_power_up._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @mpu3050_power_up._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 877, i32 3}
!65 = !{ptr @mpu3050_power_up._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mpu3050_power_up._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 839, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mpu3050_hw_init._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mpu3050_hw_init._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mpu3050_channels, !73, !"mpu3050_channels", i1 false, i1 false}
!73 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 711, i32 35}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 688, i32 2}
!76 = !{ptr @mpu3050_ext_info, !77, !"mpu3050_ext_info", i1 false, i1 false}
!77 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 687, i32 44}
!78 = !{ptr @mpu3050_info, !79, !"mpu3050_info", i1 false, i1 false}
!79 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 754, i32 30}
!80 = !{ptr @mpu3050_attribute_group, !81, !"mpu3050_attribute_group", i1 false, i1 false}
!81 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 750, i32 37}
!82 = !{ptr @mpu3050_attributes, !83, !"mpu3050_attributes", i1 false, i1 false}
!83 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 745, i32 26}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 739, i32 8}
!86 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @iio_const_attr_anglevel_scale_available, !85, !"iio_const_attr_anglevel_scale_available", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 336, i32 5}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @mpu3050_read_raw._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @mpu3050_read_raw._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 351, i32 5}
!95 = !{ptr @mpu3050_read_raw._entry.39, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mpu3050_read_raw._entry_ptr.41, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @mpu3050_fs_precision, !98, !"mpu3050_fs_precision", i1 false, i1 false}
!98 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 166, i32 21}
!99 = !{ptr @mpu3050_scan_masks, !100, !"mpu3050_scan_masks", i1 false, i1 false}
!100 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 733, i32 28}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 511, i32 4}
!103 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mpu3050_trigger_handler._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @mpu3050_trigger_handler._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 522, i32 5}
!108 = !{ptr @mpu3050_trigger_handler._entry.44, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @mpu3050_trigger_handler._entry_ptr.46, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 529, i32 4}
!112 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug289, !111, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 563, i32 4}
!116 = !{ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug290, !115, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 596, i32 5}
!119 = !{ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug291, !118, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 627, i32 3}
!122 = !{ptr @mpu3050_trigger_handler.__UNIQUE_ID_ddebug292, !121, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!123 = !{ptr @mpu3050_trigger_handler._entry.52, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 636, i32 3}
!125 = !{ptr @mpu3050_trigger_handler._entry_ptr.53, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @mpu3050_buffer_setup_ops, !127, !"mpu3050_buffer_setup_ops", i1 false, i1 false}
!127 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 673, i32 42}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1057, i32 13}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1064, i32 51}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1075, i32 3}
!134 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mpu3050_trigger_probe._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @mpu3050_trigger_probe._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1080, i32 3}
!139 = !{ptr @mpu3050_trigger_probe._entry.58, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @mpu3050_trigger_probe._entry_ptr.60, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1085, i32 3}
!143 = !{ptr @mpu3050_trigger_probe._entry.61, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mpu3050_trigger_probe._entry_ptr.63, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1098, i32 3}
!147 = !{ptr @mpu3050_trigger_probe._entry.64, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mpu3050_trigger_probe._entry_ptr.66, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1103, i32 3}
!151 = !{ptr @mpu3050_trigger_probe._entry.67, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @mpu3050_trigger_probe._entry_ptr.69, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1121, i32 3}
!155 = !{ptr @mpu3050_trigger_probe._entry.70, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @mpu3050_trigger_probe._entry_ptr.72, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 934, i32 3}
!159 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @mpu3050_irq_thread._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @mpu3050_irq_thread._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @mpu3050_trigger_ops, !163, !"mpu3050_trigger_ops", i1 false, i1 false}
!163 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1046, i32 37}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 965, i32 4}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mpu3050_drdy_trigger_set_state._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mpu3050_drdy_trigger_set_state._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 970, i32 4}
!171 = !{ptr @mpu3050_drdy_trigger_set_state._entry.77, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @mpu3050_drdy_trigger_set_state._entry_ptr.79, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 975, i32 4}
!175 = !{ptr @mpu3050_drdy_trigger_set_state._entry.80, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @mpu3050_drdy_trigger_set_state._entry_ptr.82, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @mpu3050_drdy_trigger_set_state._entry.83, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 980, i32 4}
!179 = !{ptr @mpu3050_drdy_trigger_set_state._entry_ptr.84, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @mpu3050_drdy_trigger_set_state._entry.85, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 1026, i32 4}
!182 = !{ptr @mpu3050_drdy_trigger_set_state._entry_ptr.86, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 899, i32 3}
!185 = !{ptr @.str.88, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @mpu3050_power_down._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @mpu3050_power_down._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.90, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/iio/gyro/mpu3050-core.c", i32 903, i32 3}
!190 = !{ptr @mpu3050_power_down._entry.89, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @mpu3050_power_down._entry_ptr.91, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{i64 2148253516, i64 2148253542, i64 2148253571, i64 2148253605, i64 2148253636, i64 2148253659}
!203 = !{i8 0, i8 2}
!204 = !{i64 2148820297, i64 2148820302, i64 2148820315, i64 2148820359, i64 2148820393, i64 2148820414}
!205 = !{i64 2148252935}
!206 = !{i64 737758, i64 737783, i64 737805, i64 737821, i64 737833, i64 737853, i64 737877, i64 737893, i64 737905}
!207 = !{i64 2148253123}
