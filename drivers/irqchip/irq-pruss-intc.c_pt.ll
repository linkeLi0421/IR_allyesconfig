; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-pruss-intc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-pruss-intc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pruss_intc_match_data = type { i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pruss_intc = type { [160 x %struct.pruss_intc_map_record], [20 x %struct.pruss_intc_map_record], [8 x i32], ptr, ptr, ptr, ptr, %struct.mutex }
%struct.pruss_intc_map_record = type { i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pruss_host_irq_data = type { ptr, i8 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_pruss_intc__191_655_pruss_intc_driver_init6 = internal global ptr @pruss_intc_driver_init, section ".initcall6.init", align 4
@pruss_intc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pruss_intc_probe, ptr @pruss_intc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @pruss_intc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pruss_intc_driver_exit = internal global ptr @pruss_intc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author192 = internal constant [51 x i8] c"irq_pruss_intc.author=Andrew F. Davis <afd@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [49 x i8] c"irq_pruss_intc.author=Suman Anna <s-anna@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [71 x i8] c"irq_pruss_intc.author=Grzegorz Jaszczyk <grzegorz.jaszczyk@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [51 x i8] c"irq_pruss_intc.description=TI PRU-ICSS INTC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [51 x i8] c"irq_pruss_intc.file=drivers/irqchip/irq-pruss-intc\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [30 x i8] c"irq_pruss_intc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pruss-intc\00", [21 x i8] zeroinitializer }, align 32
@pruss_intc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,pruss-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pruss_intc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,icssg-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @icssg_intc_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,irqs-reserved\00", [47 x i8] zeroinitializer }, align 32
@pruss_intc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&intc->lock\00", [20 x i8] zeroinitializer }, align 32
@pruss_intc_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @pruss_intc_irq_domain_map, ptr @pruss_intc_irq_domain_unmap, ptr @pruss_intc_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@irq_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], [32 x i8] zeroinitializer }, align 32
@pruss_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @pruss_intc_irq_ack, ptr @pruss_intc_irq_mask, ptr null, ptr @pruss_intc_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pruss_intc_irq_reqres, ptr @pruss_intc_irq_relres, ptr null, ptr null, ptr @pruss_intc_irq_get_irqchip_state, ptr @pruss_intc_irq_set_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@pruss_intc_map.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_pruss_intc\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pruss_intc_map\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-pruss-intc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"mapped system_event = %lu channel = %d host = %d\00", [47 x i8] zeroinitializer }, align 32
@pruss_intc_update_cmr.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pruss_intc_update_cmr\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SYSEV%u -> CH%d (CMR%d 0x%08x)\0A\00", [32 x i8] zeroinitializer }, align 32
@pruss_intc_update_hmr.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pruss_intc_update_hmr\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CH%d -> HOST%d (HMR%d 0x%08x)\0A\00", [33 x i8] zeroinitializer }, align 32
@pruss_intc_unmap.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pruss_intc_unmap\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"unmapped system_event = %lu channel = %d host = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@pruss_intc_irq_domain_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 423, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d is not valid event number\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pruss_intc_irq_domain_xlate\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pruss_intc_irq_domain_xlate._entry_ptr = internal global ptr @pruss_intc_irq_domain_xlate._entry, section ".printk_index", align 4
@pruss_intc_irq_domain_xlate._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str.5, i32 429, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%d is not valid channel number\00", [33 x i8] zeroinitializer }, align 32
@pruss_intc_irq_domain_xlate._entry_ptr.19 = internal global ptr @pruss_intc_irq_domain_xlate._entry.17, section ".printk_index", align 4
@pruss_intc_irq_domain_xlate._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.14, ptr @.str.5, i32 435, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%d is not valid host irq number\0A\00", [63 x i8] zeroinitializer }, align 32
@pruss_intc_irq_domain_xlate._entry_ptr.22 = internal global ptr @pruss_intc_irq_domain_xlate._entry.20, section ".printk_index", align 4
@pruss_intc_validate_mapping._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 387, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"event %d (req. ch %d) already assigned to channel %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pruss_intc_validate_mapping\00", [36 x i8] zeroinitializer }, align 32
@pruss_intc_validate_mapping._entry_ptr = internal global ptr @pruss_intc_validate_mapping._entry, section ".printk_index", align 4
@pruss_intc_validate_mapping._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 396, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"channel %d (req. host %d) already assigned to host %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pruss_intc_validate_mapping._entry_ptr.27 = internal global ptr @pruss_intc_validate_mapping._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr0\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr1\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr2\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr3\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr4\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr5\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr6\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_intr7\00", [21 x i8] zeroinitializer }, align 32
@pruss_intc_irq_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pruss_intc_data = internal constant { %struct.pruss_intc_match_data, [30 x i8] } { %struct.pruss_intc_match_data { i8 64, i8 10 }, [30 x i8] zeroinitializer }, align 32
@icssg_intc_data = internal constant { %struct.pruss_intc_match_data, [30 x i8] } { %struct.pruss_intc_match_data { i8 -96, i8 20 }, [30 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"pruss_intc_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 646, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 648, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"pruss_intc_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 633, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 544, i32 42 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 556, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [26 x i8] c"pruss_intc_irq_domain_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 473, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"irq_names\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 512, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"pruss_irqchip\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 364, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 207, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 150, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 166, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 252, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 423, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 429, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 435, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 386, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 395, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 513, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 513, i32 16 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 513, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 513, i32 44 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 514, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 514, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 514, i32 30 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 514, i32 44 }
@___asan_gen_.159 = private unnamed_addr constant [16 x i8] c"pruss_intc_data\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 623, i32 43 }
@___asan_gen_.162 = private unnamed_addr constant [16 x i8] c"icssg_intc_data\00", align 1
@___asan_gen_.163 = private constant [36 x i8] c"../drivers/irqchip/irq-pruss-intc.c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 628, i32 43 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_pruss_intc_driver_exit, ptr @__initcall__kmod_irq_pruss_intc__191_655_pruss_intc_driver_init6, ptr @pruss_intc_driver_exit, ptr @pruss_intc_irq_domain_xlate._entry, ptr @pruss_intc_irq_domain_xlate._entry.17, ptr @pruss_intc_irq_domain_xlate._entry.20, ptr @pruss_intc_irq_domain_xlate._entry_ptr, ptr @pruss_intc_irq_domain_xlate._entry_ptr.19, ptr @pruss_intc_irq_domain_xlate._entry_ptr.22, ptr @pruss_intc_validate_mapping._entry, ptr @pruss_intc_validate_mapping._entry.25, ptr @pruss_intc_validate_mapping._entry_ptr, ptr @pruss_intc_validate_mapping._entry_ptr.27, ptr @pruss_intc_driver, ptr @.str, ptr @pruss_intc_of_match, ptr @.str.1, ptr @pruss_intc_probe.__key, ptr @.str.2, ptr @pruss_intc_irq_domain_ops, ptr @irq_names, ptr @pruss_irqchip, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pruss_intc_data, ptr @icssg_intc_data], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_irq_domain_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_irq_domain_xlate._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_irq_domain_xlate._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_validate_mapping._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_validate_mapping._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_intc_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icssg_intc_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pruss_intc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pruss_intc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irqs_reserved = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irqs_reserved) #6
  %0 = ptrtoint ptr %irqs_reserved to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %irqs_reserved, align 1
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %call, align 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 500, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %soc_config = getelementptr inbounds %struct.pruss_intc, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %soc_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %soc_config, align 4
  %dev6 = getelementptr inbounds %struct.pruss_intc, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.pruss_intc, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %irqs_reserved, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp = icmp sgt i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %10)
  %cmp15.not = icmp eq i32 %10, -22
  %or.cond = or i1 %cmp, %cmp15.not
  br i1 %or.cond, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %11 = ptrtoint ptr %soc_config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc_config, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div49.i = lshr i32 %sub.i, 2
  %num_host_events.i = getelementptr inbounds %struct.pruss_intc_match_data, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %num_host_events.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_host_events.i, align 1
  %conv2.i = zext i8 %16 to i32
  %sub4.i = add nuw nsw i32 %conv2.i, 3
  %div550.i = lshr i32 %sub4.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp60.not.i = icmp eq i8 %14, 0
  br i1 %cmp60.not.i, label %if.end17.for.cond24.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end17.for.cond24.preheader.i_crit_edge:        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond24.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end17
  %sub9.i = add nuw nsw i32 %conv.i, 31
  %div1051.i = lshr i32 %sub9.i, 5
  %umax.i = call i32 @llvm.umax.i32(i32 %div1051.i, i32 1) #6
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 3328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #6, !srcloc !104
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %20, i32 3456
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %14)
  %exitcond.not.i = icmp ult i8 %14, 33
  br i1 %exitcond.not.i, label %for.body.lr.ph.i.for.body18.lr.ph.i_crit_edge, label %for.body.i.1

