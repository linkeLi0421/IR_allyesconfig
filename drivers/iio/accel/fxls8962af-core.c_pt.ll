; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/fxls8962af-core.c_pt.bc'
source_filename = "../drivers/iio/accel/fxls8962af-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fxls8962af_i2c_regmap_conf\22, \22a\22\09"
module asm "\09.weak\09__crc_fxls8962af_i2c_regmap_conf\09\09\09\09"
module asm "\09.long\09__crc_fxls8962af_i2c_regmap_conf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxls8962af_i2c_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22fxls8962af_i2c_regmap_conf\22\09\09\09\09\09"
module asm "__kstrtabns_fxls8962af_i2c_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxls8962af_spi_regmap_conf\22, \22a\22\09"
module asm "\09.weak\09__crc_fxls8962af_spi_regmap_conf\09\09\09\09"
module asm "\09.long\09__crc_fxls8962af_spi_regmap_conf\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxls8962af_spi_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22fxls8962af_spi_regmap_conf\22\09\09\09\09\09"
module asm "__kstrtabns_fxls8962af_spi_regmap_conf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxls8962af_core_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_fxls8962af_core_probe\09\09\09\09"
module asm "\09.long\09__crc_fxls8962af_core_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxls8962af_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22fxls8962af_core_probe\22\09\09\09\09\09"
module asm "__kstrtabns_fxls8962af_core_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+fxls8962af_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_fxls8962af_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_fxls8962af_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fxls8962af_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22fxls8962af_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_fxls8962af_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fxls8962af_chip_info = type { ptr, ptr, i32, i8 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.fxls8962af_data = type { ptr, ptr, ptr, %struct.anon.85, i64, i64, %struct.iio_mount_matrix, i32, i8, i8, i16, i16 }
%struct.anon.85 = type { [3 x i16], i64 }
%struct.iio_mount_matrix = type { [9 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@fxls8962af_i2c_regmap_conf = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_fxls8962af_i2c_regmap_conf = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxls8962af_i2c_regmap_conf = external dso_local constant [0 x i8], align 1
@__ksymtab_fxls8962af_i2c_regmap_conf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxls8962af_i2c_regmap_conf to i32), ptr @__kstrtab_fxls8962af_i2c_regmap_conf, ptr @__kstrtabns_fxls8962af_i2c_regmap_conf }, section "___ksymtab_gpl+fxls8962af_i2c_regmap_conf", align 4
@fxls8962af_spi_regmap_conf = dso_local constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 8, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_fxls8962af_spi_regmap_conf = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxls8962af_spi_regmap_conf = external dso_local constant [0 x i8], align 1
@__ksymtab_fxls8962af_spi_regmap_conf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxls8962af_spi_regmap_conf to i32), ptr @__kstrtab_fxls8962af_spi_regmap_conf, ptr @__kstrtabns_fxls8962af_spi_regmap_conf }, section "___ksymtab_gpl+fxls8962af_spi_regmap_conf", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get vdd regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@fxls8962af_core_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable vdd regulator: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fxls8962af_core_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/iio/accel/fxls8962af-core.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fxls8962af_core_probe._entry_ptr = internal global ptr @fxls8962af_core_probe._entry, section ".printk_index", align 4
@fxls_chip_info_table = internal constant { [2 x %struct.fxls8962af_chip_info], [32 x i8] } { [2 x %struct.fxls8962af_chip_info] [%struct.fxls8962af_chip_info { ptr @.str.11, ptr @fxls8962af_channels, i32 5, i8 98 }, %struct.fxls8962af_chip_info { ptr @.str.12, ptr @fxls8962af_channels, i32 5, i8 -124 }], [32 x i8] zeroinitializer }, align 32
@fxls8962af_core_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to match device in table\0A\00", [63 x i8] zeroinitializer }, align 32
@fxls8962af_core_probe._entry_ptr.9 = internal global ptr @fxls8962af_core_probe._entry.7, section ".printk_index", align 4
@fxls8962af_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @fxls8962af_read_raw, ptr null, ptr @fxls8962af_read_avail, ptr @fxls8962af_write_raw, ptr null, ptr @fxls8962af_write_raw_get_fmt, ptr @fxls8962af_read_event_config, ptr @fxls8962af_write_event_config, ptr @fxls8962af_read_event, ptr @fxls8962af_write_event, ptr null, ptr null, ptr null, ptr null, ptr @fxls8962af_set_watermark, ptr null }, [56 x i8] zeroinitializer }, align 32
@fxls8962af_buffer_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @fxls8962af_buffer_preenable, ptr @fxls8962af_buffer_postenable, ptr @fxls8962af_buffer_predisable, ptr @fxls8962af_buffer_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_fxls8962af_core_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxls8962af_core_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_fxls8962af_core_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxls8962af_core_probe to i32), ptr @__kstrtab_fxls8962af_core_probe, ptr @__kstrtabns_fxls8962af_core_probe }, section "___ksymtab_gpl+fxls8962af_core_probe", align 4
@fxls8962af_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @fxls8962af_suspend, ptr @fxls8962af_resume, ptr @fxls8962af_suspend, ptr @fxls8962af_resume, ptr @fxls8962af_suspend, ptr @fxls8962af_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fxls8962af_runtime_suspend, ptr @fxls8962af_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_fxls8962af_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_fxls8962af_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_fxls8962af_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fxls8962af_pm_ops to i32), ptr @__kstrtab_fxls8962af_pm_ops, ptr @__kstrtabns_fxls8962af_pm_ops }, section "___ksymtab_gpl+fxls8962af_pm_ops", align 4
@__UNIQUE_ID_author324 = internal constant [55 x i8] c"fxls8962af_core.author=Sean Nyekjaer <sean@geanix.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description325 = internal constant [75 x i8] c"fxls8962af_core.description=NXP FXLS8962AF/FXLS8964AF accelerometer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file326 = internal constant [55 x i8] c"fxls8962af_core.file=drivers/iio/accel/fxls8962af-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license327 = internal constant [31 x i8] c"fxls8962af_core.license=GPL v2\00", section ".modinfo", align 1
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fxls8962af\00", [21 x i8] zeroinitializer }, align 32
@fxls8962af_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 4, i32 0, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 4100, i32 0, i32 0, i32 0, i32 0, ptr @fxls8962af_event, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 6, i32 1, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 4100, i32 0, i32 0, i32 0, i32 0, ptr @fxls8962af_event, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 8, i32 2, %struct.anon.84 { i8 115, i8 12, i8 16, i8 4, i8 0, i32 1 }, i32 1, i32 0, i32 4100, i32 4100, i32 0, i32 0, i32 0, i32 0, ptr @fxls8962af_event, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 3, %struct.anon.84 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 1, i32 -1, %struct.anon.84 { i8 0, i8 8, i8 8, i8 0, i8 0, i32 0 }, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fxls8964af\00", [21 x i8] zeroinitializer }, align 32
@fxls8962af_event = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@fxls8962af_get_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get out reg 0x%lx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fxls8962af_get_out\00", [45 x i8] zeroinitializer }, align 32
@fxls8962af_get_out._entry_ptr = internal global ptr @fxls8962af_get_out._entry, section ".printk_index", align 4
@fxls8962af_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to power on\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fxls8962af_power_on\00", [44 x i8] zeroinitializer }, align 32
@fxls8962af_power_on._entry_ptr = internal global ptr @fxls8962af_power_on._entry, section ".printk_index", align 4
@fxls8962af_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to power off\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fxls8962af_power_off\00", [43 x i8] zeroinitializer }, align 32
@fxls8962af_power_off._entry_ptr = internal global ptr @fxls8962af_power_off._entry, section ".printk_index", align 4
@fxls8962af_scale_table = internal constant { [4 x [2 x i32]], [32 x i8] } { [4 x [2 x i32]] [[2 x i32] [i32 0, i32 9610517], [2 x i32] [i32 0, i32 19122967], [2 x i32] [i32 0, i32 38344001], [2 x i32] [i32 0, i32 76589936]], [32 x i8] zeroinitializer }, align 32
@fxls8962af_samp_freq_table = internal constant { [13 x [2 x i32]], [56 x i8] } { [13 x [2 x i32]] [[2 x i32] [i32 3200, i32 0], [2 x i32] [i32 1600, i32 0], [2 x i32] [i32 800, i32 0], [2 x i32] [i32 400, i32 0], [2 x i32] [i32 200, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 50, i32 0], [2 x i32] [i32 25, i32 0], [2 x i32] [i32 12, i32 500000], [2 x i32] [i32 6, i32 250000], [2 x i32] [i32 3, i32 125000], [2 x i32] [i32 1, i32 563000], [2 x i32] [i32 0, i32 781000]], [56 x i8] zeroinitializer }, align 32
@fxls8962af_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 799, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"reset timeout, int_status = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fxls8962af_reset\00", [47 x i8] zeroinitializer }, align 32
@fxls8962af_reset._entry_ptr = internal global ptr @fxls8962af_reset._entry, section ".printk_index", align 4
@fxls8962af_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1106, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unsupported int pin selected\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fxls8962af_irq_setup\00", [43 x i8] zeroinitializer }, align 32
@fxls8962af_irq_setup._entry_ptr = internal global ptr @fxls8962af_irq_setup._entry, section ".printk_index", align 4
@fxls8962af_irq_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 1127, ptr @.str.25, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mode %lx unsupported\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fxls8962af_irq_setup._entry_ptr.26 = internal global ptr @fxls8962af_irq_setup._entry.23, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drive-open-drain\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INT2\00", [27 x i8] zeroinitializer }, align 32
@fxls8962af_fifo_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 942, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Buffer overflow\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fxls8962af_fifo_flush\00", [42 x i8] zeroinitializer }, align 32
@fxls8962af_fifo_flush._entry_ptr = internal global ptr @fxls8962af_fifo_flush._entry, section ".printk_index", align 4
@fxls8962af_fifo_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 921, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error transferring data from fifo: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fxls8962af_fifo_transfer\00", [39 x i8] zeroinitializer }, align 32
@fxls8962af_fifo_transfer._entry_ptr = internal global ptr @fxls8962af_fifo_transfer._entry, section ".printk_index", align 4
@fxls8962af_runtime_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 1252, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"powering off device failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fxls8962af_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@fxls8962af_runtime_suspend._entry_ptr = internal global ptr @fxls8962af_runtime_suspend._entry, section ".printk_index", align 4
@switch.table.fxls8962af_irq_setup = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 98, i64 132]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 12]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 9]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.39 = internal global [6 x i64] [i64 4, i64 32, i64 9610517, i64 19122967, i64 38344001, i64 76589936]
@__sancov_gen_cov_switch_values.40 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 3, i64 6, i64 12, i64 25, i64 50, i64 100, i64 200, i64 400, i64 800, i64 1600, i64 3200]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"fxls8962af_i2c_regmap_conf\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 176, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"fxls8962af_spi_regmap_conf\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 183, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1174, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1177, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1181, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"fxls_chip_info_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 755, i32 42 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1200, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"fxls8962af_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 770, i32 30 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"fxls8962af_buffer_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 877, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1238, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"fxls8962af_pm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1304, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 758, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [20 x i8] c"fxls8962af_channels\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 747, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 764, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"fxls8962af_event\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 695, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 274, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 210, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 223, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"fxls8962af_scale_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 139, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant [27 x i8] c"fxls8962af_samp_freq_table\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 146, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 799, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1106, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1127, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1137, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1078, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 942, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 921, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [39 x i8] c"../drivers/iio/accel/fxls8962af-core.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 1252, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"switch.table.fxls8962af_irq_setup\00", align 1
@llvm.compiler.used = appending global [72 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description325, ptr @__UNIQUE_ID_file326, ptr @__UNIQUE_ID_license327, ptr @__ksymtab_fxls8962af_core_probe, ptr @__ksymtab_fxls8962af_i2c_regmap_conf, ptr @__ksymtab_fxls8962af_pm_ops, ptr @__ksymtab_fxls8962af_spi_regmap_conf, ptr @fxls8962af_core_probe._entry, ptr @fxls8962af_core_probe._entry.7, ptr @fxls8962af_core_probe._entry_ptr, ptr @fxls8962af_core_probe._entry_ptr.9, ptr @fxls8962af_fifo_flush._entry, ptr @fxls8962af_fifo_flush._entry_ptr, ptr @fxls8962af_fifo_transfer._entry, ptr @fxls8962af_fifo_transfer._entry_ptr, ptr @fxls8962af_get_out._entry, ptr @fxls8962af_get_out._entry_ptr, ptr @fxls8962af_irq_setup._entry, ptr @fxls8962af_irq_setup._entry.23, ptr @fxls8962af_irq_setup._entry_ptr, ptr @fxls8962af_irq_setup._entry_ptr.26, ptr @fxls8962af_power_off._entry, ptr @fxls8962af_power_off._entry_ptr, ptr @fxls8962af_power_on._entry, ptr @fxls8962af_power_on._entry_ptr, ptr @fxls8962af_reset._entry, ptr @fxls8962af_reset._entry_ptr, ptr @fxls8962af_runtime_suspend._entry, ptr @fxls8962af_runtime_suspend._entry_ptr, ptr @fxls8962af_i2c_regmap_conf, ptr @fxls8962af_spi_regmap_conf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @fxls_chip_info_table, ptr @.str.8, ptr @fxls8962af_info, ptr @fxls8962af_buffer_ops, ptr @.str.10, ptr @fxls8962af_pm_ops, ptr @.str.11, ptr @fxls8962af_channels, ptr @.str.12, ptr @fxls8962af_event, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fxls8962af_scale_table, ptr @fxls8962af_samp_freq_table, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @switch.table.fxls8962af_irq_setup], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_i2c_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_spi_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_core_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls_chip_info_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_core_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_buffer_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_event to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_get_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_scale_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_samp_freq_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_irq_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_fifo_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_fifo_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fxls8962af_runtime_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fxls8962af_irq_setup to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fxls8962af_core_probe(ptr noundef %dev, ptr noundef %regmap, i32 noundef %irq) #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !115
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 96) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regmap, ptr %2, align 8
  %irq3 = getelementptr inbounds %struct.fxls8962af_data, ptr %2, i32 0, i32 7
  %5 = ptrtoint ptr %irq3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %irq, ptr %irq3, align 4
  %orientation = getelementptr inbounds %struct.fxls8962af_data, ptr %2, i32 0, i32 6
  %call4 = tail call i32 @iio_read_mount_matrix(ptr noundef %dev, ptr noundef %orientation) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str) #10
  %vdd_reg = getelementptr inbounds %struct.fxls8962af_data, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %vdd_reg, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call8 to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call17 = tail call i32 @regulator_enable(ptr noundef %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call17) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @fxls8962af_regulator_disable, ptr noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end24, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_reg, align 8
  %call.i150 = tail call i32 @regulator_disable(ptr noundef %9) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 8
  %call26 = call i32 @regmap_read(ptr noundef %11, i32 noundef 19, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.cond.preheader, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end24
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end40 [
    i32 98, label %for.cond.preheader.if.end41_crit_edge
    i32 132, label %if.end41.fold.split
  ]

for.cond.preheader.if.end41_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end40:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #13
  br label %cleanup

if.end41.fold.split:                              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.end41.fold.split, %for.cond.preheader.if.end41_crit_edge
  %i.0153.lcssa = phi i32 [ 0, %for.cond.preheader.if.end41_crit_edge ], [ 1, %if.end41.fold.split ]
  %arrayidx = getelementptr [2 x %struct.fxls8962af_chip_info], ptr @fxls_chip_info_table, i32 0, i32 %i.0153.lcssa
  %chip_info = getelementptr inbounds %struct.fxls8962af_data, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx, ptr %chip_info, align 4
  %chip_info42 = getelementptr inbounds %struct.fxls8962af_data, ptr %2, i32 0, i32 1
  %channels = getelementptr [2 x %struct.fxls8962af_chip_info], ptr @fxls_chip_info_table, i32 0, i32 %i.0153.lcssa, i32 1
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channels, align 4
  %channels43 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %channels43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %channels43, align 8
  %19 = ptrtoint ptr %chip_info42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info42, align 4
  %num_channels = getelementptr inbounds %struct.fxls8962af_chip_info, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_channels, align 4
  %num_channels45 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %num_channels45, align 4
  %24 = load ptr, ptr %chip_info42, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %name47 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %27 = ptrtoint ptr %name47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %name47, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %28 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @fxls8962af_info, ptr %info, align 8
  %29 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %call, align 8
  %call48 = call fastcc i32 @fxls8962af_reset(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool52.not = icmp eq i32 %irq, 0
  br i1 %tobool52.not, label %if.end51.if.end62_crit_edge, label %if.then53

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.then53:                                        ; preds = %if.end51
  %call54 = call fastcc i32 @fxls8962af_irq_setup(ptr noundef nonnull %call, i32 noundef %irq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then53.cleanup_crit_edge

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %if.then53
  %call58 = call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @fxls8962af_buffer_ops, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end57.if.end62_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

if.end62:                                         ; preds = %if.end57.if.end62_crit_edge, %if.end51.if.end62_crit_edge
  %call.i144 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool64.not = icmp eq i32 %call.i144, 0
  br i1 %tobool64.not, label %if.end66, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  call void @pm_runtime_enable(ptr noundef %dev) #10
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i145 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @fxls8962af_pm_disable, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i146 = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i146, label %if.end70, label %devm_add_action_or_reset.exit148

devm_add_action_or_reset.exit148:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  call void @fxls8962af_pm_disable(ptr noundef %dev) #10, !callees !116
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %call.i149 = call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br i1 %call.i149, label %if.then72, label %if.end70.if.end74_crit_edge

if.end70.if.end74_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then72:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  %call73 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end70.if.end74_crit_edge
  %call75 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %devm_add_action_or_reset.exit148, %if.end62.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end40, %if.end24.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ %call17, %do.end ], [ -6, %do.end40 ], [ %call75, %if.end74 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call26, %if.end24.cleanup_crit_edge ], [ %call48, %if.end41.cleanup_crit_edge ], [ %call54, %if.then53.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call.i144, %if.end62.cleanup_crit_edge ], [ %call.i145, %devm_add_action_or_reset.exit148 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_mount_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fxls8962af_regulator_disable(ptr nocapture noundef readonly %data_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd_reg = getelementptr inbounds %struct.fxls8962af_data, ptr %data_ptr, i32 0, i32 2
  %0 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd_reg, align 8
  %call = tail call i32 @regulator_disable(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxls8962af_reset(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !115
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 21, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @ktime_get() #10
  %add.i = add i64 %call3, 18000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 797) #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call1467 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1467)
  %tobool15.not68 = icmp eq i32 %call1467, 0
  br i1 %tobool15.not68, label %if.end.lor.lhs.false_crit_edge, label %if.end.lor.end_crit_edge

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @ktime_get() #10
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %call14 = call i32 @regmap_read(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %reg) #10
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then28.lor.lhs.false_crit_edge, label %if.then28.lor.end_crit_edge

if.then28.lor.end_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

if.then28.lor.lhs.false_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %call25 = call i32 @regmap_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool30.not = icmp eq i32 %call25, 0
  br i1 %tobool30.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and31 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %lor.rhs.do.end40_crit_edge, label %lor.rhs.cleanup_crit_edge

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.rhs.do.end40_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then28.lor.end_crit_edge, %if.end.lor.end_crit_edge
  %tobool30.not60 = phi i32 [ %call25, %for.end.lor.end_crit_edge ], [ %call1467, %if.end.lor.end_crit_edge ], [ %call14, %if.then28.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %tobool30.not60)
  %cmp36 = icmp eq i32 %tobool30.not60, -110
  br i1 %cmp36, label %lor.end.do.end40_crit_edge, label %lor.end.cleanup_crit_edge

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.end.do.end40_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end40:                                         ; preds = %lor.end.do.end40_crit_edge, %lor.rhs.do.end40_crit_edge
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.19, i32 noundef %16) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %lor.end.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -110, %do.end40 ], [ %tobool30.not60, %lor.end.cleanup_crit_edge ], [ 0, %lor.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxls8962af_irq_setup(ptr noundef %indio_dev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call ptr @regmap_get_device(ptr noundef %3) #10
  %of_node = getelementptr inbounds %struct.device, ptr %call1, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_irq_get_byname(ptr noundef %5, ptr noundef nonnull @.str.28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %spec.select = select i1 %cmp.i, i32 255, i32 0
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 33, i32 noundef 255, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not = icmp eq i32 %call.i95, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @irq_get_irq_data(i32 noundef %irq) #10
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call5, i32 0, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and.i = and i32 %11, 15
  %switch.tableidx = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 8
  br i1 %12, label %switch.hole_check, label %if.end.do.end12_crit_edge

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end12:                                         ; preds = %switch.hole_check.do.end12_crit_edge, %if.end.do.end12_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %call1, ptr noundef nonnull @.str.24, i32 noundef %and.i) #13
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %13 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %switch.lobit.not = icmp eq i8 %13, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end12_crit_edge, label %switch.lookup

switch.hole_check.do.end12_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.fxls8962af_irq_setup, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call.i96 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 24, i32 noundef 1, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool40.not = icmp eq i32 %call.i96, 0
  br i1 %tobool40.not, label %if.end42, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end42:                                         ; preds = %switch.lookup
  %call.i97 = tail call zeroext i1 @device_property_present(ptr noundef %call1, ptr noundef nonnull @.str.27) #10
  br i1 %call.i97, label %if.then44, label %if.end42.if.end66_crit_edge

if.end42.if.end66_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then44:                                        ; preds = %if.end42
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 24, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool63.not = icmp eq i32 %call.i98, 0
  br i1 %tobool63.not, label %if.end65, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end65:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and.i, 128
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end42.if.end66_crit_edge
  %irq_type.0 = phi i32 [ %or, %if.end65 ], [ %and.i, %if.end42.if.end66_crit_edge ]
  %or67 = or i32 %irq_type.0, 8192
  %name = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 15
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 8
  %call68 = tail call i32 @devm_request_threaded_irq(ptr noundef %call1, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @fxls8962af_interrupt, i32 noundef %or67, ptr noundef %20, ptr noundef %indio_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then44.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end12 ], [ %call68, %if.end66 ], [ %call.i95, %entry.cleanup_crit_edge ], [ %call.i96, %switch.lookup.cleanup_crit_edge ], [ %call.i98, %if.then44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fxls8962af_pm_disable(ptr noundef %dev_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_ptr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev_ptr, i1 noundef zeroext true) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev_ptr, i32 noundef 2) #10
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev_ptr, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !118
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_suspend(ptr noundef %dev) #0 align 64 {
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
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %enable_event = getelementptr inbounds %struct.fxls8962af_data, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.fxls8962af_data, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 1) #10
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %12, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @fxls8962af_buffer_predisable(ptr noundef %1)
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i14 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i14, label %if.else.if.end8_crit_edge, label %do.end.i

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end.i, %if.else.if.end8_crit_edge, %if.then5, %if.then.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %land.lhs.true

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %device_may_wakeup.exit
  %enable_event = getelementptr inbounds %struct.fxls8962af_data, ptr %3, i32 0, i32 9
  %7 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %irq = getelementptr inbounds %struct.fxls8962af_data, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #10
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %12, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then.if.end8_crit_edge, label %if.then5

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 @fxls8962af_buffer_postenable(ptr noundef %1)
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5, %if.then.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_runtime_suspend(ptr noundef %dev) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #0 align 64 {
entry:
  %reg.i22 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %raw_val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb3
    i32 2, label %sw.bb5
    i32 12, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %4, label %sw.bb.cleanup_crit_edge [
    i32 9, label %sw.bb.sw.bb1_crit_edge
    i32 3, label %sw.bb.sw.bb1_crit_edge27
  ]

sw.bb.sw.bb1_crit_edge27:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.sw.bb1_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb.sw.bb1_crit_edge, %sw.bb.sw.bb1_crit_edge27
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %raw_val.i) #10
  %8 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %raw_val.i, align 2, !annotation !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #10
  %9 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !115
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 21, ptr noundef nonnull %reg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %fxls8962af_is_active.exit.i, label %if.end5.i

fxls8962af_is_active.exit.i:                      ; preds = %sw.bb1
  %12 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  br i1 %tobool.not.i, label %if.then.i, label %if.end5.thread50.i

if.end5.thread50.i:                               ; preds = %fxls8962af_is_active.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %address52.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %16 = ptrtoint ptr %address52.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address52.i, align 4
  %call753.i = call i32 @regmap_bulk_read(ptr noundef %15, i32 noundef %17, ptr noundef nonnull %raw_val.i, i32 noundef 2) #10
  br label %if.end11.i

if.then.i:                                        ; preds = %fxls8962af_is_active.exit.i
  %call.i31.i = call ptr @regmap_get_device(ptr noundef %15) #10
  %call.i.i.i = call i32 @__pm_runtime_resume(ptr noundef %call.i31.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then9.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %usage_count.i.i.i.i = getelementptr inbounds %struct.device, ptr %call.i31.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i.i, i32 1, i32 3, i32 1) #10
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i.i, ptr %usage_count.i.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i.i) #10, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.then.i.i.i.fxls8962af_power_on.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.then.i.i.i.fxls8962af_power_on.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_power_on.exit.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  br label %fxls8962af_power_on.exit.i

fxls8962af_power_on.exit.i:                       ; preds = %do.end11.i.i.i.i.i.i.i, %if.then.i.i.i.fxls8962af_power_on.exit.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i31.i, ptr noundef nonnull @.str.15) #13
  br label %fxls8962af_get_out.exit

if.end5.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #10
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %address.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %21 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address.i, align 4
  %call7.i = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %raw_val.i, i32 noundef 2) #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.then.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %address44.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %25 = ptrtoint ptr %address44.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address44.i, align 4
  %call745.i = call i32 @regmap_bulk_read(ptr noundef %24, i32 noundef %26, ptr noundef nonnull %raw_val.i, i32 noundef 2) #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %call.i33.i = call ptr @regmap_get_device(ptr noundef %28) #10
  %call.i.i34.i = call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i.i = getelementptr inbounds %struct.device, ptr %call.i33.i, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i.i34.i, ptr %last_busy.i.i.i, align 8
  %call.i5.i.i = call i32 @__pm_runtime_suspend(ptr noundef %call.i33.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %tobool.not.i35.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %tobool.not.i35.i, label %if.then9.i.if.end11.i_crit_edge, label %do.end.i36.i

if.then9.i.if.end11.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

do.end.i36.i:                                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i33.i, ptr noundef nonnull @.str.17) #13
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end.i36.i, %if.then9.i.if.end11.i_crit_edge, %if.end5.i, %if.end5.thread50.i
  %call748.i = phi i32 [ %call7.i, %if.end5.i ], [ %call753.i, %if.end5.thread50.i ], [ %call745.i, %if.then9.i.if.end11.i_crit_edge ], [ %call745.i, %do.end.i36.i ]
  %address46.i = phi ptr [ %address.i, %if.end5.i ], [ %address52.i, %if.end5.thread50.i ], [ %address44.i, %if.then9.i.if.end11.i_crit_edge ], [ %address44.i, %do.end.i36.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call748.i)
  %tobool12.not.i = icmp eq i32 %call748.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %do.end.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %address46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %address46.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.13, i32 noundef %31) #13
  br label %fxls8962af_get_out.exit

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %raw_val.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %raw_val.i, align 2
  %34 = call i16 @llvm.bswap.i16(i16 %33) #10
  %conv.i = zext i16 %34 to i32
  %realbits.i = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %realbits.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %realbits.i, align 1
  %37 = sub i8 32, %36
  %conv1.i.i = zext i8 %37 to i32
  %shl.i.i = shl i32 %conv.i, %conv1.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv1.i.i
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr.i.i, ptr %val, align 4
  br label %fxls8962af_get_out.exit

