; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/at24.c_pt.bc'
source_filename = "../drivers/misc/eeprom/at24.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.at24_chip_data = type { i32, i8, i8, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.at24_data = type { %struct.mutex, i32, i32, i32, i32, i16, i8, ptr, ptr, ptr, i8, [0 x ptr] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_io_limit = internal constant [14 x i8] c"at24.io_limit\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@at24_io_limit = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_io_limit = internal constant %struct.kernel_param { ptr @__param_str_io_limit, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @at24_io_limit } }, section "__param", align 4
@__UNIQUE_ID_io_limittype289 = internal constant [28 x i8] c"at24.parmtype=io_limit:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_at24_io_limit290 = internal constant [60 x i8] c"at24.parm=at24_io_limit:Maximum bytes per I/O (default 128)\00", section ".modinfo", align 1
@__param_str_write_timeout = internal constant [19 x i8] c"at24.write_timeout\00", align 1
@at24_write_timeout = internal global { i32, [28 x i8] } { i32 25, [28 x i8] zeroinitializer }, align 32
@__param_write_timeout = internal constant %struct.kernel_param { ptr @__param_str_write_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @at24_write_timeout } }, section "__param", align 4
@__UNIQUE_ID_write_timeouttype291 = internal constant [33 x i8] c"at24.parmtype=write_timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_at24_write_timeout292 = internal constant [69 x i8] c"at24.parm=at24_write_timeout:Time (in ms) to try writes (default 25)\00", section ".modinfo", align 1
@__initcall__kmod_at24__297_853_at24_init6 = internal global ptr @at24_init, section ".initcall6.init", align 4
@at24_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @at24_remove, ptr @at24_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at24_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at24_pm_ops, ptr null, ptr null }, ptr @at24_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 1 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_at24_exit = internal global ptr @at24_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"at24.description=Driver for most I2C EEPROMs\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [44 x i8] c"at24.author=David Brownell and Wolfram Sang\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [35 x i8] c"at24.file=drivers/misc/eeprom/at24\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [17 x i8] c"at24.license=GPL\00", section ".modinfo", align 1
@at24_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013at24: at24_io_limit must not be 0!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at24_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/eeprom/at24.c\00", [37 x i8] zeroinitializer }, align 32
@at24_init._entry_ptr = internal global ptr @at24_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"at24\00", [27 x i8] zeroinitializer }, align 32
@at24_of_match = internal constant { [25 x %struct.of_device_id], [1244 x i8] } { [25 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c00 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs01 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs02 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24mac402\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24mac402 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24mac602\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24mac602 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,spd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_spd }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs04 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c08 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs08 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c32 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs32 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24cs64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24cs64 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c128 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c256 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c512 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c1024 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c1025\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c1025 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,24c2048\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at24_data_24c2048 }, %struct.of_device_id zeroinitializer], [1244 x i8] zeroinitializer }, align 32
@at24_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at24_suspend, ptr @at24_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@at24_ids = internal constant { [27 x %struct.i2c_device_id], [184 x i8] } { [27 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"24c00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c00 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c01 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs01\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs01 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c02 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs02\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs02 to i32) }, %struct.i2c_device_id { [20 x i8] c"24mac402\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24mac402 to i32) }, %struct.i2c_device_id { [20 x i8] c"24mac602\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24mac602 to i32) }, %struct.i2c_device_id { [20 x i8] c"spd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_spd to i32) }, %struct.i2c_device_id { [20 x i8] c"24c02-vaio\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c02_vaio to i32) }, %struct.i2c_device_id { [20 x i8] c"24c04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c04 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs04\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs04 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c08 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs08\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs08 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c16 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs16\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs16 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c32 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs32\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs32 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c64 to i32) }, %struct.i2c_device_id { [20 x i8] c"24cs64\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24cs64 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c128\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c128 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c256\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c256 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c512\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c512 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c1024\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c1024 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c1025\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c1025 to i32) }, %struct.i2c_device_id { [20 x i8] c"24c2048\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at24_data_24c2048 to i32) }, %struct.i2c_device_id { [20 x i8] c"at24\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [184 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pagesize\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no-read-rollover\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"address-width\00", [18 x i8] zeroinitializer }, align 32
@at24_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 629, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Override address width to be 8, while default is 16\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at24_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr = internal global ptr @at24_probe._entry, section ".printk_index", align 4
@at24_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 637, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bad \22address-width\22 property: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.14 = internal global ptr @at24_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@at24_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 649, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"page_size must not be 0!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.19 = internal global ptr @at24_probe._entry.16, section ".printk_index", align 4
@at24_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.2, i32 654, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"page_size looks suspicious (no power of 2)!\0A\00", [51 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.22 = internal global ptr @at24_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"num-addresses\00", [18 x i8] zeroinitializer }, align 32
@at24_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.2, i32 667, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"invalid device data - cannot have both AT24_FLAG_SERIAL & AT24_FLAG_MAC.\00", [55 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.26 = internal global ptr @at24_probe._entry.24, section ".printk_index", align 4
@at24_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"at24:675:(&regmap_config)->lock\00", [32 x i8] zeroinitializer }, align 32
@at24_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&at24->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@at24_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 751, ptr @.str.18, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to enable vcc regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.33 = internal global ptr @at24_probe._entry.31, section ".printk_index", align 4
@at24_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 786, ptr @.str.36, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%u byte %s EEPROM, writable, %u bytes/write\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.37 = internal global ptr @at24_probe._entry.34, section ".printk_index", align 4
@at24_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.9, ptr @.str.2, i32 789, ptr @.str.36, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%u byte %s EEPROM, read-only\0A\00", [34 x i8] zeroinitializer }, align 32
@at24_probe._entry_ptr.40 = internal global ptr @at24_probe._entry.38, section ".printk_index", align 4
@at24_make_dummy_client._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"at24:552:(regmap_config)->lock\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@at24_regmap_read.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at24_regmap_read\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read %zu@%d --> %d (%ld)\0A\00", [38 x i8] zeroinitializer }, align 32
@at24_regmap_write.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at24_regmap_write\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"write %zu@%d --> %d (%ld)\0A\00", [37 x i8] zeroinitializer }, align 32
@at24_data_24c00 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 16, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c01 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 128, i8 0, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs01 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c02 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 256, i8 0, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs02 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24mac402 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 6, i8 68, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24mac602 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 8, i8 68, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_spd = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 256, i8 96, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c04 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 512, i8 0, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs04 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c08 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 1024, i8 0, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs08 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c16 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 2048, i8 0, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs16 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 72, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c32 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 4096, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs32 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 -56, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c64 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 8192, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24cs64 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16, i8 -56, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c128 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 16384, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c256 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 32768, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c512 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 65536, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c1024 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 131072, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c1025 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 131072, i8 -128, i8 2, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c2048 = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 262144, i8 -128, i8 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@at24_data_24c02_vaio = internal constant { %struct.at24_chip_data, [20 x i8] } { %struct.at24_chip_data { i32 256, i8 96, i8 0, ptr @at24_read_post_vaio }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"at24_io_limit\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 107, i32 21 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"at24_write_timeout\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 115, i32 21 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"at24_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 830, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 846, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 832, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"at24_of_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 239, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"at24_pm_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 824, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"at24_ids\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 208, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 608, i32 38 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 618, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 620, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 623, i32 38 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 628, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 636, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 641, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 649, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 654, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 656, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 666, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 675, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 684, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 694, i32 42 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 722, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 751, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 785, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 788, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 552, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 351, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 407, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"at24_data_24c00\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 164, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [16 x i8] c"at24_data_24c01\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 166, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"at24_data_24cs01\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 167, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [16 x i8] c"at24_data_24c02\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 169, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"at24_data_24cs02\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 170, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [19 x i8] c"at24_data_24mac402\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 172, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant [19 x i8] c"at24_data_24mac602\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 174, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [14 x i8] c"at24_data_spd\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 177, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [16 x i8] c"at24_data_24c04\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 183, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"at24_data_24cs04\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 184, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant [16 x i8] c"at24_data_24c08\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 187, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"at24_data_24cs08\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 188, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"at24_data_24c16\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 190, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"at24_data_24cs16\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 191, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"at24_data_24c32\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 193, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"at24_data_24cs32\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 194, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant [16 x i8] c"at24_data_24c64\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 196, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"at24_data_24cs64\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 197, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"at24_data_24c128\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 199, i32 1 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"at24_data_24c256\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 200, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"at24_data_24c512\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 201, i32 1 }
@___asan_gen_.259 = private unnamed_addr constant [18 x i8] c"at24_data_24c1024\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 202, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [18 x i8] c"at24_data_24c1025\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 203, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"at24_data_24c2048\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 204, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant [21 x i8] c"at24_data_24c02_vaio\00", align 1
@___asan_gen_.269 = private constant [30 x i8] c"../drivers/misc/eeprom/at24.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 180, i32 1 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_at24_io_limit290, ptr @__UNIQUE_ID_at24_write_timeout292, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_io_limittype289, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_write_timeouttype291, ptr @__exitcall_at24_exit, ptr @__initcall__kmod_at24__297_853_at24_init6, ptr @__param_io_limit, ptr @__param_write_timeout, ptr @at24_exit, ptr @at24_init._entry, ptr @at24_init._entry_ptr, ptr @at24_probe._entry, ptr @at24_probe._entry.12, ptr @at24_probe._entry.16, ptr @at24_probe._entry.20, ptr @at24_probe._entry.24, ptr @at24_probe._entry.31, ptr @at24_probe._entry.34, ptr @at24_probe._entry.38, ptr @at24_probe._entry_ptr, ptr @at24_probe._entry_ptr.14, ptr @at24_probe._entry_ptr.19, ptr @at24_probe._entry_ptr.22, ptr @at24_probe._entry_ptr.26, ptr @at24_probe._entry_ptr.33, ptr @at24_probe._entry_ptr.37, ptr @at24_probe._entry_ptr.40, ptr @at24_io_limit, ptr @at24_write_timeout, ptr @at24_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @at24_of_match, ptr @at24_pm_ops, ptr @at24_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @at24_probe._key, ptr @.str.27, ptr @at24_probe.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @at24_make_dummy_client._key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @at24_data_24c00, ptr @at24_data_24c01, ptr @at24_data_24cs01, ptr @at24_data_24c02, ptr @at24_data_24cs02, ptr @at24_data_24mac402, ptr @at24_data_24mac602, ptr @at24_data_spd, ptr @at24_data_24c04, ptr @at24_data_24cs04, ptr @at24_data_24c08, ptr @at24_data_24cs08, ptr @at24_data_24c16, ptr @at24_data_24cs16, ptr @at24_data_24c32, ptr @at24_data_24cs32, ptr @at24_data_24c64, ptr @at24_data_24cs64, ptr @at24_data_24c128, ptr @at24_data_24c256, ptr @at24_data_24c512, ptr @at24_data_24c1024, ptr @at24_data_24c1025, ptr @at24_data_24c2048, ptr @at24_data_24c02_vaio], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_io_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_write_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_of_match to i32), i32 4900, i32 6144, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_ids to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_make_dummy_client._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c00 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c01 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs01 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c02 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs02 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24mac402 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24mac602 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_spd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c04 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs04 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c08 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs08 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24cs64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c256 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c512 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c1024 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c1025 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c2048 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at24_data_24c02_vaio to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @at24_io_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end, label %cond.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %return

cond.end9:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true) #7, !range !172
  %shl.i = lshr i32 -2147483648, %1
  store i32 %shl.i, ptr @at24_io_limit, align 4
  %call11 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @at24_driver) #7
  br label %return

