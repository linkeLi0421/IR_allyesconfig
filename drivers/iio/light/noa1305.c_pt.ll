; ModuleID = '/llk/IR_all_yes/drivers/iio/light/noa1305.c_pt.bc'
source_filename = "../drivers/iio/light/noa1305.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.noa1305_priv = type { ptr, ptr, ptr }

@__initcall__kmod_noa1305__288_306_noa1305_driver_init6 = internal global ptr @noa1305_driver_init, section ".initcall6.init", align 4
@noa1305_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @noa1305_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @noa1305_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @noa1305_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_noa1305_driver_exit = internal global ptr @noa1305_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [61 x i8] c"noa1305.author=Sergei Miroshnichenko <sergeimir@emcraft.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"noa1305.author=Martyn Welch <martyn.welch@collabora.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [66 x i8] c"noa1305.description=ON Semiconductor NOA1305 ambient light sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [39 x i8] c"noa1305.file=drivers/iio/light/noa1305\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"noa1305.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"noa1305\00", [24 x i8] zeroinitializer }, align 32
@noa1305_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"onnn,noa1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@noa1305_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"noa1305\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@noa1305_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@noa1305_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 8, i32 0, i32 0, i32 8, ptr @noa1305_writable_reg, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"noa1305:211:(&noa1305_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@noa1305_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Regmap initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"noa1305_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/noa1305.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr = internal global ptr @noa1305_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"get regulator vin failed\0A\00", [38 x i8] zeroinitializer }, align 32
@noa1305_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable regulator vin failed\0A\00", [35 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.11 = internal global ptr @noa1305_probe._entry.9, section ".printk_index", align 4
@noa1305_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 232, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"addition of devm action failed\0A\00", [32 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.14 = internal global ptr @noa1305_probe._entry.12, section ".printk_index", align 4
@noa1305_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ID reading failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.17 = internal global ptr @noa1305_probe._entry.15, section ".printk_index", align 4
@noa1305_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown device ID: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.20 = internal global ptr @noa1305_probe._entry.18, section ".printk_index", align 4
@noa1305_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Enabling power control failed\0A\00", [33 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.23 = internal global ptr @noa1305_probe._entry.21, section ".printk_index", align 4
@noa1305_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 261, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device reset failed\0A\00", [43 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.26 = internal global ptr @noa1305_probe._entry.24, section ".printk_index", align 4
@noa1305_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 268, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Setting integration time failed\0A\00", [63 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.29 = internal global ptr @noa1305_probe._entry.27, section ".printk_index", align 4
@noa1305_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @noa1305_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@noa1305_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@noa1305_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 280, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registering device failed\0A\00", [37 x i8] zeroinitializer }, align 32
@noa1305_probe._entry_ptr.32 = internal global ptr @noa1305_probe._entry.30, section ".printk_index", align 4
@switch.table.noa1305_read_raw = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 100, i32 100, i32 100, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000], [32 x i8] zeroinitializer }, align 32
@switch.table.noa1305_read_raw.33 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 616, i32 308, i32 154, i32 77, i32 385, i32 1925, i32 9625, i32 48125], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"noa1305_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 297, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 299, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"noa1305_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 285, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"noa1305_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 291, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [22 x i8] c"noa1305_regmap_config\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 182, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 211, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 213, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 219, i32 51 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 222, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 226, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 232, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 242, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 248, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 255, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 261, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 268, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"noa1305_info\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 163, i32 30 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"noa1305_channels\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 120, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [31 x i8] c"../drivers/iio/light/noa1305.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 280, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"switch.table.noa1305_read_raw\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [33 x i8] c"switch.table.noa1305_read_raw.33\00", align 1
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_noa1305_driver_exit, ptr @__initcall__kmod_noa1305__288_306_noa1305_driver_init6, ptr @noa1305_driver_exit, ptr @noa1305_probe._entry, ptr @noa1305_probe._entry.12, ptr @noa1305_probe._entry.15, ptr @noa1305_probe._entry.18, ptr @noa1305_probe._entry.21, ptr @noa1305_probe._entry.24, ptr @noa1305_probe._entry.27, ptr @noa1305_probe._entry.30, ptr @noa1305_probe._entry.9, ptr @noa1305_probe._entry_ptr, ptr @noa1305_probe._entry_ptr.11, ptr @noa1305_probe._entry_ptr.14, ptr @noa1305_probe._entry_ptr.17, ptr @noa1305_probe._entry_ptr.20, ptr @noa1305_probe._entry_ptr.23, ptr @noa1305_probe._entry_ptr.26, ptr @noa1305_probe._entry_ptr.29, ptr @noa1305_probe._entry_ptr.32, ptr @noa1305_driver, ptr @.str, ptr @noa1305_of_match, ptr @noa1305_ids, ptr @noa1305_probe._key, ptr @noa1305_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @noa1305_info, ptr @noa1305_channels, ptr @.str.31, ptr @switch.table.noa1305_read_raw, ptr @switch.table.noa1305_read_raw.33], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @noa1305_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.noa1305_read_raw to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.noa1305_read_raw.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @noa1305_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @noa1305_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @noa1305_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @noa1305_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noa1305_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %data = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %data, align 2, !annotation !82
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 12) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @noa1305_regmap_config, ptr noundef nonnull @noa1305_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %vin_reg = getelementptr inbounds %struct.noa1305_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vin_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %vin_reg, align 4
  %cmp.i145 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call9 to i32
  %call16 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %call19 = tail call i32 @regulator_enable(ptr noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @noa1305_reg_remove, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %vin_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vin_reg, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %7) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %3, align 4
  %regmap37 = getelementptr inbounds %struct.noa1305_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap37 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %regmap37, align 4
  %call38 = call i32 @regmap_bulk_read(ptr noundef %call1, i32 noundef 8, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call38) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6405, i16 %12)
  %cmp45.not = icmp eq i16 %12, 6405
  br i1 %cmp45.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  %conv = zext i16 %13 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %conv) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %call53 = call i32 @regmap_write(ptr noundef %call1, i32 noundef 0, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.end59, label %if.end61

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end52
  %call62 = call i32 @regmap_write(ptr noundef %call1, i32 noundef 1, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end70:                                         ; preds = %if.end61
  %call71 = call i32 @regmap_write(ptr noundef %call1, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end79:                                         ; preds = %if.end70
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @noa1305_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @noa1305_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str, ptr %name, align 8
  %18 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %call, align 8
  %call81 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end79.cleanup_crit_edge, label %do.end86

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end86:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end86, %if.end79.cleanup_crit_edge, %do.end77, %do.end68, %do.end59, %do.end50, %do.end42, %do.end33, %do.end24, %if.then12, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %do.end ], [ %call16, %if.then12 ], [ %call19, %do.end24 ], [ %call.i, %do.end33 ], [ %call38, %do.end42 ], [ -19, %do.end50 ], [ %call53, %do.end59 ], [ %call62, %do.end68 ], [ %call71, %do.end77 ], [ -12, %entry.cleanup_crit_edge ], [ %call81, %do.end86 ], [ 0, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @noa1305_reg_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vin_reg = getelementptr inbounds %struct.noa1305_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %vin_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vin_reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @noa1305_writable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg)
  %switch = icmp ult i32 %reg, 6
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @noa1305_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %data.i19 = alloca i32, align 4
  %data.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %cond12 = icmp eq i32 %4, 6
  br i1 %cond12, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #7
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %data.i, align 2, !annotation !82
  %regmap.i = getelementptr inbounds %struct.noa1305_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %data.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %noa1305_measure.exit.thread, label %noa1305_measure.exit

noa1305_measure.exit.thread:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  br label %cleanup

noa1305_measure.exit:                             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data.i, align 2
  %10 = call i16 @llvm.bswap.i16(i16 %9) #7
  %conv.i = zext i16 %10 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #7
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cond = icmp eq i32 %13, 6
  br i1 %cond, label %sw.bb5, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i19) #7
  %14 = ptrtoint ptr %data.i19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %data.i19, align 4, !annotation !82
  %regmap.i20 = getelementptr inbounds %struct.noa1305_priv, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i20, align 4
  %call.i21 = call i32 @regmap_read(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %data.i19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i22 = icmp slt i32 %call.i21, 0
  br i1 %cmp.i22, label %sw.bb5.noa1305_scale.exit_crit_edge, label %if.end.i23

sw.bb5.noa1305_scale.exit_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %noa1305_scale.exit

if.end.i23:                                       ; preds = %sw.bb5
  %17 = ptrtoint ptr %data.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %switch.lookup, label %if.end.i23.noa1305_scale.exit_crit_edge

if.end.i23.noa1305_scale.exit_crit_edge:          ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %noa1305_scale.exit

switch.lookup:                                    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.noa1305_read_raw, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep27 = getelementptr inbounds [8 x i32], ptr @switch.table.noa1305_read_raw.33, i32 0, i32 %18
  %21 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load28 = load i32, ptr %switch.gep27, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %switch.load, ptr %val, align 4
  %23 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %switch.load28, ptr %val2, align 4
  br label %noa1305_scale.exit

noa1305_scale.exit:                               ; preds = %switch.lookup, %if.end.i23.noa1305_scale.exit_crit_edge, %sw.bb5.noa1305_scale.exit_crit_edge
  %retval.0.i24 = phi i32 [ %call.i21, %sw.bb5.noa1305_scale.exit_crit_edge ], [ -22, %if.end.i23.noa1305_scale.exit_crit_edge ], [ 10, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i19) #7
  br label %cleanup

cleanup:                                          ; preds = %noa1305_scale.exit, %sw.bb3.cleanup_crit_edge, %noa1305_measure.exit, %noa1305_measure.exit.thread, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i24, %noa1305_scale.exit ], [ 1, %noa1305_measure.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ %call.i, %noa1305_measure.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_noa1305__288_306_noa1305_driver_init6, !1, !"__initcall__kmod_noa1305__288_306_noa1305_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/noa1305.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_noa1305_driver_exit, !1, !"__exitcall_noa1305_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/noa1305.c", i32 308, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/noa1305.c", i32 309, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/noa1305.c", i32 310, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/iio/light/noa1305.c", i32 311, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/noa1305.c", i32 299, i32 12}
!14 = !{ptr @noa1305_driver, !15, !"noa1305_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/noa1305.c", i32 297, i32 26}
!16 = !{ptr @noa1305_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/noa1305.c", i32 211, i32 11}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/noa1305.c", i32 213, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @noa1305_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @noa1305_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/noa1305.c", i32 219, i32 51}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/noa1305.c", i32 222, i32 10}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/noa1305.c", i32 226, i32 3}
!33 = !{ptr @noa1305_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @noa1305_probe._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/noa1305.c", i32 232, i32 3}
!37 = !{ptr @noa1305_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @noa1305_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/noa1305.c", i32 242, i32 3}
!41 = !{ptr @noa1305_probe._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @noa1305_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/light/noa1305.c", i32 248, i32 3}
!45 = !{ptr @noa1305_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @noa1305_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/noa1305.c", i32 255, i32 3}
!49 = !{ptr @noa1305_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @noa1305_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/noa1305.c", i32 261, i32 3}
!53 = !{ptr @noa1305_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @noa1305_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/noa1305.c", i32 268, i32 3}
!57 = !{ptr @noa1305_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @noa1305_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/noa1305.c", i32 280, i32 3}
!61 = !{ptr @noa1305_probe._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @noa1305_probe._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @noa1305_regmap_config, !64, !"noa1305_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/iio/light/noa1305.c", i32 182, i32 35}
!65 = !{ptr @noa1305_info, !66, !"noa1305_info", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/noa1305.c", i32 163, i32 30}
!67 = !{ptr @noa1305_channels, !68, !"noa1305_channels", i1 false, i1 false}
!68 = !{!"../drivers/iio/light/noa1305.c", i32 120, i32 35}
!69 = !{ptr @noa1305_of_match, !70, !"noa1305_of_match", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/noa1305.c", i32 285, i32 34}
!71 = !{ptr @noa1305_ids, !72, !"noa1305_ids", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/noa1305.c", i32 291, i32 35}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
