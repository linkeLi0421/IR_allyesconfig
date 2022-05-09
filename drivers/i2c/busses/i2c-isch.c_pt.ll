; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-isch.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-isch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_backbone_speed = internal constant [24 x i8] c"i2c_isch.backbone_speed\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@backbone_speed = internal global { i32, [28 x i8] } { i32 33000, [28 x i8] zeroinitializer }, align 32
@__param_backbone_speed = internal constant %struct.kernel_param { ptr @__param_str_backbone_speed, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @backbone_speed } }, section "__param", align 4
@__UNIQUE_ID_backbone_speedtype288 = internal constant [37 x i8] c"i2c_isch.parmtype=backbone_speed:int\00", section ".modinfo", align 1
@__UNIQUE_ID_backbone_speed289 = internal constant [70 x i8] c"i2c_isch.parm=backbone_speed:Backbone speed in kHz, (default = 33000)\00", section ".modinfo", align 1
@__initcall__kmod_i2c_isch__302_307_smbus_sch_driver_init6 = internal global ptr @smbus_sch_driver_init, section ".initcall6.init", align 4
@smbus_sch_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @smbus_sch_probe, ptr @smbus_sch_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_smbus_sch_driver_exit = internal global ptr @smbus_sch_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [52 x i8] c"i2c_isch.author=Jacob Pan <jacob.jun.pan@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [44 x i8] c"i2c_isch.description=Intel SCH SMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [42 x i8] c"i2c_isch.file=drivers/i2c/busses/i2c-isch\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [21 x i8] c"i2c_isch.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias307 = internal constant [35 x i8] c"i2c_isch.alias=platform:isch_smbus\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"isch_smbus\00", [21 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@smbus_sch_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SMBus region 0x%x already in use!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smbus_sch_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-isch.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smbus_sch_probe._entry_ptr = internal global ptr @smbus_sch_probe._entry, section ".printk_index", align 4
@sch_smba = internal global { i16, [30 x i8] } zeroinitializer, align 32
@smbus_sch_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_isch\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SMBA = 0x%X\0A\00", [19 x i8] zeroinitializer }, align 32
@sch_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] zeroinitializer, %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SMBus SCH adapter at %04x\00", [38 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @sch_access, ptr null, ptr @sch_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sch_access.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sch_access\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SMBus busy (%02x)\0A\00", [45 x i8] zeroinitializer }, align 32
@sch_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.3, i32 159, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Clock divider uninitialized. Setting defaults\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sch_access._entry_ptr = internal global ptr @sch_access._entry, section ".printk_index", align 4
@sch_access.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.13, i8 0, i8 41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"access size: %d %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@sch_access._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.3, i32 206, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported transaction %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sch_access._entry_ptr.19 = internal global ptr @sch_access._entry.16, section ".printk_index", align 4
@sch_access.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.20, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"write size %d to 0x%04x\0A\00", [39 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sch_transaction\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Transaction (pre): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 18, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Completion (%02x). Clear...\0A\00", [35 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.24, i8 0, i8 19, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SMBus error (%02x). Resetting...\0A\00", [62 x i8] zeroinitializer }, align 32
@sch_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.21, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SMBus is not ready: (%02x)\0A\00", [36 x i8] zeroinitializer }, align 32
@sch_transaction._entry_ptr = internal global ptr @sch_transaction._entry, section ".printk_index", align 4
@sch_transaction._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SMBus Timeout!\0A\00", [16 x i8] zeroinitializer }, align 32
@sch_transaction._entry_ptr.28 = internal global ptr @sch_transaction._entry.26, section ".printk_index", align 4
@sch_transaction.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.29, i8 0, i8 26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Bus collision! SMBus may be locked until next hard reset. (sorry!)\0A\00", [60 x i8] zeroinitializer }, align 32
@sch_transaction._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.21, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error: no response!\0A\00", [43 x i8] zeroinitializer }, align 32
@sch_transaction._entry_ptr.32 = internal global ptr @sch_transaction._entry.30, section ".printk_index", align 4
@sch_transaction.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.33, i8 0, i8 28, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Post complete!\0A\00", [16 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.34, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed reset at end of transaction (%02x), Bus error!\0A\00", [41 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.35, i8 0, i8 30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No such address.\0A\00", [46 x i8] zeroinitializer }, align 32
@sch_transaction.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.3, ptr @.str.36, i8 0, i8 31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Transaction (post): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.37 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"backbone_speed\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 49, i32 12 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"smbus_sch_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 299, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 301, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 267, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"sch_smba\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 47, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 274, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"sch_adapter\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 250, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 280, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 245, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 147, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 158, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 163, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 206, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 209, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 64, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 74, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 78, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 84, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 100, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 105, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 110, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 112, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 117, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 122, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-isch.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 124, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_alias307, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_backbone_speed289, ptr @__UNIQUE_ID_backbone_speedtype288, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_smbus_sch_driver_exit, ptr @__initcall__kmod_i2c_isch__302_307_smbus_sch_driver_init6, ptr @__param_backbone_speed, ptr @sch_access._entry, ptr @sch_access._entry.16, ptr @sch_access._entry_ptr, ptr @sch_access._entry_ptr.19, ptr @sch_transaction._entry, ptr @sch_transaction._entry.26, ptr @sch_transaction._entry.30, ptr @sch_transaction._entry_ptr, ptr @sch_transaction._entry_ptr.28, ptr @sch_transaction._entry_ptr.32, ptr @smbus_sch_driver_exit, ptr @smbus_sch_probe._entry, ptr @smbus_sch_probe._entry_ptr, ptr @backbone_speed, ptr @smbus_sch_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @sch_smba, ptr @.str.6, ptr @.str.7, ptr @sch_adapter, ptr @.str.8, ptr @smbus_algorithm, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @backbone_speed to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_sch_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_sch_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_smba to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_access._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_transaction._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sch_transaction._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smbus_sch_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @smbus_sch_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smbus_sch_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @smbus_sch_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbus_sch_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 256, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %1
  %add.i = add i32 %sub.i, %3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call4 = tail call ptr @__devm_request_region(ptr noundef %dev2, ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef %add.i, ptr noundef %5) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = load i16, ptr @sch_smba, align 2
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %conv10 = trunc i32 %8 to i16
  store i16 %conv10, ptr @sch_smba, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smbus_sch_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smbus_sch_probe, %do.end22)) #7
          to label %if.then17 [label %do.end22], !srcloc !112

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i16, ptr @sch_smba, align 2
  %conv19 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smbus_sch_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev2, ptr noundef nonnull @.str.7, i32 noundef %conv19) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %if.end8
  store ptr %dev2, ptr getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9, i32 1), align 8
  %10 = load i16, ptr @sch_smba, align 2
  %conv24 = zext i16 %10 to i32
  %call25 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 12), i32 noundef 48, ptr noundef nonnull @.str.8, i32 noundef %conv24)
  %call26 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @sch_adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end22.cleanup_crit_edge, label %if.then28

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  store i16 0, ptr @sch_smba, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.end22.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -16, %entry.cleanup_crit_edge ], [ %call26, %if.then28 ], [ 0, %do.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smbus_sch_remove(ptr nocapture noundef readnone %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @sch_smba, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef nonnull @sch_adapter) #7
  store i16 0, ptr @sch_smba, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sch_access(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @sch_smba, align 2
  %conv = zext i16 %0 to i32
  %add1 = add nuw nsw i32 %conv, -18874367
  %1 = inttoptr i32 %add1 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %3 = and i8 %2, 15
  %and4 = zext i8 %3 to i32
  %and5 = and i32 %and4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_access.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_access, %cleanup)) #7
          to label %if.then12 [label %cleanup], !srcloc !112

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_access.__UNIQUE_ID_ddebug298, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.10, i32 noundef %and4) #7
  br label %cleanup

