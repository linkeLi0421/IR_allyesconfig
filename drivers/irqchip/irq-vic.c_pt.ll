; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-vic.c_pt.bc'
source_filename = "../drivers/irqchip/irq-vic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.vic_device = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_vic__288_179_vic_pm_init7 = internal global ptr @vic_pm_init, section ".initcall7.init", align 4
@__of_table_arm_pl190_vic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl190-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm_pl192_vic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,pl192-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_of_init }, section "__irqchip_of_table", align 4
@__of_table_arm_versatile_vic = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,versatile-vic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vic_of_init }, section "__irqchip_of_table", align 4
@vic_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vic_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @vic_suspend, ptr @vic_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@vic_devices = internal global { [4 x %struct.vic_device], [32 x i8] } zeroinitializer, align 32
@suspend_one_vic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s: suspending vic at %p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"suspend_one_vic\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/irqchip/irq-vic.c\00", [38 x i8] zeroinitializer }, align 32
@suspend_one_vic._entry_ptr = internal global ptr @suspend_one_vic._entry, section ".printk_index", align 4
@resume_one_vic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: resuming vic at %p\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"resume_one_vic\00", [17 x i8] zeroinitializer }, align 32
@resume_one_vic._entry_ptr = internal global ptr @resume_one_vic._entry, section ".printk_index", align 4
@__vic_init._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 450, ptr null, ptr null }, align 1
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016VIC @%p: id 0x%08x, vendor 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"__vic_init\00", [21 x i8] zeroinitializer }, align 32
@__vic_init._entry_ptr = internal global ptr @__vic_init._entry, section ".printk_index", align 4
@__vic_init._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 457, ptr null, ptr null }, align 1
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014VIC: unknown vendor, continuing anyways\0A\00", [53 x i8] zeroinitializer }, align 32
@__vic_init._entry_ptr.9 = internal global ptr @__vic_init._entry.7, section ".printk_index", align 4
@vic_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: too few VICs, increase CONFIG_ARM_VIC_NR\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vic_register\00", [19 x i8] zeroinitializer }, align 32
@vic_register._entry_ptr = internal global ptr @vic_register._entry, section ".printk_index", align 4
@vic_irqdomain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @vic_irqdomain_map, ptr null, ptr @irq_domain_xlate_onetwocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@vic_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr @vic_ack_irq, ptr @vic_mask_irq, ptr null, ptr @vic_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr @vic_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VIC\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"valid-mask\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"valid-wakeup-mask\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 65, i64 128]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"vic_id\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 78, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"vic_syscore_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 160, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [12 x i8] c"vic_devices\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 76, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 136, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 106, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 449, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 457, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 277, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"vic_irqdomain_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 248, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"vic_chip\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 367, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 368, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 500, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [29 x i8] c"../drivers/irqchip/irq-vic.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 501, i32 29 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_irq_vic__288_179_vic_pm_init7, ptr @__of_table_arm_pl190_vic, ptr @__of_table_arm_pl192_vic, ptr @__of_table_arm_versatile_vic, ptr @__vic_init._entry, ptr @__vic_init._entry.7, ptr @__vic_init._entry_ptr, ptr @__vic_init._entry_ptr.9, ptr @resume_one_vic._entry, ptr @resume_one_vic._entry_ptr, ptr @suspend_one_vic._entry, ptr @suspend_one_vic._entry_ptr, ptr @vic_register._entry, ptr @vic_register._entry_ptr, ptr @vic_id, ptr @vic_syscore_ops, ptr @vic_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @vic_irqdomain_ops, ptr @vic_chip, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_devices to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @suspend_one_vic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resume_one_vic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_irqdomain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vic_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_pm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vic_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @register_syscore_ops(ptr noundef nonnull @vic_syscore_ops) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @vic_init(ptr noundef %base, i32 noundef %irq_start, i32 noundef %vic_sources, i32 noundef %resume_sources) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__vic_init(ptr noundef %base, i32 noundef 0, i32 noundef %irq_start, i32 noundef %vic_sources, i32 noundef %resume_sources, ptr noundef null) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vic_init(ptr noundef %base, i32 noundef %parent_irq, i32 noundef %irq_start, i32 noundef %vic_sources, i32 noundef %resume_sources, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  %and = and i32 %0, -4096
  %1 = inttoptr i32 %and to ptr
  %add.ptr = getelementptr i8, ptr %1, i32 4064
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %cellid.030 = phi i32 [ 0, %entry ], [ %or, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.031, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !58
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %mul4 = shl nuw nsw i32 %i.031, 3
  %shl = shl nuw i32 %3, %mul4
  %or = or i32 %shl, %cellid.030
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %shr = lshr i32 %or, 12
  %and5 = and i32 %shr, 255
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %base, i32 noundef %or, i32 noundef %and5) #11
  %trunc = trunc i32 %shr to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end10 [
    i8 -128, label %sw.bb
    i8 65, label %for.end.sw.epilog_crit_edge
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @vic_init_st(ptr noundef %base, i32 noundef %irq_start, i32 noundef %vic_sources, ptr noundef %node) #10
  br label %cleanup

do.end10:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end10, %for.end.sw.epilog_crit_edge
  tail call fastcc void @vic_disable(ptr noundef %base) #10
  tail call fastcc void @vic_clear_interrupts(ptr noundef %base) #10
  tail call fastcc void @vic_init2(ptr noundef %base)
  tail call fastcc void @vic_register(ptr noundef %base, i32 noundef %parent_irq, i32 noundef %irq_start, i32 noundef %vic_sources, i32 noundef %resume_sources, ptr noundef %node) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  %interrupt_mask = alloca i32, align 4
  %wakeup_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %interrupt_mask) #7
  %0 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %interrupt_mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wakeup_mask) #7
  %1 = ptrtoint ptr %wakeup_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %wakeup_mask, align 4
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 497, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.13, ptr noundef nonnull %interrupt_mask, i32 noundef 1, i32 noundef 0) #7
  %call.i.i39 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef nonnull %wakeup_mask, i32 noundef 1, i32 noundef 0) #7
  %call26 = call i32 @of_irq_get(ptr noundef %node, i32 noundef 0) #7
  %2 = call i32 @llvm.smax.i32(i32 %call26, i32 0)
  %3 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interrupt_mask, align 4
  %5 = ptrtoint ptr %wakeup_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wakeup_mask, align 4
  call fastcc void @__vic_init(ptr noundef nonnull %call, i32 noundef %2, i32 noundef 0, i32 noundef %4, i32 noundef %6, ptr noundef %node) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wakeup_mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %interrupt_mask) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_suspend() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vic_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %id.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %2) #11
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !58
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  %int_select.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04, i32 5
  %5 = ptrtoint ptr %int_select.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %int_select.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %2, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !58
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %int_enable.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04, i32 6
  %8 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %int_enable.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %2, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !58
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %soft_int.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04, i32 7
  %11 = ptrtoint ptr %soft_int.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %soft_int.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %2, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #7, !srcloc !58
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %protect.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04, i32 8
  %14 = ptrtoint ptr %protect.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %protect.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %resume_irqs.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.04, i32 4
  %15 = ptrtoint ptr %resume_irqs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %resume_irqs.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %17) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %resume_irqs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resume_irqs.i, align 4
  %neg.i = xor i32 %19, -1
  %20 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #7
  %add.ptr31.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %20) #7, !srcloc !66
  %inc = add nuw nsw i32 %id.04, 1
  %21 = load i32, ptr @vic_id, align 4
  %cmp = icmp slt i32 %inc, %21
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_resume() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vic_id, align 4
  %id.03 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %id.03)
  %cmp4 = icmp sgt i32 %id.03, -1
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %resume_one_vic.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %id.05 = phi i32 [ %id.0, %resume_one_vic.exit.for.body_crit_edge ], [ %id.03, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.05
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %2) #11
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 512
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %i.010.i.i = phi i32 [ 0, %for.body ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = shl i32 %i.010.i.i, 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %or.i.i = or i32 %i.010.i.i, 32
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %3) #7, !srcloc !66
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %resume_one_vic.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

