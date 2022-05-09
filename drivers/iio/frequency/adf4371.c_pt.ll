; ModuleID = '/llk/IR_all_yes/drivers/iio/frequency/adf4371.c_pt.bc'
source_filename = "../drivers/iio/frequency/adf4371.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adf4371_chip_info = type { i32, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.adf4371_pwrdown = type { i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.adf4371_state = type { ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [116 x i8], [10 x i8], [118 x i8] }

@__initcall__kmod_adf4371__285_627_adf4371_driver_init6 = internal global ptr @adf4371_driver_init, section ".initcall6.init", align 4
@adf4371_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adf4371_id_table, ptr @adf4371_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adf4371_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adf4371_driver_exit = internal global ptr @adf4371_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author286 = internal constant [52 x i8] c"adf4371.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description287 = internal constant [51 x i8] c"adf4371.description=Analog Devices ADF4371 SPI PLL\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [43 x i8] c"adf4371.file=drivers/iio/frequency/adf4371\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [20 x i8] c"adf4371.license=GPL\00", section ".modinfo", align 1
@adf4371_id_table = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adf4371\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adf4372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adf4371\00", [24 x i8] zeroinitializer }, align 32
@adf4371_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf4371\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf4372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adf4371_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adf4371_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 128, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"adf4371:562:(&adf4371_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@adf4371_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error initializing spi regmap: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adf4371_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/frequency/adf4371.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adf4371_probe._entry_ptr = internal global ptr @adf4371_probe._entry, section ".printk_index", align 4
@adf4371_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@adf4371_chip_info = internal constant { [2 x %struct.adf4371_chip_info], [16 x i8] } { [2 x %struct.adf4371_chip_info] [%struct.adf4371_chip_info { i32 4, ptr @adf4371_chan }, %struct.adf4371_chip_info { i32 3, ptr @adf4371_chan }], [16 x i8] zeroinitializer }, align 32
@adf4371_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adf4371_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@adf4371_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 598, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADF4371 setup failed\0A\00", [42 x i8] zeroinitializer }, align 32
@adf4371_probe._entry_ptr.11 = internal global ptr @adf4371_probe._entry.9, section ".printk_index", align 4
@adf4371_chan = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 15, i32 0, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @adf4371_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 15, i32 1, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @adf4371_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 15, i32 2, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @adf4371_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 15, i32 3, i32 0, i32 0, i32 0, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @adf4371_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@adf4371_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.12, i32 0, ptr @adf4371_read, ptr @adf4371_write, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.13, i32 0, ptr @adf4371_read, ptr @adf4371_write, i32 1 }, %struct.iio_chan_spec_ext_info { ptr @.str.14, i32 0, ptr @adf4371_read, ptr @adf4371_write, i32 2 }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frequency\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@adf4371_read.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adf4371_read\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLL un-locked\0A\00", [17 x i8] zeroinitializer }, align 32
@adf4371_pwrdown_ch = internal constant { [4 x %struct.adf4371_pwrdown], [32 x i8] } { [4 x %struct.adf4371_pwrdown] [%struct.adf4371_pwrdown { i32 37, i32 2 }, %struct.adf4371_pwrdown { i32 114, i32 3 }, %struct.adf4371_pwrdown { i32 37, i32 3 }, %struct.adf4371_pwrdown { i32 37, i32 4 }], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@adf4371_ch_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RF8x\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RFAUX8x\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RF16x\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RF32x\00", [26 x i8] zeroinitializer }, align 32
@adf4371_reg_defaults = internal constant { [28 x %struct.reg_sequence], [80 x i8] } { [28 x %struct.reg_sequence] [%struct.reg_sequence { i32 0, i32 24, i32 0 }, %struct.reg_sequence { i32 18, i32 64, i32 0 }, %struct.reg_sequence { i32 30, i32 72, i32 0 }, %struct.reg_sequence { i32 32, i32 20, i32 0 }, %struct.reg_sequence { i32 34, i32 0, i32 0 }, %struct.reg_sequence { i32 35, i32 0, i32 0 }, %struct.reg_sequence { i32 36, i32 128, i32 0 }, %struct.reg_sequence { i32 37, i32 7, i32 0 }, %struct.reg_sequence { i32 39, i32 197, i32 0 }, %struct.reg_sequence { i32 40, i32 131, i32 0 }, %struct.reg_sequence { i32 44, i32 68, i32 0 }, %struct.reg_sequence { i32 45, i32 17, i32 0 }, %struct.reg_sequence { i32 46, i32 18, i32 0 }, %struct.reg_sequence { i32 47, i32 148, i32 0 }, %struct.reg_sequence { i32 50, i32 4, i32 0 }, %struct.reg_sequence { i32 53, i32 250, i32 0 }, %struct.reg_sequence { i32 54, i32 48, i32 0 }, %struct.reg_sequence { i32 57, i32 7, i32 0 }, %struct.reg_sequence { i32 58, i32 85, i32 0 }, %struct.reg_sequence { i32 62, i32 12, i32 0 }, %struct.reg_sequence { i32 63, i32 128, i32 0 }, %struct.reg_sequence { i32 64, i32 80, i32 0 }, %struct.reg_sequence { i32 65, i32 40, i32 0 }, %struct.reg_sequence { i32 71, i32 192, i32 0 }, %struct.reg_sequence { i32 82, i32 244, i32 0 }, %struct.reg_sequence { i32 112, i32 3, i32 0 }, %struct.reg_sequence { i32 113, i32 96, i32 0 }, %struct.reg_sequence { i32 114, i32 50, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,mute-till-lock-en\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"adf4371_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 619, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"adf4371_id_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 605, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 621, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"adf4371_of_match\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 612, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"adf4371_regmap_config\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 146, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 562, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 564, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 573, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"adf4371_chip_info\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 447, i32 39 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"adf4371_info\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 471, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 582, i32 38 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 598, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"adf4371_chan\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 440, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"adf4371_ext_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 420, i32 44 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 426, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 427, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 428, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 342, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"adf4371_pwrdown_ch\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 108, i32 37 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 357, i32 23 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"adf4371_ch_names\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 104, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 364, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"adf4371_reg_defaults\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 115, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [35 x i8] c"../drivers/iio/frequency/adf4371.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 492, i32 47 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_adf4371_driver_exit, ptr @__initcall__kmod_adf4371__285_627_adf4371_driver_init6, ptr @adf4371_driver_exit, ptr @adf4371_probe._entry, ptr @adf4371_probe._entry.9, ptr @adf4371_probe._entry_ptr, ptr @adf4371_probe._entry_ptr.11, ptr @adf4371_driver, ptr @adf4371_id_table, ptr @.str, ptr @adf4371_of_match, ptr @adf4371_probe._key, ptr @adf4371_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adf4371_probe.__key, ptr @.str.7, ptr @adf4371_chip_info, ptr @adf4371_info, ptr @.str.8, ptr @.str.10, ptr @adf4371_chan, ptr @adf4371_ext_info, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @adf4371_pwrdown_ch, ptr @.str.17, ptr @adf4371_ch_names, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @adf4371_reg_defaults, ptr @.str.23], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_id_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_chip_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_chan to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_pwrdown_ch to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_ch_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4371_reg_defaults to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4371_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adf4371_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adf4371_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adf4371_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4371_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @adf4371_regmap_config, ptr noundef nonnull @adf4371_probe._key, ptr noundef nonnull @.str.1) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2, i32 noundef %0) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %2, align 128
  %regmap11 = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %regmap11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %regmap11, align 4
  %lock = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @adf4371_probe.__key) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.adf4371_chip_info], ptr @adf4371_chip_info, i32 0, i32 %7
  %chip_info = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 4
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %chip_info, align 8
  %name15 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %9 = ptrtoint ptr %name15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %name15, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @adf4371_info, ptr %info, align 8
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %call1, align 8
  %12 = load ptr, ptr %chip_info, align 8
  %channels = getelementptr inbounds %struct.adf4371_chip_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channels, align 4
  %channels17 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %15 = ptrtoint ptr %channels17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %channels17, align 8
  %16 = load ptr, ptr %chip_info, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %num_channels19 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %19 = ptrtoint ptr %num_channels19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_channels19, align 4
  %call21 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.8) #8
  %clkin = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 2
  %20 = ptrtoint ptr %clkin to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %clkin, align 8
  %cmp.i92 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end8
  %call.i = tail call i32 @clk_prepare(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.clk_prepare_enable.exit_crit_edge

if.end27.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end31_crit_edge, label %if.then3.i

if.end.i.if.end31_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call21) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end27.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end27.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end31_crit_edge

