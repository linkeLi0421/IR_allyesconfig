; ModuleID = '/llk/IR_all_yes/drivers/iio/magnetometer/hmc5843_core.c_pt.bc'
source_filename = "../drivers/iio/magnetometer/hmc5843_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hmc5843_common_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_hmc5843_common_suspend\09\09\09\09"
module asm "\09.long\09__crc_hmc5843_common_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hmc5843_common_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22hmc5843_common_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_hmc5843_common_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hmc5843_common_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_hmc5843_common_resume\09\09\09\09"
module asm "\09.long\09__crc_hmc5843_common_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hmc5843_common_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22hmc5843_common_resume\22\09\09\09\09\09"
module asm "__kstrtabns_hmc5843_common_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hmc5843_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_hmc5843_common_probe\09\09\09\09"
module asm "\09.long\09__crc_hmc5843_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hmc5843_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22hmc5843_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_hmc5843_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hmc5843_common_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_hmc5843_common_remove\09\09\09\09"
module asm "\09.long\09__crc_hmc5843_common_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hmc5843_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22hmc5843_common_remove\22\09\09\09\09\09"
module asm "__kstrtabns_hmc5843_common_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hmc5843_chip_info = type { ptr, ptr, i32, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.hmc5843_data = type { ptr, %struct.mutex, ptr, ptr, %struct.iio_mount_matrix, %struct.anon.44 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.anon.44 = type { [3 x i16], i64 }