fxls8962af_get_out.exit:                          ; preds = %if.end15.i, %do.end.i, %fxls8962af_power_on.exit.i
  %retval.0.i = phi i32 [ %call748.i, %do.end.i ], [ 1, %if.end15.i ], [ %call.i.i.i, %fxls8962af_power_on.exit.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %raw_val.i) #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %40)
  %cmp.not = icmp eq i32 %40, 9
  br i1 %cmp.not, label %if.end, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 25, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #10
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %reg.i, align 4, !annotation !115
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 8
  %call.i18 = call i32 @regmap_read(ptr noundef %45, i32 noundef 21, ptr noundef nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %do.end12.i, label %sw.bb5.fxls8962af_read_full_scale.exit_crit_edge

sw.bb5.fxls8962af_read_full_scale.exit_crit_edge: ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_read_full_scale.exit

do.end12.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reg.i, align 4
  %48 = lshr i32 %47, 1
  %conv.i20 = and i32 %48, 3
  %arrayidx13.i = getelementptr [4 x [2 x i32]], ptr @fxls8962af_scale_table, i32 0, i32 %conv.i20, i32 1
  %49 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx13.i, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val2, align 4
  br label %fxls8962af_read_full_scale.exit

fxls8962af_read_full_scale.exit:                  ; preds = %do.end12.i, %sw.bb5.fxls8962af_read_full_scale.exit_crit_edge
  %retval.0.i21 = phi i32 [ 3, %do.end12.i ], [ %call.i18, %sw.bb5.fxls8962af_read_full_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i22) #10
  %52 = ptrtoint ptr %reg.i22 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %reg.i22, align 4, !annotation !115
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %call.i23 = call i32 @regmap_read(ptr noundef %54, i32 noundef 23, ptr noundef nonnull %reg.i22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool.not.i24, label %do.end12.i25, label %sw.bb7.fxls8962af_read_samp_freq.exit_crit_edge

sw.bb7.fxls8962af_read_samp_freq.exit_crit_edge:  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_read_samp_freq.exit

do.end12.i25:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %reg.i22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg.i22, align 4
  %57 = lshr i32 %56, 4
  %idxprom.i = and i32 %57, 15
  %arrayidx.i = getelementptr [13 x [2 x i32]], ptr @fxls8962af_samp_freq_table, i32 0, i32 %idxprom.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val, align 4
  %arrayidx16.i = getelementptr [13 x [2 x i32]], ptr @fxls8962af_samp_freq_table, i32 0, i32 %idxprom.i, i32 1
  %61 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx16.i, align 4
  %63 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %val2, align 4
  br label %fxls8962af_read_samp_freq.exit

fxls8962af_read_samp_freq.exit:                   ; preds = %do.end12.i25, %sw.bb7.fxls8962af_read_samp_freq.exit_crit_edge
  %retval.0.i26 = phi i32 [ 2, %do.end12.i25 ], [ %call.i23, %sw.bb7.fxls8962af_read_samp_freq.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i22) #10
  br label %cleanup

cleanup:                                          ; preds = %fxls8962af_read_samp_freq.exit, %fxls8962af_read_full_scale.exit, %if.end, %sw.bb3.cleanup_crit_edge, %fxls8962af_get_out.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i26, %fxls8962af_read_samp_freq.exit ], [ %retval.0.i21, %fxls8962af_read_full_scale.exit ], [ 1, %if.end ], [ %retval.0.i, %fxls8962af_get_out.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fxls8962af_read_avail(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %vals, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %length, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %mask, label %entry.return_crit_edge [
    i32 2, label %entry.return.sink.split_crit_edge
    i32 12, label %sw.bb1
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb1, %entry.return.sink.split_crit_edge
  %.sink5 = phi i32 [ 2, %sw.bb1 ], [ 3, %entry.return.sink.split_crit_edge ]
  %fxls8962af_samp_freq_table.sink = phi ptr [ @fxls8962af_samp_freq_table, %sw.bb1 ], [ @fxls8962af_scale_table, %entry.return.sink.split_crit_edge ]
  %.sink = phi i32 [ 26, %sw.bb1 ], [ 8, %entry.return.sink.split_crit_edge ]
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink5, ptr %type, align 4
  %2 = ptrtoint ptr %vals to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fxls8962af_samp_freq_table.sink, ptr %vals, align 4
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %length, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_write_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not = icmp eq i32 %val, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %val2, label %if.end3.cleanup.sink.split_crit_edge [
    i32 9610517, label %if.end3.do.end19.i_crit_edge
    i32 19122967, label %do.end19.fold.split.i
    i32 38344001, label %do.end19.fold.split36.i
    i32 76589936, label %do.end19.fold.split37.i
  ]

if.end3.do.end19.i_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

do.end19.fold.split.i:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

do.end19.fold.split36.i:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

do.end19.fold.split37.i:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i

do.end19.i:                                       ; preds = %do.end19.fold.split37.i, %do.end19.fold.split36.i, %do.end19.fold.split.i, %if.end3.do.end19.i_crit_edge
  %i.032.lcssa.i = phi i8 [ 0, %if.end3.do.end19.i_crit_edge ], [ 2, %do.end19.fold.split.i ], [ 4, %do.end19.fold.split36.i ], [ 6, %do.end19.fold.split37.i ]
  %call.i = tail call fastcc i32 @fxls8962af_update_config(ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext %i.032.lcssa.i) #10
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %val, label %if.end9.cleanup.sink.split_crit_edge [
    i32 3200, label %land.lhs.true.i
    i32 1600, label %land.lhs.true.1.i
    i32 800, label %land.lhs.true.2.i
    i32 400, label %land.lhs.true.3.i
    i32 200, label %land.lhs.true.4.i
    i32 100, label %land.lhs.true.5.i
    i32 50, label %land.lhs.true.6.i
    i32 25, label %land.lhs.true.7.i
    i32 12, label %land.lhs.true.8.i
    i32 6, label %land.lhs.true.9.i
    i32 3, label %land.lhs.true.10.i
    i32 1, label %land.lhs.true.11.i
    i32 0, label %land.lhs.true.12.i
  ]

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.i, label %land.lhs.true.i.do.end22.i_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.i.do.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.1.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 0
  br i1 %cmp5.1.i, label %land.lhs.true.1.i.do.end22.i_crit_edge, label %land.lhs.true.1.i.cleanup.sink.split_crit_edge

land.lhs.true.1.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.1.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.2.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i, label %land.lhs.true.2.i.do.end22.i_crit_edge, label %land.lhs.true.2.i.cleanup.sink.split_crit_edge

land.lhs.true.2.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.2.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.3.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %land.lhs.true.3.i.do.end22.i_crit_edge, label %land.lhs.true.3.i.cleanup.sink.split_crit_edge

land.lhs.true.3.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.3.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.4.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.4.i = icmp eq i32 %val2, 0
  br i1 %cmp5.4.i, label %land.lhs.true.4.i.do.end22.i_crit_edge, label %land.lhs.true.4.i.cleanup.sink.split_crit_edge

land.lhs.true.4.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.4.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.5.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.5.i = icmp eq i32 %val2, 0
  br i1 %cmp5.5.i, label %land.lhs.true.5.i.do.end22.i_crit_edge, label %land.lhs.true.5.i.cleanup.sink.split_crit_edge

land.lhs.true.5.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.5.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.6.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.6.i = icmp eq i32 %val2, 0
  br i1 %cmp5.6.i, label %land.lhs.true.6.i.do.end22.i_crit_edge, label %land.lhs.true.6.i.cleanup.sink.split_crit_edge

land.lhs.true.6.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.6.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.7.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.7.i = icmp eq i32 %val2, 0
  br i1 %cmp5.7.i, label %land.lhs.true.7.i.do.end22.i_crit_edge, label %land.lhs.true.7.i.cleanup.sink.split_crit_edge

land.lhs.true.7.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.7.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.8.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %val2)
  %cmp5.8.i = icmp eq i32 %val2, 500000
  br i1 %cmp5.8.i, label %land.lhs.true.8.i.do.end22.i_crit_edge, label %land.lhs.true.8.i.cleanup.sink.split_crit_edge

land.lhs.true.8.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.8.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.9.i:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.9.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.9.i, label %land.lhs.true.9.i.do.end22.i_crit_edge, label %land.lhs.true.9.i.cleanup.sink.split_crit_edge

land.lhs.true.9.i.cleanup.sink.split_crit_edge:   ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.9.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true.9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.10.i:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %val2)
  %cmp5.10.i = icmp eq i32 %val2, 125000
  br i1 %cmp5.10.i, label %land.lhs.true.10.i.do.end22.i_crit_edge, label %land.lhs.true.10.i.cleanup.sink.split_crit_edge

land.lhs.true.10.i.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.10.i.do.end22.i_crit_edge:          ; preds = %land.lhs.true.10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.11.i:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 563000, i32 %val2)
  %cmp5.11.i = icmp eq i32 %val2, 563000
  br i1 %cmp5.11.i, label %land.lhs.true.11.i.do.end22.i_crit_edge, label %land.lhs.true.11.i.cleanup.sink.split_crit_edge

land.lhs.true.11.i.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.11.i.do.end22.i_crit_edge:          ; preds = %land.lhs.true.11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

land.lhs.true.12.i:                               ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 781000, i32 %val2)
  %cmp5.12.i = icmp eq i32 %val2, 781000
  br i1 %cmp5.12.i, label %land.lhs.true.12.i.do.end22.i_crit_edge, label %land.lhs.true.12.i.cleanup.sink.split_crit_edge