if.end13:                                         ; preds = %entry
  %4 = load i16, ptr @sch_smba, align 2
  %conv15 = zext i16 %4 to i32
  %add18 = add nuw nsw i32 %conv15, -18874366
  %5 = inttoptr i32 %add18 to ptr
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %5) #7, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool23.not = icmp eq i16 %6, 0
  br i1 %tobool23.not, label %do.end27, label %if.end13.do.body38_crit_edge

if.end13.do.body38_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body38

do.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %7 = load i32, ptr @backbone_speed, align 4
  %div = sdiv i32 %7, 400
  %conv31 = trunc i32 %div to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv31)
  %9 = load i16, ptr @sch_smba, align 2
  %conv32 = zext i16 %9 to i32
  %add35 = add nuw nsw i32 %conv32, -18874366
  %10 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %10, i16 %8) #7, !srcloc !118
  br label %do.body38

do.body38:                                        ; preds = %do.end27, %if.end13.do.body38_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_access.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_access, %do.end57)) #7
          to label %if.then52 [label %do.end57], !srcloc !112

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %tobool54.not = icmp eq i8 %read_write, 0
  %cond = select i1 %tobool54.not, ptr @.str.15, ptr @.str.14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_access.__UNIQUE_ID_ddebug299, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.13, i32 noundef %size, ptr noundef nonnull %cond) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body38
  %11 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.end236 [
    i32 0, label %do.body58
    i32 1, label %do.body70
    i32 2, label %do.body96
    i32 3, label %do.body131
    i32 5, label %do.body180
  ]

