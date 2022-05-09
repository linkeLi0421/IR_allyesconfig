; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-ml-ioh.c_pt.bc'
source_filename = "../drivers/gpio/gpio-ml-ioh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.ioh_gpio = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.ioh_gpio_reg_data, i32, i32, i32, %struct.spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.ioh_gpio_reg_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ioh_reg_comn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ioh_regs = type { [8 x %struct.ioh_reg_comn], [16 x i32], [4 x i32], [11 x i32], i32 }

@__initcall__kmod_gpio_ml_ioh__238_567_ioh_gpio_driver_init6 = internal global ptr @ioh_gpio_driver_init, section ".initcall6.init", align 4
@ioh_gpio_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @ioh_gpio_pcidev_id, ptr @ioh_gpio_probe, ptr @ioh_gpio_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ioh_gpio_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ioh_gpio_driver_exit = internal global ptr @ioh_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [68 x i8] c"gpio_ml_ioh.description=OKI SEMICONDUCTOR ML-IOH series GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [42 x i8] c"gpio_ml_ioh.file=drivers/gpio/gpio-ml-ioh\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"gpio_ml_ioh.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_ml_ioh\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ml_ioh_gpio\00", [20 x i8] zeroinitializer }, align 32
@ioh_gpio_pcidev_id = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4315, i32 32814, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ioh_gpio_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ioh_gpio_suspend, ptr @ioh_gpio_resume, ptr @ioh_gpio_suspend, ptr @ioh_gpio_resume, ptr @ioh_gpio_suspend, ptr @ioh_gpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 414, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s : pci_enable_device failed\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ioh_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-ml-ioh.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr = internal global ptr @ioh_gpio_probe._entry, section ".printk_index", align 4
@ioh_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 420, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_request_regions failed-%d\00", [34 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.9 = internal global ptr @ioh_gpio_probe._entry.7, section ".printk_index", align 4
@ioh_gpio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 426, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s : pci_iomap failed\00", [42 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.12 = internal global ptr @ioh_gpio_probe._entry.10, section ".printk_index", align 4
@ioh_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->spinlock\00", [16 x i8] zeroinitializer }, align 32
@num_ports = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6, i32 12, i32 16, i32 16, i32 15, i32 16, i32 16, i32 12], [32 x i8] zeroinitializer }, align 32
@ioh_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ioh_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ioh_gpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 447, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IOH gpio: Failed to register GPIO\0A\00", [61 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.16 = internal global ptr @ioh_gpio_probe._entry.14, section ".printk_index", align 4
@ioh_gpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 458, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ml_ioh_gpio: Failed to get IRQ base num\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.20 = internal global ptr @ioh_gpio_probe._entry.17, section ".printk_index", align 4
@ioh_gpio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s request_irq failed\0A\00", [41 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.23 = internal global ptr @ioh_gpio_probe._entry.21, section ".printk_index", align 4
@ioh_gpio_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s Failed returns %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ioh_gpio_probe._entry_ptr.26 = internal global ptr @ioh_gpio_probe._entry.24, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ioh_gpio\00", [23 x i8] zeroinitializer }, align 32
@ioh_irq_type.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.4, ptr @.str.29, i8 0, i8 63, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ioh_irq_type\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s:irq=%d type=%d ch=%d pos=%d type=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@ioh_irq_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.4, i32 279, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: unknown type(%dd)\00", [42 x i8] zeroinitializer }, align 32
@ioh_irq_type._entry_ptr = internal global ptr @ioh_irq_type._entry, section ".printk_index", align 4
@ioh_gpio_handler.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ioh_gpio_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s:[%d]:irq=%d status=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8, i64 16]
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"ioh_gpio_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 557, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 567, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 558, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"ioh_gpio_pcidev_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 551, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"ioh_gpio_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 549, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 414, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 420, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 426, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 443, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [10 x i8] c"num_ports\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 90, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 445, i32 9 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 447, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 457, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 474, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 501, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 380, i32 46 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 254, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 278, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [30 x i8] c"../drivers/gpio/gpio-ml-ioh.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 359, i32 5 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_ioh_gpio_driver_exit, ptr @__initcall__kmod_gpio_ml_ioh__238_567_ioh_gpio_driver_init6, ptr @ioh_gpio_driver_exit, ptr @ioh_gpio_probe._entry, ptr @ioh_gpio_probe._entry.10, ptr @ioh_gpio_probe._entry.14, ptr @ioh_gpio_probe._entry.17, ptr @ioh_gpio_probe._entry.21, ptr @ioh_gpio_probe._entry.24, ptr @ioh_gpio_probe._entry.7, ptr @ioh_gpio_probe._entry_ptr, ptr @ioh_gpio_probe._entry_ptr.12, ptr @ioh_gpio_probe._entry_ptr.16, ptr @ioh_gpio_probe._entry_ptr.20, ptr @ioh_gpio_probe._entry_ptr.23, ptr @ioh_gpio_probe._entry_ptr.26, ptr @ioh_gpio_probe._entry_ptr.9, ptr @ioh_irq_type._entry, ptr @ioh_irq_type._entry_ptr, ptr @ioh_gpio_driver, ptr @.str, ptr @.str.1, ptr @ioh_gpio_pcidev_id, ptr @ioh_gpio_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @ioh_gpio_probe.__key, ptr @.str.13, ptr @num_ports, ptr @ioh_gpio_probe.lock_key, ptr @ioh_gpio_probe.request_key, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_pcidev_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_ports to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_gpio_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioh_irq_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ioh_gpio_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ioh_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ioh_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %do.end67

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call2) #9
  br label %err_request_regions

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %if.end15

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3) #9
  br label %err_iomap

