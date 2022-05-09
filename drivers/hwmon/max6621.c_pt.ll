; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max6621.c_pt.bc'
source_filename = "../drivers/hwmon/max6621.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.max6621_data = type { ptr, ptr, [10 x i32] }

@__initcall__kmod_max6621__302_561_max6621_driver_init6 = internal global ptr @max6621_driver_init, section ".initcall6.init", align 4
@max6621_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max6621_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max6621_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6621_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6621_driver_exit = internal global ptr @max6621_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [53 x i8] c"max6621.author=Vadim Pasternak <vadimp@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [45 x i8] c"max6621.description=Driver for Maxim MAX6621\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [35 x i8] c"max6621.file=drivers/hwmon/max6621\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [20 x i8] c"max6621.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6621\00", [24 x i8] zeroinitializer }, align 32
@max6621_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max6621_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6621\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max6621_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max6621_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @max6621_writeable_reg, ptr @max6621_readable_reg, ptr @max6621_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max6621_regmap_default, i32 2, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"max6621:492:(&max6621_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@max6621_temp_regs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7], [60 x i8] zeroinitializer }, align 32
@max6621_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max6621_hwmon_ops, ptr @max6621_info }, [24 x i8] zeroinitializer }, align 32
@max6621_regmap_default = internal constant { [2 x %struct.reg_default], [16 x i8] } { [2 x %struct.reg_default] [%struct.reg_default { i32 12, i32 65445 }, %struct.reg_default { i32 13, i32 515 }], [16 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max6621_verify_reg_data\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/max6621.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PECI error code - err 0x%04x.\0A\00", [33 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 45, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PECI transaction failed - err 0x%04x.\0A\00", [57 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 45, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Polling disabled - err 0x%04x.\0A\00", [32 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"First poll not completed on startup - err 0x%04x.\0A\00", [45 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 47, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Resource is disabled - err 0x%04x.\0A\00", [60 x i8] zeroinitializer }, align 32
@max6621_verify_reg_data.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No alert active - err 0x%04x.\0A\00", [33 x i8] zeroinitializer }, align 32
@max6621_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max6621_is_visible, ptr @max6621_read, ptr @max6621_read_string, ptr @max6621_write }, [16 x i8] zeroinitializer }, align 32
@max6621_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.19, ptr @.compoundliteral.21, ptr null], [20 x i8] zeroinitializer }, align 32
@max6621_temp_alert_chan2reg = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 17, i32 18, i32 19], [16 x i8] zeroinitializer }, align 32
@max6621_temp_labels = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"maximum\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket0_0\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket1_0\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket2_0\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket3_0\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket0_1\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket1_1\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket2_1\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"socket3_1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 3145730, i32 2228738, i32 2228738, i32 2228738, i32 2228738, i32 2097154, i32 2097154, i32 2097154, i32 2097154, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.20 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 33024, i64 33025, i64 33026, i64 33027, i64 33028]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 9, i64 17, i64 20, i64 21]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 9, i64 17, i64 20]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 20]
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"max6621_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 551, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 554, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"max6621_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 545, i32 49 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"max6621_id\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 539, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"max6621_regmap_config\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 439, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 492, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"max6621_temp_regs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 95, i32 18 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"max6621_chip_info\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 475, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant [23 x i8] c"max6621_regmap_default\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 434, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 171, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 179, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 183, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 186, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 190, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 193, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"max6621_hwmon_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 468, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [13 x i8] c"max6621_info\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 452, i32 41 }
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"max6621_temp_alert_chan2reg\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 113, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"max6621_temp_labels\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 101, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 102, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 103, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 104, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 105, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 106, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 107, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 108, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [27 x i8] c"../drivers/hwmon/max6621.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 110, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_max6621_driver_exit, ptr @__initcall__kmod_max6621__302_561_max6621_driver_init6, ptr @max6621_driver_exit, ptr @max6621_driver, ptr @.str, ptr @max6621_of_match, ptr @max6621_id, ptr @max6621_probe._key, ptr @max6621_regmap_config, ptr @.str.1, ptr @max6621_temp_regs, ptr @max6621_chip_info, ptr @max6621_regmap_default, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @max6621_hwmon_ops, ptr @max6621_info, ptr @max6621_temp_alert_chan2reg, ptr @max6621_temp_labels, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.compoundliteral, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_temp_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_regmap_default to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_temp_alert_chan2reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6621_temp_labels to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6621_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6621_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6621_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max6621_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6621_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max6621_regmap_config, ptr noundef nonnull @max6621_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.max6621_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %call2, i32 noundef 12, i32 noundef 65445) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 13, i32 noundef 515) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call22 = tail call i32 @regcache_sync(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.body, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %if.end19
  %call26 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %for.body.cleanup_crit_edge, label %if.end30

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %call31 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  %spec.select = select i1 %tobool32.not, i32 8, i32 -1
  %10 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 0
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  %call26.1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.1)
  %cmp27.1 = icmp slt i32 %call26.1, 0
  br i1 %cmp27.1, label %if.end30.cleanup_crit_edge, label %if.end30.1

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.1:                                       ; preds = %if.end30
  %call31.1 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.1)
  %tobool32.not.1 = icmp ne i32 %call31.1, 0
  %spec.select.1 = sext i1 %tobool32.not.1 to i32
  %12 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.1, ptr %12, align 4
  %call26.2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.2)
  %cmp27.2 = icmp slt i32 %call26.2, 0
  br i1 %cmp27.2, label %if.end30.1.cleanup_crit_edge, label %if.end30.2