clk_prepare_enable.exit.if.end31_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %clk_prepare_enable.exit.if.end31_crit_edge, %if.end.i.if.end31_crit_edge
  %call.i93 = tail call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @adf4371_clk_disable, ptr noundef %2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  %22 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clkin, align 8
  br i1 %tobool.not.i94, label %if.end36, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call38 = tail call i32 @clk_get_rate(ptr noundef %23) #8
  %clkin_freq = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 5
  %24 = ptrtoint ptr %clkin_freq to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call38, ptr %clkin_freq, align 4
  %25 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap11, align 4
  %call.i96 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 0, i32 noundef 129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %cmp.i97 = icmp slt i32 %call.i96, 0
  br i1 %cmp.i97, label %if.end36.do.end44_crit_edge, label %if.end.i98

if.end36.do.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.end.i98:                                       ; preds = %if.end36
  %27 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap11, align 4
  %call2.i = tail call i32 @regmap_multi_reg_write(ptr noundef %28, ptr noundef nonnull @adf4371_reg_defaults, i32 noundef 28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i98.do.end44_crit_edge, label %if.end5.i

if.end.i98.do.end44_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.end5.i:                                        ; preds = %if.end.i98
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 128
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %30, ptr noundef nonnull @.str.23) #8
  br i1 %call.i.i, label %if.then7.i, label %if.end5.i.if.end26.i_crit_edge

if.end5.i.if.end26.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then7.i:                                       ; preds = %if.end5.i
  %31 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap11, align 4
  %call.i206.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 37, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206.i)
  %cmp23.i = icmp slt i32 %call.i206.i, 0
  br i1 %cmp23.i, label %if.then7.i.do.end44_crit_edge, label %if.then7.i.if.end26.i_crit_edge

if.then7.i.if.end26.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then7.i.do.end44_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

if.end26.i:                                       ; preds = %if.then7.i.if.end26.i_crit_edge, %if.end5.i.if.end26.i_crit_edge
  %33 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap11, align 4
  %call.i207.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 0, i32 noundef 36, i32 noundef 36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207.i)
  %cmp61.i = icmp slt i32 %call.i207.i, 0
  br i1 %cmp61.i, label %if.end26.i.do.end44_crit_edge, label %do.body64.preheader.i

if.end26.i.do.end44_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.body64.preheader.i:                            ; preds = %if.end26.i
  %ref_div_factor.i = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 12
  %35 = ptrtoint ptr %clkin_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clkin_freq, align 4
  %37 = ptrtoint ptr %ref_div_factor.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %ref_div_factor.promoted.i = load i32, ptr %ref_div_factor.i, align 8
  br label %do.body64.i

do.body64.i:                                      ; preds = %do.body64.i.do.body64.i_crit_edge, %do.body64.preheader.i
  %inc208.i = phi i32 [ %ref_div_factor.promoted.i, %do.body64.preheader.i ], [ %inc.i, %do.body64.i.do.body64.i_crit_edge ]
  %inc.i = add i32 %inc208.i, 1
  %div.i = udiv i32 %36, %inc.i
  %cmp68.i = icmp ugt i32 %div.i, 250000000
  br i1 %cmp68.i, label %do.body64.i.do.body64.i_crit_edge, label %do.end69.i

do.body64.i.do.body64.i_crit_edge:                ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64.i

