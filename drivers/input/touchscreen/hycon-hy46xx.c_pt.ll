; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/hycon-hy46xx.c_pt.bc'
source_filename = "../drivers/input/touchscreen/hycon-hy46xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hycon_hy46xx_attribute = type { %struct.device_attribute, i32, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hycon_hy46xx_data = type { ptr, ptr, %struct.touchscreen_properties, ptr, ptr, %struct.mutex, ptr, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hycon_hy46xx__290_587_hycon_hy46xx_driver_init6 = internal global ptr @hycon_hy46xx_driver_init, section ".initcall6.init", align 4
@hycon_hy46xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @hycon_hy46xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @hycon_hy46xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @hycon_hy46xx_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_hycon_hy46xx_driver_exit = internal global ptr @hycon_hy46xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [75 x i8] c"hycon_hy46xx.author=Giulio Benetti <giulio.benetti@benettiengineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [61 x i8] c"hycon_hy46xx.description=HYCON HY46XX I2C Touchscreen Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [57 x i8] c"hycon_hy46xx.file=drivers/input/touchscreen/hycon-hy46xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [28 x i8] c"hycon_hy46xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hycon_hy46xx\00", [19 x i8] zeroinitializer }, align 32
@hycon_hy46xx_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4613\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4614\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4621\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4623\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4633\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hycon,hy4635\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@hycon_hy46xx_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"hy4613\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hy4614\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hy4621\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hy4623\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hy4633\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"hy4635\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hycon_hy46xx_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/touchscreen/hycon-hy46xx.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"probing for HYCON HY46XX I2C\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr = internal global ptr @hycon_hy46xx_probe._entry, section ".printk_index", align 4
@hycon_hy46xx_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 466, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable vcc: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.10 = internal global ptr @hycon_hy46xx_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 481, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to request GPIO reset pin, error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.14 = internal global ptr @hycon_hy46xx_probe._entry.12, section ".printk_index", align 4
@hycon_hy46xx_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 495, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to allocate input device.\0A\00", [62 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.17 = internal global ptr @hycon_hy46xx_probe._entry.15, section ".printk_index", align 4
@hycon_hy46xx_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&tsdata->mutex\00", [17 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@hycon_hy46xx_i2c_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"hycon_hy46xx:504:(&hycon_hy46xx_i2c_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 506, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.22 = internal global ptr @hycon_hy46xx_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Hycon Capacitive Touch\00", [41 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 525, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to init MT slots.\0A\00", [38 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.26 = internal global ptr @hycon_hy46xx_probe._entry.24, section ".printk_index", align 4
@hycon_hy46xx_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 535, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to request touchscreen IRQ.\0A\00", [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe._entry_ptr.29 = internal global ptr @hycon_hy46xx_probe._entry.27, section ".printk_index", align 4
@hycon_hy46xx_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hycon_hy46xx_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@hycon_hy46xx_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.30, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"HYCON HY46XX initialized: IRQ %d, Reset pin %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hycon,threshold\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hycon,glove-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hycon,report-speed-hz\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hycon,noise-filter-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hycon,filter-data\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hycon,gain\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hycon,edge-offset\00", [46 x i8] zeroinitializer }, align 32
@hycon_hy46xx_get_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 347, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set default settings\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hycon_hy46xx_get_defaults\00", [38 x i8] zeroinitializer }, align 32
@hycon_hy46xx_get_defaults._entry_ptr = internal global ptr @hycon_hy46xx_get_defaults._entry, section ".printk_index", align 4
@hycon_hy46xx_get_parameters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read default settings\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hycon_hy46xx_get_parameters\00", [36 x i8] zeroinitializer }, align 32
@hycon_hy46xx_get_parameters._entry_ptr = internal global ptr @hycon_hy46xx_get_parameters._entry, section ".printk_index", align 4
@hycon_hy46xx_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.hycon_hy46xx_isr = private unnamed_addr constant [17 x i8] c"hycon_hy46xx_isr\00", align 1
@hycon_hy46xx_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @__func__.hycon_hy46xx_isr, ptr @.str.2, i32 113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to fetch data, error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@hycon_hy46xx_isr._entry_ptr = internal global ptr @hycon_hy46xx_isr._entry, section ".printk_index", align 4
@hycon_hy46xx_check_checksum._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.hycon_hy46xx_check_checksum = private unnamed_addr constant [28 x i8] c"hycon_hy46xx_check_checksum\00", align 1
@hycon_hy46xx_check_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @__func__.hycon_hy46xx_check_checksum, ptr @.str.2, i32 95, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"checksum error: 0x%02x expected, got 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@hycon_hy46xx_check_checksum._entry_ptr = internal global ptr @hycon_hy46xx_check_checksum._entry, section ".printk_index", align 4
@hycon_hy46xx_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @hycon_hy46xx_attr_threshold, ptr @hycon_hy46xx_attr_glove_enable, ptr @hycon_hy46xx_attr_report_speed, ptr @hycon_hy46xx_attr_noise_filter_enable, ptr @hycon_hy46xx_attr_filter_data, ptr @hycon_hy46xx_attr_gain, ptr @hycon_hy46xx_attr_edge_offset, ptr @hycon_hy46xx_attr_fw_version, ptr @hycon_hy46xx_attr_lib_version, ptr @hycon_hy46xx_attr_tp_information, ptr @hycon_hy46xx_attr_tp_chip_id, ptr @hycon_hy46xx_attr_bootloader_version, ptr null], [44 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_threshold = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 124, i8 -128, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_glove_enable = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 128, i8 -124, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_report_speed = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 132, i8 -120, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_noise_filter_enable = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 136, i8 -119, i8 0, i8 1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_filter_data = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 140, i8 -118, i8 0, i8 5 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_gain = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 144, i8 -110, i8 0, i8 5 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_edge_offset = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 148, i8 -109, i8 0, i8 5 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_fw_version = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 164, i8 -90, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_lib_version = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 168, i8 -89, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_tp_information = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 172, i8 -88, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_tp_chip_id = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 176, i8 -87, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@hycon_hy46xx_attr_bootloader_version = internal global { %struct.hycon_hy46xx_attribute, [60 x i8] } { %struct.hycon_hy46xx_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hycon_hy46xx_setting_show, ptr @hycon_hy46xx_setting_store }, i32 180, i8 -80, i8 0, i8 -1 }, [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"threshold\00", [22 x i8] zeroinitializer }, align 32
@hycon_hy46xx_setting_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to fetch attribute %s, error %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hycon_hy46xx_setting_show\00", [38 x i8] zeroinitializer }, align 32
@hycon_hy46xx_setting_show._entry_ptr = internal global ptr @hycon_hy46xx_setting_show._entry, section ".printk_index", align 4
@hycon_hy46xx_setting_show._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.2, i32 201, ptr @.str.50, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: read (%d) and stored value (%d) differ\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hycon_hy46xx_setting_show._entry_ptr.51 = internal global ptr @hycon_hy46xx_setting_show._entry.48, section ".printk_index", align 4
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@hycon_hy46xx_setting_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to update attribute %s, error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hycon_hy46xx_setting_store\00", [37 x i8] zeroinitializer }, align 32
@hycon_hy46xx_setting_store._entry_ptr = internal global ptr @hycon_hy46xx_setting_store._entry, section ".printk_index", align 4
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"glove_enable\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"report_speed\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"noise_filter_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"filter_data\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gain\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edge_offset\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lib_version\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tp_information\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tp_chip_id\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bootloader_version\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"hycon_hy46xx_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 577, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 579, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"hycon_hy46xx_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 566, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"hycon_hy46xx_id\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 555, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 449, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 455, i32 49 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 459, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 466, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 477, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 480, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 495, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 499, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [31 x i8] c"hycon_hy46xx_i2c_regmap_config\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 77, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 503, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 506, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 513, i32 16 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 525, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 535, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [24 x i8] c"hycon_hy46xx_attr_group\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 278, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 547, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 288, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 297, i32 44 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 303, i32 40 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 312, i32 44 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 318, i32 40 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 327, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 336, i32 40 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 347, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 432, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 112, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 93, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"hycon_hy46xx_attrs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 262, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [28 x i8] c"hycon_hy46xx_attr_threshold\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [31 x i8] c"hycon_hy46xx_attr_glove_enable\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [31 x i8] c"hycon_hy46xx_attr_report_speed\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [38 x i8] c"hycon_hy46xx_attr_noise_filter_enable\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [30 x i8] c"hycon_hy46xx_attr_filter_data\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [23 x i8] c"hycon_hy46xx_attr_gain\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [30 x i8] c"hycon_hy46xx_attr_edge_offset\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [29 x i8] c"hycon_hy46xx_attr_fw_version\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [30 x i8] c"hycon_hy46xx_attr_lib_version\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [33 x i8] c"hycon_hy46xx_attr_tp_information\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [29 x i8] c"hycon_hy46xx_attr_tp_chip_id\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [37 x i8] c"hycon_hy46xx_attr_bootloader_version\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 249, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 192, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 199, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 205, i32 36 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 237, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 250, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 251, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 252, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 253, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 254, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 255, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 256, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 257, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 258, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 259, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [44 x i8] c"../drivers/input/touchscreen/hycon-hy46xx.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 260, i32 8 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_hycon_hy46xx_driver_exit, ptr @__initcall__kmod_hycon_hy46xx__290_587_hycon_hy46xx_driver_init6, ptr @hycon_hy46xx_check_checksum._entry, ptr @hycon_hy46xx_check_checksum._entry_ptr, ptr @hycon_hy46xx_driver_exit, ptr @hycon_hy46xx_get_defaults._entry, ptr @hycon_hy46xx_get_defaults._entry_ptr, ptr @hycon_hy46xx_get_parameters._entry, ptr @hycon_hy46xx_get_parameters._entry_ptr, ptr @hycon_hy46xx_isr._entry, ptr @hycon_hy46xx_isr._entry_ptr, ptr @hycon_hy46xx_probe._entry, ptr @hycon_hy46xx_probe._entry.12, ptr @hycon_hy46xx_probe._entry.15, ptr @hycon_hy46xx_probe._entry.20, ptr @hycon_hy46xx_probe._entry.24, ptr @hycon_hy46xx_probe._entry.27, ptr @hycon_hy46xx_probe._entry.8, ptr @hycon_hy46xx_probe._entry_ptr, ptr @hycon_hy46xx_probe._entry_ptr.10, ptr @hycon_hy46xx_probe._entry_ptr.14, ptr @hycon_hy46xx_probe._entry_ptr.17, ptr @hycon_hy46xx_probe._entry_ptr.22, ptr @hycon_hy46xx_probe._entry_ptr.26, ptr @hycon_hy46xx_probe._entry_ptr.29, ptr @hycon_hy46xx_setting_show._entry, ptr @hycon_hy46xx_setting_show._entry.48, ptr @hycon_hy46xx_setting_show._entry_ptr, ptr @hycon_hy46xx_setting_show._entry_ptr.51, ptr @hycon_hy46xx_setting_store._entry, ptr @hycon_hy46xx_setting_store._entry_ptr, ptr @hycon_hy46xx_driver, ptr @.str, ptr @hycon_hy46xx_of_match, ptr @hycon_hy46xx_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @hycon_hy46xx_probe.__key, ptr @.str.18, ptr @hycon_hy46xx_probe._key, ptr @hycon_hy46xx_i2c_regmap_config, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @hycon_hy46xx_attr_group, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @hycon_hy46xx_isr._rs, ptr @.str.42, ptr @.str.43, ptr @hycon_hy46xx_check_checksum._rs, ptr @.str.44, ptr @hycon_hy46xx_attrs, ptr @hycon_hy46xx_attr_threshold, ptr @hycon_hy46xx_attr_glove_enable, ptr @hycon_hy46xx_attr_report_speed, ptr @hycon_hy46xx_attr_noise_filter_enable, ptr @hycon_hy46xx_attr_filter_data, ptr @hycon_hy46xx_attr_gain, ptr @hycon_hy46xx_attr_edge_offset, ptr @hycon_hy46xx_attr_fw_version, ptr @hycon_hy46xx_attr_lib_version, ptr @hycon_hy46xx_attr_tp_information, ptr @hycon_hy46xx_attr_tp_chip_id, ptr @hycon_hy46xx_attr_bootloader_version, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_i2c_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_get_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_get_parameters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_check_checksum._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_check_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_threshold to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_glove_enable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_report_speed to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_noise_filter_enable to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_filter_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_gain to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_edge_offset to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_fw_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_lib_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_tp_information to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_tp_chip_id to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_attr_bootloader_version to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_setting_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_setting_show._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hycon_hy46xx_setting_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hycon_hy46xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @hycon_hy46xx_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hycon_hy46xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @hycon_hy46xx_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hycon_hy46xx_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i218 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hycon_hy46xx_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hycon_hy46xx_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !173

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hycon_hy46xx_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 184, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev3, ptr noundef nonnull @.str.4) #5
  %vcc = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %vcc, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end21

