; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/st_pressure_core.c_pt.bc'
source_filename = "../drivers/iio/pressure/st_pressure_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st_press_get_settings\22, \22a\22\09"
module asm "\09.weak\09__crc_st_press_get_settings\09\09\09\09"
module asm "\09.long\09__crc_st_press_get_settings\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_press_get_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22st_press_get_settings\22\09\09\09\09\09"
module asm "__kstrtabns_st_press_get_settings:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st_press_common_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st_press_common_probe\09\09\09\09"
module asm "\09.long\09__crc_st_press_common_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st_press_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st_press_common_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st_press_common_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.st_sensors_platform_data = type { i8, i8, i8, i8, i8 }
%struct.iio_trigger_ops = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon = type { i8, i8, i8, i8, i8, i32 }
%struct.st_sensor_odr = type { i8, i8, [10 x %struct.st_sensor_odr_avl] }
%struct.st_sensor_odr_avl = type { i32, i8 }
%struct.st_sensor_power = type { i8, i8, i8, i8 }
%struct.st_sensor_axis = type { i8, i8 }
%struct.st_sensor_fullscale_avl = type { i32, i8, i32, i32 }
%struct.st_sensor_bdu = type { i8, i8 }
%struct.st_sensor_das = type { i8, i8 }
%struct.st_sensor_data_ready_irq = type { %struct.st_sensor_int_drdy, %struct.st_sensor_int_drdy, i8, i8, %struct.anon.79, %struct.anon.80 }
%struct.st_sensor_int_drdy = type { i8, i8, i8, i8 }
%struct.anon.79 = type { i8, i8 }
%struct.anon.80 = type { i8, i8 }
%struct.st_sensor_sim = type { i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.st_sensor_settings = type { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, %struct.st_sensor_fullscale, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }
%struct.st_sensor_fullscale = type { i8, i8, [10 x %struct.st_sensor_fullscale_avl] }
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

@__kstrtab_st_press_get_settings = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_press_get_settings = external dso_local constant [0 x i8], align 1
@__ksymtab_st_press_get_settings = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_press_get_settings to i32), ptr @__kstrtab_st_press_get_settings, ptr @__kstrtabns_st_press_get_settings }, section "___ksymtab+st_press_get_settings", align 4
@press_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @st_press_attribute_group, ptr @st_press_read_raw, ptr null, ptr null, ptr @st_press_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_sensors_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@default_press_pdata = internal constant { %struct.st_sensors_platform_data, [27 x i8] } { %struct.st_sensors_platform_data { i8 1, i8 0, i8 0, i8 0, i8 0 }, [27 x i8] zeroinitializer }, align 32
@st_press_trigger_ops = internal constant { %struct.iio_trigger_ops, [20 x i8] } { %struct.iio_trigger_ops { ptr @st_press_trig_set_state, ptr null, ptr @st_sensors_validate_device }, [20 x i8] zeroinitializer }, align 32
@__kstrtab_st_press_common_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st_press_common_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st_press_common_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st_press_common_probe to i32), ptr @__kstrtab_st_press_common_probe, ptr @__kstrtabns_st_press_common_probe }, section "___ksymtab+st_press_common_probe", align 4
@__UNIQUE_ID_author290 = internal constant [54 x i8] c"st_pressure.author=Denis Ciocca <denis.ciocca@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [60 x i8] c"st_pressure.description=STMicroelectronics pressures driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [50 x i8] c"st_pressure.file=drivers/iio/pressure/st_pressure\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"st_pressure.license=GPL v2\00", section ".modinfo", align 1
@st_press_1_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 40, i32 0, %struct.anon { i8 115, i8 24, i8 32, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 43, i32 1, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@st_press_lps001wp_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 40, i32 0, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 42, i32 1, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@st_press_lps22hb_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 40, i32 0, %struct.anon { i8 115, i8 24, i8 32, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 43, i32 1, %struct.anon { i8 115, i8 16, i8 16, i8 0, i8 0, i32 2 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 2, %struct.anon { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@st_press_sensors_settings = internal constant { [5 x { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }], [528 x i8] } { [5 x { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 }] [{ i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 } { i8 -69, i8 15, [8 x [17 x i8]] [[17 x i8] c"lps331ap\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_press_1_channels, i32 3, %struct.st_sensor_odr { i8 32, i8 112, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 1, i8 1 }, %struct.st_sensor_odr_avl { i32 7, i8 5 }, %struct.st_sensor_odr_avl { i32 13, i8 6 }, %struct.st_sensor_odr_avl { i32 25, i8 7 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 -128, i8 0, i8 1 }, %struct.st_sensor_axis zeroinitializer, [2 x i8] undef, { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> } { i8 35, i8 48, [2 x i8] undef, <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> <{ %struct.st_sensor_fullscale_avl { i32 1260, i8 0, i32 24414, i32 480 }, [9 x %struct.st_sensor_fullscale_avl] zeroinitializer }> }, %struct.st_sensor_bdu { i8 32, i8 4 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy { i8 34, i8 4, i8 34, i8 64 }, %struct.st_sensor_int_drdy { i8 34, i8 32, i8 34, i8 64 }, i8 34, i8 -128, %struct.anon.79 { i8 39, i8 3 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 32, i8 1 }, i8 1, i32 2 }, { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 } { i8 -70, i8 15, [8 x [17 x i8]] [[17 x i8] c"lps001wp\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_press_lps001wp_channels, i32 3, %struct.st_sensor_odr { i8 32, i8 48, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 1, i8 1 }, %struct.st_sensor_odr_avl { i32 7, i8 2 }, %struct.st_sensor_odr_avl { i32 13, i8 3 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 64, i8 0, i8 1 }, %struct.st_sensor_axis zeroinitializer, [2 x i8] undef, { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> } { i8 0, i8 0, [2 x i8] undef, <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> <{ %struct.st_sensor_fullscale_avl { i32 1100, i8 0, i32 6250000, i32 64 }, [9 x %struct.st_sensor_fullscale_avl] zeroinitializer }> }, %struct.st_sensor_bdu { i8 32, i8 4 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq zeroinitializer, %struct.st_sensor_sim { i8 32, i8 1 }, i8 1, i32 2 }, { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 } { i8 -67, i8 15, [8 x [17 x i8]] [[17 x i8] c"lps25h\00\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_press_1_channels, i32 3, %struct.st_sensor_odr { i8 32, i8 112, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 1, i8 1 }, %struct.st_sensor_odr_avl { i32 7, i8 2 }, %struct.st_sensor_odr_avl { i32 13, i8 3 }, %struct.st_sensor_odr_avl { i32 25, i8 4 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 32, i8 -128, i8 0, i8 1 }, %struct.st_sensor_axis zeroinitializer, [2 x i8] undef, { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> } { i8 0, i8 0, [2 x i8] undef, <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> <{ %struct.st_sensor_fullscale_avl { i32 1260, i8 0, i32 24414, i32 480 }, [9 x %struct.st_sensor_fullscale_avl] zeroinitializer }> }, %struct.st_sensor_bdu { i8 32, i8 4 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy { i8 35, i8 1, i8 34, i8 64 }, %struct.st_sensor_int_drdy zeroinitializer, i8 34, i8 -128, %struct.anon.79 { i8 39, i8 3 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 32, i8 1 }, i8 1, i32 2 }, { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 } { i8 -79, i8 15, [8 x [17 x i8]] [[17 x i8] c"lps22hb\00\00\00\00\00\00\00\00\00\00", [17 x i8] c"lps33hw\00\00\00\00\00\00\00\00\00\00", [17 x i8] c"lps35hw\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_press_lps22hb_channels, i32 3, %struct.st_sensor_odr { i8 16, i8 112, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 1, i8 1 }, %struct.st_sensor_odr_avl { i32 10, i8 2 }, %struct.st_sensor_odr_avl { i32 25, i8 3 }, %struct.st_sensor_odr_avl { i32 50, i8 4 }, %struct.st_sensor_odr_avl { i32 75, i8 5 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 16, i8 112, i8 0, i8 0 }, %struct.st_sensor_axis zeroinitializer, [2 x i8] undef, { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> } { i8 0, i8 0, [2 x i8] undef, <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> <{ %struct.st_sensor_fullscale_avl { i32 1260, i8 0, i32 24414, i32 100 }, [9 x %struct.st_sensor_fullscale_avl] zeroinitializer }> }, %struct.st_sensor_bdu { i8 16, i8 2 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy { i8 18, i8 4, i8 18, i8 64 }, %struct.st_sensor_int_drdy zeroinitializer, i8 18, i8 -128, %struct.anon.79 { i8 39, i8 3 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 16, i8 1 }, i8 0, i32 2 }, { i8, i8, [8 x [17 x i8]], ptr, i32, %struct.st_sensor_odr, %struct.st_sensor_power, %struct.st_sensor_axis, [2 x i8], { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> }, %struct.st_sensor_bdu, %struct.st_sensor_das, %struct.st_sensor_data_ready_irq, %struct.st_sensor_sim, i8, i32 } { i8 -77, i8 15, [8 x [17 x i8]] [[17 x i8] c"lps22hh\00\00\00\00\00\00\00\00\00\00", [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer, [17 x i8] zeroinitializer], ptr @st_press_lps22hb_channels, i32 3, %struct.st_sensor_odr { i8 16, i8 112, [10 x %struct.st_sensor_odr_avl] [%struct.st_sensor_odr_avl { i32 1, i8 1 }, %struct.st_sensor_odr_avl { i32 10, i8 2 }, %struct.st_sensor_odr_avl { i32 25, i8 3 }, %struct.st_sensor_odr_avl { i32 50, i8 4 }, %struct.st_sensor_odr_avl { i32 75, i8 5 }, %struct.st_sensor_odr_avl { i32 100, i8 6 }, %struct.st_sensor_odr_avl { i32 200, i8 7 }, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer, %struct.st_sensor_odr_avl zeroinitializer] }, %struct.st_sensor_power { i8 16, i8 112, i8 0, i8 0 }, %struct.st_sensor_axis zeroinitializer, [2 x i8] undef, { i8, i8, [2 x i8], <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> } { i8 0, i8 0, [2 x i8] undef, <{ %struct.st_sensor_fullscale_avl, [9 x %struct.st_sensor_fullscale_avl] }> <{ %struct.st_sensor_fullscale_avl { i32 1260, i8 0, i32 24414, i32 100 }, [9 x %struct.st_sensor_fullscale_avl] zeroinitializer }> }, %struct.st_sensor_bdu { i8 16, i8 2 }, %struct.st_sensor_das zeroinitializer, %struct.st_sensor_data_ready_irq { %struct.st_sensor_int_drdy { i8 18, i8 4, i8 17, i8 32 }, %struct.st_sensor_int_drdy zeroinitializer, i8 17, i8 64, %struct.anon.79 { i8 39, i8 3 }, %struct.anon.80 zeroinitializer }, %struct.st_sensor_sim { i8 16, i8 1 }, i8 0, i32 2 }], [528 x i8] zeroinitializer }, align 32
@st_press_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @st_press_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@st_press_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @st_sensors_sysfs_sampling_frequency_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"press_info\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 642, i32 30 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"default_press_pdata\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [38 x i8] c"../drivers/iio/pressure/st_pressure.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 40, i32 61 }
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"st_press_trigger_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 650, i32 37 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"st_press_1_channels\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 124, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"st_press_lps001wp_channels\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 158, i32 35 }
@___asan_gen_.18 = private unnamed_addr constant [26 x i8] c"st_press_lps22hb_channels\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 190, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [26 x i8] c"st_press_sensors_settings\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 224, i32 40 }
@___asan_gen_.24 = private unnamed_addr constant [25 x i8] c"st_press_attribute_group\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 638, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"st_press_attributes\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 633, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [43 x i8] c"../drivers/iio/pressure/st_pressure_core.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 631, i32 8 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_st_press_common_probe, ptr @__ksymtab_st_press_get_settings, ptr @press_info, ptr @default_press_pdata, ptr @st_press_trigger_ops, ptr @st_press_1_channels, ptr @st_press_lps001wp_channels, ptr @st_press_lps22hb_channels, ptr @st_press_sensors_settings, ptr @st_press_attribute_group, ptr @st_press_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @press_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_press_pdata to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_trigger_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_1_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_lps001wp_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_lps22hb_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_sensors_settings to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_press_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @st_press_get_settings(ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st_sensors_get_settings_index(ptr noundef %name, ptr noundef nonnull @st_press_sensors_settings, i32 noundef 5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  %arrayidx = getelementptr [5 x %struct.st_sensor_settings], ptr @st_press_sensors_settings, i32 0, i32 %call
  %retval.0 = select i1 %cmp, ptr null, ptr %arrayidx
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_get_settings_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st_press_common_probe(ptr noundef %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %parent1 = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %6 = ptrtoint ptr %indio_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %indio_dev, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 17
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @press_info, ptr %info, align 8
  %call3 = tail call i32 @st_sensors_verify_id(ptr noundef %indio_dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %sensor_settings = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %sensor_settings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sensor_settings, align 8
  %num_ch = getelementptr inbounds %struct.st_sensor_settings, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ch, align 4
  %sub = add i32 %11, -1
  %num_data_channels = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %num_data_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %num_data_channels, align 4
  %ch = getelementptr inbounds %struct.st_sensor_settings, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 13
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %channels, align 8
  %16 = load ptr, ptr %sensor_settings, align 8
  %num_ch6 = getelementptr inbounds %struct.st_sensor_settings, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %num_ch6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_ch6, align 4
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_channels, align 4
  %20 = load ptr, ptr %sensor_settings, align 8
  %fs_avl = getelementptr inbounds %struct.st_sensor_settings, ptr %20, i32 0, i32 8, i32 2
  %current_fullscale = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %current_fullscale to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %fs_avl, ptr %current_fullscale, align 4
  %odr_avl = getelementptr inbounds %struct.st_sensor_settings, ptr %20, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %odr_avl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %odr_avl, align 4
  %odr10 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %odr10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %odr10, align 64
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %drdy_irq = getelementptr inbounds %struct.st_sensor_settings, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %drdy_irq to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %drdy_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %land.lhs.true.if.then18_crit_edge

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then18

lor.lhs.false:                                    ; preds = %land.lhs.true
  %int2 = getelementptr inbounds %struct.st_sensor_settings, ptr %20, i32 0, i32 11, i32 1
  %27 = ptrtoint ptr %int2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %int2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %lor.lhs.false.if.end19_crit_edge, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then18

lor.lhs.false.if.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end19

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %pdata.0 = phi ptr [ %5, %if.end.if.end19_crit_edge ], [ @default_press_pdata, %if.then18 ], [ null, %lor.lhs.false.if.end19_crit_edge ]
  %call20 = tail call i32 @st_sensors_init_sensor(ptr noundef %indio_dev, ptr noundef %pdata.0) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @st_press_allocate_ring(ptr noundef %indio_dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %irq = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp30 = icmp sgt i32 %30, 0
  br i1 %cmp30, label %if.then32, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

if.then32:                                        ; preds = %if.end29
  %call33 = tail call i32 @st_sensors_allocate_trigger(ptr noundef %indio_dev, ptr noundef nonnull @st_press_trigger_ops) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.cleanup_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %call39 = tail call i32 @__devm_iio_device_register(ptr noundef %3, ptr noundef %indio_dev, ptr noundef null) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then32.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %if.end38 ], [ %call3, %entry.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_verify_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_init_sensor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_press_allocate_ring(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_allocate_trigger(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_press_read_raw(ptr noundef %indio_dev, ptr noundef %ch, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
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
    i32 3, label %sw.bb6
    i32 12, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @st_sensors_read_info_raw(ptr noundef %indio_dev, ptr noundef %ch, ptr noundef %val) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.read_error_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

sw.bb.read_error_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #4
  br label %read_error

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %4, label %sw.bb2.read_error_crit_edge [
    i32 17, label %sw.bb3
    i32 9, label %sw.bb4
  ]

sw.bb2.read_error_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  br label %read_error

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  %current_fullscale = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %current_fullscale to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %current_fullscale, align 4
  %gain = getelementptr inbounds %struct.st_sensor_fullscale_avl, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gain, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val2, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1000, ptr %val, align 4
  %current_fullscale5 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %current_fullscale5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %current_fullscale5, align 4
  %gain2 = getelementptr inbounds %struct.st_sensor_fullscale_avl, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %gain2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gain2, align 4
  %17 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val2, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %18 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cond = icmp eq i32 %19, 9
  br i1 %cond, label %sw.bb8, label %sw.bb6.read_error_crit_edge

sw.bb6.read_error_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  br label %read_error

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #4
  %current_fullscale9 = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %current_fullscale9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %current_fullscale9, align 4
  %gain210 = getelementptr inbounds %struct.st_sensor_fullscale_avl, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %gain210 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gain210, align 4
  %mul = mul i32 %23, 42500
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %val, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %odr = getelementptr inbounds %struct.st_sensor_data, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %odr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %odr, align 64
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val, align 4
  br label %cleanup

read_error:                                       ; preds = %sw.bb6.read_error_crit_edge, %sw.bb2.read_error_crit_edge, %sw.bb.read_error_crit_edge
  %err.0 = phi i32 [ %call1, %sw.bb.read_error_crit_edge ], [ -22, %sw.bb2.read_error_crit_edge ], [ -22, %sw.bb6.read_error_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %read_error, %sw.bb12, %sw.bb8, %sw.bb4, %sw.bb3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb12 ], [ 10, %sw.bb8 ], [ %err.0, %read_error ], [ 10, %sw.bb4 ], [ 3, %sw.bb3 ], [ 1, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_press_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %ch, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %cond = icmp eq i32 %mask, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  %or.cond = and i1 %tobool.not, %cond
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #2
  %call = tail call i32 @st_sensors_set_odr(ptr noundef %indio_dev, i32 noundef %val) #2
  tail call void @mutex_unlock(ptr noundef %mlock) #2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_debugfs_reg_access(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_sysfs_sampling_frequency_avail(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_read_info_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_set_odr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_press_trig_set_state(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_sensors_validate_device(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_st_press_get_settings, !1, !"__ksymtab_st_press_get_settings", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 675, i32 1}
!2 = !{ptr @__ksymtab_st_press_common_probe, !3, !"__ksymtab_st_press_common_probe", i1 false, i1 false}
!3 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 727, i32 1}
!4 = !{ptr @__UNIQUE_ID_author290, !5, !"__UNIQUE_ID_author290", i1 false, i1 false}
!5 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 729, i32 1}
!6 = !{ptr @__UNIQUE_ID_description291, !7, !"__UNIQUE_ID_description291", i1 false, i1 false}
!7 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 730, i32 1}
!8 = !{ptr @__UNIQUE_ID_file292, !9, !"__UNIQUE_ID_file292", i1 false, i1 false}
!9 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 731, i32 1}
!10 = !{ptr @__UNIQUE_ID_license293, !9, !"__UNIQUE_ID_license293", i1 false, i1 false}
!11 = !{ptr @st_press_sensors_settings, !12, !"st_press_sensors_settings", i1 false, i1 false}
!12 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 224, i32 40}
!13 = !{ptr @st_press_1_channels, !14, !"st_press_1_channels", i1 false, i1 false}
!14 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 124, i32 35}
!15 = !{ptr @st_press_lps001wp_channels, !16, !"st_press_lps001wp_channels", i1 false, i1 false}
!16 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 158, i32 35}
!17 = !{ptr @st_press_lps22hb_channels, !18, !"st_press_lps22hb_channels", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 190, i32 35}
!19 = !{ptr @press_info, !20, !"press_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 642, i32 30}
!21 = !{ptr @st_press_attribute_group, !22, !"st_press_attribute_group", i1 false, i1 false}
!22 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 638, i32 37}
!23 = !{ptr @st_press_attributes, !24, !"st_press_attributes", i1 false, i1 false}
!24 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 633, i32 26}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 631, i32 8}
!27 = !{ptr @iio_dev_attr_sampling_frequency_available, !26, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!28 = !{ptr @default_press_pdata, !29, !"default_press_pdata", i1 false, i1 false}
!29 = !{!"../drivers/iio/pressure/st_pressure.h", i32 40, i32 61}
!30 = !{ptr @st_press_trigger_ops, !31, !"st_press_trigger_ops", i1 false, i1 false}
!31 = !{!"../drivers/iio/pressure/st_pressure_core.c", i32 650, i32 37}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
