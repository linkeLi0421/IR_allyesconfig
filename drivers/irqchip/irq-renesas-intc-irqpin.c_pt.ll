; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-renesas-intc-irqpin.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-intc-irqpin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.intc_irqpin_config = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.intc_irqpin_priv = type { [6 x %struct.intc_irqpin_iomem], [8 x %struct.intc_irqpin_irq], i32, ptr, %struct.irq_chip, ptr, %struct.atomic_t, i8, i8 }
%struct.intc_irqpin_iomem = type { ptr, ptr, ptr, i32 }
%struct.intc_irqpin_irq = type { i32, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_intc_irqpin__190_600_intc_irqpin_init2 = internal global ptr @intc_irqpin_init, section ".initcall2.init", align 4
@intc_irqpin_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intc_irqpin_probe, ptr @intc_irqpin_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @intc_irqpin_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intc_irqpin_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intc_irqpin_exit = internal global ptr @intc_irqpin_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author191 = internal constant [43 x i8] c"irq_renesas_intc_irqpin.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [73 x i8] c"irq_renesas_intc_irqpin.description=Renesas INTC External IRQ Pin Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [69 x i8] c"irq_renesas_intc_irqpin.file=drivers/irqchip/irq-renesas-intc-irqpin\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [39 x i8] c"irq_renesas_intc_irqpin.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"renesas_intc_irqpin\00", [44 x i8] zeroinitializer }, align 32
@intc_irqpin_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_irlm_r8a777x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_irlm_r8a777x }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_rmobile }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,intc-irqpin-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_irqpin_rmobile }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@intc_irqpin_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr @intc_irqpin_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sense-bitfield-width\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"control-parent\00", [17 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 412, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"not enough IOMEM resources\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intc_irqpin_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/irqchip/irq-renesas-intc-irqpin.c\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr = internal global ptr @intc_irqpin_probe._entry, section ".printk_index", align 4
@intc_irqpin_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not enough IRQ resources\0A\00", [38 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.10 = internal global ptr @intc_irqpin_probe._entry.8, section ".printk_index", align 4
@intc_irqpin_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 457, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IOMEM size mismatch\0A\00", [43 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.13 = internal global ptr @intc_irqpin_probe._entry.11, section ".printk_index", align 4
@intc_irqpin_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to remap IOMEM\0A\00", [41 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.16 = internal global ptr @intc_irqpin_probe._entry.14, section ".printk_index", align 4
@intc_irqpin_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 477, ptr @.str.19, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to select IRLM mode\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.20 = internal global ptr @intc_irqpin_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intc-irqpin\00", [20 x i8] zeroinitializer }, align 32
@intc_irqpin_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @intc_irqpin_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 522, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot initialize irq domain\0A\00", [34 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.24 = internal global ptr @intc_irqpin_probe._entry.22, section ".printk_index", align 4
@intc_irqpin_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 531, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to request low IRQ\0A\00", [37 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.27 = internal global ptr @intc_irqpin_probe._entry.25, section ".printk_index", align 4
@intc_irqpin_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 541, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.29 = internal global ptr @intc_irqpin_probe._entry.28, section ".printk_index", align 4
@intc_irqpin_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 552, ptr @.str.32, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"driving %d irqs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@intc_irqpin_probe._entry_ptr.33 = internal global ptr @intc_irqpin_probe._entry.30, section ".printk_index", align 4
@intc_irqpin_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intc_irqpin_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@intc_irqpin_dbg.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq_renesas_intc_irqpin\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intc_irqpin_dbg\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s (%d:%d:%d)\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"shared enable\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shared disable\00", [17 x i8] zeroinitializer }, align 32
@intc_irqpin_sense = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\11\10\14\13\00\00\00\12\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@intc_irqpin_set_sense.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.42, ptr @.str.5, ptr @.str.43, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"intc_irqpin_set_sense\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sense irq = %d, mode = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"map\00", [28 x i8] zeroinitializer }, align 32
@intc_irqpin_irq_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@intc_irqpin_irq_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"demux1\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"demux2\00", [25 x i8] zeroinitializer }, align 32
@intc_irqpin_irlm_r8a777x = internal constant { %struct.intc_irqpin_config, [28 x i8] } { %struct.intc_irqpin_config { i32 23 }, [28 x i8] zeroinitializer }, align 32
@intc_irqpin_rmobile = internal constant { %struct.intc_irqpin_config, [28 x i8] } { %struct.intc_irqpin_config { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"intc_irqpin_device_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 586, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 590, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"intc_irqpin_dt_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 357, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c"intc_irqpin_pm_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 584, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 393, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 395, i32 55 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 412, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 432, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 457, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 465, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 477, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 510, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant [27 x i8] c"intc_irqpin_irq_domain_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 344, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 522, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 531, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 541, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 552, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"intc_irqpin_lock\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 125, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 183, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 174, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 192, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 201, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 212, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"intc_irqpin_sense\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 248, i32 22 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 162, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 336, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant [27 x i8] c"intc_irqpin_irq_lock_class\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 323, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant [30 x i8] c"intc_irqpin_irq_request_class\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 326, i32 30 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 288, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 293, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant [25 x i8] c"intc_irqpin_irlm_r8a777x\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 349, i32 40 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"intc_irqpin_rmobile\00", align 1
@___asan_gen_.195 = private constant [45 x i8] c"../drivers/irqchip/irq-renesas-intc-irqpin.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 353, i32 40 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_intc_irqpin_exit, ptr @__initcall__kmod_irq_renesas_intc_irqpin__190_600_intc_irqpin_init2, ptr @intc_irqpin_exit, ptr @intc_irqpin_probe._entry, ptr @intc_irqpin_probe._entry.11, ptr @intc_irqpin_probe._entry.14, ptr @intc_irqpin_probe._entry.17, ptr @intc_irqpin_probe._entry.22, ptr @intc_irqpin_probe._entry.25, ptr @intc_irqpin_probe._entry.28, ptr @intc_irqpin_probe._entry.30, ptr @intc_irqpin_probe._entry.8, ptr @intc_irqpin_probe._entry_ptr, ptr @intc_irqpin_probe._entry_ptr.10, ptr @intc_irqpin_probe._entry_ptr.13, ptr @intc_irqpin_probe._entry_ptr.16, ptr @intc_irqpin_probe._entry_ptr.20, ptr @intc_irqpin_probe._entry_ptr.24, ptr @intc_irqpin_probe._entry_ptr.27, ptr @intc_irqpin_probe._entry_ptr.29, ptr @intc_irqpin_probe._entry_ptr.33, ptr @intc_irqpin_device_driver, ptr @.str, ptr @intc_irqpin_dt_ids, ptr @intc_irqpin_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @intc_irqpin_irq_domain_ops, ptr @.str.23, ptr @.str.26, ptr @.str.31, ptr @.str.32, ptr @intc_irqpin_lock, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @intc_irqpin_sense, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @intc_irqpin_irq_lock_class, ptr @intc_irqpin_irq_request_class, ptr @.str.45, ptr @.str.46, ptr @intc_irqpin_irlm_r8a777x, ptr @intc_irqpin_rmobile], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_sense to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_irq_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_irq_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_irlm_r8a777x to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_irqpin_rmobile to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intc_irqpin_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @intc_irqpin_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %io = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %io) #7
  %0 = getelementptr inbounds [6 x ptr], ptr %io, i32 0, i32 1
  %1 = getelementptr inbounds [6 x ptr], ptr %io, i32 0, i32 2
  %2 = getelementptr inbounds [6 x ptr], ptr %io, i32 0, i32 3
  %3 = getelementptr inbounds [6 x ptr], ptr %io, i32 0, i32 4
  %4 = getelementptr inbounds [6 x ptr], ptr %io, i32 0, i32 5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 380, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %sense_bitfield_width = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef %sense_bitfield_width, i32 noundef 1, i32 noundef 0) #7
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call.i305 = tail call ptr @of_find_property(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i305, null
  %13 = ptrtoint ptr %sense_bitfield_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sense_bitfield_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %sense_bitfield_width to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %sense_bitfield_width, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %pdev11 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %pdev11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pdev, ptr %pdev11, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call12 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i306 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  %call14 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %18 = ptrtoint ptr %io to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call14, ptr %io, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.end10.do.end_crit_edge, label %for.cond

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond:                                         ; preds = %if.end10
  %call14.1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call14.1, ptr %0, align 4
  %tobool16.not.1 = icmp eq ptr %call14.1, null
  br i1 %tobool16.not.1, label %for.cond.do.end_crit_edge, label %for.cond.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %call14.2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call14.2, ptr %1, align 4
  %tobool16.not.2 = icmp eq ptr %call14.2, null
  br i1 %tobool16.not.2, label %for.cond.1.do.end_crit_edge, label %for.cond.2

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %call14.3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #7
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14.3, ptr %2, align 4
  %tobool16.not.3 = icmp eq ptr %call14.3, null
  br i1 %tobool16.not.3, label %for.cond.2.do.end_crit_edge, label %for.cond.3

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %call14.4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 4) #7
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call14.4, ptr %3, align 4
  %tobool16.not.4 = icmp eq ptr %call14.4, null
  br i1 %tobool16.not.4, label %for.cond.3.do.end_crit_edge, label %for.cond.5

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.5:                                       ; preds = %for.cond.3
  %call14.5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 5) #7
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call14.5, ptr %4, align 4
  %call23 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23)
  %cmp24 = icmp eq i32 %call23, -6
  br i1 %cmp24, label %do.end41, label %if.end26