do.end69.i:                                       ; preds = %do.body64.i
  %fpfd.i = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 6
  %38 = ptrtoint ptr %ref_div_factor.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %inc.i, ptr %ref_div_factor.i, align 8
  %39 = ptrtoint ptr %fpfd.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div.i, ptr %fpfd.i, align 16
  %add75.i = add nuw nsw i32 %div.i, 500000
  %div76.i = udiv i32 %add75.i, 1000000
  %mul85.i = mul nuw nsw i32 %div76.i, 20
  br label %do.body77.i

do.body77.i:                                      ; preds = %do.body77.i.do.body77.i_crit_edge, %do.end69.i
  %timeout.0.i = phi i32 [ 1, %do.end69.i ], [ %spec.select.i, %do.body77.i.do.body77.i_crit_edge ]
  %synth_timeout.0.i = phi i32 [ 2, %do.end69.i ], [ %spec.select203.i, %do.body77.i.do.body77.i_crit_edge ]
  %inc78.i = add i32 %timeout.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %inc78.i)
  %cmp79.i = icmp ugt i32 %inc78.i, 1023
  %spec.select.i = select i1 %cmp79.i, i32 2, i32 %inc78.i
  %inc81.i = zext i1 %cmp79.i to i32
  %spec.select203.i = add i32 %synth_timeout.0.i, %inc81.i
  %mul.i = shl i32 %spec.select203.i, 10
  %add84.i = add nuw i32 %mul.i, %spec.select.i
  %cmp86.not.i = icmp ugt i32 %add84.i, %mul85.i
  br i1 %cmp86.not.i, label %do.end117.i, label %do.body77.i.do.body77.i_crit_edge

do.body77.i.do.body77.i_crit_edge:                ; preds = %do.body77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77.i

do.end117.i:                                      ; preds = %do.body77.i
  %sub.i = add nuw nsw i32 %div.i, 2399999
  %div71.i = udiv i32 %sub.i, 2400000
  %conv.i = trunc i32 %div71.i to i8
  %buf.i = getelementptr inbounds %struct.adf4371_state, ptr %2, i32 0, i32 14
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i, ptr %buf.i, align 128
  %conv96.i = trunc i32 %spec.select.i to i8
  %arrayidx98.i = getelementptr %struct.adf4371_state, ptr %2, i32 0, i32 14, i32 1
  %41 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv96.i, ptr %arrayidx98.i, align 1
  %shr.i = lshr i32 %spec.select.i, 8
  %42 = trunc i32 %shr.i to i8
  %conv122.i = or i8 %42, 4
  %arrayidx124.i = getelementptr %struct.adf4371_state, ptr %2, i32 0, i32 14, i32 2
  %43 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv122.i, ptr %arrayidx124.i, align 2
  %conv125.i = trunc i32 %spec.select203.i to i8
  %arrayidx127.i = getelementptr %struct.adf4371_state, ptr %2, i32 0, i32 14, i32 3
  %44 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv125.i, ptr %arrayidx127.i, align 1
  %45 = add i32 %spec.select.i, 31743
  %46 = sub nuw nsw i32 2048, %spec.select.i
  %mul93.i = mul nuw nsw i32 %div76.i, 50
  %47 = or i32 %mul93.i, 1
  %umax.i = tail call i32 @llvm.umax.i32(i32 %46, i32 %47) #8
  %48 = add i32 %45, %umax.i
  %49 = lshr i32 %48, 10
  %50 = trunc i32 %49 to i8
  %51 = add i8 %50, 2
  %conv152.i = and i8 %51, 31
  %arrayidx154.i = getelementptr %struct.adf4371_state, ptr %2, i32 0, i32 14, i32 4
  %52 = ptrtoint ptr %arrayidx154.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv152.i, ptr %arrayidx154.i, align 4
  %53 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap11, align 4
  %call157.i = tail call i32 @regmap_bulk_write(ptr noundef %54, i32 noundef 48, ptr noundef %buf.i, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157.i)
  %cmp40 = icmp slt i32 %call157.i, 0
  br i1 %cmp40, label %do.end117.i.do.end44_crit_edge, label %if.end46

do.end117.i.do.end44_crit_edge:                   ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end44