@__kstrtab_hmc5843_common_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_hmc5843_common_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_hmc5843_common_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hmc5843_common_suspend to i32), ptr @__kstrtab_hmc5843_common_suspend, ptr @__kstrtabns_hmc5843_common_suspend }, section "___ksymtab+hmc5843_common_suspend", align 4
@__kstrtab_hmc5843_common_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_hmc5843_common_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_hmc5843_common_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hmc5843_common_resume to i32), ptr @__kstrtab_hmc5843_common_resume, ptr @__kstrtabns_hmc5843_common_resume }, section "___ksymtab+hmc5843_common_resume", align 4
@hmc5843_chip_info_tbl = internal constant { [4 x %struct.hmc5843_chip_info], [48 x i8] } { [4 x %struct.hmc5843_chip_info] [%struct.hmc5843_chip_info { ptr @hmc5843_channels, ptr @hmc5843_regval_to_samp_freq, i32 7, ptr @hmc5843_regval_to_nanoscale, i32 8 }, %struct.hmc5843_chip_info { ptr @hmc5883_channels, ptr @hmc5883_regval_to_samp_freq, i32 7, ptr @hmc5883_regval_to_nanoscale, i32 8 }, %struct.hmc5843_chip_info { ptr @hmc5883_channels, ptr @hmc5883_regval_to_samp_freq, i32 7, ptr @hmc5883l_regval_to_nanoscale, i32 8 }, %struct.hmc5843_chip_info { ptr @hmc5983_channels, ptr @hmc5983_regval_to_samp_freq, i32 8, ptr @hmc5883l_regval_to_nanoscale, i32 8 }], [48 x i8] zeroinitializer }, align 32
@hmc5843_common_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@hmc5843_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @hmc5843_group, ptr @hmc5843_read_raw, ptr null, ptr null, ptr @hmc5843_write_raw, ptr null, ptr @hmc5843_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@hmc5843_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7, i32 0], [24 x i8] zeroinitializer }, align 32
@__kstrtab_hmc5843_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_hmc5843_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_hmc5843_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hmc5843_common_probe to i32), ptr @__kstrtab_hmc5843_common_probe, ptr @__kstrtabns_hmc5843_common_probe }, section "___ksymtab+hmc5843_common_probe", align 4
@__kstrtab_hmc5843_common_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_hmc5843_common_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_hmc5843_common_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hmc5843_common_remove to i32), ptr @__kstrtab_hmc5843_common_remove, ptr @__kstrtabns_hmc5843_common_remove }, section "___ksymtab+hmc5843_common_remove", align 4
@__UNIQUE_ID_author187 = internal constant [61 x i8] c"hmc5843_core.author=Shubhrajyoti Datta <shubhrajyoti@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [61 x i8] c"hmc5843_core.description=HMC5843/5883/5883L/5983 core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [56 x i8] c"hmc5843_core.file=drivers/iio/magnetometer/hmc5843_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [25 x i8] c"hmc5843_core.license=GPL\00", section ".modinfo", align 1
@hmc5843_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 1, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 2, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@hmc5843_regval_to_samp_freq = internal constant { [7 x [2 x i32]], [40 x i8] } { [7 x [2 x i32]] [[2 x i32] [i32 0, i32 500000], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 5, i32 0], [2 x i32] [i32 10, i32 0], [2 x i32] [i32 20, i32 0], [2 x i32] [i32 50, i32 0]], [40 x i8] zeroinitializer }, align 32
@hmc5843_regval_to_nanoscale = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6173, i32 7692, i32 10309, i32 12821, i32 18868, i32 21739, i32 25641, i32 35714], [32 x i8] zeroinitializer }, align 32
@hmc5883_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 1, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 2, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5843_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@hmc5883_regval_to_samp_freq = internal constant { [7 x [2 x i32]], [40 x i8] } { [7 x [2 x i32]] [[2 x i32] [i32 0, i32 750000], [2 x i32] [i32 1, i32 500000], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 7, i32 500000], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 30, i32 0], [2 x i32] [i32 75, i32 0]], [40 x i8] zeroinitializer }, align 32
@hmc5883_regval_to_nanoscale = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 7812, i32 9766, i32 13021, i32 16287, i32 24096, i32 27701, i32 32573, i32 45662], [32 x i8] zeroinitializer }, align 32
@hmc5883l_regval_to_nanoscale = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 7299, i32 9174, i32 12195, i32 15152, i32 22727, i32 25641, i32 30303, i32 43478], [32 x i8] zeroinitializer }, align 32
@hmc5983_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 5, i32 0, i32 1, i32 0, i32 0, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5983_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 3, i32 0, i32 1, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5983_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 5, i32 0, i32 2, i32 0, i32 2, %struct.anon.43 { i8 115, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @hmc5983_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.43 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@hmc5983_regval_to_samp_freq = internal constant { [8 x [2 x i32]], [32 x i8] } { [8 x [2 x i32]] [[2 x i32] [i32 0, i32 750000], [2 x i32] [i32 1, i32 500000], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 7, i32 500000], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 30, i32 0], [2 x i32] [i32 75, i32 0], [2 x i32] [i32 220, i32 0]], [32 x i8] zeroinitializer }, align 32
@hmc5843_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.1, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @hmc5843_meas_conf_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.2, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @hmc5843_meas_conf_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @hmc5843_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meas_conf\00", [22 x i8] zeroinitializer }, align 32
@hmc5843_meas_conf_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @hmc5843_meas_conf_modes, i32 3, ptr @hmc5843_set_measurement_configuration, ptr @hmc5843_show_measurement_configuration }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"meas_conf_available\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@hmc5843_meas_conf_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"positivebias\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"negativebias\00", [19 x i8] zeroinitializer }, align 32
@hmc5983_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.1, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @hmc5983_meas_conf_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.2, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @hmc5983_meas_conf_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.3, i32 2, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @hmc5843_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hmc5983_meas_conf_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @hmc5983_meas_conf_modes, i32 4, ptr @hmc5843_set_measurement_configuration, ptr @hmc5843_show_measurement_configuration }, [16 x i8] zeroinitializer }, align 32
@hmc5983_meas_conf_modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@hmc5843_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hmc5843_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@hmc5843_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_scale_available, ptr @iio_dev_attr_sampling_frequency_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hmc5843_show_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hmc5843_show_samp_freq_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scale_available\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%09d \00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d \00", [25 x i8] zeroinitializer }, align 32
@hmc5843_wait_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 164, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hmc5843_wait_measurement\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/iio/magnetometer/hmc5843_core.c\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hmc5843_wait_measurement._entry_ptr = internal global ptr @hmc5843_wait_measurement._entry, section ".printk_index", align 4
@hmc5843_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.14, i32 581, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no HMC5843/5883/5883L/5983 sensor\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hmc5843_init\00", [19 x i8] zeroinitializer }, align 32
@hmc5843_init._entry_ptr = internal global ptr @hmc5843_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"hmc5843_chip_info_tbl\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 532, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 638, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"hmc5843_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 597, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"hmc5843_scan_masks\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 604, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"hmc5843_channels\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 500, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"hmc5843_regval_to_samp_freq\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 112, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [28 x i8] c"hmc5843_regval_to_nanoscale\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 87, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"hmc5883_channels\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 508, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"hmc5883_regval_to_samp_freq\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 116, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [28 x i8] c"hmc5883_regval_to_nanoscale\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 91, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"hmc5883l_regval_to_nanoscale\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 95, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"hmc5983_channels\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 515, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"hmc5983_regval_to_samp_freq\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 121, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"hmc5843_ext_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 247, i32 44 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 248, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [23 x i8] c"hmc5843_meas_conf_enum\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 249, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 250, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [24 x i8] c"hmc5843_meas_conf_modes\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 80, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 80, i32 55 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 80, i32 65 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 81, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"hmc5983_ext_info\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 261, i32 44 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"hmc5983_meas_conf_enum\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 254, i32 30 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"hmc5983_meas_conf_modes\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 83, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 85, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"hmc5843_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 528, i32 37 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"hmc5843_attributes\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 522, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_scale_available\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 347, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 339, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 287, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 278, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 164, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [43 x i8] c"../drivers/iio/magnetometer/hmc5843_core.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 581, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__ksymtab_hmc5843_common_probe, ptr @__ksymtab_hmc5843_common_remove, ptr @__ksymtab_hmc5843_common_resume, ptr @__ksymtab_hmc5843_common_suspend, ptr @hmc5843_init._entry, ptr @hmc5843_init._entry_ptr, ptr @hmc5843_wait_measurement._entry, ptr @hmc5843_wait_measurement._entry_ptr, ptr @hmc5843_chip_info_tbl, ptr @hmc5843_common_probe.__key, ptr @.str, ptr @hmc5843_info, ptr @hmc5843_scan_masks, ptr @hmc5843_channels, ptr @hmc5843_regval_to_samp_freq, ptr @hmc5843_regval_to_nanoscale, ptr @hmc5883_channels, ptr @hmc5883_regval_to_samp_freq, ptr @hmc5883_regval_to_nanoscale, ptr @hmc5883l_regval_to_nanoscale, ptr @hmc5983_channels, ptr @hmc5983_regval_to_samp_freq, ptr @hmc5843_ext_info, ptr @.str.1, ptr @hmc5843_meas_conf_enum, ptr @.str.2, ptr @.str.3, ptr @hmc5843_meas_conf_modes, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @hmc5983_ext_info, ptr @hmc5983_meas_conf_enum, ptr @hmc5983_meas_conf_modes, ptr @.str.7, ptr @hmc5843_group, ptr @hmc5843_attributes, ptr @iio_dev_attr_scale_available, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_chip_info_tbl to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_common_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_regval_to_samp_freq to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_regval_to_nanoscale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5883_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5883_regval_to_samp_freq to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5883_regval_to_nanoscale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5883l_regval_to_nanoscale to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5983_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5983_regval_to_samp_freq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_meas_conf_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_meas_conf_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5983_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5983_meas_conf_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5983_meas_conf_modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_wait_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmc5843_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hmc5843_common_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hmc5843_common_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hmc5843_common_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %id, ptr noundef %name) #0 align 64 {
entry:
  %id.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 160) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %2, align 8
  %regmap3 = getelementptr inbounds %struct.hmc5843_data, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %regmap3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %regmap3, align 8
  %arrayidx = getelementptr [4 x %struct.hmc5843_chip_info], ptr @hmc5843_chip_info_tbl, i32 0, i32 %id
  %variant = getelementptr inbounds %struct.hmc5843_data, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %variant, align 4
  %lock = getelementptr inbounds %struct.hmc5843_data, ptr %2, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @hmc5843_common_probe.__key) #6
  %orientation = getelementptr inbounds %struct.hmc5843_data, ptr %2, i32 0, i32 4
  %call4 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %name8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %name8, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @hmc5843_info, ptr %info, align 8
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %channels10 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %channels10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %channels10, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %15 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hmc5843_scan_masks, ptr %available_scan_masks, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %id.i) #6
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %id.i, align 1, !annotation !104
  %17 = getelementptr inbounds [3 x i8], ptr %id.i, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %17, align 1, !annotation !104
  %19 = getelementptr inbounds [3 x i8], ptr %id.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %19, align 1, !annotation !104
  %21 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap3, align 8
  %call.i = call i32 @regmap_bulk_read(ptr noundef %22, i32 noundef 10, ptr noundef nonnull %id.i, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.hmc5843_init.exit.thread_crit_edge, label %if.end.i

if.end7.hmc5843_init.exit.thread_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %hmc5843_init.exit.thread

if.end.i:                                         ; preds = %if.end7
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 72, i8 %24)
  %cmp1.not.i = icmp eq i8 %24, 72
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %26)
  %cmp5.not.i = icmp eq i8 %26, 52
  br i1 %cmp5.not.i, label %lor.lhs.false7.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false.i
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 51, i8 %28)
  %cmp10.not.i = icmp eq i8 %28, 51
  br i1 %cmp10.not.i, label %if.end13.i, label %lor.lhs.false7.i.do.end.i_crit_edge

