; ModuleID = '/llk/IR_all_yes/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c_pt.bc'
source_filename = "../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.st_lsm6dsx_ext_dev_settings = type { [2 x i8], %struct.anon.89, i32, %struct.st_lsm6dsx_odr_table_entry, %struct.st_lsm6dsx_fs_table_entry, %struct.st_lsm6dsx_reg, %struct.anon.90, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.anon.91 }
%struct.anon.89 = type { i8, i8 }
%struct.st_lsm6dsx_odr_table_entry = type { %struct.st_lsm6dsx_reg, [8 x %struct.st_lsm6dsx_odr], i32 }
%struct.st_lsm6dsx_odr = type { i32, i8 }
%struct.st_lsm6dsx_fs_table_entry = type { %struct.st_lsm6dsx_reg, [4 x %struct.st_lsm6dsx_fs], i32 }
%struct.st_lsm6dsx_fs = type { i32, i8 }
%struct.anon.90 = type { %struct.st_lsm6dsx_reg, i8, i8 }
%struct.st_lsm6dsx_reg = type { i8, i8 }
%struct.anon.91 = type { i8, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.st_lsm6dsx_sensor = type { [32 x i8], i32, ptr, i32, i32, i16, i8, i8, i64, %struct.anon.88 }
%struct.anon.88 = type { ptr, i32, i8 }
%struct.st_lsm6dsx_hw = type { ptr, ptr, [2 x %struct.regulator_bulk_data], i32, %struct.mutex, %struct.mutex, %struct.mutex, i8, i8, i8, i64, i8, i8, ptr, i8, i8, ptr, [5 x ptr], ptr, %struct.iio_mount_matrix, [3 x %struct.anon.87] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.87 = type { [3 x i16], i64 }
%struct.st_lsm6dsx_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, [16 x %struct.anon.79], [2 x %struct.anon.80], %struct.anon.81, %struct.st_lsm6dsx_reg, [2 x %struct.st_lsm6dsx_odr_table_entry], [2 x %struct.st_lsm6dsx_fs_table_entry], [16 x %struct.st_lsm6dsx_reg], [16 x %struct.st_lsm6dsx_reg], %struct.st_lsm6dsx_fifo_ops, %struct.st_lsm6dsx_hw_ts_settings, %struct.st_lsm6dsx_shub_settings, %struct.st_lsm6dsx_event_settings }
%struct.anon.79 = type { i32, ptr, i8 }
%struct.anon.80 = type { ptr, i32 }
%struct.anon.81 = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg }
%struct.st_lsm6dsx_fifo_ops = type { ptr, ptr, %struct.anon.82, %struct.anon.83, i16, i8 }
%struct.anon.82 = type { i8, i16 }
%struct.anon.83 = type { i8, i16 }
%struct.st_lsm6dsx_hw_ts_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8 }
%struct.st_lsm6dsx_shub_settings = type { %struct.st_lsm6dsx_reg, %struct.anon.84, %struct.anon.85, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, %struct.anon.86, i8, i8, i8, i8 }
%struct.anon.84 = type { i8, i8, i8 }
%struct.anon.85 = type { i8, i8, i8 }
%struct.anon.86 = type { i8, i8 }
%struct.st_lsm6dsx_event_settings = type { %struct.st_lsm6dsx_reg, %struct.st_lsm6dsx_reg, i8, i8, i8, i8, i8 }
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
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.78, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.78 = type { i8, i8, i8, i8, i8, i32 }

@st_lsm6dsx_ext_dev_table = internal constant { [2 x %struct.st_lsm6dsx_ext_dev_settings], [88 x i8] } { [2 x %struct.st_lsm6dsx_ext_dev_settings] [%struct.st_lsm6dsx_ext_dev_settings { [2 x i8] c"\1E\00", %struct.anon.89 { i8 79, i8 64 }, i32 0, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 96, i8 12 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 10000, i8 0 }, %struct.st_lsm6dsx_odr { i32 20000, i8 1 }, %struct.st_lsm6dsx_odr { i32 50000, i8 2 }, %struct.st_lsm6dsx_odr { i32 100000, i8 3 }, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer, %struct.st_lsm6dsx_odr zeroinitializer], i32 4 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg zeroinitializer, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 1500, i8 0 }, %struct.st_lsm6dsx_fs zeroinitializer, %struct.st_lsm6dsx_fs zeroinitializer, %struct.st_lsm6dsx_fs zeroinitializer], i32 1 }, %struct.st_lsm6dsx_reg { i8 96, i8 -128 }, %struct.anon.90 { %struct.st_lsm6dsx_reg { i8 96, i8 3 }, i8 2, i8 0 }, %struct.st_lsm6dsx_reg { i8 97, i8 2 }, %struct.st_lsm6dsx_reg { i8 98, i8 16 }, %struct.anon.91 { i8 104, i8 6 } }, %struct.st_lsm6dsx_ext_dev_settings { [2 x i8] c"\1E\00", %struct.anon.89 { i8 15, i8 61 }, i32 0, %struct.st_lsm6dsx_odr_table_entry { %struct.st_lsm6dsx_reg { i8 32, i8 28 }, [8 x %struct.st_lsm6dsx_odr] [%struct.st_lsm6dsx_odr { i32 1000, i8 0 }, %struct.st_lsm6dsx_odr { i32 2000, i8 1 }, %struct.st_lsm6dsx_odr { i32 3000, i8 2 }, %struct.st_lsm6dsx_odr { i32 5000, i8 3 }, %struct.st_lsm6dsx_odr { i32 10000, i8 4 }, %struct.st_lsm6dsx_odr { i32 20000, i8 5 }, %struct.st_lsm6dsx_odr { i32 40000, i8 6 }, %struct.st_lsm6dsx_odr { i32 80000, i8 7 }], i32 8 }, %struct.st_lsm6dsx_fs_table_entry { %struct.st_lsm6dsx_reg { i8 33, i8 96 }, [4 x %struct.st_lsm6dsx_fs] [%struct.st_lsm6dsx_fs { i32 146, i8 0 }, %struct.st_lsm6dsx_fs { i32 292, i8 1 }, %struct.st_lsm6dsx_fs { i32 438, i8 2 }, %struct.st_lsm6dsx_fs { i32 584, i8 3 }], i32 4 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.anon.90 { %struct.st_lsm6dsx_reg { i8 34, i8 3 }, i8 2, i8 0 }, %struct.st_lsm6dsx_reg zeroinitializer, %struct.st_lsm6dsx_reg { i8 36, i8 64 }, %struct.anon.91 { i8 40, i8 6 } }], [88 x i8] zeroinitializer }, align 32
@st_lsm6dsx_ext_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @st_lsm6dsx_ext_attribute_group, ptr @st_lsm6dsx_shub_read_raw, ptr null, ptr null, ptr @st_lsm6dsx_shub_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_lsm6dsx_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@st_lsm6dsx_available_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s_magn\00", [24 x i8] zeroinitializer }, align 32
@st_lsm6dsx_ext_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @st_lsm6dsx_ext_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_lsm6dsx_ext_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_lsm6dsx_shub_sampling_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_lsm6dsx_shub_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%03d \00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in_scale_available\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%06u \00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"st_lsm6dsx_ext_dev_table\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 39, i32 49 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"st_lsm6dsx_ext_info\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 719, i32 30 }
@___asan_gen_.12 = private unnamed_addr constant [32 x i8] c"st_lsm6dsx_available_scan_masks\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [43 x i8] c"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 435, i32 43 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 776, i32 49 }
@___asan_gen_.18 = private unnamed_addr constant [31 x i8] c"st_lsm6dsx_ext_attribute_group\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 715, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"st_lsm6dsx_ext_attributes\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 709, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [32 x i8] c"iio_dev_attr_in_scale_available\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 706, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 681, i32 48 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 707, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [48 x i8] c"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 699, i32 48 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @st_lsm6dsx_ext_dev_table, ptr @st_lsm6dsx_ext_info, ptr @st_lsm6dsx_available_scan_masks, ptr @.str, ptr @st_lsm6dsx_ext_attribute_group, ptr @st_lsm6dsx_ext_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_scale_available, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_ext_dev_table to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_ext_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_available_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_ext_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_lsm6dsx_ext_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_shub_set_enable(ptr noundef %sensor, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %config.i = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %config.i) #4
  %0 = call ptr @memset(ptr %config.i, i32 0, i32 9)
  %hw1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %1 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw1.i, align 4
  %settings2.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %settings2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %settings2.i, align 4
  %enable_mask3.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %enable_mask3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_mask3.i, align 1
  %id.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 1
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 8
  %shl.i = shl nuw i32 1, %8
  %9 = trunc i32 %shl.i to i8
  %conv4.i = or i8 %6, %9
  %10 = xor i8 %9, -1
  %conv9.i = and i8 %6, %10
  %enable_mask.0.i = select i1 %enable, i8 %conv4.i, i8 %conv9.i
  %conv16.i = zext i8 %enable_mask.0.i to i32
  %addr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 9, i32 2
  %batch_en.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %4, i32 0, i32 13, i32 10
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 17, i32 2
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool11.not.i = icmp eq ptr %12, null
  br i1 %tobool11.not.i, label %entry.for.inc.i_crit_edge, label %if.end13.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end13.i:                                       ; preds = %entry
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %12, i32 0, i32 19
  %13 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i.i, align 8
  %id17.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id17.i, align 8
  %shl18.i = shl nuw i32 1, %16
  %and19.i = and i32 %shl18.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end13.i.for.inc.i_crit_edge, label %if.end22.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end22.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %ext_info.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %14, i32 0, i32 9
  %17 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ext_info.i, align 8
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %addr.i, align 8
  %shl26.i = shl i8 %20, 1
  %or27.i = or i8 %shl26.i, 1
  %21 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or27.i, ptr %config.i, align 1
  %out.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %18, i32 0, i32 9
  %22 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %out.i, align 2
  %arrayidx31.i = getelementptr inbounds [9 x i8], ptr %config.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx31.i, align 1
  %len.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %18, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %len.i, align 1
  %27 = and i8 %26, 7
  %28 = ptrtoint ptr %batch_en.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %batch_en.i, align 1
  %or3662.i = or i8 %27, %29
  %arrayidx39.i = getelementptr inbounds [9 x i8], ptr %config.i, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or3662.i, ptr %arrayidx39.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end22.i, %if.end13.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %j.1.i = phi i32 [ 3, %if.end22.i ], [ 0, %if.end13.i.for.inc.i_crit_edge ], [ 0, %entry.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 17, i32 3
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool11.not.1.i = icmp eq ptr %32, null
  br i1 %tobool11.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end13.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

if.end13.1.i:                                     ; preds = %for.inc.i
  %priv.i.1.i = getelementptr inbounds %struct.iio_dev, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %priv.i.1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv.i.1.i, align 8
  %id17.1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %id17.1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id17.1.i, align 8
  %shl18.1.i = shl nuw i32 1, %36
  %and19.1.i = and i32 %shl18.1.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.1.i)
  %tobool20.not.1.i = icmp eq i32 %and19.1.i, 0
  br i1 %tobool20.not.1.i, label %if.end13.1.i.for.inc.1.i_crit_edge, label %if.end22.1.i

