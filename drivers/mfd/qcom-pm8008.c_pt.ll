; ModuleID = '/llk/IR_all_yes/drivers/mfd/qcom-pm8008.c_pt.bc'
source_filename = "../drivers/mfd/qcom-pm8008.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_irq_sub_irq_map = type { i32, ptr }
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
%struct.pm8008_data = type { ptr, ptr, i32, ptr }

@__initcall__kmod_qcom_pm8008__288_257_pm8008_mfd_driver_init6 = internal global ptr @pm8008_mfd_driver_init, section ".initcall6.init", align 4
@pm8008_mfd_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pm8008_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8008_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pm8008_mfd_driver_exit = internal global ptr @pm8008_mfd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file289 = internal constant [41 x i8] c"qcom_pm8008.file=drivers/mfd/qcom-pm8008\00", section ".modinfo", align 1
@__UNIQUE_ID_license290 = internal constant [27 x i8] c"qcom_pm8008.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias291 = internal constant [34 x i8] c"qcom_pm8008.alias=i2c:qcom-pm8008\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pm8008\00", [25 x i8] zeroinitializer }, align 32
@pm8008_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pm8008_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@qcom_mfd_regmap_cfg = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"qcom_pm8008:230:(&qcom_mfd_regmap_cfg)->lock\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@pm8008_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to probe irq periphs: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm8008_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/qcom-pm8008.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8008_probe._entry_ptr = internal global ptr @pm8008_probe._entry, section ".printk_index", align 4
@pm8008_probe_irq_peripherals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 190, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Init failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pm8008_probe_irq_peripherals\00", [35 x i8] zeroinitializer }, align 32
@pm8008_probe_irq_peripherals._entry_ptr = internal global ptr @pm8008_probe_irq_peripherals._entry, section ".printk_index", align 4
@pm8008_irqs = internal global { [8 x %struct.regmap_irq], [64 x i8] } { [8 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 3, i32 1, %struct.regmap_irq_type zeroinitializer }], [64 x i8] zeroinitializer }, align 32
@pm8008_probe_irq_peripherals._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 213, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add IRQ chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8008_probe_irq_peripherals._entry_ptr.12 = internal global ptr @pm8008_probe_irq_peripherals._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8008_irq\00", [21 x i8] zeroinitializer }, align 32
@pm8008_sub_reg_offsets = internal global { [4 x %struct.regmap_irq_sub_irq_map], [32 x i8] } { [4 x %struct.regmap_irq_sub_irq_map] [%struct.regmap_irq_sub_irq_map { i32 1, ptr @p0_offs }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @p1_offs }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @p2_offs }, %struct.regmap_irq_sub_irq_map { i32 1, ptr @p3_offs }], [32 x i8] zeroinitializer }, align 32
@pm8008_virt_regs = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2322, i32 2323], [24 x i8] zeroinitializer }, align 32
@pm8008_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.13, i32 1360, i32 0, ptr @pm8008_sub_reg_offsets, i32 1, i32 2328, i32 2325, i32 2326, i32 2324, i32 0, i32 2321, ptr @pm8008_virt_regs, i32 0, i8 0, i8 16, i32 4, ptr @pm8008_irqs, i32 8, i32 4, i32 2, i32 0, ptr null, ptr null, ptr @pm8008_set_type_virt, ptr null }, [32 x i8] zeroinitializer }, align 32
@p0_offs = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@p1_offs = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 6912], [28 x i8] zeroinitializer }, align 32
@p2_offs = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 46848], [28 x i8] zeroinitializer }, align 32
@p3_offs = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 47104], [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"pm8008_mfd_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 250, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 252, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"pm8008_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 245, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"qcom_mfd_regmap_cfg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 147, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 230, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 236, i32 48 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 239, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 190, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"pm8008_irqs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 213, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 128, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"pm8008_sub_reg_offsets\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 69, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"pm8008_virt_regs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 76, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"pm8008_irq_chip\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 127, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant [8 x i8] c"p0_offs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 64, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"p1_offs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 65, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"p2_offs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 66, i32 21 }
@___asan_gen_.93 = private unnamed_addr constant [8 x i8] c"p3_offs\00", align 1
@___asan_gen_.94 = private constant [29 x i8] c"../drivers/mfd/qcom-pm8008.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 67, i32 21 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_file289, ptr @__UNIQUE_ID_license290, ptr @__exitcall_pm8008_mfd_driver_exit, ptr @__initcall__kmod_qcom_pm8008__288_257_pm8008_mfd_driver_init6, ptr @pm8008_mfd_driver_exit, ptr @pm8008_probe._entry, ptr @pm8008_probe._entry_ptr, ptr @pm8008_probe_irq_peripherals._entry, ptr @pm8008_probe_irq_peripherals._entry.10, ptr @pm8008_probe_irq_peripherals._entry_ptr, ptr @pm8008_probe_irq_peripherals._entry_ptr.12, ptr @pm8008_mfd_driver, ptr @.str, ptr @pm8008_match, ptr @pm8008_probe._key, ptr @qcom_mfd_regmap_cfg, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pm8008_irqs, ptr @.str.11, ptr @.str.13, ptr @pm8008_sub_reg_offsets, ptr @pm8008_virt_regs, ptr @pm8008_irq_chip, ptr @p0_offs, ptr @p1_offs, ptr @p2_offs, ptr @p3_offs], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_mfd_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_mfd_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_probe_irq_peripherals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_irqs to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_probe_irq_peripherals._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_sub_reg_offsets to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_virt_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8008_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p0_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p1_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p2_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p3_offs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8008_mfd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pm8008_mfd_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8008_mfd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @pm8008_mfd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8008_probe(ptr noundef %client) #2 align 64 {
entry:
  %irq_data.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @qcom_mfd_regmap_cfg, ptr noundef nonnull @pm8008_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.pm8008_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regmap, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i33 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i33, null
  br i1 %tobool.i.not, label %if.end7.if.end16_crit_edge, label %if.then10

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then10:                                        ; preds = %if.end7
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_data.i) #6
  %9 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %irq_data.i, align 4, !annotation !65
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 9233, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then10.do.end.i_crit_edge