do.end:                                           ; preds = %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %if.end10.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %err0

if.end26:                                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp27 = icmp slt i32 %call23, 0
  br i1 %cmp27, label %if.end26.err0_crit_edge, label %if.end29

if.end26.err0_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29:                                         ; preds = %if.end26
  %p31 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %p31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %p31, align 4
  %requested_irq = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %requested_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call23, ptr %requested_irq, align 4
  %call23.1 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.1)
  %cmp24.1 = icmp eq i32 %call23.1, -6
  br i1 %cmp24.1, label %if.end29.for.body45.preheader_crit_edge, label %if.end26.1

if.end29.for.body45.preheader_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.1:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.1)
  %cmp27.1 = icmp slt i32 %call23.1, 0
  br i1 %cmp27.1, label %if.end26.1.err0_crit_edge, label %if.end29.1

if.end26.1.err0_crit_edge:                        ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.1:                                       ; preds = %if.end26.1
  %p31.1 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 3
  %26 = ptrtoint ptr %p31.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %p31.1, align 4
  %requested_irq.1 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %27 = ptrtoint ptr %requested_irq.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call23.1, ptr %requested_irq.1, align 4
  %call23.2 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.2)
  %cmp24.2 = icmp eq i32 %call23.2, -6
  br i1 %cmp24.2, label %if.end29.1.for.body45.preheader_crit_edge, label %if.end26.2

if.end29.1.for.body45.preheader_crit_edge:        ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.2:                                       ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.2)
  %cmp27.2 = icmp slt i32 %call23.2, 0
  br i1 %cmp27.2, label %if.end26.2.err0_crit_edge, label %if.end29.2

if.end26.2.err0_crit_edge:                        ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.2:                                       ; preds = %if.end26.2
  %p31.2 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 2, i32 3
  %28 = ptrtoint ptr %p31.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %p31.2, align 4
  %requested_irq.2 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %29 = ptrtoint ptr %requested_irq.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call23.2, ptr %requested_irq.2, align 4
  %call23.3 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.3)
  %cmp24.3 = icmp eq i32 %call23.3, -6
  br i1 %cmp24.3, label %if.end29.2.for.body45.preheader_crit_edge, label %if.end26.3

if.end29.2.for.body45.preheader_crit_edge:        ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.3:                                       ; preds = %if.end29.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.3)
  %cmp27.3 = icmp slt i32 %call23.3, 0
  br i1 %cmp27.3, label %if.end26.3.err0_crit_edge, label %if.end29.3

if.end26.3.err0_crit_edge:                        ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.3:                                       ; preds = %if.end26.3
  %p31.3 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 3, i32 3
  %30 = ptrtoint ptr %p31.3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %p31.3, align 4
  %requested_irq.3 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %31 = ptrtoint ptr %requested_irq.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call23.3, ptr %requested_irq.3, align 4
  %call23.4 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.4)
  %cmp24.4 = icmp eq i32 %call23.4, -6
  br i1 %cmp24.4, label %if.end29.3.for.body45.preheader_crit_edge, label %if.end26.4

if.end29.3.for.body45.preheader_crit_edge:        ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.4:                                       ; preds = %if.end29.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.4)
  %cmp27.4 = icmp slt i32 %call23.4, 0
  br i1 %cmp27.4, label %if.end26.4.err0_crit_edge, label %if.end29.4

if.end26.4.err0_crit_edge:                        ; preds = %if.end26.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.4:                                       ; preds = %if.end26.4
  %p31.4 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 4, i32 3
  %32 = ptrtoint ptr %p31.4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %p31.4, align 4
  %requested_irq.4 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 4, i32 1
  %33 = ptrtoint ptr %requested_irq.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call23.4, ptr %requested_irq.4, align 4
  %call23.5 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.5)
  %cmp24.5 = icmp eq i32 %call23.5, -6
  br i1 %cmp24.5, label %if.end29.4.for.body45.preheader_crit_edge, label %if.end26.5

if.end29.4.for.body45.preheader_crit_edge:        ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.5:                                       ; preds = %if.end29.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.5)
  %cmp27.5 = icmp slt i32 %call23.5, 0
  br i1 %cmp27.5, label %if.end26.5.err0_crit_edge, label %if.end29.5

if.end26.5.err0_crit_edge:                        ; preds = %if.end26.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.5:                                       ; preds = %if.end26.5
  %p31.5 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 5, i32 3
  %34 = ptrtoint ptr %p31.5 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %p31.5, align 4
  %requested_irq.5 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %35 = ptrtoint ptr %requested_irq.5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call23.5, ptr %requested_irq.5, align 4
  %call23.6 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.6)
  %cmp24.6 = icmp eq i32 %call23.6, -6
  br i1 %cmp24.6, label %if.end29.5.for.body45.preheader_crit_edge, label %if.end26.6

if.end29.5.for.body45.preheader_crit_edge:        ; preds = %if.end29.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.6:                                       ; preds = %if.end29.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.6)
  %cmp27.6 = icmp slt i32 %call23.6, 0
  br i1 %cmp27.6, label %if.end26.6.err0_crit_edge, label %if.end29.6

if.end26.6.err0_crit_edge:                        ; preds = %if.end26.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.6:                                       ; preds = %if.end26.6
  %p31.6 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 6, i32 3
  %36 = ptrtoint ptr %p31.6 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %p31.6, align 4
  %requested_irq.6 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 6, i32 1
  %37 = ptrtoint ptr %requested_irq.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call23.6, ptr %requested_irq.6, align 4
  %call23.7 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call23.7)
  %cmp24.7 = icmp eq i32 %call23.7, -6
  br i1 %cmp24.7, label %if.end29.6.for.body45.preheader_crit_edge, label %if.end26.7

if.end29.6.for.body45.preheader_crit_edge:        ; preds = %if.end29.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.preheader