if.end13.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

if.end22.1.i:                                     ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %ext_info.1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %34, i32 0, i32 9
  %37 = ptrtoint ptr %ext_info.1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_info.1.i, align 8
  %39 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %addr.i, align 8
  %shl26.1.i = shl i8 %40, 1
  %or27.1.i = or i8 %shl26.1.i, 1
  %arrayidx29.1.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %j.1.i
  %41 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %or27.1.i, ptr %arrayidx29.1.i, align 1
  %out.1.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %38, i32 0, i32 9
  %42 = ptrtoint ptr %out.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %out.1.i, align 2
  %add.1.i = add nuw nsw i32 %j.1.i, 1
  %arrayidx31.1.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %add.1.i
  %44 = ptrtoint ptr %arrayidx31.1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx31.1.i, align 1
  %len.1.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %38, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %len.1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len.1.i, align 1
  %47 = and i8 %46, 7
  %48 = ptrtoint ptr %batch_en.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %batch_en.i, align 1
  %or3662.1.i = or i8 %47, %49
  %add38.1.i = add nuw nsw i32 %j.1.i, 2
  %arrayidx39.1.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %add38.1.i
  %50 = ptrtoint ptr %arrayidx39.1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %or3662.1.i, ptr %arrayidx39.1.i, align 1
  %add40.1.i = add nuw nsw i32 %j.1.i, 3
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end22.1.i, %if.end13.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %j.1.1.i = phi i32 [ %add40.1.i, %if.end22.1.i ], [ %j.1.i, %if.end13.1.i.for.inc.1.i_crit_edge ], [ %j.1.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 17, i32 4
  %51 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool11.not.2.i = icmp eq ptr %52, null
  br i1 %tobool11.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end13.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

if.end13.2.i:                                     ; preds = %for.inc.1.i
  %priv.i.2.i = getelementptr inbounds %struct.iio_dev, ptr %52, i32 0, i32 19
  %53 = ptrtoint ptr %priv.i.2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i.2.i, align 8
  %id17.2.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %id17.2.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id17.2.i, align 8
  %shl18.2.i = shl nuw i32 1, %56
  %and19.2.i = and i32 %shl18.2.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.2.i)
  %tobool20.not.2.i = icmp eq i32 %and19.2.i, 0
  br i1 %tobool20.not.2.i, label %if.end13.2.i.for.inc.2.i_crit_edge, label %if.end22.2.i

if.end13.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2.i

if.end22.2.i:                                     ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %ext_info.2.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %54, i32 0, i32 9
  %57 = ptrtoint ptr %ext_info.2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ext_info.2.i, align 8
  %59 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %addr.i, align 8
  %shl26.2.i = shl i8 %60, 1
  %or27.2.i = or i8 %shl26.2.i, 1
  %arrayidx29.2.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %j.1.1.i
  %61 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %or27.2.i, ptr %arrayidx29.2.i, align 1
  %out.2.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %58, i32 0, i32 9
  %62 = ptrtoint ptr %out.2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %out.2.i, align 2
  %add.2.i = add nuw nsw i32 %j.1.1.i, 1
  %arrayidx31.2.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %add.2.i
  %64 = ptrtoint ptr %arrayidx31.2.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx31.2.i, align 1
  %len.2.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %58, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %len.2.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %len.2.i, align 1
  %67 = and i8 %66, 7
  %68 = ptrtoint ptr %batch_en.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %batch_en.i, align 1
  %or3662.2.i = or i8 %67, %69
  %add38.2.i = add nuw nsw i32 %j.1.1.i, 2
  %arrayidx39.2.i = getelementptr [9 x i8], ptr %config.i, i32 0, i32 %add38.2.i
  %70 = ptrtoint ptr %arrayidx39.2.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %or3662.2.i, ptr %arrayidx39.2.i, align 1
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end22.2.i, %if.end13.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %slv0_addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %4, i32 0, i32 13, i32 8
  %71 = ptrtoint ptr %slv0_addr.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %slv0_addr.i, align 1
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #4
  %call.i.i = tail call i32 @st_lsm6dsx_set_page(ptr noundef %2, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %st_lsm6dsx_shub_config_channels.exit.thread, label %st_lsm6dsx_shub_config_channels.exit

st_lsm6dsx_shub_config_channels.exit.thread:      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %config.i) #4
  br label %cleanup39

st_lsm6dsx_shub_config_channels.exit:             ; preds = %for.inc.2.i
  %add42.i = add i8 %72, 3
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %2, i32 0, i32 1
  %73 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %add42.i to i32
  %call1.i.i = call i32 @regmap_bulk_write(ptr noundef %74, i32 noundef %conv.i.i, ptr noundef nonnull %config.i, i32 noundef 9) #4
  %call2.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %2, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %config.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp = icmp slt i32 %call1.i.i, 0
  br i1 %cmp, label %st_lsm6dsx_shub_config_channels.exit.cleanup39_crit_edge, label %if.end

st_lsm6dsx_shub_config_channels.exit.cleanup39_crit_edge: ; preds = %st_lsm6dsx_shub_config_channels.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.end:                                           ; preds = %st_lsm6dsx_shub_config_channels.exit
  %ext_info = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 9
  %75 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ext_info, align 8
  br i1 %enable, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %slv_odr = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 9, i32 1
  %77 = ptrtoint ptr %slv_odr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %slv_odr, align 4
  %odr_len.i.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3, i32 2
  %79 = ptrtoint ptr %odr_len.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %odr_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp21.i.i = icmp sgt i32 %80, 0
  br i1 %cmp21.i.i, label %if.then3.for.body.i.i_crit_edge, label %if.then3.for.end.i.i_crit_edge

if.then3.for.end.i.i_crit_edge:                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

if.then3.for.body.i.i_crit_edge:                  ; preds = %if.then3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then3.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then3.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3, i32 1, i32 %i.022.i.i
  %81 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %78)
  %cmp3.i.i = icmp eq i32 %82, %78
  br i1 %cmp3.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %80
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup39_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.cleanup39_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.then3.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.then3.for.end.i.i_crit_edge ], [ %i.022.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i, i32 %80)
  %cmp6.i.i = icmp eq i32 %i.0.lcssa.i.i, %80
  br i1 %cmp6.i.i, label %for.end.i.i.cleanup39_crit_edge, label %st_lsm6dsx_shub_set_odr.exit

for.end.i.i.cleanup39_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

st_lsm6dsx_shub_set_odr.exit:                     ; preds = %for.end.i.i
  %val12.i.i = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3, i32 1, i32 %i.0.lcssa.i.i, i32 1
  %83 = ptrtoint ptr %val12.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %val12.i.i, align 4
  %odr_table.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3
  %85 = ptrtoint ptr %odr_table.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %odr_table.i, align 4
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3, i32 0, i32 1
  %87 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %mask.i, align 1
  %call4.i = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %sensor, i8 noundef zeroext %86, i8 noundef zeroext %88, i8 noundef zeroext %84) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp6 = icmp slt i32 %call4.i, 0
  br i1 %cmp6, label %st_lsm6dsx_shub_set_odr.exit.cleanup39_crit_edge, label %st_lsm6dsx_shub_set_odr.exit.if.end15_crit_edge

st_lsm6dsx_shub_set_odr.exit.if.end15_crit_edge:  ; preds = %st_lsm6dsx_shub_set_odr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

st_lsm6dsx_shub_set_odr.exit.cleanup39_crit_edge: ; preds = %st_lsm6dsx_shub_set_odr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.else:                                          ; preds = %if.end
  %odr_table = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3
  %89 = ptrtoint ptr %odr_table to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %odr_table, align 4
  %mask = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 3, i32 0, i32 1
  %91 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %mask, align 1
  %call11 = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %sensor, i8 noundef zeroext %90, i8 noundef zeroext %92, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else.cleanup39_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.else.cleanup39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %st_lsm6dsx_shub_set_odr.exit.if.end15_crit_edge
  %pwr_table = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 6
  %93 = ptrtoint ptr %pwr_table to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %pwr_table, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool18.not = icmp eq i8 %94, 0
  br i1 %tobool18.not, label %if.end15.if.end36_crit_edge, label %if.then19

if.end15.if.end36_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then19:                                        ; preds = %if.end15
  %on_val = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 6, i32 2
  %off_val = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 6, i32 1
  %cond.in.in = select i1 %enable, ptr %on_val, ptr %off_val
  %95 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %95)
  %cond.in64 = load i8, ptr %cond.in.in, align 1
  %mask30 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %76, i32 0, i32 6, i32 0, i32 1
  %96 = ptrtoint ptr %mask30 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %mask30, align 1
  %call31 = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %sensor, i8 noundef zeroext %94, i8 noundef zeroext %97, i8 noundef zeroext %cond.in64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then19.cleanup39_crit_edge, label %if.then19.if.end36_crit_edge

if.then19.if.end36_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then19.cleanup39_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup39

if.end36:                                         ; preds = %if.then19.if.end36_crit_edge, %if.end15.if.end36_crit_edge
  %call38 = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext %enable)
  br label %cleanup39

cleanup39:                                        ; preds = %if.end36, %if.then19.cleanup39_crit_edge, %if.else.cleanup39_crit_edge, %st_lsm6dsx_shub_set_odr.exit.cleanup39_crit_edge, %for.end.i.i.cleanup39_crit_edge, %for.inc.i.i.cleanup39_crit_edge, %st_lsm6dsx_shub_config_channels.exit.cleanup39_crit_edge, %st_lsm6dsx_shub_config_channels.exit.thread
  %retval.1 = phi i32 [ %call38, %if.end36 ], [ %call31, %if.then19.cleanup39_crit_edge ], [ %call1.i.i, %st_lsm6dsx_shub_config_channels.exit.cleanup39_crit_edge ], [ %call4.i, %st_lsm6dsx_shub_set_odr.exit.cleanup39_crit_edge ], [ %call11, %if.else.cleanup39_crit_edge ], [ %call.i.i, %st_lsm6dsx_shub_config_channels.exit.thread ], [ -22, %for.end.i.i.cleanup39_crit_edge ], [ -22, %for.inc.i.i.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %sensor, i8 noundef zeroext %addr, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %config.i = alloca [2 x i8], align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !31
  %call = call fastcc i32 @st_lsm6dsx_shub_read(ptr noundef %sensor, i8 noundef zeroext %addr, ptr noundef nonnull %data, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %conv = zext i8 %2 to i32
  %conv1 = zext i8 %mask to i32
  %neg = xor i32 %conv1, -1
  %and = and i32 %conv, %neg
  %conv2 = zext i8 %val to i32
  %3 = call i32 @llvm.cttz.i32(i32 %conv1, i1 false) #4, !range !32
  %shl = shl i32 %conv2, %3
  %and6 = and i32 %shl, %conv1
  %or = or i32 %and, %and6
  %conv7 = trunc i32 %or to i8
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %data, align 1
  %hw1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %5 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %config.i) #4
  %7 = getelementptr inbounds [2 x i8], ptr %config.i, i32 0, i32 1
  %settings.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 18
  %8 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %settings.i, align 4
  %wr_once.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %9, i32 0, i32 13, i32 4
  %10 = ptrtoint ptr %wr_once.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %wr_once.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.end.if.end16.i_crit_edge, label %if.then.i

if.end.if.end16.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

if.then.i:                                        ; preds = %if.end
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %9, i32 0, i32 13, i32 4, i32 1
  %12 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mask.i, align 1
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #4
  %call.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, label %st_lsm6dsx_shub_write_reg_with_mask.exit.i

if.then.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit.sink.split

st_lsm6dsx_shub_write_reg_with_mask.exit.i:       ; preds = %if.then.i
  %conv.i = zext i8 %13 to i32
  %14 = call i32 @llvm.cttz.i32(i32 %conv.i, i1 false) #4, !range !32
  %shl.i = shl nuw i32 1, %14
  %15 = trunc i32 %shl.i to i8
  %conv12.i = and i8 %13, %15
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %conv.i.i = zext i8 %11 to i32
  %conv2.i.i = zext i8 %conv12.i to i32
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %conv.i.i, i32 noundef %conv.i, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %call4.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %st_lsm6dsx_shub_write_reg_with_mask.exit.i.st_lsm6dsx_shub_write.exit_crit_edge, label %st_lsm6dsx_shub_write_reg_with_mask.exit.i.if.end16.i_crit_edge

st_lsm6dsx_shub_write_reg_with_mask.exit.i.if.end16.i_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg_with_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16.i

st_lsm6dsx_shub_write_reg_with_mask.exit.i.st_lsm6dsx_shub_write.exit_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg_with_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit

if.end16.i:                                       ; preds = %st_lsm6dsx_shub_write_reg_with_mask.exit.i.if.end16.i_crit_edge, %if.end.if.end16.i_crit_edge
  %slv0_addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %9, i32 0, i32 13, i32 8
  %18 = ptrtoint ptr %slv0_addr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slv0_addr.i, align 1
  %addr19.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %addr19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr19.i, align 8
  %shl21.i = shl i8 %21, 1
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %shl21.i, ptr %config.i, align 1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %addr, ptr %7, align 1
  %page_lock.i1.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %page_lock.i1.i, i32 noundef 0) #4
  %call.i2.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i3.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i3.i, label %if.end16.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, label %st_lsm6dsx_shub_write_reg.exit.i