if.then10.do.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.then10
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 49169, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %pm8008_init.exit.i, label %if.end.i.i.do.end.i_crit_edge

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

pm8008_init.exit.i:                               ; preds = %if.end.i.i
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call7.i.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 49425, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not.i, label %for.body.i.preheader, label %pm8008_init.exit.i.do.end.i_crit_edge

pm8008_init.exit.i.do.end.i_crit_edge:            ; preds = %pm8008_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.body.i.preheader:                             ; preds = %pm8008_init.exit.i
  %16 = load i32, ptr @pm8008_irqs, align 4
  store i32 %16, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2), align 4
  %17 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 1), align 4
  store i32 %17, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2, i32 2), align 4
  store i32 %17, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp7.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %cmp7.i, i32 1, i32 15
  store i32 %spec.select.i, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 0, i32 2, i32 6), align 4
  %18 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1), align 4
  store i32 %18, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2), align 4
  %19 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 1), align 4
  store i32 %19, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2, i32 2), align 4
  store i32 %19, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7.i.1 = icmp eq i32 %18, 0
  %spec.select.i.1 = select i1 %cmp7.i.1, i32 1, i32 15
  store i32 %spec.select.i.1, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 1, i32 2, i32 6), align 4
  %20 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2), align 4
  store i32 %20, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2), align 4
  %21 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 1), align 4
  store i32 %21, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2, i32 2), align 4
  store i32 %21, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp7.i.2 = icmp eq i32 %20, 0
  %spec.select.i.2 = select i1 %cmp7.i.2, i32 1, i32 15
  store i32 %spec.select.i.2, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 2, i32 2, i32 6), align 4
  %22 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3), align 4
  store i32 %22, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2), align 4
  %23 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 1), align 4
  store i32 %23, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2, i32 2), align 4
  store i32 %23, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp7.i.3 = icmp eq i32 %22, 0
  %spec.select.i.3 = select i1 %cmp7.i.3, i32 1, i32 15
  store i32 %spec.select.i.3, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 3, i32 2, i32 6), align 4
  %24 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4), align 4
  store i32 %24, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2), align 4
  %25 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 1), align 4
  store i32 %25, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2, i32 2), align 4
  store i32 %25, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp7.i.4 = icmp eq i32 %24, 0
  %spec.select.i.4 = select i1 %cmp7.i.4, i32 1, i32 15
  store i32 %spec.select.i.4, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 4, i32 2, i32 6), align 4
  %26 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5), align 4
  store i32 %26, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2), align 4
  %27 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 1), align 4
  store i32 %27, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2, i32 2), align 4
  store i32 %27, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp7.i.5 = icmp eq i32 %26, 0
  %spec.select.i.5 = select i1 %cmp7.i.5, i32 1, i32 15
  store i32 %spec.select.i.5, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 5, i32 2, i32 6), align 4
  %28 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6), align 4
  store i32 %28, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2), align 4
  %29 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 1), align 4
  store i32 %29, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2, i32 2), align 4
  store i32 %29, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp7.i.6 = icmp eq i32 %28, 0
  %spec.select.i.6 = select i1 %cmp7.i.6, i32 1, i32 15
  store i32 %spec.select.i.6, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 6, i32 2, i32 6), align 4
  %30 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7), align 4
  store i32 %30, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2), align 4
  %31 = load i32, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 1), align 4
  store i32 %31, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2, i32 2), align 4
  store i32 %31, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2, i32 3), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.i.7 = icmp eq i32 %30, 0
  %spec.select.i.7 = select i1 %cmp7.i.7, i32 1, i32 15
  store i32 %spec.select.i.7, ptr getelementptr inbounds ([8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 7, i32 2, i32 6), align 4
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @devm_regmap_add_irq_chip(ptr noundef %33, ptr noundef %35, i32 noundef %8, i32 noundef 128, i32 noundef 0, ptr noundef nonnull @pm8008_irq_chip, ptr noundef nonnull %irq_data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %pm8008_probe_irq_peripherals.exit, label %do.end17.i

do.end.i:                                         ; preds = %pm8008_init.exit.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %if.then10.do.end.i_crit_edge
  %retval.0.i46.i = phi i32 [ %call7.i.i, %pm8008_init.exit.i.do.end.i_crit_edge ], [ %call2.i.i, %if.end.i.i.do.end.i_crit_edge ], [ %call.i.i, %if.then10.do.end.i_crit_edge ]
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i46.i) #9
  br label %do.end

do.end17.i:                                       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.11, i32 noundef %call12.i) #9
  br label %do.end