if.end15:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3552) #10
  %cmp = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp, label %if.end15.err_kzalloc_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.err_kzalloc_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kzalloc

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %chip.0140 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call7.i.i.i, %if.end15.for.body_crit_edge ]
  %i.0139 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %dev20 = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 2
  %1 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev20, align 4
  %2 = ptrtoint ptr %chip.0140 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %chip.0140, align 4
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 1
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 6
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.0139, ptr %ch, align 4
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @ioh_gpio_probe.__key, i16 noundef signext 3) #6
  %arrayidx = getelementptr [8 x i32], ptr @num_ports, i32 0, i32 %i.0139
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev20, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.ioh_gpio_setup.exit_crit_edge

for.body.ioh_gpio_setup.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %ioh_gpio_setup.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %ioh_gpio_setup.exit

ioh_gpio_setup.exit:                              ; preds = %if.end.i.i, %for.body.ioh_gpio_setup.exit_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %for.body.ioh_gpio_setup.exit_crit_edge ]
  %gpio1.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3
  %13 = ptrtoint ptr %gpio1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i.i, ptr %gpio1.i, align 4
  %owner.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %owner.i, align 4
  %direction_input.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ioh_gpio_direction_input, ptr %direction_input.i, align 4
  %get.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 10
  %16 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ioh_gpio_get, ptr %get.i, align 4
  %direction_output.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 9
  %17 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ioh_gpio_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ioh_gpio_set, ptr %set.i, align 4
  %dbg_show.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 16
  %19 = ptrtoint ptr %dbg_show.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %dbg_show.i, align 4
  %base.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 19
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %base.i, align 4
  %conv.i = trunc i32 %6 to i16
  %ngpio.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 20
  %21 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 23
  %22 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %can_sleep.i, align 4
  %to_irq.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.0140, i32 0, i32 3, i32 15
  %23 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ioh_gpio_to_irq, ptr %to_irq.i, align 4
  %call27 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio1.i, ptr noundef %chip.0140, ptr noundef nonnull @ioh_gpio_probe.lock_key, ptr noundef nonnull @ioh_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.inc, label %err_gpiochip_add

for.inc:                                          ; preds = %ioh_gpio_setup.exit
  %inc = add nuw nsw i32 %i.0139, 1
  %incdec.ptr = getelementptr %struct.ioh_gpio, ptr %chip.0140, i32 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.for.body36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.body36_crit_edge:                     ; preds = %for.inc
  br label %for.body36

for.body36:                                       ; preds = %for.inc51.for.body36_crit_edge, %for.inc.for.body36_crit_edge
  %chip.1142 = phi ptr [ %incdec.ptr53, %for.inc51.for.body36_crit_edge ], [ %call7.i.i.i, %for.inc.for.body36_crit_edge ]
  %j.0141 = phi i32 [ %inc52, %for.inc51.for.body36_crit_edge ], [ 0, %for.inc.for.body36_crit_edge ]
  %arrayidx37 = getelementptr [8 x i32], ptr @num_ports, i32 0, i32 %j.0141
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %call38 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev1, i32 noundef -1, i32 noundef 0, i32 noundef %25, i32 noundef -1, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end44

