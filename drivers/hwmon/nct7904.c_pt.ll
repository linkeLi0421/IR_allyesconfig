; ModuleID = '/llk/IR_all_yes/drivers/hwmon/nct7904.c_pt.bc'
source_filename = "../drivers/hwmon/nct7904.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.nct7904_data = type { ptr, %struct.watchdog_device, %struct.mutex, i32, i32, i32, i32, [4 x i8], i8, i8, i8, [2 x i8], [3 x i8] }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_timeout = internal constant [16 x i8] c"nct7904.timeout\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype288 = internal constant [29 x i8] c"nct7904.parmtype=timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout289 = internal constant [82 x i8] c"nct7904.parm=timeout:Watchdog timeout in minutes. 1 <= timeout <= 255, default=1.\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [17 x i8] c"nct7904.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype290 = internal constant [31 x i8] c"nct7904.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout291 = internal constant [74 x i8] c"nct7904.parm=nowayout:Watchdog cannot be stopped once started (default=1)\00", section ".modinfo", align 1
@__initcall__kmod_nct7904__304_1180_nct7904_driver_init6 = internal global ptr @nct7904_driver_init, section ".initcall6.init", align 4
@nct7904_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @nct7904_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nct7904_id, ptr @nct7904_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nct7904_driver_exit = internal global ptr @nct7904_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [55 x i8] c"nct7904.author=Vadim V. Vlasov <vvlasov@dev.rtsoft.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [53 x i8] c"nct7904.description=Hwmon driver for NUVOTON NCT7904\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [35 x i8] c"nct7904.file=drivers/hwmon/nct7904\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [20 x i8] c"nct7904.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nct7904\00", [24 x i8] zeroinitializer }, align 32
@nct7904_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nct7904\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 45, i16 46, i16 -2], [26 x i8] zeroinitializer }, align 32
@nct7904_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->bank_lock\00", [47 x i8] zeroinitializer }, align 32
@nct7904_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @nct7904_hwmon_ops, ptr @nct7904_info }, [24 x i8] zeroinitializer }, align 32
@nct7904_wdt_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @nct7904_wdt_start, ptr @nct7904_wdt_stop, ptr @nct7904_wdt_ping, ptr null, ptr @nct7904_wdt_set_timeout, ptr null, ptr @nct7904_wdt_get_timeleft, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nct7904_wdt_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"nct7904 watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [56 x i8] zeroinitializer }, align 32
@nct7904_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @nct7904_is_visible, ptr @nct7904_read, ptr null, ptr @nct7904_write }, [16 x i8] zeroinitializer }, align 32
@nct7904_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.2, ptr @.compoundliteral.4, ptr @.compoundliteral.6, ptr @.compoundliteral.8, ptr null], [44 x i8] zeroinitializer }, align 32
@nct7904_chan_to_index = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\12\13\14\10", [43 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [22 x i32], [40 x i8] } { [22 x i32] [i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 266, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.3 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 3, i32 3, i32 3, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.5 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 10118, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.7 }, [24 x i8] zeroinitializer }, align 32
@switch.table.nct7904_write = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6, i32 7, i32 4, i32 5], [16 x i8] zeroinitializer }, align 32
@switch.table.nct7904_write.9 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 146, i32 147, i32 144, i32 145], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 13]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8191]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8191]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 13]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 114, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"nowayout\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 119, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"nct7904_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1169, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1172, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"nct7904_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1163, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 124, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1026, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"nct7904_chip_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 918, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"nct7904_wdt_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1003, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"nct7904_wdt_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 997, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"nct7904_hwmon_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 912, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"nct7904_info\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 806, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"nct7904_chan_to_index\00", align 1
@___asan_gen_.67 = private constant [27 x i8] c"../drivers/hwmon/nct7904.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 293, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"switch.table.nct7904_write\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [29 x i8] c"switch.table.nct7904_write.9\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_nowayout291, ptr @__UNIQUE_ID_nowayouttype290, ptr @__UNIQUE_ID_timeout289, ptr @__UNIQUE_ID_timeouttype288, ptr @__exitcall_nct7904_driver_exit, ptr @__initcall__kmod_nct7904__304_1180_nct7904_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @nct7904_driver_exit, ptr @timeout, ptr @nowayout, ptr @nct7904_driver, ptr @.str, ptr @nct7904_id, ptr @normal_i2c, ptr @nct7904_probe.__key, ptr @.str.1, ptr @nct7904_chip_info, ptr @nct7904_wdt_ops, ptr @nct7904_wdt_info, ptr @nct7904_hwmon_ops, ptr @nct7904_info, ptr @nct7904_chan_to_index, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @switch.table.nct7904_write, ptr @switch.table.nct7904_write.9], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nowayout to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_wdt_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_wdt_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7904_chan_to_index to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nct7904_write to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nct7904_write.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nct7904_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nct7904_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @nct7904_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 232, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %bank_lock = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %bank_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @nct7904_probe.__key) #6
  %bank_sel = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bank_sel, align 4
  %call3 = tail call fastcc i32 @nct7904_read_reg16(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %shr419 = lshr i32 %call3, 8
  %and = shl i32 %call3, 8
  %shl = and i32 %and, 65280
  %or = or i32 %shl, %shr419
  %fanin_mask = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %fanin_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %fanin_mask, align 4
  %call6 = tail call fastcc i32 @nct7904_read_reg16(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 32)
  %shr9 = ashr i32 %call6, 8
  %and10 = shl i32 %call6, 8
  %shl11 = and i32 %and10, 65280
  %or12 = or i32 %shl11, %shr9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.inv = icmp slt i32 %call6, 0
  %mask.0 = select i1 %cmp7.inv, i32 0, i32 %or12
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %if.end5.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

if.end5.if.then.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %if.end5
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %9 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bank..i.i, ptr %bank_sel, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %if.end5.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 34) #6
  br label %nct7904_read_reg.exit

nct7904_read_reg.exit:                            ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  %shl17 = shl i32 %ret.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp15420 = icmp slt i32 %ret.0.i, 0
  %or18 = select i1 %cmp15420, i32 0, i32 %shl17
  %mask.1 = or i32 %or18, %mask.0
  %vsen_mask = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %vsen_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mask.1, ptr %vsen_mask, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %13 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i329 = icmp eq i32 %14, 0
  br i1 %cmp.i.i329, label %nct7904_read_reg.exit.if.then.i335_crit_edge, label %nct7904_bank_lock.exit.i333

nct7904_read_reg.exit.if.then.i335_crit_edge:     ; preds = %nct7904_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i335

nct7904_bank_lock.exit.i333:                      ; preds = %nct7904_read_reg.exit
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %call.i.i330 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i330)
  %cmp1.i.i331 = icmp eq i32 %call.i.i330, 0
  %not.cmp1.i.i331 = xor i1 %cmp1.i.i331, true
  %bank..i.i332 = sext i1 %not.cmp1.i.i331 to i32
  %17 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bank..i.i332, ptr %bank_sel, align 4
  br i1 %cmp1.i.i331, label %nct7904_bank_lock.exit.i333.if.then.i335_crit_edge, label %nct7904_bank_lock.exit.i333.nct7904_read_reg.exit337_crit_edge

nct7904_bank_lock.exit.i333.nct7904_read_reg.exit337_crit_edge: ; preds = %nct7904_bank_lock.exit.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit337

nct7904_bank_lock.exit.i333.if.then.i335_crit_edge: ; preds = %nct7904_bank_lock.exit.i333
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i335

if.then.i335:                                     ; preds = %nct7904_bank_lock.exit.i333.if.then.i335_crit_edge, %nct7904_read_reg.exit.if.then.i335_crit_edge
  %call2.i334 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 32) #6
  br label %nct7904_read_reg.exit337

nct7904_read_reg.exit337:                         ; preds = %if.then.i335, %nct7904_bank_lock.exit.i333.nct7904_read_reg.exit337_crit_edge
  %ret.0.i336 = phi i32 [ %call2.i334, %if.then.i335 ], [ %call.i.i330, %nct7904_bank_lock.exit.i333.nct7904_read_reg.exit337_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i336)
  %cmp21 = icmp slt i32 %ret.0.i336, 0
  br i1 %cmp21, label %nct7904_read_reg.exit337.cleanup_crit_edge, label %if.end23

nct7904_read_reg.exit337.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit337
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %nct7904_read_reg.exit337
  %and24 = and i32 %ret.0.i336, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and24)
  %cmp25 = icmp eq i32 %and24, 6
  br i1 %cmp25, label %if.then26, label %if.end23.if.end28_crit_edge

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %tcpu_mask = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %tcpu_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcpu_mask, align 4
  %or27 = or i32 %19, 1
  store i32 %or27, ptr %tcpu_mask, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %and29 = and i32 %ret.0.i336, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 24
  br i1 %cmp30, label %if.then31, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %tcpu_mask32 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %tcpu_mask32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcpu_mask32, align 4
  %or33 = or i32 %21, 2
  store i32 %or33, ptr %tcpu_mask32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end28.if.end34_crit_edge
  %and35 = and i32 %ret.0.i336, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %cmp36.not = icmp eq i32 %and35, 0
  br i1 %cmp36.not, label %if.end34.if.end40_crit_edge, label %if.then37

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %tcpu_mask38 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %22 = ptrtoint ptr %tcpu_mask38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tcpu_mask38, align 4
  %or39 = or i32 %23, 4
  store i32 %or39, ptr %tcpu_mask38, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end34.if.end40_crit_edge
  %and41 = and i32 %ret.0.i336, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %cmp42.not = icmp eq i32 %and41, 0
  br i1 %cmp42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %tcpu_mask44 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %tcpu_mask44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tcpu_mask44, align 4
  %or45 = or i32 %25, 8
  store i32 %or45, ptr %tcpu_mask44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %28 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i340 = icmp eq i32 %29, 0
  br i1 %cmp.i.i340, label %if.end46.if.then.i346_crit_edge, label %nct7904_bank_lock.exit.i344

if.end46.if.then.i346_crit_edge:                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i346

nct7904_bank_lock.exit.i344:                      ; preds = %if.end46
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %call.i.i341 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i341)
  %cmp1.i.i342 = icmp eq i32 %call.i.i341, 0
  %not.cmp1.i.i342 = xor i1 %cmp1.i.i342, true
  %bank..i.i343 = sext i1 %not.cmp1.i.i342 to i32
  %32 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %bank..i.i343, ptr %bank_sel, align 4
  br i1 %cmp1.i.i342, label %nct7904_bank_lock.exit.i344.if.then.i346_crit_edge, label %nct7904_bank_lock.exit.i344.nct7904_read_reg.exit348_crit_edge

nct7904_bank_lock.exit.i344.nct7904_read_reg.exit348_crit_edge: ; preds = %nct7904_bank_lock.exit.i344
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit348

nct7904_bank_lock.exit.i344.if.then.i346_crit_edge: ; preds = %nct7904_bank_lock.exit.i344
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i346

if.then.i346:                                     ; preds = %nct7904_bank_lock.exit.i344.if.then.i346_crit_edge, %if.end46.if.then.i346_crit_edge
  %call2.i345 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 34) #6
  br label %nct7904_read_reg.exit348

nct7904_read_reg.exit348:                         ; preds = %if.then.i346, %nct7904_bank_lock.exit.i344.nct7904_read_reg.exit348_crit_edge
  %ret.0.i347 = phi i32 [ %call2.i345, %if.then.i346 ], [ %call.i.i341, %nct7904_bank_lock.exit.i344.nct7904_read_reg.exit348_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i347)
  %cmp48 = icmp slt i32 %ret.0.i347, 0
  br i1 %cmp48, label %nct7904_read_reg.exit348.cleanup_crit_edge, label %if.end50

nct7904_read_reg.exit348.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit348
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %nct7904_read_reg.exit348
  %and51 = and i32 %ret.0.i347, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52.not = icmp eq i32 %and51, 0
  br i1 %cmp52.not, label %if.end50.if.end56_crit_edge, label %if.then53

if.end50.if.end56_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %tcpu_mask54 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %tcpu_mask54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tcpu_mask54, align 4
  %or55 = or i32 %34, 16
  store i32 %or55, ptr %tcpu_mask54, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end50.if.end56_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %37 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i351 = icmp eq i32 %38, 0
  br i1 %cmp.i.i351, label %if.end56.if.then.i357_crit_edge, label %nct7904_bank_lock.exit.i355

if.end56.if.then.i357_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i357

nct7904_bank_lock.exit.i355:                      ; preds = %if.end56
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i.i352 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i352)
  %cmp1.i.i353 = icmp eq i32 %call.i.i352, 0
  %not.cmp1.i.i353 = xor i1 %cmp1.i.i353, true
  %bank..i.i354 = sext i1 %not.cmp1.i.i353 to i32
  %41 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %bank..i.i354, ptr %bank_sel, align 4
  br i1 %cmp1.i.i353, label %nct7904_bank_lock.exit.i355.if.then.i357_crit_edge, label %nct7904_bank_lock.exit.i355.nct7904_read_reg.exit359_crit_edge

nct7904_bank_lock.exit.i355.nct7904_read_reg.exit359_crit_edge: ; preds = %nct7904_bank_lock.exit.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit359

nct7904_bank_lock.exit.i355.if.then.i357_crit_edge: ; preds = %nct7904_bank_lock.exit.i355
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i357

if.then.i357:                                     ; preds = %nct7904_bank_lock.exit.i355.if.then.i357_crit_edge, %if.end56.if.then.i357_crit_edge
  %call2.i356 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %36, i8 noundef zeroext 46) #6
  br label %nct7904_read_reg.exit359

nct7904_read_reg.exit359:                         ; preds = %if.then.i357, %nct7904_bank_lock.exit.i355.nct7904_read_reg.exit359_crit_edge
  %ret.0.i358 = phi i32 [ %call2.i356, %if.then.i357 ], [ %call.i.i352, %nct7904_bank_lock.exit.i355.nct7904_read_reg.exit359_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i358)
  %cmp58 = icmp slt i32 %ret.0.i358, 0
  br i1 %cmp58, label %nct7904_read_reg.exit359.cleanup_crit_edge, label %if.end60

nct7904_read_reg.exit359.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit359
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %nct7904_read_reg.exit359
  %temp_mode = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 10
  %42 = ptrtoint ptr %temp_mode to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %temp_mode, align 2
  %tcpu_mask71 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 6
  %conv = and i32 %ret.0.i358, 3
  %43 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.else99 [
    i32 0, label %if.end60.for.inc_crit_edge
    i32 1, label %if.then78
    i32 3, label %if.then93
  ]

if.end60.for.inc_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then78:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %temp_mode to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %temp_mode, align 2
  %conv83 = or i8 %45, 1
  store i8 %conv83, ptr %temp_mode, align 2
  br label %for.inc

if.then93:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else99:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %tcpu_mask71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tcpu_mask71, align 4
  %and103 = and i32 %47, -2
  store i32 %and103, ptr %tcpu_mask71, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else99, %if.then93, %if.then78, %if.end60.for.inc_crit_edge
  %tcpu_mask71.sink435 = phi ptr [ %vsen_mask, %if.then93 ], [ %vsen_mask, %if.else99 ], [ %vsen_mask, %if.then78 ], [ %tcpu_mask71, %if.end60.for.inc_crit_edge ]
  %.sink434 = phi i32 [ -3, %if.then93 ], [ -7, %if.else99 ], [ -7, %if.then78 ], [ -2, %if.end60.for.inc_crit_edge ]
  %48 = ptrtoint ptr %tcpu_mask71.sink435 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tcpu_mask71.sink435, align 4
  %and72 = and i32 %49, %.sink434
  store i32 %and72, ptr %tcpu_mask71.sink435, align 4
  %50 = lshr i32 %ret.0.i358, 2
  %conv.1 = and i32 %50, 3
  %51 = zext i32 %conv.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv.1, label %if.else99.1 [
    i32 0, label %if.then69.1
    i32 1, label %if.then78.1
    i32 3, label %for.inc.for.inc.1_crit_edge
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then78.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %temp_mode to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %temp_mode, align 2
  %conv83.1 = or i8 %53, 2
  store i8 %conv83.1, ptr %temp_mode, align 2
  br label %for.inc.1

if.then69.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.else99.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %tcpu_mask71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tcpu_mask71, align 4
  %and103.1 = and i32 %55, -3
  store i32 %and103.1, ptr %tcpu_mask71, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.else99.1, %if.then69.1, %if.then78.1, %for.inc.for.inc.1_crit_edge
  %vsen_mask.sink437 = phi ptr [ %vsen_mask, %if.else99.1 ], [ %tcpu_mask71, %if.then69.1 ], [ %vsen_mask, %if.then78.1 ], [ %vsen_mask, %for.inc.for.inc.1_crit_edge ]
  %.sink436 = phi i32 [ -25, %if.else99.1 ], [ -3, %if.then69.1 ], [ -25, %if.then78.1 ], [ -9, %for.inc.for.inc.1_crit_edge ]
  %56 = ptrtoint ptr %vsen_mask.sink437 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vsen_mask.sink437, align 4
  %and108.1 = and i32 %57, %.sink436
  store i32 %and108.1, ptr %vsen_mask.sink437, align 4
  %58 = lshr i32 %ret.0.i358, 4
  %conv.2 = and i32 %58, 3
  %59 = zext i32 %conv.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv.2, label %if.else99.2 [
    i32 0, label %if.then69.2
    i32 3, label %for.inc.1.for.inc.2_crit_edge
  ]

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then69.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.else99.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %tcpu_mask71 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tcpu_mask71, align 4
  %and103.2 = and i32 %61, -5
  store i32 %and103.2, ptr %tcpu_mask71, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.else99.2, %if.then69.2, %for.inc.1.for.inc.2_crit_edge
  %vsen_mask.sink440 = phi ptr [ %vsen_mask, %if.else99.2 ], [ %tcpu_mask71, %if.then69.2 ], [ %vsen_mask, %for.inc.1.for.inc.2_crit_edge ]
  %.sink439 = phi i32 [ -97, %if.else99.2 ], [ -5, %if.then69.2 ], [ -33, %for.inc.1.for.inc.2_crit_edge ]
  %62 = ptrtoint ptr %vsen_mask.sink440 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vsen_mask.sink440, align 4
  %and108.2 = and i32 %63, %.sink439
  store i32 %and108.2, ptr %vsen_mask.sink440, align 4
  %64 = lshr i32 %ret.0.i358, 6
  %conv.3 = and i32 %64, 3
  %65 = zext i32 %conv.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv.3, label %if.else99.3 [
    i32 0, label %if.then69.3
    i32 3, label %for.inc.2.for.inc.3_crit_edge
  ]

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then69.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.else99.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %tcpu_mask71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tcpu_mask71, align 4
  %and103.3 = and i32 %67, -9
  store i32 %and103.3, ptr %tcpu_mask71, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.else99.3, %if.then69.3, %for.inc.2.for.inc.3_crit_edge
  %vsen_mask.sink443 = phi ptr [ %vsen_mask, %if.else99.3 ], [ %tcpu_mask71, %if.then69.3 ], [ %vsen_mask, %for.inc.2.for.inc.3_crit_edge ]
  %.sink442 = phi i32 [ -385, %if.else99.3 ], [ -9, %if.then69.3 ], [ -129, %for.inc.2.for.inc.3_crit_edge ]
  %68 = ptrtoint ptr %vsen_mask.sink443 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vsen_mask.sink443, align 4
  %and108.3 = and i32 %69, %.sink442
  store i32 %and108.3, ptr %vsen_mask.sink443, align 4
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %72 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp.i.i362 = icmp eq i32 %73, 2
  br i1 %cmp.i.i362, label %for.inc.3.if.then.i368_crit_edge, label %nct7904_bank_lock.exit.i366

for.inc.3.if.then.i368_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i368

nct7904_bank_lock.exit.i366:                      ; preds = %for.inc.3
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  %call.i.i363 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %75, i8 noundef zeroext -1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i363)
  %cmp1.i.i364 = icmp eq i32 %call.i.i363, 0
  %bank..i.i365 = select i1 %cmp1.i.i364, i32 2, i32 -1
  %76 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %bank..i.i365, ptr %bank_sel, align 4
  br i1 %cmp1.i.i364, label %nct7904_bank_lock.exit.i366.if.then.i368_crit_edge, label %nct7904_bank_lock.exit.i366.nct7904_read_reg.exit370_crit_edge