return:                                           ; preds = %cond.end9, %do.end
  %retval.0 = phi i32 [ %call11, %cond.end9 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at24_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @at24_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_remove(ptr noundef %client) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then5

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vcc_reg = getelementptr inbounds %struct.at24_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcc_reg, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then5, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_probe(ptr noundef %client) #4 align 64 {
entry:
  %regmap_config = alloca %struct.regmap_config, align 4
  %nvmem_config = alloca %struct.nvmem_config, align 4
  %byte_len = alloca i32, align 4
  %page_size = alloca i32, align 4
  %addrw = alloca i32, align 4
  %num_addresses = alloca i32, align 4
  %test_byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %regmap_config) #7
  %0 = call ptr @memset(ptr %regmap_config, i32 0, i32 172)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_config) #7
  %1 = call ptr @memset(ptr %nvmem_config, i32 0, i32 88)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %byte_len) #7
  %2 = ptrtoint ptr %byte_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %byte_len, align 4, !annotation !173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page_size) #7
  %3 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %page_size, align 4, !annotation !173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addrw) #7
  %4 = ptrtoint ptr %addrw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %addrw, align 4, !annotation !173
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_addresses) #7
  %5 = ptrtoint ptr %num_addresses to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %num_addresses, align 4, !annotation !173
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %test_byte) #7
  %6 = ptrtoint ptr %test_byte to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %test_byte, align 1, !annotation !173
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %8) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %algo.i.i329 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %algo.i.i329 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %algo.i.i329, align 8
  %functionality.i.i330 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %functionality.i.i330 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %functionality.i.i330, align 4
  %call.i.i331 = tail call i32 %18(ptr noundef %14) #7
  %19 = and i32 %call.i.i331, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp ne i32 %19, 0
  %of_node1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %20 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node1.i, align 8
  %call.i = tail call ptr @i2c_match_id(ptr noundef nonnull @at24_ids, ptr noundef %client) #7
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call ptr @of_match_device(ptr noundef nonnull @at24_of_match, ptr noundef %dev1) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  br label %if.end9.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %if.else.i.if.then_crit_edge, label %if.then6.i

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %driver_data.i, align 4
  %24 = inttoptr i32 %23 to ptr
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.then.i
  %cdata.0.i = phi ptr [ %call4.i, %if.then.i ], [ %24, %if.then6.i ]
  %tobool10.not.i = icmp eq ptr %cdata.0.i, null
  br i1 %tobool10.not.i, label %if.end9.i.if.then_crit_edge, label %at24_get_chip_data.exit

