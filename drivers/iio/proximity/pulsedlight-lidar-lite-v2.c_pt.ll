; ModuleID = '/llk/IR_all_yes/drivers/iio/proximity/pulsedlight-lidar-lite-v2.c_pt.bc'
source_filename = "../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lidar_data = type { ptr, ptr, ptr, i32, %struct.anon.87 }
%struct.anon.87 = type { i16, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_pulsedlight_lidar_lite_v2__289_378_lidar_driver_init6 = internal global ptr @lidar_driver_init, section ".initcall6.init", align 4
@lidar_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lidar_probe, ptr @lidar_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lidar_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lidar_pm_ops, ptr null, ptr null }, ptr @lidar_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lidar_driver_exit = internal global ptr @lidar_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [76 x i8] c"pulsedlight_lidar_lite_v2.author=Matt Ranostay <matt.ranostay@konsulko.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"pulsedlight_lidar_lite_v2.description=PulsedLight LIDAR sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [79 x i8] c"pulsedlight_lidar_lite_v2.file=drivers/iio/proximity/pulsedlight-lidar-lite-v2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [38 x i8] c"pulsedlight_lidar_lite_v2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"lidar\00", [26 x i8] zeroinitializer }, align 32
@lidar_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pulsedlight,lidar-lite-v2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"grmn,lidar-lite-v3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lidar_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lidar_pm_runtime_suspend, ptr @lidar_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@lidar_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lidar-lite-v2\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lidar-lite-v3\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lidar_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @lidar_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lidar_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 22, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 1, %struct.anon.86 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@lidar_smbus_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot write addr value\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lidar_smbus_xfer\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/iio/proximity/pulsedlight-lidar-lite-v2.c\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lidar_smbus_xfer._entry_ptr = internal global ptr @lidar_smbus_xfer._entry, section ".printk_index", align 4
@lidar_smbus_xfer._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot read data value\00", [41 x i8] zeroinitializer }, align 32
@lidar_smbus_xfer._entry_ptr.8 = internal global ptr @lidar_smbus_xfer._entry.6, section ".printk_index", align 4
@lidar_get_measurement._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cannot send start measurement command\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lidar_get_measurement\00", [42 x i8] zeroinitializer }, align 32
@lidar_get_measurement._entry_ptr = internal global ptr @lidar_get_measurement._entry, section ".printk_index", align 4
@lidar_trigger_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 244, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot read LIDAR measurement\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lidar_trigger_handler\00", [42 x i8] zeroinitializer }, align 32
@lidar_trigger_handler._entry_ptr = internal global ptr @lidar_trigger_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"lidar_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 368, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 370, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"lidar_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 334, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"lidar_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 363, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant [9 x i8] c"lidar_id\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 327, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"lidar_info\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 252, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"lidar_channels\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 54, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 103, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 109, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 168, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [53 x i8] c"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 244, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lidar_driver_exit, ptr @__initcall__kmod_pulsedlight_lidar_lite_v2__289_378_lidar_driver_init6, ptr @lidar_driver_exit, ptr @lidar_get_measurement._entry, ptr @lidar_get_measurement._entry_ptr, ptr @lidar_smbus_xfer._entry, ptr @lidar_smbus_xfer._entry.6, ptr @lidar_smbus_xfer._entry_ptr, ptr @lidar_smbus_xfer._entry_ptr.8, ptr @lidar_trigger_handler._entry, ptr @lidar_trigger_handler._entry_ptr, ptr @lidar_driver, ptr @.str, ptr @lidar_dt_ids, ptr @lidar_pm_ops, ptr @lidar_id, ptr @lidar_info, ptr @lidar_channels, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_smbus_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_smbus_xfer._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_get_measurement._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lidar_trigger_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lidar_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lidar_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @lidar_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 32) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %xfer = getelementptr inbounds %struct.lidar_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @lidar_i2c_xfer, ptr %xfer, align 8
  %i2c_enabled = getelementptr inbounds %struct.lidar_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %i2c_enabled to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %i2c_enabled, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo.i.i63 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i63 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i63, align 8
  %functionality.i.i64 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i64 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i64, align 4
  %call.i.i65 = tail call i32 %15(ptr noundef %11) #6
  %and.i66 = and i32 %call.i.i65, 6684672
  call void @__sanitizer_cov_trace_const_cmp4(i32 6684672, i32 %and.i66)
  %cmp.i67.not = icmp eq i32 %and.i66, 6684672
  br i1 %cmp.i67.not, label %if.then8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %xfer9 = getelementptr inbounds %struct.lidar_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %xfer9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lidar_smbus_xfer, ptr %xfer9, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %17 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lidar_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %19 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @lidar_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %num_channels, align 4
  %21 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %call, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %driver_data.i.i, align 4
  %client13 = getelementptr inbounds %struct.lidar_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %client, ptr %client13, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %1, align 8
  %call15 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @lidar_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.error_unreg_buffer_crit_edge

