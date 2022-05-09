; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/inv_mpu6050/inv_mpu_core.c_pt.bc'
source_filename = "../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+inv_mpu_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_inv_mpu_core_probe\09\09\09\09"
module asm "\09.long\09__crc_inv_mpu_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inv_mpu_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22inv_mpu_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_inv_mpu_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+inv_mpu_pmops\22, \22a\22\09"
module asm "\09.weak\09__crc_inv_mpu_pmops\09\09\09\09"
module asm "\09.long\09__crc_inv_mpu_pmops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_inv_mpu_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22inv_mpu_pmops\22\09\09\09\09\09"
module asm "__kstrtabns_inv_mpu_pmops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inv_mpu6050_hw = type { i8, ptr, ptr, ptr, i32, %struct.anon.79, %struct.anon.80 }
%struct.anon.79 = type { i32, i32 }
%struct.anon.80 = type { i32, i32 }
%struct.inv_mpu6050_reg_map = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.inv_mpu6050_state = type { %struct.mutex, ptr, %struct.inv_mpu6050_chip_config, ptr, ptr, i32, ptr, ptr, %struct.inv_mpu6050_platform_data, %struct.iio_mount_matrix, ptr, i32, i8, i32, i64, i64, i64, ptr, ptr, i8, [3 x i32], %struct.iio_mount_matrix, i32, [104 x i8], [32 x i8], [96 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inv_mpu6050_chip_config = type { [3 x i8], i8, i8, [3 x i8] }
%struct.inv_mpu6050_platform_data = type { [9 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@inv_mpu6050_switch_engine.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inv_mpu6050\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inv_mpu6050_switch_engine\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/iio/imu/inv_mpu6050/inv_mpu_core.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_mgmt_2: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 1453, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Bad invensense chip_type=%d name=%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inv_mpu_core_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr = internal global ptr @inv_mpu_core_probe._entry, section ".printk_index", align 4
@inv_mpu_core_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 1467, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to retrieve mounting matrix %d\0A\00", [57 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.11 = internal global ptr @inv_mpu_core_probe._entry.9, section ".printk_index", align 4
@inv_mpu_core_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 1477, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not find IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.14 = internal global ptr @inv_mpu_core_probe._entry.12, section ".printk_index", align 4
@inv_mpu_core_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 1501, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid interrupt type 0x%x specified\0A\00", [57 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.17 = internal global ptr @inv_mpu_core_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get vdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get vddio regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.2, i32 1517, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable vdd regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.24 = internal global ptr @inv_mpu_core_probe._entry.22, section ".printk_index", align 4
@inv_mpu_core_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.5, ptr @.str.2, i32 1532, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to setup regulator cleanup action %d\0A\00", [51 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.27 = internal global ptr @inv_mpu_core_probe._entry.25, section ".printk_index", align 4
@inv_mpu_core_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.2, i32 1548, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not initialize device.\0A\00", [34 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.30 = internal global ptr @inv_mpu_core_probe._entry.28, section ".printk_index", align 4
@inv_mpu9150_channels = internal constant { [11 x %struct.iio_chan_spec], [248 x i8] } { [11 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 10, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 4, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 5, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 6, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 7, %struct.anon.78 { i8 115, i8 13, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 8, %struct.anon.78 { i8 115, i8 13, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 9, %struct.anon.78 { i8 115, i8 13, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }], [248 x i8] zeroinitializer }, align 32
@inv_mpu9x50_scan_masks = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 7, i32 15, i32 112, i32 120, i32 896, i32 904, i32 119, i32 127, i32 903, i32 911, i32 1008, i32 1016, i32 1015, i32 1023, i32 0], [36 x i8] zeroinitializer }, align 32
@inv_mpu9250_channels = internal constant { [11 x %struct.iio_chan_spec], [248 x i8] } { [11 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 10, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 4, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 5, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 6, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 7, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 8, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 9, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }], [248 x i8] zeroinitializer }, align 32
@inv_mpu_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 7, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 0, i32 4, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 0, i32 5, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 0, i32 6, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 0, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 0, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 33, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @inv_ext_info, ptr null, ptr null, i8 -128 }], [160 x i8] zeroinitializer }, align 32
@inv_icm20602_scan_masks = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 15, i32 120, i32 127, i32 0], [16 x i8] zeroinitializer }, align 32
@inv_mpu_scan_masks = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 7, i32 15, i32 112, i32 120, i32 119, i32 127, i32 0], [36 x i8] zeroinitializer }, align 32
@mpu_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @inv_attribute_group, ptr @inv_mpu6050_read_raw, ptr null, ptr null, ptr @inv_mpu6050_write_raw, ptr null, ptr @inv_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr @inv_mpu6050_validate_trigger, ptr null, ptr @inv_mpu6050_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.5, ptr @.str.2, i32 1624, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"configure buffer fail %d\0A\00", [38 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.33 = internal global ptr @inv_mpu_core_probe._entry.31, section ".printk_index", align 4
@inv_mpu_core_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.2, i32 1630, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trigger probe fail %d\0A\00", [41 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.36 = internal global ptr @inv_mpu_core_probe._entry.34, section ".printk_index", align 4
@inv_mpu_core_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.5, ptr @.str.2, i32 1637, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IIO register fail %d\0A\00", [42 x i8] zeroinitializer }, align 32
@inv_mpu_core_probe._entry_ptr.39 = internal global ptr @inv_mpu_core_probe._entry.37, section ".printk_index", align 4
@__kstrtab_inv_mpu_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_inv_mpu_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_inv_mpu_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inv_mpu_core_probe to i32), ptr @__kstrtab_inv_mpu_core_probe, ptr @__kstrtabns_inv_mpu_core_probe }, section "___ksymtab_gpl+inv_mpu_core_probe", align 4
@inv_mpu_pmops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @inv_mpu_suspend, ptr @inv_mpu_resume, ptr @inv_mpu_suspend, ptr @inv_mpu_resume, ptr @inv_mpu_suspend, ptr @inv_mpu_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inv_mpu_runtime_suspend, ptr @inv_mpu_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_inv_mpu_pmops = external dso_local constant [0 x i8], align 1
@__kstrtabns_inv_mpu_pmops = external dso_local constant [0 x i8], align 1
@__ksymtab_inv_mpu_pmops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @inv_mpu_pmops to i32), ptr @__kstrtab_inv_mpu_pmops, ptr @__kstrtabns_inv_mpu_pmops }, section "___ksymtab_gpl+inv_mpu_pmops", align 4
@__UNIQUE_ID_author292 = internal constant [42 x i8] c"inv_mpu6050.author=Invensense Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description293 = internal constant [57 x i8] c"inv_mpu6050.description=Invensense device MPU6050 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [57 x i8] c"inv_mpu6050.file=drivers/iio/imu/inv_mpu6050/inv-mpu6050\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [24 x i8] c"inv_mpu6050.license=GPL\00", section ".modinfo", align 1
@inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inv_mpu6050_pwr_mgmt_1_write\00", [35 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwr_mgmt_1: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@inv_mpu_core_enable_regulator_vddio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to enable vddio regulator: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"inv_mpu_core_enable_regulator_vddio\00", [60 x i8] zeroinitializer }, align 32
@inv_mpu_core_enable_regulator_vddio._entry_ptr = internal global ptr @inv_mpu_core_enable_regulator_vddio._entry, section ".printk_index", align 4
@inv_mpu_core_disable_regulator_action._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1423, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to disable vdd regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"inv_mpu_core_disable_regulator_action\00", [58 x i8] zeroinitializer }, align 32
@inv_mpu_core_disable_regulator_action._entry_ptr = internal global ptr @inv_mpu_core_disable_regulator_action._entry, section ".printk_index", align 4
@inv_mpu_core_disable_regulator_vddio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1410, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to disable vddio regulator: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"inv_mpu_core_disable_regulator_vddio\00", [59 x i8] zeroinitializer }, align 32
@inv_mpu_core_disable_regulator_vddio._entry_ptr = internal global ptr @inv_mpu_core_disable_regulator_vddio._entry, section ".printk_index", align 4
@hw_info = internal constant { [14 x %struct.inv_mpu6050_hw], [104 x i8] } { [14 x %struct.inv_mpu6050_hw] [%struct.inv_mpu6050_hw { i8 104, ptr @.str.54, ptr @reg_set_6050, ptr @chip_config_6050, i32 1024, %struct.anon.79 { i32 12420, i32 2941176 }, %struct.anon.80 { i32 60, i32 20 } }, %struct.inv_mpu6050_hw { i8 112, ptr @.str.55, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 7011, i32 2995178 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 116, ptr @.str.56, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 7011, i32 2995178 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 120, ptr @.str.57, ptr @reg_set_6500, ptr @chip_config_6500, i32 4096, %struct.anon.79 { i32 7011, i32 2995178 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 104, ptr @.str.58, ptr @reg_set_6050, ptr @chip_config_6050, i32 1024, %struct.anon.79 { i32 12420, i32 2941176 }, %struct.anon.80 { i32 60, i32 20 } }, %struct.inv_mpu6050_hw { i8 104, ptr @.str.59, ptr @reg_set_6050, ptr @chip_config_6050, i32 1024, %struct.anon.79 { i32 12420, i32 2941176 }, %struct.anon.80 { i32 60, i32 20 } }, %struct.inv_mpu6050_hw { i8 113, ptr @.str.60, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 7011, i32 2995178 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 115, ptr @.str.61, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 7011, i32 2995178 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 -81, ptr @.str.62, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 -90, ptr @.str.63, ptr @reg_set_6500, ptr @chip_config_6500, i32 4096, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 -104, ptr @.str.64, ptr @reg_set_6500, ptr @chip_config_6500, i32 4096, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 70, i32 30 } }, %struct.inv_mpu6050_hw { i8 18, ptr @.str.65, ptr @reg_set_icm20602, ptr @chip_config_6500, i32 1008, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 100, i32 20 } }, %struct.inv_mpu6050_hw { i8 32, ptr @.str.66, ptr @reg_set_6500, ptr @chip_config_6500, i32 1024, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 80, i32 10 } }, %struct.inv_mpu6050_hw { i8 -87, ptr @.str.67, ptr @reg_set_6500, ptr @chip_config_6500, i32 512, %struct.anon.79 { i32 8170, i32 3059976 }, %struct.anon.80 { i32 70, i32 30 } }], [104 x i8] zeroinitializer }, align 32
@inv_check_and_setup_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1327, ptr @.str.50, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"whoami mismatch got 0x%02x (%s) expected 0x%02x (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"inv_check_and_setup_chip\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@inv_check_and_setup_chip._entry_ptr = internal global ptr @inv_check_and_setup_chip._entry, section ".printk_index", align 4
@inv_check_and_setup_chip._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.2, i32 1334, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid whoami 0x%02x expected 0x%02x (%s)\0A\00", [52 x i8] zeroinitializer }, align 32
@inv_check_and_setup_chip._entry_ptr.53 = internal global ptr @inv_check_and_setup_chip._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU6050\00", [24 x i8] zeroinitializer }, align 32
@reg_set_6050 = internal constant { %struct.inv_mpu6050_reg_map, [44 x i8] } { %struct.inv_mpu6050_reg_map { i8 25, i8 26, i8 0, i8 106, i8 35, i8 27, i8 28, i8 114, i8 116, i8 67, i8 59, i8 65, i8 56, i8 0, i8 107, i8 108, i8 55, i8 6, i8 19, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU6500\00", [24 x i8] zeroinitializer }, align 32
@reg_set_6500 = internal constant { %struct.inv_mpu6050_reg_map, [44 x i8] } { %struct.inv_mpu6050_reg_map { i8 25, i8 26, i8 29, i8 106, i8 35, i8 27, i8 28, i8 114, i8 116, i8 67, i8 59, i8 65, i8 56, i8 58, i8 107, i8 108, i8 55, i8 119, i8 19, i8 0 }, [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU6515\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU6880\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU6000\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU9150\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU9250\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MPU9255\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICM20608\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICM20609\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICM20689\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICM20602\00", [23 x i8] zeroinitializer }, align 32
@reg_set_icm20602 = internal constant { %struct.inv_mpu6050_reg_map, [44 x i8] } { %struct.inv_mpu6050_reg_map { i8 25, i8 26, i8 29, i8 106, i8 35, i8 27, i8 28, i8 114, i8 116, i8 67, i8 59, i8 65, i8 56, i8 58, i8 107, i8 108, i8 55, i8 119, i8 19, i8 112 }, [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ICM20690\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IAM20680\00", [23 x i8] zeroinitializer }, align 32
@chip_config_6050 = internal constant { { i8, i8, i8, i8, i8, [3 x i8] }, [24 x i8] } { { i8, i8, i8, i8, i8, [3 x i8] } { i8 28, i8 56, i8 0, i8 19, i8 0, [3 x i8] undef }, [24 x i8] zeroinitializer }, align 32
@chip_config_6500 = internal constant { { i8, i8, i8, i8, i8, [3 x i8] }, [24 x i8] } { { i8, i8, i8, i8, i8, [3 x i8] } { i8 60, i8 56, i8 0, i8 19, i8 0, [3 x i8] undef }, [24 x i8] zeroinitializer }, align 32
@inv_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.70, i32 1, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @inv_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@inv_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @inv_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@inv_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @iio_dev_attr_in_gyro_matrix, ptr @iio_dev_attr_in_accel_matrix, ptr @iio_dev_attr_sampling_frequency, ptr getelementptr (i8, ptr @iio_const_attr_sampling_frequency_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_accel_scale_available, i64 4), ptr getelementptr (i8, ptr @iio_const_attr_in_anglvel_scale_available, i64 4), ptr null], [36 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_gyro_matrix = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inv_attr_show, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_matrix = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inv_attr_show, ptr null }, i64 1, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inv_fifo_rate_show, ptr @inv_mpu6050_fifo_rate_store }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_const_attr_sampling_frequency_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.76, %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_accel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.78, %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_const_attr_in_anglvel_scale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.80, %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in_gyro_matrix\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%d, %d, %d; %d, %d, %d; %d, %d, %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in_accel_matrix\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sampling_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@inv_mpu6050_set_lpf.d = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"10 20 50 100 200 500\00", [43 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"0.000598 0.001196 0.002392 0.004785\00", [60 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"0.000133090 0.000266181 0.000532362 0.001064724\00", [48 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@gyro_scale_6050 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 133090, i32 266181, i32 532362, i32 1064724], [16 x i8] zeroinitializer }, align 32
@accel_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 598, i32 1196, i32 2392, i32 4785], [16 x i8] zeroinitializer }, align 32
@switch.table.inv_mpu_core_probe = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @inv_mpu9150_channels, ptr @inv_mpu9250_channels, ptr @inv_mpu9250_channels, ptr @inv_mpu_channels, ptr @inv_mpu_channels, ptr @inv_mpu_channels, ptr @inv_mpu_channels], [36 x i8] zeroinitializer }, align 32
@switch.table.inv_mpu_core_probe.82 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 11, i32 11, i32 11, i32 8, i32 8, i32 8, i32 8], [36 x i8] zeroinitializer }, align 32
@switch.table.inv_mpu_core_probe.83 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @inv_mpu9x50_scan_masks, ptr @inv_mpu9x50_scan_masks, ptr @inv_mpu9x50_scan_masks, ptr @inv_mpu_scan_masks, ptr @inv_mpu_scan_masks, ptr @inv_mpu_scan_masks, ptr @inv_icm20602_scan_masks], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 18, i64 32, i64 104, i64 112, i64 113, i64 115, i64 116, i64 120, i64 152, i64 166, i64 169, i64 175]
@__sancov_gen_cov_switch_values.87 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 9]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 9]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.96 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.97 = internal global [6 x i64] [i64 4, i64 32, i64 133090, i64 266181, i64 532362, i64 1064724]
@__sancov_gen_cov_switch_values.98 = internal global [6 x i64] [i64 4, i64 32, i64 598, i64 1196, i64 2392, i64 4785]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 382, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1452, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1457, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1466, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1477, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1500, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1505, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1508, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1510, i32 45 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1513, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1517, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1531, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1548, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"inv_mpu9150_channels\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1154, i32 35 }
@___asan_gen_.183 = private unnamed_addr constant [23 x i8] c"inv_mpu9x50_scan_masks\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1197, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant [21 x i8] c"inv_mpu9250_channels\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1173, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"inv_mpu_channels\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1096, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant [24 x i8] c"inv_icm20602_scan_masks\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1228, i32 28 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"inv_mpu_scan_masks\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1122, i32 28 }
@___asan_gen_.198 = private unnamed_addr constant [9 x i8] c"mpu_info\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1293, i32 30 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1624, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1630, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1637, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"inv_mpu_pmops\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1761, i32 25 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 283, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1393, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1422, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1409, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant [8 x i8] c"hw_info\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 138, i32 36 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1324, i32 5 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1332, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 141, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant [13 x i8] c"reg_set_6050\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 82, i32 41 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 150, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant [13 x i8] c"reg_set_6500\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 59, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 159, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 168, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 177, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 186, i32 11 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 195, i32 11 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 204, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 213, i32 11 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 222, i32 11 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 231, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 240, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"reg_set_icm20602\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 36, i32 41 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 249, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 258, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"chip_config_6050\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 103, i32 45 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"chip_config_6500\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 120, i32 45 }
@___asan_gen_.333 = private unnamed_addr constant [13 x i8] c"inv_ext_info\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1056, i32 44 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1057, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c"inv_attribute_group\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1271, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant [15 x i8] c"inv_attributes\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1261, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant [28 x i8] c"iio_dev_attr_in_gyro_matrix\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_in_accel_matrix\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_sampling_frequency\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [44 x i8] c"iio_const_attr_sampling_frequency_available\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [40 x i8] c"iio_const_attr_in_accel_scale_available\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [42 x i8] c"iio_const_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1256, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1014, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1258, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1252, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 986, i32 35 }
@___asan_gen_.378 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 890, i32 19 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1247, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1250, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 1248, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant [16 x i8] c"gyro_scale_6050\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 28, i32 18 }
@___asan_gen_.402 = private unnamed_addr constant [12 x i8] c"accel_scale\00", align 1
@___asan_gen_.403 = private constant [46 x i8] c"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.403, i32 34, i32 18 }
@___asan_gen_.405 = private unnamed_addr constant [32 x i8] c"switch.table.inv_mpu_core_probe\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [35 x i8] c"switch.table.inv_mpu_core_probe.82\00", align 1
@___asan_gen_.407 = private unnamed_addr constant [35 x i8] c"switch.table.inv_mpu_core_probe.83\00", align 1
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_inv_mpu_core_probe, ptr @__ksymtab_inv_mpu_pmops, ptr @inv_check_and_setup_chip._entry, ptr @inv_check_and_setup_chip._entry.51, ptr @inv_check_and_setup_chip._entry_ptr, ptr @inv_check_and_setup_chip._entry_ptr.53, ptr @inv_mpu_core_disable_regulator_action._entry, ptr @inv_mpu_core_disable_regulator_action._entry_ptr, ptr @inv_mpu_core_disable_regulator_vddio._entry, ptr @inv_mpu_core_disable_regulator_vddio._entry_ptr, ptr @inv_mpu_core_enable_regulator_vddio._entry, ptr @inv_mpu_core_enable_regulator_vddio._entry_ptr, ptr @inv_mpu_core_probe._entry, ptr @inv_mpu_core_probe._entry.12, ptr @inv_mpu_core_probe._entry.15, ptr @inv_mpu_core_probe._entry.22, ptr @inv_mpu_core_probe._entry.25, ptr @inv_mpu_core_probe._entry.28, ptr @inv_mpu_core_probe._entry.31, ptr @inv_mpu_core_probe._entry.34, ptr @inv_mpu_core_probe._entry.37, ptr @inv_mpu_core_probe._entry.9, ptr @inv_mpu_core_probe._entry_ptr, ptr @inv_mpu_core_probe._entry_ptr.11, ptr @inv_mpu_core_probe._entry_ptr.14, ptr @inv_mpu_core_probe._entry_ptr.17, ptr @inv_mpu_core_probe._entry_ptr.24, ptr @inv_mpu_core_probe._entry_ptr.27, ptr @inv_mpu_core_probe._entry_ptr.30, ptr @inv_mpu_core_probe._entry_ptr.33, ptr @inv_mpu_core_probe._entry_ptr.36, ptr @inv_mpu_core_probe._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @inv_mpu_core_probe.__key, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @inv_mpu9150_channels, ptr @inv_mpu9x50_scan_masks, ptr @inv_mpu9250_channels, ptr @inv_mpu_channels, ptr @inv_icm20602_scan_masks, ptr @inv_mpu_scan_masks, ptr @mpu_info, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @inv_mpu_pmops, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @hw_info, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @reg_set_6050, ptr @.str.55, ptr @reg_set_6500, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @reg_set_icm20602, ptr @.str.66, ptr @.str.67, ptr @chip_config_6050, ptr @chip_config_6500, ptr @inv_ext_info, ptr @.str.70, ptr @inv_attribute_group, ptr @inv_attributes, ptr @iio_dev_attr_in_gyro_matrix, ptr @iio_dev_attr_in_accel_matrix, ptr @iio_dev_attr_sampling_frequency, ptr @iio_const_attr_sampling_frequency_available, ptr @iio_const_attr_in_accel_scale_available, ptr @iio_const_attr_in_anglvel_scale_available, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @inv_mpu6050_set_lpf.d, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @gyro_scale_6050, ptr @accel_scale, ptr @switch.table.inv_mpu_core_probe, ptr @switch.table.inv_mpu_core_probe.82, ptr @switch.table.inv_mpu_core_probe.83], section "llvm.metadata"
@0 = internal global [105 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu9150_channels to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu9x50_scan_masks to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu9250_channels to i32), i32 968, i32 1216, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_icm20602_scan_masks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_scan_masks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_pmops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_enable_regulator_vddio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_disable_regulator_action._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu_core_disable_regulator_vddio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_info to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_check_and_setup_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_check_and_setup_chip._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_6050 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_6500 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_set_icm20602 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_config_6050 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_config_6500 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_gyro_matrix to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_matrix to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_sampling_frequency_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_accel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_in_anglvel_scale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inv_mpu6050_set_lpf.d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyro_scale_6050 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @accel_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_mpu_core_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_mpu_core_probe.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inv_mpu_core_probe.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu6050_switch_engine(ptr noundef %st, i1 noundef zeroext %en, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %1 = and i24 %bf.load, 8192
  %2 = icmp eq i24 %1, 0
  %cmp = xor i1 %2, %en
  %and3 = and i32 %mask, -2
  %spec.select = select i1 %cmp, i32 %and3, i32 %mask
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %mask.addr.0 = phi i32 [ %mask, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %and4 = and i32 %mask.addr.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end18_crit_edge, label %land.lhs.true6

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true6:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config9 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %3 = ptrtoint ptr %chip_config9 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 3)
  %bf.load10 = load i24, ptr %chip_config9, align 32
  %4 = and i24 %bf.load10, 4096
  %5 = icmp eq i24 %4, 0
  %cmp14 = xor i1 %5, %en
  %and17 = and i32 %mask.addr.0, -3
  %spec.select343 = select i1 %cmp14, i32 %and17, i32 %mask.addr.0
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true6, %if.end.if.end18_crit_edge
  %mask.addr.1 = phi i32 [ %mask.addr.0, %if.end.if.end18_crit_edge ], [ %spec.select343, %land.lhs.true6 ]
  %and19 = and i32 %mask.addr.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end33_crit_edge, label %land.lhs.true21

if.end18.if.end33_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true21:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config24 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %6 = ptrtoint ptr %chip_config24 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 3)
  %bf.load25 = load i24, ptr %chip_config24, align 32
  %7 = and i24 %bf.load25, 2048
  %8 = icmp eq i24 %7, 0
  %cmp29 = xor i1 %8, %en
  %and32 = and i32 %mask.addr.1, -5
  %spec.select344 = select i1 %cmp29, i32 %and32, i32 %mask.addr.1
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true21, %if.end18.if.end33_crit_edge
  %mask.addr.2 = phi i32 [ %mask.addr.1, %if.end18.if.end33_crit_edge ], [ %spec.select344, %land.lhs.true21 ]
  %and34 = and i32 %mask.addr.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end33.if.end48_crit_edge, label %land.lhs.true36

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true36:                                  ; preds = %if.end33
  %chip_config39 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %9 = ptrtoint ptr %chip_config39 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 3)
  %bf.load40 = load i24, ptr %chip_config39, align 32
  %10 = and i24 %bf.load40, 1024
  %11 = icmp eq i24 %10, 0
  %cmp44 = xor i1 %11, %en
  %and47 = and i32 %mask.addr.2, -9
  br i1 %cmp44, label %land.lhs.true36.if.end48_crit_edge, label %land.lhs.true36.if.end52_crit_edge