if.end16.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge: ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit.sink.split

st_lsm6dsx_shub_write_reg.exit.i:                 ; preds = %if.end16.i
  %regmap.i4.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 1
  %24 = ptrtoint ptr %regmap.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i4.i, align 4
  %conv.i5.i = zext i8 %19 to i32
  %call1.i.i = call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef %conv.i5.i, ptr noundef nonnull %config.i, i32 noundef 2) #4
  %call2.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp30.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp30.i, label %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_write.exit_crit_edge, label %if.end33.i

st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_write.exit_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit

if.end33.i:                                       ; preds = %st_lsm6dsx_shub_write_reg.exit.i
  %dw_slv0_addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %9, i32 0, i32 13, i32 9
  %26 = ptrtoint ptr %dw_slv0_addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %dw_slv0_addr.i, align 1
  call void @mutex_lock_nested(ptr noundef %page_lock.i1.i, i32 noundef 0) #4
  %call.i9.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %cmp.i10.i = icmp slt i32 %call.i9.i, 0
  br i1 %cmp.i10.i, label %if.end33.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, label %st_lsm6dsx_shub_write_reg.exit17.i

if.end33.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit.sink.split

st_lsm6dsx_shub_write_reg.exit17.i:               ; preds = %if.end33.i
  %28 = ptrtoint ptr %regmap.i4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i4.i, align 4
  %conv.i12.i = zext i8 %27 to i32
  %call1.i13.i = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef %conv.i12.i, ptr noundef nonnull %data, i32 noundef 1) #4
  %call2.i14.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i1.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13.i)
  %cmp36.i = icmp slt i32 %call1.i13.i, 0
  br i1 %cmp36.i, label %st_lsm6dsx_shub_write_reg.exit17.i.st_lsm6dsx_shub_write.exit_crit_edge, label %if.end39.i

st_lsm6dsx_shub_write_reg.exit17.i.st_lsm6dsx_shub_write.exit_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg.exit17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit

if.end39.i:                                       ; preds = %st_lsm6dsx_shub_write_reg.exit17.i
  %call40.i = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.end39.i.st_lsm6dsx_shub_write.exit_crit_edge, label %if.end44.i

if.end39.i.st_lsm6dsx_shub_write.exit_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit

if.end44.i:                                       ; preds = %if.end39.i
  %enable_mask.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 8
  %30 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enable_mask.i.i, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i, label %if.end44.i.cond.true3.i.i_crit_edge, label %cond.end.i.i

if.end44.i.cond.true3.i.i_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i.i

cond.end.i.i:                                     ; preds = %if.end44.i
  %arrayidx.i.i = getelementptr %struct.st_lsm6dsx_hw, ptr %6, i32 0, i32 17, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %34, i32 0, i32 19
  %35 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %priv.i.i.i, align 8
  %odr1.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %odr1.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %odr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %38)
  %cmp.i18.i = icmp ult i32 %38, 200001
  br i1 %cmp.i18.i, label %cond.end.i.i.cond.true3.i.i_crit_edge, label %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge

cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_wait_complete.exit.i

cond.end.i.i.cond.true3.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i.i

cond.true3.i.i:                                   ; preds = %cond.end.i.i.cond.true3.i.i_crit_edge, %if.end44.i.cond.true3.i.i_crit_edge
  %cond12.i.i = phi i32 [ %38, %cond.end.i.i.cond.true3.i.i_crit_edge ], [ 12500, %if.end44.i.cond.true3.i.i_crit_edge ]
  %div.i.i = udiv i32 2000000, %cond12.i.i
  %add.i.i = add nuw nsw i32 %div.i.i, 1
  br label %st_lsm6dsx_shub_wait_complete.exit.i

st_lsm6dsx_shub_wait_complete.exit.i:             ; preds = %cond.true3.i.i, %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge
  %cond6.i.i = phi i32 [ %add.i.i, %cond.true3.i.i ], [ 10, %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge ]
  call void @msleep(i32 noundef %cond6.i.i) #4
  %call45.i = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext false) #4
  %pause.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %9, i32 0, i32 13, i32 11
  %39 = ptrtoint ptr %pause.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pause.i, align 1
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %config.i, align 1
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %7, align 1
  call void @mutex_lock_nested(ptr noundef %page_lock.i1.i, i32 noundef 0) #4
  %call.i20.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %cmp.i21.i = icmp slt i32 %call.i20.i, 0
  br i1 %cmp.i21.i, label %st_lsm6dsx_shub_wait_complete.exit.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, label %if.end.i26.i

st_lsm6dsx_shub_wait_complete.exit.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge: ; preds = %st_lsm6dsx_shub_wait_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write.exit.sink.split

if.end.i26.i:                                     ; preds = %st_lsm6dsx_shub_wait_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %regmap.i4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i4.i, align 4
  %call1.i24.i = call i32 @regmap_bulk_write(ptr noundef %44, i32 noundef %conv.i5.i, ptr noundef nonnull %config.i, i32 noundef 2) #4
  %call2.i25.i = call i32 @st_lsm6dsx_set_page(ptr noundef %6, i1 noundef zeroext false) #4
  br label %st_lsm6dsx_shub_write.exit.sink.split

st_lsm6dsx_shub_write.exit.sink.split:            ; preds = %if.end.i26.i, %st_lsm6dsx_shub_wait_complete.exit.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, %if.end33.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, %if.end16.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge, %if.then.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge
  %page_lock.i.i.sink = phi ptr [ %page_lock.i.i, %if.then.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %page_lock.i1.i, %if.end16.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %page_lock.i1.i, %if.end33.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %page_lock.i1.i, %if.end.i26.i ], [ %page_lock.i1.i, %st_lsm6dsx_shub_wait_complete.exit.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ]
  %retval.1.i.ph = phi i32 [ %call.i.i, %if.then.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %call.i2.i, %if.end16.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %call.i9.i, %if.end33.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ], [ %call1.i24.i, %if.end.i26.i ], [ %call.i20.i, %st_lsm6dsx_shub_wait_complete.exit.i.st_lsm6dsx_shub_write.exit.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %page_lock.i.i.sink) #4
  br label %st_lsm6dsx_shub_write.exit

st_lsm6dsx_shub_write.exit:                       ; preds = %st_lsm6dsx_shub_write.exit.sink.split, %if.end39.i.st_lsm6dsx_shub_write.exit_crit_edge, %st_lsm6dsx_shub_write_reg.exit17.i.st_lsm6dsx_shub_write.exit_crit_edge, %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_write.exit_crit_edge, %st_lsm6dsx_shub_write_reg_with_mask.exit.i.st_lsm6dsx_shub_write.exit_crit_edge
  %retval.1.i = phi i32 [ %call.i.i.i, %st_lsm6dsx_shub_write_reg_with_mask.exit.i.st_lsm6dsx_shub_write.exit_crit_edge ], [ %call1.i.i, %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_write.exit_crit_edge ], [ %call1.i13.i, %st_lsm6dsx_shub_write_reg.exit17.i.st_lsm6dsx_shub_write.exit_crit_edge ], [ %call40.i, %if.end39.i.st_lsm6dsx_shub_write.exit_crit_edge ], [ %retval.1.i.ph, %st_lsm6dsx_shub_write.exit.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %config.i) #4
  br label %cleanup