land.lhs.true.12.i.cleanup.sink.split_crit_edge:  ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

land.lhs.true.12.i.do.end22.i_crit_edge:          ; preds = %land.lhs.true.12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end22.i:                                       ; preds = %land.lhs.true.12.i.do.end22.i_crit_edge, %land.lhs.true.11.i.do.end22.i_crit_edge, %land.lhs.true.10.i.do.end22.i_crit_edge, %land.lhs.true.9.i.do.end22.i_crit_edge, %land.lhs.true.8.i.do.end22.i_crit_edge, %land.lhs.true.7.i.do.end22.i_crit_edge, %land.lhs.true.6.i.do.end22.i_crit_edge, %land.lhs.true.5.i.do.end22.i_crit_edge, %land.lhs.true.4.i.do.end22.i_crit_edge, %land.lhs.true.3.i.do.end22.i_crit_edge, %land.lhs.true.2.i.do.end22.i_crit_edge, %land.lhs.true.1.i.do.end22.i_crit_edge, %land.lhs.true.i.do.end22.i_crit_edge
  %i.034.lcssa.i = phi i8 [ 0, %land.lhs.true.i.do.end22.i_crit_edge ], [ 16, %land.lhs.true.1.i.do.end22.i_crit_edge ], [ 32, %land.lhs.true.2.i.do.end22.i_crit_edge ], [ 48, %land.lhs.true.3.i.do.end22.i_crit_edge ], [ 64, %land.lhs.true.4.i.do.end22.i_crit_edge ], [ 80, %land.lhs.true.5.i.do.end22.i_crit_edge ], [ 96, %land.lhs.true.6.i.do.end22.i_crit_edge ], [ 112, %land.lhs.true.7.i.do.end22.i_crit_edge ], [ -128, %land.lhs.true.8.i.do.end22.i_crit_edge ], [ -112, %land.lhs.true.9.i.do.end22.i_crit_edge ], [ -96, %land.lhs.true.10.i.do.end22.i_crit_edge ], [ -80, %land.lhs.true.11.i.do.end22.i_crit_edge ], [ -64, %land.lhs.true.12.i.do.end22.i_crit_edge ]
  %call.i24 = tail call fastcc i32 @fxls8962af_update_config(ptr noundef %1, i8 noundef zeroext 23, i8 noundef zeroext -16, i8 noundef zeroext %i.034.lcssa.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end22.i, %land.lhs.true.12.i.cleanup.sink.split_crit_edge, %land.lhs.true.11.i.cleanup.sink.split_crit_edge, %land.lhs.true.10.i.cleanup.sink.split_crit_edge, %land.lhs.true.9.i.cleanup.sink.split_crit_edge, %land.lhs.true.8.i.cleanup.sink.split_crit_edge, %land.lhs.true.7.i.cleanup.sink.split_crit_edge, %land.lhs.true.6.i.cleanup.sink.split_crit_edge, %land.lhs.true.5.i.cleanup.sink.split_crit_edge, %land.lhs.true.4.i.cleanup.sink.split_crit_edge, %land.lhs.true.3.i.cleanup.sink.split_crit_edge, %land.lhs.true.2.i.cleanup.sink.split_crit_edge, %land.lhs.true.1.i.cleanup.sink.split_crit_edge, %land.lhs.true.i.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %do.end19.i, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %do.end19.i ], [ -22, %if.end3.cleanup.sink.split_crit_edge ], [ %call.i24, %do.end22.i ], [ -22, %land.lhs.true.12.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.11.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.10.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.9.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.8.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.7.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.6.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.5.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.4.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.3.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.2.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.1.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true.i.cleanup.sink.split_crit_edge ], [ -22, %if.end9.cleanup.sink.split_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call6, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fxls8962af_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %switch.selectcmp = icmp eq i32 %mask, 12
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch.selectcmp2 = icmp eq i32 %mask, 2
  %switch.select3 = select i1 %switch.selectcmp2, i32 3, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fxls8962af_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.idx.cast = trunc i32 %switch.tableidx to i8
  %switch.offset = sub i8 5, %switch.idx.cast
  %enable_event12 = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %enable_event12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_event12, align 1
  %7 = lshr i8 %6, %switch.offset
  %.lobit = and i8 %7, 1
  %8 = zext i8 %.lobit to i32
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %8, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_write_event_config(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 528416, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %enable_event7 = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %enable_event7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enable_event7, align 1
  %conv6 = or i8 %6, %switch.masked
  %7 = xor i8 %switch.masked, -1
  %conv10 = and i8 %6, %7
  %enable_event.0 = select i1 %tobool.not, i8 %conv10, i8 %conv6
  %enable_event12 = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %enable_event.0)
  %cmp15 = icmp eq i8 %6, %enable_event.0
  br i1 %cmp15, label %switch.lookup.cleanup_crit_edge, label %if.end18

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %switch.lookup
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %10 = or i8 %enable_event.0, -128
  %or24 = zext i8 %10 to i32
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call25 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 47, i32 noundef %or24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable_event.0)
  %tobool30.not = icmp eq i8 %enable_event.0, 0
  %cond = select i1 %tobool30.not, i32 0, i32 224
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call32 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 48, i32 noundef %cond) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %spec.select.i = select i1 %tobool.not, i32 0, i32 32
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call.i.i86 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 32, i32 noundef 32, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86)
  %tobool37.not = icmp eq i32 %call.i.i86, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %17 = ptrtoint ptr %enable_event12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %enable_event.0, ptr %enable_event12, align 1
  br i1 %tobool30.not, label %if.else46, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i.i87 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %call45 = tail call fastcc i32 @fxls8962af_power_on(ptr noundef %1)
  br label %cleanup