lor.lhs.false7.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false7.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.17) #9
  br label %hmc5843_init.exit.thread

if.end13.i:                                       ; preds = %lor.lhs.false7.i
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %31 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap3, align 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp15.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp15.i, label %if.end13.i.hmc5843_init.exit.thread_crit_edge, label %if.end18.i

if.end13.i.hmc5843_init.exit.thread_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hmc5843_init.exit.thread

if.end18.i:                                       ; preds = %if.end13.i
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %33 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap3, align 8
  %call.i.i45.i = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 0, i32 noundef 28, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45.i)
  %cmp20.i = icmp slt i32 %call.i.i45.i, 0
  br i1 %cmp20.i, label %if.end18.i.hmc5843_init.exit.thread_crit_edge, label %if.end23.i

if.end18.i.hmc5843_init.exit.thread_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hmc5843_init.exit.thread

if.end23.i:                                       ; preds = %if.end18.i
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %35 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap3, align 8
  %call.i.i48.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 1, i32 noundef 224, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48.i)
  %cmp25.i = icmp slt i32 %call.i.i48.i, 0
  br i1 %cmp25.i, label %if.end23.i.hmc5843_init.exit.thread_crit_edge, label %hmc5843_init.exit

if.end23.i.hmc5843_init.exit.thread_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hmc5843_init.exit.thread