if.end9.i.if.then_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

at24_get_chip_data.exit:                          ; preds = %if.end9.i
  %cmp.i335 = icmp ugt ptr %cdata.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %at24_get_chip_data.exit.if.then_crit_edge, label %if.end

at24_get_chip_data.exit.if.then_crit_edge:        ; preds = %at24_get_chip_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %at24_get_chip_data.exit.if.then_crit_edge, %if.end9.i.if.then_crit_edge, %if.else.i.if.then_crit_edge
  %retval.0.i367 = phi ptr [ %cdata.0.i, %at24_get_chip_data.exit.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.i.if.then_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end9.i.if.then_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i367 to i32
  br label %cleanup

if.end:                                           ; preds = %at24_get_chip_data.exit
  %call.i336 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull %page_size, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool10.not = icmp eq i32 %call.i336, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %page_size, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %flags13 = getelementptr inbounds %struct.at24_chip_data, ptr %cdata.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags13, align 4
  %conv = zext i8 %28 to i32
  %call14 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.5) #7
  %or = or i32 %conv, 64
  %spec.select = select i1 %call14, i32 %or, i32 %conv
  %call17 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.6) #7
  %or19 = or i32 %spec.select, 2
  %flags.1 = select i1 %call17, i32 %or19, i32 %spec.select
  %call.i337 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef nonnull %addrw, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i337)
  %tobool22.not = icmp eq i32 %call.i337, 0
  br i1 %tobool22.not, label %if.then23, label %if.end12.if.end33_crit_edge

if.end12.if.end33_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then23:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %addrw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %addrw, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %do.end32 [
    i32 8, label %sw.bb
    i32 16, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.then23
  %and = and i32 %flags.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %sw.bb.if.end26_crit_edge, label %do.end

sw.bb.if.end26_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end, %sw.bb.if.end26_crit_edge
  %and27 = and i32 %flags.1, 127
  br label %if.end33

sw.bb28:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %or29 = or i32 %flags.1, 128
  br label %if.end33

do.end32:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %30) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %sw.bb28, %if.end26, %if.end12.if.end33_crit_edge
  %flags.2 = phi i32 [ %flags.1, %if.end12.if.end33_crit_edge ], [ %flags.1, %do.end32 ], [ %or29, %sw.bb28 ], [ %and27, %if.end26 ]
  %call.i338 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %byte_len, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool35.not = icmp eq i32 %call.i338, 0
  br i1 %tobool35.not, label %if.end33.if.end38_crit_edge, label %if.then36

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %cdata.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cdata.0.i, align 4
  %34 = ptrtoint ptr %byte_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %byte_len, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end33.if.end38_crit_edge
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %tobool.not.not, i1 true, i1 %tobool4.not
  br i1 %brmerge, label %if.end42, label %if.end42.thread

if.end42.thread:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %page_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %page_size, align 4
  br label %if.end48

if.end42:                                         ; preds = %if.end38
  %36 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %page_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool43.not = icmp eq i32 %.pr, 0
  br i1 %tobool43.not, label %do.end47, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end42.if.end48_crit_edge, %if.end42.thread
  %37 = phi i32 [ 1, %if.end42.thread ], [ %.pr, %if.end42.if.end48_crit_edge ]
  %38 = call i32 @llvm.ctpop.i32(i32 %37) #7, !range !172
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp1.i = icmp ult i32 %38, 2
  br i1 %cmp1.i, label %if.end48.if.end54_crit_edge, label %do.end53

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.21) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %if.end48.if.end54_crit_edge
  %call.i339 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull %num_addresses, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %tobool56.not = icmp eq i32 %call.i339, 0
  br i1 %tobool56.not, label %if.end54.if.end67_crit_edge, label %if.then57

if.end54.if.end67_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

if.then57:                                        ; preds = %if.end54
  %and58 = and i32 %flags.2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %num_addresses to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %num_addresses, align 4
  br label %if.end67

if.else:                                          ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %byte_len, align 4
  %and61 = and i32 %flags.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %add = select i1 %tobool62.not, i32 255, i32 65535
  %sub = add i32 %add, %41
  %42 = select i1 %tobool62.not, i32 8, i32 16
  %div327 = lshr i32 %sub, %42
  %43 = ptrtoint ptr %num_addresses to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div327, ptr %num_addresses, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then60, %if.end54.if.end67_crit_edge
  %44 = and i32 %flags.2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %44)
  %.not = icmp eq i32 %44, 12
  br i1 %.not, label %do.end76, label %if.end77

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end67
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 4
  %45 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %val_bits, align 4
  %and78 = and i32 %flags.2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %cond80 = select i1 %tobool79.not, i32 8, i32 16
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 1
  %46 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond80, ptr %reg_bits, align 4
  %disable_locking = getelementptr inbounds %struct.regmap_config, ptr %regmap_config, i32 0, i32 11
  %47 = ptrtoint ptr %disable_locking to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %disable_locking, align 4
  %call81 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull %regmap_config, ptr noundef nonnull @at24_probe._key, ptr noundef nonnull @.str.27) #7
  %cmp.i340 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i340, label %if.then83, label %if.end85

if.then83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %call81 to i32
  br label %cleanup