do.end44:                                         ; preds = %do.end117.i.do.end44_crit_edge, %if.end26.i.do.end44_crit_edge, %if.then7.i.do.end44_crit_edge, %if.end.i98.do.end44_crit_edge, %if.end36.do.end44_crit_edge
  %retval.0.i99104 = phi i32 [ %call157.i, %do.end117.i.do.end44_crit_edge ], [ %call.i207.i, %if.end26.i.do.end44_crit_edge ], [ %call.i206.i, %if.then7.i.do.end44_crit_edge ], [ %call2.i, %if.end.i98.do.end44_crit_edge ], [ %call.i96, %if.end36.do.end44_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #11
  br label %cleanup

if.end46:                                         ; preds = %do.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 @__devm_iio_device_register(ptr noundef %spi, ptr noundef nonnull %call1, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end44, %devm_add_action_or_reset.exit, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %21, %if.then24 ], [ %retval.0.i99104, %do.end44 ], [ %call48, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i93, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adf4371_clk_disable(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clkin = getelementptr inbounds %struct.adf4371_state, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkin, align 8
  tail call void @clk_disable(ptr noundef %1) #8
  tail call void @clk_unprepare(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4371_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %readval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval) #8
  %2 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %readval, align 4, !annotation !87
  %3 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %private, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %integer.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %integer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %integer.i, align 4
  %conv.i = zext i32 %7 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 25
  %fract1.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %fract1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fract1.i, align 8
  %conv1.i = zext i32 %9 to i64
  %add.i = add nuw nsw i64 %mul.i, %conv1.i
  %fpfd.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %fpfd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fpfd.i, align 16
  %conv2.i = zext i32 %11 to i64
  %mul3.i = mul i64 %add.i, %conv2.i
  %fract2.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %fract2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fract2.i, align 4
  %conv4.i = zext i32 %13 to i64
  %mul7.i = mul nuw i64 %conv4.i, %conv2.i
  %mod2.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %mod2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mod2.i, align 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7.i)
  %cmp176.i = icmp ult i64 %mul7.i, 4294967296
  br i1 %cmp176.i, label %if.then180.i, label %if.else186.i, !prof !88

if.then180.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv181.i = trunc i64 %mul7.i to i32
  %div184.i = udiv i32 %conv181.i, %15
  %conv185.i = zext i32 %div184.i to i64
  br label %if.end190.i

if.else186.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %mul7.i) #12, !srcloc !89
  %asmresult1.i.i = extractvalue { i64, i64 } %16, 1
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.else186.i, %if.then180.i
  %tmp.0.i = phi i64 [ %conv185.i, %if.then180.i ], [ %asmresult1.i.i, %if.else186.i ]
  %add192.i = add i64 %mul3.i, 16777216
  %add193.i = add i64 %add192.i, %tmp.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.i = icmp ult i32 %5, 2
  br i1 %switch.i, label %if.then198.i, label %if.end190.i.if.end200.i_crit_edge

if.end190.i.if.end200.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then198.i:                                     ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #10
  %rf_div_sel.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %rf_div_sel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rf_div_sel.i, align 4
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then198.i, %if.end190.i.if.end200.i_crit_edge
  %ref_div_sel.0.i = phi i32 [ %18, %if.then198.i ], [ 0, %if.end190.i.if.end200.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add193.i)
  %cmp406.i = icmp ult i64 %add193.i, 4294967296
  br i1 %cmp406.i, label %if.then414.i, label %if.else420.i, !prof !88

if.then414.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv415.i = trunc i64 %add193.i to i32
  %19 = add i32 %ref_div_sel.0.i, 25
  %div418604.i = lshr i32 %conv415.i, %19
  %conv419.i = zext i32 %div418604.i to i64
  br label %if.end424.i

if.else420.i:                                     ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul204.i = shl i32 33554432, %ref_div_sel.0.i
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul204.i, i64 %add193.i) #12, !srcloc !89
  %asmresult1.i627.i = extractvalue { i64, i64 } %20, 1
  br label %if.end424.i

if.end424.i:                                      ; preds = %if.else420.i, %if.then414.i
  %val.0.i = phi i64 [ %conv419.i, %if.then414.i ], [ %asmresult1.i627.i, %if.else420.i ]
  %21 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %5, label %if.end424.i.adf4371_pll_fract_n_get_rate.exit_crit_edge [
    i32 2, label %if.then428.i
    i32 3, label %if.then433.i
  ]

if.end424.i.adf4371_pll_fract_n_get_rate.exit_crit_edge: ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf4371_pll_fract_n_get_rate.exit

if.then428.i:                                     ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl429.i = shl i64 %val.0.i, 1
  br label %adf4371_pll_fract_n_get_rate.exit

if.then433.i:                                     ; preds = %if.end424.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl434.i = shl i64 %val.0.i, 2
  br label %adf4371_pll_fract_n_get_rate.exit

adf4371_pll_fract_n_get_rate.exit:                ; preds = %if.then433.i, %if.then428.i, %if.end424.i.adf4371_pll_fract_n_get_rate.exit_crit_edge
  %val.1.i = phi i64 [ %val.0.i, %if.end424.i.adf4371_pll_fract_n_get_rate.exit_crit_edge ], [ %shl434.i, %if.then433.i ], [ %shl429.i, %if.then428.i ]
  %regmap = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %23, i32 noundef 124, ptr noundef nonnull %readval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %adf4371_pll_fract_n_get_rate.exit.cleanup_crit_edge, label %if.end

adf4371_pll_fract_n_get_rate.exit.cleanup_crit_edge: ; preds = %adf4371_pll_fract_n_get_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %adf4371_pll_fract_n_get_rate.exit
  %24 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %readval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp3 = icmp eq i32 %25, 0
  br i1 %cmp3, label %do.body, label %if.end.cond.false_crit_edge

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf4371_read.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf4371_read, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !90

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf4371_read.__UNIQUE_ID_ddebug259, ptr noundef %27, ptr noundef nonnull @.str.16) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %channel12 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %channel12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channel12, align 4
  %arrayidx = getelementptr [4 x %struct.adf4371_pwrdown], ptr @adf4371_pwrdown_ch, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %bit16 = getelementptr [4 x %struct.adf4371_pwrdown], ptr @adf4371_pwrdown_ch, i32 0, i32 %29, i32 1
  %32 = ptrtoint ptr %bit16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bit16, align 4
  %regmap17 = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap17, align 4
  %call18 = call i32 @regmap_read(ptr noundef %35, i32 noundef %31, ptr noundef nonnull %readval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %sw.bb11.cleanup_crit_edge, label %if.end21

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %readval, align 4
  %38 = xor i32 %37, -1
  %39 = lshr i32 %38, %33
  %40 = and i32 %39, 1
  %41 = zext i32 %40 to i64
  br label %cond.false

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel26 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %42 = ptrtoint ptr %channel26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %channel26, align 4
  %arrayidx27 = getelementptr [4 x ptr], ptr @adf4371_ch_names, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx27, align 4
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef %45)
  br label %cleanup

cond.false:                                       ; preds = %if.end21, %if.end.cond.false_crit_edge
  %val.0.ph = phi i64 [ %val.1.i, %if.end.cond.false_crit_edge ], [ %41, %if.end21 ]
  %call31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i64 noundef %val.0.ph)
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %sw.bb25, %sw.bb11.cleanup_crit_edge, %if.then8, %do.body, %adf4371_pll_fract_n_get_rate.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %sw.bb25 ], [ %call31, %cond.false ], [ -16, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -16, %if.then8 ], [ %call2, %adf4371_pll_fract_n_get_rate.exit.cleanup_crit_edge ], [ %call18, %sw.bb11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4371_write(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %freq = alloca i64, align 8
  %power_down = alloca i8, align 1
  %readval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %freq) #8
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %freq, align 8, !annotation !87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %power_down) #8
  %3 = ptrtoint ptr %power_down to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %power_down, align 1, !annotation !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %readval) #8
  %4 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %readval, align 4, !annotation !87
  %lock = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %5 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %private, label %entry.sw.epilog.thread_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog.thread_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %freq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.sw.epilog.thread_crit_edge

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end:                                           ; preds = %sw.bb
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %freq, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %9, label %if.end.sw.epilog.thread_crit_edge [
    i32 0, label %if.end.sw.bb.i_crit_edge
    i32 1, label %if.end.sw.bb.i_crit_edge38
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb10.i
  ]