nct7904_bank_lock.exit.i366.nct7904_read_reg.exit370_crit_edge: ; preds = %nct7904_bank_lock.exit.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit370

nct7904_bank_lock.exit.i366.if.then.i368_crit_edge: ; preds = %nct7904_bank_lock.exit.i366
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i368

if.then.i368:                                     ; preds = %nct7904_bank_lock.exit.i366.if.then.i368_crit_edge, %for.inc.3.if.then.i368_crit_edge
  %call2.i367 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext 0) #6
  br label %nct7904_read_reg.exit370

nct7904_read_reg.exit370:                         ; preds = %if.then.i368, %nct7904_bank_lock.exit.i366.nct7904_read_reg.exit370_crit_edge
  %ret.0.i369 = phi i32 [ %call2.i367, %if.then.i368 ], [ %call.i.i363, %nct7904_bank_lock.exit.i366.nct7904_read_reg.exit370_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i369)
  %cmp113 = icmp slt i32 %ret.0.i369, 0
  br i1 %cmp113, label %nct7904_read_reg.exit370.cleanup_crit_edge, label %if.end116

nct7904_read_reg.exit370.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit370
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end116:                                        ; preds = %nct7904_read_reg.exit370
  %and117 = and i32 %ret.0.i369, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.else120, label %if.end116.if.end131.sink.split_crit_edge

if.end116.if.end131.sink.split_crit_edge:         ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.sink.split

if.else120:                                       ; preds = %if.end116
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %79 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp.i.i373 = icmp eq i32 %80, 2
  br i1 %cmp.i.i373, label %if.else120.if.then.i379_crit_edge, label %nct7904_bank_lock.exit.i377

if.else120.if.then.i379_crit_edge:                ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i379

nct7904_bank_lock.exit.i377:                      ; preds = %if.else120
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %call.i.i374 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %82, i8 noundef zeroext -1, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i374)
  %cmp1.i.i375 = icmp eq i32 %call.i.i374, 0
  %bank..i.i376 = select i1 %cmp1.i.i375, i32 2, i32 -1
  %83 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %bank..i.i376, ptr %bank_sel, align 4
  br i1 %cmp1.i.i375, label %nct7904_bank_lock.exit.i377.if.then.i379_crit_edge, label %nct7904_bank_lock.exit.i377.nct7904_read_reg.exit381_crit_edge

nct7904_bank_lock.exit.i377.nct7904_read_reg.exit381_crit_edge: ; preds = %nct7904_bank_lock.exit.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit381

nct7904_bank_lock.exit.i377.if.then.i379_crit_edge: ; preds = %nct7904_bank_lock.exit.i377
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i379

if.then.i379:                                     ; preds = %nct7904_bank_lock.exit.i377.if.then.i379_crit_edge, %if.else120.if.then.i379_crit_edge
  %call2.i378 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %78, i8 noundef zeroext 80) #6
  br label %nct7904_read_reg.exit381

nct7904_read_reg.exit381:                         ; preds = %if.then.i379, %nct7904_bank_lock.exit.i377.nct7904_read_reg.exit381_crit_edge
  %ret.0.i380 = phi i32 [ %call2.i378, %if.then.i379 ], [ %call.i.i374, %nct7904_bank_lock.exit.i377.nct7904_read_reg.exit381_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i380)
  %cmp122 = icmp slt i32 %ret.0.i380, 0
  br i1 %cmp122, label %nct7904_read_reg.exit381.cleanup_crit_edge, label %if.end125

nct7904_read_reg.exit381.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit381
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end125:                                        ; preds = %nct7904_read_reg.exit381
  %and126 = and i32 %ret.0.i380, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  br i1 %tobool127.not, label %if.end125.if.end131_crit_edge, label %if.end125.if.end131.sink.split_crit_edge

if.end125.if.end131.sink.split_crit_edge:         ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131.sink.split

if.end125.if.end131_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end131

if.end131.sink.split:                             ; preds = %if.end125.if.end131.sink.split_crit_edge, %if.end116.if.end131.sink.split_crit_edge
  %.sink = phi i8 [ 1, %if.end116.if.end131.sink.split_crit_edge ], [ 3, %if.end125.if.end131.sink.split_crit_edge ]
  %enable_dts129 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 8
  %84 = ptrtoint ptr %enable_dts129 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %.sink, ptr %enable_dts129, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.end131.sink.split, %if.end125.if.end131_crit_edge
  %enable_dts132 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 8
  %85 = ptrtoint ptr %enable_dts132 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %enable_dts132, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool133.not = icmp eq i8 %86, 0
  br i1 %tobool133.not, label %if.end131.if.end159_crit_edge, label %if.then134

if.end131.if.end159_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then134:                                       ; preds = %if.end131
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %89 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.i.i384 = icmp eq i32 %90, 0
  br i1 %cmp.i.i384, label %if.then134.if.then.i390_crit_edge, label %nct7904_bank_lock.exit.i388

if.then134.if.then.i390_crit_edge:                ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i390

nct7904_bank_lock.exit.i388:                      ; preds = %if.then134
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %call.i, align 4
  %call.i.i385 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %92, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i385)
  %cmp1.i.i386 = icmp eq i32 %call.i.i385, 0
  %not.cmp1.i.i386 = xor i1 %cmp1.i.i386, true
  %bank..i.i387 = sext i1 %not.cmp1.i.i386 to i32
  %93 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %bank..i.i387, ptr %bank_sel, align 4
  br i1 %cmp1.i.i386, label %nct7904_bank_lock.exit.i388.if.then.i390_crit_edge, label %nct7904_bank_lock.exit.i388.nct7904_read_reg.exit392_crit_edge

nct7904_bank_lock.exit.i388.nct7904_read_reg.exit392_crit_edge: ; preds = %nct7904_bank_lock.exit.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit392

nct7904_bank_lock.exit.i388.if.then.i390_crit_edge: ; preds = %nct7904_bank_lock.exit.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i390

if.then.i390:                                     ; preds = %nct7904_bank_lock.exit.i388.if.then.i390_crit_edge, %if.then134.if.then.i390_crit_edge
  %call2.i389 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %88, i8 noundef zeroext 38) #6
  br label %nct7904_read_reg.exit392

nct7904_read_reg.exit392:                         ; preds = %if.then.i390, %nct7904_bank_lock.exit.i388.nct7904_read_reg.exit392_crit_edge
  %ret.0.i391 = phi i32 [ %call2.i389, %if.then.i390 ], [ %call.i.i385, %nct7904_bank_lock.exit.i388.nct7904_read_reg.exit392_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i391)
  %cmp136 = icmp slt i32 %ret.0.i391, 0
  br i1 %cmp136, label %nct7904_read_reg.exit392.cleanup_crit_edge, label %if.end139

nct7904_read_reg.exit392.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit392
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end139:                                        ; preds = %nct7904_read_reg.exit392
  %94 = trunc i32 %ret.0.i391 to i8
  %conv141 = and i8 %94, 15
  %has_dts = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 9
  %95 = ptrtoint ptr %has_dts to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv141, ptr %has_dts, align 1
  %96 = ptrtoint ptr %enable_dts132 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %enable_dts132, align 4
  %98 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool145.not = icmp eq i8 %98, 0
  br i1 %tobool145.not, label %if.end139.if.end159_crit_edge, label %if.then146

if.end139.if.end159_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end159

if.then146:                                       ; preds = %if.end139
  %call147 = tail call fastcc i32 @nct7904_read_reg(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then146.cleanup_crit_edge, label %if.end151

if.then146.cleanup_crit_edge:                     ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end151:                                        ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %has_dts to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %has_dts, align 1
  %call147.tr = trunc i32 %call147 to i8
  %101 = shl i8 %call147.tr, 4
  %conv157 = or i8 %100, %101
  store i8 %conv157, ptr %has_dts, align 1
  br label %if.end159

if.end159:                                        ; preds = %if.end151, %if.end139.if.end159_crit_edge, %if.end131.if.end159_crit_edge
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %104 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %105)
  %cmp.i.i395 = icmp eq i32 %105, 3
  br i1 %cmp.i.i395, label %if.end159.if.then.i401_crit_edge, label %nct7904_bank_lock.exit.i399

if.end159.if.then.i401_crit_edge:                 ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401

nct7904_bank_lock.exit.i399:                      ; preds = %if.end159
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  %call.i.i396 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %107, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i396)
  %cmp1.i.i397 = icmp eq i32 %call.i.i396, 0
  %bank..i.i398 = select i1 %cmp1.i.i397, i32 3, i32 -1
  %108 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %bank..i.i398, ptr %bank_sel, align 4
  br i1 %cmp1.i.i397, label %nct7904_bank_lock.exit.i399.if.then.i401_crit_edge, label %nct7904_bank_lock.exit.i399.nct7904_read_reg.exit403_crit_edge

nct7904_bank_lock.exit.i399.nct7904_read_reg.exit403_crit_edge: ; preds = %nct7904_bank_lock.exit.i399
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit403

nct7904_bank_lock.exit.i399.if.then.i401_crit_edge: ; preds = %nct7904_bank_lock.exit.i399
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401

if.then.i401:                                     ; preds = %nct7904_bank_lock.exit.i399.if.then.i401_crit_edge, %if.end159.if.then.i401_crit_edge
  %call2.i400 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %103, i8 noundef zeroext 0) #6
  br label %nct7904_read_reg.exit403

nct7904_read_reg.exit403:                         ; preds = %if.then.i401, %nct7904_bank_lock.exit.i399.nct7904_read_reg.exit403_crit_edge
  %ret.0.i402 = phi i32 [ %call2.i400, %if.then.i401 ], [ %call.i.i396, %nct7904_bank_lock.exit.i399.nct7904_read_reg.exit403_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i402)
  %cmp165 = icmp slt i32 %ret.0.i402, 0
  br i1 %cmp165, label %nct7904_read_reg.exit403.cleanup_crit_edge, label %if.end168

nct7904_read_reg.exit403.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit403
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end168:                                        ; preds = %nct7904_read_reg.exit403
  %conv169 = trunc i32 %ret.0.i402 to i8
  %arrayidx = getelementptr %struct.nct7904_data, ptr %call.i, i32 0, i32 7, i32 0
  %109 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv169, ptr %arrayidx, align 1
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %112 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp.i.i395.1 = icmp eq i32 %113, 3
  br i1 %cmp.i.i395.1, label %if.end168.if.then.i401.1_crit_edge, label %nct7904_bank_lock.exit.i399.1

if.end168.if.then.i401.1_crit_edge:               ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.1

nct7904_bank_lock.exit.i399.1:                    ; preds = %if.end168
  %114 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call.i, align 4
  %call.i.i396.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %115, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i396.1)
  %cmp1.i.i397.1 = icmp eq i32 %call.i.i396.1, 0
  %bank..i.i398.1 = select i1 %cmp1.i.i397.1, i32 3, i32 -1
  %116 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bank..i.i398.1, ptr %bank_sel, align 4
  br i1 %cmp1.i.i397.1, label %nct7904_bank_lock.exit.i399.1.if.then.i401.1_crit_edge, label %nct7904_bank_lock.exit.i399.1.nct7904_read_reg.exit403.1_crit_edge

nct7904_bank_lock.exit.i399.1.nct7904_read_reg.exit403.1_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit403.1

nct7904_bank_lock.exit.i399.1.if.then.i401.1_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.1

if.then.i401.1:                                   ; preds = %nct7904_bank_lock.exit.i399.1.if.then.i401.1_crit_edge, %if.end168.if.then.i401.1_crit_edge
  %call2.i400.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %111, i8 noundef zeroext 1) #6
  br label %nct7904_read_reg.exit403.1

nct7904_read_reg.exit403.1:                       ; preds = %if.then.i401.1, %nct7904_bank_lock.exit.i399.1.nct7904_read_reg.exit403.1_crit_edge
  %ret.0.i402.1 = phi i32 [ %call2.i400.1, %if.then.i401.1 ], [ %call.i.i396.1, %nct7904_bank_lock.exit.i399.1.nct7904_read_reg.exit403.1_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i402.1)
  %cmp165.1 = icmp slt i32 %ret.0.i402.1, 0
  br i1 %cmp165.1, label %nct7904_read_reg.exit403.1.cleanup_crit_edge, label %if.end168.1

nct7904_read_reg.exit403.1.cleanup_crit_edge:     ; preds = %nct7904_read_reg.exit403.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end168.1:                                      ; preds = %nct7904_read_reg.exit403.1
  %conv169.1 = trunc i32 %ret.0.i402.1 to i8
  %arrayidx.1 = getelementptr %struct.nct7904_data, ptr %call.i, i32 0, i32 7, i32 1
  %117 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv169.1, ptr %arrayidx.1, align 1
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %120 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %121)
  %cmp.i.i395.2 = icmp eq i32 %121, 3
  br i1 %cmp.i.i395.2, label %if.end168.1.if.then.i401.2_crit_edge, label %nct7904_bank_lock.exit.i399.2

if.end168.1.if.then.i401.2_crit_edge:             ; preds = %if.end168.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.2

nct7904_bank_lock.exit.i399.2:                    ; preds = %if.end168.1
  %122 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %call.i, align 4
  %call.i.i396.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %123, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i396.2)
  %cmp1.i.i397.2 = icmp eq i32 %call.i.i396.2, 0
  %bank..i.i398.2 = select i1 %cmp1.i.i397.2, i32 3, i32 -1
  %124 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %bank..i.i398.2, ptr %bank_sel, align 4
  br i1 %cmp1.i.i397.2, label %nct7904_bank_lock.exit.i399.2.if.then.i401.2_crit_edge, label %nct7904_bank_lock.exit.i399.2.nct7904_read_reg.exit403.2_crit_edge

nct7904_bank_lock.exit.i399.2.nct7904_read_reg.exit403.2_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit403.2

nct7904_bank_lock.exit.i399.2.if.then.i401.2_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.2

if.then.i401.2:                                   ; preds = %nct7904_bank_lock.exit.i399.2.if.then.i401.2_crit_edge, %if.end168.1.if.then.i401.2_crit_edge
  %call2.i400.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %119, i8 noundef zeroext 2) #6
  br label %nct7904_read_reg.exit403.2

nct7904_read_reg.exit403.2:                       ; preds = %if.then.i401.2, %nct7904_bank_lock.exit.i399.2.nct7904_read_reg.exit403.2_crit_edge
  %ret.0.i402.2 = phi i32 [ %call2.i400.2, %if.then.i401.2 ], [ %call.i.i396.2, %nct7904_bank_lock.exit.i399.2.nct7904_read_reg.exit403.2_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i402.2)
  %cmp165.2 = icmp slt i32 %ret.0.i402.2, 0
  br i1 %cmp165.2, label %nct7904_read_reg.exit403.2.cleanup_crit_edge, label %if.end168.2

nct7904_read_reg.exit403.2.cleanup_crit_edge:     ; preds = %nct7904_read_reg.exit403.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end168.2:                                      ; preds = %nct7904_read_reg.exit403.2
  %conv169.2 = trunc i32 %ret.0.i402.2 to i8
  %arrayidx.2 = getelementptr %struct.nct7904_data, ptr %call.i, i32 0, i32 7, i32 2
  %125 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv169.2, ptr %arrayidx.2, align 1
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %128 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp.i.i395.3 = icmp eq i32 %129, 3
  br i1 %cmp.i.i395.3, label %if.end168.2.if.then.i401.3_crit_edge, label %nct7904_bank_lock.exit.i399.3

if.end168.2.if.then.i401.3_crit_edge:             ; preds = %if.end168.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.3

nct7904_bank_lock.exit.i399.3:                    ; preds = %if.end168.2
  %130 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %call.i, align 4
  %call.i.i396.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %131, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i396.3)
  %cmp1.i.i397.3 = icmp eq i32 %call.i.i396.3, 0
  %bank..i.i398.3 = select i1 %cmp1.i.i397.3, i32 3, i32 -1
  %132 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %bank..i.i398.3, ptr %bank_sel, align 4
  br i1 %cmp1.i.i397.3, label %nct7904_bank_lock.exit.i399.3.if.then.i401.3_crit_edge, label %nct7904_bank_lock.exit.i399.3.nct7904_read_reg.exit403.3_crit_edge

nct7904_bank_lock.exit.i399.3.nct7904_read_reg.exit403.3_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit403.3

nct7904_bank_lock.exit.i399.3.if.then.i401.3_crit_edge: ; preds = %nct7904_bank_lock.exit.i399.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i401.3

if.then.i401.3:                                   ; preds = %nct7904_bank_lock.exit.i399.3.if.then.i401.3_crit_edge, %if.end168.2.if.then.i401.3_crit_edge
  %call2.i400.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %127, i8 noundef zeroext 3) #6
  br label %nct7904_read_reg.exit403.3

nct7904_read_reg.exit403.3:                       ; preds = %if.then.i401.3, %nct7904_bank_lock.exit.i399.3.nct7904_read_reg.exit403.3_crit_edge
  %ret.0.i402.3 = phi i32 [ %call2.i400.3, %if.then.i401.3 ], [ %call.i.i396.3, %nct7904_bank_lock.exit.i399.3.nct7904_read_reg.exit403.3_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i402.3)
  %cmp165.3 = icmp slt i32 %ret.0.i402.3, 0
  br i1 %cmp165.3, label %nct7904_read_reg.exit403.3.cleanup_crit_edge, label %if.end168.3

nct7904_read_reg.exit403.3.cleanup_crit_edge:     ; preds = %nct7904_read_reg.exit403.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end168.3:                                      ; preds = %nct7904_read_reg.exit403.3
  %conv169.3 = trunc i32 %ret.0.i402.3 to i8
  %arrayidx.3 = getelementptr %struct.nct7904_data, ptr %call.i, i32 0, i32 7, i32 3
  %133 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %conv169.3, ptr %arrayidx.3, align 1
  br label %for.body176