do.body58:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %conv61 = trunc i16 %addr to i8
  %shl = shl i8 %conv61, 1
  %or = or i8 %shl, %read_write
  %12 = load i16, ptr @sch_smba, align 2
  %conv64 = zext i16 %12 to i32
  %add67 = add nuw nsw i32 %conv64, -18874364
  %13 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %or) #7, !srcloc !120
  br label %do.body237

do.body70:                                        ; preds = %do.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %conv73 = trunc i16 %addr to i8
  %shl74 = shl i8 %conv73, 1
  %or76 = or i8 %shl74, %read_write
  %14 = load i16, ptr @sch_smba, align 2
  %conv78 = zext i16 %14 to i32
  %add81 = add nuw nsw i32 %conv78, -18874364
  %15 = inttoptr i32 %add81 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %or76) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp = icmp eq i8 %read_write, 0
  br i1 %cmp, label %do.body86, label %do.body70.do.body237_crit_edge

do.body70.do.body237_crit_edge:                   ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

do.body86:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !122
  tail call void @arm_heavy_mb() #7
  %16 = load i16, ptr @sch_smba, align 2
  %conv89 = zext i16 %16 to i32
  %add92 = add nuw nsw i32 %conv89, -18874363
  %17 = inttoptr i32 %add92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %command) #7, !srcloc !120
  br label %do.body237

do.body96:                                        ; preds = %do.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %conv99 = trunc i16 %addr to i8
  %shl100 = shl i8 %conv99, 1
  %or102 = or i8 %shl100, %read_write
  %18 = load i16, ptr @sch_smba, align 2
  %conv104 = zext i16 %18 to i32
  %add107 = add nuw nsw i32 %conv104, -18874364
  %19 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %or102) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void @arm_heavy_mb() #7
  %20 = load i16, ptr @sch_smba, align 2
  %conv112 = zext i16 %20 to i32
  %add115 = add nuw nsw i32 %conv112, -18874363
  %21 = inttoptr i32 %add115 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %command) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp118 = icmp eq i8 %read_write, 0
  br i1 %cmp118, label %do.body121, label %do.body96.do.body237_crit_edge

do.body96.do.body237_crit_edge:                   ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

do.body121:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 2
  %24 = load i16, ptr @sch_smba, align 2
  %conv124 = zext i16 %24 to i32
  %add127 = add nuw nsw i32 %conv124, -18874362
  %25 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %23) #7, !srcloc !120
  br label %do.body237

do.body131:                                       ; preds = %do.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %conv134 = trunc i16 %addr to i8
  %shl135 = shl i8 %conv134, 1
  %or137 = or i8 %shl135, %read_write
  %26 = load i16, ptr @sch_smba, align 2
  %conv139 = zext i16 %26 to i32
  %add142 = add nuw nsw i32 %conv139, -18874364
  %27 = inttoptr i32 %add142 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %or137) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %28 = load i16, ptr @sch_smba, align 2
  %conv147 = zext i16 %28 to i32
  %add150 = add nuw nsw i32 %conv147, -18874363
  %29 = inttoptr i32 %add150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %command) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp153 = icmp eq i8 %read_write, 0
  br i1 %cmp153, label %do.body156, label %do.body131.do.body237_crit_edge

do.body131.do.body237_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

do.body156:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data, align 2
  %conv161 = trunc i16 %31 to i8
  %32 = load i16, ptr @sch_smba, align 2
  %conv162 = zext i16 %32 to i32
  %add165 = add nuw nsw i32 %conv162, -18874362
  %33 = inttoptr i32 %add165 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv161) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %data, align 2
  %36 = lshr i16 %35, 8
  %conv172 = trunc i16 %36 to i8
  %37 = load i16, ptr @sch_smba, align 2
  %conv173 = zext i16 %37 to i32
  %add176 = add nuw nsw i32 %conv173, -18874361
  %38 = inttoptr i32 %add176 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv172) #7, !srcloc !120
  br label %do.body237

do.body180:                                       ; preds = %do.end57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %conv183 = trunc i16 %addr to i8
  %shl184 = shl i8 %conv183, 1
  %or186 = or i8 %shl184, %read_write
  %39 = load i16, ptr @sch_smba, align 2
  %conv188 = zext i16 %39 to i32
  %add191 = add nuw nsw i32 %conv188, -18874364
  %40 = inttoptr i32 %add191 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %or186) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  tail call void @arm_heavy_mb() #7
  %41 = load i16, ptr @sch_smba, align 2
  %conv196 = zext i16 %41 to i32
  %add199 = add nuw nsw i32 %conv196, -18874363
  %42 = inttoptr i32 %add199 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %command) #7, !srcloc !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp202 = icmp eq i8 %read_write, 0
  br i1 %cmp202, label %if.then204, label %do.body180.do.body237_crit_edge

do.body180.do.body237_crit_edge:                  ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