land.lhs.true36.if.end52_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

land.lhs.true36.if.end48_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %land.lhs.true36.if.end48_crit_edge, %if.end33.if.end48_crit_edge
  %mask.addr.3 = phi i32 [ %mask.addr.2, %if.end33.if.end48_crit_edge ], [ %and47, %land.lhs.true36.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask.addr.3)
  %cmp49 = icmp eq i32 %mask.addr.3, 0
  br i1 %cmp49, label %if.end48.cleanup_crit_edge, label %if.end48.if.end52_crit_edge

if.end48.if.end52_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48.if.end52_crit_edge, %land.lhs.true36.if.end52_crit_edge
  %mask.addr.3378 = phi i32 [ %mask.addr.3, %if.end48.if.end52_crit_edge ], [ %mask.addr.2, %land.lhs.true36.if.end52_crit_edge ]
  %and53 = and i32 %mask.addr.3378, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.end65_crit_edge, label %if.then55

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then55:                                        ; preds = %if.end52
  %chip_config.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %12 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 3)
  %bf.load.i = load i24, ptr %chip_config.i, align 32
  %bf.lshr.i = lshr i24 %bf.load.i, 21
  %13 = trunc i24 %bf.lshr.i to i8
  %14 = or i8 %13, 8
  %spec.select.i = select i1 %en, i8 %13, i8 %14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu6050_switch_engine, %if.then26.i)) #8
          to label %inv_mpu6050_pwr_mgmt_1_write.exit [label %if.then26.i], !srcloc !206

if.then26.i:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 4
  %call27.i = tail call ptr @regmap_get_device(ptr noundef %16) #8
  %conv28.i = zext i8 %spec.select.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i, ptr noundef nonnull @.str.41, i32 noundef %conv28.i) #8
  br label %inv_mpu6050_pwr_mgmt_1_write.exit

inv_mpu6050_pwr_mgmt_1_write.exit:                ; preds = %if.then26.i, %if.then55
  %map30.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %17 = ptrtoint ptr %map30.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map30.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg.i, align 8
  %pwr_mgmt_1.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %pwr_mgmt_1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pwr_mgmt_1.i, align 1
  %conv31.i = zext i8 %22 to i32
  %conv32.i = zext i8 %spec.select.i to i32
  %call33.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %conv31.i, i32 noundef %conv32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool57.not = icmp eq i32 %call33.i, 0
  br i1 %tobool57.not, label %if.end59, label %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge

inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge: ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 3)
  %bf.load63 = load i24, ptr %chip_config.i, align 32
  %bf.shl = select i1 %en, i24 2048, i24 0
  %bf.clear64 = and i24 %bf.load63, -2049
  %bf.set = or i24 %bf.clear64, %bf.shl
  store i24 %bf.set, ptr %chip_config.i, align 32
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.end52.if.end65_crit_edge
  %and66 = and i32 %mask.addr.3378, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end97_crit_edge, label %if.then68

if.end65.if.end97_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then68:                                        ; preds = %if.end65
  %user_ctrl70 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %user_ctrl70 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %user_ctrl70, align 4
  %26 = and i8 %25, -33
  %masksel = select i1 %en, i8 32, i8 0
  %user_ctrl.0 = or i8 %26, %masksel
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg, align 8
  %user_ctrl79 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %user_ctrl79 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %user_ctrl79, align 1
  %conv80 = zext i8 %32 to i32
  %conv81 = zext i8 %user_ctrl.0 to i32
  %call82 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %conv80, i32 noundef %conv81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end85:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config69 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %33 = ptrtoint ptr %user_ctrl70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %user_ctrl.0, ptr %user_ctrl70, align 4
  %34 = ptrtoint ptr %chip_config69 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 3)
  %bf.load91 = load i24, ptr %chip_config69, align 32
  %bf.shl93 = select i1 %en, i24 1024, i24 0
  %bf.clear94 = and i24 %bf.load91, -1025
  %bf.set95 = or i24 %bf.clear94, %bf.shl93
  store i24 %bf.set95, ptr %chip_config69, align 32
  br label %if.end97

if.end97:                                         ; preds = %if.end85, %if.end65.if.end97_crit_edge
  %and98 = and i32 %mask.addr.3378, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.then100

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then100:                                       ; preds = %if.end97
  %chip_config101 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %35 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 3)
  %bf.load102 = load i24, ptr %chip_config101, align 32
  %36 = and i24 %bf.load102, 8192
  %tobool106.not = icmp eq i24 %36, 0
  %spec.select346 = select i1 %tobool106.not, i8 56, i8 0
  %37 = and i24 %bf.load102, 4096
  %tobool117.not = icmp eq i24 %37, 0
  %38 = or i8 %spec.select346, 7
  %pwr_mgmt2.1 = select i1 %tobool117.not, i8 %38, i8 %spec.select346
  %and123 = and i32 %mask.addr.3378, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.end136, label %if.then125

if.then125:                                       ; preds = %if.then100
  br i1 %en, label %if.end136.thread390, label %if.end136.thread

if.end136:                                        ; preds = %if.then100
  %and137 = and i32 %mask.addr.3378, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.do.body_crit_edge, label %if.then139

if.end136.do.body_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end136.thread390:                              ; preds = %if.then125
  %39 = and i8 %pwr_mgmt2.1, 7
  %and137392 = and i32 %mask.addr.3378, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137392)
  %tobool138.not393 = icmp eq i32 %and137392, 0
  br i1 %tobool138.not393, label %if.end136.thread390.do.body_crit_edge, label %if.end136.thread390.if.then141_crit_edge

if.end136.thread390.if.then141_crit_edge:         ; preds = %if.end136.thread390
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

if.end136.thread390.do.body_crit_edge:            ; preds = %if.end136.thread390
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end136.thread:                                 ; preds = %if.then125
  %40 = or i8 %pwr_mgmt2.1, 56
  %and137380 = and i32 %mask.addr.3378, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137380)
  %tobool138.not381 = icmp eq i32 %and137380, 0
  br i1 %tobool138.not381, label %if.end136.thread.do.body_crit_edge, label %if.end136.thread.if.then155_crit_edge

if.end136.thread.if.then155_crit_edge:            ; preds = %if.end136.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then155

if.end136.thread.do.body_crit_edge:               ; preds = %if.end136.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then139:                                       ; preds = %if.end136
  br i1 %en, label %if.then139.if.then141_crit_edge, label %if.then139.if.then155_crit_edge

if.then139.if.then155_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then155