if.then12:                                        ; preds = %if.end7
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.5, i32 noundef %1) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %call23 = tail call i32 @regulator_enable(ptr noundef %call9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9, i32 noundef %call23) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call.i211 = tail call i32 @devm_add_action(ptr noundef %dev3, ptr noundef nonnull @hycon_hy46xx_disable_regulator, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i, label %if.end35, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcc, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %3) #5
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  %call37 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev3, ptr noundef nonnull @.str.11, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call37, ptr %reset_gpio, align 4
  %cmp.i212 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call37 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13, i32 noundef %5) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end35
  %tobool49.not = icmp eq ptr %call37, null
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %6 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #5
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #5
  tail call void @msleep(i32 noundef 1000) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge
  %call55 = tail call ptr @devm_input_allocate_device(ptr noundef %dev3) #5
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %do.end60, label %do.body63

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16) #8
  br label %cleanup

do.body63:                                        ; preds = %if.end53
  %mutex = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.18, ptr noundef nonnull @hycon_hy46xx_probe.__key) #5
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %call.i, align 4
  %input67 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %input67 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call55, ptr %input67, align 4
  %call69 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @hycon_hy46xx_i2c_regmap_config, ptr noundef nonnull @hycon_hy46xx_probe._key, ptr noundef nonnull @.str.19) #5
  %regmap = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call69, ptr %regmap, align 4
  %cmp.i213 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %do.end75, label %if.end79