for.cond173:                                      ; preds = %nct7904_read_reg.exit415
  %inc184 = add nuw nsw i32 %i.2428, 1
  %exitcond.not = icmp eq i32 %inc184, 10
  br i1 %exitcond.not, label %for.end185, label %for.cond173.for.body176_crit_edge

for.cond173.for.body176_crit_edge:                ; preds = %for.cond173
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body176

for.body176:                                      ; preds = %for.cond173.for.body176_crit_edge, %if.end168.3
  %i.2428 = phi i32 [ %inc184, %for.cond173.for.body176_crit_edge ], [ 0, %if.end168.3 ]
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock, i32 noundef 0) #6
  %136 = ptrtoint ptr %bank_sel to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %bank_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp.i.i406 = icmp eq i32 %137, 0
  br i1 %cmp.i.i406, label %for.body176.if.then.i413_crit_edge, label %nct7904_bank_lock.exit.i410

for.body176.if.then.i413_crit_edge:               ; preds = %for.body176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i413

nct7904_bank_lock.exit.i410:                      ; preds = %for.body176
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call.i, align 4
  %call.i.i407 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %139, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i407)
  %cmp1.i.i408 = icmp eq i32 %call.i.i407, 0
  %not.cmp1.i.i408 = xor i1 %cmp1.i.i408, true
  %bank..i.i409 = sext i1 %not.cmp1.i.i408 to i32
  %140 = ptrtoint ptr %bank_sel to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %bank..i.i409, ptr %bank_sel, align 4
  br i1 %cmp1.i.i408, label %nct7904_bank_lock.exit.i410.if.then.i413_crit_edge, label %nct7904_bank_lock.exit.i410.nct7904_read_reg.exit415_crit_edge

nct7904_bank_lock.exit.i410.nct7904_read_reg.exit415_crit_edge: ; preds = %nct7904_bank_lock.exit.i410
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit415

nct7904_bank_lock.exit.i410.if.then.i413_crit_edge: ; preds = %nct7904_bank_lock.exit.i410
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i413

if.then.i413:                                     ; preds = %nct7904_bank_lock.exit.i410.if.then.i413_crit_edge, %for.body176.if.then.i413_crit_edge
  %141 = trunc i32 %i.2428 to i8
  %conv.i411 = add i8 %141, -63
  %call2.i412 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %135, i8 noundef zeroext %conv.i411) #6
  br label %nct7904_read_reg.exit415

nct7904_read_reg.exit415:                         ; preds = %if.then.i413, %nct7904_bank_lock.exit.i410.nct7904_read_reg.exit415_crit_edge
  %ret.0.i414 = phi i32 [ %call2.i412, %if.then.i413 ], [ %call.i.i407, %nct7904_bank_lock.exit.i410.nct7904_read_reg.exit415_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i414)
  %cmp179 = icmp slt i32 %ret.0.i414, 0
  br i1 %cmp179, label %nct7904_read_reg.exit415.cleanup_crit_edge, label %for.cond173

nct7904_read_reg.exit415.cleanup_crit_edge:       ; preds = %nct7904_read_reg.exit415
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end185:                                       ; preds = %for.cond173
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call186 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @nct7904_chip_info, ptr noundef null) #6
  %cmp.i.i416.not = icmp ugt ptr %call186, inttoptr (i32 -4096 to ptr)
  %142 = ptrtoint ptr %call186 to i32
  br i1 %cmp.i.i416.not, label %for.end185.cleanup_crit_edge, label %if.end190

for.end185.cleanup_crit_edge:                     ; preds = %for.end185
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end190:                                        ; preds = %for.end185
  %wdt = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1
  %ops = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 4
  %143 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @nct7904_wdt_ops, ptr %ops, align 4
  %info = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 3
  %144 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @nct7904_wdt_info, ptr %info, align 4
  %timeout = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 7
  %145 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 60, ptr %timeout, align 4
  %min_timeout = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 9
  %146 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 60, ptr %min_timeout, align 4
  %max_timeout = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 10
  %147 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 15300, ptr %max_timeout, align 4
  %parent = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 1
  %148 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %dev1, ptr %parent, align 4
  %149 = load i32, ptr @timeout, align 4
  %mul198 = mul i32 %149, 60
  %call200 = tail call i32 @watchdog_init_timeout(ptr noundef %wdt, i32 noundef %mul198, ptr noundef %dev1) #6
  %150 = load i8, ptr @nowayout, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool202.not = icmp eq i8 %150, 0
  br i1 %tobool202.not, label %if.end190.watchdog_set_nowayout.exit_crit_edge, label %if.then.i417

if.end190.watchdog_set_nowayout.exit_crit_edge:   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %watchdog_set_nowayout.exit

if.then.i417:                                     ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #8
  %status.i = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %status.i) #6
  br label %watchdog_set_nowayout.exit

watchdog_set_nowayout.exit:                       ; preds = %if.then.i417, %if.end190.watchdog_set_nowayout.exit_crit_edge
  %driver_data.i = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 16
  %151 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i, ptr %driver_data.i, align 4
  %status.i418 = getelementptr inbounds %struct.nct7904_data, ptr %call.i, i32 0, i32 1, i32 18
  tail call void @_set_bit(i32 noundef 4, ptr noundef %status.i418) #6
  %call206 = tail call i32 @devm_watchdog_register_device(ptr noundef %dev1, ptr noundef %wdt) #6
  br label %cleanup

cleanup:                                          ; preds = %watchdog_set_nowayout.exit, %for.end185.cleanup_crit_edge, %nct7904_read_reg.exit415.cleanup_crit_edge, %nct7904_read_reg.exit403.3.cleanup_crit_edge, %nct7904_read_reg.exit403.2.cleanup_crit_edge, %nct7904_read_reg.exit403.1.cleanup_crit_edge, %nct7904_read_reg.exit403.cleanup_crit_edge, %if.then146.cleanup_crit_edge, %nct7904_read_reg.exit392.cleanup_crit_edge, %nct7904_read_reg.exit381.cleanup_crit_edge, %nct7904_read_reg.exit370.cleanup_crit_edge, %nct7904_read_reg.exit359.cleanup_crit_edge, %nct7904_read_reg.exit348.cleanup_crit_edge, %nct7904_read_reg.exit337.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call206, %watchdog_set_nowayout.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %ret.0.i336, %nct7904_read_reg.exit337.cleanup_crit_edge ], [ %ret.0.i347, %nct7904_read_reg.exit348.cleanup_crit_edge ], [ %ret.0.i358, %nct7904_read_reg.exit359.cleanup_crit_edge ], [ %ret.0.i369, %nct7904_read_reg.exit370.cleanup_crit_edge ], [ %ret.0.i380, %nct7904_read_reg.exit381.cleanup_crit_edge ], [ %ret.0.i391, %nct7904_read_reg.exit392.cleanup_crit_edge ], [ %call147, %if.then146.cleanup_crit_edge ], [ %142, %for.end185.cleanup_crit_edge ], [ %ret.0.i402, %nct7904_read_reg.exit403.cleanup_crit_edge ], [ %ret.0.i402.1, %nct7904_read_reg.exit403.1.cleanup_crit_edge ], [ %ret.0.i402.2, %nct7904_read_reg.exit403.2.cleanup_crit_edge ], [ %ret.0.i402.3, %nct7904_read_reg.exit403.3.cleanup_crit_edge ], [ %ret.0.i414, %nct7904_read_reg.exit415.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1179648
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1179648
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 122) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 80
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 197, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 197
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 124) #6
  %and = and i32 %call6, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and)
  %cmp7.not = icmp eq i32 %and, 80
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #6
  %and10 = and i32 %call9, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11.not = icmp eq i32 %and10, 0
  br i1 %cmp11.not, label %if.end13, label %lor.lhs.false8.cleanup_crit_edge

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false8.cleanup_crit_edge ], [ -19, %lor.lhs.false5.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nct7904_read_reg16(ptr noundef %data, i32 noundef %bank, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bank_lock.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i, i32 noundef 0) #6
  %bank_sel.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %bank_sel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_sel.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bank)
  %cmp.i = icmp eq i32 %3, %bank
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %nct7904_bank_lock.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

nct7904_bank_lock.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %conv.i = trunc i32 %bank to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  %bank..i = select i1 %cmp1.i, i32 %bank, i32 -1
  %6 = ptrtoint ptr %bank_sel.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bank..i, ptr %bank_sel.i, align 4
  br i1 %cmp1.i, label %nct7904_bank_lock.exit.if.then_crit_edge, label %nct7904_bank_lock.exit.if.end12_crit_edge

nct7904_bank_lock.exit.if.end12_crit_edge:        ; preds = %nct7904_bank_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

nct7904_bank_lock.exit.if.then_crit_edge:         ; preds = %nct7904_bank_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %nct7904_bank_lock.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %conv = trunc i32 %reg to i8
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %if.then5, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5:                                         ; preds = %if.then
  %conv6 = add i8 %conv, 1
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  br i1 %cmp8, label %if.then10, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl i32 %call2, 8
  %or = or i32 %call7, %shl
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then5.if.end12_crit_edge, %if.then.if.end12_crit_edge, %nct7904_bank_lock.exit.if.end12_crit_edge
  %ret.0 = phi i32 [ %or, %if.then10 ], [ %call7, %if.then5.if.end12_crit_edge ], [ %call2, %if.then.if.end12_crit_edge ], [ %call.i, %nct7904_bank_lock.exit.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nct7904_read_reg(ptr noundef %data, i32 noundef %bank, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bank_lock.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i, i32 noundef 0) #6
  %bank_sel.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %bank_sel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bank_sel.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bank)
  %cmp.i = icmp eq i32 %3, %bank
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %nct7904_bank_lock.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

nct7904_bank_lock.exit:                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %conv.i = trunc i32 %bank to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -1, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  %bank..i = select i1 %cmp1.i, i32 %bank, i32 -1
  %6 = ptrtoint ptr %bank_sel.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bank..i, ptr %bank_sel.i, align 4
  br i1 %cmp1.i, label %nct7904_bank_lock.exit.if.then_crit_edge, label %nct7904_bank_lock.exit.if.end_crit_edge

nct7904_bank_lock.exit.if.end_crit_edge:          ; preds = %nct7904_bank_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

nct7904_bank_lock.exit.if.then_crit_edge:         ; preds = %nct7904_bank_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %nct7904_bank_lock.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %conv = trunc i32 %reg to i8
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %nct7904_bank_lock.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call.i, %nct7904_bank_lock.exit.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @nct7904_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %arrayidx.i = getelementptr [21 x i8], ptr @nct7904_chan_to_index, i32 0, i32 %channel
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %2 to i32
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %attr, label %sw.bb.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.sw.bb.i_crit_edge
    i32 11, label %sw.bb.sw.bb.i_crit_edge30
    i32 2, label %sw.bb.sw.bb2.i_crit_edge
    i32 3, label %sw.bb.sw.bb2.i_crit_edge31
  ]

sw.bb.sw.bb2.i_crit_edge31:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb.sw.bb2.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb.sw.bb.i_crit_edge30:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %vsen_mask.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %vsen_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsen_mask.i, align 4
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.sw.epilog.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i.sw.epilog.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %sw.bb.sw.bb2.i_crit_edge, %sw.bb.sw.bb2.i_crit_edge31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp3.i = icmp sgt i32 %channel, 0
  br i1 %cmp3.i, label %land.lhs.true5.i, label %sw.bb2.i.sw.epilog.i_crit_edge

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

land.lhs.true5.i:                                 ; preds = %sw.bb2.i
  %vsen_mask6.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 5
  %6 = ptrtoint ptr %vsen_mask6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsen_mask6.i, align 4
  %shl7.i = shl nuw i32 1, %conv.i
  %and8.i = and i32 %7, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.sw.epilog.i_crit_edge, label %land.lhs.true5.i.return_crit_edge

land.lhs.true5.i.return_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true5.i.sw.epilog.i_crit_edge:           ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %land.lhs.true5.i.sw.epilog.i_crit_edge, %sw.bb2.i.sw.epilog.i_crit_edge, %land.lhs.true.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %sw.bb.sw.epilog.i_crit_edge
  br label %return

sw.bb1:                                           ; preds = %entry
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %sw.bb1.sw.epilog.i20_crit_edge [
    i32 1, label %sw.bb1.sw.bb.i19_crit_edge
    i32 8, label %sw.bb1.sw.bb.i19_crit_edge32
    i32 3, label %sw.bb1.i
  ]

sw.bb1.sw.bb.i19_crit_edge32:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i19

sw.bb1.sw.bb.i19_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i19

sw.bb1.sw.epilog.i20_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i20

sw.bb.i19:                                        ; preds = %sw.bb1.sw.bb.i19_crit_edge, %sw.bb1.sw.bb.i19_crit_edge32
  %fanin_mask.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %fanin_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fanin_mask.i, align 4
  %shl.i16 = shl nuw i32 1, %channel
  %and.i17 = and i32 %10, %shl.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %sw.bb.i19.sw.epilog.i20_crit_edge, label %sw.bb.i19.return_crit_edge

sw.bb.i19.return_crit_edge:                       ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i19.sw.epilog.i20_crit_edge:                ; preds = %sw.bb.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i20

sw.bb1.i:                                         ; preds = %sw.bb1
  %fanin_mask2.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %fanin_mask2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fanin_mask2.i, align 4
  %shl3.i = shl nuw i32 1, %channel
  %and4.i = and i32 %12, %shl3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %sw.bb1.i.sw.epilog.i20_crit_edge, label %sw.bb1.i.return_crit_edge

sw.bb1.i.return_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb1.i.sw.epilog.i20_crit_edge:                 ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i20

sw.epilog.i20:                                    ; preds = %sw.bb1.i.sw.epilog.i20_crit_edge, %sw.bb.i19.sw.epilog.i20_crit_edge, %sw.bb1.sw.epilog.i20_crit_edge
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch.i = icmp ult i32 %attr, 2
  %..i = select i1 %switch.i, i16 420, i16 0
  br label %return

sw.bb5:                                           ; preds = %entry
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %attr, label %sw.bb5.sw.epilog.i28_crit_edge [
    i32 1, label %sw.bb5.sw.bb.i23_crit_edge
    i32 13, label %sw.bb5.sw.bb.i23_crit_edge33
    i32 2, label %sw.bb5.sw.bb.i23_crit_edge34
    i32 7, label %sw.bb5.sw.bb8.i_crit_edge
    i32 8, label %sw.bb5.sw.bb8.i_crit_edge35
    i32 9, label %sw.bb5.sw.bb8.i_crit_edge36
    i32 10, label %sw.bb5.sw.bb8.i_crit_edge37
  ]

sw.bb5.sw.bb8.i_crit_edge37:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb5.sw.bb8.i_crit_edge36:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb5.sw.bb8.i_crit_edge35:                      ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb5.sw.bb8.i_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8.i

sw.bb5.sw.bb.i23_crit_edge34:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i23

sw.bb5.sw.bb.i23_crit_edge33:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i23

sw.bb5.sw.bb.i23_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i23

sw.bb5.sw.epilog.i28_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i28

sw.bb.i23:                                        ; preds = %sw.bb5.sw.bb.i23_crit_edge, %sw.bb5.sw.bb.i23_crit_edge33, %sw.bb5.sw.bb.i23_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp.i22 = icmp slt i32 %channel, 5
  br i1 %cmp.i22, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i23
  %tcpu_mask.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 6
  %14 = ptrtoint ptr %tcpu_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcpu_mask.i, align 4
  %shl.i24 = shl nuw nsw i32 1, %channel
  %and.i25 = and i32 %15, %shl.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.then.i.sw.epilog.i28_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then.i.sw.epilog.i28_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i28

if.else.i:                                        ; preds = %sw.bb.i23
  %has_dts.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 9
  %16 = ptrtoint ptr %has_dts.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_dts.i, align 1
  %conv.i27 = zext i8 %17 to i32
  %sub.i = add nsw i32 %channel, -5
  %shl2.i = shl nuw i32 1, %sub.i
  %and3.i = and i32 %shl2.i, %conv.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i.sw.epilog.i28_crit_edge, label %if.else.i.return_crit_edge

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else.i.sw.epilog.i28_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i28

sw.bb8.i:                                         ; preds = %sw.bb5.sw.bb8.i_crit_edge, %sw.bb5.sw.bb8.i_crit_edge35, %sw.bb5.sw.bb8.i_crit_edge36, %sw.bb5.sw.bb8.i_crit_edge37
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp9.i = icmp slt i32 %channel, 5
  br i1 %cmp9.i, label %if.then11.i, label %if.else18.i

if.then11.i:                                      ; preds = %sw.bb8.i
  %tcpu_mask12.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 6
  %18 = ptrtoint ptr %tcpu_mask12.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcpu_mask12.i, align 4
  %shl13.i = shl nuw nsw i32 1, %channel
  %and14.i = and i32 %19, %shl13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then11.i.sw.epilog.i28_crit_edge, label %if.then11.i.return_crit_edge

if.then11.i.return_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then11.i.sw.epilog.i28_crit_edge:              ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i28

if.else18.i:                                      ; preds = %sw.bb8.i
  %has_dts19.i = getelementptr inbounds %struct.nct7904_data, ptr %data, i32 0, i32 9
  %20 = ptrtoint ptr %has_dts19.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_dts19.i, align 1
  %conv20.i = zext i8 %21 to i32
  %sub21.i = add nsw i32 %channel, -5
  %shl22.i = shl nuw i32 1, %sub21.i
  %and23.i = and i32 %shl22.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.else18.i.sw.epilog.i28_crit_edge, label %if.else18.i.return_crit_edge

if.else18.i.return_crit_edge:                     ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else18.i.sw.epilog.i28_crit_edge:              ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i28