if.then139.if.then141_crit_edge:                  ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then141

if.then141:                                       ; preds = %if.then139.if.then141_crit_edge, %if.end136.thread390.if.then141_crit_edge
  %pwr_mgmt2.2382398 = phi i8 [ %pwr_mgmt2.1, %if.then139.if.then141_crit_edge ], [ %39, %if.end136.thread390.if.then141_crit_edge ]
  %41 = and i8 %pwr_mgmt2.2382398, -8
  br label %do.body

if.then155:                                       ; preds = %if.then139.if.then155_crit_edge, %if.end136.thread.if.then155_crit_edge
  %pwr_mgmt2.2382389 = phi i8 [ %pwr_mgmt2.1, %if.then139.if.then155_crit_edge ], [ %40, %if.end136.thread.if.then155_crit_edge ]
  %42 = or i8 %pwr_mgmt2.2382389, 7
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %43 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chip_type.i, align 16
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %44, label %if.then155.do.body_crit_edge [
    i32 0, label %if.then155.sw.bb.i_crit_edge
    i32 4, label %if.then155.sw.bb.i_crit_edge424
    i32 5, label %if.then155.sw.bb.i_crit_edge425
  ]

if.then155.sw.bb.i_crit_edge425:                  ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then155.sw.bb.i_crit_edge424:                  ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then155.sw.bb.i_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then155.do.body_crit_edge:                     ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb.i:                                          ; preds = %if.then155.sw.bb.i_crit_edge, %if.then155.sw.bb.i_crit_edge424, %if.then155.sw.bb.i_crit_edge425
  %46 = lshr i24 %bf.load102, 8
  %47 = trunc i24 %46 to i8
  %48 = and i8 %47, 8
  %49 = xor i8 %48, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu6050_switch_engine, %if.then26.i.i)) #8
          to label %inv_mpu6050_pwr_mgmt_1_write.exit.i [label %if.then26.i.i], !srcloc !206

if.then26.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %map.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %50 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i.i, align 4
  %call27.i.i = tail call ptr @regmap_get_device(ptr noundef %51) #8
  %conv28.i.i = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i.i, ptr noundef nonnull @.str.41, i32 noundef %conv28.i.i) #8
  br label %inv_mpu6050_pwr_mgmt_1_write.exit.i

inv_mpu6050_pwr_mgmt_1_write.exit.i:              ; preds = %if.then26.i.i, %sw.bb.i
  %map30.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %52 = ptrtoint ptr %map30.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map30.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %54 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg.i.i, align 8
  %pwr_mgmt_1.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %pwr_mgmt_1.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pwr_mgmt_1.i.i, align 1
  %conv31.i.i = zext i8 %57 to i32
  %conv32.i.i = zext i8 %49 to i32
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool.not.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %inv_mpu6050_pwr_mgmt_1_write.exit.i.cleanup_crit_edge

inv_mpu6050_pwr_mgmt_1_write.exit.i.cleanup_crit_edge: ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 3)
  %bf.load.i351 = load i24, ptr %chip_config101, align 32
  %bf.clear.i = and i24 %bf.load.i351, 2097151
  store i24 %bf.clear.i, ptr %chip_config101, align 32
  br label %do.body

do.body:                                          ; preds = %if.end.i, %if.then155.do.body_crit_edge, %if.then141, %if.end136.thread.do.body_crit_edge, %if.end136.thread390.do.body_crit_edge, %if.end136.do.body_crit_edge
  %pwr_mgmt2.3403 = phi i8 [ %39, %if.end136.thread390.do.body_crit_edge ], [ %40, %if.end136.thread.do.body_crit_edge ], [ %pwr_mgmt2.1, %if.end136.do.body_crit_edge ], [ %41, %if.then141 ], [ %42, %if.then155.do.body_crit_edge ], [ %42, %if.end.i ]
  %tobool138.not384402 = phi i1 [ true, %if.end136.thread390.do.body_crit_edge ], [ true, %if.end136.thread.do.body_crit_edge ], [ true, %if.end136.do.body_crit_edge ], [ false, %if.then141 ], [ false, %if.then155.do.body_crit_edge ], [ false, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_switch_engine.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu6050_switch_engine, %if.then169)) #8
          to label %do.end [label %if.then169], !srcloc !206

if.then169:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %map170 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %59 = ptrtoint ptr %map170 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map170, align 4
  %call171 = tail call ptr @regmap_get_device(ptr noundef %60) #8
  %conv172 = zext i8 %pwr_mgmt2.3403 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_switch_engine.__UNIQUE_ID_ddebug290, ptr noundef %call171, ptr noundef nonnull @.str.3, i32 noundef %conv172) #8
  br label %do.end

do.end:                                           ; preds = %if.then169, %do.body
  %map174 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %61 = ptrtoint ptr %map174 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map174, align 4
  %reg175 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %63 = ptrtoint ptr %reg175 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg175, align 8
  %pwr_mgmt_2 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %64, i32 0, i32 15
  %65 = ptrtoint ptr %pwr_mgmt_2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pwr_mgmt_2, align 1
  %conv176 = zext i8 %66 to i32
  %conv177 = zext i8 %pwr_mgmt2.3403 to i32
  %call178 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %conv176, i32 noundef %conv177) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.end181, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end181:                                        ; preds = %do.end
  br i1 %tobool124.not, label %if.end181.if.end194_crit_edge, label %if.then184

if.end181.if.end194_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then184:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %67, i32 3)
  %bf.load188 = load i24, ptr %chip_config101, align 32
  %bf.shl190 = select i1 %en, i24 8192, i24 0
  %bf.clear191 = and i24 %bf.load188, -8193
  %bf.set192 = or i24 %bf.clear191, %bf.shl190
  store i24 %bf.set192, ptr %chip_config101, align 32
  br label %if.end194

if.end194:                                        ; preds = %if.then184, %if.end181.if.end194_crit_edge
  br i1 %tobool138.not384402, label %if.end207, label %if.end207.thread

if.end207:                                        ; preds = %if.end194
  br i1 %en, label %if.end207.if.then209_crit_edge, label %if.end207.cleanup_crit_edge

if.end207.cleanup_crit_edge:                      ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end207.if.then209_crit_edge:                   ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209

if.end207.thread:                                 ; preds = %if.end194
  %68 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 3)
  %bf.load201 = load i24, ptr %chip_config101, align 32
  %bf.shl203 = select i1 %en, i24 4096, i24 0
  %bf.clear204 = and i24 %bf.load201, -4097
  %bf.set205 = or i24 %bf.clear204, %bf.shl203
  store i24 %bf.set205, ptr %chip_config101, align 32
  br i1 %en, label %if.end207.thread.if.then209_crit_edge, label %if.end207.thread.if.then245_crit_edge

if.end207.thread.if.then245_crit_edge:            ; preds = %if.end207.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then245

if.end207.thread.if.then209_crit_edge:            ; preds = %if.end207.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then209

if.then209:                                       ; preds = %if.end207.thread.if.then209_crit_edge, %if.end207.if.then209_crit_edge
  br i1 %tobool124.not, label %if.then209.if.end220_crit_edge, label %if.then212

if.then209.if.end220_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end220

if.then212:                                       ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 4
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %startup_time = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %startup_time to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %startup_time, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then212, %if.then209.if.end220_crit_edge
  %sleep.0 = phi i32 [ 0, %if.then209.if.end220_crit_edge ], [ %72, %if.then212 ]
  br i1 %tobool138.not384402, label %if.end220.if.end243_crit_edge, label %if.then223

if.end220.if.end243_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end243

if.then223:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  %hw224 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 4
  %73 = ptrtoint ptr %hw224 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw224, align 4
  %gyro = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %74, i32 0, i32 6, i32 1
  %75 = ptrtoint ptr %gyro to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %gyro, align 4
  %77 = tail call i32 @llvm.umax.i32(i32 %sleep.0, i32 %76)
  br label %if.end243

if.end243:                                        ; preds = %if.then223, %if.end220.if.end243_crit_edge
  %sleep.1 = phi i32 [ %sleep.0, %if.end220.if.end243_crit_edge ], [ %77, %if.then223 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleep.1)
  %tobool244.not = icmp eq i32 %sleep.1, 0
  br i1 %tobool244.not, label %if.end243.if.end246_crit_edge, label %if.end243.if.then245_crit_edge

if.end243.if.then245_crit_edge:                   ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then245

if.end243.if.end246_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end246

if.then245:                                       ; preds = %if.end243.if.then245_crit_edge, %if.end207.thread.if.then245_crit_edge
  %sleep.1418 = phi i32 [ %sleep.1, %if.end243.if.then245_crit_edge ], [ 150, %if.end207.thread.if.then245_crit_edge ]
  tail call void @msleep(i32 noundef %sleep.1418) #8
  br label %if.end246

if.end246:                                        ; preds = %if.then245, %if.end243.if.end246_crit_edge
  %en.not = xor i1 %en, true
  %brmerge350 = or i1 %tobool138.not384402, %en.not
  br i1 %brmerge350, label %if.end246.cleanup_crit_edge, label %if.then252

if.end246.cleanup_crit_edge:                      ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then252:                                       ; preds = %if.end246
  %chip_type.i353 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %78 = ptrtoint ptr %chip_type.i353 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip_type.i353, align 16
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %79, label %if.then252.cleanup_crit_edge [
    i32 0, label %if.then252.sw.bb.i354_crit_edge
    i32 4, label %if.then252.sw.bb.i354_crit_edge426
    i32 5, label %if.then252.sw.bb.i354_crit_edge427
  ]

if.then252.sw.bb.i354_crit_edge427:               ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i354

if.then252.sw.bb.i354_crit_edge426:               ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i354

if.then252.sw.bb.i354_crit_edge:                  ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i354

if.then252.cleanup_crit_edge:                     ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i354:                                       ; preds = %if.then252.sw.bb.i354_crit_edge, %if.then252.sw.bb.i354_crit_edge426, %if.then252.sw.bb.i354_crit_edge427
  %81 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 3)
  %bf.load4.i.i356 = load i24, ptr %chip_config101, align 32
  %82 = and i24 %bf.load4.i.i356, 2048
  %tobool8.not.i.not.i357 = icmp eq i24 %82, 0
  %spec.select.i.i358 = select i1 %tobool8.not.i.not.i357, i8 9, i8 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu6050_switch_engine, %if.then26.i.i362)) #8
          to label %inv_mpu6050_pwr_mgmt_1_write.exit.i370 [label %if.then26.i.i362], !srcloc !206

if.then26.i.i362:                                 ; preds = %sw.bb.i354
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %map174 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map174, align 4
  %call27.i.i360 = tail call ptr @regmap_get_device(ptr noundef %84) #8
  %conv28.i.i361 = zext i8 %spec.select.i.i358 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i.i360, ptr noundef nonnull @.str.41, i32 noundef %conv28.i.i361) #8
  br label %inv_mpu6050_pwr_mgmt_1_write.exit.i370

inv_mpu6050_pwr_mgmt_1_write.exit.i370:           ; preds = %if.then26.i.i362, %sw.bb.i354
  %85 = ptrtoint ptr %map174 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map174, align 4
  %87 = ptrtoint ptr %reg175 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg175, align 8
  %pwr_mgmt_1.i.i365 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %pwr_mgmt_1.i.i365 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pwr_mgmt_1.i.i365, align 1
  %conv31.i.i366 = zext i8 %90 to i32
  %conv32.i.i367 = zext i8 %spec.select.i.i358 to i32
  %call33.i.i368 = tail call i32 @regmap_write(ptr noundef %86, i32 noundef %conv31.i.i366, i32 noundef %conv32.i.i367) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i368)
  %tobool.not.i369 = icmp eq i32 %call33.i.i368, 0
  br i1 %tobool.not.i369, label %if.end.i373, label %inv_mpu6050_pwr_mgmt_1_write.exit.i370.cleanup_crit_edge

inv_mpu6050_pwr_mgmt_1_write.exit.i370.cleanup_crit_edge: ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit.i370
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i373:                                      ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit.i370
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %chip_config101 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 3)
  %bf.load.i371 = load i24, ptr %chip_config101, align 32
  %bf.clear.i372 = and i24 %bf.load.i371, 2097151
  %bf.set.i = or i24 %bf.clear.i372, 2097152
  store i24 %bf.set.i, ptr %chip_config101, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end.i373, %inv_mpu6050_pwr_mgmt_1_write.exit.i370.cleanup_crit_edge, %if.then252.cleanup_crit_edge, %if.end246.cleanup_crit_edge, %if.end207.cleanup_crit_edge, %do.end.cleanup_crit_edge, %inv_mpu6050_pwr_mgmt_1_write.exit.i.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge, %if.end48.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end48.cleanup_crit_edge ], [ %call33.i, %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge ], [ %call82, %if.then68.cleanup_crit_edge ], [ %call178, %do.end.cleanup_crit_edge ], [ %call33.i.i, %inv_mpu6050_pwr_mgmt_1_write.exit.i.cleanup_crit_edge ], [ %call33.i.i368, %inv_mpu6050_pwr_mgmt_1_write.exit.i370.cleanup_crit_edge ], [ 0, %if.end246.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ], [ 0, %if.end207.cleanup_crit_edge ], [ 0, %if.then252.cleanup_crit_edge ], [ 0, %if.end.i373 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @inv_mpu_core_probe(ptr noundef %regmap, i32 noundef %irq, ptr noundef %name, ptr noundef readonly %inv_mpu_bus_setup, i32 noundef %chip_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @regmap_get_device(ptr noundef %regmap) #8
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %call, i32 noundef 512) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %chip_type)
  %0 = icmp ugt i32 %chip_type, 13
  br i1 %0, label %do.end6, label %if.end7

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.4, i32 noundef %chip_type, ptr noundef %name) #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef nonnull @inv_mpu_core_probe.__key) #8
  %chip_type12 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %chip_type12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %chip_type, ptr %chip_type12, align 16
  %irq13 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 11
  %4 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %irq13, align 16
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 10
  %5 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %regmap, ptr %map, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end7
  %orientation = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 9
  %call17 = tail call i32 @iio_read_mount_matrix(ptr noundef %call, ptr noundef %orientation) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.if.end24_crit_edge, label %do.end22

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.10, i32 noundef %call17) #11
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %plat_data = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %plat_data, ptr %7, i32 9)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp25 = icmp sgt i32 %irq, 0
  br i1 %cmp25, label %if.then26, label %if.end24.if.end61_crit_edge

if.end24.if.end61_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then26:                                        ; preds = %if.end24
  %call27 = tail call ptr @irq_get_irq_data(i32 noundef %irq) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end32, label %if.end39

do.end32:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.13, i32 noundef %irq) #11
  br label %cleanup

if.end39:                                         ; preds = %if.then26
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call27, i32 0, i32 3
  %9 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %and.i = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool35.not = icmp eq i32 %and.i, 0
  %spec.store.select = select i1 %tobool35.not, i32 1, i32 %and.i
  %and = and i32 %spec.store.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %if.else42, label %if.end39.if.end61_crit_edge

if.end39.if.end61_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.else42:                                        ; preds = %if.end39
  %13 = zext i32 %spec.store.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %spec.store.select, label %do.end57 [
    i32 2, label %if.else42.if.end61_crit_edge
    i32 4, label %if.then48
    i32 8, label %if.then52
  ]

if.else42.if.end61_crit_edge:                     ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then52:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end57:                                         ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.16, i32 noundef %spec.store.select) #11
  br label %cleanup

