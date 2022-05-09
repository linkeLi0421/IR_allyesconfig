; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c_pt.bc'
source_filename = "../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_lsm6dsx_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st_lsm6dsx_probe\09\09\09\09"
module asm "\09.long\09__crc_st_lsm6dsx_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_lsm6dsx_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st_lsm6dsx_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st_lsm6dsx_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_lsm6dsx_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_st_lsm6dsx_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_st_lsm6dsx_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_lsm6dsx_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22st_lsm6dsx_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_st_lsm6dsx_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }
%struct.anon.79 = type { i32, ptr, i8 }
%struct.anon.80 = type { ptr, i32 }
%struct.anon.81 = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg }
%struct.st_lsm6dsx_reg = type { i8, i8 }
%struct.st_lsm6dsx_odr_table_entry = type { %struct.st_lsm6dsx_reg, [8 x %struct.st_lsm6dsx_odr], i32 }
%struct.st_lsm6dsx_odr = type { i32, i8 }
%struct.st_lsm6dsx_fs_table_entry = type { %struct.st_lsm6dsx_reg, [4 x %struct.st_lsm6dsx_fs], i32 }
%struct.st_lsm6dsx_fs = type { i32, i8 }
%struct.st_lsm6dsx_fifo_ops = type { ptr, ptr, %struct.anon.86, %struct.anon.87, i16, i8 }
%struct.anon.86 = type { i8, i16 }
%struct.anon.87 = type { i8, i16 }
%struct.st_lsm6dsx_hw_ts_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8 }
%struct.st_lsm6dsx_shub_settings = type { %struct.st_lsm6dsx_reg, %struct.anon.88, %struct.anon.89, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, %struct.anon.90, i8, i8, i8, i8 }
%struct.anon.88 = type { i8, i8, i8 }
%struct.anon.89 = type { i8, i8, i8 }
%struct.anon.90 = type { i8, i8 }
%struct.st_lsm6dsx_event_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, i8, i8, i8, i8 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.st_lsm6dsx_hw = type { ptr, ptr, [2 x %struct.regulator_bulk_data], i32, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i64, i8, i8, ptr, i8, i8, ptr, [5 x ptr], ptr, %struct.iio_mount_matrix, [3 x %struct.anon.91] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.91 = type { [3 x i16], i64 }
%struct.st_lsm6dsx_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [16 x %struct.anon.79], [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }
%struct.st_lsm6dsx_sensor = type { [32 x i8], i32, ptr, i32, i32, i16, i8, i8, i64, %struct.anon.82 }
%struct.anon.82 = type { ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.st_sensors_platform_data = type { i8, i8, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@st_lsm6dsx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->fifo_lock\00", [17 x i8] zeroinitializer }, align 32
@st_lsm6dsx_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->conf_lock\00", [17 x i8] zeroinitializer }, align 32
@st_lsm6dsx_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&hw->page_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,disable-sensor-hub\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_st_lsm6dsx_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_lsm6dsx_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st_lsm6dsx_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_lsm6dsx_probe to i32), ptr @__kstrtab_st_lsm6dsx_probe, ptr @__kstrtabns_st_lsm6dsx_probe }, section "___ksymtab+st_lsm6dsx_probe", align 4
@st_lsm6dsx_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @st_lsm6dsx_suspend, ptr @st_lsm6dsx_resume, ptr @st_lsm6dsx_suspend, ptr @st_lsm6dsx_resume, ptr @st_lsm6dsx_suspend, ptr @st_lsm6dsx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_st_lsm6dsx_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_lsm6dsx_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_st_lsm6dsx_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_lsm6dsx_pm_ops to i32), ptr @__kstrtab_st_lsm6dsx_pm_ops, ptr @__kstrtabns_st_lsm6dsx_pm_ops }, section "___ksymtab+st_lsm6dsx_pm_ops", align 4
@__UNIQUE_ID_author290 = internal constant [61 x i8] c"st_lsm6dsx.author=Lorenzo Bianconi <lorenzo.bianconi@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [53 x i8] c"st_lsm6dsx.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [60 x i8] c"st_lsm6dsx.description=STMicroelectronics st_lsm6dsx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [54 x i8] c"st_lsm6dsx.file=drivers/iio/imu/st_lsm6dsx/st_lsm6dsx\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"st_lsm6dsx.license=GPL v2\00", section ".modinfo", align 1
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@st_lsm6dsx_init_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 2185, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st_lsm6dsx_init_regulators\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c\00", [51 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_init_regulators._entry_ptr = internal global ptr @st_lsm6dsx_init_regulators._entry, section ".printk_index", align 4
@st_lsm6dsx_check_whoami._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.12, i32 1186, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported hw id [%02x]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_lsm6dsx_check_whoami\00", [40 x i8] zeroinitializer }, align 32
@st_lsm6dsx_check_whoami._entry_ptr = internal global ptr @st_lsm6dsx_check_whoami._entry, section ".printk_index", align 4
@st_lsm6dsx_check_whoami._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.12, i32 1192, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read whoami register\0A\00", [32 x i8] zeroinitializer }, align 32
@st_lsm6dsx_check_whoami._entry_ptr.19 = internal global ptr @st_lsm6dsx_check_whoami._entry.17, section ".printk_index", align 4
@st_lsm6dsx_check_whoami._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.12, i32 1197, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported whoami [%02x]\0A\00", [37 x i8] zeroinitializer }, align 32
@st_lsm6dsx_check_whoami._entry_ptr.22 = internal global ptr @st_lsm6dsx_check_whoami._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lsm9ds1-imu\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6ds0\00", [24 x i8] zeroinitializer }, align 32
@st_lsm6ds0_gyro_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 24, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 26, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 28, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@st_lsm6dsx_acc_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 40, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @st_lsm6dsx_event, i32 1, ptr @st_lsm6dsx_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 42, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @st_lsm6dsx_event, i32 1, ptr @st_lsm6dsx_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 44, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @st_lsm6dsx_event, i32 1, ptr @st_lsm6dsx_accel_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6ds3\00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_gyro_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 34, i32 0, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 36, i32 1, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 38, i32 2, %struct.anon.78 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.78 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lsm6ds3h\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dsl\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dsm\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ism330dlc\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lsm6ds3tr-c\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dsr\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ism330dhcx\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lsm6dsrx\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dso\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lsm6dsox\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dst\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm330lhh\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lsm6dsop\00", [23 x i8] zeroinitializer }, align 32
@st_lsm6dsx_sensor_settings = internal constant { <{ { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [12 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [13 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [10 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } }>, [880 x i8] } { <{ { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [12 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [13 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [10 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } }> <{ { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 34, i8 1 }, %struct.st_lsm6dsx_reg { i8 34, i8 -128 }, %struct.st_lsm6dsx_reg { i8 34, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }> <{ %struct.anon.79 { i32 11, ptr @.str.23, i8 104 }, %struct.anon.79 { i32 12, ptr @.str.24, i8 104 }, [14 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6ds0_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 12, i8 8 }, %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 34, i8 32 }, %struct.st_lsm6dsx_reg { i8 34, i8 16 } }, %struct.st_lsm6dsx_reg zeroinitializer, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -32 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 14900, i8 1 }, %struct.st_lsm6dsx_odr { i32 59500, i8 2 }, %struct.st_lsm6dsx_odr { i32 119000, i8 3 }, %struct.st_lsm6dsx_odr { i32 238000, i8 4 }, %struct.st_lsm6dsx_odr { i32 476000, i8 5 }, %struct.st_lsm6dsx_odr { i32 952000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 32, i8 -32 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 10000, i8 1 }, %struct.st_lsm6dsx_odr { i32 50000, i8 2 }, %struct.st_lsm6dsx_odr { i32 119000, i8 3 }, %struct.st_lsm6dsx_odr { i32 238000, i8 4 }, %struct.st_lsm6dsx_odr { i32 476000, i8 5 }, %struct.st_lsm6dsx_odr { i32 952000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 24 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }, %struct.st_lsm6dsx_fs zeroinitializer], i32 3 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 32, i8 24 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 7178467, i8 1 }], i32 4 }], [16 x %struct.st_lsm6dsx_reg] zeroinitializer, [16 x %struct.st_lsm6dsx_reg] zeroinitializer, %struct.st_lsm6dsx_fifo_ops { ptr null, ptr null, %struct.anon.86 zeroinitializer, %struct.anon.87 zeroinitializer, i16 32, i8 0 }, %struct.st_lsm6dsx_hw_ts_settings zeroinitializer, %struct.st_lsm6dsx_shub_settings zeroinitializer, %struct.st_lsm6dsx_event_settings zeroinitializer }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 18, i8 1 }, %struct.st_lsm6dsx_reg { i8 18, i8 -128 }, %struct.st_lsm6dsx_reg { i8 18, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, [15 x %struct.anon.79] }> <{ %struct.anon.79 { i32 0, ptr @.str.25, i8 105 }, [15 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6dsx_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg { i8 14, i8 8 }, %struct.st_lsm6dsx_reg { i8 94, i8 32 }, %struct.st_lsm6dsx_reg { i8 95, i8 32 }, %struct.st_lsm6dsx_reg { i8 88, i8 1 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 18, i8 32 }, %struct.st_lsm6dsx_reg { i8 18, i8 16 } }, %struct.st_lsm6dsx_reg zeroinitializer, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 610865, i8 2 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 4785645, i8 1 }], i32 4 }], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }> <{ %struct.st_lsm6dsx_reg { i8 8, i8 56 }, %struct.st_lsm6dsx_reg { i8 8, i8 7 }, [14 x %struct.st_lsm6dsx_reg] zeroinitializer }>, [16 x %struct.st_lsm6dsx_reg] zeroinitializer, %struct.st_lsm6dsx_fifo_ops { ptr @st_lsm6dsx_update_fifo, ptr @st_lsm6dsx_read_fifo, %struct.anon.86 { i8 6, i16 4095 }, %struct.anon.87 { i8 58, i16 4095 }, i16 1365, i8 3 }, %struct.st_lsm6dsx_hw_ts_settings { %struct.st_lsm6dsx_reg { i8 88, i8 -128 }, %struct.st_lsm6dsx_reg { i8 92, i8 16 }, %struct.st_lsm6dsx_reg { i8 7, i8 -128 }, %struct.st_lsm6dsx_reg { i8 9, i8 56 }, i8 0 }, %struct.st_lsm6dsx_shub_settings zeroinitializer, %struct.st_lsm6dsx_event_settings { %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 91, i8 63 }, i8 27, i8 8, i8 1, i8 2, i8 4 } }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, [15 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 18, i8 1 }, %struct.st_lsm6dsx_reg { i8 18, i8 -128 }, %struct.st_lsm6dsx_reg { i8 18, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, [15 x %struct.anon.79] }> <{ %struct.anon.79 { i32 1, ptr @.str.26, i8 105 }, [15 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6dsx_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg { i8 14, i8 8 }, %struct.st_lsm6dsx_reg { i8 94, i8 32 }, %struct.st_lsm6dsx_reg { i8 95, i8 32 }, %struct.st_lsm6dsx_reg { i8 88, i8 1 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 18, i8 32 }, %struct.st_lsm6dsx_reg { i8 18, i8 16 } }, %struct.st_lsm6dsx_reg zeroinitializer, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 610865, i8 2 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 4785645, i8 1 }], i32 4 }], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }> <{ %struct.st_lsm6dsx_reg { i8 8, i8 56 }, %struct.st_lsm6dsx_reg { i8 8, i8 7 }, [14 x %struct.st_lsm6dsx_reg] zeroinitializer }>, [16 x %struct.st_lsm6dsx_reg] zeroinitializer, %struct.st_lsm6dsx_fifo_ops { ptr @st_lsm6dsx_update_fifo, ptr @st_lsm6dsx_read_fifo, %struct.anon.86 { i8 6, i16 4095 }, %struct.anon.87 { i8 58, i16 4095 }, i16 682, i8 3 }, %struct.st_lsm6dsx_hw_ts_settings { %struct.st_lsm6dsx_reg { i8 88, i8 -128 }, %struct.st_lsm6dsx_reg { i8 92, i8 16 }, %struct.st_lsm6dsx_reg { i8 7, i8 -128 }, %struct.st_lsm6dsx_reg { i8 9, i8 56 }, i8 0 }, %struct.st_lsm6dsx_shub_settings zeroinitializer, %struct.st_lsm6dsx_event_settings { %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 91, i8 63 }, i8 27, i8 8, i8 1, i8 2, i8 4 } }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [12 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [13 x %struct.st_lsm6dsx_reg] }>, [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 18, i8 1 }, %struct.st_lsm6dsx_reg { i8 18, i8 -128 }, %struct.st_lsm6dsx_reg { i8 18, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [12 x %struct.anon.79] }> <{ %struct.anon.79 { i32 2, ptr @.str.27, i8 106 }, %struct.anon.79 { i32 3, ptr @.str.28, i8 106 }, %struct.anon.79 { i32 4, ptr @.str.29, i8 106 }, %struct.anon.79 { i32 9, ptr @.str.30, i8 106 }, [12 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6dsx_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg { i8 14, i8 8 }, %struct.st_lsm6dsx_reg { i8 94, i8 32 }, %struct.st_lsm6dsx_reg { i8 95, i8 32 }, %struct.st_lsm6dsx_reg { i8 88, i8 1 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 18, i8 32 }, %struct.st_lsm6dsx_reg { i8 18, i8 16 } }, %struct.st_lsm6dsx_reg zeroinitializer, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 6 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 610865, i8 2 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 4785645, i8 1 }], i32 4 }], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [13 x %struct.st_lsm6dsx_reg] }> <{ %struct.st_lsm6dsx_reg { i8 8, i8 56 }, %struct.st_lsm6dsx_reg { i8 8, i8 7 }, %struct.st_lsm6dsx_reg { i8 9, i8 7 }, [13 x %struct.st_lsm6dsx_reg] zeroinitializer }>, [16 x %struct.st_lsm6dsx_reg] zeroinitializer, %struct.st_lsm6dsx_fifo_ops { ptr @st_lsm6dsx_update_fifo, ptr @st_lsm6dsx_read_fifo, %struct.anon.86 { i8 6, i16 2047 }, %struct.anon.87 { i8 58, i16 2047 }, i16 682, i8 3 }, %struct.st_lsm6dsx_hw_ts_settings { %struct.st_lsm6dsx_reg { i8 25, i8 32 }, %struct.st_lsm6dsx_reg { i8 92, i8 16 }, %struct.st_lsm6dsx_reg { i8 7, i8 -128 }, %struct.st_lsm6dsx_reg { i8 9, i8 56 }, i8 0 }, %struct.st_lsm6dsx_shub_settings { %struct.st_lsm6dsx_reg { i8 1, i8 -128 }, %struct.anon.88 { i8 0, i8 26, i8 1 }, %struct.anon.89 { i8 0, i8 26, i8 8 }, %struct.st_lsm6dsx_reg { i8 4, i8 48 }, %struct.st_lsm6dsx_reg { i8 7, i8 32 }, %struct.st_lsm6dsx_reg { i8 25, i8 4 }, i8 1, %struct.anon.90 { i8 0, i8 46 }, i8 2, i8 14, i8 0, i8 7 }, %struct.st_lsm6dsx_event_settings { %struct.st_lsm6dsx_reg { i8 88, i8 -128 }, %struct.st_lsm6dsx_reg { i8 91, i8 63 }, i8 27, i8 8, i8 1, i8 2, i8 4 } }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [10 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 18, i8 1 }, %struct.st_lsm6dsx_reg { i8 18, i8 -128 }, %struct.st_lsm6dsx_reg { i8 18, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, %struct.anon.79, [10 x %struct.anon.79] }> <{ %struct.anon.79 { i32 8, ptr @.str.31, i8 107 }, %struct.anon.79 { i32 10, ptr @.str.32, i8 107 }, %struct.anon.79 { i32 13, ptr @.str.33, i8 107 }, %struct.anon.79 { i32 5, ptr @.str.34, i8 108 }, %struct.anon.79 { i32 7, ptr @.str.35, i8 108 }, %struct.anon.79 { i32 14, ptr @.str.36, i8 109 }, [10 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6dsx_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg { i8 14, i8 8 }, %struct.st_lsm6dsx_reg { i8 94, i8 32 }, %struct.st_lsm6dsx_reg { i8 95, i8 32 }, %struct.st_lsm6dsx_reg { i8 86, i8 1 }, %struct.st_lsm6dsx_reg { i8 86, i8 64 }, %struct.st_lsm6dsx_reg { i8 18, i8 32 }, %struct.st_lsm6dsx_reg { i8 18, i8 16 } }, %struct.st_lsm6dsx_reg { i8 19, i8 8 }, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr { i32 833000, i8 7 }, %struct.st_lsm6dsx_odr zeroinitializer], i32 7 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr { i32 833000, i8 7 }, %struct.st_lsm6dsx_odr zeroinitializer], i32 7 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 610865, i8 2 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 4785645, i8 1 }], i32 4 }], [16 x %struct.st_lsm6dsx_reg] zeroinitializer, <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }> <{ %struct.st_lsm6dsx_reg { i8 9, i8 -16 }, %struct.st_lsm6dsx_reg { i8 9, i8 15 }, [14 x %struct.st_lsm6dsx_reg] zeroinitializer }>, %struct.st_lsm6dsx_fifo_ops { ptr @st_lsm6dsx_update_fifo, ptr @st_lsm6dsx_read_tagged_fifo, %struct.anon.86 { i8 7, i16 511 }, %struct.anon.87 { i8 58, i16 1023 }, i16 512, i8 1 }, %struct.st_lsm6dsx_hw_ts_settings { %struct.st_lsm6dsx_reg { i8 25, i8 32 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 10, i8 -64 }, i8 99 }, %struct.st_lsm6dsx_shub_settings { %struct.st_lsm6dsx_reg { i8 1, i8 64 }, %struct.anon.88 { i8 1, i8 20, i8 4 }, %struct.anon.89 { i8 1, i8 20, i8 8 }, %struct.st_lsm6dsx_reg { i8 20, i8 3 }, %struct.st_lsm6dsx_reg { i8 20, i8 64 }, %struct.st_lsm6dsx_reg zeroinitializer, i8 3, %struct.anon.90 { i8 1, i8 2 }, i8 21, i8 33, i8 8, i8 0 }, %struct.st_lsm6dsx_event_settings { %struct.st_lsm6dsx_reg { i8 88, i8 -128 }, %struct.st_lsm6dsx_reg { i8 91, i8 63 }, i8 27, i8 8, i8 1, i8 2, i8 4 } }, { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [2 x i8], <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }>, [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }>, %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings } { %struct.st_lsm6dsx_reg { i8 18, i8 1 }, %struct.st_lsm6dsx_reg { i8 18, i8 -128 }, %struct.st_lsm6dsx_reg { i8 18, i8 64 }, [2 x i8] undef, <{ %struct.anon.79, %struct.anon.79, [14 x %struct.anon.79] }> <{ %struct.anon.79 { i32 6, ptr @.str.37, i8 107 }, %struct.anon.79 { i32 15, ptr @.str.38, i8 108 }, [14 x %struct.anon.79] zeroinitializer }>, [2 x %struct.anon.80] [%struct.anon.80 { ptr @st_lsm6dsx_gyro_channels, i32 4 }, %struct.anon.80 { ptr @st_lsm6dsx_acc_channels, i32 4 }], %struct.anon.81 { %struct.st_lsm6dsx_reg { i8 13, i8 8 }, %struct.st_lsm6dsx_reg { i8 14, i8 8 }, %struct.st_lsm6dsx_reg { i8 94, i8 32 }, %struct.st_lsm6dsx_reg { i8 95, i8 32 }, %struct.st_lsm6dsx_reg { i8 86, i8 1 }, %struct.st_lsm6dsx_reg { i8 86, i8 64 }, %struct.st_lsm6dsx_reg { i8 18, i8 32 }, %struct.st_lsm6dsx_reg { i8 18, i8 16 } }, %struct.st_lsm6dsx_reg { i8 19, i8 8 }, [2 x %struct.st_lsm6dsx_odr_table_entry] [%struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr { i32 833000, i8 7 }, %struct.st_lsm6dsx_odr zeroinitializer], i32 7 }, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 -16 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 12500, i8 1 }, %struct.st_lsm6dsx_odr { i32 26000, i8 2 }, %struct.st_lsm6dsx_odr { i32 52000, i8 3 }, %struct.st_lsm6dsx_odr { i32 104000, i8 4 }, %struct.st_lsm6dsx_odr { i32 208000, i8 5 }, %struct.st_lsm6dsx_odr { i32 416000, i8 6 }, %struct.st_lsm6dsx_odr { i32 833000, i8 7 }, %struct.st_lsm6dsx_odr zeroinitializer], i32 7 }], [2 x %struct.st_lsm6dsx_fs_table_entry] [%struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 17, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 152716, i8 0 }, %struct.st_lsm6dsx_fs { i32 305432, i8 1 }, %struct.st_lsm6dsx_fs { i32 610865, i8 2 }, %struct.st_lsm6dsx_fs { i32 1221729, i8 3 }], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 16, i8 12 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 598205, i8 0 }, %struct.st_lsm6dsx_fs { i32 1196411, i8 2 }, %struct.st_lsm6dsx_fs { i32 2392822, i8 3 }, %struct.st_lsm6dsx_fs { i32 4785645, i8 1 }], i32 4 }], [16 x %struct.st_lsm6dsx_reg] zeroinitializer, <{ %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [14 x %struct.st_lsm6dsx_reg] }> <{ %struct.st_lsm6dsx_reg { i8 9, i8 -16 }, %struct.st_lsm6dsx_reg { i8 9, i8 15 }, [14 x %struct.st_lsm6dsx_reg] zeroinitializer }>, %struct.st_lsm6dsx_fifo_ops { ptr @st_lsm6dsx_update_fifo, ptr @st_lsm6dsx_read_tagged_fifo, %struct.anon.86 { i8 7, i16 511 }, %struct.anon.87 { i8 58, i16 1023 }, i16 512, i8 1 }, %struct.st_lsm6dsx_hw_ts_settings { %struct.st_lsm6dsx_reg { i8 25, i8 32 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 10, i8 -64 }, i8 99 }, %struct.st_lsm6dsx_shub_settings zeroinitializer, %struct.st_lsm6dsx_event_settings { %struct.st_lsm6dsx_reg { i8 88, i8 -128 }, %struct.st_lsm6dsx_reg { i8 91, i8 63 }, i8 27, i8 8, i8 1, i8 2, i8 4 } } }>, [880 x i8] zeroinitializer }, align 32
@st_lsm6dsx_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 0, i32 0, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@st_lsm6dsx_accel_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.40, i32 3, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @st_lsm6dsx_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@st_lsm6dsx_available_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_acc_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @st_lsm6dsx_acc_attribute_group, ptr @st_lsm6dsx_read_raw, ptr null, ptr null, ptr @st_lsm6dsx_write_raw, ptr null, ptr @st_lsm6dsx_write_raw_get_fmt, ptr @st_lsm6dsx_read_event_config, ptr @st_lsm6dsx_write_event_config, ptr @st_lsm6dsx_read_event, ptr @st_lsm6dsx_write_event, ptr null, ptr null, ptr null, ptr null, ptr @st_lsm6dsx_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_accel\00", [23 x i8] zeroinitializer }, align 32
@st_lsm6dsx_gyro_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @st_lsm6dsx_gyro_attribute_group, ptr @st_lsm6dsx_read_raw, ptr null, ptr null, ptr @st_lsm6dsx_write_raw, ptr null, ptr @st_lsm6dsx_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_lsm6dsx_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_gyro\00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_acc_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @st_lsm6dsx_acc_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_lsm6dsx_acc_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_accel_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_lsm6dsx_sysfs_sampling_frequency_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_lsm6dsx_sysfs_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%03d \00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"in_accel_scale_available\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%09u \00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_gyro_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @st_lsm6dsx_gyro_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_lsm6dsx_gyro_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_anglvel_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_anglvel_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_lsm6dsx_sysfs_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@st_lsm6dsx_get_drdy_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.12, i32 1766, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported data ready pin\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_lsm6dsx_get_drdy_reg\00", [40 x i8] zeroinitializer }, align 32
@st_lsm6dsx_get_drdy_reg._entry_ptr = internal global ptr @st_lsm6dsx_get_drdy_reg._entry, section ".printk_index", align 4
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"st,drdy-int-pin\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,pullups\00", [21 x i8] zeroinitializer }, align 32
@st_lsm6dsx_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.12, i32 2132, ptr @.str.54, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode %lx unsupported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"st_lsm6dsx_irq_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_lsm6dsx_irq_setup._entry_ptr = internal global ptr @st_lsm6dsx_irq_setup._entry, section ".printk_index", align 4
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lsm6dsx\00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_irq_setup._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.12, i32 2162, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request trigger irq %d\0A\00", [62 x i8] zeroinitializer }, align 32
@st_lsm6dsx_irq_setup._entry_ptr.59 = internal global ptr @st_lsm6dsx_irq_setup._entry.57, section ".printk_index", align 4
@switch.table.st_lsm6dsx_irq_setup = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2216, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2217, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2218, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2253, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2282, i32 57 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"st_lsm6dsx_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2365, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2175, i32 29 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2176, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2180, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2185, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1186, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1192, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1197, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 108, i32 13 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 112, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant [25 x i8] c"st_lsm6ds0_gyro_channels\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 84, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant [24 x i8] c"st_lsm6dsx_acc_channels\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 70, i32 35 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 216, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant [25 x i8] c"st_lsm6dsx_gyro_channels\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 77, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 382, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 548, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 552, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 556, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 560, i32 13 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 767, i32 13 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 771, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 775, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 779, i32 13 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 783, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 787, i32 13 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 992, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 996, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant [27 x i8] c"st_lsm6dsx_sensor_settings\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 91, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"st_lsm6dsx_event\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 428, i32 51 }
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"st_lsm6dsx_accel_ext_info\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 509, i32 46 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 510, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [32 x i8] c"st_lsm6dsx_available_scan_masks\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [43 x i8] c"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 435, i32 43 }
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c"st_lsm6dsx_acc_info\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1702, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2011, i32 49 }
@___asan_gen_.216 = private unnamed_addr constant [21 x i8] c"st_lsm6dsx_gyro_info\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1724, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2016, i32 49 }
@___asan_gen_.222 = private unnamed_addr constant [31 x i8] c"st_lsm6dsx_acc_attribute_group\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1698, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant [26 x i8] c"st_lsm6dsx_acc_attributes\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1692, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [38 x i8] c"iio_dev_attr_in_accel_scale_available\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1686, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1642, i32 48 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1687, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1661, i32 48 }
@___asan_gen_.246 = private unnamed_addr constant [32 x i8] c"st_lsm6dsx_gyro_attribute_group\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1720, i32 37 }
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"st_lsm6dsx_gyro_attributes\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1714, i32 26 }
@___asan_gen_.252 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1689, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1766, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1739, i32 39 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 1785, i32 57 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2132, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2144, i32 57 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2159, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.295 = private constant [48 x i8] c"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.295, i32 2161, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [34 x i8] c"switch.table.st_lsm6dsx_irq_setup\00", align 1
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_st_lsm6dsx_pm_ops, ptr @__ksymtab_st_lsm6dsx_probe, ptr @st_lsm6dsx_check_whoami._entry, ptr @st_lsm6dsx_check_whoami._entry.17, ptr @st_lsm6dsx_check_whoami._entry.20, ptr @st_lsm6dsx_check_whoami._entry_ptr, ptr @st_lsm6dsx_check_whoami._entry_ptr.19, ptr @st_lsm6dsx_check_whoami._entry_ptr.22, ptr @st_lsm6dsx_get_drdy_reg._entry, ptr @st_lsm6dsx_get_drdy_reg._entry_ptr, ptr @st_lsm6dsx_init_regulators._entry, ptr @st_lsm6dsx_init_regulators._entry_ptr, ptr @st_lsm6dsx_irq_setup._entry, ptr @st_lsm6dsx_irq_setup._entry.57, ptr @st_lsm6dsx_irq_setup._entry_ptr, ptr @st_lsm6dsx_irq_setup._entry_ptr.59, ptr @st_lsm6dsx_probe.__key, ptr @.str, ptr @st_lsm6dsx_probe.__key.1, ptr @.str.2, ptr @st_lsm6dsx_probe.__key.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @st_lsm6dsx_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @st_lsm6ds0_gyro_channels, ptr @st_lsm6dsx_acc_channels, ptr @.str.25, ptr @st_lsm6dsx_gyro_channels, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @st_lsm6dsx_sensor_settings, ptr @st_lsm6dsx_event, ptr @st_lsm6dsx_accel_ext_info, ptr @.str.40, ptr @st_lsm6dsx_available_scan_masks, ptr @st_lsm6dsx_acc_info, ptr @.str.41, ptr @st_lsm6dsx_gyro_info, ptr @.str.42, ptr @st_lsm6dsx_acc_attribute_group, ptr @st_lsm6dsx_acc_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_accel_scale_available, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @st_lsm6dsx_gyro_attribute_group, ptr @st_lsm6dsx_gyro_attributes, ptr @iio_dev_attr_in_anglvel_scale_available, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @switch.table.st_lsm6dsx_irq_setup], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_init_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_check_whoami._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_check_whoami._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_check_whoami._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6ds0_gyro_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_acc_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_gyro_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_sensor_settings to i32), i32 3504, i32 4384, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_accel_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_available_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_acc_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_gyro_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_acc_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_acc_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_gyro_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_gyro_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_anglvel_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_get_drdy_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_irq_setup._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.st_lsm6dsx_irq_setup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_set_page(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %0 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %settings, align 4
  %shub_settings = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %1, i32 0, i32 13
  %conv = zext i1 %enable to i32
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %1, i32 0, i32 13, i32 0, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mask, align 1
  %conv1 = zext i8 %3 to i32
  %4 = tail call i32 @llvm.cttz.i32(i32 %conv1, i1 false) #10, !range !164
  %shl = shl nuw i32 %conv, %4
  %and = and i32 %shl, %conv1
  %regmap = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %7 = ptrtoint ptr %shub_settings to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shub_settings, align 1
  %conv6 = zext i8 %8 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %conv6, i32 noundef %conv1, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #10
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_check_odr(ptr nocapture noundef readonly %sensor, i32 noundef %odr, ptr nocapture noundef writeonly %val) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings, align 4
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %odr_len = getelementptr %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 7, i32 %5, i32 2
  %6 = ptrtoint ptr %odr_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %odr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25 = icmp sgt i32 %7, 0
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 7, i32 %5, i32 1, i32 %i.026
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %odr)
  %cmp3.not = icmp ult i32 %9, %odr
  br i1 %cmp3.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.026, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp5 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp5, label %for.end.cleanup_crit_edge, label %if.end7

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx9 = getelementptr %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 7, i32 %5, i32 1, i32 %i.0.lcssa
  %val10 = getelementptr %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 7, i32 %5, i32 1, i32 %i.0.lcssa, i32 1
  %10 = ptrtoint ptr %val10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val10, align 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %val, align 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end7 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_sensor_set_enable(ptr nocapture noundef readonly %sensor, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %brmerge.i = or i1 %cmp.i, %enable
  br i1 %brmerge.i, label %entry.if.end_crit_edge, label %st_lsm6dsx_check_events.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_check_events.exit:                     ; preds = %entry
  %hw1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1.i, align 4
  %enable_event.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_event.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %st_lsm6dsx_check_events.exit.if.end_crit_edge, label %st_lsm6dsx_check_events.exit.return_crit_edge

st_lsm6dsx_check_events.exit.return_crit_edge:    ; preds = %st_lsm6dsx_check_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

st_lsm6dsx_check_events.exit.if.end_crit_edge:    ; preds = %st_lsm6dsx_check_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %st_lsm6dsx_check_events.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %sensor, i1 noundef zeroext %enable)
  br label %return