if.end26.7:                                       ; preds = %if.end29.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.7)
  %cmp27.7 = icmp slt i32 %call23.7, 0
  br i1 %cmp27.7, label %if.end26.7.err0_crit_edge, label %if.end29.7

if.end26.7.err0_crit_edge:                        ; preds = %if.end26.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end29.7:                                       ; preds = %if.end26.7
  call void @__sanitizer_cov_trace_pc() #9
  %p31.7 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 7, i32 3
  %38 = ptrtoint ptr %p31.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %p31.7, align 4
  %requested_irq.7 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 7, i32 1
  %39 = ptrtoint ptr %requested_irq.7 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call23.7, ptr %requested_irq.7, align 4
  br label %for.body45.preheader

for.body45.preheader:                             ; preds = %if.end29.7, %if.end29.6.for.body45.preheader_crit_edge, %if.end29.5.for.body45.preheader_crit_edge, %if.end29.4.for.body45.preheader_crit_edge, %if.end29.3.for.body45.preheader_crit_edge, %if.end29.2.for.body45.preheader_crit_edge, %if.end29.1.for.body45.preheader_crit_edge, %if.end29.for.body45.preheader_crit_edge
  %exitcond344.not.1 = phi i1 [ false, %if.end29.7 ], [ false, %if.end29.6.for.body45.preheader_crit_edge ], [ false, %if.end29.5.for.body45.preheader_crit_edge ], [ false, %if.end29.4.for.body45.preheader_crit_edge ], [ false, %if.end29.3.for.body45.preheader_crit_edge ], [ false, %if.end29.2.for.body45.preheader_crit_edge ], [ true, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %exitcond344.not.2 = phi i1 [ false, %if.end29.7 ], [ false, %if.end29.6.for.body45.preheader_crit_edge ], [ false, %if.end29.5.for.body45.preheader_crit_edge ], [ false, %if.end29.4.for.body45.preheader_crit_edge ], [ false, %if.end29.3.for.body45.preheader_crit_edge ], [ true, %if.end29.2.for.body45.preheader_crit_edge ], [ false, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %exitcond344.not.3 = phi i1 [ false, %if.end29.7 ], [ false, %if.end29.6.for.body45.preheader_crit_edge ], [ false, %if.end29.5.for.body45.preheader_crit_edge ], [ false, %if.end29.4.for.body45.preheader_crit_edge ], [ true, %if.end29.3.for.body45.preheader_crit_edge ], [ false, %if.end29.2.for.body45.preheader_crit_edge ], [ false, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %exitcond344.not.4 = phi i1 [ false, %if.end29.7 ], [ false, %if.end29.6.for.body45.preheader_crit_edge ], [ false, %if.end29.5.for.body45.preheader_crit_edge ], [ true, %if.end29.4.for.body45.preheader_crit_edge ], [ false, %if.end29.3.for.body45.preheader_crit_edge ], [ false, %if.end29.2.for.body45.preheader_crit_edge ], [ false, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %exitcond344.not.5 = phi i1 [ false, %if.end29.7 ], [ false, %if.end29.6.for.body45.preheader_crit_edge ], [ true, %if.end29.5.for.body45.preheader_crit_edge ], [ false, %if.end29.4.for.body45.preheader_crit_edge ], [ false, %if.end29.3.for.body45.preheader_crit_edge ], [ false, %if.end29.2.for.body45.preheader_crit_edge ], [ false, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %exitcond344.not.6 = phi i1 [ false, %if.end29.7 ], [ true, %if.end29.6.for.body45.preheader_crit_edge ], [ false, %if.end29.5.for.body45.preheader_crit_edge ], [ false, %if.end29.4.for.body45.preheader_crit_edge ], [ false, %if.end29.3.for.body45.preheader_crit_edge ], [ false, %if.end29.2.for.body45.preheader_crit_edge ], [ false, %if.end29.1.for.body45.preheader_crit_edge ], [ false, %if.end29.for.body45.preheader_crit_edge ]
  %k.1.lcssa.ph = phi i32 [ 8, %if.end29.7 ], [ 7, %if.end29.6.for.body45.preheader_crit_edge ], [ 6, %if.end29.5.for.body45.preheader_crit_edge ], [ 5, %if.end29.4.for.body45.preheader_crit_edge ], [ 4, %if.end29.3.for.body45.preheader_crit_edge ], [ 3, %if.end29.2.for.body45.preheader_crit_edge ], [ 2, %if.end29.1.for.body45.preheader_crit_edge ], [ 1, %if.end29.for.body45.preheader_crit_edge ]
  br label %for.body45

do.end41:                                         ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %err0

for.body45:                                       ; preds = %for.inc72.for.body45_crit_edge, %for.body45.preheader
  %k.2329 = phi i32 [ %inc73, %for.inc72.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %arrayidx46 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 %k.2329
  %arrayidx47 = getelementptr [6 x ptr], ptr %io, i32 0, i32 %k.2329
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %41, null
  br i1 %tobool48.not, label %for.body45.for.inc72_crit_edge, label %if.end50

for.body45.for.inc72_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc72

if.end50:                                         ; preds = %for.body45
  %end.i = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %end.i, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %41, align 4
  %sub.i = add i32 %43, 1
  %add.i = sub i32 %sub.i, %45
  %46 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i, label %do.end59 [
    i32 1, label %if.end50.sw.epilog_crit_edge
    i32 4, label %sw.bb53
  ]

if.end50.sw.epilog_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end59:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %err0

sw.epilog:                                        ; preds = %sw.bb53, %if.end50.sw.epilog_crit_edge
  %.sink = phi i32 [ 32, %sw.bb53 ], [ 8, %if.end50.sw.epilog_crit_edge ]
  %intc_irqpin_read32.sink = phi ptr [ @intc_irqpin_read32, %sw.bb53 ], [ @intc_irqpin_read8, %if.end50.sw.epilog_crit_edge ]
  %intc_irqpin_write32.sink = phi ptr [ @intc_irqpin_write32, %sw.bb53 ], [ @intc_irqpin_write8, %if.end50.sw.epilog_crit_edge ]
  %width54 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 %k.2329, i32 3
  %47 = ptrtoint ptr %width54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %.sink, ptr %width54, align 4
  %read55 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 %k.2329, i32 1
  %48 = ptrtoint ptr %read55 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %intc_irqpin_read32.sink, ptr %read55, align 4
  %write56 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 %k.2329, i32 2
  %49 = ptrtoint ptr %write56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %intc_irqpin_write32.sink, ptr %write56, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %41, align 4
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %sub.i308 = sub i32 1, %51
  %add.i309 = add i32 %sub.i308, %53
  %call63 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %51, i32 noundef %add.i309) #7
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call63, ptr %arrayidx46, align 4
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %do.end70, label %sw.epilog.for.inc72_crit_edge

sw.epilog.for.inc72_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc72

do.end70:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %err0

for.inc72:                                        ; preds = %sw.epilog.for.inc72_crit_edge, %for.body45.for.inc72_crit_edge
  %inc73 = add nuw nsw i32 %k.2329, 1
  %exitcond.not = icmp eq i32 %inc73, 6
  br i1 %exitcond.not, label %for.end74, label %for.inc72.for.body45_crit_edge

for.inc72.for.body45_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45

for.end74:                                        ; preds = %for.inc72
  %tobool75.not = icmp eq ptr %call12, null
  br i1 %tobool75.not, label %for.end74.for.body90.lr.ph_crit_edge, label %land.lhs.true76

for.end74.for.body90.lr.ph_crit_edge:             ; preds = %for.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90.lr.ph

land.lhs.true76:                                  ; preds = %for.end74
  %55 = ptrtoint ptr %call12 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %56)
  %cmp77 = icmp sgt i32 %56, -1
  br i1 %cmp77, label %if.then78, label %land.lhs.true76.for.body90.lr.ph_crit_edge

land.lhs.true76.for.body90.lr.ph_crit_edge:       ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90.lr.ph

if.then78:                                        ; preds = %land.lhs.true76
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %4, align 4
  %tobool80.not = icmp eq ptr %58, null
  br i1 %tobool80.not, label %do.end85, label %if.then81

if.then81:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @intc_irqpin_read_modify_write(ptr noundef nonnull %call.i, i32 noundef 5, i32 noundef %56, i32 noundef 1, i32 noundef 1)
  br label %for.body90.lr.ph

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %for.body90.lr.ph

for.body90.lr.ph:                                 ; preds = %do.end85, %if.then81, %land.lhs.true76.for.body90.lr.ph_crit_edge, %for.end74.for.body90.lr.ph_crit_edge
  %arrayidx.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1
  %read.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1, i32 1
  %write.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1, i32 2
  br label %for.body90

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.body90.lr.ph
  %k.3333 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc92, %for.body90.for.body90_crit_edge ]
  %add.neg.i = mul nsw i32 %k.3333, -4
  %sub.i310 = add nsw i32 %add.neg.i, 28
  %call.i.i311 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #7
  %59 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read.i.i.i, align 4
  %61 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call.i.i.i = tail call i32 %60(ptr noundef %62) #7
  %shl3.i.i = shl i32 15, %sub.i310
  %neg.i.i = xor i32 %shl3.i.i, -1
  %and.i.i = and i32 %call.i.i.i, %neg.i.i
  %63 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %write.i.i.i, align 4
  %65 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %64(ptr noundef %66, i32 noundef %and.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %call.i.i311) #7
  %inc92 = add nuw nsw i32 %k.3333, 1
  %exitcond341.not = icmp eq i32 %inc92, %k.1.lcssa.ph
  br i1 %exitcond341.not, label %for.end93, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

for.end93:                                        ; preds = %for.body90
  %arrayidx.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 2
  %write.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %write.i, align 4
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  tail call void %68(ptr noundef %70, i32 noundef 0) #7
  %requested_irq96 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %71 = ptrtoint ptr %requested_irq96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %requested_irq96, align 4
  %shared_irqs = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 7
  %73 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load = load i8, ptr %shared_irqs, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %shared_irqs, align 4
  br i1 %cmp24.1, label %for.end93.for.end112_crit_edge, label %for.end93.for.body99_crit_edge

for.end93.for.body99_crit_edge:                   ; preds = %for.end93
  br label %for.body99

for.end93.for.end112_crit_edge:                   ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end112

for.cond97:                                       ; preds = %for.body99
  %inc111 = add nuw nsw i32 %k.4335, 1
  %exitcond342.not = icmp eq i32 %inc111, %k.1.lcssa.ph
  br i1 %exitcond342.not, label %for.cond97.for.end112_crit_edge, label %for.cond97.for.body99_crit_edge

for.cond97.for.body99_crit_edge:                  ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body99

for.cond97.for.end112_crit_edge:                  ; preds = %for.cond97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end112

for.body99:                                       ; preds = %for.cond97.for.body99_crit_edge, %for.end93.for.body99_crit_edge
  %k.4335 = phi i32 [ %inc111, %for.cond97.for.body99_crit_edge ], [ 1, %for.end93.for.body99_crit_edge ]
  %requested_irq102 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 %k.4335, i32 1
  %74 = ptrtoint ptr %requested_irq102 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %requested_irq102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %75)
  %cmp103.not = icmp eq i32 %72, %75
  br i1 %cmp103.not, label %for.cond97, label %if.then104

if.then104:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear107 = and i8 %bf.load, 127
  %76 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %bf.clear107, ptr %shared_irqs, align 4
  br label %for.end112

for.end112:                                       ; preds = %if.then104, %for.cond97.for.end112_crit_edge, %for.end93.for.end112_crit_edge
  br i1 %tobool.i.not, label %if.else115, label %for.end112.if.end122_crit_edge

for.end112.if.end122_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.else115:                                       ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load117 = load i8, ptr %shared_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load117)
  %tobool118.not = icmp sgt i8 %bf.load117, -1
  %intc_irqpin_irq_enable.intc_irqpin_shared_irq_enable = select i1 %tobool118.not, ptr @intc_irqpin_irq_enable, ptr @intc_irqpin_shared_irq_enable
  %intc_irqpin_irq_disable.intc_irqpin_shared_irq_disable = select i1 %tobool118.not, ptr @intc_irqpin_irq_disable, ptr @intc_irqpin_shared_irq_disable
  br label %if.end122

if.end122:                                        ; preds = %if.else115, %for.end112.if.end122_crit_edge
  %enable_fn.0 = phi ptr [ @intc_irqpin_irq_enable_force, %for.end112.if.end122_crit_edge ], [ %intc_irqpin_irq_enable.intc_irqpin_shared_irq_enable, %if.else115 ]
  %disable_fn.0 = phi ptr [ @intc_irqpin_irq_disable_force, %for.end112.if.end122_crit_edge ], [ %intc_irqpin_irq_disable.intc_irqpin_shared_irq_disable, %if.else115 ]
  %irq_chip123 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4
  %name124 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 1
  %78 = ptrtoint ptr %name124 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @.str.21, ptr %name124, align 4
  %79 = ptrtoint ptr %irq_chip123 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dev1, ptr %irq_chip123, align 4
  %irq_mask = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 7
  %80 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %disable_fn.0, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 9
  %81 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %enable_fn.0, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 13
  %82 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @intc_irqpin_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 14
  %83 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @intc_irqpin_irq_set_wake, ptr %irq_set_wake, align 4
  %flags = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 4, i32 33
  %84 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %flags, align 4
  %85 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %86, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %86, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef %k.1.lcssa.ph, i32 noundef 0, ptr noundef nonnull @intc_irqpin_irq_domain_ops, ptr noundef nonnull %call.i) #7
  %irq_domain = getelementptr inbounds %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 5
  %87 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool128.not = icmp eq ptr %call1.i, null
  br i1 %tobool128.not, label %if.then129, label %if.end133

