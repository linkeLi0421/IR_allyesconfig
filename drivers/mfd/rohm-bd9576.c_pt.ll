; ModuleID = '/llk/IR_all_yes/drivers/mfd/rohm-bd9576.c_pt.bc'
source_filename = "../drivers/mfd/rohm-bd9576.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
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

@__initcall__kmod_rohm_bd9576__288_185_bd957x_drv_init6 = internal global ptr @bd957x_drv_init, section ".initcall6.init", align 4
@bd957x_drv = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bd957x_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bd957x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bd957x_drv_exit = internal global ptr @bd957x_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [71 x i8] c"rohm_bd9576.author=Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [80 x i8] c"rohm_bd9576.description=ROHM BD9576MUF and BD9573MUF Power Management IC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"rohm_bd9576.file=drivers/mfd/rohm-bd9576\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"rohm_bd9576.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rohm-bd957x\00", [20 x i8] zeroinitializer }, align 32
@bd957x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bd9576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bd9573\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@bd9576_mfd_cells = internal global { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.16, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bd9573_mfd_cells = internal global { [2 x %struct.mfd_cell], [48 x i8] } { [2 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.18, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.17, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], [48 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown device type\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd957x_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/rohm-bd9576.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry_ptr = internal global ptr @bd957x_i2c_probe._entry, section ".printk_index", align 4
@bd957x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bd957x_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 97, ptr null, ptr null, ptr @volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rohm_bd9576:124:(&bd957x_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize Regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry_ptr.9 = internal global ptr @bd957x_i2c_probe._entry.7, section ".printk_index", align 4
@bd9576_regulator_irqs = internal constant { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.19, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 4, i32 4, ptr @.str.20, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 5, i32 5, ptr @.str.21, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to add IRQ chip\0A\00", [40 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry_ptr.12 = internal global ptr @bd957x_i2c_probe._entry.10, section ".printk_index", align 4
@bd957x_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create subdevices\0A\00", [35 x i8] zeroinitializer }, align 32
@bd957x_i2c_probe._entry_ptr.15 = internal global ptr @bd957x_i2c_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9576-regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-wdt\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9573-regulator\00", [47 x i8] zeroinitializer }, align 32
@volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @volatile_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@volatile_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 21, i32 21 }, %struct.regmap_range { i32 32, i32 32 }, %struct.regmap_range { i32 35, i32 35 }, %struct.regmap_range { i32 37, i32 43 }, %struct.regmap_range { i32 48, i32 48 }], [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd9576-temp\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-ovd\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576-uvd\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bd9576_irq\00", [21 x i8] zeroinitializer }, align 32
@bd9576_irqs = internal global { [8 x %struct.regmap_irq], [64 x i8] } { [8 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@bd9576_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.22, i32 0, i32 0, ptr null, i32 0, i32 48, i32 49, i32 0, i32 48, i32 0, i32 0, ptr null, i32 1, i8 64, i8 0, i32 1, ptr @bd9576_irqs, i32 8, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"bd957x_drv\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 178, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 180, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"bd957x_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 171, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"bd9576_mfd_cells\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 41, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"bd9573_mfd_cells\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 36, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 120, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"bd957x_regmap\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 60, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 124, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 126, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"bd9576_regulator_irqs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 30, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 150, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 166, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 42, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 43, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 37, i32 38 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"volatile_regs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 55, i32 41 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"volatile_ranges\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 46, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 31, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 32, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 33, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 80, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"bd9576_irqs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 68, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"bd9576_irq_chip\00", align 1
@___asan_gen_.118 = private constant [29 x i8] c"../drivers/mfd/rohm-bd9576.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 79, i32 31 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_bd957x_drv_exit, ptr @__initcall__kmod_rohm_bd9576__288_185_bd957x_drv_init6, ptr @bd957x_drv_exit, ptr @bd957x_i2c_probe._entry, ptr @bd957x_i2c_probe._entry.10, ptr @bd957x_i2c_probe._entry.13, ptr @bd957x_i2c_probe._entry.7, ptr @bd957x_i2c_probe._entry_ptr, ptr @bd957x_i2c_probe._entry_ptr.12, ptr @bd957x_i2c_probe._entry_ptr.15, ptr @bd957x_i2c_probe._entry_ptr.9, ptr @bd957x_drv, ptr @.str, ptr @bd957x_of_match, ptr @bd9576_mfd_cells, ptr @bd9573_mfd_cells, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bd957x_i2c_probe._key, ptr @bd957x_regmap, ptr @.str.6, ptr @.str.8, ptr @bd9576_regulator_irqs, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @volatile_regs, ptr @volatile_ranges, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @bd9576_irqs, ptr @bd9576_irq_chip], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_drv to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_mfd_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9573_mfd_cells to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_regulator_irqs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd957x_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @volatile_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_irqs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9576_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd957x_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bd957x_drv) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd957x_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @bd957x_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd957x_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %irq_data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %0 = ptrtoint ptr %call to i32
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end [
    i32 3, label %sw.epilog
    i32 1, label %sw.epilog.thread
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup39

sw.epilog:                                        ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @bd957x_regmap, ptr noundef nonnull @bd957x_i2c_probe._key, ptr noundef nonnull @.str.6) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sw.epilog.do.end8_crit_edge, label %if.end

sw.epilog.do.end8_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

sw.epilog.thread:                                 ; preds = %entry
  %call466 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @bd957x_regmap, ptr noundef nonnull @bd957x_i2c_probe._key, ptr noundef nonnull @.str.6) #5
  %cmp.i67 = icmp ugt ptr %call466, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %sw.epilog.thread.do.end8_crit_edge, label %sw.epilog.thread.if.else_crit_edge

sw.epilog.thread.if.else_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

sw.epilog.thread.do.end8_crit_edge:               ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end8:                                          ; preds = %sw.epilog.thread.do.end8_crit_edge, %sw.epilog.do.end8_crit_edge
  %call471 = phi ptr [ %call466, %sw.epilog.thread.do.end8_crit_edge ], [ %call4, %sw.epilog.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  %4 = ptrtoint ptr %call471 to i32
  br label %cleanup39

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %if.then12

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_data) #5
  %5 = ptrtoint ptr %irq_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %irq_data, align 4, !annotation !78
  store ptr @bd9576_regulator_irqs, ptr getelementptr inbounds ([2 x %struct.mfd_cell], ptr @bd9576_mfd_cells, i32 0, i32 0, i32 15), align 4
  store i32 3, ptr getelementptr inbounds ([2 x %struct.mfd_cell], ptr @bd9576_mfd_cells, i32 0, i32 0, i32 14), align 8
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call15 = call i32 @devm_regmap_add_irq_chip(ptr noundef %dev, ptr noundef %call4, i32 noundef %7, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull @bd9576_irq_chip, ptr noundef nonnull %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_data, align 4
  %call23 = call ptr @regmap_irq_get_domain(ptr noundef %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data) #5
  br label %if.end29

cleanup:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data) #5
  br label %cleanup39

if.else:                                          ; preds = %if.end.if.else_crit_edge, %sw.epilog.thread.if.else_crit_edge
  %cells.06877 = phi ptr [ @bd9576_mfd_cells, %if.end.if.else_crit_edge ], [ @bd9573_mfd_cells, %sw.epilog.thread.if.else_crit_edge ]
  %call47075 = phi ptr [ %call4, %if.end.if.else_crit_edge ], [ %call466, %sw.epilog.thread.if.else_crit_edge ]
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %call47075, i32 noundef 49, i32 noundef 255, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool26.not = icmp eq i32 %call.i, 0
  br i1 %tobool26.not, label %if.else.if.end29_crit_edge, label %if.else.cleanup39_crit_edge

if.else.cleanup39_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %if.else.if.end29_crit_edge, %cleanup.thread
  %cells.06876 = phi ptr [ %cells.06877, %if.else.if.end29_crit_edge ], [ @bd9576_mfd_cells, %cleanup.thread ]
  %domain.1 = phi ptr [ null, %if.else.if.end29_crit_edge ], [ %call23, %cleanup.thread ]
  %call31 = call i32 @devm_mfd_add_devices(ptr noundef %dev, i32 noundef -2, ptr noundef nonnull %cells.06876, i32 noundef 2, ptr noundef null, i32 noundef 0, ptr noundef %domain.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.cleanup39_crit_edge, label %do.end36

if.end29.cleanup39_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup39

cleanup39:                                        ; preds = %do.end36, %if.end29.cleanup39_crit_edge, %if.else.cleanup39_crit_edge, %cleanup, %do.end8, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %4, %do.end8 ], [ %call15, %cleanup ], [ %call.i, %if.else.cleanup39_crit_edge ], [ %call31, %do.end36 ], [ 0, %if.end29.cleanup39_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_rohm_bd9576__288_185_bd957x_drv_init6, !1, !"__initcall__kmod_rohm_bd9576__288_185_bd957x_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rohm-bd9576.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_bd957x_drv_exit, !1, !"__exitcall_bd957x_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/rohm-bd9576.c", i32 187, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/mfd/rohm-bd9576.c", i32 188, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/mfd/rohm-bd9576.c", i32 189, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mfd/rohm-bd9576.c", i32 180, i32 11}
!12 = !{ptr @bd957x_drv, !13, !"bd957x_drv", i1 false, i1 false}
!13 = !{!"../drivers/mfd/rohm-bd9576.c", i32 178, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/rohm-bd9576.c", i32 120, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bd957x_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bd957x_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @bd957x_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/mfd/rohm-bd9576.c", i32 124, i32 11}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/rohm-bd9576.c", i32 126, i32 3}
!27 = !{ptr @bd957x_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bd957x_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/rohm-bd9576.c", i32 150, i32 4}
!31 = !{ptr @bd957x_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @bd957x_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/rohm-bd9576.c", i32 166, i32 3}
!35 = !{ptr @bd957x_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bd957x_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/rohm-bd9576.c", i32 42, i32 38}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/rohm-bd9576.c", i32 43, i32 32}
!41 = !{ptr @bd9576_mfd_cells, !42, !"bd9576_mfd_cells", i1 false, i1 false}
!42 = !{!"../drivers/mfd/rohm-bd9576.c", i32 41, i32 24}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/rohm-bd9576.c", i32 37, i32 38}
!45 = !{ptr @bd9573_mfd_cells, !46, !"bd9573_mfd_cells", i1 false, i1 false}
!46 = !{!"../drivers/mfd/rohm-bd9576.c", i32 36, i32 24}
!47 = !{ptr @bd957x_regmap, !48, !"bd957x_regmap", i1 false, i1 false}
!48 = !{!"../drivers/mfd/rohm-bd9576.c", i32 60, i32 29}
!49 = !{ptr @volatile_regs, !50, !"volatile_regs", i1 false, i1 false}
!50 = !{!"../drivers/mfd/rohm-bd9576.c", i32 55, i32 41}
!51 = !{ptr @volatile_ranges, !52, !"volatile_ranges", i1 false, i1 false}
!52 = !{!"../drivers/mfd/rohm-bd9576.c", i32 46, i32 34}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/rohm-bd9576.c", i32 31, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mfd/rohm-bd9576.c", i32 32, i32 2}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/mfd/rohm-bd9576.c", i32 33, i32 2}
!59 = !{ptr @bd9576_regulator_irqs, !60, !"bd9576_regulator_irqs", i1 false, i1 false}
!60 = !{!"../drivers/mfd/rohm-bd9576.c", i32 30, i32 30}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mfd/rohm-bd9576.c", i32 80, i32 10}
!63 = !{ptr @bd9576_irq_chip, !64, !"bd9576_irq_chip", i1 false, i1 false}
!64 = !{!"../drivers/mfd/rohm-bd9576.c", i32 79, i32 31}
!65 = !{ptr @bd9576_irqs, !66, !"bd9576_irqs", i1 false, i1 false}
!66 = !{!"../drivers/mfd/rohm-bd9576.c", i32 68, i32 26}
!67 = !{ptr @bd957x_of_match, !68, !"bd957x_of_match", i1 false, i1 false}
!68 = !{!"../drivers/mfd/rohm-bd9576.c", i32 171, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