return:                                           ; preds = %if.end, %st_lsm6dsx_check_events.exit.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %st_lsm6dsx_check_events.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr nocapture noundef readonly %sensor, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  br i1 %enable, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %odr2 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 4
  %2 = ptrtoint ptr %odr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %odr2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %id.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %cond.end.cleanup_crit_edge [
    i32 0, label %cond.end.sw.epilog.i_crit_edge
    i32 2, label %cond.end.sw.bb.i_crit_edge
    i32 3, label %cond.end.sw.bb.i_crit_edge33
    i32 4, label %cond.end.sw.bb.i_crit_edge34
    i32 1, label %cond.end.sw.bb.i_crit_edge35
  ]

cond.end.sw.bb.i_crit_edge35:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge34:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge33:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.sw.bb.i_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

cond.end.sw.epilog.i_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %cond.end.sw.bb.i_crit_edge, %cond.end.sw.bb.i_crit_edge33, %cond.end.sw.bb.i_crit_edge34, %cond.end.sw.bb.i_crit_edge35
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp.not.i.i = icmp eq i32 %cond, 0
  %enable_mask6.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %8, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5.i = icmp eq i32 %5, 1
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp5.i
  br i1 %or.cond.i, label %sw.bb.i.for.inc.i_crit_edge, label %if.end.i

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %sw.bb.i
  %11 = ptrtoint ptr %enable_mask6.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_mask6.i.i, align 1
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not.i.i = icmp eq i8 %13, 0
  br i1 %cmp.not.i.i, label %if.else5.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  br i1 %tobool10.not.i.i, label %if.then.i.i.for.inc.i_crit_edge, label %if.then1.i.i

if.then.i.i.for.inc.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr2.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %10, i32 0, i32 4
  %14 = ptrtoint ptr %odr2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %odr2.i.i, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 %cond) #10
  br label %st_lsm6dsx_check_odr_dependency.exit.i

if.else5.i.i:                                     ; preds = %if.end.i
  br i1 %tobool10.not.i.i, label %if.else5.i.i.st_lsm6dsx_check_odr_dependency.exit.i_crit_edge, label %cond.true11.i.i

if.else5.i.i.st_lsm6dsx_check_odr_dependency.exit.i_crit_edge: ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_odr_dependency.exit.i

cond.true11.i.i:                                  ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr12.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %10, i32 0, i32 4
  %17 = ptrtoint ptr %odr12.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %odr12.i.i, align 4
  br label %st_lsm6dsx_check_odr_dependency.exit.i

st_lsm6dsx_check_odr_dependency.exit.i:           ; preds = %cond.true11.i.i, %if.else5.i.i.st_lsm6dsx_check_odr_dependency.exit.i_crit_edge, %if.then1.i.i
  %retval.0.i.i = phi i32 [ %16, %if.then1.i.i ], [ %18, %cond.true11.i.i ], [ 0, %if.else5.i.i.st_lsm6dsx_check_odr_dependency.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %cond)
  %cmp7.not.i = icmp eq i32 %retval.0.i.i, %cond
  br i1 %cmp7.not.i, label %st_lsm6dsx_check_odr_dependency.exit.i.for.inc.i_crit_edge, label %st_lsm6dsx_check_odr_dependency.exit.i.if.end_crit_edge

st_lsm6dsx_check_odr_dependency.exit.i.if.end_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_check_odr_dependency.exit.i.for.inc.i_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %st_lsm6dsx_check_odr_dependency.exit.i.for.inc.i_crit_edge, %if.then.i.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge
  %arrayidx3.1.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 2
  %19 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5.1.i = icmp eq i32 %5, 2
  %or.cond.1.i = select i1 %tobool.not.1.i, i1 true, i1 %cmp5.1.i
  br i1 %or.cond.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %priv.i.i.1.i = getelementptr inbounds %struct.iio_dev, ptr %20, i32 0, i32 19
  %21 = ptrtoint ptr %priv.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv.i.i.1.i, align 8
  %23 = ptrtoint ptr %enable_mask6.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enable_mask6.i.i, align 1
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool10.not.i.1.i = icmp eq i8 %25, 0
  br i1 %cmp.not.i.i, label %if.else5.i.1.i, label %if.then.i.1.i

if.then.i.1.i:                                    ; preds = %if.end.1.i
  br i1 %tobool10.not.i.1.i, label %if.then.i.1.i.for.inc.1.i_crit_edge, label %if.then1.i.1.i

if.then.i.1.i.for.inc.1.i_crit_edge:              ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

if.then1.i.1.i:                                   ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr2.i.1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %22, i32 0, i32 4
  %26 = ptrtoint ptr %odr2.i.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %odr2.i.1.i, align 4
  %28 = tail call i32 @llvm.umax.i32(i32 %27, i32 %cond) #10
  br label %st_lsm6dsx_check_odr_dependency.exit.1.i

if.else5.i.1.i:                                   ; preds = %if.end.1.i
  br i1 %tobool10.not.i.1.i, label %if.else5.i.1.i.st_lsm6dsx_check_odr_dependency.exit.1.i_crit_edge, label %cond.true11.i.1.i

if.else5.i.1.i.st_lsm6dsx_check_odr_dependency.exit.1.i_crit_edge: ; preds = %if.else5.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_odr_dependency.exit.1.i

cond.true11.i.1.i:                                ; preds = %if.else5.i.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr12.i.1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %22, i32 0, i32 4
  %29 = ptrtoint ptr %odr12.i.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %odr12.i.1.i, align 4
  br label %st_lsm6dsx_check_odr_dependency.exit.1.i

st_lsm6dsx_check_odr_dependency.exit.1.i:         ; preds = %cond.true11.i.1.i, %if.else5.i.1.i.st_lsm6dsx_check_odr_dependency.exit.1.i_crit_edge, %if.then1.i.1.i
  %retval.0.i.1.i = phi i32 [ %28, %if.then1.i.1.i ], [ %30, %cond.true11.i.1.i ], [ 0, %if.else5.i.1.i.st_lsm6dsx_check_odr_dependency.exit.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.1.i, i32 %cond)
  %cmp7.not.1.i = icmp eq i32 %retval.0.i.1.i, %cond
  br i1 %cmp7.not.1.i, label %st_lsm6dsx_check_odr_dependency.exit.1.i.for.inc.1.i_crit_edge, label %st_lsm6dsx_check_odr_dependency.exit.1.i.if.end_crit_edge

st_lsm6dsx_check_odr_dependency.exit.1.i.if.end_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_check_odr_dependency.exit.1.i.for.inc.1.i_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %st_lsm6dsx_check_odr_dependency.exit.1.i.for.inc.1.i_crit_edge, %if.then.i.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx3.2.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 3
  %31 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %32, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp5.2.i = icmp eq i32 %5, 3
  %or.cond.2.i = select i1 %tobool.not.2.i, i1 true, i1 %cmp5.2.i
  br i1 %or.cond.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %priv.i.i.2.i = getelementptr inbounds %struct.iio_dev, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %priv.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i.i.2.i, align 8
  %35 = ptrtoint ptr %enable_mask6.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enable_mask6.i.i, align 1
  %37 = and i8 %36, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool10.not.i.2.i = icmp eq i8 %37, 0
  br i1 %cmp.not.i.i, label %if.else5.i.2.i, label %if.then.i.2.i

if.then.i.2.i:                                    ; preds = %if.end.2.i
  br i1 %tobool10.not.i.2.i, label %if.then.i.2.i.for.inc.2.i_crit_edge, label %if.then1.i.2.i

if.then.i.2.i.for.inc.2.i_crit_edge:              ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

if.then1.i.2.i:                                   ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr2.i.2.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %34, i32 0, i32 4
  %38 = ptrtoint ptr %odr2.i.2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %odr2.i.2.i, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 %cond) #10
  br label %st_lsm6dsx_check_odr_dependency.exit.2.i

if.else5.i.2.i:                                   ; preds = %if.end.2.i
  br i1 %tobool10.not.i.2.i, label %if.else5.i.2.i.st_lsm6dsx_check_odr_dependency.exit.2.i_crit_edge, label %cond.true11.i.2.i