if.then129:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %err0

if.end133:                                        ; preds = %if.end122
  %88 = ptrtoint ptr %shared_irqs to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load135 = load i8, ptr %shared_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load135)
  %tobool138.not = icmp sgt i8 %bf.load135, -1
  br i1 %tobool138.not, label %for.body153, label %if.then139

if.then139:                                       ; preds = %if.end133
  %89 = ptrtoint ptr %requested_irq96 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %requested_irq96, align 4
  %call.i312 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %90, ptr noundef nonnull @intc_irqpin_shared_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool144.not = icmp eq i32 %call.i312, 0
  br i1 %tobool144.not, label %if.then139.for.body172.lr.ph_crit_edge, label %if.then139.err1_crit_edge

if.then139.err1_crit_edge:                        ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

if.then139.for.body172.lr.ph_crit_edge:           ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.cond151:                                      ; preds = %for.body153
  br i1 %cmp24.1, label %for.cond151.for.body172.lr.ph_crit_edge, label %for.body153.1

for.cond151.for.body172.lr.ph_crit_edge:          ; preds = %for.cond151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.1:                                    ; preds = %for.cond151
  %arrayidx155.1 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 1
  %requested_irq156.1 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 1, i32 1
  %91 = ptrtoint ptr %requested_irq156.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %requested_irq156.1, align 4
  %call.i313.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %92, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.1)
  %tobool160.not.1 = icmp eq i32 %call.i313.1, 0
  br i1 %tobool160.not.1, label %for.cond151.1, label %for.body153.1.err1_crit_edge