if.else46:                                        ; preds = %if.end39
  %call47 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.else46.cleanup_crit_edge

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call fastcc i32 @fxls8962af_power_off(ptr noundef %1)
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.else46.cleanup_crit_edge, %if.then43, %if.end35.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %switch.lookup.cleanup_crit_edge ], [ %call.i.i, %if.end18.cleanup_crit_edge ], [ %call25, %if.end22.cleanup_crit_edge ], [ %call32, %if.end28.cleanup_crit_edge ], [ %call.i.i86, %if.end35.cleanup_crit_edge ], [ %call47, %if.else46.cleanup_crit_edge ], [ %call45, %if.then43 ], [ %call51, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %dir, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %lower_thres = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 10
  %call1 = tail call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 51, ptr noundef %lower_thres, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %lower_thres to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lower_thres, align 2
  %conv = zext i16 %6 to i32
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %realbits, align 1
  %9 = sub i8 32, %8
  %conv1.i = zext i8 %9 to i32
  %shl.i = shl i32 %conv, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %upper_thres = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 11
  %call9 = tail call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 53, ptr noundef %upper_thres, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %upper_thres to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %upper_thres, align 4
  %conv14 = zext i16 %13 to i32
  %realbits16 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits16, align 1
  %16 = sub i8 32, %15
  %conv1.i32 = zext i8 %16 to i32
  %shl.i33 = shl i32 %conv14, %conv1.i32
  %shr.i34 = ashr i32 %shl.i33, %conv1.i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %if.end3
  %shr.i34.sink = phi i32 [ %shr.i34, %if.end12 ], [ %shr.i, %if.end3 ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr.i34.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call9, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 1, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp ne i32 %type, 0
  %2 = add i32 %val, -2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %2)
  %3 = icmp ult i32 %2, -4096
  %or.cond = or i1 %cmp.not, %3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %enable_event = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %and = and i32 %val, 4095
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #10
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i, align 4, !annotation !115
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 21, ptr noundef nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %fxls8962af_is_active.exit, label %fxls8962af_is_active.exit.thread

fxls8962af_is_active.exit.thread:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  br label %if.then9

fxls8962af_is_active.exit:                        ; preds = %if.end6
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %10, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not = icmp eq i32 %and.i, 0
  br i1 %tobool8.not, label %if.else, label %fxls8962af_is_active.exit.if.then9_crit_edge

fxls8962af_is_active.exit.if.then9_crit_edge:     ; preds = %fxls8962af_is_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %fxls8962af_is_active.exit.if.then9_crit_edge, %fxls8962af_is_active.exit.thread
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %call14 = call fastcc i32 @__fxls8962af_set_thresholds(ptr noundef %1, i32 noundef %dir, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %call.i.i35 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

if.else:                                          ; preds = %fxls8962af_is_active.exit
  %15 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %dir, label %if.else.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = trunc i32 %and to i16
  %lower_thres.i = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %lower_thres.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %lower_thres.i, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i36 = call i32 @regmap_bulk_write(ptr noundef %18, i32 noundef 51, ptr noundef %lower_thres.i, i32 noundef 2) #10
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv3.i = trunc i32 %and to i16
  %upper_thres.i = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %upper_thres.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv3.i, ptr %upper_thres.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call6.i = call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 53, ptr noundef %upper_thres.i, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2.i, %sw.bb.i, %if.else.cleanup_crit_edge, %if.end17, %if.end13.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i35, %if.end17 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end4.cleanup_crit_edge ], [ %call.i.i, %if.then9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call6.i, %sw.bb2.i ], [ %call.i36, %sw.bb.i ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fxls8962af_set_watermark(ptr nocapture noundef readonly %indio_dev, i32 noundef %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = tail call i32 @llvm.umin.i32(i32 %val, i32 32)
  %conv = trunc i32 %2 to i8
  %watermark = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %watermark to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %watermark, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxls8962af_power_on(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %call, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !118
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.15) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %retval.0.i7 = phi i32 [ %call.i, %do.end ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %retval.0.i7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxls8962af_power_off(ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %call = tail call ptr @regmap_get_device(ptr noundef %1) #10
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i5 = tail call i32 @__pm_runtime_suspend(ptr noundef %call, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool.not = icmp eq i32 %call.i5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call, ptr noundef nonnull @.str.17) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fxls8962af_update_config(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #10
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !115
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 8
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 21, ptr noundef nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %fxls8962af_is_active.exit, label %fxls8962af_is_active.exit.thread

fxls8962af_is_active.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  br label %if.then

fxls8962af_is_active.exit:                        ; preds = %entry
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %fxls8962af_is_active.exit.if.end4_crit_edge, label %fxls8962af_is_active.exit.if.then_crit_edge

fxls8962af_is_active.exit.if.then_crit_edge:      ; preds = %fxls8962af_is_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

fxls8962af_is_active.exit.if.end4_crit_edge:      ; preds = %fxls8962af_is_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then:                                          ; preds = %fxls8962af_is_active.exit.if.then_crit_edge, %fxls8962af_is_active.exit.thread
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %fxls8962af_is_active.exit.if.end4_crit_edge
  %tobool.not33 = phi i1 [ false, %if.then.if.end4_crit_edge ], [ true, %fxls8962af_is_active.exit.if.end4_crit_edge ]
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 8
  %conv = zext i8 %reg to i32
  %conv5 = zext i8 %mask to i32
  %conv6 = zext i8 %val to i32
  %call.i28 = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %conv, i32 noundef %conv5, i32 noundef %conv6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool8.not = icmp eq i32 %call.i28, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  br i1 %tobool.not33, label %if.end10.if.end17_crit_edge, label %if.then12

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then12:                                        ; preds = %if.end10
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 8
  %call.i.i29 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool14.not = icmp eq i32 %call.i.i29, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then12.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call.i28, %if.end4.cleanup_crit_edge ], [ %call.i.i29, %if.then12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__fxls8962af_set_thresholds(ptr noundef %data, i32 noundef %dir, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %dir, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = trunc i32 %val to i16
  %lower_thres = getelementptr inbounds %struct.fxls8962af_data, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %lower_thres to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %lower_thres, align 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %call = tail call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 51, ptr noundef %lower_thres, i32 noundef 2) #10
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv3 = trunc i32 %val to i16
  %upper_thres = getelementptr inbounds %struct.fxls8962af_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %upper_thres to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv3, ptr %upper_thres, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 8
  %call6 = tail call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 53, ptr noundef %upper_thres, i32 noundef 2) #10
  br label %return

return:                                           ; preds = %sw.bb2, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_interrupt(i32 noundef %irq, ptr noundef %p) #0 align 64 {
entry:
  %reg.i24 = alloca i32, align 4
  %buffer.i = alloca [96 x i16], align 2
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !115
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %call1.i = call ptr @regmap_get_device(ptr noundef %10) #10
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %buffer.i) #10
  %11 = call ptr @memset(ptr %buffer.i, i32 255, i32 192)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #10
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i, align 4, !annotation !115
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 8
  %call3.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 11, ptr noundef nonnull %reg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.fxls8962af_fifo_flush.exit_crit_edge

if.then3.fxls8962af_fifo_flush.exit_crit_edge:    ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_fifo_flush.exit

if.end.i:                                         ; preds = %if.then3
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %fxls8962af_fifo_flush.exit.thread33

fxls8962af_fifo_flush.exit.thread33:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call1.i, ptr noundef nonnull @.str.29) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %buffer.i) #10
  br label %52

if.end6.i:                                        ; preds = %if.end.i
  %17 = trunc i32 %16 to i8
  %conv.i = and i8 %17, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool8.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.fxls8962af_fifo_flush.exit.thread_crit_edge, label %if.end10.i

if.end6.i.fxls8962af_fifo_flush.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_fifo_flush.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %timestamp.i = getelementptr inbounds %struct.fxls8962af_data, ptr %8, i32 0, i32 4
  %18 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %timestamp.i, align 8
  %old_timestamp.i = getelementptr inbounds %struct.fxls8962af_data, ptr %8, i32 0, i32 5
  %20 = ptrtoint ptr %old_timestamp.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %old_timestamp.i, align 8
  %call11.i = call i64 @iio_get_time_ns(ptr noundef %p) #10
  %21 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %call11.i, ptr %timestamp.i, align 8
  %22 = ptrtoint ptr %old_timestamp.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %old_timestamp.i, align 8
  %sub.i = sub i64 %call11.i, %23
  %conv15.i = zext i8 %conv.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp187.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp187.i, label %if.then191.i, label %if.else197.i, !prof !120

if.then191.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv192.i = trunc i64 %sub.i to i32
  %div195.i = udiv i32 %conv192.i, %conv15.i
  %conv196.i = zext i32 %div195.i to i64
  br label %if.end201.i

if.else197.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv15.i, i64 %sub.i) #14, !srcloc !121
  %asmresult1.i.i = extractvalue { i64, i64 } %24, 1
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.else197.i, %if.then191.i
  %sample_period.0.i = phi i64 [ %conv196.i, %if.then191.i ], [ %asmresult1.i.i, %if.else197.i ]
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 8
  %call.i.i = call ptr @regmap_get_device(ptr noundef %26) #10
  %call1.i.i = call ptr @i2c_verify_client(ptr noundef %call.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end201.i.for.body.i.i.i_crit_edge

if.end201.i.for.body.i.i.i_crit_edge:             ; preds = %if.end201.i
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.02.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv15.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end213.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.cond.i.i.i.if.end213.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %if.end201.i.for.body.i.i.i_crit_edge
  %i.02.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end201.i.for.body.i.i.i_crit_edge ]
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %8, align 8
  %mul.i.i.i = mul i32 %i.02.i.i.i, 3
  %arrayidx.i.i.i = getelementptr i16, ptr %buffer.i, i32 %mul.i.i.i
  %call.i.i.i = call i32 @regmap_raw_read(ptr noundef %28, i32 noundef 12, ptr noundef %arrayidx.i.i.i, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %for.body.i.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge

for.body.i.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_fifo_transfer.exit.i

if.end.i.i:                                       ; preds = %if.end201.i
  %mul.i.i = mul nuw nsw i32 %conv15.i, 6
  %29 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %8, align 8
  %call4.i.i = call i32 @regmap_raw_read(ptr noundef %30, i32 noundef 12, ptr noundef nonnull %buffer.i, i32 noundef %mul.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end213.i_crit_edge, label %if.end.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge

if.end.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_fifo_transfer.exit.i

if.end.i.i.if.end213.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213.i

fxls8962af_fifo_transfer.exit.i:                  ; preds = %if.end.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge, %for.body.i.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge
  %ret.022.i.i = phi i32 [ %call4.i.i, %if.end.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge ], [ %call.i.i.i, %for.body.i.i.i.fxls8962af_fifo_transfer.exit.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i.i, ptr noundef nonnull @.str.31, i32 noundef %ret.022.i.i) #13
  br label %fxls8962af_fifo_flush.exit

if.end213.i:                                      ; preds = %if.end.i.i.if.end213.i_crit_edge, %for.cond.i.i.i.if.end213.i_crit_edge
  %sub205.i = add nsw i32 %conv15.i, -1
  %31 = zext i32 %sub205.i to i64
  %mul207.i = mul i64 %sample_period.0.i, %31
  %sub208.i = sub i64 %call11.i, %mul207.i
  %active_scan_mask.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 8
  %masklength.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 7
  %scan.i = getelementptr inbounds %struct.fxls8962af_data, ptr %8, i32 0, i32 3
  %scan_timestamp.i.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 9
  %scan_bytes.i.i = getelementptr inbounds %struct.iio_dev, ptr %p, i32 0, i32 4
  %smax.i = call i32 @llvm.smax.i32(i32 %conv15.i, i32 1) #10
  br label %for.body.i

for.body.i:                                       ; preds = %iio_push_to_buffers_with_timestamp.exit.i.for.body.i_crit_edge, %if.end213.i
  %i.0392.i = phi i32 [ 0, %if.end213.i ], [ %inc234.i, %iio_push_to_buffers_with_timestamp.exit.i.for.body.i_crit_edge ]
  %tstamp.0390.i = phi i64 [ %sub208.i, %if.end213.i ], [ %add232.i, %iio_push_to_buffers_with_timestamp.exit.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %active_scan_mask.i, align 4
  %34 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %masklength.i, align 8
  %call217.i = call i32 @_find_next_bit_be(ptr noundef %33, i32 noundef %35, i32 noundef 0) #10
  %36 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %masklength.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call217.i, i32 %37)
  %cmp220387.i = icmp ult i32 %call217.i, %37
  br i1 %cmp220387.i, label %for.body222.lr.ph.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body222.lr.ph.i:                              ; preds = %for.body.i
  %mul223.i = mul nuw nsw i32 %i.0392.i, 3
  br label %for.body222.i

for.body222.i:                                    ; preds = %for.body222.i.for.body222.i_crit_edge, %for.body222.lr.ph.i
  %bit.0389.i = phi i32 [ %call217.i, %for.body222.lr.ph.i ], [ %call229.i, %for.body222.i.for.body222.i_crit_edge ]
  %j.0388.i = phi i32 [ 0, %for.body222.lr.ph.i ], [ %inc.i, %for.body222.i.for.body222.i_crit_edge ]
  %inc.i = add i32 %j.0388.i, 1
  %arrayidx.i = getelementptr [3 x i16], ptr %scan.i, i32 0, i32 %j.0388.i
  %add224.i = add i32 %bit.0389.i, %mul223.i
  %arrayidx225.i = getelementptr [96 x i16], ptr %buffer.i, i32 0, i32 %add224.i
  %38 = ptrtoint ptr %arrayidx225.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx225.i, align 2
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %arrayidx.i, align 2
  %41 = ptrtoint ptr %active_scan_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %active_scan_mask.i, align 4
  %43 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %masklength.i, align 8
  %add228.i = add nuw i32 %bit.0389.i, 1
  %call229.i = call i32 @_find_next_bit_be(ptr noundef %42, i32 noundef %44, i32 noundef %add228.i) #10
  %45 = ptrtoint ptr %masklength.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %masklength.i, align 8
  %cmp220.i = icmp ult i32 %call229.i, %46
  br i1 %cmp220.i, label %for.body222.i.for.body222.i_crit_edge, label %for.body222.i.for.end.i_crit_edge

for.body222.i.for.end.i_crit_edge:                ; preds = %for.body222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body222.i.for.body222.i_crit_edge:            ; preds = %for.body222.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body222.i

for.end.i:                                        ; preds = %for.body222.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %47 = ptrtoint ptr %scan_timestamp.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %scan_timestamp.i.i, align 8, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i356.i = icmp eq i8 %48, 0
  br i1 %tobool.not.i356.i, label %for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge, label %if.then.i358.i

for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iio_push_to_buffers_with_timestamp.exit.i

if.then.i358.i:                                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %scan_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scan_bytes.i.i, align 4
  %div1.i.i = lshr i32 %50, 3
  %sub.i357.i = add nsw i32 %div1.i.i, -1
  %arrayidx.i.i = getelementptr i64, ptr %scan.i, i32 %sub.i357.i
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %tstamp.0390.i, ptr %arrayidx.i.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit.i

iio_push_to_buffers_with_timestamp.exit.i:        ; preds = %if.then.i358.i, %for.end.i.iio_push_to_buffers_with_timestamp.exit.i_crit_edge
  %call.i359.i = call i32 @iio_push_to_buffers(ptr noundef %p, ptr noundef %scan.i) #10
  %add232.i = add i64 %tstamp.0390.i, %sample_period.0.i
  %inc234.i = add nuw nsw i32 %i.0392.i, 1
  %exitcond.not.i = icmp eq i32 %inc234.i, %smax.i
  br i1 %exitcond.not.i, label %iio_push_to_buffers_with_timestamp.exit.i.fxls8962af_fifo_flush.exit.thread_crit_edge, label %iio_push_to_buffers_with_timestamp.exit.i.for.body.i_crit_edge

iio_push_to_buffers_with_timestamp.exit.i.for.body.i_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

iio_push_to_buffers_with_timestamp.exit.i.fxls8962af_fifo_flush.exit.thread_crit_edge: ; preds = %iio_push_to_buffers_with_timestamp.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_fifo_flush.exit.thread

fxls8962af_fifo_flush.exit.thread:                ; preds = %iio_push_to_buffers_with_timestamp.exit.i.fxls8962af_fifo_flush.exit.thread_crit_edge, %if.end6.i.fxls8962af_fifo_flush.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %buffer.i) #10
  br label %cleanup

fxls8962af_fifo_flush.exit:                       ; preds = %fxls8962af_fifo_transfer.exit.i, %if.then3.fxls8962af_fifo_flush.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.then3.fxls8962af_fifo_flush.exit_crit_edge ], [ %ret.022.i.i, %fxls8962af_fifo_transfer.exit.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #10
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %buffer.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %fxls8962af_fifo_flush.exit._crit_edge, label %fxls8962af_fifo_flush.exit.cleanup_crit_edge

fxls8962af_fifo_flush.exit.cleanup_crit_edge:     ; preds = %fxls8962af_fifo_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fxls8962af_fifo_flush.exit._crit_edge:            ; preds = %fxls8962af_fifo_flush.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %52

52:                                               ; preds = %fxls8962af_fifo_flush.exit._crit_edge, %fxls8962af_fifo_flush.exit.thread33
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %53 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %priv.i, align 8
  %call1.i26 = call i64 @iio_get_time_ns(ptr noundef %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i24) #10
  %55 = ptrtoint ptr %reg.i24 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %reg.i24, align 4, !annotation !115
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %54, align 8
  %call2.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 45, ptr noundef nonnull %reg.i24) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i27 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i27, label %if.end.i29, label %if.then10.fxls8962af_event_interrupt.exit_crit_edge

if.then10.fxls8962af_event_interrupt.exit_crit_edge: ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_event_interrupt.exit

if.end.i29:                                       ; preds = %if.then10
  %58 = ptrtoint ptr %reg.i24 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %reg.i24, align 4
  %and.i28 = and i32 %59, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28)
  %tobool3.not.i = icmp eq i32 %and.i28, 0
  br i1 %tobool3.not.i, label %if.end.i29.if.end13.i_crit_edge, label %if.then4.i