resume_one_vic.exit:                              ; preds = %for.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %add.ptr5.i.i = getelementptr i8, ptr %2, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 536870912) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %int_select.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.05, i32 5
  %4 = ptrtoint ptr %int_select.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_select.i, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %add.ptr.i = getelementptr i8, ptr %2, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %protect.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.05, i32 8
  %7 = ptrtoint ptr %protect.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %protect.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %add.ptr8.i = getelementptr i8, ptr %2, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %9) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %int_enable.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.05, i32 6
  %10 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_enable.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #7
  %add.ptr12.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %12) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %int_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %int_enable.i, align 4
  %neg.i = xor i32 %14, -1
  %15 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #7
  %add.ptr17.i = getelementptr i8, ptr %2, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %15) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %soft_int.i = getelementptr %struct.vic_device, ptr @vic_devices, i32 %id.05, i32 7
  %16 = ptrtoint ptr %soft_int.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %soft_int.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %add.ptr21.i = getelementptr i8, ptr %2, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %18) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %soft_int.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %soft_int.i, align 4
  %neg26.i = xor i32 %20, -1
  %21 = tail call i32 @llvm.bswap.i32(i32 %neg26.i) #7
  %add.ptr27.i = getelementptr i8, ptr %2, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %21) #7, !srcloc !66
  %id.0 = add i32 %id.05, -1
  %cmp = icmp sgt i32 %id.0, -1
  br i1 %cmp, label %resume_one_vic.exit.for.body_crit_edge, label %resume_one_vic.exit.for.end_crit_edge