if.end85:                                         ; preds = %if.end77
  %49 = ptrtoint ptr %num_addresses to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_addresses, align 4
  %51 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %50, i32 4) #7
  %52 = extractvalue { i32, i1 } %51, 1
  %53 = extractvalue { i32, i1 } %51, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %53, i32 128) #7
  %retval.0.i341 = select i1 %52, i32 -1, i32 %spec.select.i
  %call.i342 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i341, i32 noundef 3520) #7
  %tobool88.not = icmp eq ptr %call.i342, null
  br i1 %tobool88.not, label %if.end85.cleanup_crit_edge, label %do.body91

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body91:                                        ; preds = %if.end85
  call void @__mutex_init(ptr noundef nonnull %call.i342, ptr noundef nonnull @.str.28, ptr noundef nonnull @at24_probe.__key) #7
  %54 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %byte_len, align 4
  %byte_len94 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 4
  %56 = ptrtoint ptr %byte_len94 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %byte_len94, align 4
  %57 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %page_size, align 4
  %conv95 = trunc i32 %58 to i16
  %page_size96 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 5
  %59 = ptrtoint ptr %page_size96 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv95, ptr %page_size96, align 4
  %conv97 = trunc i32 %flags.2 to i8
  %flags98 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 6
  %60 = ptrtoint ptr %flags98 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv97, ptr %flags98, align 2
  %read_post = getelementptr inbounds %struct.at24_chip_data, ptr %cdata.0.i, i32 0, i32 3
  %61 = ptrtoint ptr %read_post to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_post, align 4
  %read_post99 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 9
  %63 = ptrtoint ptr %read_post99 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %read_post99, align 4
  %bank_addr_shift = getelementptr inbounds %struct.at24_chip_data, ptr %cdata.0.i, i32 0, i32 2
  %64 = ptrtoint ptr %bank_addr_shift to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bank_addr_shift, align 1
  %bank_addr_shift100 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 10
  %66 = ptrtoint ptr %bank_addr_shift100 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %bank_addr_shift100, align 4
  %67 = ptrtoint ptr %num_addresses to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_addresses, align 4
  %num_addresses101 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 2
  %69 = ptrtoint ptr %num_addresses101 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %num_addresses101, align 4
  %and.i344 = and i32 %flags.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i344)
  %tobool.not.i345 = icmp eq i32 %and.i344, 0
  br i1 %tobool.not.i345, label %if.else.i348, label %if.then.i346

if.then.i346:                                     ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 160, %55
  br label %at24_get_offset_adj.exit

if.else.i348:                                     ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %70 = and i32 %flags.2, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %70)
  %.not.i = icmp eq i32 %70, 136
  %conv.i343 = shl i32 %flags.2, 4
  %71 = and i32 %conv.i343, 128
  %spec.select.i347 = select i1 %.not.i, i32 2048, i32 %71
  br label %at24_get_offset_adj.exit

at24_get_offset_adj.exit:                         ; preds = %if.else.i348, %if.then.i346
  %retval.0.i349 = phi i32 [ %sub.i, %if.then.i346 ], [ %spec.select.i347, %if.else.i348 ]
  %offset_adj = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 3
  %72 = ptrtoint ptr %offset_adj to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i349, ptr %offset_adj, align 4
  %client_regmaps = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 11
  %73 = ptrtoint ptr %client_regmaps to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call81, ptr %client_regmaps, align 4
  %call104 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.29) #7
  %vcc_reg = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 8
  %74 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call104, ptr %vcc_reg, align 4
  %cmp.i350 = icmp ugt ptr %call104, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %if.then107, label %if.end110

if.then107:                                       ; preds = %at24_get_offset_adj.exit
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %call104 to i32
  br label %cleanup

if.end110:                                        ; preds = %at24_get_offset_adj.exit
  %and111 = and i32 %flags.2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool112.not, label %if.then115, label %if.end110.if.end127_crit_edge

if.end110.if.end127_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %page_size, align 4
  %78 = load i32, ptr @at24_io_limit, align 4
  %79 = call i32 @llvm.umin.i32(i32 %77, i32 %78)
  %write_max = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %79)
  %cmp122 = icmp ugt i32 %79, 32
  %or.cond328 = select i1 %tobool.not, i1 %cmp122, i1 false
  %spec.store.select = select i1 %or.cond328, i32 32, i32 %79
  %80 = ptrtoint ptr %write_max to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %spec.store.select, ptr %write_max, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then115, %if.end110.if.end127_crit_edge
  %81 = ptrtoint ptr %num_addresses to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_addresses, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp128371 = icmp ugt i32 %82, 1
  br i1 %cmp128371, label %for.body.lr.ph, label %if.end127.for.end_crit_edge

if.end127.for.end_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end127
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %at24_make_dummy_client.exit.thread.for.body_crit_edge, %for.body.lr.ph
  %i.0372 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %at24_make_dummy_client.exit.thread.for.body_crit_edge ]
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %85 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr.i, align 2
  %87 = ptrtoint ptr %bank_addr_shift100 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bank_addr_shift100, align 4
  %conv1.i = zext i8 %88 to i32
  %shl.i = shl i32 %i.0372, %conv1.i
  %89 = trunc i32 %shl.i to i16
  %conv2.i = add i16 %86, %89
  %call.i351 = call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %84, i16 noundef zeroext %conv2.i) #7
  %cmp.i.i = icmp ugt ptr %call.i351, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.at24_make_dummy_client.exit_crit_edge, label %if.end.i

for.body.at24_make_dummy_client.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %at24_make_dummy_client.exit

if.end.i:                                         ; preds = %for.body
  %call5.i = call ptr @__devm_regmap_init_i2c(ptr noundef %call.i351, ptr noundef nonnull %regmap_config, ptr noundef nonnull @at24_make_dummy_client._key, ptr noundef nonnull @.str.41) #7
  %cmp.i19.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %if.end.i.at24_make_dummy_client.exit_crit_edge, label %at24_make_dummy_client.exit.thread

if.end.i.at24_make_dummy_client.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at24_make_dummy_client.exit

at24_make_dummy_client.exit.thread:               ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.at24_data, ptr %call.i342, i32 0, i32 11, i32 %i.0372
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call5.i, ptr %arrayidx.i, align 4
  %inc = add nuw i32 %i.0372, 1
  %91 = ptrtoint ptr %num_addresses to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %num_addresses, align 4
  %cmp128 = icmp ult i32 %inc, %92
  br i1 %cmp128, label %at24_make_dummy_client.exit.thread.for.body_crit_edge, label %at24_make_dummy_client.exit.thread.for.end_crit_edge

at24_make_dummy_client.exit.thread.for.end_crit_edge: ; preds = %at24_make_dummy_client.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

at24_make_dummy_client.exit.thread.for.body_crit_edge: ; preds = %at24_make_dummy_client.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

at24_make_dummy_client.exit:                      ; preds = %if.end.i.at24_make_dummy_client.exit_crit_edge, %for.body.at24_make_dummy_client.exit_crit_edge
  %retval.0.i354.in = phi ptr [ %call.i351, %for.body.at24_make_dummy_client.exit_crit_edge ], [ %call5.i, %if.end.i.at24_make_dummy_client.exit_crit_edge ]
  %retval.0.i354 = ptrtoint ptr %retval.0.i354.in to i32
  br label %cleanup