for.body153.1.err1_crit_edge:                     ; preds = %for.body153.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.1:                                    ; preds = %for.body153.1
  br i1 %exitcond344.not.1, label %for.cond151.1.for.body172.lr.ph_crit_edge, label %for.body153.2

for.cond151.1.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.2:                                    ; preds = %for.cond151.1
  %arrayidx155.2 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 2
  %requested_irq156.2 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 2, i32 1
  %93 = ptrtoint ptr %requested_irq156.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %requested_irq156.2, align 4
  %call.i313.2 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %94, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.2)
  %tobool160.not.2 = icmp eq i32 %call.i313.2, 0
  br i1 %tobool160.not.2, label %for.cond151.2, label %for.body153.2.err1_crit_edge

for.body153.2.err1_crit_edge:                     ; preds = %for.body153.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.2:                                    ; preds = %for.body153.2
  br i1 %exitcond344.not.2, label %for.cond151.2.for.body172.lr.ph_crit_edge, label %for.body153.3

for.cond151.2.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.3:                                    ; preds = %for.cond151.2
  %arrayidx155.3 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 3
  %requested_irq156.3 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %95 = ptrtoint ptr %requested_irq156.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %requested_irq156.3, align 4
  %call.i313.3 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %96, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.3)
  %tobool160.not.3 = icmp eq i32 %call.i313.3, 0
  br i1 %tobool160.not.3, label %for.cond151.3, label %for.body153.3.err1_crit_edge

for.body153.3.err1_crit_edge:                     ; preds = %for.body153.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.3:                                    ; preds = %for.body153.3
  br i1 %exitcond344.not.3, label %for.cond151.3.for.body172.lr.ph_crit_edge, label %for.body153.4

for.cond151.3.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.4:                                    ; preds = %for.cond151.3
  %arrayidx155.4 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 4
  %requested_irq156.4 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 4, i32 1
  %97 = ptrtoint ptr %requested_irq156.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %requested_irq156.4, align 4
  %call.i313.4 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %98, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.4)
  %tobool160.not.4 = icmp eq i32 %call.i313.4, 0
  br i1 %tobool160.not.4, label %for.cond151.4, label %for.body153.4.err1_crit_edge

for.body153.4.err1_crit_edge:                     ; preds = %for.body153.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.4:                                    ; preds = %for.body153.4
  br i1 %exitcond344.not.4, label %for.cond151.4.for.body172.lr.ph_crit_edge, label %for.body153.5

for.cond151.4.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.5:                                    ; preds = %for.cond151.4
  %arrayidx155.5 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 5
  %requested_irq156.5 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 5, i32 1
  %99 = ptrtoint ptr %requested_irq156.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %requested_irq156.5, align 4
  %call.i313.5 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %100, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.5)
  %tobool160.not.5 = icmp eq i32 %call.i313.5, 0
  br i1 %tobool160.not.5, label %for.cond151.5, label %for.body153.5.err1_crit_edge

for.body153.5.err1_crit_edge:                     ; preds = %for.body153.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.5:                                    ; preds = %for.body153.5
  br i1 %exitcond344.not.5, label %for.cond151.5.for.body172.lr.ph_crit_edge, label %for.body153.6

for.cond151.5.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.6:                                    ; preds = %for.cond151.5
  %arrayidx155.6 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 6
  %requested_irq156.6 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 6, i32 1
  %101 = ptrtoint ptr %requested_irq156.6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %requested_irq156.6, align 4
  %call.i313.6 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %102, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.6)
  %tobool160.not.6 = icmp eq i32 %call.i313.6, 0
  br i1 %tobool160.not.6, label %for.cond151.6, label %for.body153.6.err1_crit_edge

for.body153.6.err1_crit_edge:                     ; preds = %for.body153.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.cond151.6:                                    ; preds = %for.body153.6
  br i1 %exitcond344.not.6, label %for.cond151.6.for.body172.lr.ph_crit_edge, label %for.body153.7

for.cond151.6.for.body172.lr.ph_crit_edge:        ; preds = %for.cond151.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153.7:                                    ; preds = %for.cond151.6
  %arrayidx155.7 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 7
  %requested_irq156.7 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 7, i32 1
  %103 = ptrtoint ptr %requested_irq156.7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %requested_irq156.7, align 4
  %call.i313.7 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %104, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313.7)
  %tobool160.not.7 = icmp eq i32 %call.i313.7, 0
  br i1 %tobool160.not.7, label %for.body153.7.for.body172.lr.ph_crit_edge, label %for.body153.7.err1_crit_edge

for.body153.7.err1_crit_edge:                     ; preds = %for.body153.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.body153.7.for.body172.lr.ph_crit_edge:        ; preds = %for.body153.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172.lr.ph

for.body153:                                      ; preds = %if.end133
  %arrayidx155 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 0
  %requested_irq156 = getelementptr %struct.intc_irqpin_priv, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %105 = ptrtoint ptr %requested_irq156 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %requested_irq156, align 4
  %call.i313 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %106, ptr noundef nonnull @intc_irqpin_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx155) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i313)
  %tobool160.not = icmp eq i32 %call.i313, 0
  br i1 %tobool160.not, label %for.cond151, label %for.body153.err1_crit_edge

for.body153.err1_crit_edge:                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #9
  br label %err1

for.body172.lr.ph:                                ; preds = %for.body153.7.for.body172.lr.ph_crit_edge, %for.cond151.6.for.body172.lr.ph_crit_edge, %for.cond151.5.for.body172.lr.ph_crit_edge, %for.cond151.4.for.body172.lr.ph_crit_edge, %for.cond151.3.for.body172.lr.ph_crit_edge, %for.cond151.2.for.body172.lr.ph_crit_edge, %for.cond151.1.for.body172.lr.ph_crit_edge, %for.cond151.for.body172.lr.ph_crit_edge, %if.then139.for.body172.lr.ph_crit_edge
  %arrayidx.i.i.i317 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1
  %read.i.i.i318 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1, i32 1
  %write.i.i.i323 = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %call.i, i32 0, i32 1, i32 2
  br label %for.body172

for.body172:                                      ; preds = %for.body172.for.body172_crit_edge, %for.body172.lr.ph
  %k.6339 = phi i32 [ 0, %for.body172.lr.ph ], [ %inc174, %for.body172.for.body172_crit_edge ]
  %add.neg.i314 = mul nsw i32 %k.6339, -4
  %sub.i315 = add nsw i32 %add.neg.i314, 28
  %call.i.i316 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #7
  %107 = ptrtoint ptr %read.i.i.i318 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %read.i.i.i318, align 4
  %109 = ptrtoint ptr %arrayidx.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i.i.i317, align 4
  %call.i.i.i319 = tail call i32 %108(ptr noundef %110) #7
  %shl3.i.i320 = shl i32 15, %sub.i315
  %or.i.i = or i32 %call.i.i.i319, %shl3.i.i320
  %111 = ptrtoint ptr %write.i.i.i323 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %write.i.i.i323, align 4
  %113 = ptrtoint ptr %arrayidx.i.i.i317 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i.i.i317, align 4
  tail call void %112(ptr noundef %114, i32 noundef %or.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %call.i.i316) #7
  %inc174 = add nuw nsw i32 %k.6339, 1
  %exitcond346.not = icmp eq i32 %inc174, %k.1.lcssa.ph
  br i1 %exitcond346.not, label %do.end178, label %for.body172.for.body172_crit_edge

for.body172.for.body172_crit_edge:                ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body172

do.end178:                                        ; preds = %for.body172
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %k.1.lcssa.ph) #10
  br label %cleanup