sw.epilog.i28:                                    ; preds = %if.else18.i.sw.epilog.i28_crit_edge, %if.then11.i.sw.epilog.i28_crit_edge, %if.else.i.sw.epilog.i28_crit_edge, %if.then.i.sw.epilog.i28_crit_edge, %sw.bb5.sw.epilog.i28_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog.i28, %if.else18.i.return_crit_edge, %if.then11.i.return_crit_edge, %if.else.i.return_crit_edge, %if.then.i.return_crit_edge, %sw.bb3, %sw.epilog.i20, %sw.bb1.i.return_crit_edge, %sw.bb.i19.return_crit_edge, %sw.epilog.i, %land.lhs.true5.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %..i, %sw.bb3 ], [ 0, %entry.return_crit_edge ], [ 0, %sw.epilog.i ], [ 292, %land.lhs.true.i.return_crit_edge ], [ 420, %land.lhs.true5.i.return_crit_edge ], [ 0, %sw.epilog.i20 ], [ 292, %sw.bb.i19.return_crit_edge ], [ 420, %sw.bb1.i.return_crit_edge ], [ 0, %sw.epilog.i28 ], [ 292, %if.then.i.return_crit_edge ], [ 292, %if.else.i.return_crit_edge ], [ 420, %if.then11.i.return_crit_edge ], [ 420, %if.else18.i.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr [21 x i8], ptr @nct7904_chan_to_index, i32 0, i32 %channel
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb29.i
    i32 11, label %sw.bb48.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %add.i = add nuw nsw i32 %mul.i, 64
  %call1.i = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %2, i32 noundef 0, i32 noundef %add.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.i.return_crit_edge, label %if.end.i

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i = lshr i32 %call1.i, 5
  %6 = and i32 %and.i, 2040
  %and3.i = and i32 %call1.i, 7
  %or.i = or i32 %6, %and3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp4.i = icmp ult i32 %channel, 15
  %mul7.i = shl nuw nsw i32 %or.i, 1
  %mul8.i = mul nuw nsw i32 %or.i, 6
  %volt.0.i = select i1 %cmp4.i, i32 %mul7.i, i32 %mul8.i
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %volt.0.i, ptr %val, align 4
  br label %return

sw.bb10.i:                                        ; preds = %sw.bb
  %mul11.i = shl nuw nsw i32 %conv.i, 2
  %add12.i = or i32 %mul11.i, 2
  %call13.i = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %2, i32 noundef 1, i32 noundef %add12.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %sw.bb10.i.return_crit_edge, label %if.end17.i

sw.bb10.i.return_crit_edge:                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end17.i:                                       ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #8
  %and18.i = lshr i32 %call13.i, 5
  %8 = and i32 %and18.i, 2040
  %and20.i = and i32 %call13.i, 7
  %or21.i = or i32 %8, %and20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp22.i = icmp ult i32 %channel, 15
  %mul25.i = shl nuw nsw i32 %or21.i, 1
  %mul27.i = mul nuw nsw i32 %or21.i, 6
  %volt.1.i = select i1 %cmp22.i, i32 %mul25.i, i32 %mul27.i
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %volt.1.i, ptr %val, align 4
  br label %return

sw.bb29.i:                                        ; preds = %sw.bb
  %mul30.i = shl nuw nsw i32 %conv.i, 2
  %call32.i = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %2, i32 noundef 1, i32 noundef %mul30.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %sw.bb29.i.return_crit_edge, label %if.end36.i

sw.bb29.i.return_crit_edge:                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end36.i:                                       ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #8
  %and37.i = lshr i32 %call32.i, 5
  %10 = and i32 %and37.i, 2040
  %and39.i = and i32 %call32.i, 7
  %or40.i = or i32 %10, %and39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp41.i = icmp ult i32 %channel, 15
  %mul44.i = shl nuw nsw i32 %or40.i, 1
  %mul46.i = mul nuw nsw i32 %or40.i, 6
  %volt.2.i = select i1 %cmp41.i, i32 %mul44.i, i32 %mul46.i
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %volt.2.i, ptr %val, align 4
  br label %return

sw.bb48.i:                                        ; preds = %sw.bb
  %12 = lshr i32 %conv.i, 3
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %bank_lock.i.i.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i, i32 noundef 0) #6
  %bank_sel.i.i.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 3
  %15 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bank_sel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i.i.i = icmp eq i32 %16, 0
  br i1 %cmp.i.i.i, label %sw.bb48.i.if.then.i.i_crit_edge, label %nct7904_bank_lock.exit.i.i

sw.bb48.i.if.then.i.i_crit_edge:                  ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

nct7904_bank_lock.exit.i.i:                       ; preds = %sw.bb48.i
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 0
  %not.cmp1.i.i.i = xor i1 %cmp1.i.i.i, true
  %bank..i.i.i = sext i1 %not.cmp1.i.i.i to i32
  %19 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %bank..i.i.i, ptr %bank_sel.i.i.i, align 4
  br i1 %cmp1.i.i.i, label %nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge, label %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge

nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit.i

nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge, %sw.bb48.i.if.then.i.i_crit_edge
  %20 = trunc i32 %12 to i8
  %conv.i.i = add nuw nsw i8 %20, -63
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext %conv.i.i) #6
  br label %nct7904_read_reg.exit.i

nct7904_read_reg.exit.i:                          ; preds = %if.then.i.i, %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ %call.i.i.i, %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp52.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp52.i, label %nct7904_read_reg.exit.i.return_crit_edge, label %if.end55.i

nct7904_read_reg.exit.i.return_crit_edge:         ; preds = %nct7904_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end55.i:                                       ; preds = %nct7904_read_reg.exit.i
  %arrayidx57.i = getelementptr %struct.nct7904_data, ptr %2, i32 0, i32 12, i32 %12
  %21 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx57.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  %and65.i = and i32 %ret.0.i.i, 255
  %conv69.i = zext i8 %22 to i32
  %or70.i = or i32 %and65.i, %conv69.i
  %storemerge.in.i = select i1 %tobool.not.i, i32 %ret.0.i.i, i32 %or70.i
  %storemerge.i = trunc i32 %storemerge.in.i to i8
  %23 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge.i, ptr %arrayidx57.i, align 1
  %conv76.i = and i32 %storemerge.in.i, 255
  %and77.i = and i32 %conv.i, 7
  %shr78.i = lshr i32 %conv76.i, %and77.i
  %and79.i = and i32 %shr78.i, 1
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and79.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end55.i.return_crit_edge, label %if.then81.i

if.end55.i.return_crit_edge:                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then81.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 1, %and77.i
  %25 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx57.i, align 1
  %27 = trunc i32 %shl.i to i8
  %conv87.i = xor i8 %26, %27
  store i8 %conv87.i, ptr %arrayidx57.i, align 1
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i19, align 4
  %30 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb.i24
    i32 3, label %sw.bb7.i
    i32 8, label %sw.bb25.i
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i24:                                        ; preds = %sw.bb1
  %mul.i20 = shl i32 %channel, 1
  %add.i21 = add i32 %mul.i20, 128
  %call1.i22 = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %29, i32 noundef 0, i32 noundef %add.i21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %cmp.i23 = icmp slt i32 %call1.i22, 0
  br i1 %cmp.i23, label %sw.bb.i24.return_crit_edge, label %if.end.i27

sw.bb.i24.return_crit_edge:                       ; preds = %sw.bb.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i27:                                       ; preds = %sw.bb.i24
  %and.i25 = lshr i32 %call1.i22, 3
  %31 = and i32 %and.i25, 8160
  %and2.i = and i32 %call1.i22, 31
  %or.i26 = or i32 %31, %and2.i
  %32 = zext i32 %or.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %or.i26, label %if.else.i [
    i32 0, label %if.end.i27.if.end6.i_crit_edge
    i32 8191, label %if.end.i27.if.end6.i_crit_edge107
  ]

if.end.i27.if.end6.i_crit_edge107:                ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end.i27.if.end6.i_crit_edge:                   ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #8
  %div.i = udiv i32 1350000, %or.i26
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %if.end.i27.if.end6.i_crit_edge, %if.end.i27.if.end6.i_crit_edge107
  %rpm.0.i = phi i32 [ %div.i, %if.else.i ], [ 0, %if.end.i27.if.end6.i_crit_edge ], [ 0, %if.end.i27.if.end6.i_crit_edge107 ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %rpm.0.i, ptr %val, align 4
  br label %return

sw.bb7.i:                                         ; preds = %sw.bb1
  %mul8.i28 = shl i32 %channel, 1
  %add9.i = add i32 %mul8.i28, 96
  %call10.i = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %29, i32 noundef 1, i32 noundef %add9.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %sw.bb7.i.return_crit_edge, label %if.end13.i

sw.bb7.i.return_crit_edge:                        ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end13.i:                                       ; preds = %sw.bb7.i
  %and14.i = lshr i32 %call10.i, 3
  %34 = and i32 %and14.i, 8160
  %and16.i = and i32 %call10.i, 31
  %or17.i = or i32 %34, %and16.i
  %35 = zext i32 %or17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %or17.i, label %if.else22.i [
    i32 0, label %if.end13.i.if.end24.i_crit_edge
    i32 8191, label %if.end13.i.if.end24.i_crit_edge108
  ]

if.end13.i.if.end24.i_crit_edge108:               ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end13.i.if.end24.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.else22.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %div23.i = udiv i32 1350000, %or17.i
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else22.i, %if.end13.i.if.end24.i_crit_edge, %if.end13.i.if.end24.i_crit_edge108
  %rpm.1.i = phi i32 [ %div23.i, %if.else22.i ], [ 0, %if.end13.i.if.end24.i_crit_edge ], [ 0, %if.end13.i.if.end24.i_crit_edge108 ]
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rpm.1.i, ptr %val, align 4
  br label %return

sw.bb25.i:                                        ; preds = %sw.bb1
  %shr26.i = ashr i32 %channel, 3
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %29, align 4
  %bank_lock.i.i.i29 = getelementptr inbounds %struct.nct7904_data, ptr %29, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i29, i32 noundef 0) #6
  %bank_sel.i.i.i30 = getelementptr inbounds %struct.nct7904_data, ptr %29, i32 0, i32 3
  %39 = ptrtoint ptr %bank_sel.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bank_sel.i.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i.i.i31 = icmp eq i32 %40, 0
  br i1 %cmp.i.i.i31, label %sw.bb25.i.if.then.i.i39_crit_edge, label %nct7904_bank_lock.exit.i.i36

sw.bb25.i.if.then.i.i39_crit_edge:                ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i39

nct7904_bank_lock.exit.i.i36:                     ; preds = %sw.bb25.i
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %29, align 4
  %call.i.i.i32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i32)
  %cmp1.i.i.i33 = icmp eq i32 %call.i.i.i32, 0
  %not.cmp1.i.i.i34 = xor i1 %cmp1.i.i.i33, true
  %bank..i.i.i35 = sext i1 %not.cmp1.i.i.i34 to i32
  %43 = ptrtoint ptr %bank_sel.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bank..i.i.i35, ptr %bank_sel.i.i.i30, align 4
  br i1 %cmp1.i.i.i33, label %nct7904_bank_lock.exit.i.i36.if.then.i.i39_crit_edge, label %nct7904_bank_lock.exit.i.i36.nct7904_read_reg.exit.i41_crit_edge

nct7904_bank_lock.exit.i.i36.nct7904_read_reg.exit.i41_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit.i41

nct7904_bank_lock.exit.i.i36.if.then.i.i39_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i39

if.then.i.i39:                                    ; preds = %nct7904_bank_lock.exit.i.i36.if.then.i.i39_crit_edge, %sw.bb25.i.if.then.i.i39_crit_edge
  %44 = trunc i32 %shr26.i to i8
  %conv.i.i37 = add i8 %44, -59
  %call2.i.i38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext %conv.i.i37) #6
  br label %nct7904_read_reg.exit.i41

nct7904_read_reg.exit.i41:                        ; preds = %if.then.i.i39, %nct7904_bank_lock.exit.i.i36.nct7904_read_reg.exit.i41_crit_edge
  %ret.0.i.i40 = phi i32 [ %call2.i.i38, %if.then.i.i39 ], [ %call.i.i.i32, %nct7904_bank_lock.exit.i.i36.nct7904_read_reg.exit.i41_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i40)
  %cmp29.i = icmp slt i32 %ret.0.i.i40, 0
  br i1 %cmp29.i, label %nct7904_read_reg.exit.i41.return_crit_edge, label %if.end31.i

nct7904_read_reg.exit.i41.return_crit_edge:       ; preds = %nct7904_read_reg.exit.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end31.i:                                       ; preds = %nct7904_read_reg.exit.i41
  %arrayidx.i42 = getelementptr %struct.nct7904_data, ptr %29, i32 0, i32 11, i32 %shr26.i
  %45 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i43 = icmp eq i8 %46, 0
  %and39.i44 = and i32 %ret.0.i.i40, 255
  %conv43.i = zext i8 %46 to i32
  %or44.i = or i32 %and39.i44, %conv43.i
  %storemerge.in.i45 = select i1 %tobool.not.i43, i32 %ret.0.i.i40, i32 %or44.i
  %storemerge.i46 = trunc i32 %storemerge.in.i45 to i8
  %47 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge.i46, ptr %arrayidx.i42, align 1
  %conv50.i = and i32 %storemerge.in.i45, 255
  %and51.i = and i32 %channel, 7
  %shr52.i = lshr i32 %conv50.i, %and51.i
  %and53.i = and i32 %shr52.i, 1
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and53.i, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %if.end31.i.return_crit_edge, label %if.then55.i

if.end31.i.return_crit_edge:                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then55.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i47 = shl nuw nsw i32 1, %and51.i
  %49 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i42, align 1
  %51 = trunc i32 %shl.i47 to i8
  %conv61.i = xor i8 %50, %51
  store i8 %conv61.i, ptr %arrayidx.i42, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i49 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i49 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i49, align 4
  %54 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 0, label %sw.bb.i53
    i32 1, label %sw.bb2.i
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i53:                                        ; preds = %sw.bb3
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %53, align 4
  %bank_lock.i.i.i50 = getelementptr inbounds %struct.nct7904_data, ptr %53, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i50, i32 noundef 0) #6
  %bank_sel.i.i.i51 = getelementptr inbounds %struct.nct7904_data, ptr %53, i32 0, i32 3
  %57 = ptrtoint ptr %bank_sel.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bank_sel.i.i.i51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %cmp.i.i.i52 = icmp eq i32 %58, 3
  br i1 %cmp.i.i.i52, label %sw.bb.i53.if.then.i.i60_crit_edge, label %nct7904_bank_lock.exit.i.i57

sw.bb.i53.if.then.i.i60_crit_edge:                ; preds = %sw.bb.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i60

nct7904_bank_lock.exit.i.i57:                     ; preds = %sw.bb.i53
  %59 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %53, align 4
  %call.i.i.i54 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i54)
  %cmp1.i.i.i55 = icmp eq i32 %call.i.i.i54, 0
  %bank..i.i.i56 = select i1 %cmp1.i.i.i55, i32 3, i32 -1
  %61 = ptrtoint ptr %bank_sel.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %bank..i.i.i56, ptr %bank_sel.i.i.i51, align 4
  br i1 %cmp1.i.i.i55, label %nct7904_bank_lock.exit.i.i57.if.then.i.i60_crit_edge, label %nct7904_bank_lock.exit.i.i57.nct7904_read_reg.exit.i63_crit_edge

nct7904_bank_lock.exit.i.i57.nct7904_read_reg.exit.i63_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit.i63

nct7904_bank_lock.exit.i.i57.if.then.i.i60_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i60

if.then.i.i60:                                    ; preds = %nct7904_bank_lock.exit.i.i57.if.then.i.i60_crit_edge, %sw.bb.i53.if.then.i.i60_crit_edge
  %62 = trunc i32 %channel to i8
  %conv.i.i58 = add i8 %62, 16
  %call2.i.i59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %56, i8 noundef zeroext %conv.i.i58) #6
  br label %nct7904_read_reg.exit.i63

nct7904_read_reg.exit.i63:                        ; preds = %if.then.i.i60, %nct7904_bank_lock.exit.i.i57.nct7904_read_reg.exit.i63_crit_edge
  %ret.0.i.i61 = phi i32 [ %call2.i.i59, %if.then.i.i60 ], [ %call.i.i.i54, %nct7904_bank_lock.exit.i.i57.nct7904_read_reg.exit.i63_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i61)
  %cmp.i62 = icmp slt i32 %ret.0.i.i61, 0
  br i1 %cmp.i62, label %nct7904_read_reg.exit.i63.return_crit_edge, label %nct7904_read_reg.exit.i63.cleanup.sink.split.i_crit_edge

nct7904_read_reg.exit.i63.cleanup.sink.split.i_crit_edge: ; preds = %nct7904_read_reg.exit.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

nct7904_read_reg.exit.i63.return_crit_edge:       ; preds = %nct7904_read_reg.exit.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb3
  %63 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %53, align 4
  %bank_lock.i.i17.i = getelementptr inbounds %struct.nct7904_data, ptr %53, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i17.i, i32 noundef 0) #6
  %bank_sel.i.i18.i = getelementptr inbounds %struct.nct7904_data, ptr %53, i32 0, i32 3
  %65 = ptrtoint ptr %bank_sel.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bank_sel.i.i18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp.i.i19.i = icmp eq i32 %66, 3
  br i1 %cmp.i.i19.i, label %sw.bb2.i.if.then.i26.i_crit_edge, label %nct7904_bank_lock.exit.i23.i

sw.bb2.i.if.then.i26.i_crit_edge:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i26.i

nct7904_bank_lock.exit.i23.i:                     ; preds = %sw.bb2.i
  %67 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %53, align 4
  %call.i.i20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i)
  %cmp1.i.i21.i = icmp eq i32 %call.i.i20.i, 0
  %bank..i.i22.i = select i1 %cmp1.i.i21.i, i32 3, i32 -1
  %69 = ptrtoint ptr %bank_sel.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %bank..i.i22.i, ptr %bank_sel.i.i18.i, align 4
  br i1 %cmp1.i.i21.i, label %nct7904_bank_lock.exit.i23.i.if.then.i26.i_crit_edge, label %nct7904_bank_lock.exit.i23.i.nct7904_read_reg.exit28.i_crit_edge

nct7904_bank_lock.exit.i23.i.nct7904_read_reg.exit28.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit28.i

nct7904_bank_lock.exit.i23.i.if.then.i26.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i26.i

if.then.i26.i:                                    ; preds = %nct7904_bank_lock.exit.i23.i.if.then.i26.i_crit_edge, %sw.bb2.i.if.then.i26.i_crit_edge
  %conv.i24.i = trunc i32 %channel to i8
  %call2.i25.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %64, i8 noundef zeroext %conv.i24.i) #6
  br label %nct7904_read_reg.exit28.i

nct7904_read_reg.exit28.i:                        ; preds = %if.then.i26.i, %nct7904_bank_lock.exit.i23.i.nct7904_read_reg.exit28.i_crit_edge
  %ret.0.i27.i = phi i32 [ %call2.i25.i, %if.then.i26.i ], [ %call.i.i20.i, %nct7904_bank_lock.exit.i23.i.nct7904_read_reg.exit28.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i17.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i27.i)
  %cmp5.i = icmp slt i32 %ret.0.i27.i, 0
  br i1 %cmp5.i, label %nct7904_read_reg.exit28.i.return_crit_edge, label %if.end7.i

nct7904_read_reg.exit28.i.return_crit_edge:       ; preds = %nct7904_read_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end7.i:                                        ; preds = %nct7904_read_reg.exit28.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i27.i)
  %tobool.not.i64 = icmp eq i32 %ret.0.i27.i, 0
  %cond.i = select i1 %tobool.not.i64, i32 1, i32 2
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end7.i, %nct7904_read_reg.exit.i63.cleanup.sink.split.i_crit_edge
  %cond.sink.i = phi i32 [ %cond.i, %if.end7.i ], [ %ret.0.i.i61, %nct7904_read_reg.exit.i63.cleanup.sink.split.i_crit_edge ]
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.sink.i, ptr %val, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i66 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i66, align 4
  %73 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %sw.bb5.return_crit_edge [
    i32 1, label %sw.bb.i68
    i32 13, label %sw.bb16.i
    i32 2, label %sw.bb68.i
    i32 7, label %sw.bb5.sw.epilog.i_crit_edge
    i32 8, label %sw.bb99.i
    i32 9, label %sw.bb100.i
    i32 10, label %sw.bb101.i
  ]

