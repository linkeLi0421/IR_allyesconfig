; ModuleID = '/llk/IR_all_yes/drivers/iio/health/max30100.c_pt.bc'
source_filename = "../drivers/iio/health/max30100.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max30100_data = type { ptr, ptr, %struct.mutex, ptr, [2 x i16] }

@__initcall__kmod_max30100__288_507_max30100_driver_init6 = internal global ptr @max30100_driver_init, section ".initcall6.init", align 4
@max30100_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max30100_probe, ptr @max30100_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max30100_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max30100_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max30100_driver_exit = internal global ptr @max30100_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"max30100.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [67 x i8] c"max30100.description=MAX30100 heart rate and pulse oximeter sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"max30100.file=drivers/iio/health/max30100\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"max30100.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max30100\00", [23 x i8] zeroinitializer }, align 32
@max30100_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max30100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max30100_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max30100\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max30100_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 13, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 17, i32 0, i32 1, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@max30100_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max30100_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max30100_scan_masks = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 3, i32 0], [24 x i8] zeroinitializer }, align 32
@max30100_buffer_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr null, ptr @max30100_buffer_postenable, ptr @max30100_buffer_predisable, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@max30100_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@max30100_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max30100_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.15, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @max30100_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"max30100:448:(&max30100_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@max30100_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 450, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max30100_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/health/max30100.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max30100_probe._entry_ptr = internal global ptr @max30100_probe._entry, section ".printk_index", align 4
@max30100_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no valid irq defined\0A\00", [42 x i8] zeroinitializer }, align 32
@max30100_probe._entry_ptr.10 = internal global ptr @max30100_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max30100_irq\00", [19 x i8] zeroinitializer }, align 32
@max30100_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 468, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"request irq (%d) failed\0A\00", [39 x i8] zeroinitializer }, align 32
@max30100_probe._entry_ptr.14 = internal global ptr @max30100_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max30100_regmap\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"maxim,led-current-microamp\00", [37 x i8] zeroinitializer }, align 32
@max30100_led_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 280, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no led-current-microamp set\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max30100_led_init\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max30100_led_init._entry_ptr = internal global ptr @max30100_led_init._entry, section ".printk_index", align 4
@max30100_led_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.5, i32 288, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid RED current setting %d\00", [33 x i8] zeroinitializer }, align 32
@max30100_led_init._entry_ptr.22 = internal global ptr @max30100_led_init._entry.20, section ".printk_index", align 4
@max30100_led_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.5, i32 302, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid IR current setting %d\00", [34 x i8] zeroinitializer }, align 32
@max30100_led_init._entry_ptr.25 = internal global ptr @max30100_led_init._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 4400, i64 7600, i64 11000, i64 14200, i64 17400, i64 20800, i64 24000, i64 27100, i64 30600, i64 33800, i64 37000, i64 40200, i64 43600, i64 46800, i64 50000]
@__sancov_gen_cov_switch_values.26 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 4400, i64 7600, i64 11000, i64 14200, i64 17400, i64 20800, i64 24000, i64 27100, i64 30600, i64 33800, i64 37000, i64 40200, i64 43600, i64 46800, i64 50000]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"max30100_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 498, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 500, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"max30100_dt_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 492, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"max30100_id\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 486, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"max30100_channels\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 116, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"max30100_info\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 413, i32 30 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"max30100_scan_masks\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 114, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"max30100_buffer_setup_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 192, i32 42 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 445, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [23 x i8] c"max30100_regmap_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 96, i32 35 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 448, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 450, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 460, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 466, i32 6 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 468, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 97, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 273, i32 44 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 280, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 288, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [33 x i8] c"../drivers/iio/health/max30100.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 302, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max30100_driver_exit, ptr @__initcall__kmod_max30100__288_507_max30100_driver_init6, ptr @max30100_driver_exit, ptr @max30100_led_init._entry, ptr @max30100_led_init._entry.20, ptr @max30100_led_init._entry.23, ptr @max30100_led_init._entry_ptr, ptr @max30100_led_init._entry_ptr.22, ptr @max30100_led_init._entry_ptr.25, ptr @max30100_probe._entry, ptr @max30100_probe._entry.12, ptr @max30100_probe._entry.8, ptr @max30100_probe._entry_ptr, ptr @max30100_probe._entry_ptr.10, ptr @max30100_probe._entry_ptr.14, ptr @max30100_driver, ptr @.str, ptr @max30100_dt_ids, ptr @max30100_id, ptr @max30100_channels, ptr @max30100_info, ptr @max30100_scan_masks, ptr @max30100_buffer_setup_ops, ptr @max30100_probe.__key, ptr @.str.1, ptr @max30100_probe._key, ptr @max30100_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_scan_masks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_buffer_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_led_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_led_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max30100_led_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max30100_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max30100_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max30100_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %1 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @max30100_channels, ptr %channels, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @max30100_info, ptr %info, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %3 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %num_channels, align 4
  %available_scan_masks = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %available_scan_masks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @max30100_scan_masks, ptr %available_scan_masks, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %call, align 8
  %call2 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %dev, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @max30100_buffer_setup_ops, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %indio_dev7 = getelementptr inbounds %struct.max30100_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %indio_dev7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %indio_dev7, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %7, align 4
  %lock = getelementptr inbounds %struct.max30100_data, ptr %7, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max30100_probe.__key) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max30100_regmap_config, ptr noundef nonnull @max30100_probe._key, ptr noundef nonnull @.str.2) #6
  %regmap = getelementptr inbounds %struct.max30100_data, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call9, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %7, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i.i) #6
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !81
  %18 = getelementptr inbounds [2 x i32], ptr %val.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !81
  %call.i.i80 = call i32 @device_property_read_u32_array(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %val.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool.not.i.i = icmp eq i32 %call.i.i80, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.17) #9
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call2.i.i = call i32 @regmap_write(ptr noundef %21, i32 noundef 9, i32 noundef 127) #6
  br label %max30100_led_init.exit.i

