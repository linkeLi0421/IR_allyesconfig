; ModuleID = '/llk/IR_all_yes/drivers/extcon/extcon-ptn5150.c_pt.bc'
source_filename = "../drivers/extcon/extcon-ptn5150.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.ptn5150_info = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.work_struct, %struct.mutex }

@__initcall__kmod_extcon_ptn5150__309_318_ptn5150_i2c_driver_init6 = internal global ptr @ptn5150_i2c_driver_init, section ".initcall6.init", align 4
@ptn5150_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ptn5150_i2c_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ptn5150_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ptn5150_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ptn5150_i2c_driver_exit = internal global ptr @ptn5150_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [62 x i8] c"extcon_ptn5150.description=NXP PTN5150 CC logic Extcon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [71 x i8] c"extcon_ptn5150.author=Vijai Kumar K <vijaikumar.kanagarajan@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [60 x i8] c"extcon_ptn5150.author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [50 x i8] c"extcon_ptn5150.file=drivers/extcon/extcon-ptn5150\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [30 x i8] c"extcon_ptn5150.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ptn5150\00", [24 x i8] zeroinitializer }, align 32
@ptn5150_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,ptn5150\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ptn5150_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ptn5150\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No VBUS GPIO, ignoring VBUS control\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ptn5150_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/extcon/extcon-ptn5150.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry_ptr = internal global ptr @ptn5150_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get VBUS GPIO\0A\00", [39 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&info->mutex\00", [19 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&info->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ptn5150_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"extcon_ptn5150:229:(&ptn5150_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get INT GPIO\0A\00", [40 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 246, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get INTB IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry_ptr.18 = internal global ptr @ptn5150_i2c_probe._entry.15, section ".printk_index", align 4
@ptn5150_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 257, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request handler for INTB IRQ\0A\00", [56 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry_ptr.21 = internal global ptr @ptn5150_i2c_probe._entry.19, section ".printk_index", align 4
@ptn5150_extcon_cable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 264, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to allocate memory for extcon\0A\00", [58 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry_ptr.24 = internal global ptr @ptn5150_i2c_probe._entry.22, section ".printk_index", align 4
@ptn5150_i2c_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 271, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to register extcon device\0A\00", [62 x i8] zeroinitializer }, align 32
@ptn5150_i2c_probe._entry_ptr.27 = internal global ptr @ptn5150_i2c_probe._entry.25, section ".printk_index", align 4
@ptn5150_irq_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 119, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read INT STATUS %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ptn5150_irq_work\00", [47 x i8] zeroinitializer }, align 32
@ptn5150_irq_work._entry_ptr = internal global ptr @ptn5150_irq_work._entry, section ".printk_index", align 4
@ptn5150_irq_work._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 144, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read INT REG STATUS %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ptn5150_irq_work._entry_ptr.32 = internal global ptr @ptn5150_irq_work._entry.30, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ptn5150_init_dev_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 169, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read DEVICE_ID %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ptn5150_init_dev_type\00", [42 x i8] zeroinitializer }, align 32
@ptn5150_init_dev_type._entry_ptr = internal global ptr @ptn5150_init_dev_type._entry, section ".printk_index", align 4
@ptn5150_init_dev_type.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"extcon_ptn5150\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Device type: version: 0x%x, vendor: 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@ptn5150_init_dev_type._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.34, ptr @.str.4, i32 183, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to read PTN5150_REG_INT_STATUS %d\0A\00", [54 x i8] zeroinitializer }, align 32
@ptn5150_init_dev_type._entry_ptr.39 = internal global ptr @ptn5150_init_dev_type._entry.37, section ".printk_index", align 4
@ptn5150_init_dev_type._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.34, ptr @.str.4, i32 190, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to read PTN5150_REG_INT_REG_STATUS %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ptn5150_init_dev_type._entry_ptr.42 = internal global ptr @ptn5150_init_dev_type._entry.40, section ".printk_index", align 4
@ptn5150_check_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 77, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read CC STATUS %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ptn5150_check_state\00", [44 x i8] zeroinitializer }, align 32
@ptn5150_check_state._entry_ptr = internal global ptr @ptn5150_check_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c"ptn5150_i2c_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 310, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 312, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"ptn5150_dt_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 298, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"ptn5150_i2c_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 304, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 214, i32 47 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 218, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 221, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 225, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 227, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [22 x i8] c"ptn5150_regmap_config\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 64, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 229, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 232, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 238, i32 47 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 241, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 246, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 257, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"ptn5150_extcon_cable\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 58, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 264, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 271, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 119, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 143, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 169, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 175, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 181, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 189, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [35 x i8] c"../drivers/extcon/extcon-ptn5150.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 77, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ptn5150_i2c_driver_exit, ptr @__initcall__kmod_extcon_ptn5150__309_318_ptn5150_i2c_driver_init6, ptr @ptn5150_check_state._entry, ptr @ptn5150_check_state._entry_ptr, ptr @ptn5150_i2c_driver_exit, ptr @ptn5150_i2c_probe._entry, ptr @ptn5150_i2c_probe._entry.15, ptr @ptn5150_i2c_probe._entry.19, ptr @ptn5150_i2c_probe._entry.22, ptr @ptn5150_i2c_probe._entry.25, ptr @ptn5150_i2c_probe._entry_ptr, ptr @ptn5150_i2c_probe._entry_ptr.18, ptr @ptn5150_i2c_probe._entry_ptr.21, ptr @ptn5150_i2c_probe._entry_ptr.24, ptr @ptn5150_i2c_probe._entry_ptr.27, ptr @ptn5150_init_dev_type._entry, ptr @ptn5150_init_dev_type._entry.37, ptr @ptn5150_init_dev_type._entry.40, ptr @ptn5150_init_dev_type._entry_ptr, ptr @ptn5150_init_dev_type._entry_ptr.39, ptr @ptn5150_init_dev_type._entry_ptr.42, ptr @ptn5150_irq_work._entry, ptr @ptn5150_irq_work._entry.30, ptr @ptn5150_irq_work._entry_ptr, ptr @ptn5150_irq_work._entry_ptr.32, ptr @ptn5150_i2c_driver, ptr @.str, ptr @ptn5150_dt_match, ptr @ptn5150_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ptn5150_i2c_probe.__key, ptr @.str.8, ptr @ptn5150_i2c_probe.__key.9, ptr @.str.10, ptr @ptn5150_i2c_probe._key, ptr @ptn5150_regmap_config, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @ptn5150_extcon_cable, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_extcon_cable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_i2c_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_irq_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_irq_work._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_init_dev_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_init_dev_type._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_init_dev_type._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn5150_check_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn5150_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ptn5150_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ptn5150_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ptn5150_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn5150_i2c_probe(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 164, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %i2c9 = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %i2c9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %i2c, ptr %i2c9, align 4
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #5
  %vbus_gpiod = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %vbus_gpiod, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end6.do.body22_crit_edge

if.end6.do.body22_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body22

if.then14:                                        ; preds = %if.end6
  %cmp = icmp eq ptr %call11, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %6 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vbus_gpiod, align 4
  br label %do.body22

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call11 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.7) #5
  br label %cleanup

do.body22:                                        ; preds = %do.end, %if.end6.do.body22_crit_edge
  %mutex = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @ptn5150_i2c_probe.__key) #5
  %irq_work = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #5
  %8 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @ptn5150_i2c_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry29 = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %entry29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry29, ptr %entry29, align 4
  %prev.i = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 7, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry29, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ptn5150_irq_work, ptr %func, align 4
  %call33 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ptn5150_regmap_config, ptr noundef nonnull @ptn5150_i2c_probe._key, ptr noundef nonnull @.str.11) #5
  %regmap = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call33, ptr %regmap, align 4
  %cmp.i174 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then36, label %if.end41

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = ptrtoint ptr %call33 to i32
  %call40 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %14, i32 noundef %15, ptr noundef nonnull @.str.12) #5
  br label %cleanup