sw.bb5.sw.epilog.i_crit_edge:                     ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i68:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp.i67 = icmp eq i32 %channel, 4
  br i1 %cmp.i67, label %sw.bb.i68.if.end9.i_crit_edge, label %if.else.i69

sw.bb.i68.if.end9.i_crit_edge:                    ; preds = %sw.bb.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.else.i69:                                      ; preds = %sw.bb.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp2.i = icmp slt i32 %channel, 5
  br i1 %cmp2.i, label %if.then3.i, label %if.else5.i

if.then3.i:                                       ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i70 = shl i32 %channel, 2
  %add.i71 = add i32 %mul.i70, 66
  br label %if.end9.i

if.else5.i:                                       ; preds = %if.else.i69
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = shl nuw i32 %channel, 1
  %add7.i = add i32 %sub.i, 150
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else5.i, %if.then3.i, %sw.bb.i68.if.end9.i_crit_edge
  %add.sink.i = phi i32 [ %add.i71, %if.then3.i ], [ %add7.i, %if.else5.i ], [ 98, %sw.bb.i68.if.end9.i_crit_edge ]
  %call4.i = tail call fastcc i32 @nct7904_read_reg16(ptr noundef %72, i32 noundef 0, i32 noundef %add.sink.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp10.i = icmp slt i32 %call4.i, 0
  br i1 %cmp10.i, label %if.end9.i.return_crit_edge, label %if.end12.i

if.end9.i.return_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end12.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %and.i72 = lshr i32 %call4.i, 5
  %74 = and i32 %and.i72, 2040
  %and13.i = and i32 %call4.i, 7
  %or.i73 = or i32 %74, %and13.i
  %shl.i.i = shl nuw i32 %or.i73, 21
  %shr.i.i = ashr exact i32 %shl.i.i, 21
  %mul15.i = mul nsw i32 %shr.i.i, 125
  br label %cleanup.sink.split.i91

sw.bb16.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp17.i = icmp eq i32 %channel, 4
  br i1 %cmp17.i, label %if.then18.i, label %if.else25.i

if.then18.i:                                      ; preds = %sw.bb16.i
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %bank_lock.i.i.i74 = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i74, i32 noundef 0) #6
  %bank_sel.i.i.i75 = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %77 = ptrtoint ptr %bank_sel.i.i.i75 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bank_sel.i.i.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i.i76 = icmp eq i32 %78, 0
  br i1 %cmp.i.i.i76, label %if.then18.i.if.then.i.i83_crit_edge, label %nct7904_bank_lock.exit.i.i81

if.then18.i.if.then.i.i83_crit_edge:              ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i83

nct7904_bank_lock.exit.i.i81:                     ; preds = %if.then18.i
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %72, align 4
  %call.i.i.i77 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %80, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i77)
  %cmp1.i.i.i78 = icmp eq i32 %call.i.i.i77, 0
  %not.cmp1.i.i.i79 = xor i1 %cmp1.i.i.i78, true
  %bank..i.i.i80 = sext i1 %not.cmp1.i.i.i79 to i32
  %81 = ptrtoint ptr %bank_sel.i.i.i75 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %bank..i.i.i80, ptr %bank_sel.i.i.i75, align 4
  br i1 %cmp1.i.i.i78, label %nct7904_bank_lock.exit.i.i81.if.then.i.i83_crit_edge, label %nct7904_bank_lock.exit.i.i81.nct7904_read_reg.exit.i85_crit_edge

nct7904_bank_lock.exit.i.i81.nct7904_read_reg.exit.i85_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit.i85

nct7904_bank_lock.exit.i.i81.if.then.i.i83_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i83

if.then.i.i83:                                    ; preds = %nct7904_bank_lock.exit.i.i81.if.then.i.i83_crit_edge, %if.then18.i.if.then.i.i83_crit_edge
  %call2.i.i82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext -61) #6
  br label %nct7904_read_reg.exit.i85

nct7904_read_reg.exit.i85:                        ; preds = %if.then.i.i83, %nct7904_bank_lock.exit.i.i81.nct7904_read_reg.exit.i85_crit_edge
  %ret.0.i.i84 = phi i32 [ %call2.i.i82, %if.then.i.i83 ], [ %call.i.i.i77, %nct7904_bank_lock.exit.i.i81.nct7904_read_reg.exit.i85_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i74) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i84)
  %cmp20.i = icmp slt i32 %ret.0.i.i84, 0
  br i1 %cmp20.i, label %nct7904_read_reg.exit.i85.return_crit_edge, label %if.end22.i

nct7904_read_reg.exit.i85.return_crit_edge:       ; preds = %nct7904_read_reg.exit.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end22.i:                                       ; preds = %nct7904_read_reg.exit.i85
  call void @__sanitizer_cov_trace_pc() #8
  %shr23197.i = lshr i32 %ret.0.i.i84, 1
  %and24.i = and i32 %shr23197.i, 1
  br label %cleanup.sink.split.i91

if.else25.i:                                      ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp26.i = icmp slt i32 %channel, 4
  br i1 %cmp26.i, label %if.then27.i, label %if.else37.i

if.then27.i:                                      ; preds = %if.else25.i
  %82 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %72, align 4
  %bank_lock.i.i198.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i198.i, i32 noundef 0) #6
  %bank_sel.i.i199.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %84 = ptrtoint ptr %bank_sel.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bank_sel.i.i199.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp.i.i200.i = icmp eq i32 %85, 0
  br i1 %cmp.i.i200.i, label %if.then27.i.if.then.i206.i_crit_edge, label %nct7904_bank_lock.exit.i204.i

if.then27.i.if.then.i206.i_crit_edge:             ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i206.i

nct7904_bank_lock.exit.i204.i:                    ; preds = %if.then27.i
  %86 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %72, align 4
  %call.i.i201.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %87, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201.i)
  %cmp1.i.i202.i = icmp eq i32 %call.i.i201.i, 0
  %not.cmp1.i.i202.i = xor i1 %cmp1.i.i202.i, true
  %bank..i.i203.i = sext i1 %not.cmp1.i.i202.i to i32
  %88 = ptrtoint ptr %bank_sel.i.i199.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %bank..i.i203.i, ptr %bank_sel.i.i199.i, align 4
  br i1 %cmp1.i.i202.i, label %nct7904_bank_lock.exit.i204.i.if.then.i206.i_crit_edge, label %nct7904_bank_lock.exit.i204.i.nct7904_read_reg.exit208.i_crit_edge

nct7904_bank_lock.exit.i204.i.nct7904_read_reg.exit208.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit208.i

nct7904_bank_lock.exit.i204.i.if.then.i206.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i206.i

if.then.i206.i:                                   ; preds = %nct7904_bank_lock.exit.i204.i.if.then.i206.i_crit_edge, %if.then27.i.if.then.i206.i_crit_edge
  %call2.i205.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %83, i8 noundef zeroext -63) #6
  br label %nct7904_read_reg.exit208.i

nct7904_read_reg.exit208.i:                       ; preds = %if.then.i206.i, %nct7904_bank_lock.exit.i204.i.nct7904_read_reg.exit208.i_crit_edge
  %ret.0.i207.i = phi i32 [ %call2.i205.i, %if.then.i206.i ], [ %call.i.i201.i, %nct7904_bank_lock.exit.i204.i.nct7904_read_reg.exit208.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i198.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i207.i)
  %cmp29.i86 = icmp slt i32 %ret.0.i207.i, 0
  br i1 %cmp29.i86, label %nct7904_read_reg.exit208.i.return_crit_edge, label %if.end31.i87

nct7904_read_reg.exit208.i.return_crit_edge:      ; preds = %nct7904_read_reg.exit208.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end31.i87:                                     ; preds = %nct7904_read_reg.exit208.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul32.i = shl i32 %channel, 1
  %add33.i = and i32 %mul32.i, 6
  %and34.i = or i32 %add33.i, 1
  %shr35196.i = lshr i32 %ret.0.i207.i, %and34.i
  %and36.i = and i32 %shr35196.i, 1
  br label %cleanup.sink.split.i91

if.else37.i:                                      ; preds = %if.else25.i
  %sub38.i = add nsw i32 %channel, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub38.i)
  %cmp39.i = icmp ult i32 %sub38.i, 4
  br i1 %cmp39.i, label %if.then40.i, label %if.else52.i

if.then40.i:                                      ; preds = %if.else37.i
  %89 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %72, align 4
  %bank_lock.i.i95 = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i95, i32 noundef 0) #6
  %bank_sel.i.i96 = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %91 = ptrtoint ptr %bank_sel.i.i96 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bank_sel.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp.i.i97 = icmp eq i32 %92, 0
  br i1 %cmp.i.i97, label %if.then40.i.if.then.i103_crit_edge, label %nct7904_bank_lock.exit.i101

if.then40.i.if.then.i103_crit_edge:               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i103

nct7904_bank_lock.exit.i101:                      ; preds = %if.then40.i
  %93 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %72, align 4
  %call.i.i98 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %94, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98)
  %cmp1.i.i99 = icmp eq i32 %call.i.i98, 0
  %not.cmp1.i.i99 = xor i1 %cmp1.i.i99, true
  %bank..i.i100 = sext i1 %not.cmp1.i.i99 to i32
  %95 = ptrtoint ptr %bank_sel.i.i96 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %bank..i.i100, ptr %bank_sel.i.i96, align 4
  br i1 %cmp1.i.i99, label %nct7904_bank_lock.exit.i101.if.then.i103_crit_edge, label %nct7904_bank_lock.exit.i101.nct7904_read_reg.exit106_crit_edge

nct7904_bank_lock.exit.i101.nct7904_read_reg.exit106_crit_edge: ; preds = %nct7904_bank_lock.exit.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit106

nct7904_bank_lock.exit.i101.if.then.i103_crit_edge: ; preds = %nct7904_bank_lock.exit.i101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i103

if.then.i103:                                     ; preds = %nct7904_bank_lock.exit.i101.if.then.i103_crit_edge, %if.then40.i.if.then.i103_crit_edge
  %call2.i102 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %90, i8 noundef zeroext -57) #6
  br label %nct7904_read_reg.exit106

nct7904_read_reg.exit106:                         ; preds = %if.then.i103, %nct7904_bank_lock.exit.i101.nct7904_read_reg.exit106_crit_edge
  %ret.0.i104 = phi i32 [ %call2.i102, %if.then.i103 ], [ %call.i.i98, %nct7904_bank_lock.exit.i101.nct7904_read_reg.exit106_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i104)
  %cmp45.i = icmp slt i32 %ret.0.i104, 0
  br i1 %cmp45.i, label %nct7904_read_reg.exit106.return_crit_edge, label %if.end47.i

nct7904_read_reg.exit106.return_crit_edge:        ; preds = %nct7904_read_reg.exit106
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end47.i:                                       ; preds = %nct7904_read_reg.exit106
  call void @__sanitizer_cov_trace_pc() #8
  %shr50195.i = lshr i32 %ret.0.i104, %sub38.i
  %and51.i88 = and i32 %shr50195.i, 1
  br label %cleanup.sink.split.i91

if.else52.i:                                      ; preds = %if.else37.i
  %shr54244.i = lshr i32 %sub38.i, 3
  %96 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %72, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %98 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp.i.i = icmp eq i32 %99, 0
  br i1 %cmp.i.i, label %if.else52.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

if.else52.i.if.then.i_crit_edge:                  ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %if.else52.i
  %100 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %72, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %101, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %102 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %if.else52.i.if.then.i_crit_edge
  %103 = trunc i32 %shr54244.i to i8
  %conv.i93 = add i8 %103, -56
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext %conv.i93) #6
  br label %nct7904_read_reg.exit

nct7904_read_reg.exit:                            ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp57.i = icmp slt i32 %ret.0.i, 0
  br i1 %cmp57.i, label %nct7904_read_reg.exit.return_crit_edge, label %if.end59.i

nct7904_read_reg.exit.return_crit_edge:           ; preds = %nct7904_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end59.i:                                       ; preds = %nct7904_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and61.i = and i32 %sub38.i, 7
  %sub62.i = add nsw i32 %and61.i, -4
  %shr63194.i = lshr i32 %ret.0.i, %sub62.i
  %and64.i = and i32 %shr63194.i, 1
  br label %cleanup.sink.split.i91

sw.bb68.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp69.i = icmp slt i32 %channel, 5
  br i1 %cmp69.i, label %if.then70.i, label %if.else82.i

if.then70.i:                                      ; preds = %sw.bb68.i
  %tcpu_mask.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 6
  %104 = ptrtoint ptr %tcpu_mask.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tcpu_mask.i, align 4
  %106 = shl nuw nsw i32 1, %channel
  %107 = and i32 %105, %106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool.not.i89 = icmp eq i32 %107, 0
  br i1 %tobool.not.i89, label %if.then70.i.cleanup.sink.split.i91_crit_edge, label %if.then73.i

if.then70.i.cleanup.sink.split.i91_crit_edge:     ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i91

if.then73.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #8
  %temp_mode.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 10
  %108 = ptrtoint ptr %temp_mode.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %temp_mode.i, align 2
  %conv.i90 = zext i8 %109 to i32
  %110 = and i32 %106, %conv.i90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool76.not.i = icmp eq i32 %110, 0
  %..i = select i1 %tobool76.not.i, i32 4, i32 3
  br label %cleanup.sink.split.i91

if.else82.i:                                      ; preds = %sw.bb68.i
  %has_dts.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 9
  %111 = ptrtoint ptr %has_dts.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %has_dts.i, align 1
  %conv83.i = zext i8 %112 to i32
  %sub84.i = add nsw i32 %channel, -5
  %113 = shl nuw i32 1, %sub84.i
  %114 = and i32 %113, %conv83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool87.not.i = icmp eq i32 %114, 0
  br i1 %tobool87.not.i, label %if.else82.i.cleanup.sink.split.i91_crit_edge, label %if.then88.i

if.else82.i.cleanup.sink.split.i91_crit_edge:     ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i91

if.then88.i:                                      ; preds = %if.else82.i
  call void @__sanitizer_cov_trace_pc() #8
  %enable_dts.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 8
  %115 = ptrtoint ptr %enable_dts.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %enable_dts.i, align 4
  %117 = and i8 %116, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool91.not.i = icmp eq i8 %117, 0
  %.245.i = select i1 %tobool91.not.i, i32 6, i32 5
  br label %cleanup.sink.split.i91

sw.bb99.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb100.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb101.i:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb101.i, %sw.bb100.i, %sw.bb99.i, %sw.bb5.sw.epilog.i_crit_edge
  %reg1.0.i = phi i8 [ 69, %sw.bb101.i ], [ 68, %sw.bb100.i ], [ 71, %sw.bb99.i ], [ 70, %sw.bb5.sw.epilog.i_crit_edge ]
  %reg2.0.i = phi i32 [ 5, %sw.bb101.i ], [ 4, %sw.bb100.i ], [ 7, %sw.bb99.i ], [ 6, %sw.bb5.sw.epilog.i_crit_edge ]
  %reg3.0.i = phi i32 [ 145, %sw.bb101.i ], [ 144, %sw.bb100.i ], [ 147, %sw.bb99.i ], [ 146, %sw.bb5.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp102.i = icmp eq i32 %channel, 4
  br i1 %cmp102.i, label %if.then104.i, label %if.else106.i

if.then104.i:                                     ; preds = %sw.epilog.i
  %118 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %72, align 4
  %bank_lock.i.i209.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i209.i, i32 noundef 0) #6
  %bank_sel.i.i210.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %120 = ptrtoint ptr %bank_sel.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bank_sel.i.i210.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp.i.i211.i = icmp eq i32 %121, 1
  br i1 %cmp.i.i211.i, label %if.then104.i.if.then.i217.i_crit_edge, label %nct7904_bank_lock.exit.i215.i

if.then104.i.if.then.i217.i_crit_edge:            ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i217.i

nct7904_bank_lock.exit.i215.i:                    ; preds = %if.then104.i
  %122 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %72, align 4
  %call.i.i212.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %123, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i212.i)
  %cmp1.i.i213.i = icmp eq i32 %call.i.i212.i, 0
  %bank..i.i214.i = select i1 %cmp1.i.i213.i, i32 1, i32 -1
  %124 = ptrtoint ptr %bank_sel.i.i210.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %bank..i.i214.i, ptr %bank_sel.i.i210.i, align 4
  br i1 %cmp1.i.i213.i, label %nct7904_bank_lock.exit.i215.i.if.then.i217.i_crit_edge, label %nct7904_bank_lock.exit.i215.i.if.end119.i_crit_edge

nct7904_bank_lock.exit.i215.i.if.end119.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

nct7904_bank_lock.exit.i215.i.if.then.i217.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i215.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i217.i

if.then.i217.i:                                   ; preds = %nct7904_bank_lock.exit.i215.i.if.then.i217.i_crit_edge, %if.then104.i.if.then.i217.i_crit_edge
  %call2.i216.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %119, i8 noundef zeroext %reg1.0.i) #6
  br label %if.end119.i

if.else106.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp107.i = icmp slt i32 %channel, 5
  br i1 %cmp107.i, label %if.then109.i, label %if.else113.i

if.then109.i:                                     ; preds = %if.else106.i
  %mul110.i = shl i32 %channel, 3
  %add111.i = or i32 %reg2.0.i, %mul110.i
  %125 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %72, align 4
  %bank_lock.i.i220.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i220.i, i32 noundef 0) #6
  %bank_sel.i.i221.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %127 = ptrtoint ptr %bank_sel.i.i221.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bank_sel.i.i221.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.i.i222.i = icmp eq i32 %128, 1
  br i1 %cmp.i.i222.i, label %if.then109.i.if.then.i229.i_crit_edge, label %nct7904_bank_lock.exit.i226.i

if.then109.i.if.then.i229.i_crit_edge:            ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i229.i

nct7904_bank_lock.exit.i226.i:                    ; preds = %if.then109.i
  %129 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %72, align 4
  %call.i.i223.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %130, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i223.i)
  %cmp1.i.i224.i = icmp eq i32 %call.i.i223.i, 0
  %bank..i.i225.i = select i1 %cmp1.i.i224.i, i32 1, i32 -1
  %131 = ptrtoint ptr %bank_sel.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %bank..i.i225.i, ptr %bank_sel.i.i221.i, align 4
  br i1 %cmp1.i.i224.i, label %nct7904_bank_lock.exit.i226.i.if.then.i229.i_crit_edge, label %nct7904_bank_lock.exit.i226.i.if.end119.i_crit_edge

nct7904_bank_lock.exit.i226.i.if.end119.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

nct7904_bank_lock.exit.i226.i.if.then.i229.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i229.i

if.then.i229.i:                                   ; preds = %nct7904_bank_lock.exit.i226.i.if.then.i229.i_crit_edge, %if.then109.i.if.then.i229.i_crit_edge
  %conv.i227.i = trunc i32 %add111.i to i8
  %call2.i228.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %126, i8 noundef zeroext %conv.i227.i) #6
  br label %if.end119.i