if.end.i.i:                                       ; preds = %if.end19
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.end8.i.i [
    i32 0, label %if.end.i.i.if.end10.i.i_crit_edge
    i32 4400, label %if.end.i.i.if.then3.i.i.i_crit_edge
    i32 7600, label %if.then3.fold.split.i.i.i
    i32 11000, label %if.then3.fold.split13.i.i.i
    i32 14200, label %if.then3.fold.split14.i.i.i
    i32 17400, label %if.then3.fold.split15.i.i.i
    i32 20800, label %if.then3.fold.split16.i.i.i
    i32 24000, label %if.then3.fold.split17.i.i.i
    i32 27100, label %if.then3.fold.split18.i.i.i
    i32 30600, label %if.then3.fold.split19.i.i.i
    i32 33800, label %if.then3.fold.split20.i.i.i
    i32 37000, label %if.then3.fold.split21.i.i.i
    i32 40200, label %if.then3.fold.split22.i.i.i
    i32 43600, label %if.then3.fold.split23.i.i.i
    i32 46800, label %if.then3.fold.split24.i.i.i
    i32 50000, label %if.then3.fold.split25.i.i.i
  ]

if.end.i.i.if.then3.i.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i.i

if.then3.fold.split.i.i.i:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split13.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split14.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split15.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split16.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split17.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split18.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split19.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split20.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split21.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split22.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split23.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split24.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.fold.split25.i.i.i:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then3.fold.split25.i.i.i, %if.then3.fold.split24.i.i.i, %if.then3.fold.split23.i.i.i, %if.then3.fold.split22.i.i.i, %if.then3.fold.split21.i.i.i, %if.then3.fold.split20.i.i.i, %if.then3.fold.split19.i.i.i, %if.then3.fold.split18.i.i.i, %if.then3.fold.split17.i.i.i, %if.then3.fold.split16.i.i.i, %if.then3.fold.split15.i.i.i, %if.then3.fold.split14.i.i.i, %if.then3.fold.split13.i.i.i, %if.then3.fold.split.i.i.i, %if.end.i.i.if.then3.i.i.i_crit_edge
  %idx.011.lcssa.i.i.i = phi i32 [ 16, %if.end.i.i.if.then3.i.i.i_crit_edge ], [ 32, %if.then3.fold.split.i.i.i ], [ 48, %if.then3.fold.split13.i.i.i ], [ 64, %if.then3.fold.split14.i.i.i ], [ 80, %if.then3.fold.split15.i.i.i ], [ 96, %if.then3.fold.split16.i.i.i ], [ 112, %if.then3.fold.split17.i.i.i ], [ 128, %if.then3.fold.split18.i.i.i ], [ 144, %if.then3.fold.split19.i.i.i ], [ 160, %if.then3.fold.split20.i.i.i ], [ 176, %if.then3.fold.split21.i.i.i ], [ 192, %if.then3.fold.split22.i.i.i ], [ 208, %if.then3.fold.split23.i.i.i ], [ 224, %if.then3.fold.split24.i.i.i ], [ 240, %if.then3.fold.split25.i.i.i ]
  br label %if.end10.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.21, i32 noundef %23) #9
  br label %max30100_led_init.exit.thread.i