cleanup:                                          ; preds = %st_lsm6dsx_shub_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %st_lsm6dsx_shub_write.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %call = tail call i32 @st_lsm6dsx_sensor_set_enable(ptr noundef %sensor, i1 noundef zeroext %enable) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %page_lock = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock, i32 noundef 0) #4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %settings, align 4
  %master_en = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %master_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %master_en, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @st_lsm6dsx_set_page(ptr noundef %1, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then3.out_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %conv = zext i1 %enable to i32
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 13, i32 1, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  %conv11 = zext i8 %7 to i32
  %8 = tail call i32 @llvm.cttz.i32(i32 %conv11, i1 false) #4, !range !32
  %shl = shl nuw i32 %conv, %8
  %and = and i32 %shl, %conv11
  %regmap = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %addr = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %3, i32 0, i32 13, i32 1, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 1
  %conv17 = zext i8 %12 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %conv17, i32 noundef %conv11, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %13 = ptrtoint ptr %master_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %master_en, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not = icmp eq i8 %14, 0
  br i1 %tobool24.not, label %if.end8.out_crit_edge, label %if.then25

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then25:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = tail call i32 @st_lsm6dsx_set_page(ptr noundef %1, i1 noundef zeroext false) #4
  br label %out

out:                                              ; preds = %if.then25, %if.end8.out_crit_edge, %if.then3.out_crit_edge
  %err.0 = phi i32 [ %call4, %if.then3.out_crit_edge ], [ %call.i, %if.then25 ], [ %call.i, %if.end8.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %page_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_lsm6dsx_shub_probe(ptr noundef %hw, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %config.i = alloca [3 x i8], align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [3 x i8], ptr %config.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %config.i, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 1
  %settings1.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 18
  %page_lock.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 6
  %regmap.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 1
  %enable_mask.i.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %num_ext_dev.077 = phi i32 [ 0, %entry ], [ %num_ext_dev.1, %for.inc.for.body_crit_edge ]
  %i.075 = phi i32 [ 0, %entry ], [ %inc25, %for.inc.for.body_crit_edge ]
  %id.074 = phi i32 [ 2, %entry ], [ %id.1, %for.inc.for.body_crit_edge ]
  %i2c_addr.072 = phi i8 [ 0, %entry ], [ %i2c_addr.2, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %config.i) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i, align 1, !annotation !31
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  %7 = ptrtoint ptr %settings1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %settings1.i, align 4
  %aux_sens4.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %8, i32 0, i32 13, i32 3
  %slv0_addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %8, i32 0, i32 13, i32 8
  %9 = ptrtoint ptr %slv0_addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %slv0_addr.i, align 1
  %conv.i = zext i8 %10 to i32
  %add7.i = add nuw nsw i32 %conv.i, 2
  %11 = ptrtoint ptr %aux_sens4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aux_sens4.i, align 1
  %conv8.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %conv8.i)
  %cmp.i = icmp eq i32 %add7.i, %conv8.i
  br i1 %cmp.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %8, i32 0, i32 13, i32 3, i32 1
  %13 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mask.i, align 1
  %conv10.i = zext i8 %14 to i32
  %15 = call i32 @llvm.cttz.i32(i32 %conv10.i, i1 false) #4, !range !32
  %shl.i = shl i32 3, %15
  %16 = trunc i32 %shl.i to i8
  %conv14.i = and i8 %14, %16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %slv_config.0.i = phi i8 [ %conv14.i, %if.then.i ], [ 0, %for.body.if.end.i_crit_edge ]
  %wai.i = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075, i32 1
  %17 = or i8 %slv_config.0.i, 1
  %val.i = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.backedge, %if.end.i
  %cmp15.i = phi i1 [ true, %if.end.i ], [ false, %for.body.i.backedge ]
  %i.0132.i = phi i32 [ 0, %if.end.i ], [ 1, %for.body.i.backedge ]
  %arrayidx18.i = getelementptr [2 x i8], ptr %arrayidx, i32 0, i32 %i.0132.i
  %18 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end20.i

if.end20.i:                                       ; preds = %for.body.i
  %shl24.i = shl i8 %19, 1
  %or.i = or i8 %shl24.i, 1
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or.i, ptr %config.i, align 1
  %21 = ptrtoint ptr %wai.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wai.i, align 2
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %0, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %17, ptr %1, align 1
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #4
  %call.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %st_lsm6dsx_shub_write_reg.exit.thread.i, label %st_lsm6dsx_shub_write_reg.exit.i

st_lsm6dsx_shub_write_reg.exit.thread.i:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  br label %st_lsm6dsx_shub_check_wai.exit

st_lsm6dsx_shub_write_reg.exit.i:                 ; preds = %if.end20.i
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %call1.i.i = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %conv.i, ptr noundef nonnull %config.i, i32 noundef 3) #4
  %call2.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp34.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp34.i, label %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, label %if.end37.i

st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_check_wai.exit

if.end37.i:                                       ; preds = %st_lsm6dsx_shub_write_reg.exit.i
  %call38.i = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %6, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %cmp39.i = icmp slt i32 %call38.i, 0
  br i1 %cmp39.i, label %if.end37.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, label %if.end42.i

if.end37.i.st_lsm6dsx_shub_check_wai.exit_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_check_wai.exit

if.end42.i:                                       ; preds = %if.end37.i
  %27 = ptrtoint ptr %enable_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %enable_mask.i.i, align 1
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.end42.i.cond.true3.i.i_crit_edge, label %cond.end.i.i

if.end42.i.cond.true3.i.i_crit_edge:              ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i.i

cond.end.i.i:                                     ; preds = %if.end42.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %priv.i.i.i = getelementptr inbounds %struct.iio_dev, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv.i.i.i, align 8
  %odr1.i.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %odr1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %odr1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %35)
  %cmp.i106.i = icmp ult i32 %35, 200001
  br i1 %cmp.i106.i, label %cond.end.i.i.cond.true3.i.i_crit_edge, label %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge

cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_wait_complete.exit.i

cond.end.i.i.cond.true3.i.i_crit_edge:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i.i

cond.true3.i.i:                                   ; preds = %cond.end.i.i.cond.true3.i.i_crit_edge, %if.end42.i.cond.true3.i.i_crit_edge
  %cond12.i.i = phi i32 [ %35, %cond.end.i.i.cond.true3.i.i_crit_edge ], [ 12500, %if.end42.i.cond.true3.i.i_crit_edge ]
  %div.i.i = udiv i32 2000000, %cond12.i.i
  %add.i.i = add nuw nsw i32 %div.i.i, 1
  br label %st_lsm6dsx_shub_wait_complete.exit.i

st_lsm6dsx_shub_wait_complete.exit.i:             ; preds = %cond.true3.i.i, %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge
  %cond6.i.i = phi i32 [ %add.i.i, %cond.true3.i.i ], [ 10, %cond.end.i.i.st_lsm6dsx_shub_wait_complete.exit.i_crit_edge ]
  call void @msleep(i32 noundef %cond6.i.i) #4
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #4
  %36 = ptrtoint ptr %settings1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %settings1.i, align 4
  %shub_out.i.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %37, i32 0, i32 13, i32 7
  %38 = ptrtoint ptr %shub_out.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shub_out.i.i, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i108.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i108.i, label %st_lsm6dsx_shub_wait_complete.exit.i.if.end2.i.i_crit_edge, label %if.then.i.i

st_lsm6dsx_shub_wait_complete.exit.i.if.end2.i.i_crit_edge: ; preds = %st_lsm6dsx_shub_wait_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2.i.i

if.then.i.i:                                      ; preds = %st_lsm6dsx_shub_wait_complete.exit.i
  %call.i109.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %cmp.i110.i = icmp slt i32 %call.i109.i, 0
  br i1 %cmp.i110.i, label %if.then.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge, label %if.then.i.i.if.end2.i.i_crit_edge

if.then.i.i.if.end2.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2.i.i

if.then.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_output.exit.i

if.end2.i.i:                                      ; preds = %if.then.i.i.if.end2.i.i_crit_edge, %st_lsm6dsx_shub_wait_complete.exit.i.if.end2.i.i_crit_edge
  %40 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %37, i32 0, i32 13, i32 7, i32 1
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr.i.i, align 1
  %conv.i112.i = zext i8 %43 to i32
  %call4.i.i = call i32 @regmap_bulk_read(ptr noundef %41, i32 noundef %conv.i112.i, ptr noundef nonnull %data.i, i32 noundef 1) #4
  %44 = ptrtoint ptr %shub_out.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %shub_out.i.i, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool7.not.i.i = icmp eq i8 %45, 0
  br i1 %tobool7.not.i.i, label %if.end2.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge, label %if.then8.i.i

if.end2.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_output.exit.i

if.then8.i.i:                                     ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext false) #4
  br label %st_lsm6dsx_shub_read_output.exit.i

st_lsm6dsx_shub_read_output.exit.i:               ; preds = %if.then8.i.i, %if.end2.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge, %if.then.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge
  %err.0.i113.i = phi i32 [ %call.i109.i, %if.then.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge ], [ %call4.i.i, %if.then8.i.i ], [ %call4.i.i, %if.end2.i.i.st_lsm6dsx_shub_read_output.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  %call44.i = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %6, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i113.i)
  %cmp45.i = icmp slt i32 %err.0.i113.i, 0
  br i1 %cmp45.i, label %st_lsm6dsx_shub_read_output.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, label %if.end48.i

st_lsm6dsx_shub_read_output.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge: ; preds = %st_lsm6dsx_shub_read_output.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_check_wai.exit

if.end48.i:                                       ; preds = %st_lsm6dsx_shub_read_output.exit.i
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data.i, align 1
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %val.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %49)
  %cmp52.not.i = icmp eq i8 %47, %49
  %cmp15.i.not = xor i1 %cmp15.i, true
  %brmerge = or i1 %cmp52.not.i, %cmp15.i.not
  br i1 %brmerge, label %for.end.i.split.loop.exit, label %if.end48.i.for.body.i.backedge_crit_edge

if.end48.i.for.body.i.backedge_crit_edge:         ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.backedge

for.inc.i:                                        ; preds = %for.body.i
  br i1 %cmp15.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.for.body.i.backedge_crit_edge, %if.end48.i.for.body.i.backedge_crit_edge
  br label %for.body.i

for.end.i.split.loop.exit:                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  %.mux.le = select i1 %cmp52.not.i, i8 %19, i8 %i2c_addr.072
  %.mux65.le = select i1 %cmp52.not.i, i32 0, i32 -19
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.split.loop.exit, %for.inc.i.for.end.i_crit_edge
  %i2c_addr.1 = phi i8 [ %.mux.le, %for.end.i.split.loop.exit ], [ %i2c_addr.072, %for.inc.i.for.end.i_crit_edge ]
  %found.0.off0.i = phi i32 [ %.mux65.le, %for.end.i.split.loop.exit ], [ -19, %for.inc.i.for.end.i_crit_edge ]
  %pause.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %8, i32 0, i32 13, i32 11
  %50 = ptrtoint ptr %pause.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pause.i, align 1
  %52 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %config.i, align 1
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %0, align 1
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %slv_config.0.i, ptr %1, align 1
  call void @mutex_lock_nested(ptr noundef %page_lock.i.i, i32 noundef 0) #4
  %call.i115.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i)
  %cmp.i116.i = icmp slt i32 %call.i115.i, 0
  br i1 %cmp.i116.i, label %for.end.i.st_lsm6dsx_shub_write_reg.exit123.i_crit_edge, label %if.end.i121.i

for.end.i.st_lsm6dsx_shub_write_reg.exit123.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write_reg.exit123.i

if.end.i121.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i.i, align 4
  %call1.i119.i = call i32 @regmap_bulk_write(ptr noundef %56, i32 noundef %conv.i, ptr noundef nonnull %config.i, i32 noundef 3) #4
  %call2.i120.i = call i32 @st_lsm6dsx_set_page(ptr noundef %hw, i1 noundef zeroext false) #4
  br label %st_lsm6dsx_shub_write_reg.exit123.i

st_lsm6dsx_shub_write_reg.exit123.i:              ; preds = %if.end.i121.i, %for.end.i.st_lsm6dsx_shub_write_reg.exit123.i_crit_edge
  %err.0.i122.i = phi i32 [ %call.i115.i, %for.end.i.st_lsm6dsx_shub_write_reg.exit123.i_crit_edge ], [ %call1.i119.i, %if.end.i121.i ]
  call void @mutex_unlock(ptr noundef %page_lock.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i122.i)
  %cmp63.i = icmp slt i32 %err.0.i122.i, 0
  %call62.found.0.off0.i = select i1 %cmp63.i, i32 %err.0.i122.i, i32 %found.0.off0.i
  br label %st_lsm6dsx_shub_check_wai.exit