if.end.i29.if.end13.i_crit_edge:                  ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then4.i:                                       ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %cond.i = select i1 %tobool6.not.i, i32 2, i32 1
  %60 = zext i32 %cond.i to i64
  %shl.i30 = shl nuw nsw i64 %60, 48
  %or8.i = or i64 %shl.i30, 1112396529664
  %call12.i = call i32 @iio_push_event(ptr noundef %p, i64 noundef %or8.i, i64 noundef %call1.i26) #10
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then4.i, %if.end.i29.if.end13.i_crit_edge
  %61 = ptrtoint ptr %reg.i24 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg.i24, align 4
  %and14.i = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end13.i.if.end29.i_crit_edge, label %if.then16.i

if.end13.i.if.end29.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then16.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %and17.i = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %cond19.i = select i1 %tobool18.not.i, i32 2, i32 1
  %63 = zext i32 %cond19.i to i64
  %shl21.i = shl nuw nsw i64 %63, 48
  %or24.i = or i64 %shl21.i, 1112396529664
  %call28.i = call i32 @iio_push_event(ptr noundef %p, i64 noundef %or24.i, i64 noundef %call1.i26) #10
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then16.i, %if.end13.i.if.end29.i_crit_edge
  %64 = ptrtoint ptr %reg.i24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg.i24, align 4
  %and30.i = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end29.i.fxls8962af_event_interrupt.exit_crit_edge, label %if.then32.i