hmc5843_init.exit.thread:                         ; preds = %if.end23.i.hmc5843_init.exit.thread_crit_edge, %if.end18.i.hmc5843_init.exit.thread_crit_edge, %if.end13.i.hmc5843_init.exit.thread_crit_edge, %do.end.i, %if.end7.hmc5843_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i48.i, %if.end23.i.hmc5843_init.exit.thread_crit_edge ], [ %call.i.i45.i, %if.end18.i.hmc5843_init.exit.thread_crit_edge ], [ %call.i.i.i, %if.end13.i.hmc5843_init.exit.thread_crit_edge ], [ %call.i, %if.end7.hmc5843_init.exit.thread_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %id.i) #6
  br label %cleanup

hmc5843_init.exit:                                ; preds = %if.end23.i
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %37 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap3, align 8
  %call.i.i51.i = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 2, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %id.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %cmp = icmp slt i32 %call.i.i51.i, 0
  br i1 %cmp, label %hmc5843_init.exit.cleanup_crit_edge, label %if.end13

hmc5843_init.exit.cleanup_crit_edge:              ; preds = %hmc5843_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %hmc5843_init.exit
  %call14 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @hmc5843_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.buffer_setup_err_crit_edge, label %if.end17

if.end13.buffer_setup_err_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %buffer_setup_err

if.end17:                                         ; preds = %if.end13
  %call18 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %buffer_cleanup, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

buffer_cleanup:                                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #6
  br label %buffer_setup_err