do.end75:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.21) #8
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end79:                                         ; preds = %do.body63
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !174
  %call.i.i214 = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i214)
  %tobool.not.i215 = icmp eq i32 %call.i.i214, 0
  br i1 %tobool.not.i215, label %if.then.i217, label %if.end79.if.end3.i_crit_edge

if.end79.if.end3.i_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i217:                                     ; preds = %if.end79
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %19 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i, align 4
  %call1.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 128, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i216 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i216, label %if.then.i217.do.end.i_crit_edge, label %if.end.i

if.then.i217.do.end.i_crit_edge:                  ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i:                                         ; preds = %if.then.i217
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %threshold.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %threshold.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %threshold.i, align 4
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.end.i, %if.end79.if.end3.i_crit_edge
  %call.i103.i = call zeroext i1 @device_property_present(ptr noundef %dev3, ptr noundef nonnull @.str.32) #5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %conv.i = zext i1 %call.i103.i to i32
  %call7.i = call i32 @regmap_write(ptr noundef %25, i32 noundef 132, i32 noundef %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end3.i.do.end.i_crit_edge, label %if.end11.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end11.i:                                       ; preds = %if.end3.i
  %frombool.i = zext i1 %call.i103.i to i8
  %glove_enable.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %glove_enable.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool.i, ptr %glove_enable.i, align 4
  %call.i104.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.33, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104.i)
  %tobool15.not.i = icmp eq i32 %call.i104.i, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end11.i.if.end23.i_crit_edge

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.end11.i
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i, align 4
  %call18.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 136, i32 noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.then16.i.do.end.i_crit_edge, label %if.end22.i

if.then16.i.do.end.i_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end22.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %report_speed.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %report_speed.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %report_speed.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end22.i, %if.end11.i.if.end23.i_crit_edge
  %call.i105.i = call zeroext i1 @device_property_present(ptr noundef %dev3, ptr noundef nonnull @.str.34) #5
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %conv28.i = zext i1 %call.i105.i to i32
  %call29.i = call i32 @regmap_write(ptr noundef %35, i32 noundef 137, i32 noundef %conv28.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end23.i.do.end.i_crit_edge, label %if.end33.i

if.end23.i.do.end.i_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end33.i:                                       ; preds = %if.end23.i
  %frombool25.i = zext i1 %call.i105.i to i8
  %noise_filter_enable.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %noise_filter_enable.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool25.i, ptr %noise_filter_enable.i, align 4
  %call.i106.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106.i)
  %tobool37.not.i = icmp eq i32 %call.i106.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end33.i.if.end45.i_crit_edge