pm8008_probe_irq_peripherals.exit:                ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data.i) #6
  br label %if.end16

do.end:                                           ; preds = %do.end17.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call12.i, %do.end17.i ], [ %retval.0.i46.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_data.i) #6
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i.ph) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end, %pm8008_probe_irq_peripherals.exit, %if.end7.if.end16_crit_edge
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call18 = call i32 @devm_of_platform_populate(ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end16 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8008_set_type_virt(ptr nocapture noundef readonly %virt_buf, i32 noundef %type, i32 noundef %hwirq, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 8, label %entry.sw.bb_crit_edge45
    i32 1, label %entry.sw.bb7_crit_edge
    i32 4, label %entry.sw.bb7_crit_edge46
    i32 3, label %sw.bb19
  ]

entry.sw.bb7_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

entry.sw.bb_crit_edge45:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge45
  %mask = getelementptr [8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 %hwirq, i32 1
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mask, align 4
  %neg = xor i32 %2, -1
  %3 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_buf, align 4
  %arrayidx2 = getelementptr i32, ptr %4, i32 %reg
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %6, %neg
  store i32 %and, ptr %arrayidx2, align 4
  %7 = load i32, ptr %mask, align 4
  %arrayidx5 = getelementptr ptr, ptr %virt_buf, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr i32, ptr %9, i32 %reg
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %or = or i32 %11, %7
  store i32 %or, ptr %arrayidx6, align 4
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge46
  %mask9 = getelementptr [8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 %hwirq, i32 1
  %12 = ptrtoint ptr %mask9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask9, align 4
  %14 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_buf, align 4
  %arrayidx11 = getelementptr i32, ptr %15, i32 %reg
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  %or12 = or i32 %17, %13
  store i32 %or12, ptr %arrayidx11, align 4
  %18 = load i32, ptr %mask9, align 4
  %neg15 = xor i32 %18, -1
  %arrayidx16 = getelementptr ptr, ptr %virt_buf, i32 1
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr i32, ptr %20, i32 %reg
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %22, %neg15
  store i32 %and18, ptr %arrayidx17, align 4
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mask21 = getelementptr [8 x %struct.regmap_irq], ptr @pm8008_irqs, i32 0, i32 %hwirq, i32 1
  %23 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask21, align 4
  %25 = ptrtoint ptr %virt_buf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_buf, align 4
  %arrayidx23 = getelementptr i32, ptr %26, i32 %reg
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23, align 4
  %or24 = or i32 %28, %24
  store i32 %or24, ptr %arrayidx23, align 4
  %29 = load i32, ptr %mask21, align 4
  %arrayidx27 = getelementptr ptr, ptr %virt_buf, i32 1
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr i32, ptr %31, i32 %reg
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx28, align 4
  %or29 = or i32 %33, %29
  store i32 %or29, ptr %arrayidx28, align 4
  br label %return

return:                                           ; preds = %sw.bb19, %sw.bb7, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb19 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_qcom_pm8008__288_257_pm8008_mfd_driver_init6, !1, !"__initcall__kmod_qcom_pm8008__288_257_pm8008_mfd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/qcom-pm8008.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_pm8008_mfd_driver_exit, !1, !"__exitcall_pm8008_mfd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file289, !4, !"__UNIQUE_ID_file289", i1 false, i1 false}
!4 = !{!"../drivers/mfd/qcom-pm8008.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_license290, !4, !"__UNIQUE_ID_license290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias291, !7, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!7 = !{!"../drivers/mfd/qcom-pm8008.c", i32 260, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/qcom-pm8008.c", i32 252, i32 11}
!10 = !{ptr @pm8008_mfd_driver, !11, !"pm8008_mfd_driver", i1 false, i1 false}
!11 = !{!"../drivers/mfd/qcom-pm8008.c", i32 250, i32 26}
!12 = !{ptr @pm8008_probe._key, !13, !"_key", i1 false, i1 false}
!13 = !{!"../drivers/mfd/qcom-pm8008.c", i32 230, i32 17}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/qcom-pm8008.c", i32 236, i32 48}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/qcom-pm8008.c", i32 239, i32 4}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pm8008_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pm8008_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @qcom_mfd_regmap_cfg, !26, !"qcom_mfd_regmap_cfg", i1 false, i1 false}
!26 = !{!"../drivers/mfd/qcom-pm8008.c", i32 147, i32 29}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/qcom-pm8008.c", i32 190, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pm8008_probe_irq_peripherals._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @pm8008_probe_irq_peripherals._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/qcom-pm8008.c", i32 213, i32 3}
!34 = !{ptr @pm8008_probe_irq_peripherals._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @pm8008_probe_irq_peripherals._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @pm8008_irqs, !37, !"pm8008_irqs", i1 false, i1 false}
!37 = !{!"../drivers/mfd/qcom-pm8008.c", i32 87, i32 26}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/qcom-pm8008.c", i32 128, i32 12}
!40 = !{ptr @pm8008_irq_chip, !41, !"pm8008_irq_chip", i1 false, i1 false}
!41 = !{!"../drivers/mfd/qcom-pm8008.c", i32 127, i32 31}
!42 = !{ptr @pm8008_sub_reg_offsets, !43, !"pm8008_sub_reg_offsets", i1 false, i1 false}
!43 = !{!"../drivers/mfd/qcom-pm8008.c", i32 69, i32 38}
!44 = !{ptr @p0_offs, !45, !"p0_offs", i1 false, i1 false}
!45 = !{!"../drivers/mfd/qcom-pm8008.c", i32 64, i32 21}
!46 = !{ptr @p1_offs, !47, !"p1_offs", i1 false, i1 false}
!47 = !{!"../drivers/mfd/qcom-pm8008.c", i32 65, i32 21}
!48 = !{ptr @p2_offs, !49, !"p2_offs", i1 false, i1 false}
!49 = !{!"../drivers/mfd/qcom-pm8008.c", i32 66, i32 21}
!50 = !{ptr @p3_offs, !51, !"p3_offs", i1 false, i1 false}
!51 = !{!"../drivers/mfd/qcom-pm8008.c", i32 67, i32 21}
!52 = !{ptr @pm8008_virt_regs, !53, !"pm8008_virt_regs", i1 false, i1 false}
!53 = !{!"../drivers/mfd/qcom-pm8008.c", i32 76, i32 21}
!54 = !{ptr @pm8008_match, !55, !"pm8008_match", i1 false, i1 false}
!55 = !{!"../drivers/mfd/qcom-pm8008.c", i32 245, i32 34}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