st_lsm6dsx_shub_check_wai.exit:                   ; preds = %st_lsm6dsx_shub_write_reg.exit123.i, %st_lsm6dsx_shub_read_output.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, %if.end37.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge, %st_lsm6dsx_shub_write_reg.exit.thread.i
  %i2c_addr.2 = phi i8 [ %i2c_addr.1, %st_lsm6dsx_shub_write_reg.exit123.i ], [ %i2c_addr.072, %st_lsm6dsx_shub_write_reg.exit.thread.i ], [ %i2c_addr.072, %st_lsm6dsx_shub_read_output.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ], [ %i2c_addr.072, %if.end37.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ], [ %i2c_addr.072, %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call62.found.0.off0.i, %st_lsm6dsx_shub_write_reg.exit123.i ], [ %call.i.i, %st_lsm6dsx_shub_write_reg.exit.thread.i ], [ %call1.i.i, %st_lsm6dsx_shub_write_reg.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ], [ %call38.i, %if.end37.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ], [ %err.0.i113.i, %st_lsm6dsx_shub_read_output.exit.i.st_lsm6dsx_shub_check_wai.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %config.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.i)
  %cmp1 = icmp eq i32 %retval.0.i, -19
  br i1 %cmp1, label %st_lsm6dsx_shub_check_wai.exit.for.inc_crit_edge, label %if.else

st_lsm6dsx_shub_check_wai.exit.for.inc_crit_edge: ; preds = %st_lsm6dsx_shub_check_wai.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.else:                                          ; preds = %st_lsm6dsx_shub_check_wai.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %if.else.cleanup_crit_edge, label %if.end4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.else
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 8
  %call.i = call ptr @devm_iio_device_alloc(ptr noundef %58, i32 noundef 80) #4
  %tobool.not.i47 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i47, label %if.end4.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge, label %if.end.i49

if.end4.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_alloc_iiodev.exit.thread

if.end.i49:                                       ; preds = %if.end4
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %call.i, align 8
  %info1.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 17
  %60 = ptrtoint ptr %info1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @st_lsm6dsx_ext_info, ptr %info1.i, align 8
  %priv.i.i48 = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 19
  %61 = ptrtoint ptr %priv.i.i48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %priv.i.i48, align 8
  %id3.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %id3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %id.074, ptr %id3.i, align 8
  %hw4.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 2
  %64 = ptrtoint ptr %hw4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %hw, ptr %hw4.i, align 4
  %65 = ptrtoint ptr %settings1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %settings1.i, align 4
  %odr_avl.i = getelementptr %struct.st_lsm6dsx_settings, ptr %66, i32 0, i32 7, i32 1, i32 1
  %67 = ptrtoint ptr %odr_avl.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %odr_avl.i, align 4
  %odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %odr.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %odr.i, align 4
  %odr_avl7.i = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075, i32 3, i32 1
  %70 = ptrtoint ptr %odr_avl7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %odr_avl7.i, align 4
  %ext_info.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 9
  %slv_odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 9, i32 1
  %72 = ptrtoint ptr %slv_odr.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %slv_odr.i, align 4
  %fs_avl.i = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075, i32 4, i32 1
  %73 = ptrtoint ptr %fs_avl.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fs_avl.i, align 4
  %gain11.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 3
  %75 = ptrtoint ptr %gain11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %gain11.i, align 8
  %76 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx, ptr %ext_info.i, align 8
  %addr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 9, i32 2
  %77 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %i2c_addr.2, ptr %addr.i, align 8
  %watermark.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %62, i32 0, i32 5
  %78 = ptrtoint ptr %watermark.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %watermark.i, align 8
  %79 = and i32 %i.075, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %sw.bb.i, label %if.end.i49.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge

if.end.i49.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge: ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_alloc_iiodev.exit.thread

sw.bb.i:                                          ; preds = %if.end.i49
  %out.i = getelementptr [2 x %struct.st_lsm6dsx_ext_dev_settings], ptr @st_lsm6dsx_ext_dev_table, i32 0, i32 %i.075, i32 9
  %81 = ptrtoint ptr %out.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %out.i, align 2
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 8
  %call.i.i50 = call noalias ptr @devm_kmalloc(ptr noundef %84, i32 noundef 352, i32 noundef 3520) #4
  %tobool149.not.i = icmp eq ptr %call.i.i50, null
  br i1 %tobool149.not.i, label %sw.bb.i.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge, label %if.end11

sw.bb.i.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_alloc_iiodev.exit.thread

st_lsm6dsx_shub_alloc_iiodev.exit.thread:         ; preds = %sw.bb.i.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge, %if.end.i49.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge, %if.end4.st_lsm6dsx_shub_alloc_iiodev.exit.thread_crit_edge
  %arrayidx761 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 %id.074
  %85 = ptrtoint ptr %arrayidx761 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %arrayidx761, align 4
  br label %cleanup

