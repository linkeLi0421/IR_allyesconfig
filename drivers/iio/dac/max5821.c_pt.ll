; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/max5821.c_pt.bc'
source_filename = "../drivers/iio/dac/max5821.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.max5821_data = type { ptr, ptr, i16, [2 x i8], [2 x i8], %struct.mutex }

@__initcall__kmod_max5821__288_382_max5821_driver_init6 = internal global ptr @max5821_driver_init, section ".initcall6.init", align 4
@max5821_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max5821_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max5821_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max5821_pm_ops, ptr null, ptr null }, ptr @max5821_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max5821_driver_exit = internal global ptr @max5821_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"max5821.author=Philippe Reynes <tremyfr@yahoo.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [32 x i8] c"max5821.description=MAX5821 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"max5821.file=drivers/iio/dac/max5821\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"max5821.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max5821\00", [24 x i8] zeroinitializer }, align 32
@max5821_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max5821\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max5821_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max5821_suspend, ptr @max5821_resume, ptr @max5821_suspend, ptr @max5821_resume, ptr @max5821_suspend, ptr @max5821_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max5821_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max5821\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max5821_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get vref regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@max5821_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 331, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable vref regulator: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max5821_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/dac/max5821.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max5821_probe._entry_ptr = internal global ptr @max5821_probe._entry, section ".printk_index", align 4
@max5821_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 339, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to add action to managed regulator: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@max5821_probe._entry_ptr.11 = internal global ptr @max5821_probe._entry.9, section ".printk_index", align 4
@max5821_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 346, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to get voltage on regulator: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@max5821_probe._entry_ptr.14 = internal global ptr @max5821_probe._entry.12, section ".printk_index", align 4
@max5821_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr @max5821_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 0, ptr null, i32 0, ptr @max5821_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@max5821_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @max5821_read_raw, ptr null, ptr null, ptr @max5821_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@max5821_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.15, i32 0, ptr @max5821_read_dac_powerdown, ptr @max5821_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.16, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @max5821_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.17, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @max5821_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@max5821_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @max5821_powerdown_modes, i32 3, ptr @max5821_set_powerdown_mode, ptr @max5821_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@max5821_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1kohm_to_gnd\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@max5821_read_dac_command = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F1\F2", [30 x i8] zeroinitializer }, align 32
@max5821_load_dac_command = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\10", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"max5821_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 373, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 375, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"max5821_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 367, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"max5821_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 290, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"max5821_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 361, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 315, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 323, i32 52 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 326, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 330, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 338, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 345, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"max5821_channels\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 154, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"max5821_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 292, i32 30 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"max5821_ext_info\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 132, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 134, i32 11 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 139, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"max5821_powerdown_mode_enum\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 73, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 140, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 87, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"max5821_powerdown_modes\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 42, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 43, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 44, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 45, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"max5821_read_dac_command\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 159, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"max5821_load_dac_command\00", align 1
@___asan_gen_.119 = private constant [29 x i8] c"../drivers/iio/dac/max5821.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 164, i32 17 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max5821_driver_exit, ptr @__initcall__kmod_max5821__288_382_max5821_driver_init6, ptr @max5821_driver_exit, ptr @max5821_probe._entry, ptr @max5821_probe._entry.12, ptr @max5821_probe._entry.9, ptr @max5821_probe._entry_ptr, ptr @max5821_probe._entry_ptr.11, ptr @max5821_probe._entry_ptr.14, ptr @max5821_driver, ptr @.str, ptr @max5821_of_match, ptr @max5821_pm_ops, ptr @max5821_id, ptr @max5821_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @max5821_channels, ptr @max5821_info, ptr @max5821_ext_info, ptr @.str.15, ptr @.str.16, ptr @max5821_powerdown_mode_enum, ptr @.str.17, ptr @.str.18, ptr @max5821_powerdown_modes, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @max5821_read_dac_command, ptr @max5821_load_dac_command], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_read_dac_command to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max5821_load_dac_command to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max5821_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max5821_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max5821_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 108) #7
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
  %lock = getelementptr inbounds %struct.max5821_data, ptr %1, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max5821_probe.__key) #7
  %uglygep = getelementptr i8, ptr %1, i32 10
  %3 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 257, ptr %uglygep, align 1
  %uglygep87 = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %uglygep87 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 514, ptr %uglygep87, align 1
  %call5 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %vref_reg = getelementptr inbounds %struct.max5821_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %vref_reg, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  %call12 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call15 = tail call i32 @regulator_enable(ptr noundef %call5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call15) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vref_reg, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @max5821_regulator_disable, ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %8) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %9 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vref_reg, align 4
  %call34 = tail call i32 @regulator_get_voltage(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call34) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %div85 = udiv i32 %call34, 1000
  %conv = trunc i32 %div85 to i16
  %vref_mv = getelementptr inbounds %struct.max5821_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %vref_mv, align 4
  %name42 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %12 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %id, ptr %name42, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_channels, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @max5821_channels, ptr %channels, align 8
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %16 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @max5821_info, ptr %info, align 8
  %call44 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end39, %do.end30, %do.end20, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then8 ], [ %call15, %do.end20 ], [ %call.i, %do.end30 ], [ %call34, %do.end39 ], [ %call44, %if.end41 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max5821_regulator_disable(ptr noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %reg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !80
  %6 = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %6) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %outbuf.i = alloca [2 x i8], align 1
  %powerdown = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %powerdown) #7
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %powerdown, align 1, !annotation !81
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %powerdown) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powerdown, align 1, !range !80
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 3, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #7
  %8 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %9 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -16, ptr %outbuf.i, align 1
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %..i = select i1 %cmp.i, i8 4, i8 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %..i, ptr %8, align 1
  %arrayidx4.i = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 3, i32 %11
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.max5821_sync_powerdown_mode.exit_crit_edge, label %if.then5.i