if.end33.i.if.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then38.i:                                      ; preds = %if.end33.i
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  %call40.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 138, i32 noundef %40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.then38.i.do.end.i_crit_edge, label %if.end44.i

if.then38.i.do.end.i_crit_edge:                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end44.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val.i, align 4
  %filter_data.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 11
  %43 = ptrtoint ptr %filter_data.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %filter_data.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end44.i, %if.end33.i.if.end45.i_crit_edge
  %call.i107.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.36, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107.i)
  %tobool47.not.i = icmp eq i32 %call.i107.i, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %if.end45.i.if.end55.i_crit_edge

if.end45.i.if.end55.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then48.i:                                      ; preds = %if.end45.i
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i, align 4
  %call50.i = call i32 @regmap_write(ptr noundef %45, i32 noundef 146, i32 noundef %47) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.then48.i.do.end.i_crit_edge, label %if.end54.i

if.then48.i.do.end.i_crit_edge:                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end54.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  %gain.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 12
  %50 = ptrtoint ptr %gain.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %gain.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end54.i, %if.end45.i.if.end55.i_crit_edge
  %call.i108.i = call i32 @device_property_read_u32_array(ptr noundef %dev3, ptr noundef nonnull @.str.37, ptr noundef nonnull %val.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108.i)
  %tobool57.not.i = icmp eq i32 %call.i108.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end55.i.hycon_hy46xx_get_defaults.exit_crit_edge

if.end55.i.hycon_hy46xx_get_defaults.exit_crit_edge: ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %hycon_hy46xx_get_defaults.exit

if.then58.i:                                      ; preds = %if.end55.i
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i, align 4
  %call60.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 147, i32 noundef %54) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.then58.i.do.end.i_crit_edge, label %if.end64.i

if.then58.i.do.end.i_crit_edge:                   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end64.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i, align 4
  %edge_offset.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 13
  %57 = ptrtoint ptr %edge_offset.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %edge_offset.i, align 4
  br label %hycon_hy46xx_get_defaults.exit

do.end.i:                                         ; preds = %if.then58.i.do.end.i_crit_edge, %if.then48.i.do.end.i_crit_edge, %if.then38.i.do.end.i_crit_edge, %if.end23.i.do.end.i_crit_edge, %if.then16.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge, %if.then.i217.do.end.i_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %dev66.i = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66.i, ptr noundef nonnull @.str.38) #8
  br label %hycon_hy46xx_get_defaults.exit