if.end30.1.cleanup_crit_edge:                     ; preds = %if.end30.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.2:                                       ; preds = %if.end30.1
  %call31.2 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.2)
  %tobool32.not.2 = icmp eq i32 %call31.2, 0
  %spec.select.2 = select i1 %tobool32.not.2, i32 2, i32 -1
  %14 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.2, ptr %14, align 4
  %call26.3 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.3)
  %cmp27.3 = icmp slt i32 %call26.3, 0
  br i1 %cmp27.3, label %if.end30.2.cleanup_crit_edge, label %if.end30.3

if.end30.2.cleanup_crit_edge:                     ; preds = %if.end30.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.3:                                       ; preds = %if.end30.2
  %call31.3 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.3)
  %tobool32.not.3 = icmp eq i32 %call31.3, 0
  %spec.select.3 = select i1 %tobool32.not.3, i32 4, i32 -1
  %16 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.3, ptr %16, align 4
  %call26.4 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.4)
  %cmp27.4 = icmp slt i32 %call26.4, 0
  br i1 %cmp27.4, label %if.end30.3.cleanup_crit_edge, label %if.end30.4

if.end30.3.cleanup_crit_edge:                     ; preds = %if.end30.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.4:                                       ; preds = %if.end30.3
  %call31.4 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.4)
  %tobool32.not.4 = icmp eq i32 %call31.4, 0
  %spec.select.4 = select i1 %tobool32.not.4, i32 6, i32 -1
  %18 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.4, ptr %18, align 4
  %call26.5 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.5)
  %cmp27.5 = icmp slt i32 %call26.5, 0
  br i1 %cmp27.5, label %if.end30.4.cleanup_crit_edge, label %if.end30.5

if.end30.4.cleanup_crit_edge:                     ; preds = %if.end30.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.5:                                       ; preds = %if.end30.4
  %call31.5 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.5)
  %tobool32.not.5 = icmp eq i32 %call31.5, 0
  %spec.select.5 = select i1 %tobool32.not.5, i32 1, i32 -1
  %20 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select.5, ptr %20, align 4
  %call26.6 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.6)
  %cmp27.6 = icmp slt i32 %call26.6, 0
  br i1 %cmp27.6, label %if.end30.5.cleanup_crit_edge, label %if.end30.6

if.end30.5.cleanup_crit_edge:                     ; preds = %if.end30.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.6:                                       ; preds = %if.end30.5
  %call31.6 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.6)
  %tobool32.not.6 = icmp eq i32 %call31.6, 0
  %spec.select.6 = select i1 %tobool32.not.6, i32 3, i32 -1
  %22 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 6
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.select.6, ptr %22, align 4
  %call26.7 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.7)
  %cmp27.7 = icmp slt i32 %call26.7, 0
  br i1 %cmp27.7, label %if.end30.6.cleanup_crit_edge, label %if.end30.7