if.end29.i.fxls8962af_event_interrupt.exit_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_event_interrupt.exit

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %and33.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  %cond35.i = select i1 %tobool34.not.i, i32 2, i32 1
  %66 = zext i32 %cond35.i to i64
  %shl37.i = shl nuw nsw i64 %66, 48
  %or40.i = or i64 %shl37.i, 1112396529664
  %call44.i = call i32 @iio_push_event(ptr noundef %p, i64 noundef %or40.i, i64 noundef %call1.i26) #10
  br label %fxls8962af_event_interrupt.exit

fxls8962af_event_interrupt.exit:                  ; preds = %if.then32.i, %if.end29.i.fxls8962af_event_interrupt.exit_crit_edge, %if.then10.fxls8962af_event_interrupt.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i24) #10
  %67 = xor i32 %call2.i, -1
  %call2.i.lobit.not = lshr i32 %67, 31
  br label %cleanup

cleanup:                                          ; preds = %fxls8962af_event_interrupt.exit, %if.end7.cleanup_crit_edge, %52, %fxls8962af_fifo_flush.exit.cleanup_crit_edge, %fxls8962af_fifo_flush.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2.i.lobit.not, %fxls8962af_event_interrupt.exit ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %52 ], [ 1, %fxls8962af_fifo_flush.exit.cleanup_crit_edge ], [ 1, %fxls8962af_fifo_flush.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_verify_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_buffer_preenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %3) #10
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.fxls8962af_power_on.exit_crit_edge