if.end.sw.bb.i_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge38
  %11 = add i64 %7, -8000000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -7937500001, i64 %11)
  %12 = icmp ult i64 %11, -7937500001
  br i1 %12, label %sw.bb.i.sw.epilog.thread_crit_edge, label %if.end.i

sw.bb.i.sw.epilog.thread_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end.i:                                         ; preds = %sw.bb.i
  %rf_div_sel.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4000000000, i64 %7)
  %cmp2343.i = icmp ult i64 %7, 4000000000
  br i1 %cmp2343.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.sw.epilog.loopexit.i_crit_edge

if.end.i.sw.epilog.loopexit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.loopexit.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %freq.addr.0345.i = phi i64 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ %7, %if.end.i.while.body.i_crit_edge ]
  %storemerge344.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i.while.body.i_crit_edge ]
  %shl.i = shl nuw nsw i64 %freq.addr.0345.i, 1
  %inc.i = add i32 %storemerge344.i, 1
  %cmp2.i = icmp ult i64 %freq.addr.0345.i, 2000000000
  br i1 %cmp2.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.sw.epilog.loopexit.i_crit_edge

while.body.i.sw.epilog.loopexit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.loopexit.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

sw.bb4.i:                                         ; preds = %if.end
  %13 = add i64 %7, -16000000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8000000001, i64 %13)
  %14 = icmp ult i64 %13, -8000000001
  br i1 %14, label %sw.bb4.i.sw.epilog.thread_crit_edge, label %if.end9.i

sw.bb4.i.sw.epilog.thread_crit_edge:              ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end9.i:                                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i64 %7, 1
  br label %sw.epilog.i

sw.bb10.i:                                        ; preds = %if.end
  %15 = add i64 %7, -32000000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 -16000000001, i64 %15)
  %16 = icmp ult i64 %15, -16000000001
  br i1 %16, label %sw.bb10.i.sw.epilog.thread_crit_edge, label %if.end15.i

sw.bb10.i.sw.epilog.thread_crit_edge:             ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end15.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr16.i = lshr i64 %7, 2
  br label %sw.epilog.i

sw.epilog.loopexit.i:                             ; preds = %while.body.i.sw.epilog.loopexit.i_crit_edge, %if.end.i.sw.epilog.loopexit.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %if.end.i.sw.epilog.loopexit.i_crit_edge ], [ %inc.i, %while.body.i.sw.epilog.loopexit.i_crit_edge ]
  %freq.addr.0.lcssa.i = phi i64 [ %7, %if.end.i.sw.epilog.loopexit.i_crit_edge ], [ %shl.i, %while.body.i.sw.epilog.loopexit.i_crit_edge ]
  %17 = ptrtoint ptr %rf_div_sel.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge.lcssa.i, ptr %rf_div_sel.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.loopexit.i, %if.end15.i, %if.end9.i
  %freq.addr.1.i = phi i64 [ %shr16.i, %if.end15.i ], [ %shr.i, %if.end9.i ], [ %freq.addr.0.lcssa.i, %sw.epilog.loopexit.i ]
  %fpfd.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %fpfd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fpfd.i, align 16
  %integer.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 7
  %fract1.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 8
  %fract2.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 9
  %mod2.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %freq.addr.1.i)
  %cmp167.i.i = icmp ult i64 %freq.addr.1.i, 4294967296
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !88

if.then171.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv172.i.i = trunc i64 %freq.addr.1.i to i32
  %conv172.i.i.frozen = freeze i32 %conv172.i.i
  %.frozen = freeze i32 %19
  %div175.i.i = udiv i32 %conv172.i.i.frozen, %.frozen
  %20 = mul i32 %div175.i.i, %.frozen
  %rem173.i.i.decomposed = sub i32 %conv172.i.i.frozen, %20
  br label %if.else385.i.i

if.else177.i.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %freq.addr.1.i) #12, !srcloc !89
  %asmresult.i588.i.i = extractvalue { i64, i64 } %21, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %21, 1
  %shr.i.i.i = lshr i64 %asmresult.i588.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %extract.t702.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.else385.i.i

if.else385.i.i:                                   ; preds = %if.else177.i.i, %if.then171.i.i
  %vco.addr.0.off0.i.i = phi i32 [ %div175.i.i, %if.then171.i.i ], [ %extract.t702.i.i, %if.else177.i.i ]
  %__rem.0.i.i = phi i32 [ %rem173.i.i.decomposed, %if.then171.i.i ], [ %conv.i.i.i, %if.else177.i.i ]
  %conv183.i.i = zext i32 %__rem.0.i.i to i64
  %mul184.i.i = shl nuw nsw i64 %conv183.i.i, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %__rem.0.i.i)
  %cmp387.i.i = icmp ult i32 %__rem.0.i.i, 128
  br i1 %cmp387.i.i, label %if.then395.i.i, label %if.else401.i.i, !prof !88

if.then395.i.i:                                   ; preds = %if.else385.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv396.i.i = trunc i64 %mul184.i.i to i32
  %conv396.i.i.frozen = freeze i32 %conv396.i.i
  %.frozen37 = freeze i32 %19
  %div399.i.i = udiv i32 %conv396.i.i.frozen, %.frozen37
  %22 = mul i32 %div399.i.i, %.frozen37
  %rem397.i.i.decomposed = sub i32 %conv396.i.i.frozen, %22
  br label %if.end405.i.i