if.end10.i.i:                                     ; preds = %if.then3.i.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %idx.011.lcssa.sink.i.i.i = phi i32 [ %idx.011.lcssa.i.i.i, %if.then3.i.i.i ], [ %23, %if.end.i.i.if.end10.i.i_crit_edge ]
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 9, i32 noundef 240, i32 noundef %idx.011.lcssa.sink.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool13.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end15.i.i, label %if.end10.i.i.max30100_led_init.exit.thread.i_crit_edge

if.end10.i.i.max30100_led_init.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max30100_led_init.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end10.i.i
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %18, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %28, label %do.end22.i.i [
    i32 0, label %if.end15.i.i.if.end24.i.i_crit_edge
    i32 4400, label %if.end15.i.i.if.then3.i57.i.i_crit_edge
    i32 7600, label %if.then3.fold.split.i42.i.i
    i32 11000, label %if.then3.fold.split13.i43.i.i
    i32 14200, label %if.then3.fold.split14.i44.i.i
    i32 17400, label %if.then3.fold.split15.i45.i.i
    i32 20800, label %if.then3.fold.split16.i46.i.i
    i32 24000, label %if.then3.fold.split17.i47.i.i
    i32 27100, label %if.then3.fold.split18.i48.i.i
    i32 30600, label %if.then3.fold.split19.i49.i.i
    i32 33800, label %if.then3.fold.split20.i50.i.i
    i32 37000, label %if.then3.fold.split21.i51.i.i
    i32 40200, label %if.then3.fold.split22.i52.i.i
    i32 43600, label %if.then3.fold.split23.i53.i.i
    i32 46800, label %if.then3.fold.split24.i54.i.i
    i32 50000, label %if.then3.fold.split25.i55.i.i
  ]

if.end15.i.i.if.then3.i57.i.i_crit_edge:          ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.end15.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then3.fold.split.i42.i.i:                      ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split13.i43.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split14.i44.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split15.i45.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split16.i46.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split17.i47.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split18.i48.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split19.i49.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split20.i50.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split21.i51.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split22.i52.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split23.i53.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split24.i54.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.fold.split25.i55.i.i:                    ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i57.i.i