do.end43:                                         ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %while.body

if.end44:                                         ; preds = %for.body36
  %irq_base45 = getelementptr inbounds %struct.ioh_gpio, ptr %chip.1142, i32 0, i32 7
  %26 = ptrtoint ptr %irq_base45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call38, ptr %irq_base45, align 4
  %dev.i132 = getelementptr inbounds %struct.ioh_gpio, ptr %chip.1142, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i132 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i132, align 4
  %29 = ptrtoint ptr %chip.1142 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip.1142, align 4
  %call.i = tail call ptr @devm_irq_alloc_generic_chip(ptr noundef %28, ptr noundef nonnull @.str.27, i32 noundef 1, i32 noundef %call38, ptr noundef %30, ptr noundef nonnull @handle_simple_irq) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end44.while.body_crit_edge, label %ioh_gpio_alloc_generic_chip.exit

if.end44.while.body_crit_edge:                    ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

ioh_gpio_alloc_generic_chip.exit:                 ; preds = %if.end44
  %private.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 0, i32 14
  %31 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %chip.1142, ptr %private.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @ioh_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ioh_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 3
  %34 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @ioh_irq_type, ptr %irq_set_type.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ioh_irq_disable, ptr %irq_disable.i, align 4
  %irq_enable.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call.i, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ioh_irq_enable, ptr %irq_enable.i, align 4
  %37 = ptrtoint ptr %dev.i132 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i132, align 4
  %notmask.i = shl nsw i32 -1, %25
  %sub.i = xor i32 %notmask.i, -1
  %call7.i = tail call i32 @devm_irq_setup_generic_chip(ptr noundef %38, ptr noundef nonnull %call.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 3072, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool48.not = icmp eq i32 %call7.i, 0
  br i1 %tobool48.not, label %for.inc51, label %ioh_gpio_alloc_generic_chip.exit.while.body_crit_edge

ioh_gpio_alloc_generic_chip.exit.while.body_crit_edge: ; preds = %ioh_gpio_alloc_generic_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

for.inc51:                                        ; preds = %ioh_gpio_alloc_generic_chip.exit
  %inc52 = add nuw nsw i32 %j.0141, 1
  %incdec.ptr53 = getelementptr %struct.ioh_gpio, ptr %chip.1142, i32 1
  %exitcond151.not = icmp eq i32 %inc52, 8
  br i1 %exitcond151.not, label %for.end54, label %for.inc51.for.body36_crit_edge

for.inc51.for.body36_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36

for.end54:                                        ; preds = %for.inc51
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call.i133 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %40, ptr noundef nonnull @ioh_gpio_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %cmp56.not = icmp eq i32 %call.i133, 0
  br i1 %cmp56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3) #9
  br label %while.body

if.end61:                                         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %41 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_gpiochip_add:                                 ; preds = %ioh_gpio_setup.exit
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0139)
  %cmp62144.not = icmp eq i32 %i.0139, 0
  br i1 %cmp62144.not, label %err_gpiochip_add.while.end_crit_edge, label %err_gpiochip_add.while.body_crit_edge

err_gpiochip_add.while.body_crit_edge:            ; preds = %err_gpiochip_add
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