if.end41:                                         ; preds = %do.body22
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp42 = icmp sgt i32 %17, 0
  br i1 %cmp42, label %if.then43, label %if.else46

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %irq45 = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %irq45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %irq45, align 4
  br label %if.end67

if.else46:                                        ; preds = %if.end41
  %call48 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 1) #5
  %int_gpiod = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %int_gpiod to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call48, ptr %int_gpiod, align 4
  %cmp.i175 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %call48 to i32
  %call54 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %20, ptr noundef nonnull @.str.14) #5
  br label %cleanup

if.end55:                                         ; preds = %if.else46
  %call57 = tail call i32 @gpiod_to_irq(ptr noundef %call48) #5
  %irq58 = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %irq58 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call57, ptr %irq58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp60 = icmp slt i32 %call57, 0
  br i1 %cmp60, label %do.end64, label %if.end55.if.end67_crit_edge

if.end55.if.end67_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  %22 = ptrtoint ptr %irq58 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq58, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.end55.if.end67_crit_edge, %if.then43
  %irq68 = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %irq68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq68, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 2
  %call69 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %25, ptr noundef null, ptr noundef nonnull @ptn5150_irq_handler, i32 noundef 8194, ptr noundef %name, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %do.end74, label %if.end75

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end75:                                         ; preds = %if.end67
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %call77 = tail call ptr @devm_extcon_dev_allocate(ptr noundef %27, ptr noundef nonnull @ptn5150_extcon_cable) #5
  %edev = getelementptr inbounds %struct.ptn5150_info, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %edev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call77, ptr %edev, align 4
  %cmp.i176 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i176, label %do.end83, label %if.end85

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end85:                                         ; preds = %if.end75
  %call88 = tail call i32 @devm_extcon_dev_register(ptr noundef %30, ptr noundef %call77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end95:                                         ; preds = %if.end85
  %33 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edev, align 4
  %call97 = tail call i32 @extcon_set_property_capability(ptr noundef %34, i32 noundef 1, i32 noundef 0) #5
  %35 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %edev, align 4
  %call99 = tail call i32 @extcon_set_property_capability(ptr noundef %36, i32 noundef 2, i32 noundef 0) #5
  %37 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edev, align 4
  %call101 = tail call i32 @extcon_set_property_capability(ptr noundef %38, i32 noundef 2, i32 noundef 1) #5
  %call102 = tail call fastcc i32 @ptn5150_init_dev_type(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end105:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  tail call fastcc void @ptn5150_check_state(ptr noundef nonnull %call.i)
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.end95.cleanup_crit_edge, %do.end93, %do.end83, %do.end74, %do.end64, %if.then51, %if.then36, %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.then36 ], [ %call69, %do.end74 ], [ -12, %do.end83 ], [ %call88, %do.end93 ], [ 0, %if.end105 ], [ %call54, %if.then51 ], [ %23, %do.end64 ], [ %call19, %if.else ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptn5150_irq_work(ptr noundef %work) #2 align 64 {
entry:
  %int_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %int_status) #5
  %0 = ptrtoint ptr %int_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %int_status, align 4, !annotation !108
  %edev = getelementptr i8, ptr %work, i32 -24
  %1 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %regmap = getelementptr i8, ptr %work, i32 -16
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 3, ptr noundef nonnull %int_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, i32 noundef %call) #8
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %int_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.end4.if.end14_crit_edge, label %if.then6

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then6:                                         ; preds = %if.end4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  call fastcc void @ptn5150_check_state(ptr noundef %add.ptr)
  br label %if.end14

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edev, align 4
  %call10 = call i32 @extcon_set_state_sync(ptr noundef %10, i32 noundef 2, i1 noundef zeroext false) #5
  %11 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev, align 4
  %call12 = call i32 @extcon_set_state_sync(ptr noundef %12, i32 noundef 1, i1 noundef zeroext false) #5
  %vbus_gpiod = getelementptr i8, ptr %work, i32 -8
  %13 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vbus_gpiod, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %14, i32 noundef 0) #5
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then8, %if.end4.if.end14_crit_edge
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_read(ptr noundef %16, i32 noundef 25, ptr noundef nonnull %int_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup.sink.split_crit_edge, label %do.end21

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.31, i32 noundef %call16) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end21, %if.end14.cleanup.sink.split_crit_edge, %do.end
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %int_status) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn5150_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_work = getelementptr inbounds %struct.ptn5150_info, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %irq_work) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_extcon_dev_allocate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_dev_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_property_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ptn5150_init_dev_type(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %reg_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #5
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_data, align 4, !annotation !108
  %regmap = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 1, ptr noundef nonnull %reg_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end15, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %call) #8
  br label %cleanup