if.else5.i.2.i.st_lsm6dsx_check_odr_dependency.exit.2.i_crit_edge: ; preds = %if.else5.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_odr_dependency.exit.2.i

cond.true11.i.2.i:                                ; preds = %if.else5.i.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr12.i.2.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %34, i32 0, i32 4
  %41 = ptrtoint ptr %odr12.i.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %odr12.i.2.i, align 4
  br label %st_lsm6dsx_check_odr_dependency.exit.2.i

st_lsm6dsx_check_odr_dependency.exit.2.i:         ; preds = %cond.true11.i.2.i, %if.else5.i.2.i.st_lsm6dsx_check_odr_dependency.exit.2.i_crit_edge, %if.then1.i.2.i
  %retval.0.i.2.i = phi i32 [ %40, %if.then1.i.2.i ], [ %42, %cond.true11.i.2.i ], [ 0, %if.else5.i.2.i.st_lsm6dsx_check_odr_dependency.exit.2.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.2.i, i32 %cond)
  %cmp7.not.2.i = icmp eq i32 %retval.0.i.2.i, %cond
  br i1 %cmp7.not.2.i, label %st_lsm6dsx_check_odr_dependency.exit.2.i.for.inc.2.i_crit_edge, label %st_lsm6dsx_check_odr_dependency.exit.2.i.if.end_crit_edge

st_lsm6dsx_check_odr_dependency.exit.2.i.if.end_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_check_odr_dependency.exit.2.i.for.inc.2.i_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %st_lsm6dsx_check_odr_dependency.exit.2.i.for.inc.2.i_crit_edge, %if.then.i.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx3.3.i = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 4
  %43 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %44, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp5.3.i = icmp eq i32 %5, 4
  %or.cond.3.i = select i1 %tobool.not.3.i, i1 true, i1 %cmp5.3.i
  br i1 %or.cond.3.i, label %for.inc.2.i.sw.epilog.i_crit_edge, label %if.end.3.i

for.inc.2.i.sw.epilog.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %priv.i.i.3.i = getelementptr inbounds %struct.iio_dev, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %priv.i.i.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %priv.i.i.3.i, align 8
  %47 = ptrtoint ptr %enable_mask6.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %enable_mask6.i.i, align 1
  %49 = and i8 %48, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool10.not.i.3.i = icmp eq i8 %49, 0
  br i1 %cmp.not.i.i, label %if.else5.i.3.i, label %if.then.i.3.i

if.then.i.3.i:                                    ; preds = %if.end.3.i
  br i1 %tobool10.not.i.3.i, label %if.then.i.3.i.if.then12.i_crit_edge, label %if.then1.i.3.i

if.then.i.3.i.if.then12.i_crit_edge:              ; preds = %if.then.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

if.then1.i.3.i:                                   ; preds = %if.then.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr2.i.3.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %46, i32 0, i32 4
  %50 = ptrtoint ptr %odr2.i.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %odr2.i.3.i, align 4
  %52 = tail call i32 @llvm.umax.i32(i32 %51, i32 %cond) #10
  br label %st_lsm6dsx_check_odr_dependency.exit.3.i

if.else5.i.3.i:                                   ; preds = %if.end.3.i
  br i1 %tobool10.not.i.3.i, label %if.else5.i.3.i.st_lsm6dsx_check_odr_dependency.exit.3.i_crit_edge, label %cond.true11.i.3.i

if.else5.i.3.i.st_lsm6dsx_check_odr_dependency.exit.3.i_crit_edge: ; preds = %if.else5.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_odr_dependency.exit.3.i

cond.true11.i.3.i:                                ; preds = %if.else5.i.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %odr12.i.3.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %46, i32 0, i32 4
  %53 = ptrtoint ptr %odr12.i.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %odr12.i.3.i, align 4
  br label %st_lsm6dsx_check_odr_dependency.exit.3.i

st_lsm6dsx_check_odr_dependency.exit.3.i:         ; preds = %cond.true11.i.3.i, %if.else5.i.3.i.st_lsm6dsx_check_odr_dependency.exit.3.i_crit_edge, %if.then1.i.3.i
  %retval.0.i.3.i = phi i32 [ %52, %if.then1.i.3.i ], [ %54, %cond.true11.i.3.i ], [ 0, %if.else5.i.3.i.st_lsm6dsx_check_odr_dependency.exit.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.3.i, i32 %cond)
  %cmp7.not.3.i = icmp eq i32 %retval.0.i.3.i, %cond
  br i1 %cmp7.not.3.i, label %st_lsm6dsx_check_odr_dependency.exit.3.i.sw.epilog.i_crit_edge, label %st_lsm6dsx_check_odr_dependency.exit.3.i.if.end_crit_edge

st_lsm6dsx_check_odr_dependency.exit.3.i.if.end_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_check_odr_dependency.exit.3.i.sw.epilog.i_crit_edge: ; preds = %st_lsm6dsx_check_odr_dependency.exit.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %st_lsm6dsx_check_odr_dependency.exit.3.i.sw.epilog.i_crit_edge, %for.inc.2.i.sw.epilog.i_crit_edge, %cond.end.sw.epilog.i_crit_edge
  %ref_sensor.0.i = phi ptr [ %sensor, %cond.end.sw.epilog.i_crit_edge ], [ %10, %st_lsm6dsx_check_odr_dependency.exit.3.i.sw.epilog.i_crit_edge ], [ %10, %for.inc.2.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp11.not.i = icmp eq i32 %cond, 0
  br i1 %cmp11.not.i, label %sw.epilog.i.st_lsm6dsx_set_odr.exit_crit_edge, label %sw.epilog.i.if.then12.i_crit_edge

sw.epilog.i.if.then12.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then12.i

sw.epilog.i.st_lsm6dsx_set_odr.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_set_odr.exit

if.then12.i:                                      ; preds = %sw.epilog.i.if.then12.i_crit_edge, %if.then.i.3.i.if.then12.i_crit_edge
  %ref_sensor.068.i = phi ptr [ %ref_sensor.0.i, %sw.epilog.i.if.then12.i_crit_edge ], [ %10, %if.then.i.3.i.if.then12.i_crit_edge ]
  %hw.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ref_sensor.068.i, i32 0, i32 2
  %55 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw.i.i, align 4
  %settings.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %56, i32 0, i32 18
  %57 = ptrtoint ptr %settings.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %settings.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ref_sensor.068.i, i32 0, i32 1
  %59 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id.i.i, align 8
  %odr_len.i.i = getelementptr %struct.st_lsm6dsx_settings, ptr %58, i32 0, i32 7, i32 %60, i32 2
  %61 = ptrtoint ptr %odr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %odr_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp25.i.i = icmp sgt i32 %62, 0
  br i1 %cmp25.i.i, label %if.then12.i.for.body.i.i_crit_edge, label %if.then12.i.for.end.i.i_crit_edge

if.then12.i.for.end.i.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

if.then12.i.for.body.i.i_crit_edge:               ; preds = %if.then12.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then12.i.for.body.i.i_crit_edge
  %i.026.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then12.i.for.body.i.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.st_lsm6dsx_settings, ptr %58, i32 0, i32 7, i32 %60, i32 1, i32 %i.026.i.i
  %63 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %cond)
  %cmp3.not.i.i = icmp ult i32 %64, %cond
  br i1 %cmp3.not.i.i, label %for.inc.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %62
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then12.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then12.i.for.end.i.i_crit_edge ], [ %i.026.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %62)
  %cmp5.i.i = icmp eq i32 %i.0.lcssa.i.i, %62
  br i1 %cmp5.i.i, label %for.end.i.i.cleanup_crit_edge, label %st_lsm6dsx_check_odr.exit.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

st_lsm6dsx_check_odr.exit.i:                      ; preds = %for.end.i.i
  %arrayidx9.i.i = getelementptr %struct.st_lsm6dsx_settings, ptr %58, i32 0, i32 7, i32 %60, i32 1, i32 %i.0.lcssa.i.i
  %val10.i.i = getelementptr %struct.st_lsm6dsx_settings, ptr %58, i32 0, i32 7, i32 %60, i32 1, i32 %i.0.lcssa.i.i, i32 1
  %65 = ptrtoint ptr %val10.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %val10.i.i, align 4
  %67 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp14.i = icmp slt i32 %68, 0
  br i1 %cmp14.i, label %st_lsm6dsx_check_odr.exit.i.cleanup_crit_edge, label %st_lsm6dsx_check_odr.exit.i.st_lsm6dsx_set_odr.exit_crit_edge

st_lsm6dsx_check_odr.exit.i.st_lsm6dsx_set_odr.exit_crit_edge: ; preds = %st_lsm6dsx_check_odr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_set_odr.exit

st_lsm6dsx_check_odr.exit.i.cleanup_crit_edge:    ; preds = %st_lsm6dsx_check_odr.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

st_lsm6dsx_set_odr.exit:                          ; preds = %st_lsm6dsx_check_odr.exit.i.st_lsm6dsx_set_odr.exit_crit_edge, %sw.epilog.i.st_lsm6dsx_set_odr.exit_crit_edge
  %ref_sensor.069.i = phi ptr [ %ref_sensor.0.i, %sw.epilog.i.st_lsm6dsx_set_odr.exit_crit_edge ], [ %ref_sensor.068.i, %st_lsm6dsx_check_odr.exit.i.st_lsm6dsx_set_odr.exit_crit_edge ]
  %val.1.i = phi i8 [ 0, %sw.epilog.i.st_lsm6dsx_set_odr.exit_crit_edge ], [ %66, %st_lsm6dsx_check_odr.exit.i.st_lsm6dsx_set_odr.exit_crit_edge ]
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 18
  %69 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %settings.i, align 4
  %id18.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %ref_sensor.069.i, i32 0, i32 1
  %71 = ptrtoint ptr %id18.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %id18.i, align 8
  %arrayidx19.i = getelementptr %struct.st_lsm6dsx_settings, ptr %70, i32 0, i32 7, i32 %72
  %conv.i = zext i8 %val.1.i to i32
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_reg, ptr %arrayidx19.i, i32 0, i32 1
  %73 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mask.i, align 1
  %conv21.i = zext i8 %74 to i32
  %75 = tail call i32 @llvm.cttz.i32(i32 %conv21.i, i1 false) #10, !range !164
  %shl.i = shl i32 %conv.i, %75
  %and.i = and i32 %shl.i, %conv21.i
  %76 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx19.i, align 1
  %conv25.i = zext i8 %77 to i32
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #10
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef %conv25.i, i32 noundef %conv21.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp, label %st_lsm6dsx_set_odr.exit.cleanup_crit_edge, label %st_lsm6dsx_set_odr.exit.if.end_crit_edge

st_lsm6dsx_set_odr.exit.if.end_crit_edge:         ; preds = %st_lsm6dsx_set_odr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

st_lsm6dsx_set_odr.exit.cleanup_crit_edge:        ; preds = %st_lsm6dsx_set_odr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %st_lsm6dsx_set_odr.exit.if.end_crit_edge, %st_lsm6dsx_check_odr_dependency.exit.3.i.if.end_crit_edge, %st_lsm6dsx_check_odr_dependency.exit.2.i.if.end_crit_edge, %st_lsm6dsx_check_odr_dependency.exit.1.i.if.end_crit_edge, %st_lsm6dsx_check_odr_dependency.exit.i.if.end_crit_edge
  %80 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %id.i, align 8
  %shl = shl nuw i32 1, %81
  %enable_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 8
  %82 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %enable_mask, align 1
  %84 = trunc i32 %shl to i8
  %conv5 = or i8 %83, %84
  %85 = xor i8 %84, -1
  %conv10 = and i8 %83, %85
  %conv5.sink = select i1 %enable, i8 %conv5, i8 %conv10
  store i8 %conv5.sink, ptr %enable_mask, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %st_lsm6dsx_set_odr.exit.cleanup_crit_edge, %st_lsm6dsx_check_odr.exit.i.cleanup_crit_edge, %for.end.i.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %st_lsm6dsx_set_odr.exit.cleanup_crit_edge ], [ -22, %for.end.i.i.cleanup_crit_edge ], [ %68, %st_lsm6dsx_check_odr.exit.i.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ 0, %if.end ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_set_watermark(ptr nocapture noundef readonly %iio_dev, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %max_size = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 11, i32 4
  %6 = ptrtoint ptr %max_size to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %max_size, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %val)
  %cmp2 = icmp ult i32 %conv, %val
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conf_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %conf_lock, i32 noundef 0) #10
  %conv4 = trunc i32 %val to i16
  %call5 = tail call i32 @st_lsm6dsx_update_watermark(ptr noundef %1, i16 noundef zeroext %conv4) #10
  tail call void @mutex_unlock(ptr noundef %conf_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %watermark = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %watermark to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv4, ptr %watermark, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_update_watermark(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_probe(ptr noundef %dev, i32 noundef %irq, i32 noundef %hw_id, ptr noundef %regmap) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 456, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %fifo_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %fifo_lock, ptr noundef nonnull @.str, ptr noundef nonnull @st_lsm6dsx_probe.__key) #10
  %conf_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %conf_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @st_lsm6dsx_probe.__key.1) #10
  %page_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %page_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @st_lsm6dsx_probe.__key.3) #10
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %regulators.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regulators.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %regulators.i, align 8
  %arrayidx2.i = getelementptr %struct.st_lsm6dsx_hw, ptr %4, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.8, ptr %arrayidx2.i, align 4
  %call5.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %regulators.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %st_lsm6dsx_init_regulators.exit

if.end.i:                                         ; preds = %if.end
  %call9.i = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %regulators.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %st_lsm6dsx_init_regulators.exit.thread, label %st_lsm6dsx_init_regulators.exit.thread187

st_lsm6dsx_init_regulators.exit.thread187:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call9.i) #13
  br label %cleanup

st_lsm6dsx_init_regulators.exit.thread:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 50) #10
  br label %if.end10

st_lsm6dsx_init_regulators.exit:                  ; preds = %if.end
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call5.i, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool8.not = icmp eq i32 %call6.i, 0
  br i1 %tobool8.not, label %st_lsm6dsx_init_regulators.exit.if.end10_crit_edge, label %st_lsm6dsx_init_regulators.exit.cleanup_crit_edge

st_lsm6dsx_init_regulators.exit.cleanup_crit_edge: ; preds = %st_lsm6dsx_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

st_lsm6dsx_init_regulators.exit.if.end10_crit_edge: ; preds = %st_lsm6dsx_init_regulators.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %st_lsm6dsx_init_regulators.exit.if.end10_crit_edge, %st_lsm6dsx_init_regulators.exit.thread
  %call.i168 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @st_lsm6dsx_chip_uninit, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.end14, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %regulators.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators.i.i) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call.i172 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 512, i32 noundef 3520) #10
  %buff = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 16
  %7 = ptrtoint ptr %buff to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i172, ptr %buff, align 4
  %tobool17.not = icmp eq ptr %call.i172, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 8
  %irq21 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %irq21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %irq, ptr %irq21, align 8
  %regmap22 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %regmap22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %regmap, ptr %regmap22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %data.i, align 4, !annotation !165
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc.15.i.for.cond1.preheader.i_crit_edge, %if.end19
  %i.072.i = phi i32 [ 0, %if.end19 ], [ %inc15.i, %for.inc.15.i.for.cond1.preheader.i_crit_edge ]
  %name6.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %name6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name6.i, align 4
  %tobool.not.i173 = icmp eq ptr %13, null
  br i1 %tobool.not.i173, label %for.cond1.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.cond1.preheader.i.for.inc.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.cond1.preheader.i
  %arrayidx5.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %hw_id)
  %cmp10.i = icmp eq i32 %15, %hw_id
  br i1 %cmp10.i, label %land.lhs.true.i.for.end16.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i.for.end16.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.cond1.preheader.i.for.inc.i_crit_edge
  %name6.1.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %name6.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name6.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %arrayidx5.1.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx5.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %hw_id)
  %cmp10.1.i = icmp eq i32 %19, %hw_id
  br i1 %cmp10.1.i, label %land.lhs.true.1.i.for.end16.i_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1.i

land.lhs.true.1.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %name6.2.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 2, i32 1
  %20 = ptrtoint ptr %name6.2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name6.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %21, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %arrayidx5.2.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 2
  %22 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx5.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %hw_id)
  %cmp10.2.i = icmp eq i32 %23, %hw_id
  br i1 %cmp10.2.i, label %land.lhs.true.2.i.for.end16.i_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2.i

land.lhs.true.2.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %name6.3.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 3, i32 1
  %24 = ptrtoint ptr %name6.3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name6.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %25, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %arrayidx5.3.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx5.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %hw_id)
  %cmp10.3.i = icmp eq i32 %27, %hw_id
  br i1 %cmp10.3.i, label %land.lhs.true.3.i.for.end16.i_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3.i

land.lhs.true.3.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %name6.4.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 4, i32 1
  %28 = ptrtoint ptr %name6.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name6.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %29, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %arrayidx5.4.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 4
  %30 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx5.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %hw_id)
  %cmp10.4.i = icmp eq i32 %31, %hw_id
  br i1 %cmp10.4.i, label %land.lhs.true.4.i.for.end16.i_crit_edge, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4.i

land.lhs.true.4.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.4.i:                                      ; preds = %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %name6.5.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 5, i32 1
  %32 = ptrtoint ptr %name6.5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name6.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %33, null
  br i1 %tobool.not.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge, label %land.lhs.true.5.i

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %arrayidx5.5.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 5
  %34 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx5.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %hw_id)
  %cmp10.5.i = icmp eq i32 %35, %hw_id
  br i1 %cmp10.5.i, label %land.lhs.true.5.i.for.end16.i_crit_edge, label %land.lhs.true.5.i.for.inc.5.i_crit_edge

land.lhs.true.5.i.for.inc.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5.i

land.lhs.true.5.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.5.i:                                      ; preds = %land.lhs.true.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %name6.6.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 6, i32 1
  %36 = ptrtoint ptr %name6.6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name6.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %37, null
  br i1 %tobool.not.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge, label %land.lhs.true.6.i

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6.i

land.lhs.true.6.i:                                ; preds = %for.inc.5.i
  %arrayidx5.6.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 6
  %38 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %hw_id)
  %cmp10.6.i = icmp eq i32 %39, %hw_id
  br i1 %cmp10.6.i, label %land.lhs.true.6.i.for.end16.i_crit_edge, label %land.lhs.true.6.i.for.inc.6.i_crit_edge

land.lhs.true.6.i.for.inc.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.6.i

land.lhs.true.6.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.6.i:                                      ; preds = %land.lhs.true.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %name6.7.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 7, i32 1
  %40 = ptrtoint ptr %name6.7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name6.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %41, null
  br i1 %tobool.not.7.i, label %for.inc.6.i.for.inc.7.i_crit_edge, label %land.lhs.true.7.i

for.inc.6.i.for.inc.7.i_crit_edge:                ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.7.i:                                ; preds = %for.inc.6.i
  %arrayidx5.7.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 7
  %42 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %hw_id)
  %cmp10.7.i = icmp eq i32 %43, %hw_id
  br i1 %cmp10.7.i, label %land.lhs.true.7.i.for.end16.i_crit_edge, label %land.lhs.true.7.i.for.inc.7.i_crit_edge

land.lhs.true.7.i.for.inc.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.7.i

land.lhs.true.7.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.7.i:                                      ; preds = %land.lhs.true.7.i.for.inc.7.i_crit_edge, %for.inc.6.i.for.inc.7.i_crit_edge
  %name6.8.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 8, i32 1
  %44 = ptrtoint ptr %name6.8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name6.8.i, align 4
  %tobool.not.8.i = icmp eq ptr %45, null
  br i1 %tobool.not.8.i, label %for.inc.7.i.for.inc.8.i_crit_edge, label %land.lhs.true.8.i

for.inc.7.i.for.inc.8.i_crit_edge:                ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8.i

land.lhs.true.8.i:                                ; preds = %for.inc.7.i
  %arrayidx5.8.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 8
  %46 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx5.8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %hw_id)
  %cmp10.8.i = icmp eq i32 %47, %hw_id
  br i1 %cmp10.8.i, label %land.lhs.true.8.i.for.end16.i_crit_edge, label %land.lhs.true.8.i.for.inc.8.i_crit_edge