err_gpiochip_add.while.end_crit_edge:             ; preds = %err_gpiochip_add
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %err_gpiochip_add.while.body_crit_edge, %do.end60, %ioh_gpio_alloc_generic_chip.exit.while.body_crit_edge, %if.end44.while.body_crit_edge, %do.end43
  %ret.0156 = phi i32 [ %call27, %err_gpiochip_add.while.body_crit_edge ], [ %call.i133, %do.end60 ], [ %call38, %do.end43 ], [ -12, %if.end44.while.body_crit_edge ], [ %call7.i, %ioh_gpio_alloc_generic_chip.exit.while.body_crit_edge ]
  %i.0138155 = phi i32 [ %i.0139, %err_gpiochip_add.while.body_crit_edge ], [ 8, %do.end60 ], [ 8, %do.end43 ], [ 8, %ioh_gpio_alloc_generic_chip.exit.while.body_crit_edge ], [ 8, %if.end44.while.body_crit_edge ]
  %gpio63 = getelementptr inbounds %struct.ioh_gpio, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0138155)
  %cmp62 = icmp ugt i32 %i.0138155, 1
  br i1 %cmp62, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %gpio63.1 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 1, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0138155)
  %cmp62.1.not = icmp eq i32 %i.0138155, 2
  br i1 %cmp62.1.not, label %while.body.1.while.end_crit_edge, label %while.body.2

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %gpio63.2 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 2, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0138155)
  %cmp62.2 = icmp ugt i32 %i.0138155, 3
  br i1 %cmp62.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %gpio63.3 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 3, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0138155)
  %cmp62.3.not = icmp eq i32 %i.0138155, 4
  br i1 %cmp62.3.not, label %while.body.3.while.end_crit_edge, label %while.body.4

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %gpio63.4 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 4, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0138155)
  %cmp62.4 = icmp ugt i32 %i.0138155, 5
  br i1 %cmp62.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  %gpio63.5 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 5, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0138155)
  %cmp62.5.not = icmp eq i32 %i.0138155, 6
  br i1 %cmp62.5.not, label %while.body.5.while.end_crit_edge, label %while.body.6

while.body.5.while.end_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %while.body.5
  %gpio63.6 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 6, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0138155)
  %cmp62.6 = icmp ugt i32 %i.0138155, 7
  br i1 %cmp62.6, label %while.body.7, label %while.body.6.while.end_crit_edge

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.7:                                     ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %gpio63.7 = getelementptr %struct.ioh_gpio, ptr %call7.i.i.i, i32 7, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio63.7) #6
  br label %while.end