if.else113.i:                                     ; preds = %if.else106.i
  %sub114.i = shl i32 %channel, 2
  %mul115.i = add i32 %sub114.i, 236
  %add116.i = add i32 %mul115.i, %reg3.0.i
  %132 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %72, align 4
  %bank_lock.i.i232.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i232.i, i32 noundef 0) #6
  %bank_sel.i.i233.i = getelementptr inbounds %struct.nct7904_data, ptr %72, i32 0, i32 3
  %134 = ptrtoint ptr %bank_sel.i.i233.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bank_sel.i.i233.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i.i234.i = icmp eq i32 %135, 1
  br i1 %cmp.i.i234.i, label %if.else113.i.if.then.i241.i_crit_edge, label %nct7904_bank_lock.exit.i238.i

if.else113.i.if.then.i241.i_crit_edge:            ; preds = %if.else113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i241.i

nct7904_bank_lock.exit.i238.i:                    ; preds = %if.else113.i
  %136 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %72, align 4
  %call.i.i235.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %137, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i235.i)
  %cmp1.i.i236.i = icmp eq i32 %call.i.i235.i, 0
  %bank..i.i237.i = select i1 %cmp1.i.i236.i, i32 1, i32 -1
  %138 = ptrtoint ptr %bank_sel.i.i233.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %bank..i.i237.i, ptr %bank_sel.i.i233.i, align 4
  br i1 %cmp1.i.i236.i, label %nct7904_bank_lock.exit.i238.i.if.then.i241.i_crit_edge, label %nct7904_bank_lock.exit.i238.i.if.end119.i_crit_edge

nct7904_bank_lock.exit.i238.i.if.end119.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119.i

nct7904_bank_lock.exit.i238.i.if.then.i241.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i238.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i241.i

if.then.i241.i:                                   ; preds = %nct7904_bank_lock.exit.i238.i.if.then.i241.i_crit_edge, %if.else113.i.if.then.i241.i_crit_edge
  %conv.i239.i = trunc i32 %add116.i to i8
  %call2.i240.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %133, i8 noundef zeroext %conv.i239.i) #6
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then.i241.i, %nct7904_bank_lock.exit.i238.i.if.end119.i_crit_edge, %if.then.i229.i, %nct7904_bank_lock.exit.i226.i.if.end119.i_crit_edge, %if.then.i217.i, %nct7904_bank_lock.exit.i215.i.if.end119.i_crit_edge
  %bank_lock.i.i220.sink.i = phi ptr [ %bank_lock.i.i209.i, %nct7904_bank_lock.exit.i215.i.if.end119.i_crit_edge ], [ %bank_lock.i.i209.i, %if.then.i217.i ], [ %bank_lock.i.i220.i, %nct7904_bank_lock.exit.i226.i.if.end119.i_crit_edge ], [ %bank_lock.i.i220.i, %if.then.i229.i ], [ %bank_lock.i.i232.i, %nct7904_bank_lock.exit.i238.i.if.end119.i_crit_edge ], [ %bank_lock.i.i232.i, %if.then.i241.i ]
  %ret.1.i = phi i32 [ %call.i.i212.i, %nct7904_bank_lock.exit.i215.i.if.end119.i_crit_edge ], [ %call2.i216.i, %if.then.i217.i ], [ %call.i.i223.i, %nct7904_bank_lock.exit.i226.i.if.end119.i_crit_edge ], [ %call2.i228.i, %if.then.i229.i ], [ %call.i.i235.i, %nct7904_bank_lock.exit.i238.i.if.end119.i_crit_edge ], [ %call2.i240.i, %if.then.i241.i ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i220.sink.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp120.i = icmp slt i32 %ret.1.i, 0
  br i1 %cmp120.i, label %if.end119.i.return_crit_edge, label %if.end123.i

if.end119.i.return_crit_edge:                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end123.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #8
  %sext.i = shl i32 %ret.1.i, 24
  %conv125.i = ashr exact i32 %sext.i, 24
  %mul126.i = mul nsw i32 %conv125.i, 1000
  br label %cleanup.sink.split.i91

cleanup.sink.split.i91:                           ; preds = %if.end123.i, %if.then88.i, %if.else82.i.cleanup.sink.split.i91_crit_edge, %if.then73.i, %if.then70.i.cleanup.sink.split.i91_crit_edge, %if.end59.i, %if.end47.i, %if.end31.i87, %if.end22.i, %if.end12.i
  %.sink.i = phi i32 [ %and24.i, %if.end22.i ], [ %and51.i88, %if.end47.i ], [ %and64.i, %if.end59.i ], [ %and36.i, %if.end31.i87 ], [ %mul126.i, %if.end123.i ], [ %mul15.i, %if.end12.i ], [ %..i, %if.then73.i ], [ 0, %if.then70.i.cleanup.sink.split.i91_crit_edge ], [ %.245.i, %if.then88.i ], [ 0, %if.else82.i.cleanup.sink.split.i91_crit_edge ]
  %139 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %.sink.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %cleanup.sink.split.i91, %if.end119.i.return_crit_edge, %nct7904_read_reg.exit.return_crit_edge, %nct7904_read_reg.exit106.return_crit_edge, %nct7904_read_reg.exit208.i.return_crit_edge, %nct7904_read_reg.exit.i85.return_crit_edge, %if.end9.i.return_crit_edge, %sw.bb5.return_crit_edge, %cleanup.sink.split.i, %nct7904_read_reg.exit28.i.return_crit_edge, %nct7904_read_reg.exit.i63.return_crit_edge, %sw.bb3.return_crit_edge, %if.then55.i, %if.end31.i.return_crit_edge, %nct7904_read_reg.exit.i41.return_crit_edge, %if.end24.i, %sw.bb7.i.return_crit_edge, %if.end6.i, %sw.bb.i24.return_crit_edge, %sw.bb1.return_crit_edge, %if.then81.i, %if.end55.i.return_crit_edge, %nct7904_read_reg.exit.i.return_crit_edge, %if.end36.i, %sw.bb29.i.return_crit_edge, %if.end17.i, %sw.bb10.i.return_crit_edge, %if.end.i, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %if.end36.i ], [ 0, %if.end17.i ], [ 0, %if.end.i ], [ %call1.i, %sw.bb.i.return_crit_edge ], [ %call13.i, %sw.bb10.i.return_crit_edge ], [ %call32.i, %sw.bb29.i.return_crit_edge ], [ %ret.0.i.i, %nct7904_read_reg.exit.i.return_crit_edge ], [ 0, %if.then81.i ], [ 0, %if.end55.i.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ 0, %if.end24.i ], [ 0, %if.end6.i ], [ %call1.i22, %sw.bb.i24.return_crit_edge ], [ %call10.i, %sw.bb7.i.return_crit_edge ], [ %ret.0.i.i40, %nct7904_read_reg.exit.i41.return_crit_edge ], [ 0, %if.then55.i ], [ 0, %if.end31.i.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ %ret.0.i.i61, %nct7904_read_reg.exit.i63.return_crit_edge ], [ %ret.0.i27.i, %nct7904_read_reg.exit28.i.return_crit_edge ], [ -95, %sw.bb3.return_crit_edge ], [ 0, %cleanup.sink.split.i ], [ %call4.i, %if.end9.i.return_crit_edge ], [ %ret.0.i.i84, %nct7904_read_reg.exit.i85.return_crit_edge ], [ %ret.0.i207.i, %nct7904_read_reg.exit208.i.return_crit_edge ], [ %ret.0.i104, %nct7904_read_reg.exit106.return_crit_edge ], [ %ret.0.i, %nct7904_read_reg.exit.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge ], [ %ret.1.i, %if.end119.i.return_crit_edge ], [ 0, %cleanup.sink.split.i91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 7, label %sw.bb1
    i32 8, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr [21 x i8], ptr @nct7904_chan_to_index, i32 0, i32 %channel
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %channel)
  %cmp.i = icmp ult i32 %channel, 15
  %val.addr.0.v.i = select i1 %cmp.i, i32 2, i32 6
  %val.addr.0.i = sdiv i32 %val, %val.addr.0.v.i
  %5 = tail call i32 @llvm.smax.i32(i32 %val.addr.0.i, i32 0) #6
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 2047) #6
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb39.i
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = or i32 %mul.i, 3
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %bank_lock.i.i.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i, i32 noundef 0) #6
  %bank_sel.i.i.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 3
  %10 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank_sel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 1
  br i1 %cmp.i.i.i, label %sw.bb.i.if.then.i.i_crit_edge, label %nct7904_bank_lock.exit.i.i

sw.bb.i.if.then.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

nct7904_bank_lock.exit.i.i:                       ; preds = %sw.bb.i
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i.i.i = icmp eq i32 %call.i.i.i, 0
  %bank..i.i.i = select i1 %cmp1.i.i.i, i32 1, i32 -1
  %14 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %bank..i.i.i, ptr %bank_sel.i.i.i, align 4
  br i1 %cmp1.i.i.i, label %nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge, label %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge

nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit.i

nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nct7904_bank_lock.exit.i.i.if.then.i.i_crit_edge, %sw.bb.i.if.then.i.i_crit_edge
  %conv.i.i = trunc i32 %add.i to i8
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext %conv.i.i) #6
  br label %nct7904_read_reg.exit.i

nct7904_read_reg.exit.i:                          ; preds = %if.then.i.i, %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call2.i.i, %if.then.i.i ], [ %call.i.i.i, %nct7904_bank_lock.exit.i.i.nct7904_read_reg.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp14.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp14.i, label %nct7904_read_reg.exit.i.return_crit_edge, label %if.end17.i

nct7904_read_reg.exit.i.return_crit_edge:         ; preds = %nct7904_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end17.i:                                       ; preds = %nct7904_read_reg.exit.i
  %and.i = and i32 %ret.0.i.i, 248
  %and18.i = and i32 %6, 7
  %or.i = or i32 %and.i, %and18.i
  %conv21.i = trunc i32 %or.i to i8
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i, i32 noundef 0) #6
  %17 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bank_sel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i121.i = icmp eq i32 %18, 1
  br i1 %cmp.i.i121.i, label %if.end17.i.if.then.i128.i_crit_edge, label %nct7904_bank_lock.exit.i125.i

if.end17.i.if.then.i128.i_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i128.i

nct7904_bank_lock.exit.i125.i:                    ; preds = %if.end17.i
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %2, align 4
  %call.i.i122.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122.i)
  %cmp1.i.i123.i = icmp eq i32 %call.i.i122.i, 0
  %bank..i.i124.i = select i1 %cmp1.i.i123.i, i32 1, i32 -1
  %21 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %bank..i.i124.i, ptr %bank_sel.i.i.i, align 4
  br i1 %cmp1.i.i123.i, label %nct7904_bank_lock.exit.i125.i.if.then.i128.i_crit_edge, label %nct7904_bank_lock.exit.i125.i.nct7904_write_reg.exit.i_crit_edge

nct7904_bank_lock.exit.i125.i.nct7904_write_reg.exit.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit.i

nct7904_bank_lock.exit.i125.i.if.then.i128.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i128.i

if.then.i128.i:                                   ; preds = %nct7904_bank_lock.exit.i125.i.if.then.i128.i_crit_edge, %if.end17.i.if.then.i128.i_crit_edge
  %conv.i126.i = trunc i32 %add.i to i8
  %call2.i127.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext %conv.i126.i, i8 noundef zeroext %conv21.i) #6
  br label %nct7904_write_reg.exit.i

nct7904_write_reg.exit.i:                         ; preds = %if.then.i128.i, %nct7904_bank_lock.exit.i125.i.nct7904_write_reg.exit.i_crit_edge
  %ret.0.i129.i = phi i32 [ %call2.i127.i, %if.then.i128.i ], [ %call.i.i122.i, %nct7904_bank_lock.exit.i125.i.nct7904_write_reg.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i129.i)
  %cmp23.i = icmp slt i32 %ret.0.i129.i, 0
  br i1 %cmp23.i, label %nct7904_write_reg.exit.i.return_crit_edge, label %if.end26.i

nct7904_write_reg.exit.i.return_crit_edge:        ; preds = %nct7904_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end26.i:                                       ; preds = %nct7904_write_reg.exit.i
  %add28.i = or i32 %mul.i, 2
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i, i32 noundef 0) #6
  %24 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank_sel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i132.i = icmp eq i32 %25, 1
  br i1 %cmp.i.i132.i, label %if.end26.i.if.then.i139.i_crit_edge, label %nct7904_bank_lock.exit.i136.i

if.end26.i.if.then.i139.i_crit_edge:              ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i139.i

nct7904_bank_lock.exit.i136.i:                    ; preds = %if.end26.i
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %call.i.i133.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i133.i)
  %cmp1.i.i134.i = icmp eq i32 %call.i.i133.i, 0
  %bank..i.i135.i = select i1 %cmp1.i.i134.i, i32 1, i32 -1
  %28 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %bank..i.i135.i, ptr %bank_sel.i.i.i, align 4
  br i1 %cmp1.i.i134.i, label %nct7904_bank_lock.exit.i136.i.if.then.i139.i_crit_edge, label %nct7904_bank_lock.exit.i136.i.nct7904_read_reg.exit141.i_crit_edge

nct7904_bank_lock.exit.i136.i.nct7904_read_reg.exit141.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit141.i

nct7904_bank_lock.exit.i136.i.if.then.i139.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i139.i

if.then.i139.i:                                   ; preds = %nct7904_bank_lock.exit.i136.i.if.then.i139.i_crit_edge, %if.end26.i.if.then.i139.i_crit_edge
  %conv.i137.i = trunc i32 %add28.i to i8
  %call2.i138.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext %conv.i137.i) #6
  br label %nct7904_read_reg.exit141.i

nct7904_read_reg.exit141.i:                       ; preds = %if.then.i139.i, %nct7904_bank_lock.exit.i136.i.nct7904_read_reg.exit141.i_crit_edge
  %ret.0.i140.i = phi i32 [ %call2.i138.i, %if.then.i139.i ], [ %call.i.i133.i, %nct7904_bank_lock.exit.i136.i.nct7904_read_reg.exit141.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i140.i)
  %cmp30.i = icmp slt i32 %ret.0.i140.i, 0
  br i1 %cmp30.i, label %nct7904_read_reg.exit141.i.return_crit_edge, label %if.end33.i

nct7904_read_reg.exit141.i.return_crit_edge:      ; preds = %nct7904_read_reg.exit141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end33.i:                                       ; preds = %nct7904_read_reg.exit141.i
  %29 = lshr i32 %6, 3
  %conv37.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i, i32 noundef 0) #6
  %32 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank_sel.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i144.i = icmp eq i32 %33, 1
  br i1 %cmp.i.i144.i, label %if.end33.i.if.then.i151.i_crit_edge, label %nct7904_bank_lock.exit.i148.i

if.end33.i.if.then.i151.i_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151.i

nct7904_bank_lock.exit.i148.i:                    ; preds = %if.end33.i
  %34 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %2, align 4
  %call.i.i145.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i145.i)
  %cmp1.i.i146.i = icmp eq i32 %call.i.i145.i, 0
  %bank..i.i147.i = select i1 %cmp1.i.i146.i, i32 1, i32 -1
  %36 = ptrtoint ptr %bank_sel.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %bank..i.i147.i, ptr %bank_sel.i.i.i, align 4
  br i1 %cmp1.i.i146.i, label %nct7904_bank_lock.exit.i148.i.if.then.i151.i_crit_edge, label %nct7904_bank_lock.exit.i148.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i148.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i148.i.if.then.i151.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i151.i

if.then.i151.i:                                   ; preds = %nct7904_bank_lock.exit.i148.i.if.then.i151.i_crit_edge, %if.end33.i.if.then.i151.i_crit_edge
  %conv.i149.i = trunc i32 %add28.i to i8
  %call2.i150.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext %conv.i149.i, i8 noundef zeroext %conv37.i) #6
  br label %return.sink.split

sw.bb39.i:                                        ; preds = %sw.bb
  %mul40.i = shl nuw nsw i32 %conv.i, 2
  %add41.i = or i32 %mul40.i, 1
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %bank_lock.i.i154.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i154.i, i32 noundef 0) #6
  %bank_sel.i.i155.i = getelementptr inbounds %struct.nct7904_data, ptr %2, i32 0, i32 3
  %39 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bank_sel.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i.i156.i = icmp eq i32 %40, 1
  br i1 %cmp.i.i156.i, label %sw.bb39.i.if.then.i163.i_crit_edge, label %nct7904_bank_lock.exit.i160.i

sw.bb39.i.if.then.i163.i_crit_edge:               ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i163.i

nct7904_bank_lock.exit.i160.i:                    ; preds = %sw.bb39.i
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %call.i.i157.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157.i)
  %cmp1.i.i158.i = icmp eq i32 %call.i.i157.i, 0
  %bank..i.i159.i = select i1 %cmp1.i.i158.i, i32 1, i32 -1
  %43 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %bank..i.i159.i, ptr %bank_sel.i.i155.i, align 4
  br i1 %cmp1.i.i158.i, label %nct7904_bank_lock.exit.i160.i.if.then.i163.i_crit_edge, label %nct7904_bank_lock.exit.i160.i.nct7904_read_reg.exit165.i_crit_edge

nct7904_bank_lock.exit.i160.i.nct7904_read_reg.exit165.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit165.i

nct7904_bank_lock.exit.i160.i.if.then.i163.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i163.i

if.then.i163.i:                                   ; preds = %nct7904_bank_lock.exit.i160.i.if.then.i163.i_crit_edge, %sw.bb39.i.if.then.i163.i_crit_edge
  %conv.i161.i = trunc i32 %add41.i to i8
  %call2.i162.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %38, i8 noundef zeroext %conv.i161.i) #6
  br label %nct7904_read_reg.exit165.i

nct7904_read_reg.exit165.i:                       ; preds = %if.then.i163.i, %nct7904_bank_lock.exit.i160.i.nct7904_read_reg.exit165.i_crit_edge
  %ret.0.i164.i = phi i32 [ %call2.i162.i, %if.then.i163.i ], [ %call.i.i157.i, %nct7904_bank_lock.exit.i160.i.nct7904_read_reg.exit165.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i154.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i164.i)
  %cmp43.i = icmp slt i32 %ret.0.i164.i, 0
  br i1 %cmp43.i, label %nct7904_read_reg.exit165.i.return_crit_edge, label %if.end46.i

nct7904_read_reg.exit165.i.return_crit_edge:      ; preds = %nct7904_read_reg.exit165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end46.i:                                       ; preds = %nct7904_read_reg.exit165.i
  %and47.i = and i32 %ret.0.i164.i, 248
  %and48.i = and i32 %6, 7
  %or49.i = or i32 %and47.i, %and48.i
  %conv52.i = trunc i32 %or49.i to i8
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i154.i, i32 noundef 0) #6
  %46 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bank_sel.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.i168.i = icmp eq i32 %47, 1
  br i1 %cmp.i.i168.i, label %if.end46.i.if.then.i175.i_crit_edge, label %nct7904_bank_lock.exit.i172.i

if.end46.i.if.then.i175.i_crit_edge:              ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i175.i