if.end61:                                         ; preds = %if.then52, %if.then48, %if.else42.if.end61_crit_edge, %if.end39.if.end61_crit_edge, %if.end24.if.end61_crit_edge
  %.sink = phi i8 [ -96, %if.then52 ], [ 32, %if.then48 ], [ 0, %if.end24.if.end61_crit_edge ], [ 0, %if.end39.if.end61_crit_edge ], [ -128, %if.else42.if.end61_crit_edge ]
  %irq_type.0325 = phi i32 [ %spec.store.select, %if.then52 ], [ %spec.store.select, %if.then48 ], [ 1, %if.end24.if.end61_crit_edge ], [ %spec.store.select, %if.end39.if.end61_crit_edge ], [ %spec.store.select, %if.else42.if.end61_crit_edge ]
  %irq_mask45 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 12
  %14 = ptrtoint ptr %irq_mask45 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink, ptr %irq_mask45, align 4
  %call62 = tail call ptr @devm_regulator_get(ptr noundef %call, ptr noundef nonnull @.str.18) #8
  %vdd_supply = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 17
  %15 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call62, ptr %vdd_supply, align 8
  %cmp.i = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end69

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call62 to i32
  %call68 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %call, i32 noundef %16, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end61
  %call70 = tail call ptr @devm_regulator_get(ptr noundef %call, ptr noundef nonnull @.str.20) #8
  %vddio_supply = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 18
  %17 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call70, ptr %vddio_supply, align 4
  %cmp.i311 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i311, label %if.then73, label %if.end77

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call70 to i32
  %call76 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %call, i32 noundef %18, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end77:                                         ; preds = %if.end69
  %19 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdd_supply, align 8
  %call79 = tail call i32 @regulator_enable(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end85, label %do.end84

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.23, i32 noundef %call79) #11
  br label %cleanup

if.end85:                                         ; preds = %if.end77
  tail call void @msleep(i32 noundef 100) #8
  %21 = ptrtoint ptr %vddio_supply to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vddio_supply, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end91, label %if.then88

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %24) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.42, i32 noundef %call.i) #11
  %25 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdd_supply, align 8
  %call90 = tail call i32 @regulator_disable(ptr noundef %26) #8
  br label %cleanup

if.end91:                                         ; preds = %if.end85
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #8
  %call.i312 = tail call i32 @devm_add_action(ptr noundef %call, ptr noundef nonnull @inv_mpu_core_disable_regulator_action, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool.not.i313 = icmp eq i32 %call.i312, 0
  br i1 %tobool.not.i313, label %if.end98, label %do.end97

do.end97:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @inv_mpu_core_disable_regulator_action(ptr noundef %2) #8, !callees !207
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.26, i32 noundef %call.i312) #11
  br label %cleanup

if.end98:                                         ; preds = %if.end91
  %call99 = tail call i32 @inv_mpu_magn_set_orient(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end102:                                        ; preds = %if.end98
  %call103 = tail call fastcc i32 @inv_check_and_setup_chip(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup_crit_edge

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end106:                                        ; preds = %if.end102
  %call107 = tail call fastcc i32 @inv_mpu6050_init_config(ptr noundef nonnull %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end113, label %do.end112

do.end112:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.29) #11
  br label %error_power_off

if.end113:                                        ; preds = %if.end106
  %driver_data.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1, ptr %driver_data.i, align 4
  %tobool114.not = icmp eq ptr %name, null
  br i1 %tobool114.not, label %if.else117, label %if.end113.if.end120_crit_edge

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.else117:                                       ; preds = %if.end113
  %init_name.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i314 = icmp eq ptr %29, null
  br i1 %tobool.not.i314, label %if.end.i, label %if.else117.if.end120_crit_edge

if.else117.if.end120_crit_edge:                   ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.end.i:                                         ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  br label %if.end120

if.end120:                                        ; preds = %if.end.i, %if.else117.if.end120_crit_edge, %if.end113.if.end120_crit_edge
  %retval.0.i.sink = phi ptr [ %name, %if.end113.if.end120_crit_edge ], [ %31, %if.end.i ], [ %29, %if.else117.if.end120_crit_edge ]
  %name119 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %32 = ptrtoint ptr %name119 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i.sink, ptr %name119, align 8
  %tobool121.not = icmp eq ptr %inv_mpu_bus_setup, null
  br i1 %tobool121.not, label %if.end120.if.end127_crit_edge, label %if.then122

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then122:                                       ; preds = %if.end120
  %call123 = tail call i32 %inv_mpu_bus_setup(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.then122.if.end127_crit_edge, label %if.then122.error_power_off_crit_edge

if.then122.error_power_off_crit_edge:             ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off

if.then122.if.end127_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.end127:                                        ; preds = %if.then122.if.end127_crit_edge, %if.end120.if.end127_crit_edge
  %call.i315 = tail call i32 @__pm_runtime_set_status(ptr noundef %call, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i315)
  %tobool129.not = icmp eq i32 %call.i315, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.error_power_off_crit_edge

if.end127.error_power_off_crit_edge:              ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off

if.end131:                                        ; preds = %if.end127
  %usage_count.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !208
  tail call void @pm_runtime_enable(ptr noundef %call) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %call, i32 noundef 2000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %call, i1 noundef zeroext true) #8
  %call.i316 = tail call i32 @__pm_runtime_idle(ptr noundef %call, i32 noundef 5) #8
  %call.i317 = tail call i32 @devm_add_action(ptr noundef %call, ptr noundef nonnull @inv_mpu_pm_disable, ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i317)
  %tobool.not.i318 = icmp eq i32 %call.i317, 0
  br i1 %tobool.not.i318, label %if.end136, label %devm_add_action_or_reset.exit321

devm_add_action_or_reset.exit321:                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %call, i1 noundef zeroext true) #8
  br label %cleanup

if.end136:                                        ; preds = %if.end131
  %switch.tableidx = add i32 %chip_type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 7
  br i1 %34, label %switch.lookup, label %if.end136.sw.epilog_crit_edge

if.end136.sw.epilog_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.inv_mpu_core_probe, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep328 = getelementptr inbounds [7 x i32], ptr @switch.table.inv_mpu_core_probe.82, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep328 to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load329 = load i32, ptr %switch.gep328, align 4
  %switch.gep330 = getelementptr inbounds [7 x ptr], ptr @switch.table.inv_mpu_core_probe.83, i32 0, i32 %switch.tableidx
  %37 = ptrtoint ptr %switch.gep330 to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load331 = load ptr, ptr %switch.gep330, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end136.sw.epilog_crit_edge
  %inv_mpu_channels.sink = phi ptr [ %switch.load, %switch.lookup ], [ @inv_mpu_channels, %if.end136.sw.epilog_crit_edge ]
  %.sink327 = phi i32 [ %switch.load329, %switch.lookup ], [ 8, %if.end136.sw.epilog_crit_edge ]
  %inv_mpu_scan_masks.sink = phi ptr [ %switch.load331, %switch.lookup ], [ @inv_mpu_scan_masks, %if.end136.sw.epilog_crit_edge ]
  %channels145 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %38 = ptrtoint ptr %channels145 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %inv_mpu_channels.sink, ptr %channels145, align 8
  %num_channels146 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %39 = ptrtoint ptr %num_channels146 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink327, ptr %num_channels146, align 4
  %available_scan_masks147 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 6
  %40 = ptrtoint ptr %available_scan_masks147 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %inv_mpu_scan_masks.sink, ptr %available_scan_masks147, align 4
  %magn_disabled = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 19
  %41 = ptrtoint ptr %magn_disabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %magn_disabled, align 32, !range !209
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool148.not = icmp eq i8 %42, 0
  br i1 %tobool148.not, label %sw.epilog.if.end153_crit_edge, label %if.then149

sw.epilog.if.end153_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then149:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %channels150 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %43 = ptrtoint ptr %channels150 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @inv_mpu_channels, ptr %channels150, align 8
  %num_channels151 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %44 = ptrtoint ptr %num_channels151 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 8, ptr %num_channels151, align 4
  %available_scan_masks152 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 6
  %45 = ptrtoint ptr %available_scan_masks152 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @inv_mpu_scan_masks, ptr %available_scan_masks152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then149, %sw.epilog.if.end153_crit_edge
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %46 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @mpu_info, ptr %info, align 8
  br i1 %cmp25, label %if.then155, label %if.end153.if.end170_crit_edge

if.end153.if.end170_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

if.then155:                                       ; preds = %if.end153
  %call156 = tail call i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef %call, ptr noundef nonnull %call1, ptr noundef nonnull @iio_pollfunc_store_time, ptr noundef nonnull @inv_mpu6050_read_fifo, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end162, label %do.end161

do.end161:                                        ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.32, i32 noundef %call156) #11
  br label %cleanup

if.end162:                                        ; preds = %if.then155
  %call163 = tail call i32 @inv_mpu6050_probe_trigger(ptr noundef nonnull %call1, i32 noundef %irq_type.0325) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  br i1 %tobool164.not, label %if.end162.if.end170_crit_edge, label %do.end168

if.end162.if.end170_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end170

do.end168:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.35, i32 noundef %call163) #11
  br label %cleanup

if.end170:                                        ; preds = %if.end162.if.end170_crit_edge, %if.end153.if.end170_crit_edge
  %call171 = tail call i32 @__devm_iio_device_register(ptr noundef %call, ptr noundef nonnull %call1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171)
  %tobool172.not = icmp eq i32 %call171, 0
  br i1 %tobool172.not, label %if.end170.cleanup_crit_edge, label %do.end176

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end176:                                        ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.38, i32 noundef %call171) #11
  br label %cleanup

error_power_off:                                  ; preds = %if.end127.error_power_off_crit_edge, %if.then122.error_power_off_crit_edge, %do.end112
  %result.0 = phi i32 [ %call107, %do.end112 ], [ %call123, %if.then122.error_power_off_crit_edge ], [ %call.i315, %if.end127.error_power_off_crit_edge ]
  %call178 = tail call fastcc i32 @inv_mpu6050_set_power_itg(ptr noundef %2, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %error_power_off, %do.end176, %if.end170.cleanup_crit_edge, %do.end168, %do.end161, %devm_add_action_or_reset.exit321, %if.end102.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %do.end97, %if.then88, %do.end84, %if.then73, %if.then65, %do.end57, %do.end32, %do.end22, %do.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end6 ], [ %call68, %if.then65 ], [ %call76, %if.then73 ], [ %call79, %do.end84 ], [ %call.i, %if.then88 ], [ %call.i312, %do.end97 ], [ %result.0, %error_power_off ], [ %call156, %do.end161 ], [ %call163, %do.end168 ], [ %call171, %do.end176 ], [ -22, %do.end57 ], [ -22, %do.end32 ], [ %call17, %do.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call99, %if.end98.cleanup_crit_edge ], [ %call103, %if.end102.cleanup_crit_edge ], [ %call.i317, %devm_add_action_or_reset.exit321 ], [ 0, %if.end170.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inv_mpu_core_disable_regulator_action(ptr nocapture noundef readonly %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd_supply = getelementptr inbounds %struct.inv_mpu6050_state, ptr %_data, i32 0, i32 17
  %0 = ptrtoint ptr %vdd_supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd_supply, align 8
  %call = tail call i32 @regulator_disable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %_data, i32 0, i32 10
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1, ptr noundef nonnull @.str.44, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %vddio_supply.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %_data, i32 0, i32 18
  %4 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.inv_mpu_core_disable_regulator_vddio.exit_crit_edge, label %do.end.i

if.end.inv_mpu_core_disable_regulator_vddio.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu_core_disable_regulator_vddio.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %_data, i32 0, i32 10
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %7) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.46, i32 noundef %call.i) #11
  br label %inv_mpu_core_disable_regulator_vddio.exit

inv_mpu_core_disable_regulator_vddio.exit:        ; preds = %do.end.i, %if.end.inv_mpu_core_disable_regulator_vddio.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_magn_set_orient(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_check_and_setup_chip(ptr noundef %st) unnamed_addr #0 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !210
  %chip_type = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %1 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_type, align 16
  %arrayidx = getelementptr [14 x %struct.inv_mpu6050_hw], ptr @hw_info, i32 0, i32 %2
  %hw = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 4
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %hw, align 4
  %reg = getelementptr [14 x %struct.inv_mpu6050_hw], ptr @hw_info, i32 0, i32 %2, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %reg3 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %6 = ptrtoint ptr %reg3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %reg3, align 8
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %config = getelementptr [14 x %struct.inv_mpu6050_hw], ptr @hw_info, i32 0, i32 %2, i32 3
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %8, align 4
  %11 = ptrtoint ptr %chip_config to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %chip_config, align 32
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %12 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %13, i32 noundef 117, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp.not = icmp eq i32 %15, %conv
  br i1 %cmp.not, label %if.end.if.end40_crit_edge, label %for.body.preheader

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

for.body.preheader:                               ; preds = %if.end
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %15, label %for.inc.13 [
    i32 104, label %for.body.preheader.for.end_crit_edge
    i32 112, label %for.end.fold.split
    i32 116, label %for.end.fold.split103
    i32 120, label %for.end.fold.split104
    i32 113, label %for.end.fold.split105
    i32 115, label %for.end.fold.split106
    i32 175, label %for.end.fold.split107
    i32 166, label %for.end.fold.split108
    i32 152, label %for.end.fold.split109
    i32 18, label %for.end.fold.split110
    i32 32, label %for.end.fold.split111
    i32 169, label %for.end.fold.split112
  ]

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.13:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 4
  %call33 = call ptr @regmap_get_device(ptr noundef %22) #8
  %23 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval, align 4
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 4
  %conv36 = zext i8 %28 to i32
  %name38 = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %name38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name38, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call33, ptr noundef nonnull @.str.52, i32 noundef %24, i32 noundef %conv36, ptr noundef %30) #11
  br label %cleanup

for.end.fold.split:                               ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split103:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split104:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split105:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split106:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split107:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split108:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split109:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split110:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split111:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end.fold.split112:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.end.fold.split112, %for.end.fold.split111, %for.end.fold.split110, %for.end.fold.split109, %for.end.fold.split108, %for.end.fold.split107, %for.end.fold.split106, %for.end.fold.split105, %for.end.fold.split104, %for.end.fold.split103, %for.end.fold.split, %for.body.preheader.for.end_crit_edge
  %i.0101.lcssa = phi i32 [ 0, %for.body.preheader.for.end_crit_edge ], [ 1, %for.end.fold.split ], [ 2, %for.end.fold.split103 ], [ 3, %for.end.fold.split104 ], [ 6, %for.end.fold.split105 ], [ 7, %for.end.fold.split106 ], [ 8, %for.end.fold.split107 ], [ 9, %for.end.fold.split108 ], [ 10, %for.end.fold.split109 ], [ 11, %for.end.fold.split110 ], [ 12, %for.end.fold.split111 ], [ 13, %for.end.fold.split112 ]
  %31 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map, align 4
  %call18 = call ptr @regmap_get_device(ptr noundef %32) #8
  %33 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval, align 4
  %name = getelementptr [14 x %struct.inv_mpu6050_hw], ptr @hw_info, i32 0, i32 %i.0101.lcssa, i32 1
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %37 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 4
  %conv22 = zext i8 %40 to i32
  %name24 = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %name24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %call18, ptr noundef nonnull @.str.48, i32 noundef %34, ptr noundef %36, i32 noundef %conv22, ptr noundef %42) #11
  br label %if.end40