for.body.lr.ph.i.for.body18.lr.ph.i_crit_edge:    ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body18.lr.ph.i:                               ; preds = %for.body.i.7, %for.body.i.6.for.body18.lr.ph.i_crit_edge, %for.body.i.5.for.body18.lr.ph.i_crit_edge, %for.body.i.4.for.body18.lr.ph.i_crit_edge, %for.body.i.3.for.body18.lr.ph.i_crit_edge, %for.body.i.2.for.body18.lr.ph.i_crit_edge, %for.body.i.1.for.body18.lr.ph.i_crit_edge, %for.body.lr.ph.i.for.body18.lr.ph.i_crit_edge
  %umax66.i = call i32 @llvm.umax.i32(i32 %div49.i, i32 1) #6
  br label %for.body18.i

for.body.i.1:                                     ; preds = %for.body.lr.ph.i
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %22, i32 3332
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.1, i32 -1) #6, !srcloc !104
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.1 = getelementptr i8, ptr %24, i32 3460
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.1, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i)
  %exitcond.not.i.1 = icmp eq i32 %umax.i, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.body18.lr.ph.i_crit_edge, label %for.body.i.2

for.body.i.1.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.2:                                     ; preds = %for.body.i.1
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %26, i32 3336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.2, i32 -1) #6, !srcloc !104
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.2 = getelementptr i8, ptr %28, i32 3464
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.2, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i)
  %exitcond.not.i.2 = icmp eq i32 %umax.i, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.body18.lr.ph.i_crit_edge, label %for.body.i.3

for.body.i.2.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.3:                                     ; preds = %for.body.i.2
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %30, i32 3340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.3, i32 -1) #6, !srcloc !104
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.3 = getelementptr i8, ptr %32, i32 3468
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.3, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i)
  %exitcond.not.i.3 = icmp eq i32 %umax.i, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.for.body18.lr.ph.i_crit_edge, label %for.body.i.4

for.body.i.3.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.4:                                     ; preds = %for.body.i.3
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %34, i32 3344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.4, i32 -1) #6, !srcloc !104
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.4 = getelementptr i8, ptr %36, i32 3472
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.4, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %umax.i)
  %exitcond.not.i.4 = icmp eq i32 %umax.i, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.for.body18.lr.ph.i_crit_edge, label %for.body.i.5

for.body.i.4.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.5:                                     ; preds = %for.body.i.4
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %38, i32 3348
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.5, i32 -1) #6, !srcloc !104
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.5 = getelementptr i8, ptr %40, i32 3476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.5, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %umax.i)
  %exitcond.not.i.5 = icmp eq i32 %umax.i, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.for.body18.lr.ph.i_crit_edge, label %for.body.i.6