for.end:                                          ; preds = %at24_make_dummy_client.exit.thread.for.end_crit_edge, %if.end127.for.end_crit_edge
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 2
  %93 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -2, ptr %id, align 4
  %call134 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.30) #7
  br i1 %call134, label %if.then135, label %if.else140

if.then135:                                       ; preds = %for.end
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 1
  %call136 = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.then135.if.end143_crit_edge, label %if.then135.cleanup_crit_edge

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then135.if.end143_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.else140:                                       ; preds = %for.end
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %94 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i355 = icmp eq ptr %95, null
  br i1 %tobool.not.i355, label %if.end.i356, label %if.else140.dev_name.exit_crit_edge

if.else140.dev_name.exit_crit_edge:               ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i356:                                      ; preds = %if.else140
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i356, %if.else140.dev_name.exit_crit_edge
  %retval.0.i357 = phi ptr [ %97, %if.end.i356 ], [ %95, %if.else140.dev_name.exit_crit_edge ]
  %name142 = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 1
  %98 = ptrtoint ptr %name142 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %retval.0.i357, ptr %name142, align 4
  br label %if.end143

if.end143:                                        ; preds = %dev_name.exit, %if.then135.if.end143_crit_edge
  %type = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 9
  %99 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %type, align 4
  %100 = ptrtoint ptr %nvmem_config to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %dev1, ptr %nvmem_config, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 10
  %and111.lobit = lshr exact i32 %and111, 6
  %101 = trunc i32 %and111.lobit to i8
  %102 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 11
  %103 = lshr i8 %conv97, 5
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  %106 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %root_only, align 1
  %owner = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 3
  %107 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %owner, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 22
  %108 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 23
  %109 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %dev1, ptr %base_dev, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 15
  %110 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @at24_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 16
  %111 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @at24_write, ptr %reg_write, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 21
  %112 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call.i342, ptr %priv, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 20
  %113 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 19
  %114 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %word_size, align 4
  %115 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %byte_len, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_config, i32 0, i32 18
  %117 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %size, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %118 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i342, ptr %driver_data.i.i, align 4
  %119 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %vcc_reg, align 4
  %call158 = call i32 @regulator_enable(ptr noundef %120) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end164, label %do.end163

do.end163:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end164:                                        ; preds = %if.end143
  %call.i358 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #7
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call167 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %nvmem_config) #7
  %nvmem = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 7
  %121 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call167, ptr %nvmem, align 4
  %cmp.i359 = icmp ugt ptr %call167, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i359, label %if.then170, label %if.then180

if.then170:                                       ; preds = %if.end164
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %122 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp.i360 = icmp eq i32 %123, 2
  br i1 %cmp.i360, label %if.then170.if.end175_crit_edge, label %if.then172

if.then170.if.end175_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end175

if.then172:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %vcc_reg, align 4
  %call174 = call i32 @regulator_disable(ptr noundef %125) #7
  br label %if.end175

if.end175:                                        ; preds = %if.then172, %if.then170.if.end175_crit_edge
  %126 = ptrtoint ptr %nvmem to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %nvmem, align 4
  %128 = ptrtoint ptr %127 to i32
  br label %cleanup

if.then180:                                       ; preds = %if.end164
  %call181 = call i32 @at24_read(ptr noundef nonnull %call.i342, i32 noundef 0, ptr noundef nonnull %test_byte, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end190, label %if.then183

if.then183:                                       ; preds = %if.then180
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  %runtime_status.i361 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %129 = ptrtoint ptr %runtime_status.i361 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %runtime_status.i361, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %130)
  %cmp.i362 = icmp eq i32 %130, 2
  br i1 %cmp.i362, label %if.then183.cleanup_crit_edge, label %if.then185

if.then183.cleanup_crit_edge:                     ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then185:                                       ; preds = %if.then183
  call void @__sanitizer_cov_trace_pc() #9
  %131 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vcc_reg, align 4
  %call187 = call i32 @regulator_disable(ptr noundef %132) #7
  br label %cleanup

if.end190:                                        ; preds = %if.then180
  %call.i363 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #7
  %133 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %byte_len, align 4
  %name197 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  br i1 %tobool112.not, label %do.end196, label %do.end202

do.end196:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  %write_max198 = getelementptr inbounds %struct.at24_data, ptr %call.i342, i32 0, i32 1
  %135 = ptrtoint ptr %write_max198 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %write_max198, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %134, ptr noundef %name197, i32 noundef %136) #10
  br label %cleanup