if.then204:                                       ; preds = %do.body180
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data, align 2
  %conv205 = zext i8 %44 to i32
  %45 = add i8 %44, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %45)
  %46 = icmp ult i8 %45, -32
  br i1 %46, label %if.then204.cleanup_crit_edge, label %do.body223.preheader

if.then204.cleanup_crit_edge:                     ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body223.preheader:                             ; preds = %if.then204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %47 = load i16, ptr @sch_smba, align 2
  %conv216 = zext i16 %47 to i32
  %add219 = add nuw nsw i32 %conv216, -18874362
  %48 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %44) #7, !srcloc !120
  br label %do.body223

do.body223:                                       ; preds = %do.body223.do.body223_crit_edge, %do.body223.preheader
  %i.0425 = phi i32 [ %inc, %do.body223.do.body223_crit_edge ], [ 1, %do.body223.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %arrayidx226 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.0425
  %49 = ptrtoint ptr %arrayidx226 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx226, align 1
  %51 = load i16, ptr @sch_smba, align 2
  %conv227 = zext i16 %51 to i32
  %add229 = add nuw nsw i32 %i.0425, 31
  %sub = add nuw i32 %add229, %conv227
  %and230 = and i32 %sub, 1048575
  %add231 = or i32 %and230, -18874368
  %52 = inttoptr i32 %add231 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %52, i8 %50) #7, !srcloc !120
  %inc = add nuw nsw i32 %i.0425, 1
  %exitcond = icmp eq i32 %i.0425, %conv205
  br i1 %exitcond, label %do.body223.do.body237_crit_edge, label %do.body223.do.body223_crit_edge

do.body223.do.body223_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body223

do.body223.do.body237_crit_edge:                  ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body237

do.end236:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %size) #10
  br label %cleanup

do.body237:                                       ; preds = %do.body223.do.body237_crit_edge, %do.body180.do.body237_crit_edge, %do.body156, %do.body131.do.body237_crit_edge, %do.body121, %do.body96.do.body237_crit_edge, %do.body86, %do.body70.do.body237_crit_edge, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_access.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_access, %do.body257)) #7
          to label %if.then251 [label %do.body257], !srcloc !112

if.then251:                                       ; preds = %do.body237
  call void @__sanitizer_cov_trace_pc() #9
  %53 = load i16, ptr @sch_smba, align 2
  %conv252 = zext i16 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_access.__UNIQUE_ID_ddebug300, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.20, i32 noundef %size, i32 noundef %conv252) #7
  br label %do.body257

do.body257:                                       ; preds = %if.then251, %do.body237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %54 = load i16, ptr @sch_smba, align 2
  %conv261 = zext i16 %54 to i32
  %add264 = or i32 %conv261, -18874368
  %55 = inttoptr i32 %add264 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %57 = and i8 %56, -80
  %58 = trunc i32 %size to i8
  %59 = and i8 %58, 7
  %conv272 = or i8 %57, %59
  %60 = load i16, ptr @sch_smba, align 2
  %conv273 = zext i16 %60 to i32
  %add276 = or i32 %conv273, -18874368
  %61 = inttoptr i32 %add276 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %conv272) #7, !srcloc !120
  %call278 = tail call fastcc i32 @sch_transaction()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %if.end281, label %do.body257.cleanup_crit_edge

do.body257.cleanup_crit_edge:                     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end281:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp283 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp286 = icmp eq i32 %size, 0
  %or.cond413 = or i1 %cmp283, %cmp286
  br i1 %or.cond413, label %if.end281.cleanup_crit_edge, label %if.end289

if.end281.cleanup_crit_edge:                      ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end289:                                        ; preds = %if.end281
  %62 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %size, label %if.end289.cleanup_crit_edge [
    i32 1, label %if.end289.sw.bb290_crit_edge
    i32 2, label %if.end289.sw.bb290_crit_edge429
    i32 3, label %sw.bb299
    i32 5, label %sw.bb321
  ]

if.end289.sw.bb290_crit_edge429:                  ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb290

if.end289.sw.bb290_crit_edge:                     ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb290

if.end289.cleanup_crit_edge:                      ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb290:                                         ; preds = %if.end289.sw.bb290_crit_edge, %if.end289.sw.bb290_crit_edge429
  %63 = load i16, ptr @sch_smba, align 2
  %conv292 = zext i16 %63 to i32
  %add295 = add nuw nsw i32 %conv292, -18874362
  %64 = inttoptr i32 %add295 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %66 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %data, align 2
  br label %cleanup