for.body.i.5.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.6:                                     ; preds = %for.body.i.5
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %42, i32 3352
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.6, i32 -1) #6, !srcloc !104
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.6 = getelementptr i8, ptr %44, i32 3480
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.6, i32 0) #6, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %umax.i)
  %exitcond.not.i.6 = icmp eq i32 %umax.i, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.for.body18.lr.ph.i_crit_edge, label %for.body.i.7

for.body.i.6.for.body18.lr.ph.i_crit_edge:        ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.lr.ph.i

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr.i.i.7 = getelementptr i8, ptr %46, i32 3356
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.7, i32 -1) #6, !srcloc !104
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr.i53.i.7 = getelementptr i8, ptr %48, i32 3484
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i.7, i32 0) #6, !srcloc !104
  br label %for.body18.lr.ph.i

for.cond24.preheader.i:                           ; preds = %for.body18.i.for.cond24.preheader.i_crit_edge, %if.end17.for.cond24.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp2564.not.i = icmp eq i8 %16, 0
  br i1 %cmp2564.not.i, label %for.cond24.preheader.i.pruss_intc_init.exit_crit_edge, label %for.body27.lr.ph.i

for.cond24.preheader.i.pruss_intc_init.exit_crit_edge: ; preds = %for.cond24.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pruss_intc_init.exit

for.body27.lr.ph.i:                               ; preds = %for.cond24.preheader.i
  %umax68.i = call i32 @llvm.umax.i32(i32 %div550.i, i32 1) #6
  br label %for.body27.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %i.163.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %inc22.i, %for.body18.i.for.body18.i_crit_edge ]
  %mul19.i = shl i32 %i.163.i, 2
  %add20.i = add nuw nsw i32 %mul19.i, 1024
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %50, i32 %add20.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 0) #6, !srcloc !104
  %inc22.i = add nuw nsw i32 %i.163.i, 1
  %exitcond67.not.i = icmp eq i32 %inc22.i, %umax66.i
  br i1 %exitcond67.not.i, label %for.body18.i.for.cond24.preheader.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body18.i

for.body18.i.for.cond24.preheader.i_crit_edge:    ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond24.preheader.i

for.body27.i:                                     ; preds = %for.body27.i.for.body27.i_crit_edge, %for.body27.lr.ph.i
  %i.265.i = phi i32 [ 0, %for.body27.lr.ph.i ], [ %inc31.i, %for.body27.i.for.body27.i_crit_edge ]
  %mul28.i = shl i32 %i.265.i, 2
  %add29.i = add nuw nsw i32 %mul28.i, 2048
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %52, i32 %add29.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 0) #6, !srcloc !104
  %inc31.i = add nuw nsw i32 %i.265.i, 1
  %exitcond69.not.i = icmp eq i32 %inc31.i, %umax68.i
  br i1 %exitcond69.not.i, label %for.body27.i.pruss_intc_init.exit_crit_edge, label %for.body27.i.for.body27.i_crit_edge

for.body27.i.for.body27.i_crit_edge:              ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i

for.body27.i.pruss_intc_init.exit_crit_edge:      ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pruss_intc_init.exit

pruss_intc_init.exit:                             ; preds = %for.body27.i.pruss_intc_init.exit_crit_edge, %for.cond24.preheader.i.pruss_intc_init.exit_crit_edge
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %54, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 16777216) #6, !srcloc !104
  %lock = getelementptr inbounds %struct.pruss_intc, ptr %call.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @pruss_intc_probe.__key) #6
  %55 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node, align 8
  %conv = zext i8 %2 to i32
  %tobool.not.i.i = icmp eq ptr %56, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %56, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull @pruss_intc_irq_domain_ops, ptr noundef nonnull %call.i) #6
  %domain = getelementptr inbounds %struct.pruss_intc, ptr %call.i, i32 0, i32 4
  %57 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call1.i, ptr %domain, align 4
  %tobool21.not = icmp eq ptr %call1.i, null
  br i1 %tobool21.not, label %pruss_intc_init.exit.cleanup_crit_edge, label %pruss_intc_init.exit.for.body_crit_edge

pruss_intc_init.exit.for.body_crit_edge:          ; preds = %pruss_intc_init.exit
  br label %for.body

pruss_intc_init.exit.cleanup_crit_edge:           ; preds = %pruss_intc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %pruss_intc_init.exit.for.body_crit_edge
  %i.0113 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %pruss_intc_init.exit.for.body_crit_edge ]
  %58 = ptrtoint ptr %irqs_reserved to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %irqs_reserved, align 1
  %conv26 = zext i8 %59 to i32
  %shl = shl nuw nsw i32 1, %i.0113
  %and = and i32 %shl, %conv26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end29, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end29:                                         ; preds = %for.body
  %arrayidx = getelementptr [8 x ptr], ptr @irq_names, i32 0, i32 %i.0113
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx, align 4
  %call30 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef %61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 1
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp34 = icmp eq i32 %call30, 0
  %spec.select = select i1 %cmp34, i32 -22, i32 %call30
  br label %fail_irq

if.end36:                                         ; preds = %if.end29
  %arrayidx37 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %i.0113
  %62 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call30, ptr %arrayidx37, align 4
  %call.i108 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool39.not = icmp eq ptr %call.i108, null
  br i1 %tobool39.not, label %if.end36.fail_irq_crit_edge, label %if.end41

