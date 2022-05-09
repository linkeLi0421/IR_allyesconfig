; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/hp03.c_pt.bc'
source_filename = "../drivers/iio/pressure/hp03.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.hp03_priv = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_hp03__288_288_hp03_driver_init6 = internal global ptr @hp03_driver_init, section ".initcall6.init", align 4
@hp03_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hp03_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hp03_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hp03_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hp03_driver_exit = internal global ptr @hp03_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [40 x i8] c"hp03.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [73 x i8] c"hp03.description=Driver for Hope RF HP03 pressure and temperature sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [36 x i8] c"hp03.file=drivers/iio/pressure/hp03\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"hp03.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hp03\00", [27 x i8] zeroinitializer }, align 32
@hp03_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hoperf,hp03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hp03_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hp03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hp03_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@hp03_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 17, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@hp03_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @hp03_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xclr\00", [27 x i8] zeroinitializer }, align 32
@hp03_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 235, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to claim XCLR GPIO\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hp03_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/pressure/hp03.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hp03_probe._entry_ptr = internal global ptr @hp03_probe._entry, section ".printk_index", align 4
@hp03_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 248, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"New EEPROM I2C device failed\0A\00", [34 x i8] zeroinitializer }, align 32
@hp03_probe._entry_ptr.10 = internal global ptr @hp03_probe._entry.8, section ".printk_index", align 4
@hp03_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hp03_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @hp03_is_writeable_reg, ptr null, ptr @hp03_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 33, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"hp03:253:(&hp03_regmap_config)->lock\00", [59 x i8] zeroinitializer }, align 32
@hp03_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 255, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate EEPROM regmap\0A\00", [62 x i8] zeroinitializer }, align 32
@hp03_probe._entry_ptr.14 = internal global ptr @hp03_probe._entry.12, section ".printk_index", align 4
@hp03_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 261, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register IIO device\0A\00", [33 x i8] zeroinitializer }, align 32
@hp03_probe._entry_ptr.17 = internal global ptr @hp03_probe._entry.15, section ".printk_index", align 4
@hp03_update_temp_pressure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read EEPROM (reg=%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hp03_update_temp_pressure\00", [38 x i8] zeroinitializer }, align 32
@hp03_update_temp_pressure._entry_ptr = internal global ptr @hp03_update_temp_pressure._entry, section ".printk_index", align 4
@hp03_update_temp_pressure._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.5, i32 116, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read pressure\0A\00", [39 x i8] zeroinitializer }, align 32
@hp03_update_temp_pressure._entry_ptr.22 = internal global ptr @hp03_update_temp_pressure._entry.20, section ".printk_index", align 4
@hp03_update_temp_pressure._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.5, i32 123, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read temperature\0A\00", [36 x i8] zeroinitializer }, align 32
@hp03_update_temp_pressure._entry_ptr.25 = internal global ptr @hp03_update_temp_pressure._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 17]
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"hp03_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 280, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"hp03_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 274, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [8 x i8] c"hp03_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 268, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 225, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"hp03_channels\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 47, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"hp03_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 207, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 233, i32 46 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 235, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 248, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"hp03_regmap_config\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 70, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 252, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 255, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 261, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 106, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 116, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [31 x i8] c"../drivers/iio/pressure/hp03.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 123, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_hp03_driver_exit, ptr @__initcall__kmod_hp03__288_288_hp03_driver_init6, ptr @hp03_driver_exit, ptr @hp03_probe._entry, ptr @hp03_probe._entry.12, ptr @hp03_probe._entry.15, ptr @hp03_probe._entry.8, ptr @hp03_probe._entry_ptr, ptr @hp03_probe._entry_ptr.10, ptr @hp03_probe._entry_ptr.14, ptr @hp03_probe._entry_ptr.17, ptr @hp03_update_temp_pressure._entry, ptr @hp03_update_temp_pressure._entry.20, ptr @hp03_update_temp_pressure._entry.23, ptr @hp03_update_temp_pressure._entry_ptr, ptr @hp03_update_temp_pressure._entry_ptr.22, ptr @hp03_update_temp_pressure._entry_ptr.25, ptr @hp03_driver, ptr @.str, ptr @hp03_of_match, ptr @hp03_id, ptr @hp03_probe.__key, ptr @.str.1, ptr @hp03_channels, ptr @hp03_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @hp03_probe._key, ptr @hp03_regmap_config, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_update_temp_pressure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_update_temp_pressure._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp03_update_temp_pressure._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hp03_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hp03_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hp03_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @hp03_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp03_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 116) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %1, align 4
  %lock = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hp03_probe.__key) #7
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %id, ptr %name4, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @hp03_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %5 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %num_channels, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hp03_info, ptr %info, align 8
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %call, align 8
  %call5 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 7) #7
  %xclr_gpio = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %xclr_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %xclr_gpio, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  %9 = ptrtoint ptr %xclr_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xclr_gpio, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call15 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %13, i16 noundef zeroext 80) #7
  %eeprom_client = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %eeprom_client to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call15, ptr %eeprom_client, align 4
  %cmp.i75 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %do.end21, label %if.end24

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %15 = ptrtoint ptr %eeprom_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom_client, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call26 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call15, ptr noundef nonnull @hp03_regmap_config, ptr noundef nonnull @hp03_probe._key, ptr noundef nonnull @.str.11) #7
  %eeprom_regmap = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %eeprom_regmap, align 4
  %cmp.i76 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  %19 = ptrtoint ptr %eeprom_regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %eeprom_regmap, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end24
  %call36 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end35.cleanup_crit_edge, label %do.end41

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end35.cleanup_crit_edge, %do.end32, %do.end21, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end11 ], [ %17, %do.end21 ], [ %21, %do.end32 ], [ %call36, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp03_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %coefs.i = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %coefs.i) #7
  %4 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 1
  %5 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 2
  %6 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 3
  %7 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 4
  %8 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 5
  %9 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 6
  %10 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 7
  %11 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 8
  %12 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 9
  %13 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 10
  %14 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 11
  %15 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 12
  %16 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 13
  %17 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 14
  %18 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 15
  %19 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 16
  %20 = getelementptr inbounds [18 x i8], ptr %coefs.i, i32 0, i32 17
  %eeprom_regmap.i = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 4
  %21 = call ptr @memset(ptr %coefs.i, i32 255, i32 18)
  %22 = ptrtoint ptr %eeprom_regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %eeprom_regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 16, ptr noundef nonnull %coefs.i, i32 noundef 18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.18, i32 noundef 16) #10
  br label %hp03_update_temp_pressure.exit.thread