if.end11:                                         ; preds = %sw.bb.i
  %conv.i51 = zext i8 %82 to i32
  %add79.i = add nuw nsw i32 %conv.i51, 4
  %add.i = add nuw nsw i32 %conv.i51, 2
  %86 = ptrtoint ptr %call.i.i50 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %call.i.i50, align 4
  %magn_channels.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 4
  %87 = ptrtoint ptr %magn_channels.sroa.5.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %magn_channels.sroa.5.0..sroa_idx.i, align 4
  %magn_channels.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 8
  %88 = ptrtoint ptr %magn_channels.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %magn_channels.sroa.6.0..sroa_idx.i, align 4
  %magn_channels.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 12
  %89 = ptrtoint ptr %magn_channels.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv.i51, ptr %magn_channels.sroa.7.0..sroa_idx.i, align 4
  %magn_channels.sroa.8.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 16
  %90 = ptrtoint ptr %magn_channels.sroa.8.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %magn_channels.sroa.8.0..sroa_idx.i, align 4
  %magn_channels.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 20
  %91 = ptrtoint ptr %magn_channels.sroa.9.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 115, ptr %magn_channels.sroa.9.0..sroa_idx.i, align 4
  %magn_channels.sroa.10.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 21
  %92 = ptrtoint ptr %magn_channels.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %magn_channels.sroa.10.0..sroa_idx.i, align 1
  %magn_channels.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 22
  %93 = ptrtoint ptr %magn_channels.sroa.11.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 16, ptr %magn_channels.sroa.11.0..sroa_idx.i, align 2
  %magn_channels.sroa.12.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 23
  %94 = ptrtoint ptr %magn_channels.sroa.12.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %magn_channels.sroa.12.0..sroa_idx.i, align 1
  %magn_channels.sroa.13.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 24
  %95 = ptrtoint ptr %magn_channels.sroa.13.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 0, ptr %magn_channels.sroa.13.0..sroa_idx.i, align 4
  %magn_channels.sroa.14.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 25
  %96 = call ptr @memset(ptr %magn_channels.sroa.14.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.14163.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 28
  %97 = ptrtoint ptr %magn_channels.sroa.14163.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 2, ptr %magn_channels.sroa.14163.0..sroa_idx.i, align 4
  %magn_channels.sroa.15.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 32
  %98 = ptrtoint ptr %magn_channels.sroa.15.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %magn_channels.sroa.15.0..sroa_idx.i, align 4
  %magn_channels.sroa.16.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 36
  %99 = ptrtoint ptr %magn_channels.sroa.16.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %magn_channels.sroa.16.0..sroa_idx.i, align 4
  %magn_channels.sroa.17.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 40
  %100 = ptrtoint ptr %magn_channels.sroa.17.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 4, ptr %magn_channels.sroa.17.0..sroa_idx.i, align 4
  %magn_channels.sroa.18.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 44
  %101 = ptrtoint ptr %magn_channels.sroa.18.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %magn_channels.sroa.18.0..sroa_idx.i, align 4
  %magn_channels.sroa.19.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 48
  %102 = ptrtoint ptr %magn_channels.sroa.19.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %magn_channels.sroa.19.0..sroa_idx.i, align 4
  %magn_channels.sroa.20.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 52
  %103 = ptrtoint ptr %magn_channels.sroa.20.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %magn_channels.sroa.20.0..sroa_idx.i, align 4
  %magn_channels.sroa.21.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 56
  %104 = ptrtoint ptr %magn_channels.sroa.21.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 4096, ptr %magn_channels.sroa.21.0..sroa_idx.i, align 4
  %magn_channels.sroa.22.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 60
  %magn_channels.sroa.28.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 84
  %105 = call ptr @memset(ptr %magn_channels.sroa.22.0..sroa_idx.i, i32 0, i32 24)
  %106 = ptrtoint ptr %magn_channels.sroa.28.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 -113, ptr %magn_channels.sroa.28.0..sroa_idx.i, align 4
  %magn_channels.sroa.36.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 85
  %107 = call ptr @memset(ptr %magn_channels.sroa.36.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.36164.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 88
  %108 = ptrtoint ptr %magn_channels.sroa.36164.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 5, ptr %magn_channels.sroa.36164.0..sroa_idx.i, align 4
  %magn_channels.sroa.37.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 92
  %109 = ptrtoint ptr %magn_channels.sroa.37.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %magn_channels.sroa.37.0..sroa_idx.i, align 4
  %magn_channels.sroa.38.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 96
  %110 = ptrtoint ptr %magn_channels.sroa.38.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %magn_channels.sroa.38.0..sroa_idx.i, align 4
  %magn_channels.sroa.39.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 100
  %111 = ptrtoint ptr %magn_channels.sroa.39.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %add.i, ptr %magn_channels.sroa.39.0..sroa_idx.i, align 4
  %magn_channels.sroa.40.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 104
  %112 = ptrtoint ptr %magn_channels.sroa.40.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %magn_channels.sroa.40.0..sroa_idx.i, align 4
  %magn_channels.sroa.41.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 108
  %113 = ptrtoint ptr %magn_channels.sroa.41.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 115, ptr %magn_channels.sroa.41.0..sroa_idx.i, align 4
  %magn_channels.sroa.42.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 109
  %114 = ptrtoint ptr %magn_channels.sroa.42.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 16, ptr %magn_channels.sroa.42.0..sroa_idx.i, align 1
  %magn_channels.sroa.43.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 110
  %115 = ptrtoint ptr %magn_channels.sroa.43.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 16, ptr %magn_channels.sroa.43.0..sroa_idx.i, align 2
  %magn_channels.sroa.44.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 111
  %116 = ptrtoint ptr %magn_channels.sroa.44.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %magn_channels.sroa.44.0..sroa_idx.i, align 1
  %magn_channels.sroa.45.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 112
  %117 = ptrtoint ptr %magn_channels.sroa.45.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %magn_channels.sroa.45.0..sroa_idx.i, align 4
  %magn_channels.sroa.46.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 113
  %118 = call ptr @memset(ptr %magn_channels.sroa.46.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.46165.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 116
  %119 = ptrtoint ptr %magn_channels.sroa.46165.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 2, ptr %magn_channels.sroa.46165.0..sroa_idx.i, align 4
  %magn_channels.sroa.47.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 120
  %120 = ptrtoint ptr %magn_channels.sroa.47.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 1, ptr %magn_channels.sroa.47.0..sroa_idx.i, align 4
  %magn_channels.sroa.48.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 124
  %121 = ptrtoint ptr %magn_channels.sroa.48.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %magn_channels.sroa.48.0..sroa_idx.i, align 4
  %magn_channels.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 128
  %122 = ptrtoint ptr %magn_channels.sroa.49.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %magn_channels.sroa.49.0..sroa_idx.i, align 4
  %magn_channels.sroa.50.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 132
  %123 = ptrtoint ptr %magn_channels.sroa.50.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %magn_channels.sroa.50.0..sroa_idx.i, align 4
  %magn_channels.sroa.51.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 136
  %124 = ptrtoint ptr %magn_channels.sroa.51.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %magn_channels.sroa.51.0..sroa_idx.i, align 4
  %magn_channels.sroa.52.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 140
  %125 = ptrtoint ptr %magn_channels.sroa.52.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %magn_channels.sroa.52.0..sroa_idx.i, align 4
  %magn_channels.sroa.53.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 144
  %126 = ptrtoint ptr %magn_channels.sroa.53.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 4096, ptr %magn_channels.sroa.53.0..sroa_idx.i, align 4
  %magn_channels.sroa.54.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 148
  %magn_channels.sroa.60.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 172
  %127 = call ptr @memset(ptr %magn_channels.sroa.54.0..sroa_idx.i, i32 0, i32 24)
  %128 = ptrtoint ptr %magn_channels.sroa.60.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 -113, ptr %magn_channels.sroa.60.0..sroa_idx.i, align 4
  %magn_channels.sroa.68.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 173
  %129 = call ptr @memset(ptr %magn_channels.sroa.68.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.68166.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 176
  %130 = ptrtoint ptr %magn_channels.sroa.68166.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 5, ptr %magn_channels.sroa.68166.0..sroa_idx.i, align 4
  %magn_channels.sroa.69.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 180
  %131 = ptrtoint ptr %magn_channels.sroa.69.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %magn_channels.sroa.69.0..sroa_idx.i, align 4
  %magn_channels.sroa.70.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 184
  %132 = ptrtoint ptr %magn_channels.sroa.70.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 3, ptr %magn_channels.sroa.70.0..sroa_idx.i, align 4
  %magn_channels.sroa.71.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 188
  %133 = ptrtoint ptr %magn_channels.sroa.71.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add79.i, ptr %magn_channels.sroa.71.0..sroa_idx.i, align 4
  %magn_channels.sroa.72.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 192
  %134 = ptrtoint ptr %magn_channels.sroa.72.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2, ptr %magn_channels.sroa.72.0..sroa_idx.i, align 4
  %magn_channels.sroa.73.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 196
  %135 = ptrtoint ptr %magn_channels.sroa.73.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 115, ptr %magn_channels.sroa.73.0..sroa_idx.i, align 4
  %magn_channels.sroa.74.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 197
  %136 = ptrtoint ptr %magn_channels.sroa.74.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 16, ptr %magn_channels.sroa.74.0..sroa_idx.i, align 1
  %magn_channels.sroa.75.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 198
  %137 = ptrtoint ptr %magn_channels.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 16, ptr %magn_channels.sroa.75.0..sroa_idx.i, align 2
  %magn_channels.sroa.76.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 199
  %138 = ptrtoint ptr %magn_channels.sroa.76.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 0, ptr %magn_channels.sroa.76.0..sroa_idx.i, align 1
  %magn_channels.sroa.77.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 200
  %139 = ptrtoint ptr %magn_channels.sroa.77.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %magn_channels.sroa.77.0..sroa_idx.i, align 4
  %magn_channels.sroa.78.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 201
  %140 = call ptr @memset(ptr %magn_channels.sroa.78.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.78167.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 204
  %141 = ptrtoint ptr %magn_channels.sroa.78167.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 2, ptr %magn_channels.sroa.78167.0..sroa_idx.i, align 4
  %magn_channels.sroa.79.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 208
  %142 = ptrtoint ptr %magn_channels.sroa.79.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %magn_channels.sroa.79.0..sroa_idx.i, align 4
  %magn_channels.sroa.80.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 212
  %143 = ptrtoint ptr %magn_channels.sroa.80.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %magn_channels.sroa.80.0..sroa_idx.i, align 4
  %magn_channels.sroa.81.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 216
  %144 = ptrtoint ptr %magn_channels.sroa.81.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 4, ptr %magn_channels.sroa.81.0..sroa_idx.i, align 4
  %magn_channels.sroa.82.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 220
  %145 = ptrtoint ptr %magn_channels.sroa.82.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %magn_channels.sroa.82.0..sroa_idx.i, align 4
  %magn_channels.sroa.83.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 224
  %146 = ptrtoint ptr %magn_channels.sroa.83.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %magn_channels.sroa.83.0..sroa_idx.i, align 4
  %magn_channels.sroa.84.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 228
  %147 = ptrtoint ptr %magn_channels.sroa.84.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 0, ptr %magn_channels.sroa.84.0..sroa_idx.i, align 4
  %magn_channels.sroa.85.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 232
  %148 = ptrtoint ptr %magn_channels.sroa.85.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 4096, ptr %magn_channels.sroa.85.0..sroa_idx.i, align 4
  %magn_channels.sroa.86.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 236
  %magn_channels.sroa.92.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 260
  %149 = call ptr @memset(ptr %magn_channels.sroa.86.0..sroa_idx.i, i32 0, i32 24)
  %150 = ptrtoint ptr %magn_channels.sroa.92.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 -113, ptr %magn_channels.sroa.92.0..sroa_idx.i, align 4
  %magn_channels.sroa.100.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 261
  %151 = call ptr @memset(ptr %magn_channels.sroa.100.0..sroa_idx.i, i32 255, i32 3)
  %magn_channels.sroa.100168.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 264
  %152 = ptrtoint ptr %magn_channels.sroa.100168.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 13, ptr %magn_channels.sroa.100168.0..sroa_idx.i, align 4
  %magn_channels.sroa.102.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 268
  %153 = ptrtoint ptr %magn_channels.sroa.102.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %magn_channels.sroa.102.0..sroa_idx.i, align 4
  %magn_channels.sroa.103.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 272
  %154 = ptrtoint ptr %magn_channels.sroa.103.0..sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %154, i32 8)
  store i64 0, ptr %magn_channels.sroa.103.0..sroa_idx.i, align 4
  %magn_channels.sroa.103169.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 280
  %155 = ptrtoint ptr %magn_channels.sroa.103169.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 3, ptr %magn_channels.sroa.103169.0..sroa_idx.i, align 4
  %magn_channels.sroa.104.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 284
  %156 = ptrtoint ptr %magn_channels.sroa.104.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 115, ptr %magn_channels.sroa.104.0..sroa_idx.i, align 4
  %magn_channels.sroa.105.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 285
  %157 = ptrtoint ptr %magn_channels.sroa.105.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 64, ptr %magn_channels.sroa.105.0..sroa_idx.i, align 1
  %magn_channels.sroa.106.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 286
  %158 = ptrtoint ptr %magn_channels.sroa.106.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 64, ptr %magn_channels.sroa.106.0..sroa_idx.i, align 2
  %magn_channels.sroa.107.0..sroa_idx.i = getelementptr inbounds i8, ptr %call.i.i50, i32 287
  %159 = call ptr @memset(ptr %magn_channels.sroa.107.0..sroa_idx.i, i32 0, i32 65)
  %available_scan_masks.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 6
  %160 = ptrtoint ptr %available_scan_masks.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @st_lsm6dsx_available_scan_masks, ptr %available_scan_masks.i, align 4
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 13
  %161 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call.i.i50, ptr %channels.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 14
  %162 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 4, ptr %num_channels.i, align 4
  %call154.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %62, i32 noundef 32, ptr noundef nonnull @.str, ptr noundef %name) #4
  %name157.i = getelementptr inbounds %struct.iio_dev, ptr %call.i, i32 0, i32 15
  %163 = ptrtoint ptr %name157.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %62, ptr %name157.i, align 8
  %arrayidx7 = getelementptr %struct.st_lsm6dsx_hw, ptr %hw, i32 0, i32 17, i32 %id.074
  %164 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %call.i, ptr %arrayidx7, align 4
  %165 = ptrtoint ptr %priv.i.i48 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %priv.i.i48, align 8
  %ext_info.i52 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %166, i32 0, i32 9
  %167 = ptrtoint ptr %ext_info.i52 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ext_info.i52, align 8
  %bdu.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 8
  %169 = ptrtoint ptr %bdu.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bdu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i53 = icmp eq i8 %170, 0
  br i1 %tobool.not.i53, label %if.end11.if.end6.i_crit_edge, label %if.then.i57

if.end11.if.end6.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then.i57:                                      ; preds = %if.end11
  %mask.i54 = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 8, i32 1
  %171 = ptrtoint ptr %mask.i54 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %mask.i54, align 1
  %call.i55 = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %166, i8 noundef zeroext %170, i8 noundef zeroext %172, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp.i56, label %if.then.i57.cleanup_crit_edge, label %if.then.i57.if.end6.i_crit_edge

if.then.i57.if.end6.i_crit_edge:                  ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6.i

if.then.i57.cleanup_crit_edge:                    ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6.i:                                        ; preds = %if.then.i57.if.end6.i_crit_edge, %if.end11.if.end6.i_crit_edge
  %temp_comp.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 5
  %173 = ptrtoint ptr %temp_comp.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %temp_comp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool8.not.i = icmp eq i8 %174, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end18.i_crit_edge, label %if.then9.i

if.end6.i.if.end18.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then9.i:                                       ; preds = %if.end6.i
  %mask13.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 5, i32 1
  %175 = ptrtoint ptr %mask13.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %mask13.i, align 1
  %call14.i = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %166, i8 noundef zeroext %174, i8 noundef zeroext %176, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i58 = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i58, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.end18.i_crit_edge

if.then9.i.if.end18.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18.i:                                       ; preds = %if.then9.i.if.end18.i_crit_edge, %if.end6.i.if.end18.i_crit_edge
  %off_canc.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 7
  %177 = ptrtoint ptr %off_canc.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %off_canc.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool20.not.i = icmp eq i8 %178, 0
  br i1 %tobool20.not.i, label %if.end18.i.if.end18_crit_edge, label %if.then21.i

if.end18.i.if.end18_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then21.i:                                      ; preds = %if.end18.i
  %mask25.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %168, i32 0, i32 7, i32 1
  %179 = ptrtoint ptr %mask25.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %mask25.i, align 1
  %call26.i = call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %166, i8 noundef zeroext %178, i8 noundef zeroext %180, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.then21.i.cleanup_crit_edge, label %if.then21.i.if.end18_crit_edge

if.then21.i.if.end18_crit_edge:                   ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.then21.i.if.end18_crit_edge, %if.end18.i.if.end18_crit_edge
  %inc = add i32 %num_ext_dev.077, 1
  %181 = ptrtoint ptr %settings1.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %settings1.i, align 4
  %num_ext_dev19 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %182, i32 0, i32 13, i32 6
  %183 = ptrtoint ptr %num_ext_dev19 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %num_ext_dev19, align 1
  %conv = zext i8 %184 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp20.not = icmp slt i32 %inc, %conv
  br i1 %cmp20.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %inc24 = add i32 %id.074, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %st_lsm6dsx_shub_check_wai.exit.for.inc_crit_edge
  %id.1 = phi i32 [ %id.074, %st_lsm6dsx_shub_check_wai.exit.for.inc_crit_edge ], [ %inc24, %if.end23 ]
  %num_ext_dev.1 = phi i32 [ %num_ext_dev.077, %st_lsm6dsx_shub_check_wai.exit.for.inc_crit_edge ], [ %inc, %if.end23 ]
  %inc25 = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc25, 2
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.then9.i.cleanup_crit_edge, %if.then.i57.cleanup_crit_edge, %st_lsm6dsx_shub_alloc_iiodev.exit.thread, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %st_lsm6dsx_shub_alloc_iiodev.exit.thread ], [ %call.i55, %if.then.i57.cleanup_crit_edge ], [ %call14.i, %if.then9.i.cleanup_crit_edge ], [ %call26.i, %if.then21.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %retval.0.i, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_set_page(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @st_lsm6dsx_shub_read(ptr noundef %sensor, i8 noundef zeroext %addr, ptr noundef %data, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %config = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %config) #4
  %0 = getelementptr inbounds [3 x i8], ptr %config, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %config, i32 0, i32 2
  %hw1 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 2
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %settings = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %settings, align 4
  %slv0_addr = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 13, i32 8
  %6 = ptrtoint ptr %slv0_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %slv0_addr, align 1
  %conv = zext i8 %7 to i32
  %aux_sens5 = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 13, i32 3
  %add7 = add nuw nsw i32 %conv, 2
  %8 = ptrtoint ptr %aux_sens5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aux_sens5, align 1
  %conv9 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add7, i32 %conv9)
  %cmp = icmp eq i32 %add7, %conv9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mask = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 13, i32 3, i32 1
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask, align 1
  %conv11 = zext i8 %11 to i32
  %12 = tail call i32 @llvm.cttz.i32(i32 %conv11, i1 false) #4, !range !32
  %shl = shl i32 3, %12
  %13 = trunc i32 %shl to i8
  %conv14 = and i8 %11, %13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %slv_config.0 = phi i8 [ %conv14, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %addr15 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %sensor, i32 0, i32 9, i32 2
  %14 = ptrtoint ptr %addr15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr15, align 8
  %shl17 = shl i8 %15, 1
  %or = or i8 %shl17, 1
  %16 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or, ptr %config, align 1
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %addr, ptr %0, align 1
  %and20 = and i32 %len, 7
  %18 = trunc i32 %and20 to i8
  %conv23 = or i8 %slv_config.0, %18
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23, ptr %1, align 1
  %page_lock.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #4
  %call.i = tail call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %st_lsm6dsx_shub_write_reg.exit.thread, label %st_lsm6dsx_shub_write_reg.exit

st_lsm6dsx_shub_write_reg.exit.thread:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef %page_lock.i) #4
  br label %cleanup

st_lsm6dsx_shub_write_reg.exit:                   ; preds = %if.end
  %regmap.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef %conv, ptr noundef nonnull %config, i32 noundef 3) #4
  %call2.i = call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext false) #4
  call void @mutex_unlock(ptr noundef %page_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp26 = icmp slt i32 %call1.i, 0
  br i1 %cmp26, label %st_lsm6dsx_shub_write_reg.exit.cleanup_crit_edge, label %if.end29

st_lsm6dsx_shub_write_reg.exit.cleanup_crit_edge: ; preds = %st_lsm6dsx_shub_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %st_lsm6dsx_shub_write_reg.exit
  %call30 = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %enable_mask.i = getelementptr inbounds %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %enable_mask.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %enable_mask.i, align 1
  %24 = and i8 %23, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end34.cond.true3.i_crit_edge, label %cond.end.i

if.end34.cond.true3.i_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i

cond.end.i:                                       ; preds = %if.end34
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_hw, ptr %3, i32 0, i32 17, i32 1
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %26, i32 0, i32 19
  %27 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv.i.i, align 8
  %odr1.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %odr1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %odr1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200001, i32 %30)
  %cmp.i73 = icmp ult i32 %30, 200001
  br i1 %cmp.i73, label %cond.end.i.cond.true3.i_crit_edge, label %cond.end.i.st_lsm6dsx_shub_wait_complete.exit_crit_edge

cond.end.i.st_lsm6dsx_shub_wait_complete.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_wait_complete.exit

cond.end.i.cond.true3.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.true3.i

cond.true3.i:                                     ; preds = %cond.end.i.cond.true3.i_crit_edge, %if.end34.cond.true3.i_crit_edge
  %cond12.i = phi i32 [ %30, %cond.end.i.cond.true3.i_crit_edge ], [ 12500, %if.end34.cond.true3.i_crit_edge ]
  %div.i = udiv i32 2000000, %cond12.i
  %add.i = add nuw nsw i32 %div.i, 1
  br label %st_lsm6dsx_shub_wait_complete.exit

st_lsm6dsx_shub_wait_complete.exit:               ; preds = %cond.true3.i, %cond.end.i.st_lsm6dsx_shub_wait_complete.exit_crit_edge
  %cond6.i = phi i32 [ %add.i, %cond.true3.i ], [ 10, %cond.end.i.st_lsm6dsx_shub_wait_complete.exit_crit_edge ]
  call void @msleep(i32 noundef %cond6.i) #4
  call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #4
  %31 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %settings, align 4
  %shub_out.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %32, i32 0, i32 13, i32 7
  %33 = ptrtoint ptr %shub_out.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shub_out.i, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i75 = icmp eq i8 %34, 0
  br i1 %tobool.not.i75, label %st_lsm6dsx_shub_wait_complete.exit.if.end2.i_crit_edge, label %if.then.i

st_lsm6dsx_shub_wait_complete.exit.if.end2.i_crit_edge: ; preds = %st_lsm6dsx_shub_wait_complete.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2.i

if.then.i:                                        ; preds = %st_lsm6dsx_shub_wait_complete.exit
  %call.i76 = call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp slt i32 %call.i76, 0
  br i1 %cmp.i77, label %st_lsm6dsx_shub_read_output.exit.thread, label %if.then.i.if.end2.i_crit_edge

if.then.i.if.end2.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end2.i

st_lsm6dsx_shub_read_output.exit.thread:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %page_lock.i) #4
  br label %cleanup