resume_one_vic.exit.for.end_crit_edge:            ; preds = %resume_one_vic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

resume_one_vic.exit.for.body_crit_edge:           ; preds = %resume_one_vic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %resume_one_vic.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vic_init2(ptr noundef %base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 512
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.010, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %or = or i32 %i.010, 32
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #7, !srcloc !66
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body2, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %add.ptr5 = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 536870912) #7, !srcloc !66
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vic_init_st(ptr noundef %base, i32 noundef %irq_start, i32 noundef %vic_sources, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %base to i32
  %and = and i32 %0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  tail call fastcc void @vic_disable(ptr noundef %base) #10
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @vic_clear_interrupts(ptr noundef %base) #10
  %add.ptr = getelementptr i8, ptr %base, i32 512
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.015 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.015, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #7, !srcloc !66
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body4, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %add.ptr7 = getelementptr i8, ptr %base, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 536870912) #7, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %do.body4, %entry.if.end_crit_edge
  tail call fastcc void @vic_register(ptr noundef %base, i32 noundef 0, i32 noundef %irq_start, i32 noundef %vic_sources, i32 noundef 0, ptr noundef %node) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vic_disable(ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %base, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %add.ptr3 = getelementptr i8, ptr %base, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %add.ptr6 = getelementptr i8, ptr %base, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %add.ptr9 = getelementptr i8, ptr %base, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %add.ptr12 = getelementptr i8, ptr %base, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1) #7, !srcloc !66
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vic_clear_interrupts(ptr noundef %base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %base, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !66
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #7, !srcloc !66
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vic_register(ptr noundef %base, i32 noundef %parent_irq, i32 noundef %irq, i32 noundef %valid_sources, i32 noundef %resume_sources, ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vic_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %arrayidx, align 4
  %valid_sources2 = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0, i32 2
  %2 = ptrtoint ptr %valid_sources2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %valid_sources, ptr %valid_sources2, align 4
  %resume_sources3 = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0, i32 3
  %3 = ptrtoint ptr %resume_sources3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %resume_sources, ptr %resume_sources3, align 4
  %call4 = tail call i32 @set_handle_irq(ptr noundef nonnull @vic_handle_irq) #11
  %4 = load i32, ptr @vic_id, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @vic_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_irq)
  %tobool.not = icmp eq i32 %parent_irq, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_set_chained_handler_and_data(i32 noundef %parent_irq, ptr noundef nonnull @vic_handle_irq_cascaded, ptr noundef %arrayidx) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %valid_sources)
  %tobool.not.i = icmp eq i32 %valid_sources, 0
  %5 = tail call i32 @llvm.ctlz.i32(i32 %valid_sources, i1 true) #7, !range !86
  %sub.i = sub nuw nsw i32 32, %5
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i, i32 noundef %cond.i, i32 noundef %irq, ptr noundef nonnull @vic_irqdomain_ops, ptr noundef %arrayidx) #7
  %domain = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0, i32 9
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i, ptr %domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp1048.not = icmp eq i32 %cond.i, 0
  br i1 %cmp1048.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.049 = phi i32 [ %inc16, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.049
  %and = and i32 %shl, %valid_sources
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %for.body.for.inc_crit_edge, label %if.then12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %8, i32 noundef %i.049, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %for.body.for.inc_crit_edge
  %inc16 = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc16, %cond.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end6.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool17.not = icmp eq i32 %irq, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq19 = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0, i32 1
  %9 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %irq, ptr %irq19, align 4
  br label %cleanup

if.else:                                          ; preds = %for.end
  %10 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %irq.i, align 4, !annotation !87
  %call.i46 = call ptr @__irq_resolve_mapping(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %irq.i) #7
  %tobool.not.i47 = icmp eq ptr %call.i46, null
  br i1 %tobool.not.i47, label %if.else.irq_find_mapping.exit_crit_edge, label %if.then.i

if.else.irq_find_mapping.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.else.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %14, %if.then.i ], [ 0, %if.else.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  %irq22 = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %0, i32 1
  %15 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %irq22, align 4
  br label %cleanup

cleanup:                                          ; preds = %irq_find_mapping.exit, %if.then18, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_handle_irq(ptr nocapture noundef readnone %regs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.pr = load i32, ptr @vic_id, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %0 = phi i32 [ %12, %do.cond.do.body_crit_edge ], [ %.pr, %entry ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %do.body.for.body_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %handle_one_vic.exit.for.body_crit_edge, %do.body.for.body_crit_edge
  %handled.07 = phi i32 [ %or, %handle_one_vic.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %i.05 = phi i32 [ %inc, %handle_one_vic.exit.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %i.05
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not1.i = icmp eq i32 %3, 0
  br i1 %tobool.not1.i, label %for.body.handle_one_vic.exit_crit_edge, label %while.body.lr.ph.i

for.body.handle_one_vic.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_one_vic.exit

while.body.lr.ph.i:                               ; preds = %for.body
  %domain.i = getelementptr [4 x %struct.vic_device], ptr @vic_devices, i32 0, i32 %i.05, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = phi i32 [ %3, %while.body.lr.ph.i ], [ %11, %while.body.i.while.body.i_crit_edge ]
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true) #7, !range !86
  %7 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %domain.i, align 4
  %call1.i = tail call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %6) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !58
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %while.body.i.handle_one_vic.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.handle_one_vic.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %handle_one_vic.exit

handle_one_vic.exit:                              ; preds = %while.body.i.handle_one_vic.exit_crit_edge, %for.body.handle_one_vic.exit_crit_edge
  %handled.0.lcssa.i = phi i32 [ 0, %for.body.handle_one_vic.exit_crit_edge ], [ 1, %while.body.i.handle_one_vic.exit_crit_edge ]
  %or = or i32 %handled.0.lcssa.i, %handled.07
  %inc = add nuw nsw i32 %i.05, 1
  %12 = load i32, ptr @vic_id, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %handle_one_vic.exit.for.body_crit_edge, label %do.cond

handle_one_vic.exit.for.body_crit_edge:           ; preds = %handle_one_vic.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.cond:                                          ; preds = %handle_one_vic.exit
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_handle_irq_cascaded(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not13 = icmp eq i32 %14, 0
  br i1 %tobool.not13, label %chained_irq_enter.exit.while.end_crit_edge, label %while.body.lr.ph

chained_irq_enter.exit.while.end_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.vic_device, ptr %3, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %15 = phi i32 [ %14, %while.body.lr.ph ], [ %22, %while.body.while.body_crit_edge ]
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 true), !range !86
  %18 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %domain, align 4
  %call3 = tail call i32 @generic_handle_domain_irq(ptr noundef %19, i32 noundef %17) #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !58
  %tobool.not = icmp eq i32 %22, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %chained_irq_enter.exit.while.end_crit_edge
  %23 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i10 = icmp eq ptr %24, null
  br i1 %tobool.not.i10, label %if.else.i11, label %while.end.chained_irq_exit.exit_crit_edge

while.end.chained_irq_exit.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i11:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i11, %while.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %26, %if.else.i11 ], [ %24, %while.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_irqdomain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %valid_sources = getelementptr inbounds %struct.vic_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %valid_sources to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %valid_sources, align 4
  %shl = shl nuw i32 1, %hwirq
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @vic_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %5) #7
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 1024, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onetwocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_ack_irq(ptr nocapture noundef readonly %d) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %4) #7, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_mask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vic_unmask_irq(ptr nocapture noundef readonly %d) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vic_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %and.i = and i32 %1, -32
  %2 = load i32, ptr @vic_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8.i = icmp sgt i32 %2, 0
  br i1 %cmp8.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %id.010.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %v.09.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ @vic_devices, %entry.for.body.i_crit_edge ]
  %irq1.i = getelementptr inbounds %struct.vic_device, ptr %v.09.i, i32 0, i32 1
  %3 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and.i)
  %cmp2.i = icmp eq i32 %4, %and.i
  br i1 %cmp2.i, label %vic_from_irq.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %id.010.i, 1
  %incdec.ptr.i = getelementptr %struct.vic_device, ptr %v.09.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vic_from_irq.exit:                                ; preds = %for.body.i
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %6
  %tobool.not = icmp eq ptr %v.09.i, null
  br i1 %tobool.not, label %vic_from_irq.exit.cleanup_crit_edge, label %if.end