if.end36.fail_irq_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail_irq

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %call.i108 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call.i, ptr %call.i108, align 4
  %conv43 = trunc i32 %i.0113 to i8
  %host_irq = getelementptr inbounds %struct.pruss_host_irq_data, ptr %call.i108, i32 0, i32 1
  %64 = ptrtoint ptr %host_irq to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv43, ptr %host_irq, align 4
  %call44 = call i32 @irq_set_handler_data(i32 noundef %call30, ptr noundef nonnull %call.i108) #6
  call void @__irq_set_handler(i32 noundef %call30, ptr noundef nonnull @pruss_intc_irq_handler, i32 noundef 1, ptr noundef null) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end41, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail_irq:                                         ; preds = %if.end36.fail_irq_crit_edge, %if.then33
  %ret.0 = phi i32 [ %spec.select, %if.then33 ], [ -12, %if.end36.fail_irq_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0113)
  %cmp45116.not = icmp eq i32 %i.0113, 0
  br i1 %cmp45116.not, label %fail_irq.while.end_crit_edge, label %while.body

fail_irq.while.end_crit_edge:                     ; preds = %fail_irq
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %fail_irq
  %dec117 = add nsw i32 %i.0113, -1
  %arrayidx48 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117
  %65 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool49.not = icmp eq i32 %66, 0
  br i1 %tobool49.not, label %while.body.if.end53_crit_edge, label %if.then50

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then50:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %66, ptr noundef null, ptr noundef null) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %while.body.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0113)
  %cmp45 = icmp ugt i32 %i.0113, 1
  br i1 %cmp45, label %while.body.1, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.1:                                     ; preds = %if.end53
  %dec117.1 = add nsw i32 %i.0113, -2
  %arrayidx48.1 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.1
  %67 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx48.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool49.not.1 = icmp eq i32 %68, 0
  br i1 %tobool49.not.1, label %while.body.1.if.end53.1_crit_edge, label %if.then50.1

while.body.1.if.end53.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.1

if.then50.1:                                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %68, ptr noundef null, ptr noundef null) #6
  br label %if.end53.1

if.end53.1:                                       ; preds = %if.then50.1, %while.body.1.if.end53.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0113)
  %cmp45.1 = icmp ugt i32 %i.0113, 2
  br i1 %cmp45.1, label %while.body.2, label %if.end53.1.while.end_crit_edge

if.end53.1.while.end_crit_edge:                   ; preds = %if.end53.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.2:                                     ; preds = %if.end53.1
  %dec117.2 = add nsw i32 %i.0113, -3
  %arrayidx48.2 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.2
  %69 = ptrtoint ptr %arrayidx48.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx48.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool49.not.2 = icmp eq i32 %70, 0
  br i1 %tobool49.not.2, label %while.body.2.if.end53.2_crit_edge, label %if.then50.2

while.body.2.if.end53.2_crit_edge:                ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.2

if.then50.2:                                      ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %70, ptr noundef null, ptr noundef null) #6
  br label %if.end53.2

if.end53.2:                                       ; preds = %if.then50.2, %while.body.2.if.end53.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0113)
  %cmp45.2 = icmp ugt i32 %i.0113, 3
  br i1 %cmp45.2, label %while.body.3, label %if.end53.2.while.end_crit_edge

if.end53.2.while.end_crit_edge:                   ; preds = %if.end53.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.3:                                     ; preds = %if.end53.2
  %dec117.3 = add nsw i32 %i.0113, -4
  %arrayidx48.3 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.3
  %71 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx48.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool49.not.3 = icmp eq i32 %72, 0
  br i1 %tobool49.not.3, label %while.body.3.if.end53.3_crit_edge, label %if.then50.3

while.body.3.if.end53.3_crit_edge:                ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.3

if.then50.3:                                      ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %72, ptr noundef null, ptr noundef null) #6
  br label %if.end53.3

if.end53.3:                                       ; preds = %if.then50.3, %while.body.3.if.end53.3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0113)
  %cmp45.3 = icmp ugt i32 %i.0113, 4
  br i1 %cmp45.3, label %while.body.4, label %if.end53.3.while.end_crit_edge

if.end53.3.while.end_crit_edge:                   ; preds = %if.end53.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.4:                                     ; preds = %if.end53.3
  %dec117.4 = add nsw i32 %i.0113, -5
  %arrayidx48.4 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.4
  %73 = ptrtoint ptr %arrayidx48.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx48.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool49.not.4 = icmp eq i32 %74, 0
  br i1 %tobool49.not.4, label %while.body.4.if.end53.4_crit_edge, label %if.then50.4

while.body.4.if.end53.4_crit_edge:                ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.4

if.then50.4:                                      ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %74, ptr noundef null, ptr noundef null) #6
  br label %if.end53.4

if.end53.4:                                       ; preds = %if.then50.4, %while.body.4.if.end53.4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0113)
  %cmp45.4 = icmp ugt i32 %i.0113, 5
  br i1 %cmp45.4, label %while.body.5, label %if.end53.4.while.end_crit_edge

if.end53.4.while.end_crit_edge:                   ; preds = %if.end53.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.5:                                     ; preds = %if.end53.4
  %dec117.5 = add nsw i32 %i.0113, -6
  %arrayidx48.5 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.5
  %75 = ptrtoint ptr %arrayidx48.5 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx48.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool49.not.5 = icmp eq i32 %76, 0
  br i1 %tobool49.not.5, label %while.body.5.if.end53.5_crit_edge, label %if.then50.5

while.body.5.if.end53.5_crit_edge:                ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.5

if.then50.5:                                      ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %76, ptr noundef null, ptr noundef null) #6
  br label %if.end53.5

if.end53.5:                                       ; preds = %if.then50.5, %while.body.5.if.end53.5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0113)
  %cmp45.5 = icmp ugt i32 %i.0113, 6
  br i1 %cmp45.5, label %while.body.6, label %if.end53.5.while.end_crit_edge

if.end53.5.while.end_crit_edge:                   ; preds = %if.end53.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.6:                                     ; preds = %if.end53.5
  %dec117.6 = add nsw i32 %i.0113, -7
  %arrayidx48.6 = getelementptr %struct.pruss_intc, ptr %call.i, i32 0, i32 2, i32 %dec117.6
  %77 = ptrtoint ptr %arrayidx48.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx48.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool49.not.6 = icmp eq i32 %78, 0
  br i1 %tobool49.not.6, label %while.body.6.while.end_crit_edge, label %if.then50.6