hycon_hy46xx_get_defaults.exit:                   ; preds = %do.end.i, %if.end64.i, %if.end55.i.hycon_hy46xx_get_defaults.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i218) #5
  %60 = ptrtoint ptr %val.i218 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %val.i218, align 4, !annotation !174
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i220 = call i32 @regmap_read(ptr noundef %62, i32 noundef 128, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %cmp.i221 = icmp slt i32 %call.i220, 0
  br i1 %cmp.i221, label %hycon_hy46xx_get_defaults.exit.do.end.i236_crit_edge, label %if.end.i223

hycon_hy46xx_get_defaults.exit.do.end.i236_crit_edge: ; preds = %hycon_hy46xx_get_defaults.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end.i223:                                      ; preds = %hycon_hy46xx_get_defaults.exit
  %63 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i218, align 4
  %threshold.i222 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 7
  %65 = ptrtoint ptr %threshold.i222 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %threshold.i222, align 4
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %67, i32 noundef 132, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i223.do.end.i236_crit_edge, label %if.end5.i

if.end.i223.do.end.i236_crit_edge:                ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end5.i:                                        ; preds = %if.end.i223
  %68 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i = icmp ne i32 %69, 0
  %glove_enable.i224 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 8
  %frombool.i225 = zext i1 %tobool.i to i8
  %70 = ptrtoint ptr %glove_enable.i224 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %frombool.i225, ptr %glove_enable.i224, align 4
  %71 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap, align 4
  %call7.i226 = call i32 @regmap_read(ptr noundef %72, i32 noundef 136, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i226)
  %cmp8.i227 = icmp slt i32 %call7.i226, 0
  br i1 %cmp8.i227, label %if.end5.i.do.end.i236_crit_edge, label %if.end10.i

if.end5.i.do.end.i236_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end10.i:                                       ; preds = %if.end5.i
  %73 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %val.i218, align 4
  %report_speed.i228 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 9
  %75 = ptrtoint ptr %report_speed.i228 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %report_speed.i228, align 4
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %77, i32 noundef 137, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.do.end.i236_crit_edge, label %if.end15.i

if.end10.i.do.end.i236_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end15.i:                                       ; preds = %if.end10.i
  %78 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i218, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool16.i = icmp ne i32 %79, 0
  %noise_filter_enable.i229 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 10
  %frombool17.i = zext i1 %tobool16.i to i8
  %80 = ptrtoint ptr %noise_filter_enable.i229 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool17.i, ptr %noise_filter_enable.i229, align 4
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %82, i32 noundef 138, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end15.i.do.end.i236_crit_edge, label %if.end22.i231

if.end15.i.do.end.i236_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end22.i231:                                    ; preds = %if.end15.i
  %83 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i218, align 4
  %filter_data.i230 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 11
  %85 = ptrtoint ptr %filter_data.i230 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %filter_data.i230, align 4
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %87, i32 noundef 146, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end22.i231.do.end.i236_crit_edge, label %if.end27.i

if.end22.i231.do.end.i236_crit_edge:              ; preds = %if.end22.i231
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end27.i:                                       ; preds = %if.end22.i231
  %88 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %val.i218, align 4
  %gain.i232 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 12
  %90 = ptrtoint ptr %gain.i232 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %gain.i232, align 4
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call29.i233 = call i32 @regmap_read(ptr noundef %92, i32 noundef 147, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i233)
  %cmp30.i234 = icmp slt i32 %call29.i233, 0
  br i1 %cmp30.i234, label %if.end27.i.do.end.i236_crit_edge, label %if.end32.i

if.end27.i.do.end.i236_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end32.i:                                       ; preds = %if.end27.i
  %93 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %val.i218, align 4
  %edge_offset.i235 = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 13
  %95 = ptrtoint ptr %edge_offset.i235 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %edge_offset.i235, align 4
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call34.i = call i32 @regmap_read(ptr noundef %97, i32 noundef 148, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end32.i.do.end.i236_crit_edge, label %if.end37.i

if.end32.i.do.end.i236_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end37.i:                                       ; preds = %if.end32.i
  %98 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val.i218, align 4
  %rx_number_used.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 14
  %100 = ptrtoint ptr %rx_number_used.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %rx_number_used.i, align 4
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call39.i = call i32 @regmap_read(ptr noundef %102, i32 noundef 149, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.end37.i.do.end.i236_crit_edge, label %if.end42.i

if.end37.i.do.end.i236_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end42.i:                                       ; preds = %if.end37.i
  %103 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %val.i218, align 4
  %tx_number_used.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 15
  %105 = ptrtoint ptr %tx_number_used.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %tx_number_used.i, align 4
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call44.i = call i32 @regmap_read(ptr noundef %107, i32 noundef 165, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end42.i.do.end.i236_crit_edge, label %if.end47.i

if.end42.i.do.end.i236_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end47.i:                                       ; preds = %if.end42.i
  %108 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val.i218, align 4
  %power_mode.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 16
  %110 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %power_mode.i, align 4
  %111 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap, align 4
  %call49.i = call i32 @regmap_read(ptr noundef %112, i32 noundef 166, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %if.end47.i.do.end.i236_crit_edge, label %if.end52.i

if.end47.i.do.end.i236_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end52.i:                                       ; preds = %if.end47.i
  %113 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %val.i218, align 4
  %fw_version.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 17
  %115 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %fw_version.i, align 4
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call54.i = call i32 @regmap_read(ptr noundef %117, i32 noundef 167, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %if.end52.i.do.end.i236_crit_edge, label %if.end57.i

if.end52.i.do.end.i236_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end57.i:                                       ; preds = %if.end52.i
  %118 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i218, align 4
  %lib_version.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 18
  %120 = ptrtoint ptr %lib_version.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %lib_version.i, align 4
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %call59.i = call i32 @regmap_read(ptr noundef %122, i32 noundef 168, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end57.i.do.end.i236_crit_edge, label %if.end62.i

if.end57.i.do.end.i236_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end62.i:                                       ; preds = %if.end57.i
  %123 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %val.i218, align 4
  %tp_information.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 19
  %125 = ptrtoint ptr %tp_information.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %tp_information.i, align 4
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %call64.i = call i32 @regmap_read(ptr noundef %127, i32 noundef 169, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp65.i = icmp slt i32 %call64.i, 0
  br i1 %cmp65.i, label %if.end62.i.do.end.i236_crit_edge, label %if.end67.i

if.end62.i.do.end.i236_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end67.i:                                       ; preds = %if.end62.i
  %128 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i218, align 4
  %tp_chip_id.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 20
  %130 = ptrtoint ptr %tp_chip_id.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %tp_chip_id.i, align 4
  %131 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap, align 4
  %call69.i = call i32 @regmap_read(ptr noundef %132, i32 noundef 176, ptr noundef nonnull %val.i218) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %cmp70.i = icmp slt i32 %call69.i, 0
  br i1 %cmp70.i, label %if.end67.i.do.end.i236_crit_edge, label %if.end72.i

if.end67.i.do.end.i236_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i236

if.end72.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %val.i218 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val.i218, align 4
  %bootloader_version.i = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 21
  %135 = ptrtoint ptr %bootloader_version.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %bootloader_version.i, align 4
  br label %hycon_hy46xx_get_parameters.exit

do.end.i236:                                      ; preds = %if.end67.i.do.end.i236_crit_edge, %if.end62.i.do.end.i236_crit_edge, %if.end57.i.do.end.i236_crit_edge, %if.end52.i.do.end.i236_crit_edge, %if.end47.i.do.end.i236_crit_edge, %if.end42.i.do.end.i236_crit_edge, %if.end37.i.do.end.i236_crit_edge, %if.end32.i.do.end.i236_crit_edge, %if.end27.i.do.end.i236_crit_edge, %if.end22.i231.do.end.i236_crit_edge, %if.end15.i.do.end.i236_crit_edge, %if.end10.i.do.end.i236_crit_edge, %if.end5.i.do.end.i236_crit_edge, %if.end.i223.do.end.i236_crit_edge, %hycon_hy46xx_get_defaults.exit.do.end.i236_crit_edge
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #8
  br label %hycon_hy46xx_get_parameters.exit

hycon_hy46xx_get_parameters.exit:                 ; preds = %do.end.i236, %if.end72.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i218) #5
  %138 = ptrtoint ptr %call55 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.23, ptr %call55, align 8
  %id81 = getelementptr inbounds %struct.input_dev, ptr %call55, i32 0, i32 3
  %139 = ptrtoint ptr %id81 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 24, ptr %id81, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call55, i32 0, i32 40, i32 1
  %140 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %dev3, ptr %parent, align 8
  call void @input_set_abs_params(ptr noundef nonnull %call55, i32 noundef 53, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #5
  call void @input_set_abs_params(ptr noundef nonnull %call55, i32 noundef 54, i32 noundef 0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #5
  %prop = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %call.i, i32 0, i32 2
  call void @touchscreen_parse_properties(ptr noundef nonnull %call55, i1 noundef zeroext true, ptr noundef %prop) #5
  %call84 = call i32 @input_mt_init_slots(ptr noundef nonnull %call55, i32 noundef 11, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %hycon_hy46xx_get_parameters.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.25) #8
  br label %cleanup

if.end91:                                         ; preds = %hycon_hy46xx_get_parameters.exit
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %141 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %142 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %irq, align 4
  %name93 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call94 = call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %143, ptr noundef null, ptr noundef nonnull @hycon_hy46xx_isr, i32 noundef 8192, ptr noundef %name93, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.28) #8
  br label %cleanup

if.end101:                                        ; preds = %if.end91
  %call103 = call i32 @devm_device_add_group(ptr noundef %dev3, ptr noundef nonnull @hycon_hy46xx_attr_group) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end106:                                        ; preds = %if.end101
  %call107 = call i32 @input_register_device(ptr noundef nonnull %call55) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.body111, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body111:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hycon_hy46xx_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hycon_hy46xx_probe, %if.then123)) #5
          to label %cleanup [label %if.then123], !srcloc !173

if.then123:                                       ; preds = %do.body111
  %144 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %irq, align 4
  %146 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reset_gpio, align 4
  %tobool127.not = icmp eq ptr %147, null
  br i1 %tobool127.not, label %if.then123.cond.end_crit_edge, label %cond.true

if.then123.cond.end_crit_edge:                    ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #7
  %call129 = call i32 @desc_to_gpio(ptr noundef nonnull %147) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then123.cond.end_crit_edge
  %cond = phi i32 [ %call129, %cond.true ], [ -1, %if.then123.cond.end_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hycon_hy46xx_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev3, ptr noundef nonnull @.str.30, i32 noundef %145, i32 noundef %cond) #5
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.body111, %if.end106.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end99, %do.end89, %do.end75, %do.end60, %if.then40, %devm_add_action_or_reset.exit, %do.end28, %do.end18, %if.then12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end28 ], [ %5, %if.then40 ], [ %15, %do.end75 ], [ %call84, %do.end89 ], [ %call94, %do.end99 ], [ -12, %do.end60 ], [ -12, %do.end.cleanup_crit_edge ], [ %1, %do.end18 ], [ -517, %if.then12.cleanup_crit_edge ], [ %call.i211, %devm_add_action_or_reset.exit ], [ %call103, %if.end101.cleanup_crit_edge ], [ %call107, %if.end106.cleanup_crit_edge ], [ 0, %cond.end ], [ 0, %do.body111 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hycon_hy46xx_disable_regulator(ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vcc = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %vcc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcc, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hycon_hy46xx_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %rdbuf = alloca [68 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %rdbuf) #5
  %2 = call ptr @memset(ptr %rdbuf, i32 0, i32 68)
  %regmap = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %dev_id, i32 0, i32 6
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %rdbuf, i32 noundef 68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  %call3 = call i32 @___ratelimit(ptr noundef nonnull @hycon_hy46xx_isr._rs, ptr noundef nonnull @__func__.hycon_hy46xx_isr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body.out_crit_edge, label %do.end

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %call) #8
  br label %out

if.end9:                                          ; preds = %entry
  %arrayidx.i = getelementptr inbounds i8, ptr %rdbuf, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp27.i = icmp ugt i8 %6, 2
  br i1 %cmp27.i, label %if.end9.for.body.i_crit_edge, label %if.end9.for.end.i_crit_edge

if.end9.for.end.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 2, %if.end9.for.body.i_crit_edge ]
  %chksum.028.i = phi i32 [ %phi.cast.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %arrayidx2.i = getelementptr i8, ptr %rdbuf, i32 %i.029.i
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %8 to i32
  %add.i = add nuw nsw i32 %chksum.028.i, %conv3.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %phi.cast.i = and i32 %add.i, 255
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end9.for.end.i_crit_edge
  %chksum.0.lcssa.i = phi i32 [ 0, %if.end9.for.end.i_crit_edge ], [ %phi.cast.i, %for.body.i.for.end.i_crit_edge ]
  %arrayidx7.i = getelementptr inbounds i8, ptr %rdbuf, i32 1
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %chksum.0.lcssa.i, i32 %conv8.i)
  %cmp9.i = icmp eq i32 %chksum.0.lcssa.i, %conv8.i
  br i1 %cmp9.i, label %for.cond.preheader, label %do.body.i

for.cond.preheader:                               ; preds = %for.end.i
  %input = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %dev_id, i32 0, i32 1
  %prop = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %dev_id, i32 0, i32 2
  br label %for.body

do.body.i:                                        ; preds = %for.end.i
  %call.i = call i32 @___ratelimit(ptr noundef nonnull @hycon_hy46xx_check_checksum._rs, ptr noundef nonnull @__func__.hycon_hy46xx_check_checksum) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i.out_crit_edge, label %do.end.i

do.body.i.out_crit_edge:                          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7.i, align 1
  %conv15.i = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %chksum.0.lcssa.i, i32 noundef %conv15.i) #8
  br label %out

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.060 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %mul = mul nuw nsw i32 %i.060, 6
  %add = add nuw nsw i32 %mul, 3
  %arrayidx = getelementptr [68 x i8], ptr %rdbuf, i32 0, i32 %add
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = lshr i8 %16, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp15 = icmp eq i8 %17, 3
  br i1 %cmp15, label %for.body.cleanup_crit_edge, label %if.end18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %arrayidx, align 1
  %add.ptr = getelementptr i8, ptr %arrayidx, i32 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr, align 1
  %sum.shift = lshr i16 %21, 12
  %22 = zext i16 %sum.shift to i32
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %24, i32 noundef 3, i32 noundef 47, i32 noundef %22) #5
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %cmp28 = icmp ne i8 %17, 1
  %call30 = call zeroext i1 @input_mt_report_slot_state(ptr noundef %26, i32 noundef 0, i1 noundef zeroext %cmp28) #5
  br i1 %call30, label %if.then31, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %27 = and i16 %21, 4095
  %and23 = zext i16 %27 to i32
  %28 = and i16 %19, 4095
  %and = zext i16 %28 to i32
  %29 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input, align 4
  call void @touchscreen_report_pos(ptr noundef %30, ptr noundef %prop, i32 noundef %and, i32 noundef %and23, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end18.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input, align 4
  call void @input_mt_report_pointer_emulation(ptr noundef %32, i1 noundef zeroext false) #5
  %33 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %for.end, %do.end.i, %do.body.i.out_crit_edge, %do.end, %do.body.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %rdbuf) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hycon_hy46xx_setting_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !174
  %mutex = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 2
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %address, align 4
  %conv = zext i8 %8 to i32
  %call5 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dattr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.46, ptr noundef %12, i32 noundef %call5) #8
  br label %out

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr4, align 1
  %conv10 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv10)
  %cmp11.not = icmp eq i32 %14, %conv10
  br i1 %cmp11.not, label %if.end.if.end23_crit_edge, label %do.end16

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dattr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.49, ptr noundef %20, i32 noundef %14, i32 noundef %conv10) #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %conv22 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv22, ptr %add.ptr4, align 1
  br label %if.end23

if.end23:                                         ; preds = %do.end16, %if.end.if.end23_crit_edge
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %call24 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.52, i32 noundef %25) #5
  br label %out

