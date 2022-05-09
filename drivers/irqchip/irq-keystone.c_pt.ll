; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-keystone.c_pt.bc'
source_filename = "../drivers/irqchip/irq-keystone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.keystone_irq_device = type { ptr, %struct.irq_chip, i32, i32, ptr, ptr, i32, %struct.raw_spinlock }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_keystone__195_230_keystone_irq_device_driver_init6 = internal global ptr @keystone_irq_device_driver_init, section ".initcall6.init", align 4
@keystone_irq_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keystone_irq_probe, ptr @keystone_irq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keystone_irq_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_keystone_irq_device_driver_exit = internal global ptr @keystone_irq_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author196 = internal constant [38 x i8] c"irq_keystone.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_author197 = internal constant [39 x i8] c"irq_keystone.author=Sajesh Kumar Saran\00", section ".modinfo", align 1
@__UNIQUE_ID_author198 = internal constant [38 x i8] c"irq_keystone.author=Grygorii Strashko\00", section ".modinfo", align 1
@__UNIQUE_ID_description199 = internal constant [43 x i8] c"irq_keystone.description=Keystone IRQ chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file200 = internal constant [47 x i8] c"irq_keystone.file=drivers/irqchip/irq-keystone\00", section ".modinfo", align 1
@__UNIQUE_ID_license201 = internal constant [28 x i8] c"irq_keystone.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keystone_irq\00", [19 x i8] zeroinitializer }, align 32
@keystone_irq_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-irq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,syscon-dev\00", [18 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"couldn't read the devctrl_offset offset!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keystone_irq_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-keystone.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry_ptr = internal global ptr @keystone_irq_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keystone-irq\00", [19 x i8] zeroinitializer }, align 32
@keystone_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @keystone_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"IRQ domain registration failed\0A\00", [32 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry_ptr.10 = internal global ptr @keystone_irq_probe._entry.8, section ".printk_index", align 4
@keystone_irq_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&kirq->wa_lock\00", [17 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 196, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"irqchip registered, nr_irqs %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@keystone_irq_probe._entry_ptr.15 = internal global ptr @keystone_irq_probe._entry.12, section ".printk_index", align 4
@keystone_irq_setmask.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"irq_keystone\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_irq_setmask\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mask %lu [%x]\0A\00", [17 x i8] zeroinitializer }, align 32
@keystone_irq_unmask.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keystone_irq_unmask\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unmask %lu [%x]\0A\00", [47 x i8] zeroinitializer }, align 32
@keystone_irq_handler.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keystone_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"start irq %d\0A\00", [18 x i8] zeroinitializer }, align 32
@keystone_irq_handler.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.4, ptr @.str.23, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pending 0x%lx, mask 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@keystone_irq_handler.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.4, ptr @.str.24, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pending after mask 0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@keystone_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@keystone_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.4, i32 114, ptr @.str.27, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"spurious irq detected hwirq %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@keystone_irq_handler._entry_ptr = internal global ptr @keystone_irq_handler._entry, section ".printk_index", align 4
@keystone_irq_handler.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.21, ptr @.str.4, ptr @.str.28, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"end irq %d\0A\00", [20 x i8] zeroinitializer }, align 32
@keystone_irq_readl.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"keystone_irq_readl\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"irq read failed ret(%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@keystone_irq_writel.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keystone_irq_writel\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irq write failed ret(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"keystone_irq_device_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 221, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 225, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"keystone_irq_dt_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 215, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 153, i32 39 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 160, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 170, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"keystone_irq_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 133, i32 36 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 178, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 182, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 196, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 71, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 79, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 94, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 99, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 103, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 113, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 118, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 52, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [34 x i8] c"../drivers/irqchip/irq-keystone.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 63, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author196, ptr @__UNIQUE_ID_author197, ptr @__UNIQUE_ID_author198, ptr @__UNIQUE_ID_description199, ptr @__UNIQUE_ID_file200, ptr @__UNIQUE_ID_license201, ptr @__exitcall_keystone_irq_device_driver_exit, ptr @__initcall__kmod_irq_keystone__195_230_keystone_irq_device_driver_init6, ptr @keystone_irq_device_driver_exit, ptr @keystone_irq_handler._entry, ptr @keystone_irq_handler._entry_ptr, ptr @keystone_irq_probe._entry, ptr @keystone_irq_probe._entry.12, ptr @keystone_irq_probe._entry.8, ptr @keystone_irq_probe._entry_ptr, ptr @keystone_irq_probe._entry_ptr.10, ptr @keystone_irq_probe._entry_ptr.15, ptr @keystone_irq_device_driver, ptr @.str, ptr @keystone_irq_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @keystone_irq_ops, ptr @.str.9, ptr @keystone_irq_probe.__key, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @keystone_irq_handler._rs, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_irq_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keystone_irq_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keystone_irq_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @keystone_irq_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_irq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #7
  %devctrl_regs = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %devctrl_regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %devctrl_regs, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %devctrl_offset = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 6
  %call11 = tail call i32 @of_property_read_u32_index(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %devctrl_offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %mask = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mask, align 4
  %name = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.7, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @keystone_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @keystone_irq_setmask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 1, i32 9
  %10 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @keystone_irq_unmask, ptr %irq_unmask, align 4
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %fwnode.i.i, i32 noundef 28, i32 noundef 28, i32 noundef 0, ptr noundef nonnull @keystone_irq_ops, ptr noundef nonnull %call.i) #7
  %irqd = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %irqd to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call1.i, ptr %irqd, align 4
  %tobool27.not = icmp eq ptr %call1.i, null
  br i1 %tobool27.not, label %do.end31, label %do.body33

do.end31:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body33:                                        ; preds = %if.end20
  %wa_lock = getelementptr inbounds %struct.keystone_irq_device, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %wa_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @keystone_irq_probe.__key, i16 noundef signext 2) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body33.dev_name.exit_crit_edge

do.body33.dev_name.exit_crit_edge:                ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body33.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %do.body33.dev_name.exit_crit_edge ]
  %call.i85 = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @keystone_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool39.not = icmp eq i32 %call.i85, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %irqd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irqd, align 4
  tail call void @irq_domain_remove(ptr noundef %20) #7
  br label %cleanup