err1:                                             ; preds = %for.body153.err1_crit_edge, %for.body153.7.err1_crit_edge, %for.body153.6.err1_crit_edge, %for.body153.5.err1_crit_edge, %for.body153.4.err1_crit_edge, %for.body153.3.err1_crit_edge, %for.body153.2.err1_crit_edge, %for.body153.1.err1_crit_edge, %if.then139.err1_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26) #10
  %115 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %116) #7
  br label %err0

err0:                                             ; preds = %err1, %if.then129, %do.end70, %do.end59, %do.end41, %if.end26.7.err0_crit_edge, %if.end26.6.err0_crit_edge, %if.end26.5.err0_crit_edge, %if.end26.4.err0_crit_edge, %if.end26.3.err0_crit_edge, %if.end26.2.err0_crit_edge, %if.end26.1.err0_crit_edge, %if.end26.err0_crit_edge, %do.end
  %ret.1 = phi i32 [ -22, %do.end ], [ -22, %do.end41 ], [ -22, %do.end59 ], [ -6, %do.end70 ], [ -2, %err1 ], [ -6, %if.then129 ], [ %call23, %if.end26.err0_crit_edge ], [ %call23.1, %if.end26.1.err0_crit_edge ], [ %call23.2, %if.end26.2.err0_crit_edge ], [ %call23.3, %if.end26.3.err0_crit_edge ], [ %call23.4, %if.end26.4.err0_crit_edge ], [ %call23.5, %if.end26.5.err0_crit_edge ], [ %call23.6, %if.end26.6.err0_crit_edge ], [ %call23.7, %if.end26.7.err0_crit_edge ]
  %call.i324 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.end178, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err0 ], [ 0, %do.end178 ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %io) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_read8(ptr noundef %iomem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %iomem) #7, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_write8(ptr noundef %iomem, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %iomem, i8 %conv) #7, !srcloc !116
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_read32(ptr noundef %iomem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %iomem) #7, !srcloc !117
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_write32(ptr noundef %iomem, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %data) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %iomem, i32 %0) #7, !srcloc !120
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @intc_irqpin_read_modify_write(ptr nocapture noundef readonly %p, i32 noundef %reg, i32 noundef %shift, i32 noundef %width, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #7
  %arrayidx.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %p, i32 0, i32 %reg
  %read.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %p, i32 0, i32 %reg, i32 1
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3) #7
  %notmask = shl nsw i32 -1, %width
  %sub = xor i32 %notmask, -1
  %shl3 = shl i32 %sub, %shift
  %neg = xor i32 %shl3, -1
  %and = and i32 %call.i, %neg
  %shl4 = shl i32 %value, %shift
  %or = or i32 %and, %shl4
  %write.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %p, i32 0, i32 %reg, i32 2
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  tail call void %5(ptr noundef %7, i32 noundef %or) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %call) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_enable_force(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %requested_irq = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %4 = ptrtoint ptr %requested_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested_irq, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_enable_force, %if.then.i.i)) #7
          to label %intc_irqpin_irq_enable.exit [label %if.then.i.i], !srcloc !121

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3
  %p.i.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %6 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %requested_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %requested_irq, align 4
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %domain_irq.i.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %14 = ptrtoint ptr %domain_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %domain_irq.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %13, i32 noundef %15) #7
  br label %intc_irqpin_irq_enable.exit

intc_irqpin_irq_enable.exit:                      ; preds = %if.then.i.i, %entry
  %width.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width.i.i.i, align 4
  %18 = xor i32 %3, -1
  %sub1.i.i.i = add i32 %17, %18
  %shl.i.i.i = shl nuw i32 1, %sub1.i.i.i
  %arrayidx.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4
  %write.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 2
  %19 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i.i.i, align 4
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %20(ptr noundef %22, i32 noundef %shl.i.i.i) #7
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %intc_irqpin_irq_enable.exit.irq_get_chip.exit_crit_edge, label %cond.true.i

intc_irqpin_irq_enable.exit.irq_get_chip.exit_crit_edge: ; preds = %intc_irqpin_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %intc_irqpin_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %intc_irqpin_irq_enable.exit.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %24, %cond.true.i ], [ null, %intc_irqpin_irq_enable.exit.irq_get_chip.exit_crit_edge ]
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %cond.i, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask, align 4
  %call4 = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  tail call void %26(ptr noundef %call4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_disable_force(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %requested_irq = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %4 = ptrtoint ptr %requested_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested_irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip.exit_crit_edge, label %cond.true.i

entry.irq_get_chip.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %entry.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %entry.irq_get_chip.exit_crit_edge ]
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %cond.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask, align 4
  %call4 = tail call ptr @irq_get_irq_data(i32 noundef %5) #7
  tail call void %9(ptr noundef %call4) #7
  %10 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip_data.i, align 4
  %12 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_disable_force, %if.then.i.i)) #7
          to label %intc_irqpin_irq_disable.exit [label %if.then.i.i], !srcloc !121

if.then.i.i:                                      ; preds = %irq_get_chip.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 %13
  %p.i.i = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 %13, i32 3
  %14 = ptrtoint ptr %p.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %p.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  %requested_irq.i.i = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 %13, i32 1
  %18 = ptrtoint ptr %requested_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %requested_irq.i.i, align 4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %domain_irq.i.i = getelementptr %struct.intc_irqpin_priv, ptr %11, i32 0, i32 1, i32 %13, i32 2
  %22 = ptrtoint ptr %domain_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %domain_irq.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %19, i32 noundef %21, i32 noundef %23) #7
  br label %intc_irqpin_irq_disable.exit