land.lhs.true.8.i.for.inc.8.i_crit_edge:          ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.8.i

land.lhs.true.8.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.8.i:                                      ; preds = %land.lhs.true.8.i.for.inc.8.i_crit_edge, %for.inc.7.i.for.inc.8.i_crit_edge
  %name6.9.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 9, i32 1
  %48 = ptrtoint ptr %name6.9.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name6.9.i, align 4
  %tobool.not.9.i = icmp eq ptr %49, null
  br i1 %tobool.not.9.i, label %for.inc.8.i.for.inc.9.i_crit_edge, label %land.lhs.true.9.i

for.inc.8.i.for.inc.9.i_crit_edge:                ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9.i

land.lhs.true.9.i:                                ; preds = %for.inc.8.i
  %arrayidx5.9.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 9
  %50 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx5.9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %hw_id)
  %cmp10.9.i = icmp eq i32 %51, %hw_id
  br i1 %cmp10.9.i, label %land.lhs.true.9.i.for.end16.i_crit_edge, label %land.lhs.true.9.i.for.inc.9.i_crit_edge

land.lhs.true.9.i.for.inc.9.i_crit_edge:          ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.9.i

land.lhs.true.9.i.for.end16.i_crit_edge:          ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.9.i:                                      ; preds = %land.lhs.true.9.i.for.inc.9.i_crit_edge, %for.inc.8.i.for.inc.9.i_crit_edge
  %name6.10.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 10, i32 1
  %52 = ptrtoint ptr %name6.10.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name6.10.i, align 4
  %tobool.not.10.i = icmp eq ptr %53, null
  br i1 %tobool.not.10.i, label %for.inc.9.i.for.inc.10.i_crit_edge, label %land.lhs.true.10.i

for.inc.9.i.for.inc.10.i_crit_edge:               ; preds = %for.inc.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10.i

land.lhs.true.10.i:                               ; preds = %for.inc.9.i
  %arrayidx5.10.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 10
  %54 = ptrtoint ptr %arrayidx5.10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx5.10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %hw_id)
  %cmp10.10.i = icmp eq i32 %55, %hw_id
  br i1 %cmp10.10.i, label %land.lhs.true.10.i.for.end16.i_crit_edge, label %land.lhs.true.10.i.for.inc.10.i_crit_edge

land.lhs.true.10.i.for.inc.10.i_crit_edge:        ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.10.i

land.lhs.true.10.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.10.i:                                     ; preds = %land.lhs.true.10.i.for.inc.10.i_crit_edge, %for.inc.9.i.for.inc.10.i_crit_edge
  %name6.11.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 11, i32 1
  %56 = ptrtoint ptr %name6.11.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name6.11.i, align 4
  %tobool.not.11.i = icmp eq ptr %57, null
  br i1 %tobool.not.11.i, label %for.inc.10.i.for.inc.11.i_crit_edge, label %land.lhs.true.11.i

for.inc.10.i.for.inc.11.i_crit_edge:              ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.11.i

land.lhs.true.11.i:                               ; preds = %for.inc.10.i
  %arrayidx5.11.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 11
  %58 = ptrtoint ptr %arrayidx5.11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx5.11.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %hw_id)
  %cmp10.11.i = icmp eq i32 %59, %hw_id
  br i1 %cmp10.11.i, label %land.lhs.true.11.i.for.end16.i_crit_edge, label %land.lhs.true.11.i.for.inc.11.i_crit_edge

land.lhs.true.11.i.for.inc.11.i_crit_edge:        ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.11.i

land.lhs.true.11.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.11.i:                                     ; preds = %land.lhs.true.11.i.for.inc.11.i_crit_edge, %for.inc.10.i.for.inc.11.i_crit_edge
  %name6.12.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 12, i32 1
  %60 = ptrtoint ptr %name6.12.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name6.12.i, align 4
  %tobool.not.12.i = icmp eq ptr %61, null
  br i1 %tobool.not.12.i, label %for.inc.11.i.for.inc.12.i_crit_edge, label %land.lhs.true.12.i

for.inc.11.i.for.inc.12.i_crit_edge:              ; preds = %for.inc.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.12.i

land.lhs.true.12.i:                               ; preds = %for.inc.11.i
  %arrayidx5.12.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 12
  %62 = ptrtoint ptr %arrayidx5.12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx5.12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %hw_id)
  %cmp10.12.i = icmp eq i32 %63, %hw_id
  br i1 %cmp10.12.i, label %land.lhs.true.12.i.for.end16.i_crit_edge, label %land.lhs.true.12.i.for.inc.12.i_crit_edge

land.lhs.true.12.i.for.inc.12.i_crit_edge:        ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.12.i

land.lhs.true.12.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.12.i:                                     ; preds = %land.lhs.true.12.i.for.inc.12.i_crit_edge, %for.inc.11.i.for.inc.12.i_crit_edge
  %name6.13.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 13, i32 1
  %64 = ptrtoint ptr %name6.13.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name6.13.i, align 4
  %tobool.not.13.i = icmp eq ptr %65, null
  br i1 %tobool.not.13.i, label %for.inc.12.i.for.inc.13.i_crit_edge, label %land.lhs.true.13.i

for.inc.12.i.for.inc.13.i_crit_edge:              ; preds = %for.inc.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.13.i

land.lhs.true.13.i:                               ; preds = %for.inc.12.i
  %arrayidx5.13.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 13
  %66 = ptrtoint ptr %arrayidx5.13.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx5.13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %hw_id)
  %cmp10.13.i = icmp eq i32 %67, %hw_id
  br i1 %cmp10.13.i, label %land.lhs.true.13.i.for.end16.i_crit_edge, label %land.lhs.true.13.i.for.inc.13.i_crit_edge

land.lhs.true.13.i.for.inc.13.i_crit_edge:        ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.13.i

land.lhs.true.13.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.13.i:                                     ; preds = %land.lhs.true.13.i.for.inc.13.i_crit_edge, %for.inc.12.i.for.inc.13.i_crit_edge
  %name6.14.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 14, i32 1
  %68 = ptrtoint ptr %name6.14.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name6.14.i, align 4
  %tobool.not.14.i = icmp eq ptr %69, null
  br i1 %tobool.not.14.i, label %for.inc.13.i.for.inc.14.i_crit_edge, label %land.lhs.true.14.i

for.inc.13.i.for.inc.14.i_crit_edge:              ; preds = %for.inc.13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.14.i

land.lhs.true.14.i:                               ; preds = %for.inc.13.i
  %arrayidx5.14.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 14
  %70 = ptrtoint ptr %arrayidx5.14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx5.14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %hw_id)
  %cmp10.14.i = icmp eq i32 %71, %hw_id
  br i1 %cmp10.14.i, label %land.lhs.true.14.i.for.end16.i_crit_edge, label %land.lhs.true.14.i.for.inc.14.i_crit_edge

land.lhs.true.14.i.for.inc.14.i_crit_edge:        ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.14.i

land.lhs.true.14.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.14.i:                                     ; preds = %land.lhs.true.14.i.for.inc.14.i_crit_edge, %for.inc.13.i.for.inc.14.i_crit_edge
  %name6.15.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 15, i32 1
  %72 = ptrtoint ptr %name6.15.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name6.15.i, align 4
  %tobool.not.15.i = icmp eq ptr %73, null
  br i1 %tobool.not.15.i, label %for.inc.14.i.for.inc.15.i_crit_edge, label %land.lhs.true.15.i

for.inc.14.i.for.inc.15.i_crit_edge:              ; preds = %for.inc.14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.15.i

land.lhs.true.15.i:                               ; preds = %for.inc.14.i
  %arrayidx5.15.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 15
  %74 = ptrtoint ptr %arrayidx5.15.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx5.15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %hw_id)
  %cmp10.15.i = icmp eq i32 %75, %hw_id
  br i1 %cmp10.15.i, label %land.lhs.true.15.i.for.end16.i_crit_edge, label %land.lhs.true.15.i.for.inc.15.i_crit_edge

land.lhs.true.15.i.for.inc.15.i_crit_edge:        ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.15.i

land.lhs.true.15.i.for.end16.i_crit_edge:         ; preds = %land.lhs.true.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end16.i

for.inc.15.i:                                     ; preds = %land.lhs.true.15.i.for.inc.15.i_crit_edge, %for.inc.14.i.for.inc.15.i_crit_edge
  %inc15.i = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i = icmp eq i32 %inc15.i, 6
  br i1 %exitcond.not.i, label %for.inc.15.i.do.end.i174_crit_edge, label %for.inc.15.i.for.cond1.preheader.i_crit_edge

for.inc.15.i.for.cond1.preheader.i_crit_edge:     ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader.i

for.inc.15.i.do.end.i174_crit_edge:               ; preds = %for.inc.15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i174

for.end16.i:                                      ; preds = %land.lhs.true.15.i.for.end16.i_crit_edge, %land.lhs.true.14.i.for.end16.i_crit_edge, %land.lhs.true.13.i.for.end16.i_crit_edge, %land.lhs.true.12.i.for.end16.i_crit_edge, %land.lhs.true.11.i.for.end16.i_crit_edge, %land.lhs.true.10.i.for.end16.i_crit_edge, %land.lhs.true.9.i.for.end16.i_crit_edge, %land.lhs.true.8.i.for.end16.i_crit_edge, %land.lhs.true.7.i.for.end16.i_crit_edge, %land.lhs.true.6.i.for.end16.i_crit_edge, %land.lhs.true.5.i.for.end16.i_crit_edge, %land.lhs.true.4.i.for.end16.i_crit_edge, %land.lhs.true.3.i.for.end16.i_crit_edge, %land.lhs.true.2.i.for.end16.i_crit_edge, %land.lhs.true.1.i.for.end16.i_crit_edge, %land.lhs.true.i.for.end16.i_crit_edge
  %j.2.i = phi i32 [ 0, %land.lhs.true.i.for.end16.i_crit_edge ], [ 1, %land.lhs.true.1.i.for.end16.i_crit_edge ], [ 2, %land.lhs.true.2.i.for.end16.i_crit_edge ], [ 3, %land.lhs.true.3.i.for.end16.i_crit_edge ], [ 4, %land.lhs.true.4.i.for.end16.i_crit_edge ], [ 5, %land.lhs.true.5.i.for.end16.i_crit_edge ], [ 6, %land.lhs.true.6.i.for.end16.i_crit_edge ], [ 7, %land.lhs.true.7.i.for.end16.i_crit_edge ], [ 8, %land.lhs.true.8.i.for.end16.i_crit_edge ], [ 9, %land.lhs.true.9.i.for.end16.i_crit_edge ], [ 10, %land.lhs.true.10.i.for.end16.i_crit_edge ], [ 11, %land.lhs.true.11.i.for.end16.i_crit_edge ], [ 12, %land.lhs.true.12.i.for.end16.i_crit_edge ], [ 13, %land.lhs.true.13.i.for.end16.i_crit_edge ], [ 14, %land.lhs.true.14.i.for.end16.i_crit_edge ], [ 15, %land.lhs.true.15.i.for.end16.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.072.i)
  %cmp17.i = icmp eq i32 %i.072.i, 6
  br i1 %cmp17.i, label %for.end16.i.do.end.i174_crit_edge, label %if.end19.i

for.end16.i.do.end.i174_crit_edge:                ; preds = %for.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i174

do.end.i174:                                      ; preds = %for.end16.i.do.end.i174_crit_edge, %for.inc.15.i.do.end.i174_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %hw_id) #13
  br label %st_lsm6dsx_check_whoami.exit.thread

if.end19.i:                                       ; preds = %for.end16.i
  %call.i175 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 15, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %cmp20.i = icmp slt i32 %call.i175, 0
  br i1 %cmp20.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.18) #13
  br label %st_lsm6dsx_check_whoami.exit.thread

if.end26.i:                                       ; preds = %if.end19.i
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data.i, align 4
  %wai.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 %j.2.i, i32 2
  %80 = ptrtoint ptr %wai.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %wai.i, align 4
  %conv.i = zext i8 %81 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %conv.i)
  %cmp30.not.i = icmp eq i32 %79, %conv.i
  br i1 %cmp30.not.i, label %st_lsm6dsx_check_whoami.exit, label %do.end35.i

do.end35.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.21, i32 noundef %79) #13
  br label %st_lsm6dsx_check_whoami.exit.thread

st_lsm6dsx_check_whoami.exit.thread:              ; preds = %do.end35.i, %do.end24.i, %do.end.i174
  %retval.0.i176.ph = phi i32 [ -19, %do.end35.i ], [ %call.i175, %do.end24.i ], [ -19, %do.end.i174 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  br label %cleanup

st_lsm6dsx_check_whoami.exit:                     ; preds = %if.end26.i
  %arrayidx27.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i
  %name41.i = getelementptr [6 x %struct.st_lsm6dsx_settings], ptr @st_lsm6dsx_sensor_settings, i32 0, i32 %i.072.i, i32 3, i32 %j.2.i, i32 1
  %84 = ptrtoint ptr %name41.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %name41.i, align 4
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 18
  %86 = ptrtoint ptr %settings.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx27.i, ptr %settings.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 8
  %call.i177 = call ptr @devm_iio_device_alloc(ptr noundef %88, i32 noundef 80) #10
  %tobool.not.i178 = icmp eq ptr %call.i177, null
  br i1 %tobool.not.i178, label %st_lsm6dsx_check_whoami.exit.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge, label %for.inc

st_lsm6dsx_check_whoami.exit.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge: ; preds = %st_lsm6dsx_check_whoami.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_alloc_iiodev.exit.thread

st_lsm6dsx_alloc_iiodev.exit.thread:              ; preds = %for.inc.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge, %st_lsm6dsx_check_whoami.exit.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge
  %i.0198.lcssa = phi i32 [ 0, %st_lsm6dsx_check_whoami.exit.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge ], [ 1, %for.inc.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge ]
  %arrayidx194 = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 %i.0198.lcssa
  %89 = ptrtoint ptr %arrayidx194 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %arrayidx194, align 4
  br label %cleanup

for.inc:                                          ; preds = %st_lsm6dsx_check_whoami.exit
  %90 = ptrtoint ptr %call.i177 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %call.i177, align 8
  %available_scan_masks.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 6
  %91 = ptrtoint ptr %available_scan_masks.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @st_lsm6dsx_available_scan_masks, ptr %available_scan_masks.i, align 4
  %92 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %settings.i, align 4
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_settings, ptr %93, i32 0, i32 4, i32 0
  %94 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx.i, align 4
  %channels1.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 13
  %96 = ptrtoint ptr %channels1.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %channels1.i, align 8
  %97 = load ptr, ptr %settings.i, align 4
  %len.i = getelementptr %struct.st_lsm6dsx_settings, ptr %97, i32 0, i32 4, i32 0, i32 1
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %len.i, align 4
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 14
  %100 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %num_channels.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 19
  %101 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %priv.i.i, align 8
  %id6.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %id6.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %id6.i, align 8
  %hw7.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %102, i32 0, i32 2
  %104 = ptrtoint ptr %hw7.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i, ptr %hw7.i, align 4
  %105 = load ptr, ptr %settings.i, align 4
  %odr_avl.i = getelementptr %struct.st_lsm6dsx_settings, ptr %105, i32 0, i32 7, i32 0, i32 1
  %106 = ptrtoint ptr %odr_avl.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %odr_avl.i, align 4
  %odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %102, i32 0, i32 4
  %108 = ptrtoint ptr %odr.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %odr.i, align 4
  %109 = load ptr, ptr %settings.i, align 4
  %fs_avl.i = getelementptr %struct.st_lsm6dsx_settings, ptr %109, i32 0, i32 8, i32 0, i32 1
  %110 = ptrtoint ptr %fs_avl.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fs_avl.i, align 4
  %gain14.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %102, i32 0, i32 3
  %112 = ptrtoint ptr %gain14.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %gain14.i, align 8
  %watermark.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %102, i32 0, i32 5
  %113 = ptrtoint ptr %watermark.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 1, ptr %watermark.i, align 8
  %info18.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 17
  %114 = ptrtoint ptr %info18.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @st_lsm6dsx_gyro_info, ptr %info18.i, align 8
  %call21.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %102, i32 noundef 32, ptr noundef nonnull @.str.42, ptr noundef %85) #10
  %name24.i = getelementptr inbounds %struct.iio_dev, ptr %call.i177, i32 0, i32 15
  %115 = ptrtoint ptr %name24.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %102, ptr %name24.i, align 8
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 0
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i177, ptr %arrayidx, align 4
  %117 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call.i, align 8
  %call.i177.1 = call ptr @devm_iio_device_alloc(ptr noundef %118, i32 noundef 80) #10
  %tobool.not.i178.1 = icmp eq ptr %call.i177.1, null
  br i1 %tobool.not.i178.1, label %for.inc.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge, label %for.inc.1

for.inc.st_lsm6dsx_alloc_iiodev.exit.thread_crit_edge: ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_alloc_iiodev.exit.thread