out:                                              ; preds = %if.end23, %do.end
  %count.0 = phi i32 [ 0, %do.end ], [ %call24, %if.end23 ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool.not, i32 %count.0, i32 %call5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hycon_hy46xx_setting_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %field_offset = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 1
  %2 = ptrtoint ptr %field_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %field_offset, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !174
  %mutex = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call5 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %limit_low = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 3
  %7 = ptrtoint ptr %limit_low to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %limit_low, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp = icmp ult i32 %6, %conv
  br i1 %cmp, label %if.end.out.thread_crit_edge, label %lor.lhs.false

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

lor.lhs.false:                                    ; preds = %if.end
  %limit_high = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 4
  %9 = ptrtoint ptr %limit_high to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %limit_high, align 2
  %conv7 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv7)
  %cmp8 = icmp ugt i32 %6, %conv7
  br i1 %cmp8, label %lor.lhs.false.out.thread_crit_edge, label %if.end11

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end11:                                         ; preds = %lor.lhs.false
  %regmap = getelementptr inbounds %struct.hycon_hy46xx_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %address = getelementptr inbounds %struct.hycon_hy46xx_attribute, ptr %dattr, i32 0, i32 2
  %13 = ptrtoint ptr %address to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %address, align 4
  %conv12 = zext i8 %14 to i32
  %call13 = call i32 @regmap_write(ptr noundef %12, i32 noundef %conv12, i32 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %out

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %dattr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dattr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.53, ptr noundef %18, i32 noundef %call13) #8
  br label %out.thread