while.end:                                        ; preds = %while.body.7, %while.body.6.while.end_crit_edge, %while.body.5.while.end_crit_edge, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %err_gpiochip_add.while.end_crit_edge
  %ret.0157 = phi i32 [ %call27, %err_gpiochip_add.while.end_crit_edge ], [ %ret.0156, %while.body.7 ], [ %ret.0156, %while.body.6.while.end_crit_edge ], [ %ret.0156, %while.body.5.while.end_crit_edge ], [ %ret.0156, %while.body.4.while.end_crit_edge ], [ %ret.0156, %while.body.3.while.end_crit_edge ], [ %ret.0156, %while.body.2.while.end_crit_edge ], [ %ret.0156, %while.body.1.while.end_crit_edge ], [ %ret.0156, %while.body.while.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %err_kzalloc

err_kzalloc:                                      ; preds = %while.end, %if.end15.err_kzalloc_crit_edge
  %ret.1 = phi i32 [ %ret.0157, %while.end ], [ -12, %if.end15.err_kzalloc_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call9) #6
  br label %err_iomap

err_iomap:                                        ; preds = %err_kzalloc, %do.end14
  %ret.2 = phi i32 [ %ret.1, %err_kzalloc ], [ -12, %do.end14 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_request_regions

err_request_regions:                              ; preds = %err_iomap, %do.end7
  %ret.3 = phi i32 [ %call2, %do.end7 ], [ %ret.2, %err_iomap ]
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %do.end67

do.end67:                                         ; preds = %err_request_regions, %do.end
  %ret.4 = phi i32 [ %call, %do.end ], [ %ret.3, %err_request_regions ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.3, i32 noundef %ret.4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end67, %if.end61
  %retval.0 = phi i32 [ %ret.4, %do.end67 ], [ 0, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_gpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio = getelementptr inbounds %struct.ioh_gpio, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio) #6
  %gpio.1 = getelementptr %struct.ioh_gpio, ptr %1, i32 1, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.1) #6
  %gpio.2 = getelementptr %struct.ioh_gpio, ptr %1, i32 2, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.2) #6
  %gpio.3 = getelementptr %struct.ioh_gpio, ptr %1, i32 3, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.3) #6
  %gpio.4 = getelementptr %struct.ioh_gpio, ptr %1, i32 4, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.4) #6
  %gpio.5 = getelementptr %struct.ioh_gpio, ptr %1, i32 5, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.5) #6
  %gpio.6 = getelementptr %struct.ioh_gpio, ptr %1, i32 6, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.6) #6
  %gpio.7 = getelementptr %struct.ioh_gpio, ptr %1, i32 7, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio.7) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.inc17.for.body4.lr.ph_crit_edge, %entry
  %chip.042 = phi ptr [ %dev_id, %entry ], [ %incdec.ptr, %for.inc17.for.body4.lr.ph_crit_edge ]
  %ret.041 = phi i32 [ 0, %entry ], [ %ret.2, %for.inc17.for.body4.lr.ph_crit_edge ]
  %i.040 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17.for.body4.lr.ph_crit_edge ]
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %chip.042, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %istatus = getelementptr [8 x %struct.ioh_reg_comn], ptr %1, i32 0, i32 %i.040, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %istatus) #6, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %arrayidx2 = getelementptr [8 x i32], ptr @num_ports, i32 0, i32 %i.040
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %dev = getelementptr inbounds %struct.ioh_gpio, ptr %chip.042, i32 0, i32 2
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %chip.042, i32 0, i32 6
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %chip.042, i32 0, i32 7
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %ret.139 = phi i32 [ %ret.041, %for.body4.lr.ph ], [ %ret.2, %for.inc.for.body4_crit_edge ]
  %j.036 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %shl = shl nuw i32 1, %j.036
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body4.for.inc_crit_edge, label %do.body

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ioh_gpio_handler.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ioh_gpio_handler, %do.end)) #6
          to label %if.then10 [label %do.end], !srcloc !83

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ioh_gpio_handler.__UNIQUE_ID_ddebug237, ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %j.036, i32 noundef %irq, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch, align 4
  %iclr = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %iclr, i32 %12) #6, !srcloc !85
  %13 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_base, align 4
  %add = add i32 %14, %j.036
  %call15 = tail call i32 @generic_handle_irq(i32 noundef %add) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body4.for.inc_crit_edge
  %ret.2 = phi i32 [ 1, %do.end ], [ %ret.139, %for.body4.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.036, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc17, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.inc17:                                        ; preds = %for.inc
  %inc18 = add nuw nsw i32 %i.040, 1
  %incdec.ptr = getelementptr %struct.ioh_gpio, ptr %chip.042, i32 1
  %exitcond43.not = icmp eq i32 %inc18, 8
  br i1 %exitcond43.not, label %for.end19, label %for.inc17.for.body4.lr.ph_crit_edge

for.inc17.for.body4.lr.ph_crit_edge:              ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4.lr.ph

for.end19:                                        ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_direction_input(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  %pm6 = getelementptr [8 x %struct.ioh_reg_comn], ptr %1, i32 0, i32 %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm6) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 4
  %arrayidx9 = getelementptr [8 x i32], ptr @num_ports, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %notmask = shl nsw i32 -1, %9
  %shl10 = shl nuw i32 1, %nr
  %10 = or i32 %notmask, %shl10
  %11 = xor i32 %10, -1
  %and11 = and i32 %5, %11
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg, align 4
  %pm16 = getelementptr [8 x %struct.ioh_reg_comn], ptr %13, i32 0, i32 %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %and11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm16, i32 %14) #6, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_get(ptr noundef %gpio, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  %pi = getelementptr [8 x %struct.ioh_reg_comn], ptr %1, i32 0, i32 %3, i32 7
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pi) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %6 = lshr i32 %5, %nr
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_direction_output(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  %pm6 = getelementptr [8 x %struct.ioh_reg_comn], ptr %1, i32 0, i32 %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm6) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 4
  %arrayidx9 = getelementptr [8 x i32], ptr @num_ports, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %notmask = shl nsw i32 -1, %9
  %sub = xor i32 %notmask, -1
  %and = and i32 %5, %sub
  %shl10 = shl nuw i32 1, %nr
  %or = or i32 %and, %shl10
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg, align 4
  %pm15 = getelementptr [8 x %struct.ioh_reg_comn], ptr %11, i32 0, i32 %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm15, i32 %12) #6, !srcloc !85
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  %15 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch, align 4
  %po = getelementptr [8 x %struct.ioh_reg_comn], ptr %14, i32 0, i32 %16, i32 6
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po) #6, !srcloc !81
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %or22 = or i32 %18, %shl10
  %neg = xor i32 %shl10, -1
  %and24 = and i32 %18, %neg
  %reg_val.0 = select i1 %tobool.not, i32 %and24, i32 %or22
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch, align 4
  %po29 = getelementptr [8 x %struct.ioh_reg_comn], ptr %20, i32 0, i32 %22, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po29, i32 %23) #6, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_gpio_set(ptr noundef %gpio, i32 noundef %nr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch, align 4
  %po = getelementptr [8 x %struct.ioh_reg_comn], ptr %1, i32 0, i32 %3, i32 6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl7 = shl nuw i32 1, %nr
  %or = or i32 %5, %shl7
  %neg = xor i32 %shl7, -1
  %and = and i32 %5, %neg
  %reg_val.0 = select i1 %tobool.not, i32 %and, i32 %or
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch, align 4
  %po12 = getelementptr [8 x %struct.ioh_reg_comn], ptr %7, i32 0, i32 %9, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po12, i32 %10) #6, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_to_irq(ptr noundef %gpio, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #6
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  %add = add i32 %1, %offset
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_irq_alloc_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch, align 4
  %imask = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask, i32 %12) #6, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %5, %7
  %shl = shl nuw i32 1, %sub
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch, align 4
  %imaskclr = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imaskclr, i32 %12) #6, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 4
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %1, %7
  %add = add i32 %7, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add)
  %cmp.not = icmp sgt i32 %1, %add
  %reg4 = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %reg4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg4, align 4
  %ch6 = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %ch6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch6, align 4
  %im_0 = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 9
  %im_1 = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 10
  %sub8 = add i32 %sub, -8
  %im_pos.0 = select i1 %cmp.not, i32 %sub8, i32 %sub
  %im_reg.0 = select i1 %cmp.not, ptr %im_1, ptr %im_0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ioh_irq_type.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ioh_irq_type, %do.body16)) #6
          to label %if.then13 [label %do.body16], !srcloc !83

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ioh_irq_type.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %1, i32 noundef %type, i32 noundef %sub, i32 noundef %im_pos.0, i32 noundef %type) #6
  br label %do.body16