if.then3.i57.i.i:                                 ; preds = %if.then3.fold.split25.i55.i.i, %if.then3.fold.split24.i54.i.i, %if.then3.fold.split23.i53.i.i, %if.then3.fold.split22.i52.i.i, %if.then3.fold.split21.i51.i.i, %if.then3.fold.split20.i50.i.i, %if.then3.fold.split19.i49.i.i, %if.then3.fold.split18.i48.i.i, %if.then3.fold.split17.i47.i.i, %if.then3.fold.split16.i46.i.i, %if.then3.fold.split15.i45.i.i, %if.then3.fold.split14.i44.i.i, %if.then3.fold.split13.i43.i.i, %if.then3.fold.split.i42.i.i, %if.end15.i.i.if.then3.i57.i.i_crit_edge
  %idx.011.lcssa.i56.i.i = phi i32 [ 1, %if.end15.i.i.if.then3.i57.i.i_crit_edge ], [ 2, %if.then3.fold.split.i42.i.i ], [ 3, %if.then3.fold.split13.i43.i.i ], [ 4, %if.then3.fold.split14.i44.i.i ], [ 5, %if.then3.fold.split15.i45.i.i ], [ 6, %if.then3.fold.split16.i46.i.i ], [ 7, %if.then3.fold.split17.i47.i.i ], [ 8, %if.then3.fold.split18.i48.i.i ], [ 9, %if.then3.fold.split19.i49.i.i ], [ 10, %if.then3.fold.split20.i50.i.i ], [ 11, %if.then3.fold.split21.i51.i.i ], [ 12, %if.then3.fold.split22.i52.i.i ], [ 13, %if.then3.fold.split23.i53.i.i ], [ 14, %if.then3.fold.split24.i54.i.i ], [ 15, %if.then3.fold.split25.i55.i.i ]
  br label %if.end24.i.i

do.end22.i.i:                                     ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.24, i32 noundef %28) #9
  br label %max30100_led_init.exit.thread.i

if.end24.i.i:                                     ; preds = %if.then3.i57.i.i, %if.end15.i.i.if.end24.i.i_crit_edge
  %idx.011.lcssa.sink.i58.i.i = phi i32 [ %idx.011.lcssa.i56.i.i, %if.then3.i57.i.i ], [ %28, %if.end15.i.i.if.end24.i.i_crit_edge ]
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i62.i.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 9, i32 noundef 15, i32 noundef %idx.011.lcssa.sink.i58.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %max30100_led_init.exit.i

max30100_led_init.exit.thread.i:                  ; preds = %do.end22.i.i, %if.end10.i.i.max30100_led_init.exit.thread.i_crit_edge, %do.end8.i.i
  %retval.0.i.ph.i = phi i32 [ %call.i.i.i, %if.end10.i.i.max30100_led_init.exit.thread.i_crit_edge ], [ -22, %do.end22.i.i ], [ -22, %do.end8.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #6
  br label %cleanup

max30100_led_init.exit.i:                         ; preds = %if.end24.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ %call.i62.i.i, %if.end24.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %max30100_led_init.exit.i.cleanup_crit_edge

max30100_led_init.exit.i.cleanup_crit_edge:       ; preds = %max30100_led_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %max30100_led_init.exit.i
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %33, i32 noundef 7, i32 noundef 68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call.i20.i = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 6, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool7.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool7.not.i, label %max30100_chip_init.exit, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

max30100_chip_init.exit:                          ; preds = %if.end4.i
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i21.i = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 1, i32 noundef 240, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i)
  %tobool22.not = icmp eq i32 %call.i21.i, 0
  br i1 %tobool22.not, label %if.end24, label %max30100_chip_init.exit.cleanup_crit_edge