do.end15:                                         ; preds = %entry
  %5 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ptn5150_init_dev_type.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ptn5150_init_dev_type, %if.then40)) #5
          to label %do.end44 [label %if.then40], !srcloc !109

if.then40:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %and32 = lshr i32 %6, 3
  %shr33 = and i32 %and32, 31
  %and = and i32 %6, 7
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ptn5150_init_dev_type.__UNIQUE_ID_ddebug308, ptr noundef %8, ptr noundef nonnull @.str.36, i32 noundef %shr33, i32 noundef %and) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.end15
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call46 = call i32 @regmap_read(ptr noundef %10, i32 noundef 3, ptr noundef nonnull %reg_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.38, i32 noundef %call46) #8
  br label %cleanup

if.end53:                                         ; preds = %do.end44
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call55 = call i32 @regmap_read(ptr noundef %14, i32 noundef 25, ptr noundef nonnull %reg_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %do.end60

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %call55) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end53.cleanup_crit_edge, %do.end51, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end51 ], [ -22, %do.end60 ], [ 0, %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptn5150_check_state(ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  %reg_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #5
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_data, align 4, !annotation !108
  %regmap = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %reg_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end15, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.43, i32 noundef %call) #8
  br label %cleanup

do.end15:                                         ; preds = %entry
  %5 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_data, align 4
  %and = lshr i32 %6, 2
  %shr = and i32 %and, 7
  %7 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %do.end15.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %edev = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edev, align 4
  %call16 = call i32 @extcon_set_state_sync(ptr noundef %9, i32 noundef 2, i1 noundef zeroext false) #5
  %vbus_gpiod = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vbus_gpiod, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #5
  %12 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edev, align 4
  %call18 = call i32 @extcon_set_state_sync(ptr noundef %13, i32 noundef 1, i1 noundef zeroext true) #5
  br label %cleanup

sw.bb19:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %edev20 = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 1
  %14 = ptrtoint ptr %edev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edev20, align 4
  %call21 = call i32 @extcon_set_state_sync(ptr noundef %15, i32 noundef 1, i1 noundef zeroext false) #5
  %16 = ptrtoint ptr %reg_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg_data, align 4
  %vbus_gpiod43 = getelementptr inbounds %struct.ptn5150_info, ptr %info, i32 0, i32 5
  %18 = ptrtoint ptr %vbus_gpiod43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbus_gpiod43, align 4
  %20 = lshr i32 %17, 7
  %.lobit = and i32 %20, 1
  %21 = xor i32 %.lobit, 1
  call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %21) #5
  %22 = ptrtoint ptr %edev20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edev20, align 4
  %call46 = call i32 @extcon_set_state_sync(ptr noundef %23, i32 noundef 2, i1 noundef zeroext true) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb, %do.end15.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_set_state_sync(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_extcon_ptn5150__309_318_ptn5150_i2c_driver_init6, !1, !"__initcall__kmod_extcon_ptn5150__309_318_ptn5150_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 318, i32 1}
!2 = !{ptr @__exitcall_ptn5150_i2c_driver_exit, !1, !"__exitcall_ptn5150_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description310, !4, !"__UNIQUE_ID_description310", i1 false, i1 false}
!4 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 320, i32 1}
!5 = !{ptr @__UNIQUE_ID_author311, !6, !"__UNIQUE_ID_author311", i1 false, i1 false}
!6 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 321, i32 1}
!7 = !{ptr @__UNIQUE_ID_author312, !8, !"__UNIQUE_ID_author312", i1 false, i1 false}
!8 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_file313, !10, !"__UNIQUE_ID_file313", i1 false, i1 false}
!10 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 323, i32 1}
!11 = !{ptr @__UNIQUE_ID_license314, !10, !"__UNIQUE_ID_license314", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 312, i32 11}
!14 = !{ptr @ptn5150_i2c_driver, !15, !"ptn5150_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 310, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 214, i32 47}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 218, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ptn5150_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ptn5150_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 221, i32 35}
!28 = !{ptr @ptn5150_i2c_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 225, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ptn5150_i2c_probe.__key.9, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 227, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ptn5150_i2c_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 229, i32 17}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 232, i32 10}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 238, i32 47}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 241, i32 11}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 246, i32 4}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ptn5150_i2c_probe._entry.15, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @ptn5150_i2c_probe._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 257, i32 3}
!50 = !{ptr @ptn5150_i2c_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @ptn5150_i2c_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 264, i32 3}
!54 = !{ptr @ptn5150_i2c_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @ptn5150_i2c_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 271, i32 3}
!58 = !{ptr @ptn5150_i2c_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ptn5150_i2c_probe._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 119, i32 3}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ptn5150_irq_work._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ptn5150_irq_work._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 143, i32 3}
!67 = !{ptr @ptn5150_irq_work._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ptn5150_irq_work._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ptn5150_regmap_config, !70, !"ptn5150_regmap_config", i1 false, i1 false}
!70 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 64, i32 35}
!71 = !{ptr @ptn5150_extcon_cable, !72, !"ptn5150_extcon_cable", i1 false, i1 false}
!72 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 58, i32 27}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 169, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ptn5150_init_dev_type._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ptn5150_init_dev_type._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 175, i32 2}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ptn5150_init_dev_type.__UNIQUE_ID_ddebug308, !79, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 181, i32 3}
!84 = !{ptr @ptn5150_init_dev_type._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @ptn5150_init_dev_type._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 189, i32 3}
!88 = !{ptr @ptn5150_init_dev_type._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ptn5150_init_dev_type._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 77, i32 3}
!92 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ptn5150_check_state._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @ptn5150_check_state._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @ptn5150_dt_match, !96, !"ptn5150_dt_match", i1 false, i1 false}
!96 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 298, i32 34}
!97 = !{ptr @ptn5150_i2c_id, !98, !"ptn5150_i2c_id", i1 false, i1 false}
!98 = !{!"../drivers/extcon/extcon-ptn5150.c", i32 304, i32 35}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
!109 = !{i64 2149020868, i64 2149020873, i64 2149020886, i64 2149020930, i64 2149020964, i64 2149020985}