do.body16:                                        ; preds = %if.then13, %entry
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 8
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %14 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end32 [
    i32 1, label %do.body16.sw.epilog_crit_edge
    i32 2, label %sw.bb25
    i32 3, label %sw.bb26
    i32 4, label %sw.bb27
    i32 8, label %sw.bb28
    i32 16, label %do.body16.end_crit_edge
  ]

do.body16.end_crit_edge:                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

do.body16.sw.epilog_crit_edge:                    ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb26:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb27:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb28:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end32:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %type) #9
  br label %end

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %do.body16.sw.epilog_crit_edge
  %val.0 = phi i32 [ 2, %sw.bb28 ], [ 3, %sw.bb27 ], [ 4, %sw.bb26 ], [ 0, %sw.bb25 ], [ %type, %do.body16.sw.epilog_crit_edge ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im_reg.0) #6, !srcloc !81
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %mul = shl i32 %im_pos.0, 2
  %shl = shl i32 7, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %18, %neg
  %shl36 = shl i32 %val.0, %mul
  %or = or i32 %and, %shl36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im_reg.0, i32 %19) #6, !srcloc !85
  %shl37 = shl nuw i32 1, %sub
  %reg38 = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %reg38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg38, align 4
  %ch40 = getelementptr inbounds %struct.ioh_gpio, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %ch40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch40, align 4
  %iclr = getelementptr [8 x %struct.ioh_reg_comn], ptr %21, i32 0, i32 %23, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl37) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %iclr, i32 %24) #6, !srcloc !85
  %25 = ptrtoint ptr %reg38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg38, align 4
  %27 = ptrtoint ptr %ch40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ch40, align 4
  %imaskclr = getelementptr [8 x %struct.ioh_reg_comn], ptr %26, i32 0, i32 %28, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imaskclr, i32 %24) #6, !srcloc !85
  %29 = ptrtoint ptr %reg38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg38, align 4
  %31 = ptrtoint ptr %ch40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch40, align 4
  %arrayidx50 = getelementptr [8 x %struct.ioh_reg_comn], ptr %30, i32 0, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx50) #6, !srcloc !81
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %or54 = or i32 %34, %shl37
  %35 = ptrtoint ptr %reg38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg38, align 4
  %37 = ptrtoint ptr %ch40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ch40, align 4
  %arrayidx58 = getelementptr [8 x %struct.ioh_reg_comn], ptr %36, i32 0, i32 %38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %or54) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx58, i32 %39) #6, !srcloc !85
  br label %end