if.end40:                                         ; preds = %for.end, %if.end.if.end40_crit_edge
  %43 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map, align 4
  %45 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg3, align 8
  %pwr_mgmt_1 = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %46, i32 0, i32 14
  %47 = ptrtoint ptr %pwr_mgmt_1 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pwr_mgmt_1, align 1
  %conv43 = zext i8 %48 to i32
  %call44 = call i32 @regmap_write(ptr noundef %44, i32 noundef %conv43, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  call void @msleep(i32 noundef 100) #8
  %49 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %chip_type, align 16
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %50, label %if.end47.sw.epilog_crit_edge [
    i32 4, label %if.end47.sw.bb_crit_edge
    i32 1, label %if.end47.sw.bb_crit_edge113
    i32 2, label %if.end47.sw.bb_crit_edge114
    i32 3, label %if.end47.sw.bb_crit_edge115
    i32 6, label %if.end47.sw.bb_crit_edge116
    i32 7, label %if.end47.sw.bb_crit_edge117
  ]

if.end47.sw.bb_crit_edge117:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.bb_crit_edge116:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.bb_crit_edge115:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.bb_crit_edge114:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.bb_crit_edge113:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.bb_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end47.sw.epilog_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end47.sw.bb_crit_edge, %if.end47.sw.bb_crit_edge113, %if.end47.sw.bb_crit_edge114, %if.end47.sw.bb_crit_edge115, %if.end47.sw.bb_crit_edge116, %if.end47.sw.bb_crit_edge117
  %52 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7, ptr %regval, align 4
  %53 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map, align 4
  %call50 = call i32 @regmap_write(ptr noundef %54, i32 noundef 104, i32 noundef 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end53:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 100) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end53, %if.end47.sw.epilog_crit_edge
  %call54 = call fastcc i32 @inv_mpu6050_set_power_itg(ptr noundef %st, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %sw.epilog
  %call58 = call i32 @inv_mpu6050_switch_engine(ptr noundef %st, i1 noundef zeroext false, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %error_power_off

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_power_off:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %call62 = call fastcc i32 @inv_mpu6050_set_power_itg(ptr noundef %st, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %error_power_off, %if.end57.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %for.inc.13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.inc.13 ], [ %call58, %error_power_off ], [ %call, %entry.cleanup_crit_edge ], [ %call44, %if.end40.cleanup_crit_edge ], [ %call50, %sw.bb.cleanup_crit_edge ], [ %call54, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu6050_init_config(ptr nocapture noundef readonly %indio_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %2, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.lshr = lshr i24 %bf.load, 19
  %bf.clear = and i24 %bf.lshr, 3
  %bf.cast = zext i24 %bf.clear to i32
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %4)
  %cond.i = icmp eq i32 %4, 12
  %..i = select i1 %cond.i, i32 2, i32 3
  %shl.i = shl nuw nsw i32 %bf.cast, %..i
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg.i, align 8
  %gyro_config.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %gyro_config.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gyro_config.i, align 1
  %conv1.i = zext i8 %10 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %conv1.i, i32 noundef %shl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %11, i32 3)
  %bf.load3 = load i24, ptr %chip_config, align 32
  %bf.lshr4 = lshr i24 %bf.load3, 16
  %bf.clear5 = and i24 %bf.lshr4, 7
  %bf.cast6 = zext i24 %bf.clear5 to i32
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg.i, align 8
  %lpf.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lpf.i, align 1
  %conv.i = zext i8 %17 to i32
  %call.i73 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %conv.i, i32 noundef %bf.cast6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %tobool.not.i = icmp eq i32 %call.i73, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %18 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_type.i, align 16
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %19, label %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge [
    i32 0, label %if.end.i.if.end10_crit_edge
    i32 4, label %if.end.i.if.end10_crit_edge80
    i32 5, label %if.end.i.if.end10_crit_edge81
    i32 10, label %if.end.i.sw.bb1.i_crit_edge
    i32 12, label %if.end.i.sw.bb1.i_crit_edge82
  ]

if.end.i.sw.bb1.i_crit_edge82:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.if.end10_crit_edge81:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i.if.end10_crit_edge80:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_set_lpf_regs.exit

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge82
  %or.i = or i32 %bf.cast6, 192
  br label %inv_mpu6050_set_lpf_regs.exit

inv_mpu6050_set_lpf_regs.exit:                    ; preds = %sw.bb1.i, %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge
  %val.addr.0.i = phi i32 [ %bf.cast6, %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge ], [ %or.i, %sw.bb1.i ]
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i, align 4
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 8
  %accel_lpf.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %accel_lpf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %accel_lpf.i, align 1
  %conv4.i = zext i8 %26 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %conv4.i, i32 noundef %val.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %inv_mpu6050_set_lpf_regs.exit.if.end10_crit_edge, label %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge

inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge:  ; preds = %inv_mpu6050_set_lpf_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

inv_mpu6050_set_lpf_regs.exit.if.end10_crit_edge: ; preds = %inv_mpu6050_set_lpf_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %inv_mpu6050_set_lpf_regs.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge80, %if.end.i.if.end10_crit_edge81
  %divider = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %divider to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %divider, align 1
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 4
  %31 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv = zext i8 %34 to i32
  %conv12 = zext i8 %28 to i32
  %call13 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %conv, i32 noundef %conv12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %35 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %35, i32 3)
  %bf.load18 = load i24, ptr %chip_config, align 32
  %36 = lshr i24 %bf.load18, 11
  %37 = and i24 %36, 24
  %conv22 = zext i24 %37 to i32
  %38 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i, align 4
  %40 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg.i, align 8
  %accl_config = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %accl_config to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %accl_config, align 1
  %conv25 = zext i8 %43 to i32
  %call27 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %conv25, i32 noundef %conv22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  %44 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i, align 4
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg.i, align 8
  %int_pin_cfg = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %int_pin_cfg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %int_pin_cfg, align 1
  %conv33 = zext i8 %49 to i32
  %irq_mask = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 12
  %50 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %irq_mask, align 4
  %conv34 = zext i8 %51 to i32
  %call35 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef %conv33, i32 noundef %conv34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %chip_period = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 14
  %52 = ptrtoint ptr %chip_period to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 1000000, ptr %chip_period, align 64
  %call39 = tail call i32 @inv_mpu_magn_probe(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end30.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call5.i, %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge ], [ %call13, %if.end10.cleanup_crit_edge ], [ %call27, %if.end16.cleanup_crit_edge ], [ %call35, %if.end30.cleanup_crit_edge ], [ %call39, %if.end38 ], [ %call.i73, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inv_mpu_pm_disable(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_pollfunc_store_time(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu6050_read_fifo(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu6050_probe_trigger(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu6050_set_power_itg(ptr nocapture noundef readonly %st, i1 noundef zeroext %power_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_config.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %0 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 3)
  %bf.load.i = load i24, ptr %chip_config.i, align 32
  %bf.lshr.i = lshr i24 %bf.load.i, 21
  %1 = trunc i24 %bf.lshr.i to i8
  %2 = and i24 %bf.load.i, 2048
  %tobool8.not.i.not = icmp eq i24 %2, 0
  %3 = or i8 %1, 8
  %spec.select.i = select i1 %tobool8.not.i.not, i8 %3, i8 %1
  %4 = or i8 %spec.select.i, 64
  %val.1.i = select i1 %power_on, i8 %spec.select.i, i8 %4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu6050_set_power_itg, %if.then26.i)) #8
          to label %inv_mpu6050_pwr_mgmt_1_write.exit [label %if.then26.i], !srcloc !206

if.then26.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call27.i = tail call ptr @regmap_get_device(ptr noundef %6) #8
  %conv28.i = zext i8 %val.1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i, ptr noundef nonnull @.str.41, i32 noundef %conv28.i) #8
  br label %inv_mpu6050_pwr_mgmt_1_write.exit

inv_mpu6050_pwr_mgmt_1_write.exit:                ; preds = %if.then26.i, %entry
  %map30.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %7 = ptrtoint ptr %map30.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map30.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 8
  %pwr_mgmt_1.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %pwr_mgmt_1.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pwr_mgmt_1.i, align 1
  %conv31.i = zext i8 %12 to i32
  %conv32.i = zext i8 %val.1.i to i32
  %call33.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %conv31.i, i32 noundef %conv32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool1.not = icmp eq i32 %call33.i, 0
  %13 = and i1 %tobool1.not, %power_on
  br i1 %13, label %if.then3, label %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge

inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge: ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %inv_mpu6050_pwr_mgmt_1_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33.i, %inv_mpu6050_pwr_mgmt_1_write.exit.cleanup_crit_edge ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %suspended_sensors = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %suspended_sensors, align 4
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.out_unlock_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit.out_unlock_crit_edge:   ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %9, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @inv_mpu6050_prepare_fifo(ptr noundef %3, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.if.end8_crit_edge, label %if.then4.out_unlock_crit_edge

if.then4.out_unlock_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %11 = and i24 %bf.load, 8192
  %tobool9.not = icmp eq i24 %11, 0
  br i1 %tobool9.not, label %if.end8.if.end12_crit_edge, label %if.then10

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suspended_sensors, align 4
  %or = or i32 %13, 1
  store i32 %or, ptr %suspended_sensors, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end8.if.end12_crit_edge
  %14 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %14, i32 3)
  %bf.load14 = load i24, ptr %chip_config, align 32
  %15 = and i24 %bf.load14, 4096
  %tobool18.not = icmp eq i24 %15, 0
  br i1 %tobool18.not, label %if.end12.if.end22_crit_edge, label %if.then19

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %suspended_sensors, align 4
  %or21 = or i32 %17, 2
  store i32 %or21, ptr %suspended_sensors, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end12.if.end22_crit_edge
  %18 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %18, i32 3)
  %bf.load24 = load i24, ptr %chip_config, align 32
  %19 = and i24 %bf.load24, 2048
  %tobool28.not = icmp eq i24 %19, 0
  br i1 %tobool28.not, label %if.end22.if.end32_crit_edge, label %if.then29

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %suspended_sensors, align 4
  %or31 = or i32 %21, 4
  store i32 %or31, ptr %suspended_sensors, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end22.if.end32_crit_edge
  %22 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %22, i32 3)
  %bf.load34 = load i24, ptr %chip_config, align 32
  %23 = and i24 %bf.load34, 1024
  %tobool38.not = icmp eq i24 %23, 0
  br i1 %tobool38.not, label %if.end32.if.end42_crit_edge, label %if.then39

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %suspended_sensors, align 4
  %or41 = or i32 %25, 8
  store i32 %or41, ptr %suspended_sensors, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end32.if.end42_crit_edge
  %26 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %suspended_sensors, align 4
  %call44 = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %3, i1 noundef zeroext false, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.out_unlock_crit_edge

if.end42.out_unlock_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end47:                                         ; preds = %if.end42
  %28 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %28, i32 3)
  %bf.load.i.i = load i24, ptr %chip_config, align 32
  %bf.lshr.i.i = lshr i24 %bf.load.i.i, 21
  %29 = trunc i24 %bf.lshr.i.i to i8
  %30 = and i24 %bf.load.i.i, 2048
  %tobool8.not.i.not.i = icmp eq i24 %30, 0
  %31 = or i8 %29, 8
  %spec.select.i.i = select i1 %tobool8.not.i.not.i, i8 %31, i8 %29
  %32 = or i8 %spec.select.i.i, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu_suspend, %if.then26.i.i)) #8
          to label %inv_mpu6050_set_power_itg.exit [label %if.then26.i.i], !srcloc !206

if.then26.i.i:                                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %map.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i.i, align 4
  %call27.i.i = tail call ptr @regmap_get_device(ptr noundef %34) #8
  %conv28.i.i = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i.i, ptr noundef nonnull @.str.41, i32 noundef %conv28.i.i) #8
  br label %inv_mpu6050_set_power_itg.exit

inv_mpu6050_set_power_itg.exit:                   ; preds = %if.then26.i.i, %if.end47
  %map30.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %map30.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map30.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i.i, align 8
  %pwr_mgmt_1.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %pwr_mgmt_1.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pwr_mgmt_1.i.i, align 1
  %conv31.i.i = zext i8 %40 to i32
  %conv32.i.i = zext i8 %32 to i32
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool49.not = icmp eq i32 %call33.i.i, 0
  br i1 %tobool49.not, label %if.end51, label %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge

inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge: ; preds = %inv_mpu6050_set_power_itg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end51:                                         ; preds = %inv_mpu6050_set_power_itg.exit
  %vddio_supply.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 18
  %41 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i74 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i74, label %if.end51.out_unlock_crit_edge, label %do.end.i

if.end51.out_unlock_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end.i:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %map30.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map30.i.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %44) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.46, i32 noundef %call.i) #11
  br label %out_unlock

out_unlock:                                       ; preds = %do.end.i, %if.end51.out_unlock_crit_edge, %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge, %if.end42.out_unlock_crit_edge, %if.then4.out_unlock_crit_edge, %pm_runtime_suspended.exit.out_unlock_crit_edge
  %result.0 = phi i32 [ %call5, %if.then4.out_unlock_crit_edge ], [ %call44, %if.end42.out_unlock_crit_edge ], [ %call33.i.i, %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge ], [ 0, %pm_runtime_suspended.exit.out_unlock_crit_edge ], [ 0, %if.end51.out_unlock_crit_edge ], [ 0, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu_resume(ptr noundef %dev) #0 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %vddio_supply.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %inv_mpu_core_enable_regulator_vddio.exit

inv_mpu_core_enable_regulator_vddio.exit:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %7) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.42, i32 noundef %call.i) #11
  br label %out_unlock

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #8
  %call3 = tail call fastcc i32 @inv_mpu6050_set_power_itg(ptr noundef %3, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i30 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %suspended_sensors = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 22
  %8 = ptrtoint ptr %suspended_sensors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %suspended_sensors, align 4
  %call8 = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %3, i1 noundef zeroext true, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_unlock_crit_edge

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end11:                                         ; preds = %if.end6
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %11, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end11.out_unlock_crit_edge, label %if.then13

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = tail call i32 @inv_mpu6050_prepare_fifo(ptr noundef %3, i1 noundef zeroext true) #8
  br label %out_unlock

out_unlock:                                       ; preds = %if.then13, %if.end11.out_unlock_crit_edge, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %inv_mpu_core_enable_regulator_vddio.exit
  %result.0 = phi i32 [ %call.i, %inv_mpu_core_enable_regulator_vddio.exit ], [ %call3, %if.end.out_unlock_crit_edge ], [ %call8, %if.end6.out_unlock_crit_edge ], [ %call14, %if.then13 ], [ 0, %if.end11.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %call2 = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %3, i1 noundef zeroext false, i32 noundef 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.out_unlock_crit_edge

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end:                                           ; preds = %entry
  %chip_config.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %chip_config.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 3)
  %bf.load.i.i = load i24, ptr %chip_config.i.i, align 32
  %bf.lshr.i.i = lshr i24 %bf.load.i.i, 21
  %5 = trunc i24 %bf.lshr.i.i to i8
  %6 = and i24 %bf.load.i.i, 2048
  %tobool8.not.i.not.i = icmp eq i24 %6, 0
  %7 = or i8 %5, 8
  %spec.select.i.i = select i1 %tobool8.not.i.not.i, i8 %7, i8 %5
  %8 = or i8 %spec.select.i.i, 64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inv_mpu_runtime_suspend, %if.then26.i.i)) #8
          to label %inv_mpu6050_set_power_itg.exit [label %if.then26.i.i], !srcloc !206

if.then26.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %map.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.i, align 4
  %call27.i.i = tail call ptr @regmap_get_device(ptr noundef %10) #8
  %conv28.i.i = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, ptr noundef %call27.i.i, ptr noundef nonnull @.str.41, i32 noundef %conv28.i.i) #8
  br label %inv_mpu6050_set_power_itg.exit

inv_mpu6050_set_power_itg.exit:                   ; preds = %if.then26.i.i, %if.end
  %map30.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %11 = ptrtoint ptr %map30.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map30.i.i, align 4
  %reg.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i.i, align 8
  %pwr_mgmt_1.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %pwr_mgmt_1.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pwr_mgmt_1.i.i, align 1
  %conv31.i.i = zext i8 %16 to i32
  %conv32.i.i = zext i8 %8 to i32
  %call33.i.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %conv31.i.i, i32 noundef %conv32.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool4.not = icmp eq i32 %call33.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge

inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge: ; preds = %inv_mpu6050_set_power_itg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

if.end6:                                          ; preds = %inv_mpu6050_set_power_itg.exit
  %vddio_supply.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_disable(ptr noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.out_unlock_crit_edge, label %do.end.i

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %map30.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map30.i.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %20) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.46, i32 noundef %call.i) #11
  br label %out_unlock

out_unlock:                                       ; preds = %do.end.i, %if.end6.out_unlock_crit_edge, %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_unlock_crit_edge ], [ %call33.i.i, %inv_mpu6050_set_power_itg.exit.out_unlock_crit_edge ], [ 0, %if.end6.out_unlock_crit_edge ], [ 0, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %vddio_supply.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %vddio_supply.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vddio_supply.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %inv_mpu_core_enable_regulator_vddio.exit

inv_mpu_core_enable_regulator_vddio.exit:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %7) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.42, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #8
  %call3 = tail call fastcc i32 @inv_mpu6050_set_power_itg(ptr noundef %3, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %inv_mpu_core_enable_regulator_vddio.exit
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i, %inv_mpu_core_enable_regulator_vddio.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_magn_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @inv_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  %magn_orient = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 21
  %orientation = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 9
  %matrix.0 = select i1 %cmp, ptr %magn_orient, ptr %orientation
  ret ptr %matrix.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu6050_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %d.i91 = alloca i16, align 2
  %d.i = alloca i16, align 2
  %d.i173.i = alloca i16, align 2
  %d.i162.i = alloca i16, align 2
  %d.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %sw.bb23
    i32 5, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call1.i = tail call ptr @regmap_get_device(ptr noundef %6) #8
  %chip_config.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 2
  %divider.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %divider.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %divider.i, align 1
  %conv.i = zext i8 %8 to i16
  %add.i = add nuw nsw i16 %conv.i, 1
  %div192.i = udiv i16 1000, %add.i
  %div.zext.i = zext i16 %div192.i to i32
  %div2.i = udiv i32 1000000, %div.zext.i
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i

if.then.i.i:                                      ; preds = %if.end
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #8, !srcloc !212
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.inv_mpu6050_read_channel_data.exit_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.inv_mpu6050_read_channel_data.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_read_channel_data.exit

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !213
  br label %inv_mpu6050_read_channel_data.exit

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chan, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %11, label %if.end.i.sw.epilog.i_crit_edge [
    i32 4, label %sw.bb.i
    i32 3, label %sw.bb17.i
    i32 9, label %sw.bb36.i
    i32 5, label %sw.bb68.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  %13 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 3)
  %bf.load.i = load i24, ptr %chip_config.i, align 32
  %14 = and i24 %bf.load.i, 4096
  %tobool5.not.i = icmp eq i24 %14, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %sw.bb.i.if.end14.i_crit_edge

sw.bb.i.if.end14.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then6.i:                                       ; preds = %sw.bb.i
  %call7.i = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %4, i1 noundef zeroext true, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.then6.i.error_power_off.i_crit_edge

if.then6.i.error_power_off.i_crit_edge:           ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off.i

if.end10.i:                                       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl nuw nsw i32 %div2.i, 1
  %div11157159.i = mul nuw nsw i32 %div2.i, 3
  %mul13.i = and i32 %div11157159.i, 4194302
  tail call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %mul13.i, i32 noundef 2) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end10.i, %sw.bb.i.if.end14.i_crit_edge
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 8
  %raw_gyro.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %raw_gyro.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %raw_gyro.i, align 1
  %conv15.i = zext i8 %18 to i32
  %channel2.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %19 = ptrtoint ptr %channel2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel2.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i.i) #8
  %21 = ptrtoint ptr %d.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %d.i.i, align 2, !annotation !210
  %sub.i.i = shl i32 %20, 1
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 4
  %mul.i.i = add nsw i32 %conv15.i, -2
  %add.i.i = add i32 %mul.i.i, %sub.i.i
  %call.i160.i = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef %add.i.i, ptr noundef nonnull %d.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool.not.i.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end14.i.inv_mpu6050_sensor_show.exit.i_crit_edge

if.end14.i.inv_mpu6050_sensor_show.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_sensor_show.exit.i

if.end.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %d.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %d.i.i, align 2
  %conv.i.i = sext i16 %25 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv.i.i, ptr %val, align 4
  br label %inv_mpu6050_sensor_show.exit.i

inv_mpu6050_sensor_show.exit.i:                   ; preds = %if.end.i.i, %if.end14.i.inv_mpu6050_sensor_show.exit.i_crit_edge
  %retval.0.i161.i = phi i32 [ 1, %if.end.i.i ], [ -22, %if.end14.i.inv_mpu6050_sensor_show.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i.i) #8
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 3)
  %bf.load19.i = load i24, ptr %chip_config.i, align 32
  %28 = and i24 %bf.load19.i, 8192
  %tobool23.not.i = icmp eq i24 %28, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %sw.bb17.i.if.end31.i_crit_edge

sw.bb17.i.if.end31.i_crit_edge:                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then24.i:                                      ; preds = %sw.bb17.i
  %call25.i = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %4, i1 noundef zeroext true, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.then24.i.error_power_off.i_crit_edge

if.then24.i.error_power_off.i_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off.i

if.end28.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %div29156.i = lshr i32 %div2.i, 1
  %add30.i = add nuw nsw i32 %div29156.i, %div2.i
  tail call void @usleep_range_state(i32 noundef %div2.i, i32 noundef %add30.i, i32 noundef 2) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end28.i, %sw.bb17.i.if.end31.i_crit_edge
  %reg32.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 3
  %29 = ptrtoint ptr %reg32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg32.i, align 8
  %raw_accl.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %raw_accl.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %raw_accl.i, align 1
  %conv33.i = zext i8 %32 to i32
  %channel234.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %33 = ptrtoint ptr %channel234.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel234.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i162.i) #8
  %35 = ptrtoint ptr %d.i162.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %d.i162.i, align 2, !annotation !210
  %sub.i163.i = shl i32 %34, 1
  %36 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i, align 4
  %mul.i165.i = add nsw i32 %conv33.i, -2
  %add.i166.i = add i32 %mul.i165.i, %sub.i163.i
  %call.i167.i = call i32 @regmap_bulk_read(ptr noundef %37, i32 noundef %add.i166.i, ptr noundef nonnull %d.i162.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i167.i)
  %tobool.not.i168.i = icmp eq i32 %call.i167.i, 0
  br i1 %tobool.not.i168.i, label %if.end.i170.i, label %if.end31.i.inv_mpu6050_sensor_show.exit172.i_crit_edge

if.end31.i.inv_mpu6050_sensor_show.exit172.i_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_sensor_show.exit172.i

if.end.i170.i:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %d.i162.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %d.i162.i, align 2
  %conv.i169.i = sext i16 %39 to i32
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i169.i, ptr %val, align 4
  br label %inv_mpu6050_sensor_show.exit172.i

inv_mpu6050_sensor_show.exit172.i:                ; preds = %if.end.i170.i, %if.end31.i.inv_mpu6050_sensor_show.exit172.i_crit_edge
  %retval.0.i171.i = phi i32 [ 1, %if.end.i170.i ], [ -22, %if.end31.i.inv_mpu6050_sensor_show.exit172.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i162.i) #8
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.end.i
  %41 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 3)
  %bf.load38.i = load i24, ptr %chip_config.i, align 32
  %42 = and i24 %bf.load38.i, 12288
  %43 = icmp eq i24 %42, 0
  br i1 %43, label %sw.bb36.i.error_power_off.i_crit_edge, label %if.end50.i

sw.bb36.i.error_power_off.i_crit_edge:            ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off.i

if.end50.i:                                       ; preds = %sw.bb36.i
  %44 = and i24 %bf.load38.i, 2048
  %tobool56.not.i = icmp eq i24 %44, 0
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end50.i.if.end64.i_crit_edge

if.end50.i.if.end64.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then57.i:                                      ; preds = %if.end50.i
  %call58.i = tail call i32 @inv_mpu6050_switch_engine(ptr noundef %4, i1 noundef zeroext true, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end61.i, label %if.then57.i.error_power_off.i_crit_edge

if.then57.i.error_power_off.i_crit_edge:          ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off.i

if.end61.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  %div62155.i = lshr i32 %div2.i, 1
  %add63.i = add nuw nsw i32 %div62155.i, %div2.i
  tail call void @usleep_range_state(i32 noundef %div2.i, i32 noundef %add63.i, i32 noundef 2) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.end61.i, %if.end50.i.if.end64.i_crit_edge
  %reg65.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 3
  %45 = ptrtoint ptr %reg65.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg65.i, align 8
  %temperature.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %temperature.i, align 1
  %conv66.i = zext i8 %48 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i173.i) #8
  %49 = ptrtoint ptr %d.i173.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %d.i173.i, align 2, !annotation !210
  %50 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i, align 4
  %call.i176.i = call i32 @regmap_bulk_read(ptr noundef %51, i32 noundef %conv66.i, ptr noundef nonnull %d.i173.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i176.i)
  %tobool.not.i177.i = icmp eq i32 %call.i176.i, 0
  br i1 %tobool.not.i177.i, label %if.end.i179.i, label %if.end64.i.inv_mpu6050_sensor_show.exit181.i_crit_edge

if.end64.i.inv_mpu6050_sensor_show.exit181.i_crit_edge: ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_sensor_show.exit181.i

if.end.i179.i:                                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %d.i173.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %d.i173.i, align 2
  %conv.i178.i = sext i16 %53 to i32
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i178.i, ptr %val, align 4
  br label %inv_mpu6050_sensor_show.exit181.i

inv_mpu6050_sensor_show.exit181.i:                ; preds = %if.end.i179.i, %if.end64.i.inv_mpu6050_sensor_show.exit181.i_crit_edge
  %retval.0.i180.i = phi i32 [ 1, %if.end.i179.i ], [ -22, %if.end64.i.inv_mpu6050_sensor_show.exit181.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i173.i) #8
  br label %sw.epilog.i

sw.bb68.i:                                        ; preds = %if.end.i
  %55 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 3)
  %bf.load70.i = load i24, ptr %chip_config.i, align 32
  %56 = and i24 %bf.load70.i, 1024
  %tobool74.not.i = icmp eq i24 %56, 0
  br i1 %tobool74.not.i, label %if.then68.i.i, label %sw.bb68.i.if.end88.i_crit_edge

sw.bb68.i.if.end88.i_crit_edge:                   ; preds = %sw.bb68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then68.i.i:                                    ; preds = %sw.bb68.i
  %user_ctrl70.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %user_ctrl70.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %user_ctrl70.i.i, align 4
  %user_ctrl.0.i.i = or i8 %58, 32
  %59 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i, align 4
  %reg.i.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %4, i32 0, i32 3
  %61 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg.i.i, align 8
  %user_ctrl79.i.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %user_ctrl79.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %user_ctrl79.i.i, align 1
  %conv80.i.i = zext i8 %64 to i32
  %conv81.i.i = zext i8 %user_ctrl.0.i.i to i32
  %call82.i.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef %conv80.i.i, i32 noundef %conv81.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i.i)
  %tobool83.not.i.i = icmp eq i32 %call82.i.i, 0
  br i1 %tobool83.not.i.i, label %if.end79.i, label %if.then68.i.i.error_power_off.i_crit_edge

if.then68.i.i.error_power_off.i_crit_edge:        ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_power_off.i

if.end79.i:                                       ; preds = %if.then68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %user_ctrl70.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %user_ctrl.0.i.i, ptr %user_ctrl70.i.i, align 4
  %66 = ptrtoint ptr %chip_config.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 3)
  %bf.load91.i.i = load i24, ptr %chip_config.i, align 32
  %bf.set95.i.i = or i24 %bf.load91.i.i, 1024
  store i24 %bf.set95.i.i, ptr %chip_config.i, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %8)
  %cmp.i = icmp ult i8 %8, 19
  %spec.select.i = select i1 %cmp.i, i32 20000, i32 %div2.i
  %mul84.i = shl nuw nsw i32 %spec.select.i, 1
  %div85152154.i = mul nuw nsw i32 %spec.select.i, 3
  %mul87.i = and i32 %div85152154.i, 4194302
  tail call void @usleep_range_state(i32 noundef %mul84.i, i32 noundef %mul87.i, i32 noundef 2) #8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.end79.i, %sw.bb68.i.if.end88.i_crit_edge
  %channel289.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %67 = ptrtoint ptr %channel289.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %channel289.i, align 4
  %call90.i = tail call i32 @inv_mpu_magn_read(ptr noundef %4, i32 noundef %68, ptr noundef %val) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end88.i, %inv_mpu6050_sensor_show.exit181.i, %inv_mpu6050_sensor_show.exit172.i, %inv_mpu6050_sensor_show.exit.i, %if.end.i.sw.epilog.i_crit_edge
  %ret.0.i = phi i32 [ %call90.i, %if.end88.i ], [ %retval.0.i180.i, %inv_mpu6050_sensor_show.exit181.i ], [ %retval.0.i171.i, %inv_mpu6050_sensor_show.exit172.i ], [ %retval.0.i161.i, %inv_mpu6050_sensor_show.exit.i ], [ -22, %if.end.i.sw.epilog.i_crit_edge ]
  %call.i185.i = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 12, i32 22
  %69 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store volatile i64 %call.i185.i, ptr %last_busy.i.i, align 8
  %call.i186.i = call i32 @__pm_runtime_suspend(ptr noundef %call1.i, i32 noundef 13) #8
  br label %inv_mpu6050_read_channel_data.exit

error_power_off.i:                                ; preds = %if.then68.i.i.error_power_off.i_crit_edge, %if.then57.i.error_power_off.i_crit_edge, %sw.bb36.i.error_power_off.i_crit_edge, %if.then24.i.error_power_off.i_crit_edge, %if.then6.i.error_power_off.i_crit_edge
  %result.0.i = phi i32 [ %call58.i, %if.then57.i.error_power_off.i_crit_edge ], [ %call25.i, %if.then24.i.error_power_off.i_crit_edge ], [ %call7.i, %if.then6.i.error_power_off.i_crit_edge ], [ -16, %sw.bb36.i.error_power_off.i_crit_edge ], [ %call82.i.i, %if.then68.i.i.error_power_off.i_crit_edge ]
  %call.i187.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call1.i, i32 noundef 13) #8
  br label %inv_mpu6050_read_channel_data.exit