if.end2.i:                                        ; preds = %if.then.i.if.end2.i_crit_edge, %st_lsm6dsx_shub_wait_complete.exit.if.end2.i_crit_edge
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %addr.i = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %32, i32 0, i32 13, i32 7, i32 1
  %37 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %addr.i, align 1
  %conv.i79 = zext i8 %38 to i32
  %call4.i = call i32 @regmap_bulk_read(ptr noundef %36, i32 noundef %conv.i79, ptr noundef %data, i32 noundef %and20) #4
  %39 = ptrtoint ptr %shub_out.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %shub_out.i, align 1, !range !33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool7.not.i = icmp eq i8 %40, 0
  br i1 %tobool7.not.i, label %if.end2.i.st_lsm6dsx_shub_read_output.exit_crit_edge, label %if.then8.i

if.end2.i.st_lsm6dsx_shub_read_output.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_output.exit

if.then8.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext false) #4
  br label %st_lsm6dsx_shub_read_output.exit

st_lsm6dsx_shub_read_output.exit:                 ; preds = %if.then8.i, %if.end2.i.st_lsm6dsx_shub_read_output.exit_crit_edge
  call void @mutex_unlock(ptr noundef %page_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp37 = icmp slt i32 %call4.i, 0
  br i1 %cmp37, label %st_lsm6dsx_shub_read_output.exit.cleanup_crit_edge, label %if.end40

st_lsm6dsx_shub_read_output.exit.cleanup_crit_edge: ; preds = %st_lsm6dsx_shub_read_output.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %st_lsm6dsx_shub_read_output.exit
  %call41 = call fastcc i32 @st_lsm6dsx_shub_master_enable(ptr noundef %sensor, i1 noundef zeroext false)
  %pause = getelementptr inbounds %struct.st_lsm6dsx_settings, ptr %5, i32 0, i32 13, i32 11
  %41 = ptrtoint ptr %pause to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pause, align 1
  %43 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %config, align 1
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %0, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %slv_config.0, ptr %1, align 1
  call void @mutex_lock_nested(ptr noundef %page_lock.i, i32 noundef 0) #4
  %call.i82 = call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp.i83 = icmp slt i32 %call.i82, 0
  br i1 %cmp.i83, label %if.end40.st_lsm6dsx_shub_write_reg.exit90_crit_edge, label %if.end.i88

if.end40.st_lsm6dsx_shub_write_reg.exit90_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_write_reg.exit90

if.end.i88:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call1.i86 = call i32 @regmap_bulk_write(ptr noundef %47, i32 noundef %conv, ptr noundef nonnull %config, i32 noundef 3) #4
  %call2.i87 = call i32 @st_lsm6dsx_set_page(ptr noundef %3, i1 noundef zeroext false) #4
  br label %st_lsm6dsx_shub_write_reg.exit90

st_lsm6dsx_shub_write_reg.exit90:                 ; preds = %if.end.i88, %if.end40.st_lsm6dsx_shub_write_reg.exit90_crit_edge
  %err.0.i89 = phi i32 [ %call.i82, %if.end40.st_lsm6dsx_shub_write_reg.exit90_crit_edge ], [ %call1.i86, %if.end.i88 ]
  call void @mutex_unlock(ptr noundef %page_lock.i) #4
  br label %cleanup

cleanup:                                          ; preds = %st_lsm6dsx_shub_write_reg.exit90, %st_lsm6dsx_shub_read_output.exit.cleanup_crit_edge, %st_lsm6dsx_shub_read_output.exit.thread, %if.end29.cleanup_crit_edge, %st_lsm6dsx_shub_write_reg.exit.cleanup_crit_edge, %st_lsm6dsx_shub_write_reg.exit.thread
  %retval.0 = phi i32 [ %err.0.i89, %st_lsm6dsx_shub_write_reg.exit90 ], [ %call1.i, %st_lsm6dsx_shub_write_reg.exit.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call4.i, %st_lsm6dsx_shub_read_output.exit.cleanup_crit_edge ], [ %call.i, %st_lsm6dsx_shub_write_reg.exit.thread ], [ %call.i76, %st_lsm6dsx_shub_read_output.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %config) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_sensor_set_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_shub_read_raw(ptr noundef %iio_dev, ptr nocapture noundef readonly %ch, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %data.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 12, label %sw.bb3
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data.i, align 4
  %call.i = tail call i32 @st_lsm6dsx_shub_set_enable(ptr noundef %1, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, label %if.end.i

if.end.st_lsm6dsx_shub_read_oneshot.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_oneshot.exit

if.end.i:                                         ; preds = %if.end
  %slv_odr.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %slv_odr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slv_odr.i, align 4
  %div.i = udiv i32 1000000000, %5
  %mul.i = shl nuw nsw i32 %div.i, 1
  tail call void @usleep_range_state(i32 noundef %div.i, i32 noundef %mul.i, i32 noundef 2) #4
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %realbits.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 39, i8 %7)
  %cmp1.i = icmp ugt i8 %7, 39
  %8 = lshr i8 %7, 3
  %narrow.i = select i1 %cmp1.i, i8 4, i8 %8
  %cond.i = zext i8 %narrow.i to i32
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %ch, i32 0, i32 3
  %9 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address.i, align 4
  %conv3.i = trunc i32 %10 to i8
  %call4.i = call fastcc i32 @st_lsm6dsx_shub_read(ptr noundef %1, i8 noundef zeroext %conv3.i, ptr noundef nonnull %data.i, i32 noundef %cond.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, label %if.end8.i

if.end.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_oneshot.exit

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = call i32 @st_lsm6dsx_shub_set_enable(ptr noundef %1, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, label %if.end13.i

if.end8.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_oneshot.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow.i)
  %cond19.i = icmp eq i8 %narrow.i, 2
  br i1 %cond19.i, label %sw.bb.i, label %if.end13.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge

if.end13.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st_lsm6dsx_shub_read_oneshot.exit

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data.i, align 4
  %13 = call i16 @llvm.bswap.i16(i16 %12) #4
  %conv15.i = sext i16 %13 to i32
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15.i, ptr %val, align 4
  br label %st_lsm6dsx_shub_read_oneshot.exit

st_lsm6dsx_shub_read_oneshot.exit:                ; preds = %sw.bb.i, %if.end13.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, %if.end8.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, %if.end.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge, %if.end.st_lsm6dsx_shub_read_oneshot.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %sw.bb.i ], [ %call.i, %if.end.st_lsm6dsx_shub_read_oneshot.exit_crit_edge ], [ %call4.i, %if.end.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge ], [ %call9.i, %if.end8.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge ], [ -22, %if.end13.i.st_lsm6dsx_shub_read_oneshot.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %slv_odr = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %slv_odr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slv_odr, align 4
  %div = udiv i32 %16, 1000
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div, ptr %val, align 4
  %18 = load i32, ptr %slv_odr, align 4
  %rem = urem i32 %18, 1000
  %mul = mul nuw nsw i32 %rem, 1000
  %19 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %val2, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %val, align 4
  %gain = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gain, align 8
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %st_lsm6dsx_shub_read_oneshot.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb6 ], [ 2, %sw.bb3 ], [ %call1, %sw.bb.sw.epilog_crit_edge ], [ %retval.0.i, %st_lsm6dsx_shub_read_oneshot.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_shub_write_raw(ptr noundef %iio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  %odr_val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %iio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup19_crit_edge

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup19

if.end:                                           ; preds = %entry
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %mask, label %if.end.release_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb17
  ]

if.end.release_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

sw.bb:                                            ; preds = %if.end
  %mul = mul i32 %val, 1000
  %div = sdiv i32 %val2, 1000
  %add = add i32 %div, %mul
  %ext_info.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ext_info.i, align 8
  %odr_len.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %4, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %odr_len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %odr_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.i = icmp sgt i32 %6, 0
  br i1 %cmp21.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.for.end.i_crit_edge

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %4, i32 0, i32 3, i32 1, i32 %i.022.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %add)
  %cmp3.i = icmp eq i32 %8, %add
  br i1 %cmp3.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.release_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.release_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %sw.bb.for.end.i_crit_edge ], [ %i.022.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %6)
  %cmp6.i = icmp eq i32 %i.0.lcssa.i, %6
  br i1 %cmp6.i, label %for.end.i.release_crit_edge, label %if.then4

for.end.i.release_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

if.then4:                                         ; preds = %for.end.i
  %hw5 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %odr_val) #4
  %11 = ptrtoint ptr %odr_val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %odr_val, align 1, !annotation !31
  %arrayidx = getelementptr %struct.st_lsm6dsx_hw, ptr %10, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %priv.i37 = getelementptr inbounds %struct.iio_dev, ptr %13, i32 0, i32 19
  %14 = ptrtoint ptr %priv.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv.i37, align 8
  %call7 = call i32 @st_lsm6dsx_check_odr(ptr noundef %15, i32 noundef %add, ptr noundef nonnull %odr_val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %odr_val) #4
  br label %release

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %slv_odr = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %slv_odr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %slv_odr, align 4
  %odr10 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %odr10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call7, ptr %odr10, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %odr_val) #4
  br label %release