buffer_setup_err:                                 ; preds = %buffer_cleanup, %if.end13.buffer_setup_err_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.buffer_setup_err_crit_edge ], [ %call18, %buffer_cleanup ]
  %39 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %40, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i54 = getelementptr inbounds %struct.hmc5843_data, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %regmap.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i54, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 2, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %buffer_setup_err, %if.end17.cleanup_crit_edge, %hmc5843_init.exit.cleanup_crit_edge, %hmc5843_init.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %buffer_setup_err ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call.i.i51.i, %hmc5843_init.exit.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ %retval.0.i.ph, %hmc5843_init.exit.thread ]
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
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %entry
  %dec14.i = phi i32 [ 149, %entry ], [ %dec.i, %if.end3.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 9, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %while.body.i.if.then_crit_edge, label %if.end.i

while.body.i.if.then_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %while.body.i
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end

if.end3.i:                                        ; preds = %if.end.i
  call void @msleep(i32 noundef 20) #6
  %dec.i = add nsw i32 %dec14.i, -1
  %cmp.not.i = icmp eq i32 %dec14.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.12) #9
  br label %if.then

if.then:                                          ; preds = %do.end.i, %while.body.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %done

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 8
  %scan = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 5
  %call4 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 3, ptr noundef %scan, i32 noundef 6) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp6 = icmp slt i32 %call4, 0
  br i1 %cmp6, label %if.end.done_crit_edge, label %if.end8

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.end
  %call10 = call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %scan_timestamp.i, align 8, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i22 = icmp eq i8 %14, 0
  br i1 %tobool.not.i22, label %if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %16, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call10, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.end8.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i23 = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %if.end.done_crit_edge, %if.then
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %19) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hmc5843_common_remove(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 2, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @hmc5843_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %orientation = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 4
  ret ptr %orientation
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_set_measurement_configuration(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %meas_conf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %conv.i = and i32 %meas_conf, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 3, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_show_measurement_configuration(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !104
  %regmap = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 8
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %values.i = alloca [3 x i16], align 2
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #6
  %2 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rval, align 4, !annotation !104
  %3 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 12, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %scan_index = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %scan_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_index, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %values.i) #6
  %6 = ptrtoint ptr %values.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %values.i, align 2, !annotation !104
  %7 = getelementptr inbounds [3 x i16], ptr %values.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2, !annotation !104
  %9 = getelementptr inbounds [3 x i16], ptr %values.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %9, align 2, !annotation !104
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i, align 4, !annotation !104
  %regmap.i.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end3.i.i.while.body.i.i_crit_edge, %sw.bb
  %dec14.i.i = phi i32 [ 149, %sw.bb ], [ %dec.i.i, %if.end3.i.i.while.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 8
  %call.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 9, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i.if.then.i_crit_edge, label %if.end.i.i

while.body.i.i.if.then.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %14 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i.i, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i.i, label %if.end.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @msleep(i32 noundef 20) #6
  %dec.i.i = add nsw i32 %dec14.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec14.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %if.end3.i.i.while.body.i.i_crit_edge

if.end3.i.i.while.body.i.i_crit_edge:             ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12) #9
  br label %if.then.i

if.then.i:                                        ; preds = %do.end.i.i, %while.body.i.i.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %do.end.i.i ], [ %call.i.i, %while.body.i.i.if.then.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %hmc5843_read_measurement.exit

if.end.i:                                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 8
  %call2.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 3, ptr noundef nonnull %values.i, i32 noundef 6) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp4.i = icmp slt i32 %call2.i, 0
  br i1 %cmp4.i, label %if.end.i.hmc5843_read_measurement.exit_crit_edge, label %if.end6.i

if.end.i.hmc5843_read_measurement.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hmc5843_read_measurement.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr [3 x i16], ptr %values.i, i32 0, i32 %5
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %shr.i.i = sext i16 %21 to i32
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i.i, ptr %val, align 4
  br label %hmc5843_read_measurement.exit

hmc5843_read_measurement.exit:                    ; preds = %if.end6.i, %if.end.i.hmc5843_read_measurement.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %retval.0.i.ph.i, %if.then.i ], [ 1, %if.end6.i ], [ %call2.i, %if.end.i.hmc5843_read_measurement.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %values.i) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 8
  %call3 = call i32 @regmap_read(ptr noundef %24, i32 noundef 1, ptr noundef nonnull %rval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rval, align 4
  %shr = lshr i32 %26, 5
  store i32 %shr, ptr %rval, align 4
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val, align 4
  %variant = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %variant, align 4
  %regval_to_nanoscale = getelementptr inbounds %struct.hmc5843_chip_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %regval_to_nanoscale to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regval_to_nanoscale, align 4
  %arrayidx = getelementptr i32, ptr %31, i32 %shr
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %regmap5 = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap5, align 8
  %call6 = call i32 @regmap_read(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %rval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %sw.bb4.cleanup_crit_edge, label %if.end9

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rval, align 4
  %shr10 = lshr i32 %38, 2
  store i32 %shr10, ptr %rval, align 4
  %variant11 = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %39 = ptrtoint ptr %variant11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %variant11, align 4
  %regval_to_samp_freq = getelementptr inbounds %struct.hmc5843_chip_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %regval_to_samp_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regval_to_samp_freq, align 4
  %arrayidx12 = getelementptr [2 x i32], ptr %42, i32 %shr10
  %43 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx12, align 4
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %val, align 4
  %46 = load ptr, ptr %variant11, align 4
  %regval_to_samp_freq15 = getelementptr inbounds %struct.hmc5843_chip_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %regval_to_samp_freq15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regval_to_samp_freq15, align 4
  %arrayidx17 = getelementptr [2 x i32], ptr %48, i32 %shr10, i32 1
  %49 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx17, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %sw.bb4.cleanup_crit_edge, %if.end, %sw.bb2.cleanup_crit_edge, %hmc5843_read_measurement.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end9 ], [ 3, %if.end ], [ %retval.0.i, %hmc5843_read_measurement.exit ], [ %call3, %sw.bb2.cleanup_crit_edge ], [ %call6, %sw.bb4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %variant.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %variant.i, align 4
  %n_regval_to_samp_freq.i = getelementptr inbounds %struct.hmc5843_chip_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %n_regval_to_samp_freq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %n_regval_to_samp_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp15.i = icmp sgt i32 %6, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %regval_to_samp_freq.i = getelementptr inbounds %struct.hmc5843_chip_info, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %regval_to_samp_freq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regval_to_samp_freq.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i32], ptr %8, i32 %i.016.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp3.i = icmp eq i32 %10, %val
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx7.i = getelementptr [2 x i32], ptr %8, i32 %i.016.i, i32 1
  %11 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val2)
  %cmp8.i = icmp eq i32 %12, %val2
  br i1 %cmp8.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 8
  %conv.i = shl i32 %i.016.i, 2
  %shl.i = and i32 %conv.i, 1020
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 28, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %sw.bb3
  %variant.i20 = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %variant.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %variant.i20, align 4
  %n_regval_to_nanoscale.i = getelementptr inbounds %struct.hmc5843_chip_info, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %n_regval_to_nanoscale.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_regval_to_nanoscale.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp9.i = icmp sgt i32 %18, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i21, label %for.cond.preheader.i.cleanup_crit_edge

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i21:                               ; preds = %for.cond.preheader.i
  %regval_to_nanoscale.i = getelementptr inbounds %struct.hmc5843_chip_info, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %regval_to_nanoscale.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regval_to_nanoscale.i, align 4
  br label %for.body.i23