for.inc.1:                                        ; preds = %for.inc
  %119 = ptrtoint ptr %call.i177.1 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %call.i177.1, align 8
  %available_scan_masks.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 6
  %120 = ptrtoint ptr %available_scan_masks.i.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @st_lsm6dsx_available_scan_masks, ptr %available_scan_masks.i.1, align 4
  %121 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %settings.i, align 4
  %arrayidx.i.1 = getelementptr %struct.st_lsm6dsx_settings, ptr %122, i32 0, i32 4, i32 1
  %123 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.1, align 4
  %channels1.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 13
  %125 = ptrtoint ptr %channels1.i.1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %channels1.i.1, align 8
  %126 = load ptr, ptr %settings.i, align 4
  %len.i.1 = getelementptr %struct.st_lsm6dsx_settings, ptr %126, i32 0, i32 4, i32 1, i32 1
  %127 = ptrtoint ptr %len.i.1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %len.i.1, align 4
  %num_channels.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 14
  %129 = ptrtoint ptr %num_channels.i.1 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %num_channels.i.1, align 4
  %priv.i.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 19
  %130 = ptrtoint ptr %priv.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %priv.i.i.1, align 8
  %id6.i.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %id6.i.1 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 1, ptr %id6.i.1, align 8
  %hw7.i.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %131, i32 0, i32 2
  %133 = ptrtoint ptr %hw7.i.1 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.i, ptr %hw7.i.1, align 4
  %134 = load ptr, ptr %settings.i, align 4
  %odr_avl.i.1 = getelementptr %struct.st_lsm6dsx_settings, ptr %134, i32 0, i32 7, i32 1, i32 1
  %135 = ptrtoint ptr %odr_avl.i.1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %odr_avl.i.1, align 4
  %odr.i.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %131, i32 0, i32 4
  %137 = ptrtoint ptr %odr.i.1 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %odr.i.1, align 4
  %138 = load ptr, ptr %settings.i, align 4
  %fs_avl.i.1 = getelementptr %struct.st_lsm6dsx_settings, ptr %138, i32 0, i32 8, i32 1, i32 1
  %139 = ptrtoint ptr %fs_avl.i.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fs_avl.i.1, align 4
  %gain14.i.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %131, i32 0, i32 3
  %141 = ptrtoint ptr %gain14.i.1 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %gain14.i.1, align 8
  %watermark.i.1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %131, i32 0, i32 5
  %142 = ptrtoint ptr %watermark.i.1 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %watermark.i.1, align 8
  %info18.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 17
  %143 = ptrtoint ptr %info18.i.1 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @st_lsm6dsx_acc_info, ptr %info18.i.1, align 8
  %call21.i.1 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %131, i32 noundef 32, ptr noundef nonnull @.str.41, ptr noundef %85) #10
  %name24.i.1 = getelementptr inbounds %struct.iio_dev, ptr %call.i177.1, i32 0, i32 15
  %144 = ptrtoint ptr %name24.i.1 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %131, ptr %name24.i.1, align 8
  %arrayidx.1 = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 1
  %145 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.i177.1, ptr %arrayidx.1, align 4
  %call33 = call fastcc i32 @st_lsm6dsx_init_device(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %for.inc.1.cleanup_crit_edge, label %if.end36

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end36:                                         ; preds = %for.inc.1
  %146 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %settings.i, align 4
  %addr = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %147, i32 0, i32 13, i32 1, i32 1
  %148 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %addr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool37.not = icmp eq i8 %149, 0
  br i1 %tobool37.not, label %if.end36.if.end47_crit_edge, label %land.lhs.true

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end36
  %call38 = call ptr @dev_fwnode(ptr noundef %dev) #10
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %land.lhs.true.if.then41_crit_edge, label %lor.lhs.false

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call.i182 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br i1 %call.i182, label %lor.lhs.false.if.end47_crit_edge, label %lor.lhs.false.if.then41_crit_edge

lor.lhs.false.if.then41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then41

lor.lhs.false.if.end47_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41:                                        ; preds = %lor.lhs.false.if.then41_crit_edge, %land.lhs.true.if.then41_crit_edge
  %call42 = call i32 @st_lsm6dsx_shub_probe(ptr noundef nonnull %call.i, ptr noundef %85) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %if.then41.cleanup_crit_edge, label %if.then41.if.end47_crit_edge

if.then41.if.end47_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.then41.if.end47_crit_edge, %lor.lhs.false.if.end47_crit_edge, %if.end36.if.end47_crit_edge
  %150 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %irq21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp49 = icmp sgt i32 %151, 0
  br i1 %cmp49, label %if.then51, label %if.end47.if.end62_crit_edge

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then51:                                        ; preds = %if.end47
  %call52 = call fastcc i32 @st_lsm6dsx_irq_setup(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then51.cleanup_crit_edge, label %if.end56

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.then51
  %call57 = call i32 @st_lsm6dsx_fifo_setup(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end56.if.end62_crit_edge

if.end56.if.end62_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end62:                                         ; preds = %if.end56.if.end62_crit_edge, %if.end47.if.end62_crit_edge
  %152 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %call.i, align 8
  %orientation = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 19
  %call64 = call i32 @iio_read_mount_matrix(ptr noundef %153, ptr noundef %orientation) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %for.body71.preheader, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body71.preheader:                             ; preds = %if.end62
  %154 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx, align 4
  %tobool74.not = icmp eq ptr %155, null
  br i1 %tobool74.not, label %for.body71.preheader.for.inc84_crit_edge, label %if.end76

for.body71.preheader.for.inc84_crit_edge:         ; preds = %for.body71.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84

if.end76:                                         ; preds = %for.body71.preheader
  %156 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %call.i, align 8
  %call80 = call i32 @__devm_iio_device_register(ptr noundef %157, ptr noundef nonnull %155, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end76.for.inc84_crit_edge, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76.for.inc84_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84

for.inc84:                                        ; preds = %if.end76.for.inc84_crit_edge, %for.body71.preheader.for.inc84_crit_edge
  %158 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.1, align 4
  %tobool74.not.1 = icmp eq ptr %159, null
  br i1 %tobool74.not.1, label %for.inc84.for.inc84.1_crit_edge, label %if.end76.1

for.inc84.for.inc84.1_crit_edge:                  ; preds = %for.inc84
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.1

if.end76.1:                                       ; preds = %for.inc84
  %160 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %call.i, align 8
  %call80.1 = call i32 @__devm_iio_device_register(ptr noundef %161, ptr noundef nonnull %159, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.1)
  %tobool81.not.1 = icmp eq i32 %call80.1, 0
  br i1 %tobool81.not.1, label %if.end76.1.for.inc84.1_crit_edge, label %if.end76.1.cleanup_crit_edge

if.end76.1.cleanup_crit_edge:                     ; preds = %if.end76.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76.1.for.inc84.1_crit_edge:                 ; preds = %if.end76.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.1

for.inc84.1:                                      ; preds = %if.end76.1.for.inc84.1_crit_edge, %for.inc84.for.inc84.1_crit_edge
  %arrayidx73.2 = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 2
  %162 = ptrtoint ptr %arrayidx73.2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %arrayidx73.2, align 4
  %tobool74.not.2 = icmp eq ptr %163, null
  br i1 %tobool74.not.2, label %for.inc84.1.for.inc84.2_crit_edge, label %if.end76.2

for.inc84.1.for.inc84.2_crit_edge:                ; preds = %for.inc84.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.2

if.end76.2:                                       ; preds = %for.inc84.1
  %164 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call.i, align 8
  %call80.2 = call i32 @__devm_iio_device_register(ptr noundef %165, ptr noundef nonnull %163, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.2)
  %tobool81.not.2 = icmp eq i32 %call80.2, 0
  br i1 %tobool81.not.2, label %if.end76.2.for.inc84.2_crit_edge, label %if.end76.2.cleanup_crit_edge

if.end76.2.cleanup_crit_edge:                     ; preds = %if.end76.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76.2.for.inc84.2_crit_edge:                 ; preds = %if.end76.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.2

for.inc84.2:                                      ; preds = %if.end76.2.for.inc84.2_crit_edge, %for.inc84.1.for.inc84.2_crit_edge
  %arrayidx73.3 = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 3
  %166 = ptrtoint ptr %arrayidx73.3 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx73.3, align 4
  %tobool74.not.3 = icmp eq ptr %167, null
  br i1 %tobool74.not.3, label %for.inc84.2.for.inc84.3_crit_edge, label %if.end76.3

for.inc84.2.for.inc84.3_crit_edge:                ; preds = %for.inc84.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.3

if.end76.3:                                       ; preds = %for.inc84.2
  %168 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %call.i, align 8
  %call80.3 = call i32 @__devm_iio_device_register(ptr noundef %169, ptr noundef nonnull %167, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.3)
  %tobool81.not.3 = icmp eq i32 %call80.3, 0
  br i1 %tobool81.not.3, label %if.end76.3.for.inc84.3_crit_edge, label %if.end76.3.cleanup_crit_edge

if.end76.3.cleanup_crit_edge:                     ; preds = %if.end76.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76.3.for.inc84.3_crit_edge:                 ; preds = %if.end76.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.3

for.inc84.3:                                      ; preds = %if.end76.3.for.inc84.3_crit_edge, %for.inc84.2.for.inc84.3_crit_edge
  %arrayidx73.4 = getelementptr %struct.st_lsm6dsx_hw, ptr %call.i, i32 0, i32 17, i32 4
  %170 = ptrtoint ptr %arrayidx73.4 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx73.4, align 4
  %tobool74.not.4 = icmp eq ptr %171, null
  br i1 %tobool74.not.4, label %for.inc84.3.for.inc84.4_crit_edge, label %if.end76.4

for.inc84.3.for.inc84.4_crit_edge:                ; preds = %for.inc84.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.4

if.end76.4:                                       ; preds = %for.inc84.3
  %172 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call.i, align 8
  %call80.4 = call i32 @__devm_iio_device_register(ptr noundef %173, ptr noundef nonnull %171, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.4)
  %tobool81.not.4 = icmp eq i32 %call80.4, 0
  br i1 %tobool81.not.4, label %if.end76.4.for.inc84.4_crit_edge, label %if.end76.4.cleanup_crit_edge

if.end76.4.cleanup_crit_edge:                     ; preds = %if.end76.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76.4.for.inc84.4_crit_edge:                 ; preds = %if.end76.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc84.4

for.inc84.4:                                      ; preds = %if.end76.4.for.inc84.4_crit_edge, %for.inc84.3.for.inc84.4_crit_edge
  %call87 = call ptr @dev_fwnode(ptr noundef %dev) #10
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %for.inc84.4.lor.lhs.false92_crit_edge, label %land.lhs.true89

for.inc84.4.lor.lhs.false92_crit_edge:            ; preds = %for.inc84.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false92

land.lhs.true89:                                  ; preds = %for.inc84.4
  %call.i183 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.6) #10
  br i1 %call.i183, label %land.lhs.true89.if.then97_crit_edge, label %land.lhs.true89.lor.lhs.false92_crit_edge

land.lhs.true89.lor.lhs.false92_crit_edge:        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false92

land.lhs.true89.if.then97_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

lor.lhs.false92:                                  ; preds = %land.lhs.true89.lor.lhs.false92_crit_edge, %for.inc84.4.lor.lhs.false92_crit_edge
  %tobool93.not = icmp eq ptr %1, null
  br i1 %tobool93.not, label %lor.lhs.false92.cleanup_crit_edge, label %land.lhs.true94

lor.lhs.false92.cleanup_crit_edge:                ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true94:                                  ; preds = %lor.lhs.false92
  %wakeup_source = getelementptr inbounds %struct.st_sensors_platform_data, ptr %1, i32 0, i32 4
  %174 = ptrtoint ptr %wakeup_source to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %wakeup_source, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %tobool95.not = icmp eq i8 %175, 0
  br i1 %tobool95.not, label %land.lhs.true94.cleanup_crit_edge, label %land.lhs.true94.if.then97_crit_edge

land.lhs.true94.if.then97_crit_edge:              ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then97

land.lhs.true94.cleanup_crit_edge:                ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then97:                                        ; preds = %land.lhs.true94.if.then97_crit_edge, %land.lhs.true89.if.then97_crit_edge
  %call98 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %land.lhs.true94.cleanup_crit_edge, %lor.lhs.false92.cleanup_crit_edge, %if.end76.4.cleanup_crit_edge, %if.end76.3.cleanup_crit_edge, %if.end76.2.cleanup_crit_edge, %if.end76.1.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then51.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %st_lsm6dsx_alloc_iiodev.exit.thread, %st_lsm6dsx_check_whoami.exit.thread, %if.end14.cleanup_crit_edge, %devm_add_action_or_reset.exit, %st_lsm6dsx_init_regulators.exit.cleanup_crit_edge, %st_lsm6dsx_init_regulators.exit.thread187, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6.i, %st_lsm6dsx_init_regulators.exit.cleanup_crit_edge ], [ %call.i168, %devm_add_action_or_reset.exit ], [ -12, %if.end14.cleanup_crit_edge ], [ %call33, %for.inc.1.cleanup_crit_edge ], [ %call42, %if.then41.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %call64, %if.end62.cleanup_crit_edge ], [ 0, %if.then97 ], [ 0, %land.lhs.true94.cleanup_crit_edge ], [ 0, %lor.lhs.false92.cleanup_crit_edge ], [ %call9.i, %st_lsm6dsx_init_regulators.exit.thread187 ], [ %retval.0.i176.ph, %st_lsm6dsx_check_whoami.exit.thread ], [ -12, %st_lsm6dsx_alloc_iiodev.exit.thread ], [ %call80, %if.end76.cleanup_crit_edge ], [ %call80.1, %if.end76.1.cleanup_crit_edge ], [ %call80.2, %if.end76.2.cleanup_crit_edge ], [ %call80.3, %if.end76.3.cleanup_crit_edge ], [ %call80.4, %if.end76.4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_lsm6dsx_chip_uninit(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regulators = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %data, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %regulators) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_init_device(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %drdy_pin.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @st_lsm6dsx_flush_fifo(ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -524, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, -524
  %or.cond.i = or i1 %cmp.i, %cmp1.not.i
  br i1 %or.cond.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %0 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %settings.i, align 4
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 1
  %conv.i = zext i8 %5 to i32
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_reg, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask.i, align 1
  %conv2.i = zext i8 %7 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv2.i, i1 false) #10, !range !164
  %shl.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i, %conv2.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i, label %if.end.i.cleanup_crit_edge, label %if.end12.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 50) #10
  %9 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %settings.i, align 4
  %boot.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %13 = ptrtoint ptr %boot.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %boot.i, align 1
  %conv16.i = zext i8 %14 to i32
  %mask17.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %10, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %mask17.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mask17.i, align 1
  %conv18.i = zext i8 %16 to i32
  %17 = tail call i32 @llvm.cttz.i32(i32 %conv18.i, i1 false) #10, !range !164
  %shl22.i = shl nuw i32 1, %17
  %and25.i = and i32 %shl22.i, %conv18.i
  %call.i49.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %conv16.i, i32 noundef %conv18.i, i32 noundef %and25.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49.i)
  %cmp27.i = icmp slt i32 %call.i49.i, 0
  br i1 %cmp27.i, label %if.end12.i.cleanup_crit_edge, label %if.end

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  tail call void @msleep(i32 noundef 50) #10
  %18 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %settings.i, align 4
  %bdu = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %22 = ptrtoint ptr %bdu to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bdu, align 1
  %conv = zext i8 %23 to i32
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %19, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mask, align 1
  %conv1 = zext i8 %25 to i32
  %26 = tail call i32 @llvm.cttz.i32(i32 %conv1, i1 false) #10, !range !164
  %shl = shl nuw i32 1, %26
  %and = and i32 %shl, %conv1
  %call.i145 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %conv, i32 noundef %conv1, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp8 = icmp slt i32 %call.i145, 0
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %drdy_pin.i) #10
  %27 = ptrtoint ptr %drdy_pin.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %drdy_pin.i, align 4, !annotation !165
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %call.i.i146 = tail call ptr @dev_fwnode(ptr noundef %29) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i146, null
  br i1 %tobool.not.i.i, label %if.end11.if.then.i_crit_edge, label %st_lsm6dsx_get_drdy_pin.exit.i

if.end11.if.then.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

st_lsm6dsx_get_drdy_pin.exit.i:                   ; preds = %if.end11
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %29, ptr noundef nonnull @.str.50, ptr noundef nonnull %drdy_pin.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i147 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i147, label %st_lsm6dsx_get_drdy_pin.exit.i.if.then.i_crit_edge, label %if.endthread-pre-split.i

st_lsm6dsx_get_drdy_pin.exit.i.if.then.i_crit_edge: ; preds = %st_lsm6dsx_get_drdy_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %st_lsm6dsx_get_drdy_pin.exit.i.if.then.i_crit_edge, %if.end11.if.then.i_crit_edge
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.then.i.cond.end.i_crit_edge, label %cond.true.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 1
  %conv.i148 = zext i8 %35 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv.i148, %cond.true.i ], [ 1, %if.then.i.cond.end.i_crit_edge ]
  %36 = ptrtoint ptr %drdy_pin.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i, ptr %drdy_pin.i, align 4
  br label %if.end.i149

if.endthread-pre-split.i:                         ; preds = %st_lsm6dsx_get_drdy_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %drdy_pin.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i = load i32, ptr %drdy_pin.i, align 4
  br label %if.end.i149

if.end.i149:                                      ; preds = %if.endthread-pre-split.i, %cond.end.i
  %38 = phi i32 [ %.pr.i, %if.endthread-pre-split.i ], [ %cond.i, %cond.end.i ]
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %38, label %st_lsm6dsx_get_drdy_reg.exit [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %settings.i, align 4
  %irq1_func.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %41, i32 0, i32 5, i32 2
  %irq_routing.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 13
  %42 = ptrtoint ptr %irq_routing.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %irq1_func.i, ptr %irq_routing.i, align 4
  %irq_config3.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %41, i32 0, i32 5
  br label %if.end16

sw.bb4.i:                                         ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %settings.i, align 4
  %irq2_func.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %44, i32 0, i32 5, i32 3
  %irq_routing7.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 13
  %45 = ptrtoint ptr %irq_routing7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %irq2_func.i, ptr %irq_routing7.i, align 4
  %irq2.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %44, i32 0, i32 5, i32 1
  br label %if.end16

st_lsm6dsx_get_drdy_reg.exit:                     ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.48) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drdy_pin.i) #10
  br label %cleanup

if.end16:                                         ; preds = %sw.bb4.i, %sw.bb.i
  %reg.0.ph = phi ptr [ %irq_config3.i, %sw.bb.i ], [ %irq2.i, %sw.bb4.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %drdy_pin.i) #10
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %50 = ptrtoint ptr %reg.0.ph to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg.0.ph, align 1
  %conv19 = zext i8 %51 to i32
  %mask20 = getelementptr inbounds %struct.st_lsm6dsx_reg, ptr %reg.0.ph, i32 0, i32 1
  %52 = ptrtoint ptr %mask20 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mask20, align 1
  %conv21 = zext i8 %53 to i32
  %54 = call i32 @llvm.cttz.i32(i32 %conv21, i1 false) #10, !range !164
  %shl25 = shl nuw i32 1, %54
  %and28 = and i32 %shl25, %conv21
  %call.i151 = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %and28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp30 = icmp slt i32 %call.i151, 0
  br i1 %cmp30, label %if.end16.cleanup_crit_edge, label %if.end33

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end16
  %55 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %settings.i, align 4
  %lir = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %56, i32 0, i32 5, i32 4
  %57 = ptrtoint ptr %lir to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %lir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not = icmp eq i8 %58, 0
  br i1 %tobool.not, label %if.end33.if.end83_crit_edge, label %if.then36

if.end33.if.end83_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then36:                                        ; preds = %if.end33
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %conv42 = zext i8 %58 to i32
  %mask43 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %56, i32 0, i32 5, i32 4, i32 1
  %61 = ptrtoint ptr %mask43 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mask43, align 1
  %conv44 = zext i8 %62 to i32
  %63 = call i32 @llvm.cttz.i32(i32 %conv44, i1 false) #10, !range !164
  %shl48 = shl nuw i32 1, %63
  %and51 = and i32 %shl48, %conv44
  %call.i152 = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %and51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152)
  %cmp53 = icmp slt i32 %call.i152, 0
  br i1 %cmp53, label %if.then36.cleanup_crit_edge, label %if.end56

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end56:                                         ; preds = %if.then36
  %64 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %settings.i, align 4
  %clear_on_read = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %65, i32 0, i32 5, i32 5
  %66 = ptrtoint ptr %clear_on_read to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %clear_on_read, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool60.not = icmp eq i8 %67, 0
  br i1 %tobool60.not, label %if.end56.if.end83_crit_edge, label %if.then61

if.end56.if.end83_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then61:                                        ; preds = %if.end56
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %conv67 = zext i8 %67 to i32
  %mask68 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %65, i32 0, i32 5, i32 5, i32 1
  %70 = ptrtoint ptr %mask68 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mask68, align 1
  %conv69 = zext i8 %71 to i32
  %72 = call i32 @llvm.cttz.i32(i32 %conv69, i1 false) #10, !range !164
  %shl73 = shl nuw i32 1, %72
  %and76 = and i32 %shl73, %conv69
  %call.i153 = call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef %conv67, i32 noundef %conv69, i32 noundef %and76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp78 = icmp slt i32 %call.i153, 0
  br i1 %cmp78, label %if.then61.cleanup_crit_edge, label %if.then61.if.end83_crit_edge

if.then61.if.end83_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end83:                                         ; preds = %if.then61.if.end83_crit_edge, %if.end56.if.end83_crit_edge, %if.end33.if.end83_crit_edge
  %73 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %settings.i, align 4
  %drdy_mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %drdy_mask to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %drdy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool86.not = icmp eq i8 %76, 0
  br i1 %tobool86.not, label %if.end83.if.end107_crit_edge, label %if.then87

if.end83.if.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then87:                                        ; preds = %if.end83
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %conv92 = zext i8 %76 to i32
  %mask93 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %74, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %mask93 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mask93, align 1
  %conv94 = zext i8 %80 to i32
  %81 = call i32 @llvm.cttz.i32(i32 %conv94, i1 false) #10, !range !164
  %shl98 = shl nuw i32 1, %81
  %and101 = and i32 %shl98, %conv94
  %call.i154 = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef %conv92, i32 noundef %conv94, i32 noundef %and101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp103 = icmp slt i32 %call.i154, 0
  br i1 %cmp103, label %if.then87.cleanup_crit_edge, label %if.then87.if.end107_crit_edge