max30100_chip_init.exit.cleanup_crit_edge:        ; preds = %max30100_chip_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %max30100_chip_init.exit
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp = icmp slt i32 %39, 1
  br i1 %cmp, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %call33 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %39, ptr noundef null, ptr noundef nonnull @max30100_interrupt_handler, i32 noundef 8194, ptr noundef nonnull @.str.11, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %41) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end38, %do.end28, %max30100_chip_init.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %max30100_led_init.exit.i.cleanup_crit_edge, %max30100_led_init.exit.thread.i, %do.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end15 ], [ -22, %do.end28 ], [ %call33, %do.end38 ], [ %call42, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i21.i, %max30100_chip_init.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %max30100_led_init.exit.thread.i ], [ %call.i20.i, %if.end4.i.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %retval.0.i.i, %max30100_led_init.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #6
  %regmap.i = getelementptr inbounds %struct.max30100_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_interrupt_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap.i = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 3
  %buffer.i = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 4
  %indio_dev4 = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %dec, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %tobool.not = icmp eq i32 %cnt.0, 0
  br i1 %tobool.not, label %lor.rhs, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

lor.rhs:                                          ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %max30100_fifo_count.exit

if.end.i:                                         ; preds = %lor.rhs
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %and.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br i1 %tobool1.not.i, label %if.end.i.while.end_crit_edge, label %if.end.i.while.body_crit_edge

if.end.i.while.body_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

max30100_fifo_count.exit:                         ; preds = %lor.rhs
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %max30100_fifo_count.exit.while.body_crit_edge, label %max30100_fifo_count.exit.while.end_crit_edge

max30100_fifo_count.exit.while.end_crit_edge:     ; preds = %max30100_fifo_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

max30100_fifo_count.exit.while.body_crit_edge:    ; preds = %max30100_fifo_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body:                                       ; preds = %max30100_fifo_count.exit.while.body_crit_edge, %if.end.i.while.body_crit_edge, %while.cond.while.body_crit_edge
  %cnt.1 = phi i32 [ %cnt.0, %while.cond.while.body_crit_edge ], [ %call.i, %max30100_fifo_count.exit.while.body_crit_edge ], [ 15, %if.end.i.while.body_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i13 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %8, i8 noundef zeroext 5, i8 noundef zeroext 4, ptr noundef %buffer.i) #6
  %9 = and i32 %call.i13, -5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %indio_dev4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %indio_dev4, align 4
  %call5 = call i32 @iio_push_to_buffers(ptr noundef %12, ptr noundef %buffer.i) #6
  %dec = add i32 %cnt.1, -1
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %max30100_fifo_count.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %mask, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %mlock = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #6
  %currentmode.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 1
  %3 = ptrtoint ptr %currentmode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %currentmode.i, align 4
  %and.i = and i32 %4, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.if.end4_crit_edge, label %if.else

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.else:                                          ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 6, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else.max30100_get_temp.exit_crit_edge

if.else.max30100_get_temp.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %max30100_get_temp.exit

if.end.i:                                         ; preds = %if.else
  tail call void @msleep(i32 noundef 35) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !81
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i4.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 22, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp.i.i = icmp slt i32 %call.i4.i, 0
  br i1 %cmp.i.i, label %if.end.i.max30100_read_temp.exit.i_crit_edge, label %if.end.i.i

if.end.i.max30100_read_temp.exit.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max30100_read_temp.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  %10 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i.i, align 4
  %shl.i.i = shl i32 %11, 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i.i, ptr %val, align 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 23, ptr noundef nonnull %reg.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.max30100_read_temp.exit.i_crit_edge, label %if.end5.i.i

if.end.i.i.max30100_read_temp.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max30100_read_temp.exit.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i.i, align 4
  %and.i.i = and i32 %16, 15
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %or.i.i = or i32 %18, %and.i.i
  %shl.i.i.i = shl i32 %or.i.i, 20
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 20
  store i32 %shr.i.i.i, ptr %val, align 4
  br label %max30100_read_temp.exit.i

max30100_read_temp.exit.i:                        ; preds = %if.end5.i.i, %if.end.i.i.max30100_read_temp.exit.i_crit_edge, %if.end.i.max30100_read_temp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end5.i.i ], [ %call.i4.i, %if.end.i.max30100_read_temp.exit.i_crit_edge ], [ %call2.i.i, %if.end.i.i.max30100_read_temp.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  br label %max30100_get_temp.exit

max30100_get_temp.exit:                           ; preds = %max30100_read_temp.exit.i, %if.else.max30100_get_temp.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %max30100_read_temp.exit.i ], [ %call.i.i, %if.else.max30100_get_temp.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %spec.store.select = select i1 %tobool.not, i32 1, i32 %retval.0.i
  br label %if.end4

if.end4:                                          ; preds = %max30100_get_temp.exit, %sw.bb.if.end4_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %max30100_get_temp.exit ], [ -11, %sw.bb.if.end4_crit_edge ]
  call void @mutex_unlock(ptr noundef %mlock) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %val, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %if.end4, %entry.sw.epilog_crit_edge
  %ret.1 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 10, %sw.bb6 ], [ %ret.0, %if.end4 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_buffer_postenable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 6, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call7.i, %if.end5.i ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max30100_buffer_predisable(ptr nocapture noundef readonly %indio_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %regmap.i = getelementptr inbounds %struct.max30100_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max30100_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %reg)
  %0 = icmp ult i32 %reg, 24
  %switch.cast = trunc i32 %reg to i24
  %switch.downshift = lshr i24 -4194179, %switch.cast
  %1 = and i24 %switch.downshift, 1
  %switch.masked = icmp ne i24 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_max30100__288_507_max30100_driver_init6, !1, !"__initcall__kmod_max30100__288_507_max30100_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/health/max30100.c", i32 507, i32 1}