while.body.6.while.end_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.then50.6:                                      ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #8
  call void @irq_set_chained_handler_and_data(i32 noundef %78, ptr noundef null, ptr noundef null) #6
  br label %while.end

while.end:                                        ; preds = %if.then50.6, %while.body.6.while.end_crit_edge, %if.end53.5.while.end_crit_edge, %if.end53.4.while.end_crit_edge, %if.end53.3.while.end_crit_edge, %if.end53.2.while.end_crit_edge, %if.end53.1.while.end_crit_edge, %if.end53.while.end_crit_edge, %fail_irq.while.end_crit_edge
  %79 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %80) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %pruss_intc_init.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ %ret.0, %while.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %10, %if.end13.cleanup_crit_edge ], [ -12, %pruss_intc_init.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irqs_reserved) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %soc_config = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %soc_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc_config, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %arrayidx = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body6.lr.ph:                                  ; preds = %for.inc.7
  %domain = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 4
  br label %for.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %7, ptr noundef null, ptr noundef null) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %9, ptr noundef null, ptr noundef null) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2 = icmp eq i32 %11, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %11, ptr noundef null, ptr noundef null) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3 = icmp eq i32 %13, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %13, ptr noundef null, ptr noundef null) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.4 = icmp eq i32 %15, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %15, ptr noundef null, ptr noundef null) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 5
  %16 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.5 = icmp eq i32 %17, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %17, ptr noundef null, ptr noundef null) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.6 = icmp eq i32 %19, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %19, ptr noundef null, ptr noundef null) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 2, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.7 = icmp eq i32 %21, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @irq_set_chained_handler_and_data(i32 noundef %21, ptr noundef null, ptr noundef null) #6
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then.7, %for.inc.6.for.inc.7_crit_edge
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp422.not = icmp eq i8 %5, 0
  br i1 %cmp422.not, label %for.inc.7.for.end10_crit_edge, label %for.body6.lr.ph

for.inc.7.for.end10_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.body6:                                        ; preds = %irq_find_mapping.exit.for.body6_crit_edge, %for.body6.lr.ph
  %hwirq.023 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc9, %irq_find_mapping.exit.for.body6_crit_edge ]
  %22 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %24 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %irq.i, align 4, !annotation !105
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %23, i32 noundef %hwirq.023, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body6.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body6.irq_find_mapping.exit_crit_edge:        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body6.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %26, %if.then.i ], [ 0, %for.body6.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @irq_dispose_mapping(i32 noundef %retval.0.i) #6
  %inc9 = add nuw nsw i32 %hwirq.023, 1
  %exitcond.not = icmp eq i32 %inc9, %conv
  br i1 %exitcond.not, label %irq_find_mapping.exit.for.end10_crit_edge, label %irq_find_mapping.exit.for.body6_crit_edge

irq_find_mapping.exit.for.body6_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

irq_find_mapping.exit.for.end10_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end10

for.end10:                                        ; preds = %irq_find_mapping.exit.for.end10_crit_edge, %for.inc.7.for.end10_crit_edge
  %domain11 = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %domain11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %domain11, align 4
  call void @irq_domain_remove(ptr noundef %28) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_handler_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %1) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_handler_data.exit_crit_edge, label %cond.true.i

entry.irq_get_handler_data.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_get_handler_data.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handler_data.i, align 4
  br label %irq_get_handler_data.exit

irq_get_handler_data.exit:                        ; preds = %cond.true.i, %entry.irq_get_handler_data.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ null, %entry.irq_get_handler_data.exit_crit_edge ]
  %8 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cond.i, align 4
  %host_irq4 = getelementptr inbounds %struct.pruss_host_irq_data, ptr %cond.i, i32 0, i32 1
  %10 = ptrtoint ptr %host_irq4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %host_irq4, align 4
  %add = add i8 %11, 2
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i68 = icmp eq ptr %13, null
  br i1 %tobool.not.i68, label %if.end.i, label %irq_get_handler_data.exit.chained_irq_enter.exit_crit_edge

irq_get_handler_data.exit.chained_irq_enter.exit_crit_edge: ; preds = %irq_get_handler_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %irq_get_handler_data.exit
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %15(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %17(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %irq_get_handler_data.exit.chained_irq_enter.exit_crit_edge
  %conv6 = zext i8 %add to i32
  %mul = shl nuw nsw i32 %conv6, 2
  %add7 = add nuw nsw i32 %mul, 2304
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %21, i32 %add7
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #6, !srcloc !106
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %tobool.not78 = icmp sgt i32 %23, -1
  br i1 %tobool.not78, label %if.end.lr.ph, label %chained_irq_enter.exit.while.end_crit_edge

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.lr.ph:                                     ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.pruss_intc, ptr %9, i32 0, i32 4
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.end.lr.ph
  %24 = phi i32 [ %23, %if.end.lr.ph ], [ %33, %cleanup.if.end_crit_edge ]
  %and9 = and i32 %24, 1023
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  %call10 = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %and9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %land.rhs

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %if.end
  %.b66 = load i1, ptr @pruss_intc_irq_handler.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.then51_crit_edge, label %if.then20, !prof !107

land.rhs.if.then51_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

if.then20:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @pruss_intc_irq_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 505, i32 noundef 9, ptr noundef null) #6
  br label %if.then51

if.then51:                                        ; preds = %if.then20, %land.rhs.if.then51_crit_edge
  %27 = tail call i32 @llvm.bswap.i32(i32 %and9) #6
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i70 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %27) #6, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end.cleanup_crit_edge
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 %add7
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !106
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %tobool.not = icmp sgt i32 %33, -1
  br i1 %tobool.not, label %cleanup.if.end_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %34 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i72 = icmp eq ptr %35, null
  br i1 %tobool.not.i72, label %if.else.i73, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i73:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i73, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %37, %if.else.i73 ], [ %35, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call fastcc void @pruss_intc_map(ptr noundef %1, i32 noundef %hw)
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @pruss_irqchip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_domain_unmap(ptr nocapture noundef readonly %d, i32 noundef %virq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call ptr @irq_get_irq_data(i32 noundef %virq) #6
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef null, ptr noundef null, ptr noundef null) #6
  %call2 = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef null) #6
  tail call fastcc void @pruss_intc_unmap(ptr noundef %1, i32 noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_irq_domain_xlate(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %dev1 = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %intsize)
  %cmp = icmp ult i32 %intsize, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intspec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %soc_config = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %soc_config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_config, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp ult i32 %5, %conv
  br i1 %cmp3.not, label %if.end6, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef %5) #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr i32, ptr %intspec, i32 1
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.end6.do.end18_crit_edge, label %lor.lhs.false10

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