end:                                              ; preds = %sw.epilog, %do.end32, %do.body16.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call20) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 4
  %arrayidx = getelementptr [8 x %struct.ioh_reg_comn], ptr %5, i32 0, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %11, %13
  %shl = shl nuw i32 1, %sub
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch, align 4
  %arrayidx11 = getelementptr [8 x %struct.ioh_reg_comn], ptr %15, i32 0, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 %18) #6, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ioh_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %ch = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 4
  %arrayidx = getelementptr [8 x %struct.ioh_reg_comn], ptr %5, i32 0, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.ioh_gpio, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %11, %13
  %shl = shl nuw i32 1, %sub
  %or = or i32 %shl, %9
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg, align 4
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch, align 4
  %arrayidx11 = getelementptr [8 x %struct.ioh_reg_comn], ptr %15, i32 0, i32 %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 %18) #6, !srcloc !85
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_irq_setup_generic_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.061.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %chip.addr.059.i = phi ptr [ %1, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg.i, align 4
  %ch.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 6
  %4 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch.i, align 4
  %po.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %3, i32 0, i32 %5, i32 6
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %po.i) #6, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %ioh_gpio_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4
  %po_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %po_reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %po_reg.i, align 4
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg.i, align 4
  %11 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch.i, align 4
  %pm.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %10, i32 0, i32 %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %pm.i) #6, !srcloc !81
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %pm_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %pm_reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pm_reg.i, align 4
  %16 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg.i, align 4
  %18 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch.i, align 4
  %arrayidx10.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %17, i32 0, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx10.i) #6, !srcloc !81
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %22 = ptrtoint ptr %ioh_gpio_reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ioh_gpio_reg.i, align 4
  %23 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg.i, align 4
  %25 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch.i, align 4
  %imask.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %24, i32 0, i32 %26, i32 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %imask.i) #6, !srcloc !81
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %imask_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %imask_reg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %imask_reg.i, align 4
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg.i, align 4
  %32 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch.i, align 4
  %im_0.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %31, i32 0, i32 %33, i32 9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im_0.i) #6, !srcloc !81
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %im0_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 4
  %36 = ptrtoint ptr %im0_reg.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %im0_reg.i, align 4
  %37 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg.i, align 4
  %39 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch.i, align 4
  %im_1.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %38, i32 0, i32 %40, i32 10
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %im_1.i) #6, !srcloc !81
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %im1_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 5
  %43 = ptrtoint ptr %im1_reg.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %im1_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.061.i)
  %cmp31.i = icmp ult i32 %i.061.i, 4
  br i1 %cmp31.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg.i, align 4
  %arrayidx33.i = getelementptr %struct.ioh_regs, ptr %45, i32 0, i32 2, i32 %i.061.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx33.i) #6, !srcloc !81
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %use_sel_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.059.i, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %use_sel_reg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %use_sel_reg.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %incdec.ptr.i = getelementptr %struct.ioh_gpio, ptr %chip.addr.059.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ioh_gpio_save_reg_conf.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ioh_gpio_save_reg_conf.exit:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioh_gpio_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %spinlock = getelementptr inbounds %struct.ioh_gpio, ptr %1, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #6
  %reg = getelementptr inbounds %struct.ioh_gpio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %srst = getelementptr inbounds %struct.ioh_regs, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst, i32 16777216) #6, !srcloc !85
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %srst7 = getelementptr inbounds %struct.ioh_regs, ptr %5, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst7, i32 0) #6, !srcloc !85
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.055.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %chip.addr.053.i = phi ptr [ %1, %entry ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %ioh_gpio_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4
  %po_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %po_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %po_reg.i, align 4
  %reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 1
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg.i, align 4
  %ch.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 6
  %10 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch.i, align 4
  %po.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %9, i32 0, i32 %11, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %po.i, i32 %12) #6, !srcloc !85
  %pm_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %pm_reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pm_reg.i, align 4
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg.i, align 4
  %17 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch.i, align 4
  %pm.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %16, i32 0, i32 %18, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %pm.i, i32 %19) #6, !srcloc !85
  %20 = ptrtoint ptr %ioh_gpio_reg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ioh_gpio_reg.i, align 4
  %22 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg.i, align 4
  %24 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch.i, align 4
  %arrayidx10.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %23, i32 0, i32 %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10.i, i32 %26) #6, !srcloc !85
  %imask_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %imask_reg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %imask_reg.i, align 4
  %29 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg.i, align 4
  %31 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch.i, align 4
  %imask.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %30, i32 0, i32 %32, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %28) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %imask.i, i32 %33) #6, !srcloc !85
  %im0_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 4
  %34 = ptrtoint ptr %im0_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %im0_reg.i, align 4
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg.i, align 4
  %38 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch.i, align 4
  %im_0.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %37, i32 0, i32 %39, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %40 = tail call i32 @llvm.bswap.i32(i32 %35) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im_0.i, i32 %40) #6, !srcloc !85
  %im1_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 5
  %41 = ptrtoint ptr %im1_reg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %im1_reg.i, align 4
  %43 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg.i, align 4
  %45 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch.i, align 4
  %im_1.i = getelementptr [8 x %struct.ioh_reg_comn], ptr %44, i32 0, i32 %46, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %im_1.i, i32 %47) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.055.i)
  %cmp26.i = icmp ult i32 %i.055.i, 4
  br i1 %cmp26.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %use_sel_reg.i = getelementptr inbounds %struct.ioh_gpio, ptr %chip.addr.053.i, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %use_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %use_sel_reg.i, align 4
  %50 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg.i, align 4
  %arrayidx29.i = getelementptr %struct.ioh_regs, ptr %51, i32 0, i32 2, i32 %i.055.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29.i, i32 %52) #6, !srcloc !85
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %incdec.ptr.i = getelementptr %struct.ioh_gpio, ptr %chip.addr.053.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %ioh_gpio_restore_reg_conf.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