!2 = !{ptr @__exitcall_max30100_driver_exit, !1, !"__exitcall_max30100_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/health/max30100.c", i32 509, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/health/max30100.c", i32 510, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/health/max30100.c", i32 511, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/health/max30100.c", i32 500, i32 11}
!12 = !{ptr @max30100_driver, !13, !"max30100_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/health/max30100.c", i32 498, i32 26}
!14 = !{ptr @max30100_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/health/max30100.c", i32 445, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max30100_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/iio/health/max30100.c", i32 448, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/health/max30100.c", i32 450, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max30100_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @max30100_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/health/max30100.c", i32 460, i32 3}
!30 = !{ptr @max30100_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max30100_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/health/max30100.c", i32 466, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/health/max30100.c", i32 468, i32 3}
!36 = !{ptr @max30100_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max30100_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @max30100_channels, !39, !"max30100_channels", i1 false, i1 false}
!39 = !{!"../drivers/iio/health/max30100.c", i32 116, i32 35}
!40 = !{ptr @max30100_info, !41, !"max30100_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/health/max30100.c", i32 413, i32 30}
!42 = !{ptr @max30100_scan_masks, !43, !"max30100_scan_masks", i1 false, i1 false}
!43 = !{!"../drivers/iio/health/max30100.c", i32 114, i32 28}
!44 = !{ptr @max30100_buffer_setup_ops, !45, !"max30100_buffer_setup_ops", i1 false, i1 false}
!45 = !{!"../drivers/iio/health/max30100.c", i32 192, i32 42}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/health/max30100.c", i32 97, i32 10}
!48 = !{ptr @max30100_regmap_config, !49, !"max30100_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/iio/health/max30100.c", i32 96, i32 35}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/iio/health/max30100.c", i32 273, i32 44}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/iio/health/max30100.c", i32 280, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @max30100_led_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @max30100_led_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/iio/health/max30100.c", i32 288, i32 3}
!60 = !{ptr @max30100_led_init._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @max30100_led_init._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/health/max30100.c", i32 302, i32 3}
!64 = !{ptr @max30100_led_init._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @max30100_led_init._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = distinct !{null, !67, !"max30100_led_current_mapping", i1 false, i1 false}
!67 = !{!"../drivers/iio/health/max30100.c", i32 108, i32 27}
!68 = !{ptr @max30100_dt_ids, !69, !"max30100_dt_ids", i1 false, i1 false}
!69 = !{!"../drivers/iio/health/max30100.c", i32 492, i32 34}
!70 = !{ptr @max30100_id, !71, !"max30100_id", i1 false, i1 false}
!71 = !{!"../drivers/iio/health/max30100.c", i32 486, i32 35}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"auto-init"}