inv_mpu6050_read_channel_data.exit:               ; preds = %error_power_off.i, %sw.epilog.i, %do.end11.i.i.i.i.i.i, %if.then.i.i.inv_mpu6050_read_channel_data.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %sw.epilog.i ], [ %result.0.i, %error_power_off.i ], [ %call.i.i, %if.then.i.i.inv_mpu6050_read_channel_data.exit_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %1) #8
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %70 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %chan, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %71, label %sw.bb4.cleanup_crit_edge [
    i32 4, label %sw.bb5
    i32 3, label %sw.bb8
    i32 9, label %sw.bb17
    i32 5, label %sw.bb21
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %val, align 4
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 2
  %74 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %74, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.lshr = lshr i24 %bf.load, 19
  %bf.clear = and i24 %bf.lshr, 3
  %bf.cast = zext i24 %bf.clear to i32
  %arrayidx = getelementptr [4 x i32], ptr @gyro_scale_6050, i32 0, i32 %bf.cast
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx, align 4
  %77 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %val, align 4
  %chip_config10 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 2
  %79 = ptrtoint ptr %chip_config10 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 3)
  %bf.load11 = load i24, ptr %chip_config10, align 32
  %bf.lshr12 = lshr i24 %bf.load11, 14
  %bf.clear13 = and i24 %bf.lshr12, 3
  %bf.cast14 = zext i24 %bf.clear13 to i32
  %arrayidx15 = getelementptr [4 x i32], ptr @accel_scale, i32 0, i32 %bf.cast14
  %80 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx15, align 4
  %82 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %hw = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 4
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 4
  %scale = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %84, i32 0, i32 5, i32 1
  %85 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %scale, align 4
  %div = sdiv i32 %86, 1000000
  %87 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %div, ptr %val, align 4
  %88 = load ptr, ptr %hw, align 4
  %scale20 = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %88, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %scale20 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %scale20, align 4
  %rem = srem i32 %90, 1000000
  %91 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %rem, ptr %val2, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %val, align 4
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %93 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %address.i, align 4
  %arrayidx.i = getelementptr %struct.inv_mpu6050_state, ptr %1, i32 0, i32 20, i32 %94
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i, align 4
  %97 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %val2, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %98 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %99)
  %cond = icmp eq i32 %99, 9
  br i1 %cond, label %sw.bb25, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %hw26 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %hw26 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %hw26, align 4
  %temp27 = getelementptr inbounds %struct.inv_mpu6050_hw, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %temp27 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %temp27, align 4
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %val, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %entry
  %105 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %chan, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %106, label %sw.bb29.cleanup_crit_edge [
    i32 4, label %sw.bb31
    i32 3, label %sw.bb35
  ]

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb29
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 3
  %108 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %reg, align 8
  %gyro_offset = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %109, i32 0, i32 18
  %110 = ptrtoint ptr %gyro_offset to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %gyro_offset, align 1
  %conv = zext i8 %111 to i32
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %112 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %channel2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i) #8
  %114 = ptrtoint ptr %d.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 -1, ptr %d.i, align 2, !annotation !210
  %sub.i = shl i32 %113, 1
  %map.i85 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %115 = ptrtoint ptr %map.i85 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map.i85, align 4
  %mul.i86 = add nsw i32 %conv, -2
  %add.i87 = add i32 %mul.i86, %sub.i
  %call.i = call i32 @regmap_bulk_read(ptr noundef %116, i32 noundef %add.i87, ptr noundef nonnull %d.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i89, label %sw.bb31.inv_mpu6050_sensor_show.exit_crit_edge

sw.bb31.inv_mpu6050_sensor_show.exit_crit_edge:   ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_sensor_show.exit

if.end.i89:                                       ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %d.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %d.i, align 2
  %conv.i88 = sext i16 %118 to i32
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %conv.i88, ptr %val, align 4
  br label %inv_mpu6050_sensor_show.exit

inv_mpu6050_sensor_show.exit:                     ; preds = %if.end.i89, %sw.bb31.inv_mpu6050_sensor_show.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i) #8
  call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb29
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %reg37 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 3
  %120 = ptrtoint ptr %reg37 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %reg37, align 8
  %accl_offset = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %121, i32 0, i32 17
  %122 = ptrtoint ptr %accl_offset to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %accl_offset, align 1
  %conv38 = zext i8 %123 to i32
  %channel239 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %124 = ptrtoint ptr %channel239 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %channel239, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i91) #8
  %126 = ptrtoint ptr %d.i91 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %d.i91, align 2, !annotation !210
  %sub.i92 = shl i32 %125, 1
  %map.i93 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %127 = ptrtoint ptr %map.i93 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i93, align 4
  %mul.i94 = add nsw i32 %conv38, -2
  %add.i95 = add i32 %mul.i94, %sub.i92
  %call.i96 = call i32 @regmap_bulk_read(ptr noundef %128, i32 noundef %add.i95, ptr noundef nonnull %d.i91, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end.i99, label %sw.bb35.inv_mpu6050_sensor_show.exit101_crit_edge

sw.bb35.inv_mpu6050_sensor_show.exit101_crit_edge: ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_sensor_show.exit101

if.end.i99:                                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %d.i91 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %d.i91, align 2
  %conv.i98 = sext i16 %130 to i32
  %131 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %conv.i98, ptr %val, align 4
  br label %inv_mpu6050_sensor_show.exit101

inv_mpu6050_sensor_show.exit101:                  ; preds = %if.end.i99, %sw.bb35.inv_mpu6050_sensor_show.exit101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i91) #8
  call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %inv_mpu6050_sensor_show.exit101, %inv_mpu6050_sensor_show.exit, %sw.bb29.cleanup_crit_edge, %sw.bb25, %sw.bb23.cleanup_crit_edge, %sw.bb21, %sw.bb17, %sw.bb8, %sw.bb5, %sw.bb4.cleanup_crit_edge, %inv_mpu6050_read_channel_data.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %inv_mpu6050_sensor_show.exit101 ], [ 1, %inv_mpu6050_sensor_show.exit ], [ 1, %sw.bb25 ], [ 2, %sw.bb21 ], [ 2, %sw.bb17 ], [ 2, %sw.bb8 ], [ 3, %sw.bb5 ], [ %retval.0.i, %inv_mpu6050_read_channel_data.exit ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %sw.bb29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu6050_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %d.i51 = alloca i16, align 2
  %d.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #8
  %call2 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end6

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !211
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !212
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_write_raw_unlock_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_write_raw_unlock_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_write_raw_unlock

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !213
  br label %error_write_raw_unlock

if.end6:                                          ; preds = %if.end
  %5 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %mask, label %if.end6.sw.epilog23_crit_edge [
    i32 2, label %sw.bb
    i32 5, label %sw.bb11
  ]

if.end6.sw.epilog23_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb:                                            ; preds = %if.end6
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %7, label %sw.bb.sw.epilog23_crit_edge [
    i32 4, label %sw.bb7
    i32 3, label %sw.bb9
  ]

sw.bb.sw.epilog23_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call fastcc i32 @inv_mpu6050_write_gyro_scale(ptr noundef %1, i32 noundef %val, i32 noundef %val2)
  br label %sw.epilog23

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call fastcc i32 @inv_mpu6050_write_accel_scale(ptr noundef %1, i32 noundef %val, i32 noundef %val2)
  br label %sw.epilog23

sw.bb11:                                          ; preds = %if.end6
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %10, label %sw.bb11.sw.epilog23_crit_edge [
    i32 4, label %sw.bb13
    i32 3, label %sw.bb15
  ]

sw.bb11.sw.epilog23_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog23

sw.bb13:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 8
  %gyro_offset = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %gyro_offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %gyro_offset, align 1
  %conv = zext i8 %15 to i32
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %16 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i) #8
  %conv.i = trunc i32 %val to i16
  %18 = ptrtoint ptr %d.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %d.i, align 2
  %sub.i = shl i32 %17, 1
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 4
  %mul.i = add nsw i32 %conv, -2
  %add.i = add i32 %mul.i, %sub.i
  %call.i50 = call i32 @regmap_bulk_write(ptr noundef %20, i32 noundef %add.i, ptr noundef nonnull %d.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i = icmp eq i32 %call.i50, 0
  %..i = select i1 %tobool.not.i, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i) #8
  br label %sw.epilog23

sw.bb15:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %reg16 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %reg16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg16, align 8
  %accl_offset = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %accl_offset to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %accl_offset, align 1
  %conv17 = zext i8 %24 to i32
  %channel218 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %25 = ptrtoint ptr %channel218 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel218, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i51) #8
  %conv.i52 = trunc i32 %val to i16
  %27 = ptrtoint ptr %d.i51 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i52, ptr %d.i51, align 2
  %sub.i53 = shl i32 %26, 1
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map, align 4
  %mul.i55 = add nsw i32 %conv17, -2
  %add.i56 = add i32 %mul.i55, %sub.i53
  %call.i57 = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef %add.i56, ptr noundef nonnull %d.i51, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  %..i59 = select i1 %tobool.not.i58, i32 0, i32 -22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i51) #8
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.bb15, %sw.bb13, %sw.bb11.sw.epilog23_crit_edge, %sw.bb9, %sw.bb7, %sw.bb.sw.epilog23_crit_edge, %if.end6.sw.epilog23_crit_edge
  %result.0 = phi i32 [ %..i59, %sw.bb15 ], [ %..i, %sw.bb13 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ -22, %sw.bb.sw.epilog23_crit_edge ], [ -22, %sw.bb11.sw.epilog23_crit_edge ], [ -22, %if.end6.sw.epilog23_crit_edge ]
  %call.i60 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 12, i32 22
  %30 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store volatile i64 %call.i60, ptr %last_busy.i, align 8
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %call1, i32 noundef 13) #8
  br label %error_write_raw_unlock

error_write_raw_unlock:                           ; preds = %sw.epilog23, %do.end11.i.i.i.i.i, %if.then.i.error_write_raw_unlock_crit_edge
  %result.1 = phi i32 [ %result.0, %sw.epilog23 ], [ %call.i, %if.then.i.error_write_raw_unlock_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @mutex_unlock(ptr noundef %1) #8
  call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #8
  br label %cleanup

cleanup:                                          ; preds = %error_write_raw_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.1, %error_write_raw_unlock ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inv_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cond3 = icmp eq i32 %1, 4
  %. = select i1 %cond3, i32 3, i32 2
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %., %sw.bb ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @inv_mpu6050_validate_trigger(ptr nocapture noundef readonly %indio_dev, ptr noundef readnone %trig) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %trig1 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %trig1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trig1, align 4
  %cmp.not = icmp eq ptr %3, %trig
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu6050_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %readval, null
  %map2 = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  tail call void @mutex_unlock(ptr noundef %1) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_attr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %address = getelementptr inbounds %struct.iio_dev_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %address, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2, i64 %1)
  %switch = icmp ult i64 %1, 2
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %plat_data = getelementptr inbounds %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %plat_data, align 1
  %conv = sext i8 %5 to i32
  %arrayidx2 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %7 to i32
  %arrayidx4 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %9 to i32
  %arrayidx6 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %11 to i32
  %arrayidx8 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %13 to i32
  %arrayidx10 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %arrayidx12 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %17 to i32
  %arrayidx14 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %19 to i32
  %arrayidx16 = getelementptr %struct.inv_mpu6050_state, ptr %3, i32 0, i32 8, i32 0, i32 8
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %21 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.72, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv17) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_fifo_rate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %divider = getelementptr inbounds %struct.inv_mpu6050_state, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %divider to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %divider, align 1
  %conv = zext i8 %3 to i16
  %add = add nuw nsw i16 %conv, 1
  %div6 = udiv i16 1000, %add
  %div.zext = zext i16 %div6 to i32
  tail call void @mutex_unlock(ptr noundef %1) #8
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.75, i32 noundef %div.zext) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inv_mpu6050_fifo_rate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %fifo_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fifo_rate) #8
  %0 = ptrtoint ptr %fifo_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %fifo_rate, align 4, !annotation !210
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call2 = tail call ptr @regmap_get_device(ptr noundef %4) #8
  %call3 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %fifo_rate) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fifo_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_rate, align 4
  %7 = add i32 %6, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -997, i32 %7)
  %8 = icmp ult i32 %7, -997
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %div73.rhs.trunc = trunc i32 %6 to i16
  %div7374 = udiv i16 1000, %div73.rhs.trunc
  %9 = trunc i16 %div7374 to i8
  %conv = add i8 %9, -1
  %conv7 = zext i8 %conv to i32
  %10 = zext i8 %conv to i16
  %div8.rhs.trunc = add nuw nsw i16 %10, 1
  %div875 = udiv i16 1000, %div8.rhs.trunc
  %div8.zext = zext i16 %div875 to i32
  %11 = ptrtoint ptr %fifo_rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div8.zext, ptr %fifo_rate, align 4
  call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #8
  %divider = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %divider to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %divider, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv, i8 %13)
  %cmp11 = icmp eq i8 %conv, %13
  br i1 %cmp11, label %fifo_rate_fail_unlock.thread, label %if.end14

fifo_rate_fail_unlock.thread:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %2) #8
  br label %27

if.end14:                                         ; preds = %if.end6
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %call2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end18

if.then.i:                                        ; preds = %if.end14
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 12, i32 13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !211
  call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %14 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !212
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.fifo_rate_fail_unlock.thread70_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.fifo_rate_fail_unlock.thread70_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fifo_rate_fail_unlock.thread70

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !213
  br label %fifo_rate_fail_unlock.thread70

fifo_rate_fail_unlock.thread70:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.fifo_rate_fail_unlock.thread70_crit_edge
  call void @mutex_unlock(ptr noundef %2) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %2, i32 0, i32 3
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv20 = zext i8 %20 to i32
  %call22 = call i32 @regmap_write(ptr noundef %16, i32 noundef %conv20, i32 noundef %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end18.fifo_rate_fail_unlock_crit_edge

if.end18.fifo_rate_fail_unlock_crit_edge:         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %fifo_rate_fail_unlock

if.end25:                                         ; preds = %if.end18
  %21 = ptrtoint ptr %divider to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %divider, align 1
  %22 = ptrtoint ptr %fifo_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_rate, align 4
  %call28 = call fastcc i32 @inv_mpu6050_set_lpf(ptr noundef %2, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end25.fifo_rate_fail_unlock_crit_edge

if.end25.fifo_rate_fail_unlock_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %fifo_rate_fail_unlock

if.end31:                                         ; preds = %if.end25
  %24 = ptrtoint ptr %fifo_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fifo_rate, align 4
  %call32 = call i32 @inv_mpu_magn_set_rate(ptr noundef %2, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.fifo_rate_fail_unlock_crit_edge

if.end31.fifo_rate_fail_unlock_crit_edge:         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %fifo_rate_fail_unlock

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i64 = call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i64, ptr %last_busy.i, align 8
  br label %fifo_rate_fail_unlock

fifo_rate_fail_unlock:                            ; preds = %if.end35, %if.end31.fifo_rate_fail_unlock_crit_edge, %if.end25.fifo_rate_fail_unlock_crit_edge, %if.end18.fifo_rate_fail_unlock_crit_edge
  %result.0 = phi i32 [ %call22, %if.end18.fifo_rate_fail_unlock_crit_edge ], [ %call28, %if.end25.fifo_rate_fail_unlock_crit_edge ], [ %call32, %if.end31.fifo_rate_fail_unlock_crit_edge ], [ 0, %if.end35 ]
  %call.i65 = call i32 @__pm_runtime_suspend(ptr noundef %call2, i32 noundef 13) #8
  call void @mutex_unlock(ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool38.not = icmp eq i32 %result.0, 0
  br i1 %tobool38.not, label %fifo_rate_fail_unlock._crit_edge, label %fifo_rate_fail_unlock.cleanup_crit_edge

fifo_rate_fail_unlock.cleanup_crit_edge:          ; preds = %fifo_rate_fail_unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fifo_rate_fail_unlock._crit_edge:                 ; preds = %fifo_rate_fail_unlock
  call void @__sanitizer_cov_trace_pc() #10
  br label %27

27:                                               ; preds = %fifo_rate_fail_unlock._crit_edge, %fifo_rate_fail_unlock.thread
  br label %cleanup

cleanup:                                          ; preds = %27, %fifo_rate_fail_unlock.cleanup_crit_edge, %fifo_rate_fail_unlock.thread70, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %27 ], [ %result.0, %fifo_rate_fail_unlock.cleanup_crit_edge ], [ %call.i, %fifo_rate_fail_unlock.thread70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fifo_rate) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu6050_set_lpf(ptr nocapture noundef %st, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %rate)
  %cmp1.not = icmp slt i32 %rate, 400
  br i1 %cmp1.not, label %for.inc, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.021.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ]
  %arrayidx2 = getelementptr [6 x i32], ptr @inv_mpu6050_set_lpf.d, i32 0, i32 %i.021.lcssa
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx2, align 4
  %phi.cast = and i32 %1, 255
  br label %for.end

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %rate)
  %cmp1.not.1 = icmp slt i32 %rate, 200
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %rate)
  %cmp1.not.2 = icmp slt i32 %rate, 90
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %rate)
  %cmp1.not.3 = icmp slt i32 %rate, 40
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %rate)
  %cmp1.not.4 = icmp slt i32 %rate, 20
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %rate)
  %cmp1.not.5 = icmp slt i32 %rate, 10
  br i1 %cmp1.not.5, label %for.inc.4.for.end_crit_edge, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.4.for.end_crit_edge, %if.then
  %data.0 = phi i32 [ %phi.cast, %if.then ], [ 6, %for.inc.4.for.end_crit_edge ]
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg.i, align 8
  %lpf.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %lpf.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lpf.i, align 1
  %conv.i = zext i8 %7 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %conv.i, i32 noundef %data.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %8 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chip_type.i, align 16
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %9, label %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge [
    i32 0, label %if.end.i.if.end5_crit_edge
    i32 4, label %if.end.i.if.end5_crit_edge23
    i32 5, label %if.end.i.if.end5_crit_edge24
    i32 10, label %if.end.i.sw.bb1.i_crit_edge
    i32 12, label %if.end.i.sw.bb1.i_crit_edge25
  ]