for.body.i23:                                     ; preds = %for.inc.i26.for.body.i23_crit_edge, %for.body.lr.ph.i21
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i21 ], [ %inc.i24, %for.inc.i26.for.body.i23_crit_edge ]
  %arrayidx.i22 = getelementptr i32, ptr %20, i32 %i.010.i
  %21 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %val2)
  %cmp2.i = icmp eq i32 %22, %val2
  br i1 %cmp2.i, label %if.end8, label %for.inc.i26

for.inc.i26:                                      ; preds = %for.body.i23
  %inc.i24 = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i25 = icmp eq i32 %inc.i24, %18
  br i1 %exitcond.not.i25, label %for.inc.i26.cleanup_crit_edge, label %for.inc.i26.for.body.i23_crit_edge

for.inc.i26.for.body.i23_crit_edge:               ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i23

for.inc.i26.cleanup_crit_edge:                    ; preds = %for.inc.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %for.body.i23
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i28 = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i28, i32 noundef 0) #6
  %regmap.i29 = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %regmap.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i29, align 8
  %conv.i30 = shl i32 %i.010.i, 5
  %shl.i31 = and i32 %conv.i30, 8160
  %call.i.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 1, i32 noundef 224, i32 noundef %shl.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.end
  %lock.i28.sink = phi ptr [ %lock.i28, %if.end8 ], [ %lock.i, %if.end ]
  %retval.0.ph = phi i32 [ %call.i.i32, %if.end8 ], [ %call.i.i, %if.end ]
  tail call void @mutex_unlock(ptr noundef %lock.i28.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i26.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hmc5843_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch.selectcmp = icmp eq i32 %mask, 2
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %switch.selectcmp2 = icmp eq i32 %mask, 12
  %switch.select3 = select i1 %switch.selectcmp2, i32 2, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_show_scale_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %variant = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %n_regval_to_nanoscale14 = getelementptr inbounds %struct.hmc5843_chip_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %n_regval_to_nanoscale14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_regval_to_nanoscale14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp15 = icmp sgt i32 %5, 0
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %12, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.016 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.016
  %sub = sub i32 4096, %len.016
  %regval_to_nanoscale = getelementptr inbounds %struct.hmc5843_chip_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %regval_to_nanoscale to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regval_to_nanoscale, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 %i.017
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.9, i32 noundef %10) #6
  %add = add i32 %call3, %len.016
  %inc = add nuw nsw i32 %i.017, 1
  %11 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %variant, align 4
  %n_regval_to_nanoscale = getelementptr inbounds %struct.hmc5843_chip_info, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %n_regval_to_nanoscale to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_regval_to_nanoscale, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub4 = add i32 %len.0.lcssa, -1
  %arrayidx5 = getelementptr i8, ptr %buf, i32 %sub4
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %arrayidx5, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hmc5843_show_samp_freq_avail(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %variant = getelementptr inbounds %struct.hmc5843_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %n_regval_to_samp_freq21 = getelementptr inbounds %struct.hmc5843_chip_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %n_regval_to_samp_freq21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_regval_to_samp_freq21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22 = icmp sgt i32 %5, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %6 = phi ptr [ %14, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %len.023 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.023
  %sub = sub i32 4096, %len.023
  %regval_to_samp_freq = getelementptr inbounds %struct.hmc5843_chip_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %regval_to_samp_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regval_to_samp_freq, align 4
  %arrayidx = getelementptr [2 x i32], ptr %8, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr [2 x i32], ptr %8, i32 %i.024, i32 1
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %call8 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef %12) #6
  %add = add i32 %call8, %len.023
  %inc = add nuw nsw i32 %i.024, 1
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant, align 4
  %n_regval_to_samp_freq = getelementptr inbounds %struct.hmc5843_chip_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %n_regval_to_samp_freq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_regval_to_samp_freq, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %sub9 = add i32 %len.0.lcssa, -1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %sub9
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %arrayidx10, align 1
  ret i32 %len.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !75, !77, !78, !80, !82, !83, !84, !85, !86, !87, !88, !90, !92, !93, !94}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__ksymtab_hmc5843_common_suspend, !1, !"__ksymtab_hmc5843_common_suspend", i1 false, i1 false}