if.else401.i.i:                                   ; preds = %if.else385.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %mul184.i.i) #12, !srcloc !89
  %asmresult.i613.i.i = extractvalue { i64, i64 } %23, 0
  %asmresult1.i614.i.i = extractvalue { i64, i64 } %23, 1
  %shr.i615.i.i = lshr i64 %asmresult.i613.i.i, 32
  %conv.i616.i.i = trunc i64 %shr.i615.i.i to i32
  %extract.t699.i.i = trunc i64 %asmresult1.i614.i.i to i32
  br label %if.end405.i.i

if.end405.i.i:                                    ; preds = %if.else401.i.i, %if.then395.i.i
  %tmp.0.off0.i.i = phi i32 [ %div399.i.i, %if.then395.i.i ], [ %extract.t699.i.i, %if.else401.i.i ]
  %__rem187.0.i.i = phi i32 [ %rem397.i.i.decomposed, %if.then395.i.i ], [ %conv.i616.i.i, %if.else401.i.i ]
  %24 = ptrtoint ptr %fract2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %__rem187.0.i.i, ptr %fract2.i, align 4
  %25 = ptrtoint ptr %integer.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %vco.addr.0.off0.i.i, ptr %integer.i, align 4
  %26 = ptrtoint ptr %fract1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %tmp.0.off0.i.i, ptr %fract1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %19)
  %cmp410703.i.i = icmp ugt i32 %19, 16384
  br i1 %cmp410703.i.i, label %if.end405.i.i.while.body.i.i_crit_edge, label %if.end405.i.i.adf4371_pll_fract_n_compute.exit.i_crit_edge

if.end405.i.i.adf4371_pll_fract_n_compute.exit.i_crit_edge: ; preds = %if.end405.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf4371_pll_fract_n_compute.exit.i

if.end405.i.i.while.body.i.i_crit_edge:           ; preds = %if.end405.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end405.i.i.while.body.i.i_crit_edge
  %shr413.i348.i = phi i32 [ %shr413.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %__rem187.0.i.i, %if.end405.i.i.while.body.i.i_crit_edge ]
  %27 = phi i32 [ %shr412.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %19, %if.end405.i.i.while.body.i.i_crit_edge ]
  %shr412.i.i = lshr i32 %27, 1
  %shr413.i.i = lshr i32 %shr413.i348.i, 1
  %cmp410.i.i = icmp ugt i32 %27, 32769
  br i1 %cmp410.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %adf4371_pll_fract_n_compute.exit.loopexit.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

adf4371_pll_fract_n_compute.exit.loopexit.i:      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %fract2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr413.i.i, ptr %fract2.i, align 4
  br label %adf4371_pll_fract_n_compute.exit.i

adf4371_pll_fract_n_compute.exit.i:               ; preds = %adf4371_pll_fract_n_compute.exit.loopexit.i, %if.end405.i.i.adf4371_pll_fract_n_compute.exit.i_crit_edge
  %.lcssa.i.i = phi i32 [ %19, %if.end405.i.i.adf4371_pll_fract_n_compute.exit.i_crit_edge ], [ %shr412.i.i, %adf4371_pll_fract_n_compute.exit.loopexit.i ]
  %29 = ptrtoint ptr %fract2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fract2.i, align 4
  %call414.i.i = call i32 @gcd(i32 noundef %30, i32 noundef %.lcssa.i.i) #13
  %div415.i.i = udiv i32 %.lcssa.i.i, %call414.i.i
  %31 = ptrtoint ptr %mod2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div415.i.i, ptr %mod2.i, align 4
  %div416.i.i = udiv i32 %30, %call414.i.i
  %32 = ptrtoint ptr %fract2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div416.i.i, ptr %fract2.i, align 4
  %shr18.i = lshr i32 %vco.addr.0.off0.i.i, 8
  %conv19.i = trunc i32 %shr18.i to i8
  %buf.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 14
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv19.i, ptr %buf.i, align 128
  %arrayidx21.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %arrayidx21.i, align 1
  %arrayidx23.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 2
  %35 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx23.i, align 2
  %conv25.i = trunc i32 %tmp.0.off0.i.i to i8
  %arrayidx27.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 3
  %36 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv25.i, ptr %arrayidx27.i, align 1
  %shr29.i = lshr i32 %tmp.0.off0.i.i, 8
  %conv30.i = trunc i32 %shr29.i to i8
  %arrayidx32.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 4
  %37 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv30.i, ptr %arrayidx32.i, align 4
  %shr34.i = lshr i32 %tmp.0.off0.i.i, 16
  %conv35.i = trunc i32 %shr34.i to i8
  %arrayidx37.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 5
  %38 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv35.i, ptr %arrayidx37.i, align 1
  %shr69.i = lshr i32 %tmp.0.off0.i.i, 24
  %and58.i = shl i32 %div416.i.i, 1
  %and90.i = and i32 %shr69.i, 1
  %or.i = or i32 %and58.i, %and90.i
  %conv91.i = trunc i32 %or.i to i8
  %arrayidx93.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 6
  %39 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv91.i, ptr %arrayidx93.i, align 2
  %shr102.i = lshr i32 %div416.i.i, 7
  %40 = trunc i32 %shr102.i to i8
  %conv124.i = and i8 %40, 127
  %arrayidx126.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 7
  %41 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv124.i, ptr %arrayidx126.i, align 1
  %conv129.i = trunc i32 %div415.i.i to i8
  %arrayidx131.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 8
  %42 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv129.i, ptr %arrayidx131.i, align 8
  %shr140.i = lshr i32 %div415.i.i, 8
  %43 = trunc i32 %shr140.i to i8
  %conv162.i = and i8 %43, 63
  %arrayidx164.i = getelementptr %struct.adf4371_state, ptr %1, i32 0, i32 14, i32 9
  %44 = ptrtoint ptr %arrayidx164.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv162.i, ptr %arrayidx164.i, align 1
  %regmap.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 17, ptr noundef %buf.i, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp166.i = icmp slt i32 %call.i, 0
  br i1 %cmp166.i, label %adf4371_pll_fract_n_compute.exit.i.sw.epilog.thread_crit_edge, label %if.end169.i