intc_irqpin_irq_disable.exit:                     ; preds = %if.then.i.i, %irq_get_chip.exit
  %width.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %width.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width.i.i.i, align 4
  %26 = xor i32 %13, -1
  %sub1.i.i.i = add i32 %25, %26
  %shl.i.i.i = shl nuw i32 1, %sub1.i.i.i
  %arrayidx.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 3
  %write.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %11, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %write.i.i.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i.i, align 4
  tail call void %28(ptr noundef %30, i32 noundef %shl.i.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_enable, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3
  %p.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %requested_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %domain_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %12 = ptrtoint ptr %domain_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %width.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i.i, align 4
  %16 = xor i32 %3, -1
  %sub1.i.i = add i32 %15, %16
  %shl.i.i = shl nuw i32 1, %sub1.i.i
  %arrayidx.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4
  %write.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %shl.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_disable, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3
  %p.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %requested_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %domain_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %12 = ptrtoint ptr %domain_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %width.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i.i, align 4
  %16 = xor i32 %3, -1
  %sub1.i.i = add i32 %15, %16
  %shl.i.i = shl nuw i32 1, %sub1.i.i
  %arrayidx.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3
  %write.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %shl.i.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_shared_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_shared_irq_enable, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3
  %p.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %requested_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %domain_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %12 = ptrtoint ptr %domain_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %width.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i.i, align 4
  %16 = xor i32 %3, -1
  %sub1.i.i = add i32 %15, %16
  %shl.i.i = shl nuw i32 1, %sub1.i.i
  %arrayidx.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4
  %write.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %shl.i.i) #7
  %shl = shl nuw i32 1, %3
  %shared_irq_mask = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shared_irq_mask, align 1
  %23 = trunc i32 %shl to i8
  %24 = xor i8 %23, -1
  %conv2 = and i8 %22, %24
  store i8 %conv2, ptr %shared_irq_mask, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intc_irqpin_shared_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_shared_irq_disable, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3
  %p.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 3
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %requested_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %domain_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 2
  %12 = ptrtoint ptr %domain_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.41, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %width.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i.i, align 4
  %16 = xor i32 %3, -1
  %sub1.i.i = add i32 %15, %16
  %shl.i.i = shl nuw i32 1, %sub1.i.i
  %arrayidx.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3
  %write.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write.i.i, align 4
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void %18(ptr noundef %20, i32 noundef %shl.i.i) #7
  %shl = shl nuw i32 1, %3
  %shared_irq_mask = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shared_irq_mask, align 1
  %23 = trunc i32 %shl to i8
  %conv2 = or i8 %22, %23
  store i8 %conv2, ptr %shared_irq_mask, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 15
  %arrayidx = getelementptr [16 x i8], ptr @intc_irqpin_sense, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %conv = zext i8 %1 to i32
  %and1 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %xor = xor i32 %conv, 16
  %sense_bitfield_width.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %sense_bitfield_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sense_bitfield_width.i, align 4
  %add.neg.i = xor i32 %5, -1
  %mul.neg.i = mul i32 %7, %add.neg.i
  %sub.i = add i32 %mul.neg.i, 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_set_sense.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_set_type, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_set_sense.__UNIQUE_ID_ddebug188, ptr noundef %dev.i, ptr noundef nonnull @.str.43, i32 noundef %5, i32 noundef %xor) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %shl.i = shl nuw i32 1, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %xor)
  %cmp.not.i = icmp sgt i32 %shl.i, %xor
  br i1 %cmp.not.i, label %if.end4.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @intc_irqpin_lock) #7
  %read.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read.i.i.i, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i.i.i = tail call i32 %11(ptr noundef %13) #7
  %notmask.i.i = shl nsw i32 -1, %7
  %sub.i.i = xor i32 %notmask.i.i, -1
  %shl3.i.i = shl i32 %sub.i.i, %sub.i
  %neg.i.i = xor i32 %shl3.i.i, -1
  %and.i.i = and i32 %call.i.i.i, %neg.i.i
  %shl4.i.i = shl i32 %xor, %sub.i
  %or.i.i = or i32 %and.i.i, %shl4.i.i
  %write.i.i.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %3, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i.i.i, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  tail call void %15(ptr noundef %17, i32 noundef %or.i.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @intc_irqpin_lock, i32 noundef %call.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end4.i ], [ -22, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %requested_irq = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %3, i32 1
  %4 = ptrtoint ptr %requested_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %requested_irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef %on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %wakeup_path3 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 6
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_path3, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %wakeup_path3, i32 1, i32 3, i32 1) #7
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path3, ptr %wakeup_path3, i32 1, ptr elementtype(i32) %wakeup_path3) #7, !srcloc !122
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path3, ptr %wakeup_path3, i32 1, ptr elementtype(i32) %wakeup_path3) #7, !srcloc !123
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_shared_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %dev_id, i32 0, i32 2
  %read.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %dev_id, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read.i, align 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3) #7
  %shared_irq_mask = getelementptr inbounds %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 8
  %and = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shared_irq_mask, align 1
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.end, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 0
  %call6 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %status.1 = phi i32 [ 0, %if.then.for.inc_crit_edge ], [ %call6, %if.end ], [ 0, %entry.for.inc_crit_edge ]
  %and.1 = and i32 %call.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %7 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shared_irq_mask, align 1
  %9 = and i8 %8, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.1 = icmp eq i8 %9, 0
  br i1 %tobool3.not.1, label %if.end.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 1
  %call6.1 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.1)
  %or.1 = or i32 %call6.1, %status.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %status.1.1 = phi i32 [ %status.1, %if.then.1.for.inc.1_crit_edge ], [ %or.1, %if.end.1 ], [ %status.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %10 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shared_irq_mask, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not.2 = icmp eq i8 %12, 0
  br i1 %tobool3.not.2, label %if.end.2, label %if.then.2.for.inc.2_crit_edge

if.then.2.for.inc.2_crit_edge:                    ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 2
  %call6.2 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.2)
  %or.2 = or i32 %call6.2, %status.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %if.then.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %status.1.2 = phi i32 [ %status.1.1, %if.then.2.for.inc.2_crit_edge ], [ %or.2, %if.end.2 ], [ %status.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %13 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %shared_irq_mask, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.3 = icmp eq i8 %15, 0
  br i1 %tobool3.not.3, label %if.end.3, label %if.then.3.for.inc.3_crit_edge

if.then.3.for.inc.3_crit_edge:                    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 3
  %call6.3 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.3)
  %or.3 = or i32 %call6.3, %status.1.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %if.then.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %status.1.3 = phi i32 [ %status.1.2, %if.then.3.for.inc.3_crit_edge ], [ %or.3, %if.end.3 ], [ %status.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %16 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shared_irq_mask, align 1
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool3.not.4 = icmp eq i8 %18, 0
  br i1 %tobool3.not.4, label %if.end.4, label %if.then.4.for.inc.4_crit_edge

if.then.4.for.inc.4_crit_edge:                    ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 4
  %call6.4 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.4)
  %or.4 = or i32 %call6.4, %status.1.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %if.then.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %status.1.4 = phi i32 [ %status.1.3, %if.then.4.for.inc.4_crit_edge ], [ %or.4, %if.end.4 ], [ %status.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %19 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shared_irq_mask, align 1
  %21 = and i8 %20, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool3.not.5 = icmp eq i8 %21, 0
  br i1 %tobool3.not.5, label %if.end.5, label %if.then.5.for.inc.5_crit_edge

if.then.5.for.inc.5_crit_edge:                    ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end.5:                                         ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 5
  %call6.5 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.5)
  %or.5 = or i32 %call6.5, %status.1.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %if.then.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %status.1.5 = phi i32 [ %status.1.4, %if.then.5.for.inc.5_crit_edge ], [ %or.5, %if.end.5 ], [ %status.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %22 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shared_irq_mask, align 1
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool3.not.6 = icmp eq i8 %24, 0
  br i1 %tobool3.not.6, label %if.end.6, label %if.then.6.for.inc.6_crit_edge

if.then.6.for.inc.6_crit_edge:                    ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.6:                                         ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.6 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 6
  %call6.6 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.6)
  %or.6 = or i32 %call6.6, %status.1.5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %if.then.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %status.1.6 = phi i32 [ %status.1.5, %if.then.6.for.inc.6_crit_edge ], [ %or.6, %if.end.6 ], [ %status.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %and.7 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %25 = ptrtoint ptr %shared_irq_mask to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shared_irq_mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool3.not.7 = icmp sgt i8 %26, -1
  br i1 %tobool3.not.7, label %if.end.7, label %if.then.7.for.inc.7_crit_edge

if.then.7.for.inc.7_crit_edge:                    ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.end.7:                                         ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.7 = getelementptr %struct.intc_irqpin_priv, ptr %dev_id, i32 0, i32 1, i32 7
  %call6.7 = tail call i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr noundef %arrayidx.7)
  %or.7 = or i32 %call6.7, %status.1.6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %if.then.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %status.1.7 = phi i32 [ %status.1.6, %if.then.7.for.inc.7_crit_edge ], [ %or.7, %if.end.7 ], [ %status.1.6, %for.inc.6.for.inc.7_crit_edge ]
  ret i32 %status.1.7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %p1 = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_handler, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p1, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %requested_irq.i = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %requested_irq.i, align 4
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_id, align 4
  %domain_irq.i = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 2
  %10 = ptrtoint ptr %domain_irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %domain_irq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.45, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_id, align 4
  %width.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width.i, align 4
  %16 = xor i32 %13, -1
  %sub1.i = add i32 %15, %16
  %shl.i = shl nuw i32 1, %sub1.i
  %arrayidx.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2
  %read.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read.i, align 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 %18(ptr noundef %20) #7
  %and = and i32 %call.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %intc_irqpin_dbg.exit.cleanup_crit_edge, label %if.then