ioh_gpio_restore_reg_conf.exit:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_gpio_ml_ioh__238_567_ioh_gpio_driver_init6, !1, !"__initcall__kmod_gpio_ml_ioh__238_567_ioh_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 567, i32 1}
!2 = !{ptr @__exitcall_ioh_gpio_driver_exit, !1, !"__exitcall_ioh_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 570, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 558, i32 10}
!11 = !{ptr @ioh_gpio_driver, !12, !"ioh_gpio_driver", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 557, i32 26}
!13 = !{ptr @ioh_gpio_pcidev_id, !14, !"ioh_gpio_pcidev_id", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 551, i32 35}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 414, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ioh_gpio_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ioh_gpio_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 420, i32 3}
!25 = !{ptr @ioh_gpio_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ioh_gpio_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 426, i32 3}
!29 = !{ptr @ioh_gpio_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ioh_gpio_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @ioh_gpio_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 443, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ioh_gpio_probe.lock_key, !35, !"lock_key", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 445, i32 9}
!36 = !{ptr @ioh_gpio_probe.request_key, !35, !"request_key", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 447, i32 4}
!39 = !{ptr @ioh_gpio_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ioh_gpio_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 457, i32 4}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @ioh_gpio_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @ioh_gpio_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 474, i32 3}
!48 = !{ptr @ioh_gpio_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ioh_gpio_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 501, i32 2}
!52 = !{ptr @ioh_gpio_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ioh_gpio_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @num_ports, !55, !"num_ports", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 90, i32 18}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 380, i32 46}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 254, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ioh_irq_type.__UNIQUE_ID_ddebug236, !59, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 278, i32 3}
!64 = !{ptr @ioh_irq_type._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ioh_irq_type._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 359, i32 5}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @ioh_gpio_handler.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!70 = !{ptr @ioh_gpio_pm_ops, !71, !"ioh_gpio_pm_ops", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-ml-ioh.c", i32 549, i32 8}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 5384296}
!82 = !{i64 2152924645}
!83 = !{i64 2148965242, i64 2148965247, i64 2148965260, i64 2148965304, i64 2148965338, i64 2148965359}
!84 = !{i64 2152926000}
!85 = !{i64 5383878}