entry.fxls8962af_power_on.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fxls8962af_power_on.exit

if.then.i.i:                                      ; preds = %entry
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !117
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #10, !srcloc !118
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.do.end.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.do.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !119
  br label %do.end.i

do.end.i:                                         ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.do.end.i_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.15) #13
  br label %fxls8962af_power_on.exit

fxls8962af_power_on.exit:                         ; preds = %do.end.i, %entry.fxls8962af_power_on.exit_crit_edge
  %retval.0.i7.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %entry.fxls8962af_power_on.exit_crit_edge ]
  ret i32 %retval.0.i7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %watermark.i = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %watermark.i, align 8
  %conv.i = zext i8 %9 to i32
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 39, i32 noundef 63, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge

if.end.__fxls8962af_fifo_set_mode.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fxls8962af_fifo_set_mode.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 38, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %__fxls8962af_fifo_set_mode.exit

__fxls8962af_fifo_set_mode.exit:                  ; preds = %if.end.i, %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i29.i, %if.end.i ], [ %call.i.i11, %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %__fxls8962af_fifo_set_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__fxls8962af_fifo_set_mode.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 21, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 32, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %watermark.i = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %watermark.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %watermark.i, align 8
  %conv.i = zext i8 %9 to i32
  %call.i.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 39, i32 noundef 63, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15)
  %tobool.not.i = icmp eq i32 %call.i.i15, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge

if.end.__fxls8962af_fifo_set_mode.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fxls8962af_fifo_set_mode.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 38, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %__fxls8962af_fifo_set_mode.exit

__fxls8962af_fifo_set_mode.exit:                  ; preds = %if.end.i, %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i29.i, %if.end.i ], [ %call.i.i15, %if.end.__fxls8962af_fifo_set_mode.exit_crit_edge ]
  %enable_event = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %__fxls8962af_fifo_set_mode.exit.cleanup_crit_edge, label %if.then5

__fxls8962af_fifo_set_mode.exit.cleanup_crit_edge: ; preds = %__fxls8962af_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %__fxls8962af_fifo_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 21, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %__fxls8962af_fifo_set_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.then5 ], [ %retval.0.i, %__fxls8962af_fifo_set_mode.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fxls8962af_buffer_postdisable(ptr nocapture noundef readonly %indio_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %enable_event = getelementptr inbounds %struct.fxls8962af_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %enable_event to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_event, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call ptr @regmap_get_device(ptr noundef %5) #10
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %call.i5.i = tail call i32 @__pm_runtime_suspend(ptr noundef %call.i, i32 noundef 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %do.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %call.i, ptr noundef nonnull @.str.17) #13
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @fxls8962af_i2c_regmap_conf, !1, !"fxls8962af_i2c_regmap_conf", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 176, i32 28}
!2 = !{ptr @__ksymtab_fxls8962af_i2c_regmap_conf, !3, !"__ksymtab_fxls8962af_i2c_regmap_conf", i1 false, i1 false}
!3 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 181, i32 1}
!4 = !{ptr @fxls8962af_spi_regmap_conf, !5, !"fxls8962af_spi_regmap_conf", i1 false, i1 false}
!5 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 183, i32 28}
!6 = !{ptr @__ksymtab_fxls8962af_spi_regmap_conf, !7, !"__ksymtab_fxls8962af_spi_regmap_conf", i1 false, i1 false}
!7 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 189, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1174, i32 42}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1177, i32 10}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1181, i32 3}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @fxls8962af_core_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @fxls8962af_core_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1200, i32 3}
!22 = !{ptr @fxls8962af_core_probe._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @fxls8962af_core_probe._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1238, i32 37}
!26 = !{ptr @__ksymtab_fxls8962af_core_probe, !27, !"__ksymtab_fxls8962af_core_probe", i1 false, i1 false}
!27 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1243, i32 1}
!28 = !{ptr @fxls8962af_pm_ops, !29, !"fxls8962af_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1304, i32 25}
!30 = !{ptr @__ksymtab_fxls8962af_pm_ops, !31, !"__ksymtab_fxls8962af_pm_ops", i1 false, i1 false}
!31 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1309, i32 1}
!32 = !{ptr @__UNIQUE_ID_author324, !33, !"__UNIQUE_ID_author324", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1311, i32 1}
!34 = !{ptr @__UNIQUE_ID_description325, !35, !"__UNIQUE_ID_description325", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1312, i32 1}
!36 = !{ptr @__UNIQUE_ID_file326, !37, !"__UNIQUE_ID_file326", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1313, i32 1}
!38 = !{ptr @__UNIQUE_ID_license327, !37, !"__UNIQUE_ID_license327", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 758, i32 11}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 764, i32 11}
!43 = !{ptr @fxls_chip_info_table, !44, !"fxls_chip_info_table", i1 false, i1 false}
!44 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 755, i32 42}
!45 = !{ptr @fxls8962af_channels, !46, !"fxls8962af_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 747, i32 35}
!47 = !{ptr @fxls8962af_event, !48, !"fxls8962af_event", i1 false, i1 false}
!48 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 695, i32 36}
!49 = !{ptr @fxls8962af_info, !50, !"fxls8962af_info", i1 false, i1 false}
!50 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 770, i32 30}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 274, i32 3}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @fxls8962af_get_out._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @fxls8962af_get_out._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 210, i32 3}
!58 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @fxls8962af_power_on._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @fxls8962af_power_on._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 223, i32 3}
!63 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fxls8962af_power_off._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @fxls8962af_power_off._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @fxls8962af_scale_table, !67, !"fxls8962af_scale_table", i1 false, i1 false}
!67 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 139, i32 18}
!68 = !{ptr @fxls8962af_samp_freq_table, !69, !"fxls8962af_samp_freq_table", i1 false, i1 false}
!69 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 146, i32 18}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 799, i32 3}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @fxls8962af_reset._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @fxls8962af_reset._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1106, i32 3}
!77 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @fxls8962af_irq_setup._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @fxls8962af_irq_setup._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1127, i32 3}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @fxls8962af_irq_setup._entry.23, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @fxls8962af_irq_setup._entry_ptr.26, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1137, i32 37}
!87 = !{ptr @.str.28, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1078, i32 35}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 942, i32 3}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @fxls8962af_fifo_flush._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @fxls8962af_fifo_flush._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 921, i32 3}
!96 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @fxls8962af_fifo_transfer._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @fxls8962af_fifo_transfer._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @fxls8962af_buffer_ops, !100, !"fxls8962af_buffer_ops", i1 false, i1 false}
!100 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 877, i32 42}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/accel/fxls8962af-core.c", i32 1252, i32 3}
!103 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @fxls8962af_runtime_suspend._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @fxls8962af_runtime_suspend._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{ptr @fxls8962af_pm_disable, ptr @fxls8962af_regulator_disable}
!117 = !{i64 2148432185}
!118 = !{i64 917008, i64 917033, i64 917055, i64 917071, i64 917083, i64 917103, i64 917127, i64 917143, i64 917155}
!119 = !{i64 2148432373}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2149070854, i64 2149071134, i64 2149071468, i64 2149071802}
!122 = !{i8 0, i8 2}