if.end18.error_unreg_buffer_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unreg_buffer

if.end22:                                         ; preds = %if.end18
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 1000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.error_unreg_buffer_crit_edge

if.end22.error_unreg_buffer_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_unreg_buffer

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup

error_unreg_buffer:                               ; preds = %if.end22.error_unreg_buffer_crit_edge, %if.end18.error_unreg_buffer_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end18.error_unreg_buffer_crit_edge ], [ %call.i, %if.end22.error_unreg_buffer_crit_edge ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %error_unreg_buffer, %if.end29, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_unreg_buffer ], [ 0, %if.end29 ], [ -12, %entry.cleanup_crit_edge ], [ -95, %if.else.cleanup_crit_edge ], [ %call15, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #6
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_i2c_xfer(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg, ptr noundef %val, i32 noundef %len) #2 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  %client1 = getelementptr inbounds %struct.lidar_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %2, align 8
  %10 = or i16 %9, -32768
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags5, align 2
  %len7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %12 = ptrtoint ptr %len7 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %len7, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr, ptr %buf, align 4
  %14 = load i16, ptr %addr, align 2
  %arrayidx10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx10, align 4
  %16 = load i16, ptr %2, align 8
  %17 = or i16 %16, 1
  %flags17 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags17 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %flags17, align 2
  %conv18 = trunc i32 %len to i16
  %len20 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len20 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18, ptr %len20, align 4
  %buf22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msg, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %val, ptr %buf22, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  %cond = select i1 %cmp, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_smbus_xfer(ptr nocapture noundef readonly %data, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.lidar_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not20 = icmp eq i32 %len, 0
  br i1 %tobool.not20, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %entry.while.body_crit_edge
  %dec23.in = phi i32 [ %dec23, %if.end9.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %val.addr.022 = phi ptr [ %incdec.ptr, %if.end9.while.body_crit_edge ], [ %val, %entry.while.body_crit_edge ]
  %reg.addr.021 = phi i8 [ %inc, %if.end9.while.body_crit_edge ], [ %reg, %entry.while.body_crit_edge ]
  %dec23 = add i32 %dec23.in, -1
  %inc = add i8 %reg.addr.021, 1
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %1, i8 noundef zeroext %reg.addr.021) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body.cleanup.sink.split_crit_edge, label %if.end

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %call2 = tail call i32 @i2c_smbus_read_byte(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %conv = trunc i32 %call2 to i8
  %incdec.ptr = getelementptr i8, ptr %val.addr.022, i32 1
  %2 = ptrtoint ptr %val.addr.022 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val.addr.022, align 1
  %tobool.not = icmp eq i32 %dec23, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.1, %while.body.cleanup.sink.split_crit_edge ], [ @.str.7, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %while.body.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull %.str.7.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %scan = getelementptr inbounds %struct.lidar_data, ptr %3, i32 0, i32 4
  %call2 = tail call fastcc i32 @lidar_get_measurement(ptr noundef %3, ptr noundef %scan)
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end [
    i32 0, label %if.then
    i32 -22, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i64 @iio_get_time_ns(ptr noundef %1) #6
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scan_timestamp.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %8, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %call4, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %if.then.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan) #6
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.lidar_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %if.end7

if.end7:                                          ; preds = %do.end, %iio_push_to_buffers_with_timestamp.exit, %entry.if.end7_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %13) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %mask, label %entry.cleanup7_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
  ]

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup7

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %reg, align 2, !annotation !56
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %sw.bb
  %call2 = call fastcc i32 @lidar_get_measurement(ptr noundef %1, ptr noundef nonnull %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %reg, align 2
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %val, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then4, %if.end.cleanup.thread_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.cleanup.thread_crit_edge ], [ 1, %if.then4 ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br label %cleanup7

cleanup:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #6
  br label %cleanup7

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val, align 4
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10000, ptr %val2, align 4
  br label %cleanup7

cleanup7:                                         ; preds = %sw.bb6, %cleanup, %cleanup.thread, %entry.cleanup7_crit_edge
  %retval.1 = phi i32 [ -16, %cleanup ], [ -22, %entry.cleanup7_crit_edge ], [ 2, %sw.bb6 ], [ %ret.0, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lidar_get_measurement(ptr noundef %data, ptr nocapture noundef writeonly %reg) unnamed_addr #2 align 64 {
entry:
  %value.i = alloca i16, align 2
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.lidar_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client1, align 4
  %call.i40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext 0, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp3 = icmp slt i32 %call.i40, 0
  br i1 %cmp3, label %do.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %xfer.i = getelementptr inbounds %struct.lidar_data, ptr %data, i32 0, i32 2
  br label %while.body

do.end:                                           ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %usage_count.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !58
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %cleanup

while.cond:                                       ; preds = %if.end14
  %dec = add nsw i32 %dec62, -1
  %tobool.not = icmp eq i32 %dec62, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader
  %dec62 = phi i32 [ 9, %while.cond.preheader ], [ %dec, %while.cond.while.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %val.i, align 1, !annotation !56
  %7 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xfer.i, align 8
  %call.i41 = call i32 %8(ptr noundef %data, i8 noundef zeroext 1, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %lidar_read_byte.exit.thread, label %lidar_read_byte.exit

lidar_read_byte.exit.thread:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  br label %while.end

lidar_read_byte.exit:                             ; preds = %while.body
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %val.i, align 1
  %conv.i = zext i8 %10 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #6
  %and = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %lidar_read_byte.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %reg, align 2
  br label %while.end

if.end14:                                         ; preds = %lidar_read_byte.exit
  %and15 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %while.cond

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #6
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %value.i, align 2, !annotation !56
  %13 = ptrtoint ptr %xfer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xfer.i, align 8
  %i2c_enabled.i = getelementptr inbounds %struct.lidar_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %i2c_enabled.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i2c_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %conv.i45 = select i1 %tobool.not.i, i8 15, i8 -113
  %call.i46 = call i32 %14(ptr noundef %data, i8 noundef zeroext %conv.i45, ptr noundef nonnull %value.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool1.not.i = icmp eq i32 %call.i46, 0
  br i1 %tobool1.not.i, label %if.then.i47, label %if.then17.lidar_read_measurement.exit_crit_edge

if.then17.lidar_read_measurement.exit_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %lidar_read_measurement.exit

if.then.i47:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %value.i, align 2
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %reg, align 2
  br label %lidar_read_measurement.exit

lidar_read_measurement.exit:                      ; preds = %if.then.i47, %if.then17.lidar_read_measurement.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #6
  br label %while.end

while.end:                                        ; preds = %lidar_read_measurement.exit, %if.then13, %lidar_read_byte.exit.thread, %while.cond.while.end_crit_edge
  %ret.1 = phi i32 [ -22, %if.then13 ], [ %call.i46, %lidar_read_measurement.exit ], [ %call.i41, %lidar_read_byte.exit.thread ], [ -5, %while.cond.while.end_crit_edge ]
  %call.i49 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i49, ptr %last_busy.i, align 8
  %call.i50 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %while.end ], [ %call.i40, %do.end.cleanup_crit_edge ], [ %call.i40, %do.end11.i.i.i.i ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.lidar_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 101, i8 noundef zeroext 15) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lidar_pm_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %client.i = getelementptr inbounds %struct.lidar_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 101, i8 noundef zeroext 0) #6
  tail call void @usleep_range_state(i32 noundef 15000, i32 noundef 20000, i32 noundef 2) #6
  ret i32 %call.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_pulsedlight_lidar_lite_v2__289_378_lidar_driver_init6, !1, !"__initcall__kmod_pulsedlight_lidar_lite_v2__289_378_lidar_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 378, i32 1}
!2 = !{ptr @__exitcall_lidar_driver_exit, !1, !"__exitcall_lidar_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 380, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 381, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 382, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 370, i32 11}
!12 = !{ptr @lidar_driver, !13, !"lidar_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 368, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 103, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lidar_smbus_xfer._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lidar_smbus_xfer._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 109, i32 4}
!24 = !{ptr @lidar_smbus_xfer._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lidar_smbus_xfer._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @lidar_info, !27, !"lidar_info", i1 false, i1 false}
!27 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 252, i32 30}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 168, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lidar_get_measurement._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @lidar_get_measurement._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @lidar_channels, !34, !"lidar_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 54, i32 35}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 244, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lidar_trigger_handler._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @lidar_trigger_handler._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @lidar_dt_ids, !41, !"lidar_dt_ids", i1 false, i1 false}
!41 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 334, i32 34}
!42 = !{ptr @lidar_pm_ops, !43, !"lidar_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 363, i32 32}
!44 = !{ptr @lidar_id, !45, !"lidar_id", i1 false, i1 false}
!45 = !{!"../drivers/iio/proximity/pulsedlight-lidar-lite-v2.c", i32 327, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{!"auto-init"}
!57 = !{i64 2148364704}
!58 = !{i64 849527, i64 849552, i64 849574, i64 849590, i64 849602, i64 849622, i64 849646, i64 849662, i64 849674}
!59 = !{i64 2148364892}