if.end.i.sw.bb1.i_crit_edge25:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.sw.bb1.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end.i.if.end5_crit_edge24:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i.if.end5_crit_edge23:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %inv_mpu6050_set_lpf_regs.exit

sw.bb1.i:                                         ; preds = %if.end.i.sw.bb1.i_crit_edge, %if.end.i.sw.bb1.i_crit_edge25
  %or.i = or i32 %data.0, 192
  br label %inv_mpu6050_set_lpf_regs.exit

inv_mpu6050_set_lpf_regs.exit:                    ; preds = %sw.bb1.i, %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge
  %val.addr.0.i = phi i32 [ %data.0, %if.end.i.inv_mpu6050_set_lpf_regs.exit_crit_edge ], [ %or.i, %sw.bb1.i ]
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg.i, align 8
  %accel_lpf.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %accel_lpf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %accel_lpf.i, align 1
  %conv4.i = zext i8 %16 to i32
  %call5.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %conv4.i, i32 noundef %val.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not = icmp eq i32 %call5.i, 0
  br i1 %tobool.not, label %inv_mpu6050_set_lpf_regs.exit.if.end5_crit_edge, label %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge

inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge:  ; preds = %inv_mpu6050_set_lpf_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

inv_mpu6050_set_lpf_regs.exit.if.end5_crit_edge:  ; preds = %inv_mpu6050_set_lpf_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %inv_mpu6050_set_lpf_regs.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %if.end.i.if.end5_crit_edge23, %if.end.i.if.end5_crit_edge24
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %17 = trunc i32 %data.0 to i24
  %18 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %18, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.value = shl nuw i24 %17, 16
  %bf.shl = and i24 %bf.value, 458752
  %bf.clear = and i24 %bf.load, -458753
  %bf.set = or i24 %bf.clear, %bf.shl
  store i24 %bf.set, ptr %chip_config, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ %call5.i, %inv_mpu6050_set_lpf_regs.exit.cleanup_crit_edge ], [ %call.i, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_magn_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu_magn_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu6050_write_gyro_scale(ptr nocapture noundef %st, i32 noundef %val, i32 noundef %val2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 133090, label %for.body.preheader.if.then3_crit_edge
    i32 266181, label %if.then3.fold.split
    i32 532362, label %if.then3.fold.split17
    i32 1064724, label %if.then3.fold.split18
  ]

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3.fold.split17:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3.fold.split18:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %if.then3.fold.split18, %if.then3.fold.split17, %if.then3.fold.split, %for.body.preheader.if.then3_crit_edge
  %i.015.lcssa = phi i32 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split17 ], [ 3, %if.then3.fold.split18 ]
  %chip_type.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 5
  %1 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip_type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cond.i = icmp eq i32 %2, 12
  %..i = select i1 %cond.i, i32 2, i32 3
  %shl.i = shl nuw nsw i32 %i.015.lcssa, %..i
  %map.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %3 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.i, align 4
  %reg.i = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg.i, align 8
  %gyro_config.i = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %gyro_config.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gyro_config.i, align 1
  %conv1.i = zext i8 %8 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %conv1.i, i32 noundef %shl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %9 = trunc i32 %i.015.lcssa to i24
  %10 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %10, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.value = shl nuw nsw i24 %9, 19
  %bf.clear = and i24 %bf.load, -1572865
  %bf.set = or i24 %bf.clear, %bf.value
  store i24 %bf.set, ptr %chip_config, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inv_mpu6050_write_accel_scale(ptr nocapture noundef %st, i32 noundef %val, i32 noundef %val2) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  br i1 %cmp.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %val2, label %for.body.preheader.cleanup_crit_edge [
    i32 598, label %for.body.preheader.if.then3_crit_edge
    i32 1196, label %if.then3.fold.split
    i32 2392, label %if.then3.fold.split21
    i32 4785, label %if.then3.fold.split22
  ]

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3.fold.split21:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3.fold.split22:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %if.then3.fold.split22, %if.then3.fold.split21, %if.then3.fold.split, %for.body.preheader.if.then3_crit_edge
  %i.019.lcssa = phi i32 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split21 ], [ 3, %if.then3.fold.split22 ]
  %conv = shl nuw nsw i32 %i.019.lcssa, 3
  %map = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 10
  %1 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %map, align 4
  %reg = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 3
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 8
  %accl_config = getelementptr inbounds %struct.inv_mpu6050_reg_map, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %accl_config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %accl_config, align 1
  %conv4 = zext i8 %6 to i32
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef %conv4, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %chip_config = getelementptr inbounds %struct.inv_mpu6050_state, ptr %st, i32 0, i32 2
  %7 = trunc i32 %i.019.lcssa to i24
  %8 = ptrtoint ptr %chip_config to i32
  call void @__asan_loadN_noabort(i32 %8, i32 3)
  %bf.load = load i24, ptr %chip_config, align 32
  %bf.value = shl nuw nsw i24 %7, 14
  %bf.clear = and i24 %bf.load, -49153
  %bf.set = or i24 %bf.clear, %bf.value
  store i24 %bf.set, ptr %chip_config, align 32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then3.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then3.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inv_mpu6050_prepare_fifo(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 105)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !171, !172, !174, !175, !177, !179, !181, !183, !184, !185, !187, !188, !189, !191, !192, !193, !195}
!llvm.module.flags = !{!197, !198, !199, !200, !201, !202, !203, !204}
!llvm.ident = !{!205}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 382, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @inv_mpu6050_switch_engine.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1452, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @inv_mpu_core_probe._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @inv_mpu_core_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @inv_mpu_core_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1457, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1466, i32 4}
!18 = !{ptr @inv_mpu_core_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @inv_mpu_core_probe._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1477, i32 4}
!22 = !{ptr @inv_mpu_core_probe._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @inv_mpu_core_probe._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1500, i32 3}
!26 = !{ptr @inv_mpu_core_probe._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @inv_mpu_core_probe._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1505, i32 43}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1508, i32 10}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1510, i32 45}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1513, i32 10}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1517, i32 3}
!38 = !{ptr @inv_mpu_core_probe._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @inv_mpu_core_probe._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1531, i32 3}
!42 = !{ptr @inv_mpu_core_probe._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @inv_mpu_core_probe._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1548, i32 3}
!46 = !{ptr @inv_mpu_core_probe._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @inv_mpu_core_probe._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1624, i32 4}
!50 = !{ptr @inv_mpu_core_probe._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @inv_mpu_core_probe._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1630, i32 4}
!54 = !{ptr @inv_mpu_core_probe._entry.34, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @inv_mpu_core_probe._entry_ptr.36, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1637, i32 3}
!58 = !{ptr @inv_mpu_core_probe._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @inv_mpu_core_probe._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_inv_mpu_core_probe, !61, !"__ksymtab_inv_mpu_core_probe", i1 false, i1 false}
!61 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1647, i32 1}
!62 = !{ptr @inv_mpu_pmops, !63, !"inv_mpu_pmops", i1 false, i1 false}
!63 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1761, i32 25}
!64 = !{ptr @__ksymtab_inv_mpu_pmops, !65, !"__ksymtab_inv_mpu_pmops", i1 false, i1 false}
!65 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1765, i32 1}
!66 = !{ptr @__UNIQUE_ID_author292, !67, !"__UNIQUE_ID_author292", i1 false, i1 false}
!67 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1767, i32 1}
!68 = !{ptr @__UNIQUE_ID_description293, !69, !"__UNIQUE_ID_description293", i1 false, i1 false}
!69 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1768, i32 1}
!70 = !{ptr @__UNIQUE_ID_file294, !71, !"__UNIQUE_ID_file294", i1 false, i1 false}
!71 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1769, i32 1}
!72 = !{ptr @__UNIQUE_ID_license295, !71, !"__UNIQUE_ID_license295", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 283, i32 2}
!75 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @inv_mpu6050_pwr_mgmt_1_write.__UNIQUE_ID_ddebug289, !74, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1393, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @inv_mpu_core_enable_regulator_vddio._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @inv_mpu_core_enable_regulator_vddio._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1422, i32 3}
!84 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @inv_mpu_core_disable_regulator_action._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @inv_mpu_core_disable_regulator_action._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.46, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1409, i32 3}
!89 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @inv_mpu_core_disable_regulator_vddio._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @inv_mpu_core_disable_regulator_vddio._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1324, i32 5}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @inv_check_and_setup_chip._entry, !93, !"_entry", i1 false, i1 false}
!97 = !{ptr @inv_check_and_setup_chip._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.52, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1332, i32 4}
!100 = !{ptr @inv_check_and_setup_chip._entry.51, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @inv_check_and_setup_chip._entry_ptr.53, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 141, i32 11}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 150, i32 11}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 159, i32 11}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 168, i32 11}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 177, i32 11}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 186, i32 11}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 195, i32 11}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 204, i32 11}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 213, i32 11}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 222, i32 11}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 231, i32 11}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 240, i32 11}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 249, i32 11}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 258, i32 11}
!130 = !{ptr @hw_info, !131, !"hw_info", i1 false, i1 false}
!131 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 138, i32 36}
!132 = !{ptr @reg_set_6050, !133, !"reg_set_6050", i1 false, i1 false}
!133 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 82, i32 41}
!134 = !{ptr @chip_config_6050, !135, !"chip_config_6050", i1 false, i1 false}
!135 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 103, i32 45}
!136 = !{ptr @reg_set_6500, !137, !"reg_set_6500", i1 false, i1 false}
!137 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 59, i32 41}
!138 = !{ptr @chip_config_6500, !139, !"chip_config_6500", i1 false, i1 false}
!139 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 120, i32 45}
!140 = !{ptr @reg_set_icm20602, !141, !"reg_set_icm20602", i1 false, i1 false}
!141 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 36, i32 41}
!142 = !{ptr @inv_mpu9150_channels, !143, !"inv_mpu9150_channels", i1 false, i1 false}
!143 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1154, i32 35}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1057, i32 2}
!146 = !{ptr @inv_ext_info, !147, !"inv_ext_info", i1 false, i1 false}
!147 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1056, i32 44}
!148 = !{ptr @inv_mpu9x50_scan_masks, !149, !"inv_mpu9x50_scan_masks", i1 false, i1 false}
!149 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1197, i32 28}
!150 = !{ptr @inv_mpu9250_channels, !151, !"inv_mpu9250_channels", i1 false, i1 false}
!151 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1173, i32 35}
!152 = !{ptr @inv_mpu_channels, !153, !"inv_mpu_channels", i1 false, i1 false}
!153 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1096, i32 35}
!154 = !{ptr @inv_icm20602_scan_masks, !155, !"inv_icm20602_scan_masks", i1 false, i1 false}
!155 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1228, i32 28}
!156 = !{ptr @inv_mpu_scan_masks, !157, !"inv_mpu_scan_masks", i1 false, i1 false}
!157 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1122, i32 28}
!158 = !{ptr @mpu_info, !159, !"mpu_info", i1 false, i1 false}
!159 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1293, i32 30}
!160 = !{ptr @inv_attribute_group, !161, !"inv_attribute_group", i1 false, i1 false}
!161 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1271, i32 37}
!162 = !{ptr @inv_attributes, !163, !"inv_attributes", i1 false, i1 false}
!163 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1261, i32 26}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1256, i32 8}
!166 = !{ptr @iio_dev_attr_in_gyro_matrix, !165, !"iio_dev_attr_in_gyro_matrix", i1 false, i1 false}
!167 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1014, i32 4}
!169 = !{ptr @.str.73, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1258, i32 8}
!171 = !{ptr @iio_dev_attr_in_accel_matrix, !170, !"iio_dev_attr_in_accel_matrix", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1252, i32 8}
!174 = !{ptr @iio_dev_attr_sampling_frequency, !173, !"iio_dev_attr_sampling_frequency", i1 false, i1 false}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 986, i32 35}
!177 = distinct !{null, !178, !"hz", i1 false, i1 false}
!178 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 889, i32 19}
!179 = !{ptr @inv_mpu6050_set_lpf.d, !180, !"d", i1 false, i1 false}
!180 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 890, i32 19}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1247, i32 8}
!183 = !{ptr @.str.77, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @iio_const_attr_sampling_frequency_available, !182, !"iio_const_attr_sampling_frequency_available", i1 false, i1 false}
!185 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1250, i32 8}
!187 = !{ptr @.str.79, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @iio_const_attr_in_accel_scale_available, !186, !"iio_const_attr_in_accel_scale_available", i1 false, i1 false}
!189 = !{ptr @.str.80, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 1248, i32 8}
!191 = !{ptr @.str.81, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @iio_const_attr_in_anglvel_scale_available, !190, !"iio_const_attr_in_anglvel_scale_available", i1 false, i1 false}
!193 = !{ptr @gyro_scale_6050, !194, !"gyro_scale_6050", i1 false, i1 false}
!194 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 28, i32 18}
!195 = !{ptr @accel_scale, !196, !"accel_scale", i1 false, i1 false}
!196 = !{!"../drivers/iio/imu/inv_mpu6050/inv_mpu_core.c", i32 34, i32 18}
!197 = !{i32 1, !"wchar_size", i32 2}
!198 = !{i32 1, !"min_enum_size", i32 4}
!199 = !{i32 8, !"branch-target-enforcement", i32 0}
!200 = !{i32 8, !"sign-return-address", i32 0}
!201 = !{i32 8, !"sign-return-address-all", i32 0}
!202 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!203 = !{i32 7, !"uwtable", i32 1}
!204 = !{i32 7, !"frame-pointer", i32 2}
!205 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!206 = !{i64 2149001107, i64 2149001112, i64 2149001125, i64 2149001169, i64 2149001203, i64 2149001224}
!207 = !{ptr @inv_mpu_core_disable_regulator_action, ptr @inv_mpu_pm_disable}
!208 = !{i64 2148387730, i64 2148387756, i64 2148387785, i64 2148387819, i64 2148387850, i64 2148387873}
!209 = !{i8 0, i8 2}
!210 = !{!"auto-init"}
!211 = !{i64 2148387149}
!212 = !{i64 872769, i64 872794, i64 872816, i64 872832, i64 872844, i64 872864, i64 872888, i64 872904, i64 872916}
!213 = !{i64 2148387337}