do.end202:                                        ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %134, ptr noundef %name197) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end202, %do.end196, %if.then185, %if.then183.cleanup_crit_edge, %if.end175, %do.end163, %if.then135.cleanup_crit_edge, %at24_make_dummy_client.exit, %if.then107, %if.end85.cleanup_crit_edge, %if.then83, %do.end76, %do.end47, %if.then
  %retval.0 = phi i32 [ %25, %if.then ], [ -22, %do.end76 ], [ %48, %if.then83 ], [ %75, %if.then107 ], [ %call158, %do.end163 ], [ %128, %if.end175 ], [ -22, %do.end47 ], [ -12, %if.end85.cleanup_crit_edge ], [ %retval.0.i354, %at24_make_dummy_client.exit ], [ %call136, %if.then135.cleanup_crit_edge ], [ -19, %if.then185 ], [ -19, %if.then183.cleanup_crit_edge ], [ 0, %do.end202 ], [ 0, %do.end196 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %test_byte) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_addresses) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addrw) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page_size) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %byte_len) #7
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_config) #7
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %regmap_config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_read(ptr noundef %priv, i32 noundef %off, ptr noundef %val, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client_regmaps.i = getelementptr inbounds %struct.at24_data, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %client_regmaps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_regmaps.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !174

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  %byte_len = getelementptr inbounds %struct.at24_data, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i61 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp7 = icmp slt i32 %call.i61, 0
  br i1 %cmp7, label %if.then8, label %for.body.preheader

if.then8:                                         ; preds = %if.end5
  %usage_count.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !176
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then8.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !177
  br label %cleanup

for.body.preheader:                               ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef %priv, i32 noundef 0) #7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.067 = phi i32 [ %add18, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %count.addr.066 = phi i32 [ %sub, %for.inc.for.body_crit_edge ], [ %count, %for.body.preheader ]
  %add.ptr = getelementptr i8, ptr %val, i32 %i.067
  %add11 = add i32 %i.067, %off
  %call12 = tail call fastcc i32 @at24_regmap_read(ptr noundef %priv, ptr noundef %add.ptr, i32 noundef %add11, i32 noundef %count.addr.066)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %priv) #7
  %call.i62 = tail call i32 @__pm_runtime_idle(ptr noundef %call.i, i32 noundef 5) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %add18 = add i32 %call12, %i.067
  %sub = sub i32 %count.addr.066, %call12
  %tobool10.not = icmp eq i32 %sub, 0
  br i1 %tobool10.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef %priv) #7
  %call.i63 = tail call i32 @__pm_runtime_idle(ptr noundef %call.i, i32 noundef 5) #7
  %read_post = getelementptr inbounds %struct.at24_data, ptr %priv, i32 0, i32 9
  %5 = ptrtoint ptr %read_post to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_post, align 4
  %tobool21.not = icmp eq ptr %6, null
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %if.then28, !prof !178

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %6(i32 noundef %off, ptr noundef %val, i32 noundef %add18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %for.end.cleanup_crit_edge, %if.then14, %do.end11.i.i.i.i, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %for.end.cleanup_crit_edge ], [ %call.i61, %if.then8.cleanup_crit_edge ], [ %call.i61, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_write(ptr noundef %priv, i32 noundef %off, ptr noundef %val, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client_regmaps.i = getelementptr inbounds %struct.at24_data, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %client_regmaps.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client_regmaps.i, align 4
  %call.i = tail call ptr @regmap_get_device(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !174

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  %byte_len = getelementptr inbounds %struct.at24_data, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i44 = tail call i32 @__pm_runtime_resume(ptr noundef %call.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp7 = icmp slt i32 %call.i44, 0
  br i1 %cmp7, label %if.then8, label %while.body.preheader

if.then8:                                         ; preds = %if.end5
  %usage_count.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !175
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !176
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then8.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !177
  br label %cleanup

while.body.preheader:                             ; preds = %if.end5
  tail call void @mutex_lock_nested(ptr noundef %priv, i32 noundef 0) #7
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.preheader
  %buf.050 = phi ptr [ %add.ptr, %if.end16.while.body_crit_edge ], [ %val, %while.body.preheader ]
  %count.addr.049 = phi i32 [ %sub, %if.end16.while.body_crit_edge ], [ %count, %while.body.preheader ]
  %off.addr.048 = phi i32 [ %add17, %if.end16.while.body_crit_edge ], [ %off, %while.body.preheader ]
  %call11 = tail call fastcc i32 @at24_regmap_write(ptr noundef %priv, ptr noundef %buf.050, i32 noundef %off.addr.048, i32 noundef %count.addr.049)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %priv) #7
  %call.i45 = tail call i32 @__pm_runtime_idle(ptr noundef %call.i, i32 noundef 5) #7
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %buf.050, i32 %call11
  %add17 = add i32 %call11, %off.addr.048
  %sub = sub i32 %count.addr.049, %call11
  %tobool10.not = icmp eq i32 %sub, 0
  br i1 %tobool10.not, label %while.end, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %priv) #7
  %call.i46 = tail call i32 @__pm_runtime_idle(ptr noundef %call.i, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %do.end11.i.i.i.i, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then13 ], [ 0, %while.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i44, %if.then8.cleanup_crit_edge ], [ %call.i44, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at24_regmap_read(ptr nocapture noundef readonly %at24, ptr noundef %buf, i32 noundef %offset, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.at24_data, ptr %at24, i32 0, i32 6
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  %..i = select i1 %tobool.not.i, i32 8, i32 16
  %.9.i = select i1 %tobool.not.i, i32 255, i32 65535
  %shr2.i = lshr i32 %offset, %..i
  %and3.i = and i32 %.9.i, %offset
  %arrayidx.i = getelementptr %struct.at24_data, ptr %at24, i32 0, i32 11, i32 %shr2.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %1 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i27 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i27, label %entry.at24_adjust_read_count.exit_crit_edge, label %if.then.i29

entry.at24_adjust_read_count.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %at24_adjust_read_count.exit

if.then.i29:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and3.i28 = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i28)
  %tobool4.not.i = icmp eq i32 %and3.i28, 0
  %shl.i = select i1 %tobool4.not.i, i32 256, i32 65536
  %sub.i = sub nsw i32 %shl.i, %and3.i
  %4 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %count) #7
  br label %at24_adjust_read_count.exit

at24_adjust_read_count.exit:                      ; preds = %if.then.i29, %entry.at24_adjust_read_count.exit_crit_edge
  %count.addr.0.i = phi i32 [ %count, %entry.at24_adjust_read_count.exit_crit_edge ], [ %4, %if.then.i29 ]
  %5 = load i32, ptr @at24_io_limit, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %count.addr.0.i, i32 %5) #7
  %offset_adj = getelementptr inbounds %struct.at24_data, ptr %at24, i32 0, i32 3
  %7 = ptrtoint ptr %offset_adj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offset_adj, align 4
  %add = add i32 %8, %and3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = load i32, ptr @at24_write_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #7
  %11 = add i32 %call2.i, %9
  br label %do.body

do.body:                                          ; preds = %if.end12.do.body_crit_edge, %at24_adjust_read_count.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %call4 = tail call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %add, ptr noundef %buf, i32 noundef %6) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at24_regmap_read.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at24_regmap_read, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at24_regmap_read.__UNIQUE_ID_ddebug293, ptr noundef %call9, ptr noundef nonnull @.str.43, i32 noundef %6, i32 noundef %add, i32 noundef %call4, i32 noundef %13) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool10.not = icmp eq i32 %call4, 0
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %sub = sub i32 %12, %11
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end12.do.body_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.do.body_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end.cleanup_crit_edge ], [ -110, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at24_regmap_write(ptr nocapture noundef readonly %at24, ptr noundef %buf, i32 noundef %offset, i32 noundef %count) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.at24_data, ptr %at24, i32 0, i32 6
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  %..i = select i1 %tobool.not.i, i32 8, i32 16
  %.9.i = select i1 %tobool.not.i, i32 255, i32 65535
  %shr2.i = lshr i32 %offset, %..i
  %and3.i = and i32 %.9.i, %offset
  %arrayidx.i = getelementptr %struct.at24_data, ptr %at24, i32 0, i32 11, i32 %shr2.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %write_max.i = getelementptr inbounds %struct.at24_data, ptr %at24, i32 0, i32 1
  %4 = ptrtoint ptr %write_max.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_max.i, align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %count) #7
  %page_size.i = getelementptr inbounds %struct.at24_data, ptr %at24, i32 0, i32 5
  %7 = ptrtoint ptr %page_size.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %page_size.i, align 4
  %conv.i = zext i16 %8 to i32
  %add2.i = add nuw nsw i32 %and3.i, %conv.i
  %9 = urem i32 %add2.i, %conv.i
  %mul.i = sub nsw i32 %add2.i, %9
  %add5.i = add i32 %6, %and3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %mul.i)
  %cmp6.i = icmp ugt i32 %add5.i, %mul.i
  %sub9.i = sub nsw i32 %mul.i, %and3.i
  %count.addr.1.i = select i1 %cmp6.i, i32 %sub9.i, i32 %6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = load i32, ptr @at24_write_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #7
  %12 = add i32 %call2.i, %10
  br label %do.body