if.then87.if.end107_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end107:                                        ; preds = %if.then87.if.end107_crit_edge, %if.end83.if.end107_crit_edge
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 8
  %84 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %settings.i, align 4
  %platform_data.i156 = getelementptr inbounds %struct.device, ptr %83, i32 0, i32 7
  %86 = ptrtoint ptr %platform_data.i156 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %platform_data.i156, align 8
  %call.i157 = call ptr @dev_fwnode(ptr noundef %83) #10
  %tobool.not.i158 = icmp eq ptr %call.i157, null
  br i1 %tobool.not.i158, label %if.end107.lor.lhs.false.i_crit_edge, label %land.lhs.true.i

if.end107.lor.lhs.false.i_crit_edge:              ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i:                                  ; preds = %if.end107
  %call.i.i159 = call zeroext i1 @device_property_present(ptr noundef %83, ptr noundef nonnull @.str.51) #10
  br i1 %call.i.i159, label %land.lhs.true.i.if.then.i160_crit_edge, label %land.lhs.true.i.lor.lhs.false.i_crit_edge

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i

land.lhs.true.i.if.then.i160_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i160

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i.lor.lhs.false.i_crit_edge, %if.end107.lor.lhs.false.i_crit_edge
  %tobool3.not.i = icmp eq ptr %87, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end32.i_crit_edge, label %land.lhs.true4.i

lor.lhs.false.i.if.end32.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

land.lhs.true4.i:                                 ; preds = %lor.lhs.false.i
  %pullups.i = getelementptr inbounds %struct.st_sensors_platform_data, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %pullups.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pullups.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool5.not.i = icmp eq i8 %89, 0
  br i1 %tobool5.not.i, label %land.lhs.true4.i.if.end32.i_crit_edge, label %land.lhs.true4.i.if.then.i160_crit_edge

land.lhs.true4.i.if.then.i160_crit_edge:          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i160

land.lhs.true4.i.if.end32.i_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.then.i160:                                     ; preds = %land.lhs.true4.i.if.then.i160_crit_edge, %land.lhs.true.i.if.then.i160_crit_edge
  %pullup_en.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 2
  %90 = ptrtoint ptr %pullup_en.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %pullup_en.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool6.not.i = icmp eq i8 %91, 0
  br i1 %tobool6.not.i, label %if.then.i160.if.end10.i_crit_edge, label %if.then7.i

if.then.i160.if.end10.i_crit_edge:                ; preds = %if.then.i160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.then.i160
  %92 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %settings.i, align 4
  %shub_settings.i.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %93, i32 0, i32 13
  %mask.i.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %93, i32 0, i32 13, i32 0, i32 1
  %94 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mask.i.i, align 1
  %conv1.i.i = zext i8 %95 to i32
  %96 = call i32 @llvm.cttz.i32(i32 %conv1.i.i, i1 false) #10, !range !164
  %shl.i.i = shl nuw i32 1, %96
  %and.i.i = and i32 %shl.i.i, %conv1.i.i
  %97 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i, align 4
  %99 = ptrtoint ptr %shub_settings.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %shub_settings.i.i, align 1
  %conv6.i.i = zext i8 %100 to i32
  %call.i.i.i161 = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef %conv6.i.i, i32 noundef %conv1.i.i, i32 noundef %and.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i161)
  %cmp.i162 = icmp slt i32 %call.i.i.i161, 0
  br i1 %cmp.i162, label %if.then7.i.cleanup_crit_edge, label %if.then7.i.if.end10.i_crit_edge

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10.i:                                       ; preds = %if.then7.i.if.end10.i_crit_edge, %if.then.i160.if.end10.i_crit_edge
  %mask.i163 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 2, i32 2
  %101 = ptrtoint ptr %mask.i163 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %mask.i163, align 1
  %conv.i164 = zext i8 %102 to i32
  %103 = call i32 @llvm.cttz.i32(i32 %conv.i164, i1 false) #10, !range !164
  %shl.i165 = shl nuw i32 1, %103
  %and.i166 = and i32 %shl.i165, %conv.i164
  %104 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i, align 4
  %addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 2, i32 1
  %106 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %addr.i, align 1
  %conv17.i = zext i8 %107 to i32
  %call.i125.i = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef %conv17.i, i32 noundef %conv.i164, i32 noundef %and.i166, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %108 = ptrtoint ptr %pullup_en.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pullup_en.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool24.not.i = icmp eq i8 %109, 0
  br i1 %tobool24.not.i, label %if.end10.i.if.end27.i_crit_edge, label %if.then25.i

if.end10.i.if.end27.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %settings.i, align 4
  %shub_settings.i127.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %111, i32 0, i32 13
  %mask.i128.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %111, i32 0, i32 13, i32 0, i32 1
  %112 = ptrtoint ptr %mask.i128.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %mask.i128.i, align 1
  %conv1.i129.i = zext i8 %113 to i32
  %114 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i, align 4
  %116 = ptrtoint ptr %shub_settings.i127.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %shub_settings.i127.i, align 1
  %conv6.i131.i = zext i8 %117 to i32
  %call.i.i132.i = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef %conv6.i131.i, i32 noundef %conv1.i129.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #10
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end10.i.if.end27.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125.i)
  %cmp28.i = icmp slt i32 %call.i125.i, 0
  br i1 %cmp28.i, label %if.end27.i.cleanup_crit_edge, label %if.end27.i.if.end32.i_crit_edge

if.end27.i.if.end32.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.i:                                       ; preds = %if.end27.i.if.end32.i_crit_edge, %land.lhs.true4.i.if.end32.i_crit_edge, %lor.lhs.false.i.if.end32.i_crit_edge
  %aux_sens.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 3
  %118 = ptrtoint ptr %aux_sens.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %aux_sens.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool34.not.i = icmp eq i8 %119, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end63.i_crit_edge, label %if.then35.i

if.end32.i.if.end63.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then35.i:                                      ; preds = %if.end32.i
  %120 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %settings.i, align 4
  %shub_settings.i134.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %121, i32 0, i32 13
  %mask.i135.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %121, i32 0, i32 13, i32 0, i32 1
  %122 = ptrtoint ptr %mask.i135.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %mask.i135.i, align 1
  %conv1.i136.i = zext i8 %123 to i32
  %124 = call i32 @llvm.cttz.i32(i32 %conv1.i136.i, i1 false) #10, !range !164
  %shl.i137.i = shl nuw i32 1, %124
  %and.i138.i = and i32 %shl.i137.i, %conv1.i136.i
  %125 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap.i, align 4
  %127 = ptrtoint ptr %shub_settings.i134.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %shub_settings.i134.i, align 1
  %conv6.i140.i = zext i8 %128 to i32
  %call.i.i141.i = call i32 @regmap_update_bits_base(ptr noundef %126, i32 noundef %conv6.i140.i, i32 noundef %conv1.i136.i, i32 noundef %and.i138.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i141.i)
  %cmp37.i = icmp slt i32 %call.i.i141.i, 0
  br i1 %cmp37.i, label %if.then35.i.cleanup_crit_edge, label %if.end40.i

if.then35.i.cleanup_crit_edge:                    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end40.i:                                       ; preds = %if.then35.i
  %mask42.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 3, i32 1
  %129 = ptrtoint ptr %mask42.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %mask42.i, align 1
  %conv43.i = zext i8 %130 to i32
  %131 = call i32 @llvm.cttz.i32(i32 %conv43.i, i1 false) #10, !range !164
  %shl45.i = shl i32 3, %131
  %and49.i = and i32 %shl45.i, %conv43.i
  %132 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap.i, align 4
  %134 = ptrtoint ptr %aux_sens.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %aux_sens.i, align 1
  %conv53.i = zext i8 %135 to i32
  %call.i142.i = call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef %conv53.i, i32 noundef %conv43.i, i32 noundef %and49.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %136 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %settings.i, align 4
  %shub_settings.i144.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %137, i32 0, i32 13
  %mask.i145.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %137, i32 0, i32 13, i32 0, i32 1
  %138 = ptrtoint ptr %mask.i145.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %mask.i145.i, align 1
  %conv1.i146.i = zext i8 %139 to i32
  %140 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i, align 4
  %142 = ptrtoint ptr %shub_settings.i144.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %shub_settings.i144.i, align 1
  %conv6.i148.i = zext i8 %143 to i32
  %call.i.i149.i = call i32 @regmap_update_bits_base(ptr noundef %141, i32 noundef %conv6.i148.i, i32 noundef %conv1.i146.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i)
  %cmp59.i = icmp slt i32 %call.i142.i, 0
  br i1 %cmp59.i, label %if.end40.i.cleanup_crit_edge, label %if.end40.i.if.end63.i_crit_edge

if.end40.i.if.end63.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.end40.i.cleanup_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end63.i:                                       ; preds = %if.end40.i.if.end63.i_crit_edge, %if.end32.i.if.end63.i_crit_edge
  %emb_func.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 5
  %144 = ptrtoint ptr %emb_func.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %emb_func.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool65.not.i = icmp eq i8 %145, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end112_crit_edge, label %st_lsm6dsx_init_shub.exit

if.end63.i.if.end112_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

st_lsm6dsx_init_shub.exit:                        ; preds = %if.end63.i
  %mask68.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %85, i32 0, i32 13, i32 5, i32 1
  %146 = ptrtoint ptr %mask68.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %mask68.i, align 1
  %conv69.i = zext i8 %147 to i32
  %148 = call i32 @llvm.cttz.i32(i32 %conv69.i, i1 false) #10, !range !164
  %shl71.i = shl nuw i32 1, %148
  %and75.i = and i32 %shl71.i, %conv69.i
  %149 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i, align 4
  %conv79.i = zext i8 %145 to i32
  %call.i150.i = call i32 @regmap_update_bits_base(ptr noundef %150, i32 noundef %conv79.i, i32 noundef %conv69.i, i32 noundef %and75.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150.i)
  %cmp109 = icmp slt i32 %call.i150.i, 0
  br i1 %cmp109, label %st_lsm6dsx_init_shub.exit.cleanup_crit_edge, label %st_lsm6dsx_init_shub.exit.if.end112_crit_edge

st_lsm6dsx_init_shub.exit.if.end112_crit_edge:    ; preds = %st_lsm6dsx_init_shub.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

st_lsm6dsx_init_shub.exit.cleanup_crit_edge:      ; preds = %st_lsm6dsx_init_shub.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end112:                                        ; preds = %st_lsm6dsx_init_shub.exit.if.end112_crit_edge, %if.end63.i.if.end112_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %151 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 -1, ptr %val.i, align 4, !annotation !165
  %152 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %settings.i, align 4
  %ts_settings1.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12
  %154 = ptrtoint ptr %ts_settings1.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %ts_settings1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i171 = icmp eq i8 %155, 0
  br i1 %tobool.not.i171, label %if.end112.if.end15.i_crit_edge, label %if.then.i179

if.end112.if.end15.i_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i179:                                     ; preds = %if.end112
  %mask.i172 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 0, i32 1
  %156 = ptrtoint ptr %mask.i172 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %mask.i172, align 1
  %conv.i173 = zext i8 %157 to i32
  %158 = call i32 @llvm.cttz.i32(i32 %conv.i173, i1 false) #10, !range !164
  %shl.i174 = shl nuw i32 1, %158
  %and.i175 = and i32 %shl.i174, %conv.i173
  %159 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %and.i175, ptr %val.i, align 4
  %160 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap.i, align 4
  %conv8.i = zext i8 %155 to i32
  %call.i.i177 = call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef %conv8.i, i32 noundef %conv.i173, i32 noundef %and.i175, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i177)
  %cmp.i178 = icmp slt i32 %call.i.i177, 0
  br i1 %cmp.i178, label %if.then.i179.st_lsm6dsx_init_hw_timer.exit_crit_edge, label %if.then.i179.if.end15.i_crit_edge

if.then.i179.if.end15.i_crit_edge:                ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.i

if.then.i179.st_lsm6dsx_init_hw_timer.exit_crit_edge: ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_init_hw_timer.exit

if.end15.i:                                       ; preds = %if.then.i179.if.end15.i_crit_edge, %if.end112.if.end15.i_crit_edge
  %hr_timer.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 1
  %162 = ptrtoint ptr %hr_timer.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %hr_timer.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool17.not.i = icmp eq i8 %163, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end40.i180_crit_edge, label %if.then18.i

if.end15.i.if.end40.i180_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i180

if.then18.i:                                      ; preds = %if.end15.i
  %mask20.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 1, i32 1
  %164 = ptrtoint ptr %mask20.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %mask20.i, align 1
  %conv21.i = zext i8 %165 to i32
  %166 = call i32 @llvm.cttz.i32(i32 %conv21.i, i1 false) #10, !range !164
  %shl23.i = shl nuw i32 1, %166
  %and27.i = and i32 %shl23.i, %conv21.i
  %167 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %and27.i, ptr %val.i, align 4
  %168 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regmap.i, align 4
  %conv31.i = zext i8 %163 to i32
  %call.i112.i = call i32 @regmap_update_bits_base(ptr noundef %169, i32 noundef %conv31.i, i32 noundef %conv21.i, i32 noundef %and27.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %cmp36.i = icmp slt i32 %call.i112.i, 0
  br i1 %cmp36.i, label %if.then18.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, label %if.then18.i.if.end40.i180_crit_edge

if.then18.i.if.end40.i180_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40.i180

if.then18.i.st_lsm6dsx_init_hw_timer.exit_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_init_hw_timer.exit

if.end40.i180:                                    ; preds = %if.then18.i.if.end40.i180_crit_edge, %if.end15.i.if.end40.i180_crit_edge
  %fifo_en.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 2
  %170 = ptrtoint ptr %fifo_en.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %fifo_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool42.not.i = icmp eq i8 %171, 0
  br i1 %tobool42.not.i, label %if.end40.i180.if.end65.i_crit_edge, label %if.then43.i

if.end40.i180.if.end65.i_crit_edge:               ; preds = %if.end40.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then43.i:                                      ; preds = %if.end40.i180
  %mask45.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 2, i32 1
  %172 = ptrtoint ptr %mask45.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %mask45.i, align 1
  %conv46.i = zext i8 %173 to i32
  %174 = call i32 @llvm.cttz.i32(i32 %conv46.i, i1 false) #10, !range !164
  %shl48.i = shl nuw i32 1, %174
  %and52.i = and i32 %shl48.i, %conv46.i
  %175 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %and52.i, ptr %val.i, align 4
  %176 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %regmap.i, align 4
  %conv56.i = zext i8 %171 to i32
  %call.i113.i = call i32 @regmap_update_bits_base(ptr noundef %177, i32 noundef %conv56.i, i32 noundef %conv46.i, i32 noundef %and52.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i)
  %cmp61.i = icmp slt i32 %call.i113.i, 0
  br i1 %cmp61.i, label %if.then43.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, label %if.then43.i.if.end65.i_crit_edge

if.then43.i.if.end65.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65.i

if.then43.i.st_lsm6dsx_init_hw_timer.exit_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_init_hw_timer.exit

if.end65.i:                                       ; preds = %if.then43.i.if.end65.i_crit_edge, %if.end40.i180.if.end65.i_crit_edge
  %ts_gain.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 10
  %178 = ptrtoint ptr %ts_gain.i to i32
  call void @__asan_store8_noabort(i32 %178)
  store i64 25000, ptr %ts_gain.i, align 8
  %freq_fine.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %153, i32 0, i32 12, i32 4
  %179 = ptrtoint ptr %freq_fine.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %freq_fine.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %180)
  %tobool66.not.i = icmp eq i8 %180, 0
  br i1 %tobool66.not.i, label %if.end65.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, label %if.then67.i

if.end65.i.st_lsm6dsx_init_hw_timer.exit_crit_edge: ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_init_hw_timer.exit