sw.bb17:                                          ; preds = %if.end
  %ext_info.i38 = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %ext_info.i38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ext_info.i38, align 8
  %fs_table1.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %fs_table1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fs_table1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %sw.bb17.release_crit_edge, label %for.cond.preheader.i

sw.bb17.release_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

for.cond.preheader.i:                             ; preds = %sw.bb17
  %fs_len.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %19, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %fs_len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp35.i = icmp sgt i32 %23, 0
  br i1 %cmp35.i, label %for.cond.preheader.i.for.body.i41_crit_edge, label %for.cond.preheader.i.for.end.i46_crit_edge

for.cond.preheader.i.for.end.i46_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i46

for.cond.preheader.i.for.body.i41_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i41

for.body.i41:                                     ; preds = %for.inc.i44.for.body.i41_crit_edge, %for.cond.preheader.i.for.body.i41_crit_edge
  %i.036.i = phi i32 [ %inc.i42, %for.inc.i44.for.body.i41_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i41_crit_edge ]
  %arrayidx.i39 = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %19, i32 0, i32 4, i32 1, i32 %i.036.i
  %24 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp3.i40 = icmp eq i32 %25, %val2
  br i1 %cmp3.i40, label %for.body.i41.for.end.i46_crit_edge, label %for.inc.i44

for.body.i41.for.end.i46_crit_edge:               ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i46

for.inc.i44:                                      ; preds = %for.body.i41
  %inc.i42 = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc.i42, %23
  br i1 %exitcond.not.i43, label %for.inc.i44.release_crit_edge, label %for.inc.i44.for.body.i41_crit_edge

for.inc.i44.for.body.i41_crit_edge:               ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i41

for.inc.i44.release_crit_edge:                    ; preds = %for.inc.i44
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

for.end.i46:                                      ; preds = %for.body.i41.for.end.i46_crit_edge, %for.cond.preheader.i.for.end.i46_crit_edge
  %i.0.lcssa.i45 = phi i32 [ 0, %for.cond.preheader.i.for.end.i46_crit_edge ], [ %i.036.i, %for.body.i41.for.end.i46_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i45, i32 %23)
  %cmp7.i = icmp eq i32 %i.0.lcssa.i45, %23
  br i1 %cmp7.i, label %for.end.i46.release_crit_edge, label %if.end9.i

for.end.i46.release_crit_edge:                    ; preds = %for.end.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

if.end9.i:                                        ; preds = %for.end.i46
  %mask.i = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %19, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mask.i, align 1
  %val.i = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %19, i32 0, i32 4, i32 1, i32 %i.0.lcssa.i45, i32 1
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %val.i, align 4
  %call.i = tail call fastcc i32 @st_lsm6dsx_shub_write_with_mask(ptr noundef %1, i8 noundef zeroext %21, i8 noundef zeroext %27, i8 noundef zeroext %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15.i = icmp slt i32 %call.i, 0
  br i1 %cmp15.i, label %if.end9.i.release_crit_edge, label %if.end17.i

if.end9.i.release_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %release

if.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %gain18.i = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %gain18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %val2, ptr %gain18.i, align 8
  br label %release

release:                                          ; preds = %if.end17.i, %if.end9.i.release_crit_edge, %for.end.i46.release_crit_edge, %for.inc.i44.release_crit_edge, %sw.bb17.release_crit_edge, %cleanup, %cleanup.thread, %for.end.i.release_crit_edge, %for.inc.i.release_crit_edge, %if.end.release_crit_edge
  %err.3 = phi i32 [ -22, %if.end.release_crit_edge ], [ 0, %if.end17.i ], [ -524, %sw.bb17.release_crit_edge ], [ -22, %for.end.i46.release_crit_edge ], [ %call.i, %if.end9.i.release_crit_edge ], [ %call7, %cleanup.thread ], [ 0, %cleanup ], [ -22, %for.end.i.release_crit_edge ], [ -22, %for.inc.i.release_crit_edge ], [ -22, %for.inc.i44.release_crit_edge ]
  call void @iio_device_release_direct_mode(ptr noundef %iio_dev) #4
  br label %cleanup19

cleanup19:                                        ; preds = %release, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %err.3, %release ], [ %call1, %entry.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_set_watermark(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_shub_sampling_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %ext_info = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_info, align 8
  %odr_len = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %odr_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %odr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp16 = icmp sgt i32 %7, 0
  br i1 %cmp16, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.018 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %5, i32 0, i32 3, i32 1, i32 %i.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.018
  %sub = sub i32 4096, %len.018
  %.frozen = freeze i32 %9
  %div = udiv i32 %.frozen, 1000
  %10 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %.frozen, %10
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.2, i32 noundef %div, i32 noundef %rem.decomposed) #4
  %add = add i32 %call4, %len.018
  %inc = add nuw nsw i32 %i.017, 1
  %11 = ptrtoint ptr %odr_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %odr_len, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub5 = add i32 %len.0.lcssa, -1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %sub5
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 10, ptr %arrayidx6, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_lsm6dsx_shub_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %ext_info = getelementptr inbounds %struct.st_lsm6dsx_sensor, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_info, align 8
  %fs_len = getelementptr inbounds %struct.st_lsm6dsx_ext_dev_settings, ptr %5, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %fs_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fs_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %len.017 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.017
  %sub = sub i32 4096, %len.017
  %arrayidx = getelementptr %struct.st_lsm6dsx_ext_dev_settings, ptr %5, i32 0, i32 4, i32 1, i32 %i.016
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.4, i32 noundef %9) #4
  %add = add i32 %call4, %len.017
  %inc = add nuw nsw i32 %i.016, 1
  %10 = ptrtoint ptr %fs_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fs_len, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub5 = add i32 %len.0.lcssa, -1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %sub5
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 10, ptr %arrayidx6, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_lsm6dsx_check_odr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @st_lsm6dsx_ext_dev_table, !1, !"st_lsm6dsx_ext_dev_table", i1 false, i1 false}
!1 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 39, i32 49}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 776, i32 49}
!4 = !{ptr @st_lsm6dsx_ext_info, !5, !"st_lsm6dsx_ext_info", i1 false, i1 false}
!5 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 719, i32 30}
!6 = !{ptr @st_lsm6dsx_ext_attribute_group, !7, !"st_lsm6dsx_ext_attribute_group", i1 false, i1 false}
!7 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 715, i32 37}
!8 = !{ptr @st_lsm6dsx_ext_attributes, !9, !"st_lsm6dsx_ext_attributes", i1 false, i1 false}
!9 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 709, i32 26}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 706, i32 8}
!12 = !{ptr @iio_dev_attr_sampling_frequency_available, !11, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 681, i32 48}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 707, i32 8}
!17 = !{ptr @iio_dev_attr_in_scale_available, !16, !"iio_dev_attr_in_scale_available", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_shub.c", i32 699, i32 48}
!20 = !{ptr @st_lsm6dsx_available_scan_masks, !21, !"st_lsm6dsx_available_scan_masks", i1 false, i1 false}
!21 = !{!"../drivers/iio/imu/st_lsm6dsx/st_lsm6dsx.h", i32 435, i32 43}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i32 0, i32 33}
!33 = !{i8 0, i8 2}