if.end30.6.cleanup_crit_edge:                     ; preds = %if.end30.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.7:                                       ; preds = %if.end30.6
  %call31.7 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.7)
  %tobool32.not.7 = icmp eq i32 %call31.7, 0
  %spec.select.7 = select i1 %tobool32.not.7, i32 5, i32 -1
  %24 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select.7, ptr %24, align 4
  %call26.8 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.8)
  %cmp27.8 = icmp slt i32 %call26.8, 0
  br i1 %cmp27.8, label %if.end30.7.cleanup_crit_edge, label %if.end30.8

if.end30.7.cleanup_crit_edge:                     ; preds = %if.end30.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.8:                                       ; preds = %if.end30.7
  call void @__sanitizer_cov_trace_pc() #10
  %call31.8 = tail call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev1, i32 noundef %call26.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.8)
  %tobool32.not.8 = icmp eq i32 %call31.8, 0
  %spec.select.8 = select i1 %tobool32.not.8, i32 7, i32 -1
  %26 = getelementptr %struct.max6621_data, ptr %call.i, i32 0, i32 2, i32 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.select.8, ptr %26, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call39 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6621_chip_info, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  %28 = ptrtoint ptr %call39 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %28, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end30.8, %if.end30.7.cleanup_crit_edge, %if.end30.6.cleanup_crit_edge, %if.end30.5.cleanup_crit_edge, %if.end30.4.cleanup_crit_edge, %if.end30.3.cleanup_crit_edge, %if.end30.2.cleanup_crit_edge, %if.end30.1.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %spec.select.i, %if.end30.8 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call22, %if.end19.cleanup_crit_edge ], [ %call26, %for.body.cleanup_crit_edge ], [ %call26.1, %if.end30.cleanup_crit_edge ], [ %call26.2, %if.end30.1.cleanup_crit_edge ], [ %call26.3, %if.end30.2.cleanup_crit_edge ], [ %call26.4, %if.end30.3.cleanup_crit_edge ], [ %call26.5, %if.end30.4.cleanup_crit_edge ], [ %call26.6, %if.end30.5.cleanup_crit_edge ], [ %call26.7, %if.end30.6.cleanup_crit_edge ], [ %call26.8, %if.end30.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max6621_verify_reg_data(ptr noundef %dev, i32 noundef %regval) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %regval, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %0)
  %1 = icmp eq i32 %0, 32768
  br i1 %1, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then5 [label %return], !srcloc !84

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %regval) #8
  br label %return

if.end6:                                          ; preds = %entry
  %2 = zext i32 %regval to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %regval, label %if.end6.return_crit_edge [
    i32 33024, label %do.body7
    i32 33025, label %do.body25
    i32 33026, label %do.body43
    i32 33027, label %do.body61
    i32 33028, label %do.body79
  ]

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then21 [label %return], !srcloc !84

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 33024) #8
  br label %return

do.body25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then39 [label %return], !srcloc !84

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 33025) #8
  br label %return

do.body43:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then57 [label %return], !srcloc !84

if.then57:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 33026) #8
  br label %return

do.body61:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then75 [label %return], !srcloc !84

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 33027) #8
  br label %return

do.body79:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6621_verify_reg_data, %return)) #8
          to label %if.then93 [label %return], !srcloc !84

if.then93:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6621_verify_reg_data.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 33028) #8
  br label %return

return:                                           ; preds = %if.then93, %do.body79, %if.then75, %do.body61, %if.then57, %do.body43, %if.then39, %do.body25, %if.then21, %do.body7, %if.end6.return_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -5, %if.then5 ], [ -5, %if.then21 ], [ -95, %if.then39 ], [ -5, %if.then57 ], [ -95, %if.then75 ], [ -95, %if.then93 ], [ 0, %if.end6.return_crit_edge ], [ -5, %do.body ], [ -5, %do.body7 ], [ -95, %do.body25 ], [ -5, %do.body43 ], [ -95, %do.body61 ], [ -95, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max6621_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 9
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max6621_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %reg)
  %0 = icmp ult i32 %reg, 20
  %switch.cast = trunc i32 %reg to i20
  %switch.downshift = lshr i20 -2561, %switch.cast
  %1 = and i20 %switch.downshift, 1
  %switch.masked = icmp ne i20 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max6621_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %reg)
  %0 = icmp ult i32 %reg, 20
  %switch.cast = trunc i32 %reg to i20
  %switch.downshift = lshr i20 -62977, %switch.cast
  %1 = and i20 %switch.downshift, 1
  %switch.masked = icmp ne i20 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max6621_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.max6621_data, ptr %data, i32 0, i32 2, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog4_crit_edge