lor.lhs.false10:                                  ; preds = %if.end6
  %num_host_events = getelementptr inbounds %struct.pruss_intc_match_data, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %num_host_events to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_host_events, align 1
  %conv12 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv12)
  %cmp13.not = icmp ult i32 %11, %conv12
  br i1 %cmp13.not, label %if.end19, label %lor.lhs.false10.do.end18_crit_edge

lor.lhs.false10.do.end18_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false10.do.end18_crit_edge, %if.end6.do.end18_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %11) #9
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false10
  %arrayidx20 = getelementptr i32, ptr %intspec, i32 2
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp21 = icmp sgt i32 %15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv12)
  %cmp27.not = icmp slt i32 %15, %conv12
  %or.cond = select i1 %cmp21, i1 %cmp27.not, i1 false
  br i1 %or.cond, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %15) #9
  br label %cleanup

if.end33:                                         ; preds = %if.end19
  %lock.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %arrayidx.i = getelementptr [160 x %struct.pruss_intc_map_record], ptr %1, i32 0, i32 %5
  %ref_count.i = getelementptr [160 x %struct.pruss_intc_map_record], ptr %1, i32 0, i32 %5, i32 1
  %16 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ref_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i = icmp eq i8 %17, 0
  br i1 %cmp.not.i, label %if.end33.if.end.i_crit_edge, label %land.lhs.true.i

if.end33.if.end.i_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end33
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 2
  %conv5.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5.i)
  %cmp6.not.i = icmp eq i32 %11, %conv5.i
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %5, i32 noundef %11, i32 noundef %conv5.i) #9
  br label %pruss_intc_validate_mapping.exit.thread

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end33.if.end.i_crit_edge
  %arrayidx12.i = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 1, i32 %11
  %ref_count13.i = getelementptr %struct.pruss_intc, ptr %1, i32 0, i32 1, i32 %11, i32 1
  %20 = ptrtoint ptr %ref_count13.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ref_count13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp15.not.i = icmp eq i8 %21, 0
  br i1 %cmp15.not.i, label %if.end.i.if.end35_crit_edge, label %land.lhs.true17.i

if.end.i.if.end35_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

land.lhs.true17.i:                                ; preds = %if.end.i
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx12.i, align 2
  %conv21.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv21.i)
  %cmp22.not.i = icmp eq i32 %15, %conv21.i
  br i1 %cmp22.not.i, label %land.lhs.true17.i.if.end35_crit_edge, label %do.end27.i

land.lhs.true17.i.if.end35_crit_edge:             ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

do.end27.i:                                       ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %11, i32 noundef %15, i32 noundef %conv21.i) #9
  br label %pruss_intc_validate_mapping.exit.thread

pruss_intc_validate_mapping.exit.thread:          ; preds = %do.end27.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true17.i.if.end35_crit_edge, %if.end.i.if.end35_crit_edge
  %conv33.i = trunc i32 %11 to i8
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv33.i, ptr %arrayidx.i, align 2
  %conv37.i = trunc i32 %15 to i8
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv37.i, ptr %arrayidx12.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %26 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %5, ptr %out_hwirq, align 4
  %27 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %out_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %pruss_intc_validate_mapping.exit.thread, %do.end32, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end18 ], [ -22, %do.end32 ], [ 0, %if.end35 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %pruss_intc_validate_mapping.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pruss_intc_map(ptr noundef %intc, i32 noundef %hwirq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %arrayidx = getelementptr [160 x %struct.pruss_intc_map_record], ptr %intc, i32 0, i32 %hwirq
  %ref_count = getelementptr [160 x %struct.pruss_intc_map_record], ptr %intc, i32 0, i32 %hwirq, i32 1
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ref_count, align 1
  %inc = add i8 %3, 1
  store i8 %inc, ptr %ref_count, align 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %idxprom = zext i8 %5 to i32
  %arrayidx4 = getelementptr %struct.pruss_intc, ptr %intc, i32 0, i32 1, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 2
  %rem.i = shl i32 %hwirq, 3
  %mul.i = and i32 %rem.i, 24
  %8 = add i32 %hwirq, 1024
  %add.i = and i32 %8, -4
  %base.i.i = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 3
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !106
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %shl.i = shl nuw nsw i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  %shl2.i = shl nuw i32 %idxprom, %mul.i
  %or.i = or i32 %and.i, %shl2.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %14 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %13) #6, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_update_cmr.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_map, %if.then.i)) #6
          to label %pruss_intc_update_cmr.exit [label %if.then.i], !srcloc !108

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div24.i = lshr i32 %hwirq, 2
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #6, !srcloc !106
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_update_cmr.__UNIQUE_ID_ddebug187, ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %hwirq, i32 noundef %idxprom, i32 noundef %div24.i, i32 noundef %21) #6
  br label %pruss_intc_update_cmr.exit