if.end42:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @keystone_irq_writel(ptr noundef nonnull %call.i, i32 noundef -1)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 28) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then40, %do.end31, %if.end14.cleanup_crit_edge, %do.end, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %call11, %do.end ], [ %call.i85, %if.then40 ], [ 0, %if.end42 ], [ -19, %do.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_irq_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.keystone_irq_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #7
  %irqd = getelementptr inbounds %struct.keystone_irq_device, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %entry
  %hwirq.09 = phi i32 [ 0, %entry ], [ %inc, %irq_find_mapping.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %irqd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irqd, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !92
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef %hwirq.09, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #7
  %inc = add nuw nsw i32 %hwirq.09, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %irq_find_mapping.exit.for.body_crit_edge

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %irqd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irqd, align 4
  call void @irq_domain_remove(ptr noundef %10) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @keystone_irq_ack(ptr nocapture noundef %d) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_irq_setmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %mask = getelementptr inbounds %struct.keystone_irq_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_setmask.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_setmask, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_setmask.__UNIQUE_ID_ddebug189, ptr noundef %7, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %mask = getelementptr inbounds %struct.keystone_irq_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %mask, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_unmask.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_unmask, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_unmask.__UNIQUE_ID_ddebug190, ptr noundef %7, ptr noundef nonnull @.str.20, i32 noundef %9, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_irq_handler(i32 noundef %irq, ptr noundef %keystone_irq) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_handler.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !93

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keystone_irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_handler.__UNIQUE_ID_ddebug191, ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %irq) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val.i, align 4
  %devctrl_regs.i = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 5
  %3 = ptrtoint ptr %devctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devctrl_regs.i, align 4
  %devctrl_offset.i = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 6
  %5 = ptrtoint ptr %devctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %devctrl_offset.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %do.end.keystone_irq_readl.exit_crit_edge

do.end.keystone_irq_readl.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %keystone_irq_readl.exit

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_readl.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then4.i)) #7
          to label %keystone_irq_readl.exit [label %if.then4.i], !srcloc !93

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %keystone_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_readl.__UNIQUE_ID_ddebug187, ptr noundef %8, ptr noundef nonnull @.str.30, i32 noundef %call.i) #7
  br label %keystone_irq_readl.exit