if.end.sw.epilog4_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.bb:                                            ; preds = %if.end
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %sw.bb.sw.epilog4_crit_edge [
    i32 1, label %sw.bb.return_crit_edge
    i32 21, label %sw.bb.return_crit_edge5
    i32 17, label %sw.bb.return_crit_edge6
    i32 20, label %sw.bb.sw.bb2_crit_edge
    i32 9, label %sw.bb.sw.bb2_crit_edge7
  ]

sw.bb.sw.bb2_crit_edge7:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

sw.bb.return_crit_edge6:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge5:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.sw.epilog4_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog4

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge7
  br label %return

sw.epilog4:                                       ; preds = %sw.bb.sw.epilog4_crit_edge, %if.end.sw.epilog4_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog4, %sw.bb2, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge5, %sw.bb.return_crit_edge6, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog4 ], [ 420, %sw.bb2 ], [ 0, %entry.return_crit_edge ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge5 ], [ 292, %sw.bb.return_crit_edge6 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6621_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 20, label %sw.bb8
    i32 9, label %sw.bb20
    i32 17, label %sw.bb32
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %arrayidx = getelementptr %struct.max6621_data, ptr %1, i32 0, i32 2, i32 %channel
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %regmap = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef %5, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regval, align 4
  %call3 = call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regval, align 4
  %12 = shl i32 %11, 18
  %conv7 = ashr i32 %12, 24
  %mul = mul nsw i32 %conv7, 1000
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb
  %regmap9 = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %regmap9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap9, align 4
  %call10 = call i32 @regmap_read(ptr noundef %15, i32 noundef 14, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %sw.bb8
  %16 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %regval, align 4
  %call14 = call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regval, align 4
  %shr18 = lshr i32 %19, 6
  %mul19 = mul i32 %shr18, 1000
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul19, ptr %val, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb
  %sub = add i32 %channel, -1
  %arrayidx21 = getelementptr [4 x i32], ptr @max6621_temp_alert_chan2reg, i32 0, i32 %sub
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx21, align 4
  %regmap22 = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %regmap22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap22, align 4
  %call23 = call i32 @regmap_read(ptr noundef %24, i32 noundef %22, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %sw.bb20
  %25 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regval, align 4
  %call27 = call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval, align 4
  %mul31 = mul i32 %28, 1000
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul31, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val, align 4
  %regmap33 = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regmap33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap33, align 4
  %call34 = call i32 @regmap_read(ptr noundef %32, i32 noundef 11, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %sw.bb32
  %33 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval, align 4
  %call38 = call fastcc i32 @max6621_verify_reg_data(ptr noundef %dev, i32 noundef %34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  %35 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regval, align 4
  br i1 %tobool39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 33028, i32 %36)
  %cmp = icmp eq i32 %36, 33028
  %.call38 = select i1 %cmp, i32 0, i32 %call38
  br label %cleanup

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool44.not = icmp eq i32 %36, 0
  br i1 %tobool44.not, label %if.end43.if.end50_crit_edge, label %if.then45

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then45:                                        ; preds = %if.end43
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call46 = call i32 @i2c_smbus_write_byte(ptr noundef %38, i8 noundef zeroext 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then45.cleanup_crit_edge

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %if.then45.if.end50_crit_edge, %if.end43.if.end50_crit_edge
  %39 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool51 = icmp ne i32 %40, 0
  %lnot.ext = zext i1 %tobool51 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %lnot.ext, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.then45.cleanup_crit_edge, %if.then40, %sw.bb32.cleanup_crit_edge, %if.end30, %if.end26.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %if.end17, %if.end13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %if.end6, %if.end.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call10, %sw.bb8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call23, %sw.bb20.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call34, %sw.bb32.cleanup_crit_edge ], [ %.call38, %if.then40 ], [ %call46, %if.then45.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end6 ], [ 0, %if.end17 ], [ 0, %if.end30 ], [ 0, %if.end50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @max6621_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cond3 = icmp eq i32 %attr, 21
  %or.cond = and i1 %cond, %cond3
  br i1 %or.cond, label %sw.bb1, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [9 x ptr], ptr @max6621_temp_labels, i32 0, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %str, align 4
  br label %return

return:                                           ; preds = %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6621_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond27 = icmp eq i32 %type, 1
  br i1 %cond27, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 20, label %sw.bb1
    i32 9, label %sw.bb10
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call i32 @llvm.smax.i32(i32 %val, i32 -127000)
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 128000)
  %div.i = sdiv i32 %4, 1000
  %shl.i = shl nsw i32 %div.i, 6
  %regmap = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 14, i32 noundef %shl.i) #8
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %channel, -1
  %arrayidx = getelementptr [4 x i32], ptr @max6621_temp_alert_chan2reg, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %val, i32 -127000)
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 128000)
  %div = sdiv i32 %10, 1000
  %regmap23 = getelementptr inbounds %struct.max6621_data, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap23, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %8, i32 noundef %div) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb10, %sw.bb1, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %sw.bb10 ], [ %call9, %sw.bb1 ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_max6621__302_561_max6621_driver_init6, !1, !"__initcall__kmod_max6621__302_561_max6621_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max6621.c", i32 561, i32 1}