if.then67.i:                                      ; preds = %if.end65.i
  %181 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap.i, align 4
  %conv70.i = zext i8 %180 to i32
  %call71.i = call i32 @regmap_read(ptr noundef %182, i32 noundef %conv70.i, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %cmp72.i = icmp slt i32 %call71.i, 0
  br i1 %cmp72.i, label %if.then67.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, label %if.end75.i

if.then67.i.st_lsm6dsx_init_hw_timer.exit_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_init_hw_timer.exit

if.end75.i:                                       ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #12
  %183 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %val.i, align 4
  %sext.i = shl i32 %184, 24
  %conv77.i = ashr exact i32 %sext.i, 24
  %mul.i = mul nsw i32 %conv77.i, 37500
  %div.i = sdiv i32 %mul.i, 1000
  %conv78.i = sext i32 %div.i to i64
  %185 = ptrtoint ptr %ts_gain.i to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %ts_gain.i, align 8
  %sub.i = sub i64 %186, %conv78.i
  store i64 %sub.i, ptr %ts_gain.i, align 8
  br label %st_lsm6dsx_init_hw_timer.exit

st_lsm6dsx_init_hw_timer.exit:                    ; preds = %if.end75.i, %if.then67.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, %if.end65.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, %if.then43.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, %if.then18.i.st_lsm6dsx_init_hw_timer.exit_crit_edge, %if.then.i179.st_lsm6dsx_init_hw_timer.exit_crit_edge
  %retval.0.i181 = phi i32 [ %call.i.i177, %if.then.i179.st_lsm6dsx_init_hw_timer.exit_crit_edge ], [ %call.i112.i, %if.then18.i.st_lsm6dsx_init_hw_timer.exit_crit_edge ], [ %call.i113.i, %if.then43.i.st_lsm6dsx_init_hw_timer.exit_crit_edge ], [ %call71.i, %if.then67.i.st_lsm6dsx_init_hw_timer.exit_crit_edge ], [ 0, %if.end75.i ], [ 0, %if.end65.i.st_lsm6dsx_init_hw_timer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  br label %cleanup

cleanup:                                          ; preds = %st_lsm6dsx_init_hw_timer.exit, %st_lsm6dsx_init_shub.exit.cleanup_crit_edge, %if.end40.i.cleanup_crit_edge, %if.then35.i.cleanup_crit_edge, %if.end27.i.cleanup_crit_edge, %if.then7.i.cleanup_crit_edge, %if.then87.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %st_lsm6dsx_get_drdy_reg.exit, %if.end.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i181, %st_lsm6dsx_init_hw_timer.exit ], [ %call.i145, %if.end.cleanup_crit_edge ], [ -22, %st_lsm6dsx_get_drdy_reg.exit ], [ %call.i151, %if.end16.cleanup_crit_edge ], [ %call.i152, %if.then36.cleanup_crit_edge ], [ %call.i153, %if.then61.cleanup_crit_edge ], [ %call.i154, %if.then87.cleanup_crit_edge ], [ %call.i150.i, %st_lsm6dsx_init_shub.exit.cleanup_crit_edge ], [ %call.i49.i, %if.end12.i.cleanup_crit_edge ], [ %call.i.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i142.i, %if.end40.i.cleanup_crit_edge ], [ %call.i.i141.i, %if.then35.i.cleanup_crit_edge ], [ %call.i125.i, %if.end27.i.cleanup_crit_edge ], [ %call.i.i.i161, %if.then7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_shub_probe(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_irq_setup(ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %irq = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %call = tail call ptr @irq_get_irq_data(i32 noundef %3) #10
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 15
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.52, i32 noundef %and.i) #13
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.st_lsm6dsx_irq_setup, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %13 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %settings, align 4
  %hla = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %14, i32 0, i32 5, i32 6
  %regmap = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %hla to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hla, align 1
  %conv = zext i8 %18 to i32
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %14, i32 0, i32 5, i32 6, i32 1
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mask, align 1
  %conv5 = zext i8 %20 to i32
  %21 = tail call i32 @llvm.cttz.i32(i32 %conv5, i1 false) #10, !range !164
  %shl = shl nuw i32 %switch.load, %21
  %and = and i32 %shl, %conv5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %conv, i32 noundef %conv5, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %switch.lookup.cleanup_crit_edge, label %if.end

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %switch.lookup
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %platform_data, align 8
  %call14 = tail call ptr @dev_fwnode(ptr noundef %1) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %call.i89 = tail call zeroext i1 @device_property_present(ptr noundef %1, ptr noundef nonnull @.str.55) #10
  br i1 %call.i89, label %land.lhs.true.if.then22_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %tobool18.not = icmp eq ptr %23, null
  br i1 %tobool18.not, label %lor.lhs.false.if.end42_crit_edge, label %land.lhs.true19

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true19:                                  ; preds = %lor.lhs.false
  %open_drain = getelementptr inbounds %struct.st_sensors_platform_data, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %open_drain to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %open_drain, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool20.not = icmp eq i8 %25, 0
  br i1 %tobool20.not, label %land.lhs.true19.if.end42_crit_edge, label %land.lhs.true19.if.then22_crit_edge

land.lhs.true19.if.then22_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

land.lhs.true19.if.end42_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.then22:                                        ; preds = %land.lhs.true19.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %26 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %settings, align 4
  %od = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %27, i32 0, i32 5, i32 7
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %od to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %od, align 1
  %conv27 = zext i8 %31 to i32
  %mask28 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %27, i32 0, i32 5, i32 7, i32 1
  %32 = ptrtoint ptr %mask28 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mask28, align 1
  %conv29 = zext i8 %33 to i32
  %34 = tail call i32 @llvm.cttz.i32(i32 %conv29, i1 false) #10, !range !164
  %shl33 = shl nuw i32 1, %34
  %and36 = and i32 %shl33, %conv29
  %call.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %and36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp38 = icmp slt i32 %call.i90, 0
  br i1 %cmp38, label %if.then22.cleanup_crit_edge, label %if.end41

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and.i, 128
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %land.lhs.true19.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %irq_type.0 = phi i32 [ %or, %if.end41 ], [ %and.i, %land.lhs.true19.if.end42_crit_edge ], [ %and.i, %lor.lhs.false.if.end42_crit_edge ]
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 8
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 8
  %or45 = or i32 %irq_type.0, 8192
  %call46 = tail call i32 @devm_request_threaded_irq(ptr noundef %36, i32 noundef %38, ptr noundef null, ptr noundef nonnull @st_lsm6dsx_handler_thread, i32 noundef %or45, ptr noundef nonnull @.str.56, ptr noundef %hw) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end42.cleanup_crit_edge, label %do.end51

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.58, i32 noundef %42) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end42.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call46, %do.end51 ], [ %call.i, %switch.lookup.cleanup_crit_edge ], [ %call.i90, %if.then22.cleanup_crit_edge ], [ 0, %if.end42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_fifo_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %enable_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %enable_event = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 15
  %irq = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 3
  %suspend_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %err.076 = phi i32 [ 0, %entry ], [ %err.2, %for.inc.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 %i.075
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable_mask, align 1
  %conv = zext i8 %7 to i32
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end6.if.end17_crit_edge, label %device_may_wakeup.exit

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

device_may_wakeup.exit:                           ; preds = %if.end6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i = icmp ne ptr %12, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp10 = icmp eq i32 %9, 1
  %or.cond = select i1 %tobool2.i, i1 %cmp10, i1 false
  br i1 %or.cond, label %land.lhs.true12, label %device_may_wakeup.exit.if.end17_crit_edge

device_may_wakeup.exit.if.end17_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true12:                                  ; preds = %device_may_wakeup.exit
  %13 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %land.lhs.true12.st_lsm6dsx_check_events.exit.i_crit_edge, label %if.then15

land.lhs.true12.st_lsm6dsx_check_events.exit.i_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_events.exit.i

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #10
  br label %for.inc

if.end17:                                         ; preds = %device_may_wakeup.exit.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  %.off = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call29 = tail call i32 @st_lsm6dsx_shub_set_enable(ptr noundef %5, i1 noundef zeroext false) #10
  br label %if.end31

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 0
  br i1 %cmp.i.i, label %if.else.if.end.i_crit_edge, label %if.else.st_lsm6dsx_check_events.exit.i_crit_edge

if.else.st_lsm6dsx_check_events.exit.i_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_check_events.exit.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

st_lsm6dsx_check_events.exit.i:                   ; preds = %if.else.st_lsm6dsx_check_events.exit.i_crit_edge, %land.lhs.true12.st_lsm6dsx_check_events.exit.i_crit_edge
  %hw1.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %5, i32 0, i32 2
  %17 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1.i.i, align 4
  %enable_event.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %enable_event.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_event.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool1.not.i = icmp eq i8 %20, 0
  br i1 %tobool1.not.i, label %st_lsm6dsx_check_events.exit.i.if.end.i_crit_edge, label %st_lsm6dsx_check_events.exit.i.if.end35_crit_edge

st_lsm6dsx_check_events.exit.i.if.end35_crit_edge: ; preds = %st_lsm6dsx_check_events.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

st_lsm6dsx_check_events.exit.i.if.end.i_crit_edge: ; preds = %st_lsm6dsx_check_events.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %st_lsm6dsx_check_events.exit.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %call3.i = tail call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %5, i1 noundef zeroext false) #10
  br label %if.end31

if.end31:                                         ; preds = %if.end.i, %if.then28
  %err.1 = phi i32 [ %call29, %if.then28 ], [ %call3.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp32 = icmp slt i32 %err.1, 0
  br i1 %cmp32, label %if.end31.cleanup_crit_edge, label %if.end31.if.end35_crit_edge

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end31.if.end35_crit_edge, %st_lsm6dsx_check_events.exit.i.if.end35_crit_edge
  %err.173 = phi i32 [ %err.1, %if.end31.if.end35_crit_edge ], [ 0, %st_lsm6dsx_check_events.exit.i.if.end35_crit_edge ]
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 8
  %shl37 = shl nuw i32 1, %22
  %23 = ptrtoint ptr %suspend_mask to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %suspend_mask, align 8
  %25 = trunc i32 %shl37 to i8
  %conv39 = or i8 %24, %25
  store i8 %conv39, ptr %suspend_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %if.then15, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.2 = phi i32 [ %err.076, %if.then15 ], [ %err.173, %if.end35 ], [ %err.076, %if.end.for.inc_crit_edge ], [ %err.076, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %fifo_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %fifo_mask to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %fifo_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool40.not = icmp eq i8 %27, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %if.then41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @st_lsm6dsx_flush_fifo(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %for.end.cleanup_crit_edge, %if.end31.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then41 ], [ %err.2, %for.end.cleanup_crit_edge ], [ %err.1, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %enable_event = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 15
  %irq = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 3
  %suspend_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %err.070 = phi i32 [ 0, %entry ], [ %err.2, %for.inc.for.body_crit_edge ]
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 17, i32 %i.069
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.end10_crit_edge, label %device_may_wakeup.exit

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

device_may_wakeup.exit:                           ; preds = %if.end
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end10_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.end10_crit_edge:        ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %11 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end10_crit_edge, label %if.then8

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true6.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %device_may_wakeup.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %15 = ptrtoint ptr %suspend_mask to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %suspend_mask, align 8
  %conv11 = zext i8 %16 to i32
  %id12 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id12, align 8
  %shl = shl nuw i32 1, %18
  %and = and i32 %shl, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end10.for.inc_crit_edge, label %if.end15

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end15:                                         ; preds = %if.end10
  %.off = add i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @st_lsm6dsx_shub_set_enable(ptr noundef %5, i1 noundef zeroext true) #10
  br label %if.end29

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %5, i1 noundef zeroext true) #10
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  %err.1 = phi i32 [ %call27, %if.then26 ], [ %call3.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp30 = icmp slt i32 %err.1, 0
  br i1 %cmp30, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id12, align 8
  %shl35 = shl nuw i32 1, %20
  %21 = ptrtoint ptr %suspend_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %suspend_mask, align 8
  %23 = trunc i32 %shl35 to i8
  %24 = xor i8 %23, -1
  %conv39 = and i8 %22, %24
  store i8 %conv39, ptr %suspend_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end33 ], [ %err.070, %if.end10.for.inc_crit_edge ], [ %err.070, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %fifo_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %fifo_mask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fifo_mask, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  br i1 %tobool40.not, label %for.end.cleanup_crit_edge, label %if.then41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 @st_lsm6dsx_resume_fifo(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %for.end.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42, %if.then41 ], [ %err.2, %for.end.cleanup_crit_edge ], [ %err.1, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_update_fifo(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_read_fifo(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_read_tagged_fifo(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @st_lsm6dsx_get_mount_matrix(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %orientation = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 19
  ret ptr %orientation
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %ch, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb3
    i32 2, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %hw1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #10
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -1, ptr %data.i, align 2, !annotation !165
  %id.i.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 1
  %call3.i.i = tail call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %1, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp.i, label %if.end.st_lsm6dsx_read_oneshot.exit_crit_edge, label %if.end.i

if.end.st_lsm6dsx_read_oneshot.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_read_oneshot.exit

if.end.i:                                         ; preds = %if.end
  %odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %odr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %odr.i, align 4
  %div.i = udiv i32 1000000000, %9
  %mul.i = mul nuw i32 %div.i, 3
  %mul2.i = shl nuw i32 %div.i, 2
  tail call void @usleep_range_state(i32 noundef %mul.i, i32 noundef %mul2.i, i32 noundef 2) #10
  %conv.i = and i32 %4, 255
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #10
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef %conv.i, ptr noundef nonnull %data.i, i32 noundef 2) #10
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.end.i.st_lsm6dsx_read_oneshot.exit_crit_edge, label %if.end7.i

if.end.i.st_lsm6dsx_read_oneshot.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_read_oneshot.exit

if.end7.i:                                        ; preds = %if.end.i
  %enable_event.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 15
  %12 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable_event.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then8.i, label %if.end7.i.if.end14.i_crit_edge

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end7.i
  %14 = ptrtoint ptr %id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.i30.i = icmp eq i32 %15, 0
  br i1 %cmp.i.i30.i, label %if.then8.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge, label %st_lsm6dsx_check_events.exit.i.i

if.then8.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_sensor_set_enable.exit.i

st_lsm6dsx_check_events.exit.i.i:                 ; preds = %if.then8.i
  %16 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i, align 4
  %enable_event.i.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %enable_event.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable_event.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool1.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool1.not.i.i, label %st_lsm6dsx_check_events.exit.i.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge, label %st_lsm6dsx_check_events.exit.i.i.if.end14.i_crit_edge

st_lsm6dsx_check_events.exit.i.i.if.end14.i_crit_edge: ; preds = %st_lsm6dsx_check_events.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

st_lsm6dsx_check_events.exit.i.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge: ; preds = %st_lsm6dsx_check_events.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_sensor_set_enable.exit.i

st_lsm6dsx_sensor_set_enable.exit.i:              ; preds = %st_lsm6dsx_check_events.exit.i.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge, %if.then8.i.st_lsm6dsx_sensor_set_enable.exit.i_crit_edge
  %call3.i31.i = call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %1, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i31.i)
  %cmp10.i = icmp slt i32 %call3.i31.i, 0
  br i1 %cmp10.i, label %st_lsm6dsx_sensor_set_enable.exit.i.st_lsm6dsx_read_oneshot.exit_crit_edge, label %st_lsm6dsx_sensor_set_enable.exit.i.if.end14.i_crit_edge

st_lsm6dsx_sensor_set_enable.exit.i.if.end14.i_crit_edge: ; preds = %st_lsm6dsx_sensor_set_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

st_lsm6dsx_sensor_set_enable.exit.i.st_lsm6dsx_read_oneshot.exit_crit_edge: ; preds = %st_lsm6dsx_sensor_set_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_read_oneshot.exit

if.end14.i:                                       ; preds = %st_lsm6dsx_sensor_set_enable.exit.i.if.end14.i_crit_edge, %st_lsm6dsx_check_events.exit.i.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %data.i, align 2
  %22 = call i16 @llvm.bswap.i16(i16 %21) #10
  %conv15.i = sext i16 %22 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv15.i, ptr %val, align 4
  br label %st_lsm6dsx_read_oneshot.exit

st_lsm6dsx_read_oneshot.exit:                     ; preds = %if.end14.i, %st_lsm6dsx_sensor_set_enable.exit.i.st_lsm6dsx_read_oneshot.exit_crit_edge, %if.end.i.st_lsm6dsx_read_oneshot.exit_crit_edge, %if.end.st_lsm6dsx_read_oneshot.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end14.i ], [ %call3.i.i, %if.end.st_lsm6dsx_read_oneshot.exit_crit_edge ], [ %call.i.i, %if.end.i.st_lsm6dsx_read_oneshot.exit_crit_edge ], [ %call3.i31.i, %st_lsm6dsx_sensor_set_enable.exit.i.st_lsm6dsx_read_oneshot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #10
  call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %odr = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %odr, align 4
  %div = udiv i32 %25, 1000
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %val, align 4
  %27 = load i32, ptr %odr, align 4
  %rem = urem i32 %27, 1000
  %mul = mul nuw nsw i32 %rem, 1000
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %val2, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val, align 4
  %gain = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gain, align 8
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %st_lsm6dsx_read_oneshot.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 3, %sw.bb5 ], [ 2, %sw.bb3 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %retval.0.i, %st_lsm6dsx_read_oneshot.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_write_raw(ptr noundef %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %hw.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 4
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %settings.i, align 4
  %id.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 8, i32 %8
  %fs_len.i = getelementptr %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 8, i32 %8, i32 2
  %9 = ptrtoint ptr %fs_len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fs_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp46.i = icmp sgt i32 %10, 0
  br i1 %cmp46.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 8, i32 %8, i32 1, i32 %i.047.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp4.i = icmp eq i32 %12, %val2
  br i1 %cmp4.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.sw.epilog_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.sw.epilog_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb.for.end.i_crit_edge ], [ %i.047.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %10)
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %10
  br i1 %cmp6.i, label %for.end.i.sw.epilog_crit_edge, label %if.end8.i

for.end.i.sw.epilog_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end8.i:                                        ; preds = %for.end.i
  %val.i = getelementptr %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 8, i32 %8, i32 1, i32 %i.0.lcssa.i, i32 1
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %val.i, align 4
  %conv.i = zext i8 %14 to i32
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_reg, ptr %arrayidx.i, i32 0, i32 1
  %15 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %mask.i, align 1
  %conv11.i = zext i8 %16 to i32
  %17 = tail call i32 @llvm.cttz.i32(i32 %conv11.i, i1 false) #10, !range !164
  %shl.i = shl i32 %conv.i, %17
  %and.i = and i32 %shl.i, %conv11.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 4
  %conv17.i = zext i8 %19 to i32
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %4, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #10
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %4, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef %conv17.i, i32 noundef %conv11.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp22.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp22.i, label %if.end8.i.sw.epilog_crit_edge, label %if.end25.i

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end25.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %gain26.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %gain26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val2, ptr %gain26.i, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %mul = mul i32 %val, 1000
  %div = sdiv i32 %val2, 1000
  %add = add i32 %div, %mul
  %hw.i19 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %hw.i19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw.i19, align 4
  %settings.i20 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %24, i32 0, i32 18
  %25 = ptrtoint ptr %settings.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %settings.i20, align 4
  %id.i21 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %id.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i21, align 8
  %odr_len.i = getelementptr %struct.st_lsm6dsx_settings, ptr %26, i32 0, i32 7, i32 %28, i32 2
  %29 = ptrtoint ptr %odr_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %odr_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp25.i = icmp sgt i32 %30, 0
  br i1 %cmp25.i, label %sw.bb3.for.body.i23_crit_edge, label %sw.bb3.for.end.i28_crit_edge

sw.bb3.for.end.i28_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i28

sw.bb3.for.body.i23_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.inc.i26.for.body.i23_crit_edge, %sw.bb3.for.body.i23_crit_edge
  %i.026.i = phi i32 [ %inc.i24, %for.inc.i26.for.body.i23_crit_edge ], [ 0, %sw.bb3.for.body.i23_crit_edge ]
  %arrayidx2.i22 = getelementptr %struct.st_lsm6dsx_settings, ptr %26, i32 0, i32 7, i32 %28, i32 1, i32 %i.026.i
  %31 = ptrtoint ptr %arrayidx2.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add)
  %cmp3.not.i = icmp ult i32 %32, %add
  br i1 %cmp3.not.i, label %for.inc.i26, label %for.body.i23.for.end.i28_crit_edge

for.body.i23.for.end.i28_crit_edge:               ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i28

for.inc.i26:                                      ; preds = %for.body.i23
  %inc.i24 = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i25 = icmp eq i32 %inc.i24, %30
  br i1 %exitcond.not.i25, label %for.inc.i26.sw.epilog_crit_edge, label %for.inc.i26.for.body.i23_crit_edge

for.inc.i26.for.body.i23_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i23

for.inc.i26.sw.epilog_crit_edge:                  ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

for.end.i28:                                      ; preds = %for.body.i23.for.end.i28_crit_edge, %sw.bb3.for.end.i28_crit_edge
  %i.0.lcssa.i27 = phi i32 [ 0, %sw.bb3.for.end.i28_crit_edge ], [ %i.026.i, %for.body.i23.for.end.i28_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i27, i32 %30)
  %cmp5.i = icmp eq i32 %i.0.lcssa.i27, %30
  br i1 %cmp5.i, label %for.end.i28.sw.epilog_crit_edge, label %st_lsm6dsx_check_odr.exit

for.end.i28.sw.epilog_crit_edge:                  ; preds = %for.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

st_lsm6dsx_check_odr.exit:                        ; preds = %for.end.i28
  %arrayidx9.i = getelementptr %struct.st_lsm6dsx_settings, ptr %26, i32 0, i32 7, i32 %28, i32 1, i32 %i.0.lcssa.i27
  %33 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp = icmp slt i32 %34, 0
  br i1 %cmp, label %st_lsm6dsx_check_odr.exit.sw.epilog_crit_edge, label %if.else

st_lsm6dsx_check_odr.exit.sw.epilog_crit_edge:    ; preds = %st_lsm6dsx_check_odr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.else:                                          ; preds = %st_lsm6dsx_check_odr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %odr = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %odr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %odr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %st_lsm6dsx_check_odr.exit.sw.epilog_crit_edge, %for.end.i28.sw.epilog_crit_edge, %for.inc.i26.sw.epilog_crit_edge, %if.end25.i, %if.end8.i.sw.epilog_crit_edge, %for.end.i.sw.epilog_crit_edge, %for.inc.i.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %err.1 = phi i32 [ -22, %if.end.sw.epilog_crit_edge ], [ 0, %if.end25.i ], [ -22, %for.end.i.sw.epilog_crit_edge ], [ %call.i.i.i, %if.end8.i.sw.epilog_crit_edge ], [ 0, %if.else ], [ %34, %st_lsm6dsx_check_odr.exit.sw.epilog_crit_edge ], [ -22, %for.end.i28.sw.epilog_crit_edge ], [ -22, %for.inc.i.sw.epilog_crit_edge ], [ -22, %for.inc.i26.sw.epilog_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_lsm6dsx_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mask) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %cond = icmp eq i32 %mask, 2
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %. = select i1 %switch, i32 3, i32 2
  br label %return

return:                                           ; preds = %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %., %sw.bb ], [ 2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_lsm6dsx_read_event_config(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %enable_event = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_event, align 1
  %conv = zext i8 %5 to i32
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %8 = lshr i32 %conv, %7
  %9 = and i32 %8, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_write_event_config(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %enable_event3 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %enable_event3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_event3, align 1
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel2, align 4
  %shl = shl nuw i32 1, %7
  %8 = trunc i32 %shl to i8
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %conv4 = or i8 %5, %8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.then2.if.end17_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then2.if.end17_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.else:                                          ; preds = %if.end
  %9 = xor i8 %8, -1
  %conv13 = and i8 %5, %9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv13)
  %tobool14.not = icmp eq i8 %conv13, 0
  br i1 %tobool14.not, label %if.else.if.end17_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.else.if.end17_crit_edge, %if.then2.if.end17_crit_edge
  %enable_event.0 = phi i8 [ %conv4, %if.then2.if.end17_crit_edge ], [ 0, %if.else.if.end17_crit_edge ]
  %enable_event18 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 15
  %10 = ptrtoint ptr %enable_event18 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_event18, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %enable_event.0)
  %cmp21 = icmp eq i8 %11, %enable_event.0
  br i1 %cmp21, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %settings.i, align 4
  %irq1_func.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %13, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %irq1_func.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irq1_func.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.end24.cleanup_crit_edge, label %if.end.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end24
  %event_settings.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %13, i32 0, i32 14
  %16 = ptrtoint ptr %event_settings.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %event_settings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i = icmp eq i8 %17, 0
  br i1 %tobool3.not.i, label %if.end.i.st_lsm6dsx_event_setup.exit_crit_edge, label %if.then4.i

if.end.i.st_lsm6dsx_event_setup.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_event_setup.exit

if.then4.i:                                       ; preds = %if.end.i
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %13, i32 0, i32 14, i32 0, i32 1
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask.i, align 1
  %conv.i = zext i8 %19 to i32
  %20 = tail call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #10, !range !164
  %shl.i = shl i32 %state, %20
  %and.i = and i32 %shl.i, %conv.i
  %conv8.i = zext i8 %17 to i32
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #10
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %conv8.i, i32 noundef %conv.i, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %if.then4.i.cleanup_crit_edge, label %if.then4.i.st_lsm6dsx_event_setup.exit_crit_edge

if.then4.i.st_lsm6dsx_event_setup.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_event_setup.exit

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

st_lsm6dsx_event_setup.exit:                      ; preds = %if.then4.i.st_lsm6dsx_event_setup.exit_crit_edge, %if.end.i.st_lsm6dsx_event_setup.exit_crit_edge
  %irq_routing.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %irq_routing.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_routing.i, align 4
  %mask16.i = getelementptr inbounds %struct.st_lsm6dsx_reg, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %mask16.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mask16.i, align 1
  %conv17.i = zext i8 %26 to i32
  %27 = tail call i32 @llvm.cttz.i32(i32 %conv17.i, i1 false) #10, !range !164
  %shl19.i = shl i32 %state, %27
  %and23.i = and i32 %shl19.i, %conv17.i
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %24, align 1
  %conv26.i = zext i8 %29 to i32
  %page_lock.i47.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i47.i, i32 noundef 0) #10
  %regmap.i48.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i48.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i48.i, align 4
  %call.i.i49.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef %conv26.i, i32 noundef %conv17.i, i32 noundef %and23.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %page_lock.i47.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i49.i)
  %cmp26 = icmp slt i32 %call.i.i49.i, 0
  br i1 %cmp26, label %st_lsm6dsx_event_setup.exit.cleanup_crit_edge, label %if.end29

st_lsm6dsx_event_setup.exit.cleanup_crit_edge:    ; preds = %st_lsm6dsx_event_setup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %st_lsm6dsx_event_setup.exit
  %conf_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %conf_lock, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_event.0)
  %tobool31.not = icmp eq i8 %enable_event.0, 0
  br i1 %tobool31.not, label %lor.lhs.false, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

lor.lhs.false:                                    ; preds = %if.end29
  %fifo_mask = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %fifo_mask to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fifo_mask, align 2
  %conv32 = zext i8 %33 to i32
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 8
  %shl33 = shl nuw i32 1, %35
  %and34 = and i32 %shl33, %conv32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %lor.lhs.false.if.end39_crit_edge, label %if.end39.thread

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39.thread:                                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %conf_lock) #10
  br label %out

if.end39:                                         ; preds = %lor.lhs.false.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %call38 = tail call fastcc i32 @__st_lsm6dsx_sensor_set_enable(ptr noundef %1, i1 noundef zeroext %tobool)
  tail call void @mutex_unlock(ptr noundef %conf_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp41 = icmp slt i32 %call38, 0
  br i1 %cmp41, label %if.end39.cleanup_crit_edge, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %if.end39.out_crit_edge, %if.end39.thread, %if.else.out_crit_edge, %if.then2.out_crit_edge
  %enable_event.1 = phi i8 [ %conv4, %if.then2.out_crit_edge ], [ %enable_event.0, %if.end39.out_crit_edge ], [ %conv13, %if.else.out_crit_edge ], [ 0, %if.end39.thread ]
  %enable_event45 = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 15
  %36 = ptrtoint ptr %enable_event45 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %enable_event.1, ptr %enable_event45, align 1
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end39.cleanup_crit_edge, %st_lsm6dsx_event_setup.exit.cleanup_crit_edge, %if.then4.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %call.i.i49.i, %st_lsm6dsx_event_setup.exit.cleanup_crit_edge ], [ %call38, %if.end39.cleanup_crit_edge ], [ %call.i.i.i, %if.then4.i.cleanup_crit_edge ], [ -524, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @st_lsm6dsx_read_event(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %4 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %val2, align 4
  %event_threshold = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 14
  %5 = ptrtoint ptr %event_threshold to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %event_threshold, align 8
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_write_event(ptr nocapture noundef readonly %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp ne i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %val)
  %4 = icmp ugt i32 %val, 31
  %or.cond = or i1 %cmp.not, %4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %5 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %settings, align 4
  %wakeup_reg = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 14, i32 1
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %6, i32 0, i32 14, i32 1, i32 1
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mask, align 1
  %conv = zext i8 %8 to i32
  %9 = tail call i32 @llvm.cttz.i32(i32 %conv, i1 false) #10, !range !164
  %shl = shl i32 %val, %9
  %and = and i32 %shl, %conv
  %10 = ptrtoint ptr %wakeup_reg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wakeup_reg, align 1
  %conv9 = zext i8 %11 to i32
  %page_lock.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #10
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %conv9, i32 noundef %conv, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  tail call void @mutex_unlock(ptr noundef %page_lock.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13 = icmp slt i32 %call.i.i, 0
  br i1 %cmp13, label %if.end5.cleanup_crit_edge, label %if.end16

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %conv17 = trunc i32 %val to i8
  %event_threshold = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %event_threshold to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv17, ptr %event_threshold, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_sysfs_sampling_frequency_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %hw = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %settings, align 4
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %odr_len = getelementptr %struct.st_lsm6dsx_settings, ptr %7, i32 0, i32 7, i32 %9, i32 2
  %10 = ptrtoint ptr %odr_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %odr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp21 = icmp sgt i32 %11, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.023 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.023
  %sub = sub i32 4096, %len.023
  %arrayidx3 = getelementptr %struct.st_lsm6dsx_settings, ptr %7, i32 0, i32 7, i32 %9, i32 1, i32 %i.022
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %.frozen = freeze i32 %13
  %div = udiv i32 %.frozen, 1000
  %14 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %14
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.44, i32 noundef %div, i32 noundef %rem.decomposed) #10
  %add = add i32 %call7, %len.023
  %inc = add nuw nsw i32 %i.022, 1
  %15 = ptrtoint ptr %odr_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %odr_len, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub8 = add i32 %len.0.lcssa, -1
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %sub8
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx9, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_sysfs_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %hw2 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw2, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %settings, align 4
  %id = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %fs_len = getelementptr %struct.st_lsm6dsx_settings, ptr %7, i32 0, i32 8, i32 %9, i32 2
  %10 = ptrtoint ptr %fs_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17 = icmp sgt i32 %11, 0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.019 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.019
  %sub = sub i32 4096, %len.019
  %arrayidx4 = getelementptr %struct.st_lsm6dsx_settings, ptr %7, i32 0, i32 8, i32 %9, i32 1, i32 %i.018
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.46, i32 noundef %13) #10
  %add = add i32 %call5, %len.019
  %inc = add nuw nsw i32 %i.018, 1
  %14 = ptrtoint ptr %fs_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fs_len, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub6 = add i32 %len.0.lcssa, -1
  %arrayidx7 = getelementptr i8, ptr %buf, i32 %sub6
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 10, ptr %arrayidx7, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_flush_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_handler_thread(i32 noundef %irq, ptr noundef %private) #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.i, align 4, !annotation !165
  %enable_event.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 15
  %1 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %enable_event.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %entry.st_lsm6dsx_report_motion_event.exit_crit_edge, label %if.end.i

entry.st_lsm6dsx_report_motion_event.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_report_motion_event.exit

if.end.i:                                         ; preds = %entry
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 18
  %3 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %settings.i, align 4
  %wakeup_src_reg.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %4, i32 0, i32 14, i32 2
  %5 = ptrtoint ptr %wakeup_src_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wakeup_src_reg.i, align 1
  %conv.i = zext i8 %6 to i32
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #10
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %conv.i, ptr noundef nonnull %data.i, i32 noundef 4) #10
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.i.st_lsm6dsx_report_motion_event.exit_crit_edge, label %if.end4.i

if.end.i.st_lsm6dsx_report_motion_event.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %st_lsm6dsx_report_motion_event.exit

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 17, i32 1
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = call i64 @iio_get_time_ns(ptr noundef %10) #10
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data.i, align 4
  %13 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %settings.i, align 4
  %wakeup_src_z_mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %14, i32 0, i32 14, i32 4
  %15 = ptrtoint ptr %wakeup_src_z_mask.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %wakeup_src_z_mask.i, align 2
  %conv8.i = zext i8 %16 to i32
  %and.i = and i32 %12, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.end4.i.if.end18.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end18.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %17 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %enable_event.i, align 1
  %19 = and i8 %18, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool13.not.i = icmp eq i8 %19, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end18.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end18.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %call17.i = call i32 @iio_push_event(ptr noundef %21, i64 noundef 3311419785216, i64 noundef %call5.i) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end18.i_crit_edge, %if.end4.i.if.end18.i_crit_edge
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.i, align 4
  %24 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %settings.i, align 4
  %wakeup_src_y_mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %25, i32 0, i32 14, i32 5
  %26 = ptrtoint ptr %wakeup_src_y_mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %wakeup_src_y_mask.i, align 1
  %conv21.i = zext i8 %27 to i32
  %and22.i = and i32 %23, %conv21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end33.i_crit_edge, label %land.lhs.true24.i

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.lhs.true24.i:                                ; preds = %if.end18.i
  %28 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable_event.i, align 1
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool28.not.i = icmp eq i8 %30, 0
  br i1 %tobool28.not.i, label %land.lhs.true24.i.if.end33.i_crit_edge, label %if.then29.i

land.lhs.true24.i.if.end33.i_crit_edge:           ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then29.i:                                      ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %call32.i = call i32 @iio_push_event(ptr noundef %32, i64 noundef 2211908157440, i64 noundef %call5.i) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then29.i, %land.lhs.true24.i.if.end33.i_crit_edge, %if.end18.i.if.end33.i_crit_edge
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data.i, align 4
  %35 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %settings.i, align 4
  %wakeup_src_x_mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %36, i32 0, i32 14, i32 6
  %37 = ptrtoint ptr %wakeup_src_x_mask.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wakeup_src_x_mask.i, align 2
  %conv36.i = zext i8 %38 to i32
  %and37.i = and i32 %34, %conv36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end33.i.if.end48.i_crit_edge, label %land.lhs.true39.i

if.end33.i.if.end48.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

land.lhs.true39.i:                                ; preds = %if.end33.i
  %39 = ptrtoint ptr %enable_event.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enable_event.i, align 1
  %41 = and i8 %40, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool43.not.i = icmp eq i8 %41, 0
  br i1 %tobool43.not.i, label %land.lhs.true39.i.if.end48.i_crit_edge, label %if.then44.i

land.lhs.true39.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i

if.then44.i:                                      ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %call47.i = call i32 @iio_push_event(ptr noundef %43, i64 noundef 1112396529664, i64 noundef %call5.i) #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %land.lhs.true39.i.if.end48.i_crit_edge, %if.end33.i.if.end48.i_crit_edge
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data.i, align 4
  %wakeup_src_status_mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %4, i32 0, i32 14, i32 3
  %46 = ptrtoint ptr %wakeup_src_status_mask.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %wakeup_src_status_mask.i, align 1
  %conv49.i = zext i8 %47 to i32
  %and50.i = and i32 %45, %conv49.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.i = icmp ne i32 %and50.i, 0
  %phi.cast26 = zext i1 %tobool51.i to i32
  br label %st_lsm6dsx_report_motion_event.exit

st_lsm6dsx_report_motion_event.exit:              ; preds = %if.end48.i, %if.end.i.st_lsm6dsx_report_motion_event.exit_crit_edge, %entry.st_lsm6dsx_report_motion_event.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast26, %if.end48.i ], [ 0, %entry.st_lsm6dsx_report_motion_event.exit_crit_edge ], [ 0, %if.end.i.st_lsm6dsx_report_motion_event.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #10
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 18
  %48 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %settings, align 4
  %read_fifo = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %49, i32 0, i32 11, i32 1
  %50 = ptrtoint ptr %read_fifo to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %read_fifo, align 4
  %tobool.not = icmp eq ptr %51, null
  br i1 %tobool.not, label %st_lsm6dsx_report_motion_event.exit.cleanup_crit_edge, label %do.body.preheader

st_lsm6dsx_report_motion_event.exit.cleanup_crit_edge: ; preds = %st_lsm6dsx_report_motion_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body.preheader:                                ; preds = %st_lsm6dsx_report_motion_event.exit
  %fifo_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %private, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %fifo_len.0 = phi i32 [ %add, %do.body.do.body_crit_edge ], [ 0, %do.body.preheader ]
  call void @mutex_lock_nested(ptr noundef %fifo_lock, i32 noundef 0) #10
  %52 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %settings, align 4
  %read_fifo4 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %53, i32 0, i32 11, i32 1
  %54 = ptrtoint ptr %read_fifo4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_fifo4, align 4
  %call5 = call i32 %55(ptr noundef %private) #10
  call void @mutex_unlock(ptr noundef %fifo_lock) #10
  %cmp = icmp sgt i32 %call5, 0
  %add = add i32 %call5, %fifo_len.0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fifo_len.0)
  %tobool10.not = icmp eq i32 %fifo_len.0, 0
  %spec.select25 = select i1 %tobool10.not, i32 %retval.0.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %st_lsm6dsx_report_motion_event.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select25, %do.end ], [ %retval.0.i, %st_lsm6dsx_report_motion_event.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_shub_set_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_resume_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !118, !120, !121, !123, !125, !127, !129, !131, !132, !134, !135, !136, !137, !139, !141, !143, !144, !145, !146, !147, !149, !151, !153, !154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @st_lsm6dsx_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2216, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @st_lsm6dsx_probe.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2217, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @st_lsm6dsx_probe.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2218, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2253, i32 39}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2282, i32 57}