if.end.i:                                         ; preds = %entry
  %xclr_gpio.i = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %xclr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xclr_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %25, i32 noundef 1) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -1, i8 noundef zeroext -16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.err_adc.i_crit_edge, label %hp03_get_temp_pressure.exit.i

if.end.i.err_adc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_adc.i

hp03_get_temp_pressure.exit.i:                    ; preds = %if.end.i
  call void @msleep(i32 noundef 50) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call2.i.i = call i32 @i2c_smbus_read_word_data(ptr noundef %29, i8 noundef zeroext -3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i, label %hp03_get_temp_pressure.exit.i.err_adc.i_crit_edge, label %if.end8.i

hp03_get_temp_pressure.exit.i.err_adc.i_crit_edge: ; preds = %hp03_get_temp_pressure.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_adc.i

if.end8.i:                                        ; preds = %hp03_get_temp_pressure.exit.i
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i133.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -1, i8 noundef zeroext -24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %cmp.i134.i = icmp slt i32 %call.i133.i, 0
  br i1 %cmp.i134.i, label %if.end8.i.err_adc.i_crit_edge, label %hp03_get_temp_pressure.exit138.i

if.end8.i.err_adc.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_adc.i

hp03_get_temp_pressure.exit138.i:                 ; preds = %if.end8.i
  call void @msleep(i32 noundef 50) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call2.i135.i = call i32 @i2c_smbus_read_word_data(ptr noundef %33, i8 noundef zeroext -3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i135.i)
  %cmp10.i = icmp slt i32 %call2.i135.i, 0
  br i1 %cmp10.i, label %hp03_get_temp_pressure.exit138.i.err_adc.i_crit_edge, label %if.end

hp03_get_temp_pressure.exit138.i.err_adc.i_crit_edge: ; preds = %hp03_get_temp_pressure.exit138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_adc.i

err_adc.i:                                        ; preds = %hp03_get_temp_pressure.exit138.i.err_adc.i_crit_edge, %if.end8.i.err_adc.i_crit_edge, %hp03_get_temp_pressure.exit.i.err_adc.i_crit_edge, %if.end.i.err_adc.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.21, %if.end.i.err_adc.i_crit_edge ], [ @.str.21, %hp03_get_temp_pressure.exit.i.err_adc.i_crit_edge ], [ @.str.24, %if.end8.i.err_adc.i_crit_edge ], [ @.str.24, %hp03_get_temp_pressure.exit138.i.err_adc.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i.i, %if.end.i.err_adc.i_crit_edge ], [ %call2.i.i, %hp03_get_temp_pressure.exit.i.err_adc.i_crit_edge ], [ %call.i133.i, %if.end8.i.err_adc.i_crit_edge ], [ %call2.i135.i, %hp03_get_temp_pressure.exit138.i.err_adc.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.24.sink.i) #10
  %34 = ptrtoint ptr %xclr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xclr_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %35, i32 noundef 0) #7
  br label %hp03_update_temp_pressure.exit.thread