keystone_irq_readl.exit:                          ; preds = %if.then4.i, %do.body.i, %do.end.keystone_irq_readl.exit_crit_edge
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %devctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devctrl_regs.i, align 4
  %13 = ptrtoint ptr %devctrl_offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devctrl_offset.i, align 4
  %call.i121 = call i32 @regmap_write(ptr noundef %12, i32 noundef %14, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp slt i32 %call.i121, 0
  br i1 %cmp.i122, label %do.body.i123, label %keystone_irq_readl.exit.keystone_irq_writel.exit_crit_edge

keystone_irq_readl.exit.keystone_irq_writel.exit_crit_edge: ; preds = %keystone_irq_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %keystone_irq_writel.exit

do.body.i123:                                     ; preds = %keystone_irq_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_writel.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then4.i124)) #7
          to label %keystone_irq_writel.exit [label %if.then4.i124], !srcloc !93

if.then4.i124:                                    ; preds = %do.body.i123
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %keystone_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_writel.__UNIQUE_ID_ddebug188, ptr noundef %16, ptr noundef nonnull @.str.32, i32 noundef %call.i121) #7
  br label %keystone_irq_writel.exit

keystone_irq_writel.exit:                         ; preds = %if.then4.i124, %do.body.i123, %keystone_irq_readl.exit.keystone_irq_writel.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_handler.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then16)) #7
          to label %do.end20 [label %if.then16], !srcloc !93

if.then16:                                        ; preds = %keystone_irq_writel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %keystone_irq, align 4
  %mask = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 2
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_handler.__UNIQUE_ID_ddebug192, ptr noundef %18, ptr noundef nonnull @.str.23, i32 noundef %10, i32 noundef %20) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %keystone_irq_writel.exit
  %shr = lshr i32 %10, 4
  %mask21 = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 2
  %21 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask21, align 4
  %neg = xor i32 %22, -1
  %and = and i32 %shr, %neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_handler.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then34)) #7
          to label %do.end38 [label %if.then34], !srcloc !93

if.then34:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %keystone_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_handler.__UNIQUE_ID_ddebug193, ptr noundef %24, ptr noundef nonnull @.str.24, i32 noundef %and) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.end20
  %wa_lock = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 7
  %irqd = getelementptr inbounds %struct.keystone_irq_device, ptr %keystone_irq, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end38
  %src.0129 = phi i32 [ 0, %do.end38 ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %src.0129
  %and39 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %for.body.for.inc_crit_edge, label %do.body42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body42:                                        ; preds = %for.body
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %wa_lock) #7
  %25 = ptrtoint ptr %irqd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irqd, align 4
  %call48 = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %src.0129) #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %wa_lock, i32 noundef %call45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool58.not = icmp eq i32 %call48, 0
  br i1 %tobool58.not, label %do.body42.for.inc_crit_edge, label %do.body60

do.body42.for.inc_crit_edge:                      ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body60:                                        ; preds = %do.body42
  %call61 = call i32 @___ratelimit(ptr noundef nonnull @keystone_irq_handler._rs, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.body60.for.inc_crit_edge, label %do.end66

do.body60.for.inc_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %keystone_irq, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.26, i32 noundef %src.0129) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end66, %do.body60.for.inc_crit_edge, %do.body42.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %src.0129, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %do.body73, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body73:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_handler.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_handler, %if.then85)) #7
          to label %do.end89 [label %if.then85], !srcloc !93

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %keystone_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %keystone_irq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_handler.__UNIQUE_ID_ddebug194, ptr noundef %30, ptr noundef nonnull @.str.28, i32 noundef %irq) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body73
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @keystone_irq_writel(ptr nocapture noundef readonly %kirq, i32 noundef %value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %devctrl_regs = getelementptr inbounds %struct.keystone_irq_device, ptr %kirq, i32 0, i32 5
  %0 = ptrtoint ptr %devctrl_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devctrl_regs, align 4
  %devctrl_offset = getelementptr inbounds %struct.keystone_irq_device, ptr %kirq, i32 0, i32 6
  %2 = ptrtoint ptr %devctrl_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devctrl_offset, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %3, i32 noundef %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keystone_irq_writel.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@keystone_irq_writel, %if.then4)) #7
          to label %if.end5 [label %if.then4], !srcloc !93

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %kirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kirq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @keystone_irq_writel.__UNIQUE_ID_ddebug188, ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %call) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %do.body, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keystone_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #7
  %chip = getelementptr inbounds %struct.keystone_irq_device, ptr %1, i32 0, i32 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef %chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 1024, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_irq_keystone__195_230_keystone_irq_device_driver_init6, !1, !"__initcall__kmod_irq_keystone__195_230_keystone_irq_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-keystone.c", i32 230, i32 1}