adf4371_pll_fract_n_compute.exit.i.sw.epilog.thread_crit_edge: ; preds = %adf4371_pll_fract_n_compute.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end169.i:                                      ; preds = %adf4371_pll_fract_n_compute.exit.i
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %ref_div_factor.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %ref_div_factor.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ref_div_factor.i, align 8
  %call171.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 31, i32 noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %cmp172.i = icmp slt i32 %call171.i, 0
  br i1 %cmp172.i, label %if.end169.i.sw.epilog.thread_crit_edge, label %do.end199.i

if.end169.i.sw.epilog.thread_crit_edge:           ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

do.end199.i:                                      ; preds = %if.end169.i
  %rf_div_sel184.i = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 11
  %51 = ptrtoint ptr %rf_div_sel184.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rf_div_sel184.i, align 4
  %53 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i, align 4
  %shl202.i = shl i32 %52, 4
  %and203.i = and i32 %shl202.i, 112
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 36, i32 noundef 112, i32 noundef %and203.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp205.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp205.i, label %do.end199.i.sw.epilog.thread_crit_edge, label %if.end208.i

do.end199.i.sw.epilog.thread_crit_edge:           ; preds = %do.end199.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end208.i:                                      ; preds = %do.end199.i
  %55 = ptrtoint ptr %integer.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %integer.i, align 4
  %mul.i = mul i32 %56, 375
  %sub.i = add i32 %mul.i, 699999
  %div.i = udiv i32 %sub.i, %mul.i
  %57 = call i32 @llvm.umax.i32(i32 %div.i, i32 1) #8
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 255) #8
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %call225.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 38, i32 noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i)
  %cmp226.i = icmp slt i32 %call225.i, 0
  br i1 %cmp226.i, label %if.end208.i.sw.epilog.thread_crit_edge, label %if.end229.i

if.end208.i.sw.epilog.thread_crit_edge:           ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end229.i:                                      ; preds = %if.end208.i
  %61 = ptrtoint ptr %fract1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fract1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp231.i = icmp eq i32 %62, 0
  br i1 %cmp231.i, label %land.lhs.true.i, label %if.end229.i.if.end237.i_crit_edge

if.end229.i.if.end237.i_crit_edge:                ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end237.i

land.lhs.true.i:                                  ; preds = %if.end229.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %fract2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fract2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp234.i = icmp eq i32 %64, 0
  %spec.select.i = zext i1 %cmp234.i to i32
  br label %if.end237.i

if.end237.i:                                      ; preds = %land.lhs.true.i, %if.end229.i.if.end237.i_crit_edge
  %int_mode.0.i = phi i32 [ 0, %if.end229.i.if.end237.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call240.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 43, i32 noundef %int_mode.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240.i)
  %cmp241.i = icmp slt i32 %call240.i, 0
  br i1 %cmp241.i, label %if.end237.i.sw.epilog.thread_crit_edge, label %if.end244.i

if.end237.i.sw.epilog.thread_crit_edge:           ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end244.i:                                      ; preds = %if.end237.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i, align 4
  %69 = ptrtoint ptr %integer.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %integer.i, align 4
  %and247.i = and i32 %70, 255
  %call248.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 16, i32 noundef %and247.i) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call4 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %power_down) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %sw.bb3.sw.epilog.thread_crit_edge