intc_irqpin_dbg.exit.cleanup_crit_edge:           ; preds = %intc_irqpin_dbg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %intc_irqpin_dbg.exit
  %neg = xor i32 %shl.i, -1
  %write.i = getelementptr [6 x %struct.intc_irqpin_iomem], ptr %1, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i, align 4
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i, align 4
  tail call void %22(ptr noundef %24, i32 noundef %neg) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_handler, %if.then.i19)) #7
          to label %intc_irqpin_dbg.exit20 [label %if.then.i19], !srcloc !121

if.then.i19:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p1, align 4
  %pdev.i15 = getelementptr inbounds %struct.intc_irqpin_priv, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %pdev.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i15, align 4
  %dev.i16 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %requested_irq.i17 = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 1
  %29 = ptrtoint ptr %requested_irq.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %requested_irq.i17, align 4
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_id, align 4
  %domain_irq.i18 = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 2
  %33 = ptrtoint ptr %domain_irq.i18 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %domain_irq.i18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i16, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.46, i32 noundef %30, i32 noundef %32, i32 noundef %34) #7
  br label %intc_irqpin_dbg.exit20

intc_irqpin_dbg.exit20:                           ; preds = %if.then.i19, %if.then
  %domain_irq = getelementptr inbounds %struct.intc_irqpin_irq, ptr %dev_id, i32 0, i32 2
  %35 = ptrtoint ptr %domain_irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %domain_irq, align 4
  %call3 = tail call i32 @generic_handle_irq(i32 noundef %36) #7
  br label %cleanup

cleanup:                                          ; preds = %intc_irqpin_dbg.exit20, %intc_irqpin_dbg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %intc_irqpin_dbg.exit20 ], [ 0, %intc_irqpin_dbg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_irq_domain_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %arrayidx = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %hw
  %domain_irq = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %hw, i32 2
  %2 = ptrtoint ptr %domain_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %virq, ptr %domain_irq, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %hw, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intc_irqpin_irq_domain_map, %if.then.i)) #7
          to label %intc_irqpin_dbg.exit [label %if.then.i], !srcloc !121

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %p.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %hw, i32 3
  %4 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p.i, align 4
  %pdev.i = getelementptr inbounds %struct.intc_irqpin_priv, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %requested_irq.i = getelementptr %struct.intc_irqpin_priv, ptr %1, i32 0, i32 1, i32 %hw, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %domain_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.44, i32 noundef %9, i32 noundef %11, i32 noundef %13) #7
  br label %intc_irqpin_dbg.exit

intc_irqpin_dbg.exit:                             ; preds = %if.then.i, %entry
  %14 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %15) #7
  tail call void @__irq_set_lockdep_class(i32 noundef %virq, ptr noundef nonnull @intc_irqpin_irq_lock_class, ptr noundef nonnull @intc_irqpin_irq_request_class) #7
  %irq_chip = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_irqpin_suspend(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup_path = getelementptr inbounds %struct.intc_irqpin_priv, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_path, i32 noundef 4) #7
  %2 = ptrtoint ptr %wakeup_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wakeup_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %4 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %wakeup_path.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %wakeup_path.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @__initcall__kmod_irq_renesas_intc_irqpin__190_600_intc_irqpin_init2, !1, !"__initcall__kmod_irq_renesas_intc_irqpin__190_600_intc_irqpin_init2", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 600, i32 1}
!2 = !{ptr @__exitcall_intc_irqpin_exit, !3, !"__exitcall_intc_irqpin_exit", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 606, i32 1}
!4 = !{ptr @__UNIQUE_ID_author191, !5, !"__UNIQUE_ID_author191", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 608, i32 1}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 609, i32 1}
!8 = !{ptr @__UNIQUE_ID_file193, !9, !"__UNIQUE_ID_file193", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 610, i32 1}
!10 = !{ptr @__UNIQUE_ID_license194, !9, !"__UNIQUE_ID_license194", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 590, i32 11}
!13 = !{ptr @intc_irqpin_device_driver, !14, !"intc_irqpin_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 586, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 393, i32 37}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 395, i32 55}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 412, i32 4}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @intc_irqpin_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @intc_irqpin_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 432, i32 3}
!29 = !{ptr @intc_irqpin_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @intc_irqpin_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 457, i32 4}
!33 = !{ptr @intc_irqpin_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @intc_irqpin_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 465, i32 4}
!37 = !{ptr @intc_irqpin_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @intc_irqpin_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 477, i32 4}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @intc_irqpin_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @intc_irqpin_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 510, i32 19}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 522, i32 3}
!48 = !{ptr @intc_irqpin_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @intc_irqpin_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 531, i32 4}
!52 = !{ptr @intc_irqpin_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @intc_irqpin_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @intc_irqpin_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 541, i32 5}
!56 = !{ptr @intc_irqpin_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 552, i32 2}
!59 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @intc_irqpin_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @intc_irqpin_probe._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 125, i32 8}
!64 = !{ptr @intc_irqpin_lock, !63, !"intc_irqpin_lock", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 183, i32 35}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 174, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @intc_irqpin_dbg.__UNIQUE_ID_ddebug189, !68, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 192, i32 35}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 201, i32 35}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 212, i32 35}
!78 = !{ptr @intc_irqpin_sense, !79, !"intc_irqpin_sense", i1 false, i1 false}
!79 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 248, i32 22}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 162, i32 2}
!82 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @intc_irqpin_set_sense.__UNIQUE_ID_ddebug188, !81, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!84 = !{ptr @intc_irqpin_irq_domain_ops, !85, !"intc_irqpin_irq_domain_ops", i1 false, i1 false}
!85 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 344, i32 36}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 336, i32 31}
!88 = !{ptr @intc_irqpin_irq_lock_class, !89, !"intc_irqpin_irq_lock_class", i1 false, i1 false}
!89 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 323, i32 30}
!90 = !{ptr @intc_irqpin_irq_request_class, !91, !"intc_irqpin_irq_request_class", i1 false, i1 false}
!91 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 326, i32 30}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 288, i32 21}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 293, i32 22}
!96 = !{ptr @intc_irqpin_dt_ids, !97, !"intc_irqpin_dt_ids", i1 false, i1 false}
!97 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 357, i32 34}
!98 = !{ptr @intc_irqpin_irlm_r8a777x, !99, !"intc_irqpin_irlm_r8a777x", i1 false, i1 false}
!99 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 349, i32 40}
!100 = !{ptr @intc_irqpin_rmobile, !101, !"intc_irqpin_rmobile", i1 false, i1 false}
!101 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 353, i32 40}
!102 = !{ptr @intc_irqpin_pm_ops, !103, !"intc_irqpin_pm_ops", i1 false, i1 false}
!103 = !{!"../drivers/irqchip/irq-renesas-intc-irqpin.c", i32 584, i32 8}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 5001101}
!114 = !{i64 2152532956}
!115 = !{i64 2152534561}
!116 = !{i64 5000706}
!117 = !{i64 5001321}
!118 = !{i64 2152534180}
!119 = !{i64 2152535535}
!120 = !{i64 5000903}
!121 = !{i64 2148872425, i64 2148872430, i64 2148872443, i64 2148872487, i64 2148872521, i64 2148872542}
!122 = !{i64 2148235926, i64 2148235952, i64 2148235981, i64 2148236015, i64 2148236046, i64 2148236069}
!123 = !{i64 2148238391, i64 2148238417, i64 2148238446, i64 2148238480, i64 2148238511, i64 2148238534}
