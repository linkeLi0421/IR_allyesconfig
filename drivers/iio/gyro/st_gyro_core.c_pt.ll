; ModuleID = '/llk/IR_all_yes/drivers/iio/gyro/st_gyro_core.c_pt.bc'
source_filename = "../drivers/iio/gyro/st_gyro_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_gyro_get_settings\22, \22a\22\09"
module asm "\09.weak\09__crc_st_gyro_get_settings\09\09\09\09"
module asm "\09.long\09__crc_st_gyro_get_settings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_gyro_get_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22st_gyro_get_settings\22\09\09\09\09\09"
module asm "__kstrtabns_st_gyro_get_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_gyro_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st_gyro_common_probe\09\09\09\09"
module asm "\09.long\09__crc_st_gyro_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_gyro_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st_gyro_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st_gyro_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.st_sensor_settings = type { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, %struct.st_sensor_fullscale, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }
%struct.st_sensor_odr = type { i8, i8, [10 x %struct.st_sensor_odr_avl] }
%struct.st_sensor_odr_avl = type { i32, i8 }
%struct.st_sensor_power = type { i8, i8, i8, i8 }
%struct.st_sensor_axis = type { i8, i8 }
%struct.st_sensor_fullscale = type { i8, i8, [10 x %struct.st_sensor_fullscale_avl] }
%struct.st_sensor_fullscale_avl = type { i32, i8, i32, i32 }
%struct.st_sensor_bdu = type { i8, i8 }
%struct.st_sensor_das = type { i8, i8 }
%struct.st_sensor_data_ready_irq = type { %struct.st_sensor_int_drdy, %struct.st_sensor_int_drdy, i8, i8, %struct.anon.79, %struct.anon.80 }
%struct.st_sensor_int_drdy = type { i8, i8, i8, i8 }
%struct.anon.79 = type { i8, i8 }
%struct.anon.80 = type { i8, i8 }
%struct.st_sensor_sim = type { i8, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_sensors_platform_data = type { i8, i8, i8, i8, i8 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.st_sensor_data = type { ptr, %struct.iio_mount_matrix, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i8, i8, i32, i8, i8, i64, [32 x i8], [16 x i8], [112 x i8] }
%struct.iio_mount_matrix = type { [9 x ptr] }

@st_gyro_sensors_settings = internal constant { [4 x %struct.st_sensor_settings], [416 x i8] } { [4 x %struct.st_sensor_settings] [%struct.st_sensor_settings { i8 -45, i8 15, [8 x [17 x i8]] [[17 x i8] c"l3g4200d\00\00\00\00\00\00\00\00\00", [17 x i8] c"lsm330dl_gyro\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_gyro_16bit_channels, i32 0, %struct.st_sensor_odr { i8 32, i8 -64, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 100, i8 0 }, %struct.st_sensor_odr_avl { i32 200, i8 1 }, %struct.st_sensor_odr_avl { i32 400, i8 2 }, %struct.st_sensor_odr_avl { i32 800, i8 3 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 8, i8 0, i8 1 }, %struct.st_sensor_axis { i8 32, i8 7 }, %struct.st_sensor_fullscale { i8 35, i8 48, [10 x %struct.st_sensor_fullscale_avl] [%struct.st_sensor_fullscale_avl { i32 250, i8 0, i32 153, i32 0 }, %struct.st_sensor_fullscale_avl { i32 500, i8 1, i32 305, i32 0 }, %struct.st_sensor_fullscale_avl { i32 2000, i8 2, i32 1222, i32 0 }, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer] }, %struct.st_sensor_bdu { i8 35, i8 -128 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy zeroinitializer, %struct.st_sensor_int_drdy { i8 34, i8 8, i8 0, i8 0 }, i8 0, i8 0, %struct.anon.79 { i8 39, i8 7 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 35, i8 1 }, i8 1, i32 2 }, %struct.st_sensor_settings { i8 -44, i8 15, [8 x [17 x i8]] [[17 x i8] c"l3gd20\00\00\00\00\00\00\00\00\00\00\00", [17 x i8] c"lsm330d_gyro\00\00\00\00\00", [17 x i8] c"lsm330dlc_gyro\00\00\00", [17 x i8] c"l3g4is_ui\00\00\00\00\00\00\00\00", [17 x i8] c"lsm330_gyro\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_gyro_16bit_channels, i32 0, %struct.st_sensor_odr { i8 32, i8 -64, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 95, i8 0 }, %struct.st_sensor_odr_avl { i32 190, i8 1 }, %struct.st_sensor_odr_avl { i32 380, i8 2 }, %struct.st_sensor_odr_avl { i32 760, i8 3 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 8, i8 0, i8 1 }, %struct.st_sensor_axis { i8 32, i8 7 }, %struct.st_sensor_fullscale { i8 35, i8 48, [10 x %struct.st_sensor_fullscale_avl] [%struct.st_sensor_fullscale_avl { i32 250, i8 0, i32 153, i32 0 }, %struct.st_sensor_fullscale_avl { i32 500, i8 1, i32 305, i32 0 }, %struct.st_sensor_fullscale_avl { i32 2000, i8 2, i32 1222, i32 0 }, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer] }, %struct.st_sensor_bdu { i8 35, i8 -128 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy zeroinitializer, %struct.st_sensor_int_drdy { i8 34, i8 8, i8 0, i8 0 }, i8 0, i8 0, %struct.anon.79 { i8 39, i8 7 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 35, i8 1 }, i8 1, i32 2 }, %struct.st_sensor_settings { i8 -44, i8 15, [8 x [17 x i8]] [[17 x i8] c"lsm9ds0_gyro\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_gyro_16bit_channels, i32 0, %struct.st_sensor_odr { i8 32, i8 -64, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 95, i8 0 }, %struct.st_sensor_odr_avl { i32 190, i8 1 }, %struct.st_sensor_odr_avl { i32 380, i8 2 }, %struct.st_sensor_odr_avl { i32 760, i8 3 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 8, i8 0, i8 1 }, %struct.st_sensor_axis { i8 32, i8 7 }, %struct.st_sensor_fullscale { i8 35, i8 48, [10 x %struct.st_sensor_fullscale_avl] [%struct.st_sensor_fullscale_avl { i32 245, i8 0, i32 153, i32 0 }, %struct.st_sensor_fullscale_avl { i32 500, i8 1, i32 305, i32 0 }, %struct.st_sensor_fullscale_avl { i32 2000, i8 2, i32 1222, i32 0 }, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer] }, %struct.st_sensor_bdu { i8 35, i8 -128 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy zeroinitializer, %struct.st_sensor_int_drdy { i8 34, i8 8, i8 0, i8 0 }, i8 0, i8 0, %struct.anon.79 { i8 39, i8 7 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 35, i8 1 }, i8 1, i32 2 }, %struct.st_sensor_settings { i8 -41, i8 15, [8 x [17 x i8]] [[17 x i8] c"l3gd20h\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_gyro_16bit_channels, i32 0, %struct.st_sensor_odr { i8 32, i8 -64, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 100, i8 0 }, %struct.st_sensor_odr_avl { i32 200, i8 1 }, %struct.st_sensor_odr_avl { i32 400, i8 2 }, %struct.st_sensor_odr_avl { i32 800, i8 3 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 8, i8 0, i8 1 }, %struct.st_sensor_axis { i8 32, i8 7 }, %struct.st_sensor_fullscale { i8 35, i8 48, [10 x %struct.st_sensor_fullscale_avl] [%struct.st_sensor_fullscale_avl { i32 245, i8 0, i32 153, i32 0 }, %struct.st_sensor_fullscale_avl { i32 500, i8 1, i32 305, i32 0 }, %struct.st_sensor_fullscale_avl { i32 2000, i8 2, i32 1222, i32 0 }, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer, %struct.st_sensor_fullscale_avl zeroinitializer] }, %struct.st_sensor_bdu { i8 35, i8 -128 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy zeroinitializer, %struct.st_sensor_int_drdy { i8 34, i8 8, i8 0, i8 0 }, i8 0, i8 0, %struct.anon.79 { i8 39, i8 7 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 35, i8 1 }, i8 1, i32 2 }], [416 x i8] zeroinitializer }, align 32
@__kstrtab_st_gyro_get_settings = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_gyro_get_settings = external dso_local constant [0 x i8], align 1
@__ksymtab_st_gyro_get_settings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_gyro_get_settings to i32), ptr @__kstrtab_st_gyro_get_settings, ptr @__kstrtabns_st_gyro_get_settings }, section "___ksymtab+st_gyro_get_settings", align 4
@gyro_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @st_gyro_attribute_group, ptr @st_gyro_read_raw, ptr null, ptr null, ptr @st_gyro_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_sensors_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gyro_pdata = internal constant { %struct.st_sensors_platform_data, [27 x i8] } { %struct.st_sensors_platform_data { i8 2, i8 0, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@st_gyro_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @st_gyro_trig_set_state, ptr null, ptr @st_sensors_validate_device }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_st_gyro_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_gyro_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st_gyro_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_gyro_common_probe to i32), ptr @__kstrtab_st_gyro_common_probe, ptr @__kstrtabns_st_gyro_common_probe }, section "___ksymtab+st_gyro_common_probe", align 4
@__UNIQUE_ID_author290 = internal constant [50 x i8] c"st_gyro.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [57 x i8] c"st_gyro.description=STMicroelectronics gyroscopes driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [38 x i8] c"st_gyro.file=drivers/iio/gyro/st_gyro\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"st_gyro.license=GPL v2\00", section ".modinfo", align 1
@st_gyro_16bit_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 4, i32 0, i32 1, i32 40, i32 0, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @st_gyro_mount_matrix_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 2, i32 42, i32 1, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @st_gyro_mount_matrix_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 4, i32 0, i32 3, i32 44, i32 2, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr @st_gyro_mount_matrix_ext_info, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [64 x i8] zeroinitializer }, align 32
@st_gyro_mount_matrix_ext_info = internal constant { [2 x %struct.iio_chan_spec_ext_info], [56 x i8] } { [2 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str, i32 3, ptr @iio_show_mount_matrix, ptr null, i32 ptrtoint (ptr @st_gyro_get_mount_matrix to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mount_matrix\00", [19 x i8] zeroinitializer }, align 32
@st_gyro_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @st_gyro_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_gyro_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_anglvel_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_sensors_sysfs_sampling_frequency_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_anglvel_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_sensors_sysfs_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_anglvel_scale_available\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"st_gyro_sensors_settings\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 68, i32 40 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"gyro_info\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 442, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"gyro_pdata\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 373, i32 46 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"st_gyro_trigger_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 450, i32 37 }
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"st_gyro_16bit_channels\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 49, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [30 x i8] c"st_gyro_mount_matrix_ext_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 44, i32 44 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"st_gyro_attribute_group\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 438, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"st_gyro_attributes\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 432, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_anglvel_scale_available\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 429, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/iio/gyro/st_gyro_core.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 430, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_st_gyro_common_probe, ptr @__ksymtab_st_gyro_get_settings, ptr @st_gyro_sensors_settings, ptr @gyro_info, ptr @gyro_pdata, ptr @st_gyro_trigger_ops, ptr @st_gyro_16bit_channels, ptr @st_gyro_mount_matrix_ext_info, ptr @.str, ptr @st_gyro_attribute_group, ptr @st_gyro_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_anglvel_scale_available, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_sensors_settings to i32), i32 1728, i32 2144, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyro_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gyro_pdata to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_16bit_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_mount_matrix_ext_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gyro_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_anglvel_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @st_gyro_get_settings(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_sensors_get_settings_index(ptr noundef %name, ptr noundef nonnull @st_gyro_sensors_settings, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %arrayidx = getelementptr [4 x %struct.st_sensor_settings], ptr @st_gyro_sensors_settings, i32 0, i32 %call
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_get_settings_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_gyro_common_probe(ptr noundef %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %4 = ptrtoint ptr %indio_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %indio_dev, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 17
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gyro_info, ptr %info, align 8
  %call2 = tail call i32 @st_sensors_verify_id(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_data_channels = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %num_data_channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %num_data_channels, align 4
  %sensor_settings = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %sensor_settings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sensor_settings, align 8
  %ch = getelementptr inbounds %struct.st_sensor_settings, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ch, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %num_channels, align 4
  %mount_matrix = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 1
  %call3 = tail call i32 @iio_read_mount_matrix(ptr noundef %3, ptr noundef %mount_matrix) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %sensor_settings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sensor_settings, align 8
  %fs_avl = getelementptr inbounds %struct.st_sensor_settings, ptr %14, i32 0, i32 8, i32 2
  %current_fullscale = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %current_fullscale to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fs_avl, ptr %current_fullscale, align 4
  %odr_avl = getelementptr inbounds %struct.st_sensor_settings, ptr %14, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %odr_avl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %odr_avl, align 4
  %odr9 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %odr9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %odr9, align 64
  %call10 = tail call i32 @st_sensors_init_sensor(ptr noundef %indio_dev, ptr noundef nonnull @gyro_pdata) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end5.cleanup_crit_edge, label %if.end13

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %call14 = tail call i32 @st_gyro_allocate_ring(ptr noundef %indio_dev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %irq = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp18 = icmp sgt i32 %20, 0
  br i1 %cmp18, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @st_sensors_allocate_trigger(ptr noundef %indio_dev, ptr noundef nonnull @st_gyro_trigger_ops) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then19.cleanup_crit_edge, label %if.then19.if.end24_crit_edge

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %call25 = tail call i32 @__devm_iio_device_register(ptr noundef %3, ptr noundef %indio_dev, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end24 ], [ %call2, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %if.end5.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_verify_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_init_sensor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_gyro_allocate_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_allocate_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_show_mount_matrix(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @st_gyro_get_mount_matrix(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mount_matrix = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 1
  ret ptr %mount_matrix
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gyro_read_raw(ptr noundef %indio_dev, ptr noundef %ch, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 12, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @st_sensors_read_info_raw(ptr noundef %indio_dev, ptr noundef %ch, ptr noundef %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %call1. = select i1 %cmp, i32 %call1, i32 1
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %val, align 4
  %current_fullscale = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %current_fullscale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %current_fullscale, align 4
  %gain = getelementptr inbounds %struct.st_sensor_fullscale_avl, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gain, align 4
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val2, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %odr = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %odr, align 64
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb3 ], [ 2, %sw.bb2 ], [ %call1., %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gyro_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @st_sensors_set_fullscale_by_gain(ptr noundef %indio_dev, i32 noundef %val2) #3
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #5
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #3
  %call2 = tail call i32 @st_sensors_set_odr(ptr noundef %indio_dev, i32 noundef %val) #3
  tail call void @mutex_unlock(ptr noundef %mlock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %sw.bb1.cleanup_crit_edge ], [ %call, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_debugfs_reg_access(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_sysfs_sampling_frequency_avail(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_sysfs_scale_avail(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_read_info_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_set_fullscale_by_gain(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_set_odr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_gyro_trig_set_state(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_validate_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_st_gyro_get_settings, !1, !"__ksymtab_st_gyro_get_settings", i1 false, i1 false}
!1 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 475, i32 1}
!2 = !{ptr @__ksymtab_st_gyro_common_probe, !3, !"__ksymtab_st_gyro_common_probe", i1 false, i1 false}
!3 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 521, i32 1}
!4 = !{ptr @__UNIQUE_ID_author290, !5, !"__UNIQUE_ID_author290", i1 false, i1 false}
!5 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 523, i32 1}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 524, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 525, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @st_gyro_sensors_settings, !12, !"st_gyro_sensors_settings", i1 false, i1 false}
!12 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 68, i32 40}
!13 = !{ptr @st_gyro_16bit_channels, !14, !"st_gyro_16bit_channels", i1 false, i1 false}
!14 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 49, i32 35}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 45, i32 2}
!17 = !{ptr @st_gyro_mount_matrix_ext_info, !18, !"st_gyro_mount_matrix_ext_info", i1 false, i1 false}
!18 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 44, i32 44}
!19 = !{ptr @gyro_info, !20, !"gyro_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 442, i32 30}
!21 = !{ptr @st_gyro_attribute_group, !22, !"st_gyro_attribute_group", i1 false, i1 false}
!22 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 438, i32 37}
!23 = !{ptr @st_gyro_attributes, !24, !"st_gyro_attributes", i1 false, i1 false}
!24 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 432, i32 26}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 429, i32 8}
!27 = !{ptr @iio_dev_attr_sampling_frequency_available, !26, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 430, i32 8}
!30 = !{ptr @iio_dev_attr_in_anglvel_scale_available, !29, !"iio_dev_attr_in_anglvel_scale_available", i1 false, i1 false}
!31 = !{ptr @gyro_pdata, !32, !"gyro_pdata", i1 false, i1 false}
!32 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 373, i32 46}
!33 = !{ptr @st_gyro_trigger_ops, !34, !"st_gyro_trigger_ops", i1 false, i1 false}
!34 = !{!"../drivers/iio/gyro/st_gyro_core.c", i32 450, i32 37}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