do.body:                                          ; preds = %if.end11.do.body_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %call3 = tail call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef %and3.i, ptr noundef %buf, i32 noundef %count.addr.1.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at24_regmap_write.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at24_regmap_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !179

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call ptr @regmap_get_device(ptr noundef %3) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at24_regmap_write.__UNIQUE_ID_ddebug294, ptr noundef %call8, ptr noundef nonnull @.str.45, i32 noundef %count.addr.1.i, i32 noundef %and3.i, i32 noundef %call3, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool9.not = icmp eq i32 %call3, 0
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #7
  %sub = sub i32 %13, %12
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end11.do.body_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup:                                          ; preds = %if.end11.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1.i, %do.end.cleanup_crit_edge ], [ -110, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_suspend(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vcc_reg = getelementptr inbounds %struct.at24_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc_reg, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at24_resume(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vcc_reg = getelementptr inbounds %struct.at24_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vcc_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc_reg, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at24_read_post_vaio(i32 noundef %off, ptr nocapture noundef writeonly %buf, i32 noundef %count) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp16 = icmp eq i32 %count, 0
  %0 = or i1 %call, %cmp16
  br i1 %0, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.017, %off
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add)
  %cmp1 = icmp ult i32 %add, 32
  %1 = and i32 %add, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %1)
  %2 = icmp eq i32 %1, 192
  %or.cond = or i1 %cmp1, %2
  br i1 %or.cond, label %if.then6, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.017
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__param_io_limit, !1, !"__param_io_limit", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/at24.c", i32 108, i32 1}
!2 = !{ptr @__UNIQUE_ID_io_limittype289, !1, !"__UNIQUE_ID_io_limittype289", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_at24_io_limit290, !4, !"__UNIQUE_ID_at24_io_limit290", i1 false, i1 false}
!4 = !{!"../drivers/misc/eeprom/at24.c", i32 109, i32 1}
!5 = !{ptr @__param_write_timeout, !6, !"__param_write_timeout", i1 false, i1 false}
!6 = !{!"../drivers/misc/eeprom/at24.c", i32 116, i32 1}
!7 = !{ptr @__UNIQUE_ID_write_timeouttype291, !6, !"__UNIQUE_ID_write_timeouttype291", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_at24_write_timeout292, !9, !"__UNIQUE_ID_at24_write_timeout292", i1 false, i1 false}
!9 = !{!"../drivers/misc/eeprom/at24.c", i32 117, i32 1}
!10 = !{ptr @__initcall__kmod_at24__297_853_at24_init6, !11, !"__initcall__kmod_at24__297_853_at24_init6", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/at24.c", i32 853, i32 1}
!12 = !{ptr @__exitcall_at24_exit, !13, !"__exitcall_at24_exit", i1 false, i1 false}
!13 = !{!"../drivers/misc/eeprom/at24.c", i32 859, i32 1}
!14 = !{ptr @__UNIQUE_ID_description298, !15, !"__UNIQUE_ID_description298", i1 false, i1 false}
!15 = !{!"../drivers/misc/eeprom/at24.c", i32 861, i32 1}
!16 = !{ptr @__UNIQUE_ID_author299, !17, !"__UNIQUE_ID_author299", i1 false, i1 false}
!17 = !{!"../drivers/misc/eeprom/at24.c", i32 862, i32 1}
!18 = !{ptr @__UNIQUE_ID_file300, !19, !"__UNIQUE_ID_file300", i1 false, i1 false}
!19 = !{!"../drivers/misc/eeprom/at24.c", i32 863, i32 1}
!20 = !{ptr @__UNIQUE_ID_license301, !19, !"__UNIQUE_ID_license301", i1 false, i1 false}
!21 = !{ptr @__param_str_io_limit, !1, !"__param_str_io_limit", i1 false, i1 false}
!22 = !{ptr @at24_io_limit, !23, !"at24_io_limit", i1 false, i1 false}
!23 = !{!"../drivers/misc/eeprom/at24.c", i32 107, i32 21}
!24 = !{ptr @__param_str_write_timeout, !6, !"__param_str_write_timeout", i1 false, i1 false}
!25 = !{ptr @at24_write_timeout, !26, !"at24_write_timeout", i1 false, i1 false}
!26 = !{!"../drivers/misc/eeprom/at24.c", i32 115, i32 21}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/eeprom/at24.c", i32 846, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @at24_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @at24_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/eeprom/at24.c", i32 832, i32 11}
!35 = !{ptr @at24_driver, !36, !"at24_driver", i1 false, i1 false}
!36 = !{!"../drivers/misc/eeprom/at24.c", i32 830, i32 26}
!37 = !{ptr @.str.4, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/eeprom/at24.c", i32 608, i32 38}
!39 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/eeprom/at24.c", i32 618, i32 35}
!41 = !{ptr @.str.6, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/eeprom/at24.c", i32 620, i32 35}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/misc/eeprom/at24.c", i32 623, i32 38}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/eeprom/at24.c", i32 628, i32 5}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @at24_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @at24_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/eeprom/at24.c", i32 636, i32 4}
!54 = !{ptr @at24_probe._entry.12, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @at24_probe._entry_ptr.14, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/eeprom/at24.c", i32 641, i32 38}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/eeprom/at24.c", i32 649, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @at24_probe._entry.16, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @at24_probe._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/eeprom/at24.c", i32 654, i32 3}
!65 = !{ptr @at24_probe._entry.20, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @at24_probe._entry_ptr.22, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/eeprom/at24.c", i32 656, i32 38}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/eeprom/at24.c", i32 666, i32 3}
!71 = !{ptr @at24_probe._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @at24_probe._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @at24_probe._key, !74, !"_key", i1 false, i1 false}
!74 = !{!"../drivers/misc/eeprom/at24.c", i32 675, i32 11}
!75 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @at24_probe.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../drivers/misc/eeprom/at24.c", i32 684, i32 2}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/eeprom/at24.c", i32 694, i32 42}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/misc/eeprom/at24.c", i32 722, i32 35}
!83 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/eeprom/at24.c", i32 751, i32 4}
!85 = !{ptr @at24_probe._entry.31, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @at24_probe._entry_ptr.33, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/misc/eeprom/at24.c", i32 785, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @at24_probe._entry.34, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @at24_probe._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/eeprom/at24.c", i32 788, i32 3}
!94 = !{ptr @at24_probe._entry.38, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @at24_probe._entry_ptr.40, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @at24_make_dummy_client._key, !97, !"_key", i1 false, i1 false}
!97 = !{!"../drivers/misc/eeprom/at24.c", i32 552, i32 11}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/eeprom/at24.c", i32 351, i32 3}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @at24_regmap_read.__UNIQUE_ID_ddebug293, !100, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/misc/eeprom/at24.c", i32 407, i32 3}
!105 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @at24_regmap_write.__UNIQUE_ID_ddebug294, !104, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!107 = !{ptr @at24_of_match, !108, !"at24_of_match", i1 false, i1 false}
!108 = !{!"../drivers/misc/eeprom/at24.c", i32 239, i32 34}
!109 = !{ptr @at24_data_24c00, !110, !"at24_data_24c00", i1 false, i1 false}
!110 = !{!"../drivers/misc/eeprom/at24.c", i32 164, i32 1}
!111 = !{ptr @at24_data_24c01, !112, !"at24_data_24c01", i1 false, i1 false}
!112 = !{!"../drivers/misc/eeprom/at24.c", i32 166, i32 1}
!113 = !{ptr @at24_data_24cs01, !114, !"at24_data_24cs01", i1 false, i1 false}
!114 = !{!"../drivers/misc/eeprom/at24.c", i32 167, i32 1}
!115 = !{ptr @at24_data_24c02, !116, !"at24_data_24c02", i1 false, i1 false}
!116 = !{!"../drivers/misc/eeprom/at24.c", i32 169, i32 1}
!117 = !{ptr @at24_data_24cs02, !118, !"at24_data_24cs02", i1 false, i1 false}
!118 = !{!"../drivers/misc/eeprom/at24.c", i32 170, i32 1}
!119 = !{ptr @at24_data_24mac402, !120, !"at24_data_24mac402", i1 false, i1 false}
!120 = !{!"../drivers/misc/eeprom/at24.c", i32 172, i32 1}
!121 = !{ptr @at24_data_24mac602, !122, !"at24_data_24mac602", i1 false, i1 false}
!122 = !{!"../drivers/misc/eeprom/at24.c", i32 174, i32 1}
!123 = !{ptr @at24_data_spd, !124, !"at24_data_spd", i1 false, i1 false}
!124 = !{!"../drivers/misc/eeprom/at24.c", i32 177, i32 1}
!125 = !{ptr @at24_data_24c04, !126, !"at24_data_24c04", i1 false, i1 false}
!126 = !{!"../drivers/misc/eeprom/at24.c", i32 183, i32 1}
!127 = !{ptr @at24_data_24cs04, !128, !"at24_data_24cs04", i1 false, i1 false}
!128 = !{!"../drivers/misc/eeprom/at24.c", i32 184, i32 1}
!129 = !{ptr @at24_data_24c08, !130, !"at24_data_24c08", i1 false, i1 false}
!130 = !{!"../drivers/misc/eeprom/at24.c", i32 187, i32 1}
!131 = !{ptr @at24_data_24cs08, !132, !"at24_data_24cs08", i1 false, i1 false}
!132 = !{!"../drivers/misc/eeprom/at24.c", i32 188, i32 1}
!133 = !{ptr @at24_data_24c16, !134, !"at24_data_24c16", i1 false, i1 false}
!134 = !{!"../drivers/misc/eeprom/at24.c", i32 190, i32 1}
!135 = !{ptr @at24_data_24cs16, !136, !"at24_data_24cs16", i1 false, i1 false}
!136 = !{!"../drivers/misc/eeprom/at24.c", i32 191, i32 1}
!137 = !{ptr @at24_data_24c32, !138, !"at24_data_24c32", i1 false, i1 false}
!138 = !{!"../drivers/misc/eeprom/at24.c", i32 193, i32 1}
!139 = !{ptr @at24_data_24cs32, !140, !"at24_data_24cs32", i1 false, i1 false}
!140 = !{!"../drivers/misc/eeprom/at24.c", i32 194, i32 1}
!141 = !{ptr @at24_data_24c64, !142, !"at24_data_24c64", i1 false, i1 false}
!142 = !{!"../drivers/misc/eeprom/at24.c", i32 196, i32 1}
!143 = !{ptr @at24_data_24cs64, !144, !"at24_data_24cs64", i1 false, i1 false}
!144 = !{!"../drivers/misc/eeprom/at24.c", i32 197, i32 1}
!145 = !{ptr @at24_data_24c128, !146, !"at24_data_24c128", i1 false, i1 false}
!146 = !{!"../drivers/misc/eeprom/at24.c", i32 199, i32 1}
!147 = !{ptr @at24_data_24c256, !148, !"at24_data_24c256", i1 false, i1 false}
!148 = !{!"../drivers/misc/eeprom/at24.c", i32 200, i32 1}
!149 = !{ptr @at24_data_24c512, !150, !"at24_data_24c512", i1 false, i1 false}
!150 = !{!"../drivers/misc/eeprom/at24.c", i32 201, i32 1}
!151 = !{ptr @at24_data_24c1024, !152, !"at24_data_24c1024", i1 false, i1 false}
!152 = !{!"../drivers/misc/eeprom/at24.c", i32 202, i32 1}
!153 = !{ptr @at24_data_24c1025, !154, !"at24_data_24c1025", i1 false, i1 false}
!154 = !{!"../drivers/misc/eeprom/at24.c", i32 203, i32 1}
!155 = !{ptr @at24_data_24c2048, !156, !"at24_data_24c2048", i1 false, i1 false}
!156 = !{!"../drivers/misc/eeprom/at24.c", i32 204, i32 1}
!157 = !{ptr @at24_pm_ops, !158, !"at24_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/misc/eeprom/at24.c", i32 824, i32 32}
!159 = !{ptr @at24_ids, !160, !"at24_ids", i1 false, i1 false}
!160 = !{!"../drivers/misc/eeprom/at24.c", i32 208, i32 35}
!161 = !{ptr @at24_data_24c02_vaio, !162, !"at24_data_24c02_vaio", i1 false, i1 false}
!162 = !{!"../drivers/misc/eeprom/at24.c", i32 180, i32 1}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{i32 0, i32 33}
!173 = !{!"auto-init"}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2148326226}
!176 = !{i64 811049, i64 811074, i64 811096, i64 811112, i64 811124, i64 811144, i64 811168, i64 811184, i64 811196}
!177 = !{i64 2148326414}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{i64 2148971099, i64 2148971104, i64 2148971117, i64 2148971161, i64 2148971195, i64 2148971216}