hp03_update_temp_pressure.exit.thread:            ; preds = %err_adc.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %ret.0.i, %err_adc.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %coefs.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end:                                           ; preds = %hp03_get_temp_pressure.exit138.i
  %36 = ptrtoint ptr %xclr_gpio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xclr_gpio.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %37, i32 noundef 0) #7
  %38 = ptrtoint ptr %coefs.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %coefs.i, align 1
  %conv.i = zext i8 %39 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %4, align 1
  %conv20.i = zext i8 %41 to i32
  %or.i = or i32 %shl.i, %conv20.i
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %5, align 1
  %conv.1.i = zext i8 %43 to i32
  %shl.1.neg.i = mul i32 %conv.1.i, 1073741568
  %44 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %6, align 1
  %conv20.1.i = zext i8 %45 to i32
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %7, align 1
  %conv.2.i = zext i8 %47 to i32
  %shl.2.i = shl nuw nsw i32 %conv.2.i, 8
  %48 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %8, align 1
  %conv20.2.i = zext i8 %49 to i32
  %or.2.i = or i32 %shl.2.i, %conv20.2.i
  %50 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %9, align 1
  %conv.3.i = zext i8 %51 to i32
  %shl.3.i = shl nuw nsw i32 %conv.3.i, 8
  %52 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %10, align 1
  %conv20.3.i = zext i8 %53 to i32
  %or.3.i = or i32 %shl.3.i, %conv20.3.i
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %11, align 1
  %conv.4.i = zext i8 %55 to i16
  %shl.4.i = shl nuw i16 %conv.4.i, 8
  %56 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %12, align 1
  %conv20.4.i = zext i8 %57 to i16
  %or.4.i = or i16 %shl.4.i, %conv20.4.i
  %58 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %13, align 1
  %conv.5.i = zext i8 %59 to i32
  %shl.5.i = shl nuw nsw i32 %conv.5.i, 8
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %14, align 1
  %conv20.5.i = zext i8 %61 to i32
  %or.5.i = or i32 %shl.5.i, %conv20.5.i
  %62 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %15, align 1
  %conv.6.i = zext i8 %63 to i32
  %shl.6.i = shl nuw nsw i32 %conv.6.i, 8
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %16, align 1
  %conv20.6.i = zext i8 %65 to i32
  %or.6.i = or i32 %shl.6.i, %conv20.6.i
  %trunc.i = trunc i32 %call2.i.i to i16
  %rev.i = call i16 @llvm.bswap.i16(i16 %trunc.i) #7
  %or26.i = zext i16 %rev.i to i32
  %trunc131.i = trunc i32 %call2.i135.i to i16
  %rev132.i = call i16 @llvm.bswap.i16(i16 %trunc131.i) #7
  %or31.i = zext i16 %rev132.i to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %rev132.i, i16 %or.4.i)
  %cmp34.not.i = icmp ult i16 %rev132.i, %or.4.i
  %66 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %66)
  %.val.i = load i8, ptr %18, align 1
  %67 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %67)
  %.val146.i = load i8, ptr %17, align 1
  %68 = select i1 %cmp34.not.i, i8 %.val.i, i8 %.val146.i
  %ab_val.0.i = zext i8 %68 to i32
  %conv43.i = zext i16 %or.4.i to i32
  %sub.i = sub nsw i32 %or31.i, %conv43.i
  %shr44.i = ashr i32 %sub.i, 7
  %mul45.i = mul nsw i32 %shr44.i, %shr44.i
  %mul47.i = mul nsw i32 %mul45.i, %ab_val.0.i
  %69 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %19, align 1
  %conv49.i = zext i8 %70 to i32
  %shr50.i = lshr i32 %mul47.i, %conv49.i
  %sub51.i = sub nsw i32 %sub.i, %shr50.i
  %sub56.i = add nsw i32 %or.3.i, -1024
  %mul57.i = mul i32 %sub51.i, %sub56.i
  %shr58.i = ashr i32 %mul57.i, 14
  %71 = add nsw i32 %shr58.i, %conv20.1.i
  %add59.neg.i = sub i32 %shl.1.neg.i, %71
  %mul60.neg.i = shl i32 %add59.neg.i, 2
  %mul65.i = mul i32 %sub51.i, %or.2.i
  %shr66.i = ashr i32 %mul65.i, 10
  %add67.i = add nsw i32 %shr66.i, %or.i
  %sub68.i = add nsw i32 %or26.i, -7168
  %mul69.i = mul i32 %add67.i, %sub68.i
  %shr70.i = ashr i32 %mul69.i, 14
  %sub71.i = add nsw i32 %shr70.i, %mul60.neg.i
  %mul72.i = mul nsw i32 %sub71.i, 100
  %shr73.i = ashr i32 %mul72.i, 5
  %mul76.i = mul nuw nsw i32 %or.6.i, 10
  %add77.i = add nsw i32 %shr73.i, %mul76.i
  %pressure.i = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 5
  %72 = ptrtoint ptr %pressure.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add77.i, ptr %pressure.i, align 4
  %mul80.i = mul i32 %sub51.i, %or.5.i
  %shr81.i = ashr i32 %mul80.i, 16
  %73 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %20, align 1
  %conv84.i = zext i8 %74 to i32
  %shr85.i = ashr i32 %sub51.i, %conv84.i
  %add82.i = sub i32 250, %shr85.i
  %sub86.i = add i32 %add82.i, %shr81.i
  %temp.i = getelementptr inbounds %struct.hp03_priv, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub86.i, ptr %temp.i, align 4
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %coefs.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %76 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb5
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %77 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %chan, align 4
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %78, label %sw.bb.cleanup_crit_edge [
    i32 17, label %sw.bb3
    i32 9, label %sw.bb4
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %pressure.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pressure.i, align 4
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %temp.i, align 4
  %85 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %86 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %chan, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %87, label %sw.bb5.cleanup_crit_edge [
    i32 17, label %sw.bb7
    i32 9, label %sw.bb8
  ]

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %val, align 4
  %90 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1000, ptr %val2, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb7, %sw.bb5.cleanup_crit_edge, %sw.bb4, %sw.bb3, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %hp03_update_temp_pressure.exit.thread
  %retval.0 = phi i32 [ 1, %sw.bb8 ], [ 2, %sw.bb7 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %hp03_update_temp_pressure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hp03_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hp03_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_hp03__288_288_hp03_driver_init6, !1, !"__initcall__kmod_hp03__288_288_hp03_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/hp03.c", i32 288, i32 1}
!2 = !{ptr @__exitcall_hp03_driver_exit, !1, !"__exitcall_hp03_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/hp03.c", i32 290, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/hp03.c", i32 291, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/hp03.c", i32 292, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/hp03.c", i32 282, i32 11}
!12 = !{ptr @hp03_driver, !13, !"hp03_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/hp03.c", i32 280, i32 26}
!14 = !{ptr @hp03_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/hp03.c", i32 225, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/pressure/hp03.c", i32 233, i32 46}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/pressure/hp03.c", i32 235, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hp03_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @hp03_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/pressure/hp03.c", i32 248, i32 3}
!29 = !{ptr @hp03_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hp03_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @hp03_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/iio/pressure/hp03.c", i32 252, i32 24}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/pressure/hp03.c", i32 255, i32 3}
!36 = !{ptr @hp03_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @hp03_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/pressure/hp03.c", i32 261, i32 3}
!40 = !{ptr @hp03_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @hp03_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @hp03_channels, !43, !"hp03_channels", i1 false, i1 false}
!43 = !{!"../drivers/iio/pressure/hp03.c", i32 47, i32 35}
!44 = !{ptr @hp03_info, !45, !"hp03_info", i1 false, i1 false}
!45 = !{!"../drivers/iio/pressure/hp03.c", i32 207, i32 30}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/pressure/hp03.c", i32 106, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @hp03_update_temp_pressure._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @hp03_update_temp_pressure._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/pressure/hp03.c", i32 116, i32 3}
!53 = !{ptr @hp03_update_temp_pressure._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @hp03_update_temp_pressure._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/pressure/hp03.c", i32 123, i32 3}
!57 = !{ptr @hp03_update_temp_pressure._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @hp03_update_temp_pressure._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @hp03_regmap_config, !60, !"hp03_regmap_config", i1 false, i1 false}
!60 = !{!"../drivers/iio/pressure/hp03.c", i32 70, i32 35}
!61 = !{ptr @hp03_of_match, !62, !"hp03_of_match", i1 false, i1 false}
!62 = !{!"../drivers/iio/pressure/hp03.c", i32 274, i32 34}
!63 = !{ptr @hp03_id, !64, !"hp03_id", i1 false, i1 false}
!64 = !{!"../drivers/iio/pressure/hp03.c", i32 268, i32 35}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