if.end.max5821_sync_powerdown_mode.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %max5821_sync_powerdown_mode.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx7.i = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 4, i32 %11
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx7.i, align 1
  %add.i = add i8 %16, 1
  %or.i = or i8 %add.i, %..i
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or.i, ptr %8, align 1
  br label %max5821_sync_powerdown_mode.exit

max5821_sync_powerdown_mode.exit:                 ; preds = %if.then5.i, %if.end.max5821_sync_powerdown_mode.exit_crit_edge
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  %call4.len = select i1 %cmp, i32 %call.i.i, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %max5821_sync_powerdown_mode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call4.len, %max5821_sync_powerdown_mode.exit ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %powerdown) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max5821_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %conv = trunc i32 %mode to i8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max5821_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.max5821_data, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %outbuf.i = alloca [1 x i8], align 1
  %inbuf.i = alloca [2 x i8], align 1
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
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %outbuf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %inbuf.i) #7
  %7 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %inbuf.i, align 1, !annotation !81
  %8 = getelementptr inbounds [2 x i8], ptr %inbuf.i, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch.i = icmp ult i32 %4, 2
  br i1 %switch.i, label %if.end.i, label %sw.bb.max5821_get_value.exit_crit_edge

sw.bb.max5821_get_value.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %max5821_get_value.exit

if.end.i:                                         ; preds = %sw.bb
  %arrayidx.i = getelementptr [2 x i8], ptr @max5821_read_dac_command, i32 0, i32 %4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %outbuf.i, align 1
  %lock.i = getelementptr inbounds %struct.max5821_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %outbuf.i, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %max5821_get_value.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp8.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp8.not.i, label %if.end12.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %max5821_get_value.exit

if.end12.i:                                       ; preds = %if.else.i
  %call.i46.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %inbuf.i, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %cmp15.i = icmp slt i32 %call.i46.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.else18.i

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %max5821_get_value.exit

if.else18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i46.i)
  %cmp19.not.i = icmp eq i32 %call.i46.i, 2
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br i1 %cmp19.not.i, label %if.end23.i, label %if.else18.i.max5821_get_value.exit_crit_edge

if.else18.i.max5821_get_value.exit_crit_edge:     ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max5821_get_value.exit

if.end23.i:                                       ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %inbuf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %inbuf.i, align 1
  %15 = and i8 %14, 15
  %and.i = zext i8 %15 to i32
  %shl.i = shl nuw nsw i32 %and.i, 6
  %16 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %8, align 1
  %18 = lshr i8 %17, 2
  %19 = zext i8 %18 to i32
  %or.i = or i32 %shl.i, %19
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i, ptr %val, align 4
  br label %max5821_get_value.exit

max5821_get_value.exit:                           ; preds = %if.end23.i, %if.else18.i.max5821_get_value.exit_crit_edge, %if.then16.i, %if.then9.i, %if.then6.i, %sw.bb.max5821_get_value.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %if.then6.i ], [ -5, %if.then9.i ], [ %call.i46.i, %if.then16.i ], [ 1, %if.end23.i ], [ -22, %sw.bb.max5821_get_value.exit_crit_edge ], [ -5, %if.else18.i.max5821_get_value.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %inbuf.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %outbuf.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vref_mv = getelementptr inbounds %struct.max5821_data, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vref_mv, align 4
  %conv = zext i16 %22 to i32
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 10, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %max5821_get_value.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb2 ], [ %retval.0.i, %max5821_get_value.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %outbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %mask, %val2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %val)
  %8 = icmp ult i32 %val, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i = icmp ult i32 %3, 2
  %or.cond30.i = and i1 %8, %switch.i
  br i1 %or.cond30.i, label %if.end6.i, label %sw.bb.max5821_set_value.exit_crit_edge