sw.bb299:                                         ; preds = %if.end289
  call void @__sanitizer_cov_trace_pc() #9
  %67 = load i16, ptr @sch_smba, align 2
  %conv301 = zext i16 %67 to i32
  %add304 = add nuw nsw i32 %conv301, -18874362
  %68 = inttoptr i32 %add304 to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  %conv308 = zext i8 %69 to i16
  %70 = load i16, ptr @sch_smba, align 2
  %conv310 = zext i16 %70 to i32
  %add313 = add nuw nsw i32 %conv310, -18874361
  %71 = inttoptr i32 %add313 to ptr
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %71) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  %conv317 = zext i8 %72 to i16
  %shl318 = shl nuw i16 %conv317, 8
  %add319 = or i16 %shl318, %conv308
  %73 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %add319, ptr %data, align 2
  br label %cleanup

sw.bb321:                                         ; preds = %if.end289
  %74 = load i16, ptr @sch_smba, align 2
  %conv323 = zext i16 %74 to i32
  %add326 = add nuw nsw i32 %conv323, -18874362
  %75 = inttoptr i32 %add326 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  %77 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %data, align 2
  %78 = add i8 %76, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %78)
  %79 = icmp ult i8 %78, -32
  br i1 %79, label %sw.bb321.cleanup_crit_edge, label %for.cond342.preheader

sw.bb321.cleanup_crit_edge:                       ; preds = %sw.bb321
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond342.preheader:                            ; preds = %sw.bb321
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %cmp345.not427 = icmp eq i8 %81, 0
  br i1 %cmp345.not427, label %for.cond342.preheader.cleanup_crit_edge, label %for.cond342.preheader.for.body347_crit_edge

for.cond342.preheader.for.body347_crit_edge:      ; preds = %for.cond342.preheader
  br label %for.body347

for.cond342.preheader.cleanup_crit_edge:          ; preds = %for.cond342.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body347:                                      ; preds = %for.body347.for.body347_crit_edge, %for.cond342.preheader.for.body347_crit_edge
  %i.1428 = phi i32 [ %inc360, %for.body347.for.body347_crit_edge ], [ 1, %for.cond342.preheader.for.body347_crit_edge ]
  %82 = load i16, ptr @sch_smba, align 2
  %conv349 = zext i16 %82 to i32
  %add351 = add nuw nsw i32 %i.1428, 31
  %sub352 = add nuw i32 %add351, %conv349
  %and353 = and i32 %sub352, 1048575
  %add354 = or i32 %and353, -18874368
  %83 = inttoptr i32 %add354 to ptr
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %83) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  %arrayidx358 = getelementptr [34 x i8], ptr %data, i32 0, i32 %i.1428
  %85 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %arrayidx358, align 1
  %inc360 = add nuw nsw i32 %i.1428, 1
  %86 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %data, align 2
  %conv344 = zext i8 %87 to i32
  %cmp345.not.not = icmp ult i32 %i.1428, %conv344
  br i1 %cmp345.not.not, label %for.body347.for.body347_crit_edge, label %for.body347.cleanup_crit_edge

for.body347.cleanup_crit_edge:                    ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body347.for.body347_crit_edge:                ; preds = %for.body347
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body347

cleanup:                                          ; preds = %for.body347.cleanup_crit_edge, %for.cond342.preheader.cleanup_crit_edge, %sw.bb321.cleanup_crit_edge, %sw.bb299, %sw.bb290, %if.end289.cleanup_crit_edge, %if.end281.cleanup_crit_edge, %do.body257.cleanup_crit_edge, %do.end236, %if.then204.cleanup_crit_edge, %if.then12, %do.body
  %retval.0 = phi i32 [ -95, %do.end236 ], [ -11, %if.then12 ], [ -22, %if.then204.cleanup_crit_edge ], [ %call278, %do.body257.cleanup_crit_edge ], [ 0, %if.end281.cleanup_crit_edge ], [ -71, %sw.bb321.cleanup_crit_edge ], [ 0, %if.end289.cleanup_crit_edge ], [ 0, %sw.bb299 ], [ 0, %sw.bb290 ], [ -11, %do.body ], [ 0, %for.cond342.preheader.cleanup_crit_edge ], [ 0, %for.body347.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sch_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 58654720
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sch_transaction() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !112

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i16, ptr @sch_smba, align 2
  %conv = zext i16 %0 to i32
  %add4 = or i32 %conv, -18874368
  %1 = inttoptr i32 %add4 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  %conv8 = zext i8 %2 to i32
  %3 = load i16, ptr @sch_smba, align 2
  %conv10 = zext i16 %3 to i32
  %add13 = add nuw nsw i32 %conv10, -18874363
  %4 = inttoptr i32 %add13 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %conv17 = zext i8 %5 to i32
  %6 = load i16, ptr @sch_smba, align 2
  %conv19 = zext i16 %6 to i32
  %add22 = add nuw nsw i32 %conv19, -18874364
  %7 = inttoptr i32 %add22 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %conv26 = zext i8 %8 to i32
  %9 = load i16, ptr @sch_smba, align 2
  %conv28 = zext i16 %9 to i32
  %add31 = add nuw nsw i32 %conv28, -18874362
  %10 = inttoptr i32 %add31 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %conv35 = zext i8 %11 to i32
  %12 = load i16, ptr @sch_smba, align 2
  %conv37 = zext i16 %12 to i32
  %add40 = add nuw nsw i32 %conv37, -18874361
  %13 = inttoptr i32 %add40 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %conv44 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug290, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.22, i32 noundef %conv8, i32 noundef %conv17, i32 noundef %conv26, i32 noundef %conv35, i32 noundef %conv44) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %15 = load i16, ptr @sch_smba, align 2
  %conv46 = zext i16 %15 to i32
  %add49 = add nuw nsw i32 %conv46, -18874367
  %16 = inttoptr i32 %add49 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %18 = and i8 %17, 15
  %and54 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool55.not = icmp eq i8 %18, 0
  br i1 %tobool55.not, label %do.end.do.body127_crit_edge, label %if.then56