!13 = !{ptr @__ksymtab_st_lsm6dsx_probe, !14, !"__ksymtab_st_lsm6dsx_probe", i1 false, i1 false}
!14 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2288, i32 1}
!15 = !{ptr @st_lsm6dsx_pm_ops, !16, !"st_lsm6dsx_pm_ops", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2365, i32 25}
!17 = !{ptr @__ksymtab_st_lsm6dsx_pm_ops, !18, !"__ksymtab_st_lsm6dsx_pm_ops", i1 false, i1 false}
!18 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2368, i32 1}
!19 = !{ptr @__UNIQUE_ID_author290, !20, !"__UNIQUE_ID_author290", i1 false, i1 false}
!20 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2370, i32 1}
!21 = !{ptr @__UNIQUE_ID_author291, !22, !"__UNIQUE_ID_author291", i1 false, i1 false}
!22 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2371, i32 1}
!23 = !{ptr @__UNIQUE_ID_description292, !24, !"__UNIQUE_ID_description292", i1 false, i1 false}
!24 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2372, i32 1}
!25 = !{ptr @__UNIQUE_ID_file293, !26, !"__UNIQUE_ID_file293", i1 false, i1 false}
!26 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2373, i32 1}
!27 = !{ptr @__UNIQUE_ID_license294, !26, !"__UNIQUE_ID_license294", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2175, i32 29}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2176, i32 29}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2180, i32 34}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2185, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @st_lsm6dsx_init_regulators._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @st_lsm6dsx_init_regulators._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1186, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @st_lsm6dsx_check_whoami._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @st_lsm6dsx_check_whoami._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1192, i32 3}
!49 = !{ptr @st_lsm6dsx_check_whoami._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @st_lsm6dsx_check_whoami._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1197, i32 3}
!53 = !{ptr @st_lsm6dsx_check_whoami._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @st_lsm6dsx_check_whoami._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 108, i32 13}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 112, i32 13}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 216, i32 13}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 382, i32 13}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 548, i32 13}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 552, i32 13}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 556, i32 13}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 560, i32 13}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 767, i32 13}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 771, i32 13}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 775, i32 13}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 779, i32 13}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 783, i32 13}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 787, i32 13}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 992, i32 13}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 996, i32 13}
!87 = !{ptr @st_lsm6dsx_sensor_settings, !88, !"st_lsm6dsx_sensor_settings", i1 false, i1 false}
!88 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 91, i32 41}
!89 = !{ptr @st_lsm6ds0_gyro_channels, !90, !"st_lsm6ds0_gyro_channels", i1 false, i1 false}
!90 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 84, i32 35}
!91 = !{ptr @st_lsm6dsx_acc_channels, !92, !"st_lsm6dsx_acc_channels", i1 false, i1 false}
!92 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 70, i32 35}
!93 = !{ptr @st_lsm6dsx_event, !94, !"st_lsm6dsx_event", i1 false, i1 false}
!94 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h", i32 428, i32 51}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h", i32 510, i32 2}
!97 = !{ptr @st_lsm6dsx_accel_ext_info, !98, !"st_lsm6dsx_accel_ext_info", i1 false, i1 false}
!98 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h", i32 509, i32 46}
!99 = !{ptr @st_lsm6dsx_gyro_channels, !100, !"st_lsm6dsx_gyro_channels", i1 false, i1 false}
!100 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 77, i32 35}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2011, i32 49}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2016, i32 49}
!105 = !{ptr @st_lsm6dsx_available_scan_masks, !106, !"st_lsm6dsx_available_scan_masks", i1 false, i1 false}
!106 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h", i32 435, i32 43}
!107 = !{ptr @st_lsm6dsx_acc_info, !108, !"st_lsm6dsx_acc_info", i1 false, i1 false}
!108 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1702, i32 30}
!109 = !{ptr @st_lsm6dsx_acc_attribute_group, !110, !"st_lsm6dsx_acc_attribute_group", i1 false, i1 false}
!110 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1698, i32 37}
!111 = !{ptr @st_lsm6dsx_acc_attributes, !112, !"st_lsm6dsx_acc_attributes", i1 false, i1 false}
!112 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1692, i32 26}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1686, i32 8}
!115 = !{ptr @iio_dev_attr_sampling_frequency_available, !114, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1642, i32 48}
!118 = !{ptr @.str.45, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1687, i32 8}
!120 = !{ptr @iio_dev_attr_in_accel_scale_available, !119, !"iio_dev_attr_in_accel_scale_available", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1661, i32 48}
!123 = !{ptr @st_lsm6dsx_gyro_info, !124, !"st_lsm6dsx_gyro_info", i1 false, i1 false}
!124 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1724, i32 30}
!125 = !{ptr @st_lsm6dsx_gyro_attribute_group, !126, !"st_lsm6dsx_gyro_attribute_group", i1 false, i1 false}
!126 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1720, i32 37}
!127 = !{ptr @st_lsm6dsx_gyro_attributes, !128, !"st_lsm6dsx_gyro_attributes", i1 false, i1 false}
!128 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1714, i32 26}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1689, i32 8}
!131 = !{ptr @iio_dev_attr_in_anglvel_scale_available, !130, !"iio_dev_attr_in_anglvel_scale_available", i1 false, i1 false}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1766, i32 3}
!134 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @st_lsm6dsx_get_drdy_reg._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @st_lsm6dsx_get_drdy_reg._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1739, i32 39}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 1785, i32 57}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2132, i32 3}
!143 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @st_lsm6dsx_irq_setup._entry, !142, !"_entry", i1 false, i1 false}
!146 = !{ptr @st_lsm6dsx_irq_setup._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2144, i32 57}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2159, i32 6}
!151 = !{ptr @.str.58, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c", i32 2161, i32 3}
!153 = !{ptr @st_lsm6dsx_irq_setup._entry.57, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @st_lsm6dsx_irq_setup._entry_ptr.59, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i32 0, i32 33}
!165 = !{!"auto-init"}
!166 = !{i8 0, i8 2}