sw.bb.max5821_set_value.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %max5821_set_value.exit

if.end6.i:                                        ; preds = %sw.bb
  %9 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %arrayidx.i = getelementptr [2 x i8], ptr @max5821_load_dac_command, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = lshr i32 %val, 6
  %13 = trunc i32 %12 to i8
  %conv9.i = or i8 %11, %13
  %14 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %outbuf.i, align 1
  %val.tr.i = trunc i32 %val to i8
  %conv10.i = shl i8 %val.tr.i, 2
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.i, ptr %9, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp13.i, label %if.end6.i.max5821_set_value.exit_crit_edge, label %if.else.i

if.end6.i.max5821_set_value.exit_crit_edge:       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max5821_set_value.exit

if.else.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp16.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp16.not.i, i32 0, i32 -5
  br label %max5821_set_value.exit

max5821_set_value.exit:                           ; preds = %if.else.i, %if.end6.i.max5821_set_value.exit_crit_edge, %sw.bb.max5821_set_value.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.max5821_set_value.exit_crit_edge ], [ %call.i.i, %if.end6.i.max5821_set_value.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #7
  br label %return

return:                                           ; preds = %max5821_set_value.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %max5821_set_value.exit ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %outbuf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf) #7
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -4081, ptr %outbuf, align 2
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %outbuf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max5821_resume(ptr noundef %dev) #2 align 64 {
entry:
  %outbuf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf) #7
  %0 = ptrtoint ptr %outbuf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -4084, ptr %outbuf, align 2
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %outbuf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf) #7
  ret i32 %call.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_max5821__288_382_max5821_driver_init6, !1, !"__initcall__kmod_max5821__288_382_max5821_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/max5821.c", i32 382, i32 1}
!2 = !{ptr @__exitcall_max5821_driver_exit, !1, !"__exitcall_max5821_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/max5821.c", i32 384, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/max5821.c", i32 385, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/max5821.c", i32 386, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/max5821.c", i32 375, i32 11}
!12 = !{ptr @max5821_driver, !13, !"max5821_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/max5821.c", i32 373, i32 26}
!14 = !{ptr @max5821_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/max5821.c", i32 315, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/dac/max5821.c", i32 323, i32 52}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/max5821.c", i32 326, i32 10}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/max5821.c", i32 330, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max5821_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @max5821_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/max5821.c", i32 338, i32 3}
!31 = !{ptr @max5821_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max5821_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/max5821.c", i32 345, i32 3}
!35 = !{ptr @max5821_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max5821_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @max5821_channels, !38, !"max5821_channels", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/max5821.c", i32 154, i32 35}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/max5821.c", i32 134, i32 11}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/max5821.c", i32 139, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/max5821.c", i32 140, i32 2}
!45 = !{ptr @max5821_ext_info, !46, !"max5821_ext_info", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/max5821.c", i32 132, i32 44}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/max5821.c", i32 87, i32 25}
!49 = !{ptr @max5821_powerdown_mode_enum, !50, !"max5821_powerdown_mode_enum", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/max5821.c", i32 73, i32 30}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/max5821.c", i32 43, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/max5821.c", i32 44, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/max5821.c", i32 45, i32 2}
!57 = !{ptr @max5821_powerdown_modes, !58, !"max5821_powerdown_modes", i1 false, i1 false}
!58 = !{!"../drivers/iio/dac/max5821.c", i32 42, i32 27}
!59 = !{ptr @max5821_info, !60, !"max5821_info", i1 false, i1 false}
!60 = !{!"../drivers/iio/dac/max5821.c", i32 292, i32 30}
!61 = !{ptr @max5821_read_dac_command, !62, !"max5821_read_dac_command", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/max5821.c", i32 159, i32 17}
!63 = !{ptr @max5821_load_dac_command, !64, !"max5821_load_dac_command", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/max5821.c", i32 164, i32 17}
!65 = !{ptr @max5821_of_match, !66, !"max5821_of_match", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/max5821.c", i32 367, i32 34}
!67 = !{ptr @max5821_pm_ops, !68, !"max5821_pm_ops", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/max5821.c", i32 290, i32 8}
!69 = !{ptr @max5821_id, !70, !"max5821_id", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/max5821.c", i32 361, i32 35}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{!"auto-init"}