do.end.do.body127_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body127

if.then56:                                        ; preds = %do.end
  %and57 = and i32 %and54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.then56.if.end78_crit_edge, label %do.body60

if.then56.if.end78_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.body60:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %if.end78)) #7
          to label %if.then74 [label %if.end78], !srcloc !112

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug291, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.23, i32 noundef %and54) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %do.body60, %if.then56.if.end78_crit_edge
  %and79 = and i32 %and54, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end78.do.body101_crit_edge, label %do.body82

if.end78.do.body101_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.body101)) #7
          to label %if.then96 [label %do.body101], !srcloc !112

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug292, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.24, i32 noundef %and54) #7
  br label %do.body101

do.body101:                                       ; preds = %if.then96, %do.body82, %if.end78.do.body101_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %19 = load i16, ptr @sch_smba, align 2
  %conv105 = zext i16 %19 to i32
  %add108 = add nuw nsw i32 %conv105, -18874367
  %20 = inttoptr i32 %add108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %18) #7, !srcloc !120
  %21 = load i16, ptr @sch_smba, align 2
  %conv111 = zext i16 %21 to i32
  %add114 = add nuw nsw i32 %conv111, -18874367
  %22 = inttoptr i32 %add114 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %24 = and i8 %23, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool120.not = icmp eq i8 %24, 0
  br i1 %tobool120.not, label %do.body101.do.body127_crit_edge, label %do.end124

do.body101.do.body127_crit_edge:                  ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body127

do.end124:                                        ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  %and119 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.25, i32 noundef %and119) #10
  br label %cleanup

do.body127:                                       ; preds = %do.body101.do.body127_crit_edge, %do.end.do.body127_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %25 = load i16, ptr @sch_smba, align 2
  %conv131 = zext i16 %25 to i32
  %add134 = or i32 %conv131, -18874368
  %26 = inttoptr i32 %add134 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %28 = or i8 %27, 16
  %29 = load i16, ptr @sch_smba, align 2
  %conv140 = zext i16 %29 to i32
  %add143 = or i32 %conv140, -18874368
  %30 = inttoptr i32 %add143 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %28) #7, !srcloc !120
  br label %do.body145

do.body145:                                       ; preds = %land.rhs.do.body145_crit_edge, %do.body127
  %retries.0 = phi i32 [ 0, %do.body127 ], [ %inc, %land.rhs.do.body145_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %31 = load i16, ptr @sch_smba, align 2
  %conv147 = zext i16 %31 to i32
  %add150 = add nuw nsw i32 %conv147, -18874367
  %32 = inttoptr i32 %add150 to ptr
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %32) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  %34 = and i8 %33, 15
  %and155 = zext i8 %34 to i32
  %and157 = and i32 %and155, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and157)
  %tobool158.not = icmp eq i32 %and157, 0
  br i1 %tobool158.not, label %do.body145.if.end167_crit_edge, label %land.rhs

do.body145.if.end167_crit_edge:                   ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

land.rhs:                                         ; preds = %do.body145
  %inc = add nuw nsw i32 %retries.0, 1
  %exitcond.not = icmp eq i32 %inc, 5001
  br i1 %exitcond.not, label %do.end166, label %land.rhs.do.body145_crit_edge

land.rhs.do.body145_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body145

do.end166:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.27) #10
  br label %if.end167

if.end167:                                        ; preds = %do.end166, %do.body145.if.end167_crit_edge
  %result.0 = phi i32 [ -110, %do.end166 ], [ 0, %do.body145.if.end167_crit_edge ]
  %and168 = and i32 %and155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and168)
  %tobool169.not = icmp eq i32 %and168, 0
  br i1 %tobool169.not, label %if.else, label %if.then170

if.then170:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.body280)) #7
          to label %if.then185 [label %do.body280], !srcloc !112