nct7904_bank_lock.exit.i172.i:                    ; preds = %if.end46.i
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %call.i.i169.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i169.i)
  %cmp1.i.i170.i = icmp eq i32 %call.i.i169.i, 0
  %bank..i.i171.i = select i1 %cmp1.i.i170.i, i32 1, i32 -1
  %50 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %bank..i.i171.i, ptr %bank_sel.i.i155.i, align 4
  br i1 %cmp1.i.i170.i, label %nct7904_bank_lock.exit.i172.i.if.then.i175.i_crit_edge, label %nct7904_bank_lock.exit.i172.i.nct7904_write_reg.exit177.i_crit_edge

nct7904_bank_lock.exit.i172.i.nct7904_write_reg.exit177.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit177.i

nct7904_bank_lock.exit.i172.i.if.then.i175.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i172.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i175.i

if.then.i175.i:                                   ; preds = %nct7904_bank_lock.exit.i172.i.if.then.i175.i_crit_edge, %if.end46.i.if.then.i175.i_crit_edge
  %conv.i173.i = trunc i32 %add41.i to i8
  %call2.i174.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext %conv.i173.i, i8 noundef zeroext %conv52.i) #6
  br label %nct7904_write_reg.exit177.i

nct7904_write_reg.exit177.i:                      ; preds = %if.then.i175.i, %nct7904_bank_lock.exit.i172.i.nct7904_write_reg.exit177.i_crit_edge
  %ret.0.i176.i = phi i32 [ %call2.i174.i, %if.then.i175.i ], [ %call.i.i169.i, %nct7904_bank_lock.exit.i172.i.nct7904_write_reg.exit177.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i154.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i176.i)
  %cmp54.i = icmp slt i32 %ret.0.i176.i, 0
  br i1 %cmp54.i, label %nct7904_write_reg.exit177.i.return_crit_edge, label %if.end57.i

nct7904_write_reg.exit177.i.return_crit_edge:     ; preds = %nct7904_write_reg.exit177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end57.i:                                       ; preds = %nct7904_write_reg.exit177.i
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i154.i, i32 noundef 0) #6
  %53 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bank_sel.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp.i.i180.i = icmp eq i32 %54, 1
  br i1 %cmp.i.i180.i, label %if.end57.i.if.then.i187.i_crit_edge, label %nct7904_bank_lock.exit.i184.i

if.end57.i.if.then.i187.i_crit_edge:              ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i187.i

nct7904_bank_lock.exit.i184.i:                    ; preds = %if.end57.i
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  %call.i.i181.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %56, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i181.i)
  %cmp1.i.i182.i = icmp eq i32 %call.i.i181.i, 0
  %bank..i.i183.i = select i1 %cmp1.i.i182.i, i32 1, i32 -1
  %57 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %bank..i.i183.i, ptr %bank_sel.i.i155.i, align 4
  br i1 %cmp1.i.i182.i, label %nct7904_bank_lock.exit.i184.i.if.then.i187.i_crit_edge, label %nct7904_bank_lock.exit.i184.i.nct7904_read_reg.exit189.i_crit_edge

nct7904_bank_lock.exit.i184.i.nct7904_read_reg.exit189.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit189.i

nct7904_bank_lock.exit.i184.i.if.then.i187.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i187.i

if.then.i187.i:                                   ; preds = %nct7904_bank_lock.exit.i184.i.if.then.i187.i_crit_edge, %if.end57.i.if.then.i187.i_crit_edge
  %conv.i185.i = trunc i32 %mul40.i to i8
  %call2.i186.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %52, i8 noundef zeroext %conv.i185.i) #6
  br label %nct7904_read_reg.exit189.i

nct7904_read_reg.exit189.i:                       ; preds = %if.then.i187.i, %nct7904_bank_lock.exit.i184.i.nct7904_read_reg.exit189.i_crit_edge
  %ret.0.i188.i = phi i32 [ %call2.i186.i, %if.then.i187.i ], [ %call.i.i181.i, %nct7904_bank_lock.exit.i184.i.nct7904_read_reg.exit189.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i154.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i188.i)
  %cmp61.i = icmp slt i32 %ret.0.i188.i, 0
  br i1 %cmp61.i, label %nct7904_read_reg.exit189.i.return_crit_edge, label %if.end64.i

nct7904_read_reg.exit189.i.return_crit_edge:      ; preds = %nct7904_read_reg.exit189.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end64.i:                                       ; preds = %nct7904_read_reg.exit189.i
  %58 = lshr i32 %6, 3
  %conv69.i = trunc i32 %58 to i8
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %2, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i154.i, i32 noundef 0) #6
  %61 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bank_sel.i.i155.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i.i192.i = icmp eq i32 %62, 1
  br i1 %cmp.i.i192.i, label %if.end64.i.if.then.i199.i_crit_edge, label %nct7904_bank_lock.exit.i196.i

if.end64.i.if.then.i199.i_crit_edge:              ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i199.i

nct7904_bank_lock.exit.i196.i:                    ; preds = %if.end64.i
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 4
  %call.i.i193.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i193.i)
  %cmp1.i.i194.i = icmp eq i32 %call.i.i193.i, 0
  %bank..i.i195.i = select i1 %cmp1.i.i194.i, i32 1, i32 -1
  %65 = ptrtoint ptr %bank_sel.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %bank..i.i195.i, ptr %bank_sel.i.i155.i, align 4
  br i1 %cmp1.i.i194.i, label %nct7904_bank_lock.exit.i196.i.if.then.i199.i_crit_edge, label %nct7904_bank_lock.exit.i196.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i196.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i196.i.if.then.i199.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i199.i

if.then.i199.i:                                   ; preds = %nct7904_bank_lock.exit.i196.i.if.then.i199.i_crit_edge, %if.end64.i.if.then.i199.i_crit_edge
  %conv.i197.i = trunc i32 %mul40.i to i8
  %call2.i198.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext %conv.i197.i, i8 noundef zeroext %conv69.i) #6
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %66 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_data.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attr)
  %cond38.i = icmp eq i32 %attr, 3
  br i1 %cond38.i, label %sw.bb.i21, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i21:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.i20 = icmp slt i32 %val, 1
  br i1 %cmp.i20, label %sw.bb.i21.return_crit_edge, label %cond.true.i

sw.bb.i21.return_crit_edge:                       ; preds = %sw.bb.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.true.i:                                      ; preds = %sw.bb.i21
  %div6971.i = lshr i32 %val, 1
  %add.i22 = add nuw nsw i32 %div6971.i, 1350000
  %div770.i = udiv i32 %add.i22, %val
  %68 = tail call i32 @llvm.umax.i32(i32 %div770.i, i32 1) #6
  %69 = tail call i32 @llvm.umin.i32(i32 %68, i32 8191) #6
  %70 = lshr i32 %69, 5
  %conv24.i = trunc i32 %70 to i8
  %mul.i23 = shl i32 %channel, 1
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %67, align 4
  %bank_lock.i.i.i24 = getelementptr inbounds %struct.nct7904_data, ptr %67, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i24, i32 noundef 0) #6
  %bank_sel.i.i.i25 = getelementptr inbounds %struct.nct7904_data, ptr %67, i32 0, i32 3
  %73 = ptrtoint ptr %bank_sel.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %bank_sel.i.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp.i.i.i26 = icmp eq i32 %74, 1
  br i1 %cmp.i.i.i26, label %cond.true.i.if.then.i.i33_crit_edge, label %nct7904_bank_lock.exit.i.i30

cond.true.i.if.then.i.i33_crit_edge:              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i33

nct7904_bank_lock.exit.i.i30:                     ; preds = %cond.true.i
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %67, align 4
  %call.i.i.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %76, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27)
  %cmp1.i.i.i28 = icmp eq i32 %call.i.i.i27, 0
  %bank..i.i.i29 = select i1 %cmp1.i.i.i28, i32 1, i32 -1
  %77 = ptrtoint ptr %bank_sel.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %bank..i.i.i29, ptr %bank_sel.i.i.i25, align 4
  br i1 %cmp1.i.i.i28, label %nct7904_bank_lock.exit.i.i30.if.then.i.i33_crit_edge, label %nct7904_bank_lock.exit.i.i30.nct7904_write_reg.exit.i35_crit_edge

nct7904_bank_lock.exit.i.i30.nct7904_write_reg.exit.i35_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit.i35

nct7904_bank_lock.exit.i.i30.if.then.i.i33_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i33

if.then.i.i33:                                    ; preds = %nct7904_bank_lock.exit.i.i30.if.then.i.i33_crit_edge, %cond.true.i.if.then.i.i33_crit_edge
  %78 = trunc i32 %mul.i23 to i8
  %conv.i.i31 = add i8 %78, 96
  %call2.i.i32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %72, i8 noundef zeroext %conv.i.i31, i8 noundef zeroext %conv24.i) #6
  br label %nct7904_write_reg.exit.i35

nct7904_write_reg.exit.i35:                       ; preds = %if.then.i.i33, %nct7904_bank_lock.exit.i.i30.nct7904_write_reg.exit.i35_crit_edge
  %ret.0.i.i34 = phi i32 [ %call2.i.i32, %if.then.i.i33 ], [ %call.i.i.i27, %nct7904_bank_lock.exit.i.i30.nct7904_write_reg.exit.i35_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i34)
  %cmp27.i = icmp slt i32 %ret.0.i.i34, 0
  br i1 %cmp27.i, label %nct7904_write_reg.exit.i35.return_crit_edge, label %if.end30.i

nct7904_write_reg.exit.i35.return_crit_edge:      ; preds = %nct7904_write_reg.exit.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end30.i:                                       ; preds = %nct7904_write_reg.exit.i35
  %79 = trunc i32 %69 to i8
  %conv32.i = and i8 %79, 31
  %80 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %67, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i24, i32 noundef 0) #6
  %82 = ptrtoint ptr %bank_sel.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bank_sel.i.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i.i59.i = icmp eq i32 %83, 1
  br i1 %cmp.i.i59.i, label %if.end30.i.if.then.i66.i_crit_edge, label %nct7904_bank_lock.exit.i63.i

if.end30.i.if.then.i66.i_crit_edge:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i66.i

nct7904_bank_lock.exit.i63.i:                     ; preds = %if.end30.i
  %84 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %67, align 4
  %call.i.i60.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %85, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %cmp1.i.i61.i = icmp eq i32 %call.i.i60.i, 0
  %bank..i.i62.i = select i1 %cmp1.i.i61.i, i32 1, i32 -1
  %86 = ptrtoint ptr %bank_sel.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %bank..i.i62.i, ptr %bank_sel.i.i.i25, align 4
  br i1 %cmp1.i.i61.i, label %nct7904_bank_lock.exit.i63.i.if.then.i66.i_crit_edge, label %nct7904_bank_lock.exit.i63.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i63.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i63.i.if.then.i66.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i66.i

if.then.i66.i:                                    ; preds = %nct7904_bank_lock.exit.i63.i.if.then.i66.i_crit_edge, %if.end30.i.if.then.i66.i_crit_edge
  %87 = trunc i32 %mul.i23 to i8
  %conv.i64.i = add i8 %87, 97
  %call2.i65.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %81, i8 noundef zeroext %conv.i64.i, i8 noundef zeroext %conv32.i) #6
  br label %return.sink.split

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i37 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %88 = ptrtoint ptr %driver_data.i.i37 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i37, align 4
  %90 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 0, label %sw.bb.i38
    i32 1, label %sw.bb3.i
  ]

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.i38:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %91 = icmp ugt i32 %val, 255
  br i1 %91, label %sw.bb.i38.return_crit_edge, label %if.end.i

sw.bb.i38.return_crit_edge:                       ; preds = %sw.bb.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %sw.bb.i38
  %conv.i39 = trunc i32 %val to i8
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %bank_lock.i.i.i40 = getelementptr inbounds %struct.nct7904_data, ptr %89, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i40, i32 noundef 0) #6
  %bank_sel.i.i.i41 = getelementptr inbounds %struct.nct7904_data, ptr %89, i32 0, i32 3
  %94 = ptrtoint ptr %bank_sel.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bank_sel.i.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %95)
  %cmp.i.i.i42 = icmp eq i32 %95, 3
  br i1 %cmp.i.i.i42, label %if.end.i.if.then.i.i49_crit_edge, label %nct7904_bank_lock.exit.i.i46

if.end.i.if.then.i.i49_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i49

nct7904_bank_lock.exit.i.i46:                     ; preds = %if.end.i
  %96 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %89, align 4
  %call.i.i.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %97, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i43)
  %cmp1.i.i.i44 = icmp eq i32 %call.i.i.i43, 0
  %bank..i.i.i45 = select i1 %cmp1.i.i.i44, i32 3, i32 -1
  %98 = ptrtoint ptr %bank_sel.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bank..i.i.i45, ptr %bank_sel.i.i.i41, align 4
  br i1 %cmp1.i.i.i44, label %nct7904_bank_lock.exit.i.i46.if.then.i.i49_crit_edge, label %nct7904_bank_lock.exit.i.i46.return.sink.split_crit_edge

nct7904_bank_lock.exit.i.i46.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i.i46.if.then.i.i49_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i49

if.then.i.i49:                                    ; preds = %nct7904_bank_lock.exit.i.i46.if.then.i.i49_crit_edge, %if.end.i.if.then.i.i49_crit_edge
  %99 = trunc i32 %channel to i8
  %conv.i.i47 = add i8 %99, 16
  %call2.i.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %93, i8 noundef zeroext %conv.i.i47, i8 noundef zeroext %conv.i39) #6
  br label %return.sink.split

sw.bb3.i:                                         ; preds = %sw.bb3
  %100 = add i32 %val, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %100)
  %101 = icmp ult i32 %100, -2
  br i1 %101, label %sw.bb3.i.return_crit_edge, label %lor.lhs.false9.i

sw.bb3.i.return_crit_edge:                        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false9.i:                                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp10.i = icmp eq i32 %val, 2
  br i1 %cmp10.i, label %land.lhs.true.i, label %lor.lhs.false9.i.cond.end.i_crit_edge

lor.lhs.false9.i.cond.end.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false9.i
  %arrayidx.i50 = getelementptr %struct.nct7904_data, ptr %89, i32 0, i32 7, i32 %channel
  %102 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

cond.end.i:                                       ; preds = %land.lhs.true.i.cond.end.i_crit_edge, %lor.lhs.false9.i.cond.end.i_crit_edge
  %cond.i = phi i8 [ 0, %lor.lhs.false9.i.cond.end.i_crit_edge ], [ %103, %land.lhs.true.i.cond.end.i_crit_edge ]
  %104 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %89, align 4
  %bank_lock.i.i37.i = getelementptr inbounds %struct.nct7904_data, ptr %89, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i37.i, i32 noundef 0) #6
  %bank_sel.i.i38.i = getelementptr inbounds %struct.nct7904_data, ptr %89, i32 0, i32 3
  %106 = ptrtoint ptr %bank_sel.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bank_sel.i.i38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp.i.i39.i = icmp eq i32 %107, 3
  br i1 %cmp.i.i39.i, label %cond.end.i.if.then.i46.i_crit_edge, label %nct7904_bank_lock.exit.i43.i

cond.end.i.if.then.i46.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i46.i

nct7904_bank_lock.exit.i43.i:                     ; preds = %cond.end.i
  %108 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %89, align 4
  %call.i.i40.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %109, i8 noundef zeroext -1, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i40.i)
  %cmp1.i.i41.i = icmp eq i32 %call.i.i40.i, 0
  %bank..i.i42.i = select i1 %cmp1.i.i41.i, i32 3, i32 -1
  %110 = ptrtoint ptr %bank_sel.i.i38.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %bank..i.i42.i, ptr %bank_sel.i.i38.i, align 4
  br i1 %cmp1.i.i41.i, label %nct7904_bank_lock.exit.i43.i.if.then.i46.i_crit_edge, label %nct7904_bank_lock.exit.i43.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i43.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i43.i.if.then.i46.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i46.i

if.then.i46.i:                                    ; preds = %nct7904_bank_lock.exit.i43.i.if.then.i46.i_crit_edge, %cond.end.i.if.then.i46.i_crit_edge
  %conv.i44.i = trunc i32 %channel to i8
  %call2.i45.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %105, i8 noundef zeroext %conv.i44.i, i8 noundef zeroext %cond.i) #6
  br label %return.sink.split

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i54 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %111 = ptrtoint ptr %driver_data.i.i54 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver_data.i.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %val)
  %cmp.i55 = icmp sgt i32 %val, -128000
  %div.i = sdiv i32 %val, 1000
  %113 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 127) #6
  %114 = select i1 %cmp.i55, i32 %113, i32 -128
  %switch.tableidx = add i32 %attr, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %115 = icmp ult i32 %switch.tableidx, 4
  br i1 %115, label %switch.lookup, label %sw.bb5.return_crit_edge

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %sw.bb5
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 1162102598, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.nct7904_write, i32 0, i32 %switch.tableidx
  %116 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %116)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep72 = getelementptr inbounds [4 x i32], ptr @switch.table.nct7904_write.9, i32 0, i32 %switch.tableidx
  %117 = ptrtoint ptr %switch.gep72 to i32
  call void @__asan_load4_noabort(i32 %117)
  %switch.load73 = load i32, ptr %switch.gep72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp10.i56 = icmp eq i32 %channel, 4
  br i1 %cmp10.i56, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %switch.lookup
  %conv.i57 = trunc i32 %114 to i8
  %118 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %112, align 4
  %bank_lock.i.i.i58 = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i.i58, i32 noundef 0) #6
  %bank_sel.i.i.i59 = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 3
  %120 = ptrtoint ptr %bank_sel.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bank_sel.i.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %121)
  %cmp.i.i.i60 = icmp eq i32 %121, 1
  br i1 %cmp.i.i.i60, label %if.then.i.if.then.i.i66_crit_edge, label %nct7904_bank_lock.exit.i.i64

if.then.i.if.then.i.i66_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i66

nct7904_bank_lock.exit.i.i64:                     ; preds = %if.then.i
  %122 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %112, align 4
  %call.i.i.i61 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %123, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i61)
  %cmp1.i.i.i62 = icmp eq i32 %call.i.i.i61, 0
  %bank..i.i.i63 = select i1 %cmp1.i.i.i62, i32 1, i32 -1
  %124 = ptrtoint ptr %bank_sel.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %bank..i.i.i63, ptr %bank_sel.i.i.i59, align 4
  br i1 %cmp1.i.i.i62, label %nct7904_bank_lock.exit.i.i64.if.then.i.i66_crit_edge, label %nct7904_bank_lock.exit.i.i64.return.sink.split_crit_edge

nct7904_bank_lock.exit.i.i64.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i.i64.if.then.i.i66_crit_edge: ; preds = %nct7904_bank_lock.exit.i.i64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i66

if.then.i.i66:                                    ; preds = %nct7904_bank_lock.exit.i.i64.if.then.i.i66_crit_edge, %if.then.i.if.then.i.i66_crit_edge
  %call2.i.i65 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %119, i8 noundef zeroext %switch.masked, i8 noundef zeroext %conv.i57) #6
  br label %return.sink.split

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp12.i = icmp slt i32 %channel, 5
  br i1 %cmp12.i, label %if.then14.i, label %if.else17.i