vic_from_irq.exit.cleanup_crit_edge:              ; preds = %vic_from_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vic_from_irq.exit
  %resume_sources = getelementptr inbounds %struct.vic_device, ptr %v.09.i, i32 0, i32 3
  %7 = ptrtoint ptr %resume_sources to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resume_sources, align 4
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool4.not = icmp eq i32 %on, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %resume_irqs = getelementptr inbounds %struct.vic_device, ptr %v.09.i, i32 0, i32 4
  %9 = ptrtoint ptr %resume_irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resume_irqs, align 4
  %or = or i32 %10, %shl
  store i32 %or, ptr %resume_irqs, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %resume_irqs6 = getelementptr inbounds %struct.vic_device, ptr %v.09.i, i32 0, i32 4
  %11 = ptrtoint ptr %resume_irqs6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resume_irqs6, align 4
  %and7 = and i32 %12, %neg
  store i32 %and7, ptr %resume_irqs6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %if.end.cleanup_crit_edge, %vic_from_irq.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vic_from_irq.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_irq_vic__288_179_vic_pm_init7, !1, !"__initcall__kmod_irq_vic__288_179_vic_pm_init7", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-vic.c", i32 179, i32 1}
!2 = !{ptr @__of_table_arm_pl190_vic, !3, !"__of_table_arm_pl190_vic", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-vic.c", i32 513, i32 1}
!4 = !{ptr @__of_table_arm_pl192_vic, !5, !"__of_table_arm_pl192_vic", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-vic.c", i32 514, i32 1}
!6 = !{ptr @__of_table_arm_versatile_vic, !7, !"__of_table_arm_versatile_vic", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-vic.c", i32 515, i32 1}
!8 = !{ptr @vic_id, !9, !"vic_id", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-vic.c", i32 78, i32 12}
!10 = !{ptr @vic_syscore_ops, !11, !"vic_syscore_ops", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-vic.c", i32 160, i32 27}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-vic.c", i32 136, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @suspend_one_vic._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @suspend_one_vic._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @vic_devices, !19, !"vic_devices", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-vic.c", i32 76, i32 26}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-vic.c", i32 106, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @resume_one_vic._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @resume_one_vic._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-vic.c", i32 449, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__vic_init._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @__vic_init._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-vic.c", i32 457, i32 3}
!32 = !{ptr @__vic_init._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @__vic_init._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-vic.c", i32 277, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vic_register._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @vic_register._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @vic_irqdomain_ops, !40, !"vic_irqdomain_ops", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-vic.c", i32 248, i32 36}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-vic.c", i32 368, i32 11}
!43 = !{ptr @vic_chip, !44, !"vic_chip", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-vic.c", i32 367, i32 24}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-vic.c", i32 500, i32 29}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-vic.c", i32 501, i32 29}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 802683}
!59 = !{i64 2155546593}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2155532495}
!62 = !{i64 2155532962}
!63 = !{i64 2155533429}
!64 = !{i64 2155533896}
!65 = !{i64 2155534122}
!66 = !{i64 802265}
!67 = !{i64 2155534557}
!68 = !{i64 2155526010}
!69 = !{i64 2155526410}
!70 = !{i64 2155528241}
!71 = !{i64 2155528668}
!72 = !{i64 2155529089}
!73 = !{i64 2155529520}
!74 = !{i64 2155529951}
!75 = !{i64 2155530374}
!76 = !{i64 2155545404}
!77 = !{i64 2155545771}
!78 = !{i64 2155541885}
!79 = !{i64 2155542259}
!80 = !{i64 2155542634}
!81 = !{i64 2155543013}
!82 = !{i64 2155543389}
!83 = !{i64 2155543958}
!84 = !{i64 2155544588}
!85 = !{i64 2155544803}
!86 = !{i32 0, i32 33}
!87 = !{!"auto-init"}
!88 = !{i64 2155540074}
!89 = !{i64 2155540476}
!90 = !{i64 2155540878}
!91 = !{i64 2155541280}