out.thread:                                       ; preds = %do.end, %lor.lhs.false.out.thread_crit_edge, %if.end.out.thread_crit_edge, %entry.out.thread_crit_edge
  %error.0.ph = phi i32 [ -34, %if.end.out.thread_crit_edge ], [ -34, %lor.lhs.false.out.thread_crit_edge ], [ %call13, %do.end ], [ %call5, %entry.out.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %22

out:                                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %conv21 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv21, ptr %add.ptr4, align 1
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool23.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool23.not, i32 %count, i32 %call13
  br label %22

22:                                               ; preds = %out, %out.thread
  %23 = phi i32 [ %error.0.ph, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !103, !105, !107, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162}
!llvm.module.flags = !{!164, !165, !166, !167, !168, !169, !170, !171}
!llvm.ident = !{!172}

!0 = !{ptr @__initcall__kmod_hycon_hy46xx__290_587_hycon_hy46xx_driver_init6, !1, !"__initcall__kmod_hycon_hy46xx__290_587_hycon_hy46xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 587, i32 1}
!2 = !{ptr @__exitcall_hycon_hy46xx_driver_exit, !1, !"__exitcall_hycon_hy46xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 589, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 590, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 591, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 579, i32 11}
!12 = !{ptr @hycon_hy46xx_driver, !13, !"hycon_hy46xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 577, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 449, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @hycon_hy46xx_probe.__UNIQUE_ID_ddebug288, !15, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 455, i32 49}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 459, i32 4}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @hycon_hy46xx_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @hycon_hy46xx_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 466, i32 3}
!29 = !{ptr @hycon_hy46xx_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hycon_hy46xx_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 477, i32 12}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 480, i32 3}
!35 = !{ptr @hycon_hy46xx_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @hycon_hy46xx_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 495, i32 3}
!39 = !{ptr @hycon_hy46xx_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @hycon_hy46xx_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @hycon_hy46xx_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 499, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hycon_hy46xx_probe._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 503, i32 19}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 506, i32 3}
!49 = !{ptr @hycon_hy46xx_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @hycon_hy46xx_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 513, i32 16}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 525, i32 3}
!55 = !{ptr @hycon_hy46xx_probe._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hycon_hy46xx_probe._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 535, i32 3}
!59 = !{ptr @hycon_hy46xx_probe._entry.27, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @hycon_hy46xx_probe._entry_ptr.29, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 547, i32 2}
!63 = !{ptr @hycon_hy46xx_probe.__UNIQUE_ID_ddebug289, !62, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!64 = !{ptr @hycon_hy46xx_i2c_regmap_config, !65, !"hycon_hy46xx_i2c_regmap_config", i1 false, i1 false}
!65 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 77, i32 35}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 288, i32 40}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 297, i32 44}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 303, i32 40}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 312, i32 44}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 318, i32 40}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 327, i32 40}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 336, i32 40}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 347, i32 2}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @hycon_hy46xx_get_defaults._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @hycon_hy46xx_get_defaults._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 432, i32 2}
!87 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @hycon_hy46xx_get_parameters._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @hycon_hy46xx_get_parameters._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 112, i32 3}
!92 = !{ptr @hycon_hy46xx_isr._rs, !91, !"_rs", i1 false, i1 false}
!93 = !{ptr @__func__.hycon_hy46xx_isr, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @hycon_hy46xx_isr._entry, !91, !"_entry", i1 false, i1 false}
!96 = !{ptr @hycon_hy46xx_isr._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @hycon_hy46xx_check_checksum._rs, !98, !"_rs", i1 false, i1 false}
!98 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 93, i32 2}
!99 = !{ptr @__func__.hycon_hy46xx_check_checksum, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @hycon_hy46xx_check_checksum._entry, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @hycon_hy46xx_check_checksum._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @hycon_hy46xx_attr_group, !104, !"hycon_hy46xx_attr_group", i1 false, i1 false}
!104 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 278, i32 37}
!105 = !{ptr @hycon_hy46xx_attrs, !106, !"hycon_hy46xx_attrs", i1 false, i1 false}
!106 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 262, i32 26}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 249, i32 8}
!109 = !{ptr @hycon_hy46xx_attr_threshold, !108, !"hycon_hy46xx_attr_threshold", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 192, i32 3}
!112 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hycon_hy46xx_setting_show._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @hycon_hy46xx_setting_show._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 199, i32 3}
!117 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @hycon_hy46xx_setting_show._entry.48, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @hycon_hy46xx_setting_show._entry_ptr.51, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 205, i32 36}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 237, i32 3}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @hycon_hy46xx_setting_store._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @hycon_hy46xx_setting_store._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 250, i32 8}
!129 = !{ptr @hycon_hy46xx_attr_glove_enable, !128, !"hycon_hy46xx_attr_glove_enable", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 251, i32 8}
!132 = !{ptr @hycon_hy46xx_attr_report_speed, !131, !"hycon_hy46xx_attr_report_speed", i1 false, i1 false}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 252, i32 8}
!135 = !{ptr @hycon_hy46xx_attr_noise_filter_enable, !134, !"hycon_hy46xx_attr_noise_filter_enable", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 253, i32 8}
!138 = !{ptr @hycon_hy46xx_attr_filter_data, !137, !"hycon_hy46xx_attr_filter_data", i1 false, i1 false}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 254, i32 8}
!141 = !{ptr @hycon_hy46xx_attr_gain, !140, !"hycon_hy46xx_attr_gain", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 255, i32 8}
!144 = !{ptr @hycon_hy46xx_attr_edge_offset, !143, !"hycon_hy46xx_attr_edge_offset", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 256, i32 8}
!147 = !{ptr @hycon_hy46xx_attr_fw_version, !146, !"hycon_hy46xx_attr_fw_version", i1 false, i1 false}
!148 = !{ptr @.str.62, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 257, i32 8}
!150 = !{ptr @hycon_hy46xx_attr_lib_version, !149, !"hycon_hy46xx_attr_lib_version", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 258, i32 8}
!153 = !{ptr @hycon_hy46xx_attr_tp_information, !152, !"hycon_hy46xx_attr_tp_information", i1 false, i1 false}
!154 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 259, i32 8}
!156 = !{ptr @hycon_hy46xx_attr_tp_chip_id, !155, !"hycon_hy46xx_attr_tp_chip_id", i1 false, i1 false}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 260, i32 8}
!159 = !{ptr @hycon_hy46xx_attr_bootloader_version, !158, !"hycon_hy46xx_attr_bootloader_version", i1 false, i1 false}
!160 = !{ptr @hycon_hy46xx_of_match, !161, !"hycon_hy46xx_of_match", i1 false, i1 false}
!161 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 566, i32 34}
!162 = !{ptr @hycon_hy46xx_id, !163, !"hycon_hy46xx_id", i1 false, i1 false}
!163 = !{!"../drivers/input/touchscreen/hycon-hy46xx.c", i32 555, i32 35}
!164 = !{i32 1, !"wchar_size", i32 2}
!165 = !{i32 1, !"min_enum_size", i32 4}
!166 = !{i32 8, !"branch-target-enforcement", i32 0}
!167 = !{i32 8, !"sign-return-address", i32 0}
!168 = !{i32 8, !"sign-return-address-all", i32 0}
!169 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!170 = !{i32 7, !"uwtable", i32 1}
!171 = !{i32 7, !"frame-pointer", i32 2}
!172 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!173 = !{i64 2148770132, i64 2148770137, i64 2148770150, i64 2148770194, i64 2148770228, i64 2148770249}
!174 = !{!"auto-init"}