pruss_intc_update_cmr.exit:                       ; preds = %if.then.i, %entry
  %rem = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %rem
  %22 = lshr i32 %hwirq, 3
  %mul = and i32 %22, 1020
  %add = add nuw nsw i32 %mul, 768
  %23 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #6, !srcloc !104
  %add9 = add nuw nsw i32 %mul, 640
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %27, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %23) #6, !srcloc !104
  %ref_count13 = getelementptr %struct.pruss_intc, ptr %intc, i32 0, i32 1, i32 %idxprom, i32 1
  %28 = ptrtoint ptr %ref_count13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ref_count13, align 1
  %inc14 = add i8 %29, 1
  store i8 %inc14, ptr %ref_count13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp = icmp eq i8 %29, 0
  br i1 %cmp, label %if.then, label %pruss_intc_update_cmr.exit.do.body_crit_edge

pruss_intc_update_cmr.exit.do.body_crit_edge:     ; preds = %pruss_intc_update_cmr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %pruss_intc_update_cmr.exit
  %rem.i53 = shl nuw nsw i32 %idxprom, 3
  %mul.i54 = and i32 %rem.i53, 24
  %mul2.i = and i32 %idxprom, 252
  %add.i55 = or i32 %mul2.i, 2048
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %31, i32 %add.i55
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #6, !srcloc !106
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %shl.i58 = shl nuw nsw i32 15, %mul.i54
  %neg.i59 = xor i32 %shl.i58, -1
  %and.i60 = and i32 %33, %neg.i59
  %conv3.i = zext i8 %7 to i32
  %shl4.i = shl nuw i32 %conv3.i, %mul.i54
  %or.i61 = or i32 %and.i60, %shl4.i
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i61) #6
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %36, i32 %add.i55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %34) #6, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_update_hmr.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_map, %if.then.i63)) #6
          to label %pruss_intc_update_hmr.exit [label %if.then.i63], !srcloc !108

if.then.i63:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div27.i = lshr i32 %idxprom, 2
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 4
  %39 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %40, i32 %add.i55
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #6, !srcloc !106
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_update_hmr.__UNIQUE_ID_ddebug188, ptr noundef %38, ptr noundef nonnull @.str.10, i32 noundef %idxprom, i32 noundef %conv3.i, i32 noundef %div27.i, i32 noundef %42) #6
  br label %pruss_intc_update_hmr.exit

pruss_intc_update_hmr.exit:                       ; preds = %if.then.i63, %if.then
  %43 = shl nuw i32 %conv3.i, 24
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %45, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %43) #6, !srcloc !104
  br label %do.body

do.body:                                          ; preds = %pruss_intc_update_hmr.exit, %pruss_intc_update_cmr.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_map.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_map, %if.then20)) #6
          to label %do.end [label %if.then20], !srcloc !108

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv22 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_map.__UNIQUE_ID_ddebug189, ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %hwirq, i32 noundef %idxprom, i32 noundef %conv22) #6
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_ack(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq1 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !104
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_irq_reqres(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @try_module_get(ptr noundef null) #6
  %. = select i1 %call, i32 0, i32 -19
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pruss_intc_irq_relres(ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @module_put(ptr noundef null) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_irq_get_irqchip_state(ptr nocapture noundef readonly %data, i32 noundef %which, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = lshr i32 %3, 3
  %mul = and i32 %4, 536870908
  %add = add nuw nsw i32 %mul, 512
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %add
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !106
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %frombool = zext i1 %tobool to i8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pruss_intc_irq_set_irqchip_state(ptr nocapture noundef readonly %data, i32 noundef %which, i1 noundef zeroext %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.not = icmp eq i32 %which, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  br i1 %state, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !104
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i8 = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %4) #6, !srcloc !104
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then1 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pruss_intc_unmap(ptr noundef %intc, i32 noundef %hwirq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %arrayidx = getelementptr [160 x %struct.pruss_intc_map_record], ptr %intc, i32 0, i32 %hwirq
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx1 = getelementptr %struct.pruss_intc, ptr %intc, i32 0, i32 1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 2
  %ref_count = getelementptr %struct.pruss_intc, ptr %intc, i32 0, i32 1, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %ref_count to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ref_count, align 1
  %dec = add i8 %5, -1
  store i8 %dec, ptr %ref_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp = icmp eq i8 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = zext i8 %3 to i32
  %6 = shl nuw i32 %conv7, 24
  %base.i = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 3
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !104
  %rem.i = shl nuw nsw i32 %idxprom, 3
  %mul.i = and i32 %rem.i, 24
  %mul2.i = and i32 %idxprom, 252
  %add.i = or i32 %mul2.i, 2048
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !106
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  %shl.i = shl nuw nsw i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29.i, i32 %13) #6, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_update_hmr.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_unmap, %if.then.i)) #6
          to label %if.end [label %if.then.i], !srcloc !108

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %div27.i = lshr i32 %idxprom, 2
  %dev.i = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 6
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %19, i32 %add.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #6, !srcloc !106
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_update_hmr.__UNIQUE_ID_ddebug188, ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %idxprom, i32 noundef 0, i32 noundef %div27.i, i32 noundef %21) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then, %entry.if.end_crit_edge
  %ref_count10 = getelementptr [160 x %struct.pruss_intc_map_record], ptr %intc, i32 0, i32 %hwirq, i32 1
  %22 = ptrtoint ptr %ref_count10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ref_count10, align 1
  %dec11 = add i8 %23, -1
  store i8 %dec11, ptr %ref_count10, align 1
  %rem = and i32 %hwirq, 31
  %shl = shl nuw i32 1, %rem
  %24 = lshr i32 %hwirq, 3
  %mul = and i32 %24, 1020
  %add = add nuw nsw i32 %mul, 896
  %25 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %base.i47 = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 3
  %26 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i47, align 4
  %add.ptr.i48 = getelementptr i8, ptr %27, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %25) #6, !srcloc !104
  %add16 = add nuw nsw i32 %mul, 640
  %28 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i47, align 4
  %add.ptr.i50 = getelementptr i8, ptr %29, i32 %add16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %25) #6, !srcloc !104
  %rem.i51 = shl i32 %hwirq, 3
  %mul.i52 = and i32 %rem.i51, 24
  %30 = add i32 %hwirq, 1024
  %add.i53 = and i32 %30, -4
  %31 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i47, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %32, i32 %add.i53
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i55) #6, !srcloc !106
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #6
  %shl.i56 = shl nuw nsw i32 15, %mul.i52
  %neg.i57 = xor i32 %shl.i56, -1
  %and.i58 = and i32 %34, %neg.i57
  %35 = tail call i32 @llvm.bswap.i32(i32 %and.i58) #6
  %36 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i47, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %37, i32 %add.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %35) #6, !srcloc !104
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_update_cmr.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_unmap, %if.then.i60)) #6
          to label %pruss_intc_update_cmr.exit [label %if.then.i60], !srcloc !108