if.then185:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug293, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.29) #7
  br label %do.body280

if.else:                                          ; preds = %if.end167
  %and189 = and i32 %and155, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %if.else195, label %if.then191

if.then191:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.31) #10
  br label %do.body280

if.else195:                                       ; preds = %if.else
  %and196 = and i32 %and155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and196)
  %tobool197.not = icmp eq i32 %and196, 0
  br i1 %tobool197.not, label %if.else258, label %do.body199

do.body199:                                       ; preds = %if.else195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.body217)) #7
          to label %if.then213 [label %do.body217], !srcloc !112

if.then213:                                       ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug294, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.33) #7
  br label %do.body217

do.body217:                                       ; preds = %if.then213, %do.body199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %35 = load i16, ptr @sch_smba, align 2
  %conv221 = zext i16 %35 to i32
  %add224 = add nuw nsw i32 %conv221, -18874367
  %36 = inttoptr i32 %add224 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %34) #7, !srcloc !120
  %37 = load i16, ptr @sch_smba, align 2
  %conv227 = zext i16 %37 to i32
  %add230 = add nuw nsw i32 %conv227, -18874367
  %38 = inttoptr i32 %add230 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  %40 = and i8 %39, 7
  %and235 = zext i8 %40 to i32
  %and236 = and i32 %and235, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %do.body217.do.body280_crit_edge, label %do.body239

do.body217.do.body280_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body280

do.body239:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.body280)) #7
          to label %if.then253 [label %do.body280], !srcloc !112

if.then253:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug295, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.34, i32 noundef %and235) #7
  br label %do.body280

if.else258:                                       ; preds = %if.else195
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %do.body280)) #7
          to label %if.then273 [label %do.body280], !srcloc !112

if.then273:                                       ; preds = %if.else258
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug296, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.35) #7
  br label %do.body280

do.body280:                                       ; preds = %if.then273, %if.else258, %if.then253, %do.body239, %do.body217.do.body280_crit_edge, %if.then191, %if.then185, %if.then170
  %result.1 = phi i32 [ -5, %if.then185 ], [ -5, %if.then191 ], [ %result.0, %if.then253 ], [ %result.0, %do.body217.do.body280_crit_edge ], [ -6, %if.then273 ], [ -5, %if.then170 ], [ %result.0, %do.body239 ], [ -6, %if.else258 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sch_transaction.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sch_transaction, %cleanup)) #7
          to label %if.then294 [label %cleanup], !srcloc !112

if.then294:                                       ; preds = %do.body280
  call void @__sanitizer_cov_trace_pc() #9
  %41 = load i16, ptr @sch_smba, align 2
  %conv296 = zext i16 %41 to i32
  %add299 = or i32 %conv296, -18874368
  %42 = inttoptr i32 %add299 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %conv303 = zext i8 %43 to i32
  %44 = load i16, ptr @sch_smba, align 2
  %conv305 = zext i16 %44 to i32
  %add308 = add nuw nsw i32 %conv305, -18874363
  %45 = inttoptr i32 %add308 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  %conv312 = zext i8 %46 to i32
  %47 = load i16, ptr @sch_smba, align 2
  %conv314 = zext i16 %47 to i32
  %add317 = add nuw nsw i32 %conv314, -18874364
  %48 = inttoptr i32 %add317 to ptr
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %48) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  %conv321 = zext i8 %49 to i32
  %50 = load i16, ptr @sch_smba, align 2
  %conv323 = zext i16 %50 to i32
  %add326 = add nuw nsw i32 %conv323, -18874362
  %51 = inttoptr i32 %add326 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %conv330 = zext i8 %52 to i32
  %53 = load i16, ptr @sch_smba, align 2
  %conv332 = zext i16 %53 to i32
  %add335 = add nuw nsw i32 %conv332, -18874361
  %54 = inttoptr i32 %add335 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  %conv339 = zext i8 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sch_transaction.__UNIQUE_ID_ddebug297, ptr noundef getelementptr inbounds (%struct.i2c_adapter, ptr @sch_adapter, i32 0, i32 9), ptr noundef nonnull @.str.36, i32 noundef %conv303, i32 noundef %conv312, i32 noundef %conv321, i32 noundef %conv330, i32 noundef %conv339) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then294, %do.body280, %do.end124
  %retval.0 = phi i32 [ -11, %do.end124 ], [ %result.1, %if.then294 ], [ %result.1, %do.body280 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__param_backbone_speed, !1, !"__param_backbone_speed", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_backbone_speedtype288, !1, !"__UNIQUE_ID_backbone_speedtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_backbone_speed289, !4, !"__UNIQUE_ID_backbone_speed289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 51, i32 1}