!1 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 611, i32 1}
!2 = !{ptr @__ksymtab_hmc5843_common_resume, !3, !"__ksymtab_hmc5843_common_resume", i1 false, i1 false}
!3 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 618, i32 1}
!4 = !{ptr @hmc5843_common_probe.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 638, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__ksymtab_hmc5843_common_probe, !8, !"__ksymtab_hmc5843_common_probe", i1 false, i1 false}
!8 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 672, i32 1}
!9 = !{ptr @__ksymtab_hmc5843_common_remove, !10, !"__ksymtab_hmc5843_common_remove", i1 false, i1 false}
!10 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 684, i32 1}
!11 = !{ptr @__UNIQUE_ID_author187, !12, !"__UNIQUE_ID_author187", i1 false, i1 false}
!12 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 686, i32 1}
!13 = !{ptr @__UNIQUE_ID_description188, !14, !"__UNIQUE_ID_description188", i1 false, i1 false}
!14 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 687, i32 1}
!15 = !{ptr @__UNIQUE_ID_file189, !16, !"__UNIQUE_ID_file189", i1 false, i1 false}
!16 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 688, i32 1}
!17 = !{ptr @__UNIQUE_ID_license190, !16, !"__UNIQUE_ID_license190", i1 false, i1 false}
!18 = !{ptr @hmc5843_chip_info_tbl, !19, !"hmc5843_chip_info_tbl", i1 false, i1 false}
!19 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 532, i32 39}
!20 = !{ptr @hmc5843_channels, !21, !"hmc5843_channels", i1 false, i1 false}
!21 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 500, i32 35}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 248, i32 2}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 249, i32 2}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 250, i32 2}
!28 = !{ptr @hmc5843_ext_info, !29, !"hmc5843_ext_info", i1 false, i1 false}
!29 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 247, i32 44}
!30 = !{ptr @hmc5843_meas_conf_enum, !31, !"hmc5843_meas_conf_enum", i1 false, i1 false}
!31 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 240, i32 30}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 80, i32 55}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 80, i32 65}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 81, i32 13}
!38 = !{ptr @hmc5843_meas_conf_modes, !39, !"hmc5843_meas_conf_modes", i1 false, i1 false}
!39 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 80, i32 26}
!40 = !{ptr @hmc5843_regval_to_samp_freq, !41, !"hmc5843_regval_to_samp_freq", i1 false, i1 false}
!41 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 112, i32 18}
!42 = !{ptr @hmc5843_regval_to_nanoscale, !43, !"hmc5843_regval_to_nanoscale", i1 false, i1 false}
!43 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 87, i32 18}
!44 = !{ptr @hmc5883_channels, !45, !"hmc5883_channels", i1 false, i1 false}
!45 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 508, i32 35}
!46 = !{ptr @hmc5883_regval_to_samp_freq, !47, !"hmc5883_regval_to_samp_freq", i1 false, i1 false}
!47 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 116, i32 18}
!48 = !{ptr @hmc5883_regval_to_nanoscale, !49, !"hmc5883_regval_to_nanoscale", i1 false, i1 false}
!49 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 91, i32 18}
!50 = !{ptr @hmc5883l_regval_to_nanoscale, !51, !"hmc5883l_regval_to_nanoscale", i1 false, i1 false}
!51 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 95, i32 18}
!52 = !{ptr @hmc5983_channels, !53, !"hmc5983_channels", i1 false, i1 false}
!53 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 515, i32 35}
!54 = !{ptr @hmc5983_ext_info, !55, !"hmc5983_ext_info", i1 false, i1 false}
!55 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 261, i32 44}
!56 = !{ptr @hmc5983_meas_conf_enum, !57, !"hmc5983_meas_conf_enum", i1 false, i1 false}
!57 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 254, i32 30}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 85, i32 13}
!60 = !{ptr @hmc5983_meas_conf_modes, !61, !"hmc5983_meas_conf_modes", i1 false, i1 false}
!61 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 83, i32 26}
!62 = !{ptr @hmc5983_regval_to_samp_freq, !63, !"hmc5983_regval_to_samp_freq", i1 false, i1 false}
!63 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 121, i32 18}
!64 = !{ptr @hmc5843_info, !65, !"hmc5843_info", i1 false, i1 false}
!65 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 597, i32 30}
!66 = !{ptr @hmc5843_group, !67, !"hmc5843_group", i1 false, i1 false}
!67 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 528, i32 37}
!68 = !{ptr @hmc5843_attributes, !69, !"hmc5843_attributes", i1 false, i1 false}
!69 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 522, i32 26}
!70 = !{ptr @.str.8, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 347, i32 8}
!72 = !{ptr @iio_dev_attr_scale_available, !71, !"iio_dev_attr_scale_available", i1 false, i1 false}
!73 = !{ptr @.str.9, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 339, i32 4}
!75 = !{ptr @.str.10, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 287, i32 8}
!77 = !{ptr @iio_dev_attr_sampling_frequency_available, !76, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!78 = !{ptr @.str.11, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 278, i32 4}
!80 = !{ptr @.str.12, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 164, i32 3}
!82 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.14, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.15, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hmc5843_wait_measurement._entry, !81, !"_entry", i1 false, i1 false}
!87 = !{ptr @hmc5843_wait_measurement._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @hmc5843_scan_masks, !89, !"hmc5843_scan_masks", i1 false, i1 false}
!89 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 604, i32 28}
!90 = !{ptr @.str.17, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/iio/magnetometer/hmc5843_core.c", i32 581, i32 3}
!92 = !{ptr @.str.18, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @hmc5843_init._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @hmc5843_init._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i8 0, i8 2}