if.then.i60:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div24.i = lshr i32 %hwirq, 2
  %dev.i59 = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 6
  %38 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i59, align 4
  %40 = ptrtoint ptr %base.i47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i47, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %41, i32 %add.i53
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #6, !srcloc !106
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_update_cmr.__UNIQUE_ID_ddebug187, ptr noundef %39, ptr noundef nonnull @.str.8, i32 noundef %hwirq, i32 noundef 0, i32 noundef %div24.i, i32 noundef %43) #6
  br label %pruss_intc_update_cmr.exit

pruss_intc_update_cmr.exit:                       ; preds = %if.then.i60, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pruss_intc_unmap.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pruss_intc_unmap, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !108

if.then19:                                        ; preds = %pruss_intc_update_cmr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pruss_intc, ptr %intc, i32 0, i32 6
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %conv21 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pruss_intc_unmap.__UNIQUE_ID_ddebug190, ptr noundef %45, ptr noundef nonnull @.str.12, i32 noundef %hwirq, i32 noundef %idxprom, i32 noundef %conv21) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %pruss_intc_update_cmr.exit
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_irq_pruss_intc__191_655_pruss_intc_driver_init6, !1, !"__initcall__kmod_irq_pruss_intc__191_655_pruss_intc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 655, i32 1}
!2 = !{ptr @__exitcall_pruss_intc_driver_exit, !1, !"__exitcall_pruss_intc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author192, !4, !"__UNIQUE_ID_author192", i1 false, i1 false}
!4 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 657, i32 1}
!5 = !{ptr @__UNIQUE_ID_author193, !6, !"__UNIQUE_ID_author193", i1 false, i1 false}
!6 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 658, i32 1}
!7 = !{ptr @__UNIQUE_ID_author194, !8, !"__UNIQUE_ID_author194", i1 false, i1 false}
!8 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 659, i32 1}
!9 = !{ptr @__UNIQUE_ID_description195, !10, !"__UNIQUE_ID_description195", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 660, i32 1}
!11 = !{ptr @__UNIQUE_ID_file196, !12, !"__UNIQUE_ID_file196", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 661, i32 1}
!13 = !{ptr @__UNIQUE_ID_license197, !12, !"__UNIQUE_ID_license197", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 648, i32 11}
!16 = !{ptr @pruss_intc_driver, !17, !"pruss_intc_driver", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 646, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 544, i32 42}
!20 = !{ptr @pruss_intc_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 556, i32 2}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pruss_intc_irq_domain_ops, !24, !"pruss_intc_irq_domain_ops", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 473, i32 36}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 207, i32 2}
!27 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @pruss_intc_map.__UNIQUE_ID_ddebug189, !26, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 150, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @pruss_intc_update_cmr.__UNIQUE_ID_ddebug187, !32, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 166, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pruss_intc_update_hmr.__UNIQUE_ID_ddebug188, !36, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!39 = !{ptr @pruss_irqchip, !40, !"pruss_irqchip", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 364, i32 24}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 252, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pruss_intc_unmap.__UNIQUE_ID_ddebug190, !42, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 423, i32 3}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pruss_intc_irq_domain_xlate._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @pruss_intc_irq_domain_xlate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 429, i32 3}
!54 = !{ptr @pruss_intc_irq_domain_xlate._entry.17, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pruss_intc_irq_domain_xlate._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 435, i32 3}
!58 = !{ptr @pruss_intc_irq_domain_xlate._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pruss_intc_irq_domain_xlate._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 386, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @pruss_intc_validate_mapping._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @pruss_intc_validate_mapping._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 395, i32 3}
!67 = !{ptr @pruss_intc_validate_mapping._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @pruss_intc_validate_mapping._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 513, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 513, i32 16}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 513, i32 30}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 513, i32 44}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 514, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 514, i32 16}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 514, i32 30}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 514, i32 44}
!85 = !{ptr @irq_names, !86, !"irq_names", i1 false, i1 false}
!86 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 512, i32 27}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 505, i32 7}
!89 = !{ptr @pruss_intc_of_match, !90, !"pruss_intc_of_match", i1 false, i1 false}
!90 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 633, i32 34}
!91 = !{ptr @pruss_intc_data, !92, !"pruss_intc_data", i1 false, i1 false}
!92 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 623, i32 43}
!93 = !{ptr @icssg_intc_data, !94, !"icssg_intc_data", i1 false, i1 false}
!94 = !{!"../drivers/irqchip/irq-pruss-intc.c", i32 628, i32 43}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i64 4213856}
!105 = !{!"auto-init"}
!106 = !{i64 4214274}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2148733048, i64 2148733053, i64 2148733066, i64 2148733110, i64 2148733144, i64 2148733165}