!2 = !{ptr @__exitcall_keystone_irq_device_driver_exit, !1, !"__exitcall_keystone_irq_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author196, !4, !"__UNIQUE_ID_author196", i1 false, i1 false}
!4 = !{!"../drivers/irqchip/irq-keystone.c", i32 232, i32 1}
!5 = !{ptr @__UNIQUE_ID_author197, !6, !"__UNIQUE_ID_author197", i1 false, i1 false}
!6 = !{!"../drivers/irqchip/irq-keystone.c", i32 233, i32 1}
!7 = !{ptr @__UNIQUE_ID_author198, !8, !"__UNIQUE_ID_author198", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-keystone.c", i32 234, i32 1}
!9 = !{ptr @__UNIQUE_ID_description199, !10, !"__UNIQUE_ID_description199", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-keystone.c", i32 235, i32 1}
!11 = !{ptr @__UNIQUE_ID_file200, !12, !"__UNIQUE_ID_file200", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-keystone.c", i32 236, i32 1}
!13 = !{ptr @__UNIQUE_ID_license201, !12, !"__UNIQUE_ID_license201", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-keystone.c", i32 225, i32 11}
!16 = !{ptr @keystone_irq_device_driver, !17, !"keystone_irq_device_driver", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-keystone.c", i32 221, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-keystone.c", i32 153, i32 39}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-keystone.c", i32 160, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @keystone_irq_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @keystone_irq_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-keystone.c", i32 170, i32 21}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-keystone.c", i32 178, i32 3}
!32 = !{ptr @keystone_irq_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @keystone_irq_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @keystone_irq_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-keystone.c", i32 182, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-keystone.c", i32 196, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @keystone_irq_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @keystone_irq_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/irqchip/irq-keystone.c", i32 71, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @keystone_irq_setmask.__UNIQUE_ID_ddebug189, !43, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-keystone.c", i32 79, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @keystone_irq_unmask.__UNIQUE_ID_ddebug190, !48, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!51 = !{ptr @keystone_irq_ops, !52, !"keystone_irq_ops", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-keystone.c", i32 133, i32 36}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-keystone.c", i32 94, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @keystone_irq_handler.__UNIQUE_ID_ddebug191, !54, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-keystone.c", i32 99, i32 2}
!59 = !{ptr @keystone_irq_handler.__UNIQUE_ID_ddebug192, !58, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/irqchip/irq-keystone.c", i32 103, i32 2}
!62 = !{ptr @keystone_irq_handler.__UNIQUE_ID_ddebug193, !61, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/irqchip/irq-keystone.c", i32 113, i32 5}
!65 = !{ptr @keystone_irq_handler._rs, !64, !"_rs", i1 false, i1 false}
!66 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @keystone_irq_handler._entry, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @keystone_irq_handler._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/irqchip/irq-keystone.c", i32 118, i32 2}
!72 = !{ptr @keystone_irq_handler.__UNIQUE_ID_ddebug194, !71, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/irqchip/irq-keystone.c", i32 52, i32 3}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @keystone_irq_readl.__UNIQUE_ID_ddebug187, !74, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/irqchip/irq-keystone.c", i32 63, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @keystone_irq_writel.__UNIQUE_ID_ddebug188, !78, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!81 = !{ptr @keystone_irq_dt_ids, !82, !"keystone_irq_dt_ids", i1 false, i1 false}
!82 = !{!"../drivers/irqchip/irq-keystone.c", i32 215, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2148348793, i64 2148348798, i64 2148348811, i64 2148348855, i64 2148348889, i64 2148348910}