sw.bb3.sw.epilog.thread_crit_edge:                ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end7:                                          ; preds = %sw.bb3
  %channel8 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %71 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %channel8, align 4
  %arrayidx = getelementptr [4 x %struct.adf4371_pwrdown], ptr @adf4371_pwrdown_ch, i32 0, i32 %72
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %bit12 = getelementptr [4 x %struct.adf4371_pwrdown], ptr @adf4371_pwrdown_ch, i32 0, i32 %72, i32 1
  %75 = ptrtoint ptr %bit12 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bit12, align 4
  %regmap = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_read(ptr noundef %78, i32 noundef %74, ptr noundef nonnull %readval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end7.sw.epilog.thread_crit_edge, label %if.end15

if.end7.sw.epilog.thread_crit_edge:               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.thread

if.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %76
  %neg = xor i32 %shl, -1
  %79 = ptrtoint ptr %readval to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %readval, align 4
  %and = and i32 %80, %neg
  %81 = ptrtoint ptr %power_down to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %power_down, align 1, !range !91
  %83 = xor i8 %82, 1
  %84 = zext i8 %83 to i32
  %shl17 = shl i32 %84, %76
  %or = or i32 %shl17, %and
  store i32 %or, ptr %readval, align 4
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_write(ptr noundef %86, i32 noundef %74, i32 noundef %or) #8
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end7.sw.epilog.thread_crit_edge, %sw.bb3.sw.epilog.thread_crit_edge, %if.end237.i.sw.epilog.thread_crit_edge, %if.end208.i.sw.epilog.thread_crit_edge, %do.end199.i.sw.epilog.thread_crit_edge, %if.end169.i.sw.epilog.thread_crit_edge, %adf4371_pll_fract_n_compute.exit.i.sw.epilog.thread_crit_edge, %sw.bb10.i.sw.epilog.thread_crit_edge, %sw.bb4.i.sw.epilog.thread_crit_edge, %sw.bb.i.sw.epilog.thread_crit_edge, %if.end.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge, %entry.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ %call240.i, %if.end237.i.sw.epilog.thread_crit_edge ], [ %call225.i, %if.end208.i.sw.epilog.thread_crit_edge ], [ %call.i.i, %do.end199.i.sw.epilog.thread_crit_edge ], [ %call171.i, %if.end169.i.sw.epilog.thread_crit_edge ], [ %call.i, %adf4371_pll_fract_n_compute.exit.i.sw.epilog.thread_crit_edge ], [ -22, %if.end.sw.epilog.thread_crit_edge ], [ -22, %sw.bb10.i.sw.epilog.thread_crit_edge ], [ -22, %sw.bb4.i.sw.epilog.thread_crit_edge ], [ -22, %sw.bb.i.sw.epilog.thread_crit_edge ], [ -22, %entry.sw.epilog.thread_crit_edge ], [ %call1, %sw.bb.sw.epilog.thread_crit_edge ], [ %call13, %if.end7.sw.epilog.thread_crit_edge ], [ %call4, %sw.bb3.sw.epilog.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %87

sw.epilog:                                        ; preds = %if.end15, %if.end244.i
  %ret.0 = phi i32 [ %call19, %if.end15 ], [ %call248.i, %if.end244.i ]
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool21.not = icmp eq i32 %ret.0, 0
  %spec.select = select i1 %tobool21.not, i32 %len, i32 %ret.0
  br label %87

87:                                               ; preds = %sw.epilog, %sw.epilog.thread
  %88 = phi i32 [ %ret.0.ph, %sw.epilog.thread ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %readval) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %power_down) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %freq) #8
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4371_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %regmap2 = getelementptr inbounds %struct.adf4371_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @regmap_read(ptr noundef %3, i32 noundef %reg, ptr noundef nonnull %readval) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %reg, i32 noundef %writeval) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_adf4371__285_627_adf4371_driver_init6, !1, !"__initcall__kmod_adf4371__285_627_adf4371_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/frequency/adf4371.c", i32 627, i32 1}
!2 = !{ptr @__exitcall_adf4371_driver_exit, !1, !"__exitcall_adf4371_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author286, !4, !"__UNIQUE_ID_author286", i1 false, i1 false}
!4 = !{!"../drivers/iio/frequency/adf4371.c", i32 629, i32 1}
!5 = !{ptr @__UNIQUE_ID_description287, !6, !"__UNIQUE_ID_description287", i1 false, i1 false}
!6 = !{!"../drivers/iio/frequency/adf4371.c", i32 630, i32 1}
!7 = !{ptr @__UNIQUE_ID_file288, !8, !"__UNIQUE_ID_file288", i1 false, i1 false}
!8 = !{!"../drivers/iio/frequency/adf4371.c", i32 631, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !8, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/frequency/adf4371.c", i32 621, i32 11}
!12 = !{ptr @adf4371_driver, !13, !"adf4371_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/frequency/adf4371.c", i32 619, i32 26}
!14 = !{ptr @adf4371_id_table, !15, !"adf4371_id_table", i1 false, i1 false}
!15 = !{!"../drivers/iio/frequency/adf4371.c", i32 605, i32 35}
!16 = !{ptr @adf4371_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/frequency/adf4371.c", i32 562, i32 11}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/frequency/adf4371.c", i32 564, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adf4371_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @adf4371_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @adf4371_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/iio/frequency/adf4371.c", i32 573, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/frequency/adf4371.c", i32 582, i32 38}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/frequency/adf4371.c", i32 598, i32 3}
!34 = !{ptr @adf4371_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @adf4371_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @adf4371_regmap_config, !37, !"adf4371_regmap_config", i1 false, i1 false}
!37 = !{!"../drivers/iio/frequency/adf4371.c", i32 146, i32 35}
!38 = !{ptr @adf4371_chip_info, !39, !"adf4371_chip_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/frequency/adf4371.c", i32 447, i32 39}
!40 = !{ptr @adf4371_chan, !41, !"adf4371_chan", i1 false, i1 false}
!41 = !{!"../drivers/iio/frequency/adf4371.c", i32 440, i32 35}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/frequency/adf4371.c", i32 426, i32 2}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/frequency/adf4371.c", i32 427, i32 2}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/frequency/adf4371.c", i32 428, i32 2}
!48 = !{ptr @adf4371_ext_info, !49, !"adf4371_ext_info", i1 false, i1 false}
!49 = !{!"../drivers/iio/frequency/adf4371.c", i32 420, i32 44}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/frequency/adf4371.c", i32 342, i32 4}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @adf4371_read.__UNIQUE_ID_ddebug259, !51, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/iio/frequency/adf4371.c", i32 357, i32 23}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/frequency/adf4371.c", i32 364, i32 38}
!58 = !{ptr @adf4371_pwrdown_ch, !59, !"adf4371_pwrdown_ch", i1 false, i1 false}
!59 = !{!"../drivers/iio/frequency/adf4371.c", i32 108, i32 37}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/frequency/adf4371.c", i32 105, i32 2}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/frequency/adf4371.c", i32 105, i32 10}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/frequency/adf4371.c", i32 105, i32 21}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/iio/frequency/adf4371.c", i32 105, i32 30}
!68 = !{ptr @adf4371_ch_names, !69, !"adf4371_ch_names", i1 false, i1 false}
!69 = !{!"../drivers/iio/frequency/adf4371.c", i32 104, i32 27}
!70 = !{ptr @adf4371_info, !71, !"adf4371_info", i1 false, i1 false}
!71 = !{!"../drivers/iio/frequency/adf4371.c", i32 471, i32 30}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/iio/frequency/adf4371.c", i32 492, i32 47}
!74 = !{ptr @adf4371_reg_defaults, !75, !"adf4371_reg_defaults", i1 false, i1 false}
!75 = !{!"../drivers/iio/frequency/adf4371.c", i32 115, i32 34}
!76 = !{ptr @adf4371_of_match, !77, !"adf4371_of_match", i1 false, i1 false}
!77 = !{!"../drivers/iio/frequency/adf4371.c", i32 612, i32 34}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{!"branch_weights", i32 2000, i32 1}
!89 = !{i64 2148676127, i64 2148676407, i64 2148676741, i64 2148677075}
!90 = !{i64 2148767408, i64 2148767413, i64 2148767426, i64 2148767470, i64 2148767504, i64 2148767525}
!91 = !{i8 0, i8 2}