!2 = !{ptr @__exitcall_max6621_driver_exit, !1, !"__exitcall_max6621_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max6621.c", i32 563, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max6621.c", i32 564, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max6621.c", i32 565, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max6621.c", i32 554, i32 11}
!12 = !{ptr @max6621_driver, !13, !"max6621_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max6621.c", i32 551, i32 26}
!14 = !{ptr @max6621_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max6621.c", i32 492, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max6621_regmap_config, !18, !"max6621_regmap_config", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max6621.c", i32 439, i32 35}
!19 = !{ptr @max6621_regmap_default, !20, !"max6621_regmap_default", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max6621.c", i32 434, i32 33}
!21 = !{ptr @max6621_temp_regs, !22, !"max6621_temp_regs", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max6621.c", i32 95, i32 18}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/max6621.c", i32 171, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug288, !24, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/max6621.c", i32 179, i32 3}
!30 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug289, !29, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/max6621.c", i32 183, i32 3}
!33 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug290, !32, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/max6621.c", i32 186, i32 3}
!36 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug291, !35, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/max6621.c", i32 190, i32 3}
!39 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug292, !38, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/max6621.c", i32 193, i32 3}
!42 = !{ptr @max6621_verify_reg_data.__UNIQUE_ID_ddebug293, !41, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!43 = !{ptr @max6621_chip_info, !44, !"max6621_chip_info", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/max6621.c", i32 475, i32 37}
!45 = !{ptr @max6621_hwmon_ops, !46, !"max6621_hwmon_ops", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/max6621.c", i32 468, i32 31}
!47 = !{ptr @max6621_temp_alert_chan2reg, !48, !"max6621_temp_alert_chan2reg", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/max6621.c", i32 113, i32 18}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/max6621.c", i32 102, i32 2}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/max6621.c", i32 103, i32 2}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/max6621.c", i32 104, i32 2}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/max6621.c", i32 105, i32 2}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/max6621.c", i32 106, i32 2}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/max6621.c", i32 107, i32 2}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/max6621.c", i32 108, i32 2}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/max6621.c", i32 109, i32 2}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/max6621.c", i32 110, i32 2}
!67 = !{ptr @max6621_temp_labels, !68, !"max6621_temp_labels", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/max6621.c", i32 101, i32 26}
!69 = !{ptr @max6621_info, !70, !"max6621_info", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/max6621.c", i32 452, i32 41}
!71 = !{ptr @max6621_of_match, !72, !"max6621_of_match", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/max6621.c", i32 545, i32 49}
!73 = !{ptr @max6621_id, !74, !"max6621_id", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/max6621.c", i32 539, i32 35}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148803334, i64 2148803339, i64 2148803352, i64 2148803396, i64 2148803430, i64 2148803451}
!85 = !{!"auto-init"}