if.then14.i:                                      ; preds = %if.else.i
  %mul.i67 = shl i32 %channel, 3
  %add.i68 = or i32 %switch.load, %mul.i67
  %conv15.i = trunc i32 %114 to i8
  %125 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %112, align 4
  %bank_lock.i.i39.i = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i39.i, i32 noundef 0) #6
  %bank_sel.i.i40.i = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 3
  %127 = ptrtoint ptr %bank_sel.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %bank_sel.i.i40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %128)
  %cmp.i.i41.i = icmp eq i32 %128, 1
  br i1 %cmp.i.i41.i, label %if.then14.i.if.then.i48.i_crit_edge, label %nct7904_bank_lock.exit.i45.i

if.then14.i.if.then.i48.i_crit_edge:              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i48.i

nct7904_bank_lock.exit.i45.i:                     ; preds = %if.then14.i
  %129 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %112, align 4
  %call.i.i42.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %130, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42.i)
  %cmp1.i.i43.i = icmp eq i32 %call.i.i42.i, 0
  %bank..i.i44.i = select i1 %cmp1.i.i43.i, i32 1, i32 -1
  %131 = ptrtoint ptr %bank_sel.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %bank..i.i44.i, ptr %bank_sel.i.i40.i, align 4
  br i1 %cmp1.i.i43.i, label %nct7904_bank_lock.exit.i45.i.if.then.i48.i_crit_edge, label %nct7904_bank_lock.exit.i45.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i45.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i45.i.if.then.i48.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i48.i

if.then.i48.i:                                    ; preds = %nct7904_bank_lock.exit.i45.i.if.then.i48.i_crit_edge, %if.then14.i.if.then.i48.i_crit_edge
  %conv.i46.i = trunc i32 %add.i68 to i8
  %call2.i47.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %126, i8 noundef zeroext %conv.i46.i, i8 noundef zeroext %conv15.i) #6
  br label %return.sink.split

if.else17.i:                                      ; preds = %if.else.i
  %sub.i = shl i32 %channel, 2
  %mul18.i = add i32 %sub.i, 236
  %add19.i = add i32 %mul18.i, %switch.load73
  %conv20.i = trunc i32 %114 to i8
  %132 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %112, align 4
  %bank_lock.i.i51.i = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i51.i, i32 noundef 0) #6
  %bank_sel.i.i52.i = getelementptr inbounds %struct.nct7904_data, ptr %112, i32 0, i32 3
  %134 = ptrtoint ptr %bank_sel.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %bank_sel.i.i52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp.i.i53.i = icmp eq i32 %135, 1
  br i1 %cmp.i.i53.i, label %if.else17.i.if.then.i60.i_crit_edge, label %nct7904_bank_lock.exit.i57.i

if.else17.i.if.then.i60.i_crit_edge:              ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60.i

nct7904_bank_lock.exit.i57.i:                     ; preds = %if.else17.i
  %136 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %112, align 4
  %call.i.i54.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %137, i8 noundef zeroext -1, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.i)
  %cmp1.i.i55.i = icmp eq i32 %call.i.i54.i, 0
  %bank..i.i56.i = select i1 %cmp1.i.i55.i, i32 1, i32 -1
  %138 = ptrtoint ptr %bank_sel.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %bank..i.i56.i, ptr %bank_sel.i.i52.i, align 4
  br i1 %cmp1.i.i55.i, label %nct7904_bank_lock.exit.i57.i.if.then.i60.i_crit_edge, label %nct7904_bank_lock.exit.i57.i.return.sink.split_crit_edge

nct7904_bank_lock.exit.i57.i.return.sink.split_crit_edge: ; preds = %nct7904_bank_lock.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

nct7904_bank_lock.exit.i57.i.if.then.i60.i_crit_edge: ; preds = %nct7904_bank_lock.exit.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i60.i

if.then.i60.i:                                    ; preds = %nct7904_bank_lock.exit.i57.i.if.then.i60.i_crit_edge, %if.else17.i.if.then.i60.i_crit_edge
  %conv.i58.i = trunc i32 %add19.i to i8
  %call2.i59.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %133, i8 noundef zeroext %conv.i58.i, i8 noundef zeroext %conv20.i) #6
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then.i60.i, %nct7904_bank_lock.exit.i57.i.return.sink.split_crit_edge, %if.then.i48.i, %nct7904_bank_lock.exit.i45.i.return.sink.split_crit_edge, %if.then.i.i66, %nct7904_bank_lock.exit.i.i64.return.sink.split_crit_edge, %if.then.i46.i, %nct7904_bank_lock.exit.i43.i.return.sink.split_crit_edge, %if.then.i.i49, %nct7904_bank_lock.exit.i.i46.return.sink.split_crit_edge, %if.then.i66.i, %nct7904_bank_lock.exit.i63.i.return.sink.split_crit_edge, %if.then.i199.i, %nct7904_bank_lock.exit.i196.i.return.sink.split_crit_edge, %if.then.i151.i, %nct7904_bank_lock.exit.i148.i.return.sink.split_crit_edge
  %bank_lock.i.i.sink.i.sink = phi ptr [ %bank_lock.i.i.i, %nct7904_bank_lock.exit.i148.i.return.sink.split_crit_edge ], [ %bank_lock.i.i.i, %if.then.i151.i ], [ %bank_lock.i.i154.i, %nct7904_bank_lock.exit.i196.i.return.sink.split_crit_edge ], [ %bank_lock.i.i154.i, %if.then.i199.i ], [ %bank_lock.i.i.i24, %if.then.i66.i ], [ %bank_lock.i.i.i24, %nct7904_bank_lock.exit.i63.i.return.sink.split_crit_edge ], [ %bank_lock.i.i.i40, %nct7904_bank_lock.exit.i.i46.return.sink.split_crit_edge ], [ %bank_lock.i.i.i40, %if.then.i.i49 ], [ %bank_lock.i.i37.i, %nct7904_bank_lock.exit.i43.i.return.sink.split_crit_edge ], [ %bank_lock.i.i37.i, %if.then.i46.i ], [ %bank_lock.i.i.i58, %nct7904_bank_lock.exit.i.i64.return.sink.split_crit_edge ], [ %bank_lock.i.i.i58, %if.then.i.i66 ], [ %bank_lock.i.i39.i, %nct7904_bank_lock.exit.i45.i.return.sink.split_crit_edge ], [ %bank_lock.i.i39.i, %if.then.i48.i ], [ %bank_lock.i.i51.i, %nct7904_bank_lock.exit.i57.i.return.sink.split_crit_edge ], [ %bank_lock.i.i51.i, %if.then.i60.i ]
  %retval.0.ph = phi i32 [ %call.i.i145.i, %nct7904_bank_lock.exit.i148.i.return.sink.split_crit_edge ], [ %call2.i150.i, %if.then.i151.i ], [ %call.i.i193.i, %nct7904_bank_lock.exit.i196.i.return.sink.split_crit_edge ], [ %call2.i198.i, %if.then.i199.i ], [ %call2.i65.i, %if.then.i66.i ], [ %call.i.i60.i, %nct7904_bank_lock.exit.i63.i.return.sink.split_crit_edge ], [ %call.i.i.i43, %nct7904_bank_lock.exit.i.i46.return.sink.split_crit_edge ], [ %call2.i.i48, %if.then.i.i49 ], [ %call.i.i40.i, %nct7904_bank_lock.exit.i43.i.return.sink.split_crit_edge ], [ %call2.i45.i, %if.then.i46.i ], [ %call.i.i.i61, %nct7904_bank_lock.exit.i.i64.return.sink.split_crit_edge ], [ %call2.i.i65, %if.then.i.i66 ], [ %call.i.i42.i, %nct7904_bank_lock.exit.i45.i.return.sink.split_crit_edge ], [ %call2.i47.i, %if.then.i48.i ], [ %call.i.i54.i, %nct7904_bank_lock.exit.i57.i.return.sink.split_crit_edge ], [ %call2.i59.i, %if.then.i60.i ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i.sink.i.sink) #6
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb5.return_crit_edge, %land.lhs.true.i.return_crit_edge, %sw.bb3.i.return_crit_edge, %sw.bb.i38.return_crit_edge, %sw.bb3.return_crit_edge, %nct7904_write_reg.exit.i35.return_crit_edge, %sw.bb.i21.return_crit_edge, %sw.bb1.return_crit_edge, %nct7904_read_reg.exit189.i.return_crit_edge, %nct7904_write_reg.exit177.i.return_crit_edge, %nct7904_read_reg.exit165.i.return_crit_edge, %nct7904_read_reg.exit141.i.return_crit_edge, %nct7904_write_reg.exit.i.return_crit_edge, %nct7904_read_reg.exit.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %ret.0.i.i, %nct7904_read_reg.exit.i.return_crit_edge ], [ %ret.0.i129.i, %nct7904_write_reg.exit.i.return_crit_edge ], [ %ret.0.i140.i, %nct7904_read_reg.exit141.i.return_crit_edge ], [ %ret.0.i164.i, %nct7904_read_reg.exit165.i.return_crit_edge ], [ %ret.0.i176.i, %nct7904_write_reg.exit177.i.return_crit_edge ], [ %ret.0.i188.i, %nct7904_read_reg.exit189.i.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -22, %sw.bb.i21.return_crit_edge ], [ %ret.0.i.i34, %nct7904_write_reg.exit.i35.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ -22, %sw.bb.i38.return_crit_edge ], [ -22, %land.lhs.true.i.return_crit_edge ], [ -22, %sw.bb3.i.return_crit_edge ], [ -95, %sw.bb3.return_crit_edge ], [ -95, %sw.bb5.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_wdt_start(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %8 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext 85) #6
  br label %nct7904_write_reg.exit

nct7904_write_reg.exit:                           ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_wdt_stop(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %8 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext -86) #6
  br label %nct7904_write_reg.exit

nct7904_write_reg.exit:                           ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_wdt_ping(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %8 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -32, i8 noundef zeroext -86) #6
  br label %nct7904_write_reg.exit

nct7904_write_reg.exit:                           ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %nct7904_write_reg.exit.cleanup_crit_edge, label %if.end

nct7904_write_reg.exit.cleanup_crit_edge:         ; preds = %nct7904_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nct7904_write_reg.exit
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  %div = udiv i32 %10, 60
  %conv = trunc i32 %div to i8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %13 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i17 = icmp eq i32 %14, 0
  br i1 %cmp.i.i17, label %if.end.if.then.i23_crit_edge, label %nct7904_bank_lock.exit.i21

if.end.if.then.i23_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i23

nct7904_bank_lock.exit.i21:                       ; preds = %if.end
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %cmp1.i.i19 = icmp eq i32 %call.i.i18, 0
  %not.cmp1.i.i19 = xor i1 %cmp1.i.i19, true
  %bank..i.i20 = sext i1 %not.cmp1.i.i19 to i32
  %17 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %bank..i.i20, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i19, label %nct7904_bank_lock.exit.i21.if.then.i23_crit_edge, label %nct7904_bank_lock.exit.i21.nct7904_write_reg.exit25_crit_edge

nct7904_bank_lock.exit.i21.nct7904_write_reg.exit25_crit_edge: ; preds = %nct7904_bank_lock.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit25

nct7904_bank_lock.exit.i21.if.then.i23_crit_edge: ; preds = %nct7904_bank_lock.exit.i21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i23

if.then.i23:                                      ; preds = %nct7904_bank_lock.exit.i21.if.then.i23_crit_edge, %if.end.if.then.i23_crit_edge
  %call2.i22 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -29, i8 noundef zeroext %conv) #6
  br label %nct7904_write_reg.exit25

nct7904_write_reg.exit25:                         ; preds = %if.then.i23, %nct7904_bank_lock.exit.i21.nct7904_write_reg.exit25_crit_edge
  %ret.0.i24 = phi i32 [ %call2.i22, %if.then.i23 ], [ %call.i.i18, %nct7904_bank_lock.exit.i21.nct7904_write_reg.exit25_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i24)
  %cmp3 = icmp slt i32 %ret.0.i24, 0
  br i1 %cmp3, label %nct7904_write_reg.exit25.cleanup_crit_edge, label %if.end6

nct7904_write_reg.exit25.cleanup_crit_edge:       ; preds = %nct7904_write_reg.exit25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %nct7904_write_reg.exit25
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %20 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i.i28 = icmp eq i32 %21, 0
  br i1 %cmp.i.i28, label %if.end6.if.then.i34_crit_edge, label %nct7904_bank_lock.exit.i32

if.end6.if.then.i34_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i34

nct7904_bank_lock.exit.i32:                       ; preds = %if.end6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call.i.i29 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %cmp1.i.i30 = icmp eq i32 %call.i.i29, 0
  %not.cmp1.i.i30 = xor i1 %cmp1.i.i30, true
  %bank..i.i31 = sext i1 %not.cmp1.i.i30 to i32
  %24 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %bank..i.i31, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i30, label %nct7904_bank_lock.exit.i32.if.then.i34_crit_edge, label %nct7904_bank_lock.exit.i32.nct7904_write_reg.exit36_crit_edge

nct7904_bank_lock.exit.i32.nct7904_write_reg.exit36_crit_edge: ; preds = %nct7904_bank_lock.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit36

nct7904_bank_lock.exit.i32.if.then.i34_crit_edge: ; preds = %nct7904_bank_lock.exit.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i34

if.then.i34:                                      ; preds = %nct7904_bank_lock.exit.i32.if.then.i34_crit_edge, %if.end6.if.then.i34_crit_edge
  %call2.i33 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -32, i8 noundef zeroext 85) #6
  br label %nct7904_write_reg.exit36

nct7904_write_reg.exit36:                         ; preds = %if.then.i34, %nct7904_bank_lock.exit.i32.nct7904_write_reg.exit36_crit_edge
  %ret.0.i35 = phi i32 [ %call2.i33, %if.then.i34 ], [ %call.i.i29, %nct7904_bank_lock.exit.i32.nct7904_write_reg.exit36_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nct7904_write_reg.exit36, %nct7904_write_reg.exit25.cleanup_crit_edge, %nct7904_write_reg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i35, %nct7904_write_reg.exit36 ], [ %ret.0.i, %nct7904_write_reg.exit.cleanup_crit_edge ], [ %ret.0.i24, %nct7904_write_reg.exit25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_wdt_set_timeout(ptr nocapture noundef %wdt, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = udiv i32 %timeout, 60
  %mul = mul nuw i32 %div, 60
  %timeout1 = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 7
  %2 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %timeout1, align 4
  %conv = trunc i32 %div to i8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.i = icmp eq i32 %6, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %9 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_write_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -29, i8 noundef zeroext %conv) #6
  br label %nct7904_write_reg.exit

nct7904_write_reg.exit:                           ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_write_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7904_wdt_get_timeleft(ptr nocapture noundef readonly %wdt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdt, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %bank_lock.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %bank_lock.i.i, i32 noundef 0) #6
  %bank_sel.i.i = getelementptr inbounds %struct.nct7904_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_sel.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

nct7904_bank_lock.exit.i:                         ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i.i = icmp eq i32 %call.i.i, 0
  %not.cmp1.i.i = xor i1 %cmp1.i.i, true
  %bank..i.i = sext i1 %not.cmp1.i.i to i32
  %8 = ptrtoint ptr %bank_sel.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bank..i.i, ptr %bank_sel.i.i, align 4
  br i1 %cmp1.i.i, label %nct7904_bank_lock.exit.i.if.then.i_crit_edge, label %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge

nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge: ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nct7904_read_reg.exit

nct7904_bank_lock.exit.i.if.then.i_crit_edge:     ; preds = %nct7904_bank_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %nct7904_bank_lock.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -29) #6
  br label %nct7904_read_reg.exit

nct7904_read_reg.exit:                            ; preds = %if.then.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call.i.i, %nct7904_bank_lock.exit.i.nct7904_read_reg.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %bank_lock.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  %mul = mul i32 %ret.0.i, 60
  %retval.0 = select i1 %cmp, i32 0, i32 %mul
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__param_timeout, !1, !"__param_timeout", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/nct7904.c", i32 115, i32 1}
!2 = !{ptr @__UNIQUE_ID_timeouttype288, !1, !"__UNIQUE_ID_timeouttype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_timeout289, !4, !"__UNIQUE_ID_timeout289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/nct7904.c", i32 116, i32 1}
!5 = !{ptr @__param_nowayout, !6, !"__param_nowayout", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/nct7904.c", i32 120, i32 1}
!7 = !{ptr @__UNIQUE_ID_nowayouttype290, !6, !"__UNIQUE_ID_nowayouttype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_nowayout291, !9, !"__UNIQUE_ID_nowayout291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/nct7904.c", i32 121, i32 1}
!10 = !{ptr @__initcall__kmod_nct7904__304_1180_nct7904_driver_init6, !11, !"__initcall__kmod_nct7904__304_1180_nct7904_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/nct7904.c", i32 1180, i32 1}
!12 = !{ptr @__exitcall_nct7904_driver_exit, !11, !"__exitcall_nct7904_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author305, !14, !"__UNIQUE_ID_author305", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/nct7904.c", i32 1182, i32 1}
!15 = !{ptr @__UNIQUE_ID_description306, !16, !"__UNIQUE_ID_description306", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/nct7904.c", i32 1183, i32 1}
!17 = !{ptr @__UNIQUE_ID_file307, !18, !"__UNIQUE_ID_file307", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/nct7904.c", i32 1184, i32 1}
!19 = !{ptr @__UNIQUE_ID_license308, !18, !"__UNIQUE_ID_license308", i1 false, i1 false}
!20 = !{ptr @timeout, !21, !"timeout", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/nct7904.c", i32 114, i32 12}
!22 = !{ptr @__param_str_timeout, !1, !"__param_str_timeout", i1 false, i1 false}
!23 = !{ptr @__param_str_nowayout, !6, !"__param_str_nowayout", i1 false, i1 false}
!24 = !{ptr @nowayout, !25, !"nowayout", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/nct7904.c", i32 119, i32 13}
!26 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/nct7904.c", i32 1172, i32 11}
!28 = !{ptr @nct7904_driver, !29, !"nct7904_driver", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/nct7904.c", i32 1169, i32 26}
!30 = !{ptr @nct7904_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/nct7904.c", i32 1026, i32 2}
!32 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @nct7904_chip_info, !34, !"nct7904_chip_info", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/nct7904.c", i32 918, i32 37}
!35 = !{ptr @nct7904_hwmon_ops, !36, !"nct7904_hwmon_ops", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/nct7904.c", i32 912, i32 31}
!37 = !{ptr @nct7904_chan_to_index, !38, !"nct7904_chan_to_index", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/nct7904.c", i32 293, i32 11}
!39 = !{ptr @nct7904_info, !40, !"nct7904_info", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/nct7904.c", i32 806, i32 41}
!41 = !{ptr @nct7904_wdt_ops, !42, !"nct7904_wdt_ops", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/nct7904.c", i32 1003, i32 34}
!43 = !{ptr @nct7904_wdt_info, !44, !"nct7904_wdt_info", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/nct7904.c", i32 997, i32 35}
!45 = !{ptr @nct7904_id, !46, !"nct7904_id", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/nct7904.c", i32 1163, i32 35}
!47 = !{ptr @normal_i2c, !48, !"normal_i2c", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/nct7904.c", i32 124, i32 29}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