!5 = !{ptr @__initcall__kmod_i2c_isch__302_307_smbus_sch_driver_init6, !6, !"__initcall__kmod_i2c_isch__302_307_smbus_sch_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 307, i32 1}
!7 = !{ptr @__exitcall_smbus_sch_driver_exit, !6, !"__exitcall_smbus_sch_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author303, !9, !"__UNIQUE_ID_author303", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 309, i32 1}
!10 = !{ptr @__UNIQUE_ID_description304, !11, !"__UNIQUE_ID_description304", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 310, i32 1}
!12 = !{ptr @__UNIQUE_ID_file305, !13, !"__UNIQUE_ID_file305", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 311, i32 1}
!14 = !{ptr @__UNIQUE_ID_license306, !13, !"__UNIQUE_ID_license306", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias307, !16, !"__UNIQUE_ID_alias307", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 312, i32 1}
!17 = !{ptr @__param_str_backbone_speed, !1, !"__param_str_backbone_speed", i1 false, i1 false}
!18 = !{ptr @backbone_speed, !19, !"backbone_speed", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 49, i32 12}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 301, i32 11}
!22 = !{ptr @smbus_sch_driver, !23, !"smbus_sch_driver", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 299, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 267, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @smbus_sch_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @smbus_sch_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 274, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @smbus_sch_probe.__UNIQUE_ID_ddebug301, !33, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 280, i32 3}
!38 = !{ptr @sch_smba, !39, !"sch_smba", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 47, i32 23}
!40 = !{ptr @sch_adapter, !41, !"sch_adapter", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 250, i32 27}
!42 = !{ptr @smbus_algorithm, !43, !"smbus_algorithm", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 245, i32 35}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 147, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sch_access.__UNIQUE_ID_ddebug298, !45, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 158, i32 3}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @sch_access._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @sch_access._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 163, i32 2}
!55 = !{ptr @sch_access.__UNIQUE_ID_ddebug299, !54, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!56 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 206, i32 3}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sch_access._entry.16, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sch_access._entry_ptr.19, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 209, i32 2}
!65 = !{ptr @sch_access.__UNIQUE_ID_ddebug300, !64, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 64, i32 2}
!68 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug290, !67, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 74, i32 4}
!72 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug291, !71, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 78, i32 4}
!75 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug292, !74, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 84, i32 4}
!78 = !{ptr @sch_transaction._entry, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sch_transaction._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 100, i32 3}
!82 = !{ptr @sch_transaction._entry.26, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sch_transaction._entry_ptr.28, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 105, i32 3}
!86 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug293, !85, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 110, i32 3}
!89 = !{ptr @sch_transaction._entry.30, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @sch_transaction._entry_ptr.32, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 112, i32 3}
!93 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug294, !92, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 117, i32 4}
!96 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug295, !95, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 122, i32 3}
!99 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug296, !98, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-isch.c", i32 124, i32 2}
!102 = !{ptr @sch_transaction.__UNIQUE_ID_ddebug297, !101, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{i64 2148959979, i64 2148959984, i64 2148959997, i64 2148960041, i64 2148960075, i64 2148960096}
!113 = !{i64 6851176}
!114 = !{i64 2155572057}
!115 = !{i64 6850558}
!116 = !{i64 2155575014}
!117 = !{i64 2155577128}
!118 = !{i64 6850358}
!119 = !{i64 2155580051}
!120 = !{i64 6850781}
!121 = !{i64 2155580432}
!122 = !{i64 2155580791}
!123 = !{i64 2155581172}
!124 = !{i64 2155581529}
!125 = !{i64 2155581891}
!126 = !{i64 2155582272}
!127 = !{i64 2155582629}
!128 = !{i64 2155582998}
!129 = !{i64 2155583374}
!130 = !{i64 2155583755}
!131 = !{i64 2155584112}
!132 = !{i64 2155584473}
!133 = !{i64 2155584848}
!134 = !{i64 2155589783}
!135 = !{i64 2155589566}
!136 = !{i64 2155590227}
!137 = !{i64 2155590536}
!138 = !{i64 2155590840}
!139 = !{i64 2155591149}
!140 = !{i64 2155591478}
!141 = !{i64 2155543555}
!142 = !{i64 2155543859}
!143 = !{i64 2155544163}
!144 = !{i64 2155544467}
!145 = !{i64 2155544771}
!146 = !{i64 2155545075}
!147 = !{i64 2155550201}
!148 = !{i64 2155550628}
!149 = !{i64 2155553028}
!150 = !{i64 2155552827}
!151 = !{i64 2155553455}
!152 = !{i64 2155561789}
!153 = !{i64 2155562216}
!154 = !{i64 2155570537}
!155 = !{i64 2155570841}
!156 = !{i64 2155571145}
!157 = !{i64 2155571449}
!158 = !{i64 2155571753}
