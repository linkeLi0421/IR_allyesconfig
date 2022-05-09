; ModuleID = '/llk/IR_all_yes/drivers/misc/cb710/core.c_pt.bc'
source_filename = "../drivers/misc/cb710/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cb710_pci_update_config_reg\22, \22a\22\09"
module asm "\09.weak\09__crc_cb710_pci_update_config_reg\09\09\09\09"
module asm "\09.long\09__crc_cb710_pci_update_config_reg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cb710_pci_update_config_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22cb710_pci_update_config_reg\22\09\09\09\09\09"
module asm "__kstrtabns_cb710_pci_update_config_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cb710_set_irq_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_cb710_set_irq_handler\09\09\09\09"
module asm "\09.long\09__crc_cb710_set_irq_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cb710_set_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22cb710_set_irq_handler\22\09\09\09\09\09"
module asm "__kstrtabns_cb710_set_irq_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cb710_chip = type { ptr, ptr, i32, %struct.atomic_t, i32, i32, %struct.spinlock, [0 x %struct.cb710_slot] }
%struct.cb710_slot = type { %struct.platform_device, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }

@__kstrtab_cb710_pci_update_config_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_cb710_pci_update_config_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_cb710_pci_update_config_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cb710_pci_update_config_reg to i32), ptr @__kstrtab_cb710_pci_update_config_reg, ptr @__kstrtabns_cb710_pci_update_config_reg }, section "___ksymtab_gpl+cb710_pci_update_config_reg", align 4
@__kstrtab_cb710_set_irq_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_cb710_set_irq_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_cb710_set_irq_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cb710_set_irq_handler to i32), ptr @__kstrtab_cb710_set_irq_handler, ptr @__kstrtabns_cb710_set_irq_handler }, section "___ksymtab_gpl+cb710_set_irq_handler", align 4
@cb710_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @cb710_pci_tbl, ptr @cb710_probe, ptr @cb710_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cb710_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@cb710_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_cb710__277_323_cb710_init_module6 = internal global ptr @cb710_init_module, section ".initcall6.init", align 4
@__exitcall_cb710_cleanup_module = internal global ptr @cb710_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author278 = internal constant [57 x i8] c"cb710.author=Micha\C5\82 Miros\C5\82aw <mirq-linux@rere.qmqm.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description279 = internal constant [54 x i8] c"cb710.description=ENE CB710 memory card reader driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [36 x i8] c"cb710.file=drivers/misc/cb710/cb710\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [18 x i8] c"cb710.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cb710\00", [26 x i8] zeroinitializer }, align 32
@cb710_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 5412, i32 1296, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cb710_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cb710_suspend, ptr @cb710_resume, ptr @cb710_suspend, ptr @cb710_resume, ptr @cb710_suspend, ptr @cb710_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cb710_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cb710_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/misc/cb710/core.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PCI config[0x48] = 0x%08X\0A\00", [37 x i8] zeroinitializer }, align 32
@cb710_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@cb710_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 247, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"id %d, IO 0x%p, IRQ %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cb710_probe._entry_ptr = internal global ptr @cb710_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cb710-mmc\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cb710-ms\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cb710-sm\00", [23 x i8] zeroinitializer }, align 32
@cb710_register_slot.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cb710_register_slot\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"register: %s.%d; slot %d; mask %d; IO offset: 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cb710_ida.xa_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"cb710_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 304, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"cb710_ida\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 305, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"cb710_pci_tbl\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 296, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"cb710_pm_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 302, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 206, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 230, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 246, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 251, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 258, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 265, i32 25 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 102, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [29 x i8] c"../drivers/misc/cb710/core.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 15, i32 8 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author278, ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_cb710_cleanup_module, ptr @__initcall__kmod_cb710__277_323_cb710_init_module6, ptr @__ksymtab_cb710_pci_update_config_reg, ptr @__ksymtab_cb710_set_irq_handler, ptr @cb710_cleanup_module, ptr @cb710_probe._entry, ptr @cb710_probe._entry_ptr, ptr @cb710_driver, ptr @cb710_ida, ptr @.str, ptr @cb710_pci_tbl, ptr @cb710_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cb710_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb710_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cb710_pci_update_config_reg(ptr noundef %pdev, i32 noundef %reg, i32 noundef %mask, i32 noundef %xor) #0 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #6
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %call = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef %reg, ptr noundef nonnull %rval) #6
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rval, align 4
  %and = and i32 %2, %mask
  %xor1 = xor i32 %and, %xor
  store i32 %xor1, ptr %rval, align 4
  %call2 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef %reg, i32 noundef %xor1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cb710_set_irq_handler(ptr nocapture noundef %slot, ptr noundef %handler) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.platform_device, ptr %slot, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq_lock = getelementptr inbounds %struct.cb710_chip, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %irq_handler = getelementptr inbounds %struct.cb710_slot, ptr %slot, i32 0, i32 2
  %4 = ptrtoint ptr %irq_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %handler, ptr %irq_handler, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cb710_cleanup_module() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @cb710_driver) #6
  tail call void @ida_destroy(ptr noundef nonnull @cb710_ida) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_init_module() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cb710_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  %rval.i41.i = alloca i32, align 4
  %rval.i36.i = alloca i32, align 4
  %rval.i31.i = alloca i32, align 4
  %rval.i26.i = alloca i32, align 4
  %rval.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !59
  %devfn1.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %1 = ptrtoint ptr %devfn1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %devfn1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i.i) #6
  %4 = ptrtoint ptr %rval.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rval.i.i, align 4, !annotation !59
  %call.i.i160 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 72, ptr noundef nonnull %rval.i.i) #6
  %5 = ptrtoint ptr %rval.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rval.i.i, align 4
  %and.i.i = and i32 %6, -256
  %xor1.i46.i = or i32 %and.i.i, 63
  store i32 %xor1.i46.i, ptr %rval.i.i, align 4
  %call2.i.i = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 72, i32 noundef %xor1.i46.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i.i) #6
  %call.i = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 72, ptr noundef nonnull %val.i) #6
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %2, 248
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %call4.i = call ptr @pci_get_slot(ptr noundef %10, i32 noundef %and.i) #6
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %cb710_pci_configure.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %vendor.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 7
  %11 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 5412, i16 %12)
  %cmp.i = icmp eq i16 %12, 5412
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %if.end7.i
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %call4.i, i32 0, i32 8
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5153, i16 %14)
  %cmp10.i = icmp eq i16 %14, 5153
  br i1 %cmp10.i, label %if.then12.i, label %land.lhs.true.i.if.end13.i_crit_edge

land.lhs.true.i.if.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i26.i) #6
  %15 = ptrtoint ptr %rval.i26.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %rval.i26.i, align 4, !annotation !59
  %call.i27.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 140, ptr noundef nonnull %rval.i26.i) #6
  %16 = ptrtoint ptr %rval.i26.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rval.i26.i, align 4
  %and.i28.i = and i32 %17, -15728641
  %xor1.i2949.i = or i32 %and.i28.i, 1048576
  store i32 %xor1.i2949.i, ptr %rval.i26.i, align 4
  %call2.i30.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call4.i, i32 noundef 140, i32 noundef %xor1.i2949.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i26.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i31.i) #6
  %18 = ptrtoint ptr %rval.i31.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %rval.i31.i, align 4, !annotation !59
  %call.i32.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 176, ptr noundef nonnull %rval.i31.i) #6
  %19 = ptrtoint ptr %rval.i31.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rval.i31.i, align 4
  %xor1.i3450.i = or i32 %20, 134217728
  store i32 %xor1.i3450.i, ptr %rval.i31.i, align 4
  %call2.i35.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call4.i, i32 noundef 176, i32 noundef %xor1.i3450.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i31.i) #6
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end13.i_crit_edge, %if.end7.i.if.end13.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i36.i) #6
  %21 = ptrtoint ptr %rval.i36.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %rval.i36.i, align 4, !annotation !59
  %call.i37.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 140, ptr noundef nonnull %rval.i36.i) #6
  %22 = ptrtoint ptr %rval.i36.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rval.i36.i, align 4
  %and.i38.i = and i32 %23, -3841
  %xor1.i3947.i = or i32 %and.i38.i, 512
  store i32 %xor1.i3947.i, ptr %rval.i36.i, align 4
  %call2.i40.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call4.i, i32 noundef 140, i32 noundef %xor1.i3947.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i36.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval.i41.i) #6
  %24 = ptrtoint ptr %rval.i41.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %rval.i41.i, align 4, !annotation !59
  %call.i42.i = call i32 @pci_read_config_dword(ptr noundef nonnull %call4.i, i32 noundef 144, ptr noundef nonnull %rval.i41.i) #6
  %25 = ptrtoint ptr %rval.i41.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rval.i41.i, align 4
  %and.i43.i = and i32 %26, -393217
  %xor1.i4448.i = or i32 %and.i43.i, 262144
  store i32 %xor1.i4448.i, ptr %rval.i41.i, align 4
  %call2.i45.i = call i32 @pci_write_config_dword(ptr noundef nonnull %call4.i, i32 noundef 144, i32 noundef %xor1.i4448.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval.i41.i) #6
  call void @pci_dev_put(ptr noundef nonnull %call4.i) #6
  br label %if.end

cb710_pci_configure.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end13.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call1 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 72, ptr noundef nonnull %val) #6
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %tobool2.not = icmp sgt i32 %28, -1
  br i1 %tobool2.not, label %if.then3, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %28, 1895825408
  %call4 = call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 72, i32 noundef %or) #6
  %call5 = call i32 @pci_read_config_dword(ptr noundef %pdev, i32 noundef 72, ptr noundef nonnull %val) #6
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb710_probe, %do.end)) #6
          to label %if.then12 [label %do.end], !srcloc !60

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %30) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %and14 = and i32 %32, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %do.end.cleanup_crit_edge, label %if.end17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %shr = lshr i32 %32, 28
  %and18 = and i32 %shr, 7
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and18, ptr %val, align 4
  %.lobit = and i32 %shr, 1
  %34 = lshr i32 %32, 29
  %.lobit169 = and i32 %34, 1
  %n.1 = add nuw nsw i32 %.lobit, %.lobit169
  %35 = lshr i32 %32, 30
  %.lobit170 = and i32 %35, 1
  %n.2 = add nuw nsw i32 %n.1, %.lobit170
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %36 = mul nuw nsw i32 %n.2, 1000
  %37 = add nuw nsw i32 %36, 72
  %call.i163 = call noalias ptr @devm_kmalloc(ptr noundef %dev33, i32 noundef %37, i32 noundef 3520) #6
  %tobool36.not = icmp eq ptr %call.i163, null
  br i1 %tobool36.not, label %if.end17.cleanup_crit_edge, label %if.end38

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end17
  %call39 = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.body47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body47:                                        ; preds = %if.end42
  %irq_lock = getelementptr inbounds %struct.cb710_chip, ptr %call.i163, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @cb710_probe.__key, i16 noundef signext 3) #6
  %38 = ptrtoint ptr %call.i163 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %pdev, ptr %call.i163, align 8
  %call52 = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %39 = ptrtoint ptr %call52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call52, align 4
  %iobase = getelementptr inbounds %struct.cb710_chip, ptr %call.i163, i32 0, i32 1
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %iobase, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i163, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %call.i164 = call i32 @devm_request_threaded_irq(ptr noundef %dev33, i32 noundef %44, ptr noundef nonnull @cb710_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call.i163) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool55.not = icmp eq i32 %call.i164, 0
  br i1 %tobool55.not, label %if.end57, label %do.body47.cleanup_crit_edge

do.body47.cleanup_crit_edge:                      ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end57:                                         ; preds = %do.body47
  %call.i165 = call i32 @ida_alloc_range(ptr noundef nonnull @cb710_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp = icmp slt i32 %call.i165, 0
  br i1 %cmp, label %if.end57.cleanup_crit_edge, label %if.end60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  %platform_id = getelementptr inbounds %struct.cb710_chip, ptr %call.i163, i32 0, i32 2
  %45 = ptrtoint ptr %platform_id to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call.i165, ptr %platform_id, align 8
  %46 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iobase, align 4
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.5, i32 noundef %call.i165, ptr noundef %47, i32 noundef %49) #9
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %and68 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end60.if.end75_crit_edge, label %if.then70

if.end60.if.end75_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then70:                                        ; preds = %if.end60
  %call71 = call fastcc i32 @cb710_register_slot(ptr noundef nonnull %call.i163, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then70.if.end75_crit_edge, label %if.then70.cleanup_crit_edge

if.then70.cleanup_crit_edge:                      ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70.if.end75_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.end75:                                         ; preds = %if.then70.if.end75_crit_edge, %if.end60.if.end75_crit_edge
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  %and76 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end75.if.end83_crit_edge, label %if.then78

if.end75.if.end83_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then78:                                        ; preds = %if.end75
  %call79 = call fastcc i32 @cb710_register_slot(ptr noundef nonnull %call.i163, i32 noundef 2, i32 noundef 64, ptr noundef nonnull @.str.9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end83_crit_edge, label %if.then78.unreg_mmc_crit_edge

if.then78.unreg_mmc_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %unreg_mmc

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %if.end75.if.end83_crit_edge
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %and84 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %if.then86

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then86:                                        ; preds = %if.end83
  %call87 = call fastcc i32 @cb710_register_slot(ptr noundef nonnull %call.i163, i32 noundef 4, i32 noundef 96, ptr noundef nonnull @.str.10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.cleanup_crit_edge, label %unreg_ms

if.then86.cleanup_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unreg_ms:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cb710_unregister_slot(ptr noundef nonnull %call.i163, i32 noundef 2)
  br label %unreg_mmc

unreg_mmc:                                        ; preds = %unreg_ms, %if.then78.unreg_mmc_crit_edge
  %err.0 = phi i32 [ %call79, %if.then78.unreg_mmc_crit_edge ], [ %call87, %unreg_ms ]
  call fastcc void @cb710_unregister_slot(ptr noundef nonnull %call.i163, i32 noundef 1)
  %slot_refs_count = getelementptr inbounds %struct.cb710_chip, ptr %call.i163, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %slot_refs_count, i32 noundef 4) #6
  %56 = ptrtoint ptr %slot_refs_count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %slot_refs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp94.not = icmp eq i32 %57, 0
  br i1 %cmp94.not, label %unreg_mmc.cleanup_crit_edge, label %do.body102, !prof !61

unreg_mmc.cleanup_crit_edge:                      ; preds = %unreg_mmc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body102:                                       ; preds = %unreg_mmc
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 277, 0\0A.popsection", ""() #6, !srcloc !62
  unreachable

cleanup:                                          ; preds = %unreg_mmc.cleanup_crit_edge, %if.then86.cleanup_crit_edge, %if.end83.cleanup_crit_edge, %if.then70.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.body47.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end.cleanup_crit_edge, %cb710_pci_configure.exit
  %retval.0 = phi i32 [ -19, %cb710_pci_configure.exit ], [ -19, %do.end.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ %call.i164, %do.body47.cleanup_crit_edge ], [ %call.i165, %if.end57.cleanup_crit_edge ], [ %call71, %if.then70.cleanup_crit_edge ], [ 0, %if.then86.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ %err.0, %unreg_mmc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb710_remove_one(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %slots.i = getelementptr inbounds %struct.cb710_chip, ptr %1, i32 0, i32 5
  %slot_mask1.i = getelementptr inbounds %struct.cb710_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_mask1.i, align 8
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cb710_unregister_slot.exit_crit_edge, label %if.end.i

entry.cb710_unregister_slot.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_unregister_slot.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slots.i, align 4
  %sub.i = add i32 %5, -1
  %arrayidx.i = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i
  tail call void @platform_device_unregister(ptr noundef %arrayidx.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  %irq_handler.i = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i, i32 2
  %6 = ptrtoint ptr %irq_handler.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_handler.i, align 4
  %cmp.not.i = icmp eq ptr %7, null
  br i1 %cmp.not.i, label %do.end19.i, label %do.body11.i, !prof !61

do.body11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slots.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %slots.i, align 4
  %10 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slot_mask1.i, align 8
  %and22.i = and i32 %11, -5
  store i32 %and22.i, ptr %slot_mask1.i, align 8
  br label %cb710_unregister_slot.exit

cb710_unregister_slot.exit:                       ; preds = %do.end19.i, %entry.cb710_unregister_slot.exit_crit_edge
  %12 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slot_mask1.i, align 8
  %and.i15 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %cb710_unregister_slot.exit.cb710_unregister_slot.exit26_crit_edge, label %if.end.i21

cb710_unregister_slot.exit.cb710_unregister_slot.exit26_crit_edge: ; preds = %cb710_unregister_slot.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_unregister_slot.exit26

if.end.i21:                                       ; preds = %cb710_unregister_slot.exit
  %14 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slots.i, align 4
  %sub.i17 = add i32 %15, -1
  %arrayidx.i18 = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i17
  tail call void @platform_device_unregister(ptr noundef %arrayidx.i18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  %irq_handler.i19 = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i17, i32 2
  %16 = ptrtoint ptr %irq_handler.i19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_handler.i19, align 4
  %cmp.not.i20 = icmp eq ptr %17, null
  br i1 %cmp.not.i20, label %do.end19.i25, label %do.body11.i22, !prof !61

do.body11.i22:                                    ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

do.end19.i25:                                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slots.i, align 4
  %dec.i23 = add i32 %19, -1
  store i32 %dec.i23, ptr %slots.i, align 4
  %20 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot_mask1.i, align 8
  %and22.i24 = and i32 %21, -3
  store i32 %and22.i24, ptr %slot_mask1.i, align 8
  br label %cb710_unregister_slot.exit26

cb710_unregister_slot.exit26:                     ; preds = %do.end19.i25, %cb710_unregister_slot.exit.cb710_unregister_slot.exit26_crit_edge
  %22 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_mask1.i, align 8
  %and.i29 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %cb710_unregister_slot.exit26.cb710_unregister_slot.exit40_crit_edge, label %if.end.i35

cb710_unregister_slot.exit26.cb710_unregister_slot.exit40_crit_edge: ; preds = %cb710_unregister_slot.exit26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cb710_unregister_slot.exit40

if.end.i35:                                       ; preds = %cb710_unregister_slot.exit26
  %24 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots.i, align 4
  %sub.i31 = add i32 %25, -1
  %arrayidx.i32 = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i31
  tail call void @platform_device_unregister(ptr noundef %arrayidx.i32) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  %irq_handler.i33 = getelementptr %struct.cb710_chip, ptr %1, i32 0, i32 7, i32 %sub.i31, i32 2
  %26 = ptrtoint ptr %irq_handler.i33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_handler.i33, align 4
  %cmp.not.i34 = icmp eq ptr %27, null
  br i1 %cmp.not.i34, label %do.end19.i39, label %do.body11.i36, !prof !61

do.body11.i36:                                    ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

do.end19.i39:                                     ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slots.i, align 4
  %dec.i37 = add i32 %29, -1
  store i32 %dec.i37, ptr %slots.i, align 4
  %30 = ptrtoint ptr %slot_mask1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %slot_mask1.i, align 8
  %and22.i38 = and i32 %31, -2
  store i32 %and22.i38, ptr %slot_mask1.i, align 8
  br label %cb710_unregister_slot.exit40

cb710_unregister_slot.exit40:                     ; preds = %do.end19.i39, %cb710_unregister_slot.exit26.cb710_unregister_slot.exit40_crit_edge
  %slot_refs_count = getelementptr inbounds %struct.cb710_chip, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %slot_refs_count, i32 noundef 4) #6
  %32 = ptrtoint ptr %slot_refs_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %slot_refs_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not = icmp eq i32 %33, 0
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !61

do.body3:                                         ; preds = %cb710_unregister_slot.exit40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 290, 0\0A.popsection", ""() #6, !srcloc !65
  unreachable

do.end8:                                          ; preds = %cb710_unregister_slot.exit40
  call void @__sanitizer_cov_trace_pc() #8
  %platform_id = getelementptr inbounds %struct.cb710_chip, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %platform_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %platform_id, align 8
  tail call void @ida_free(ptr noundef nonnull @cb710_ida, i32 noundef %35) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_irq_handler(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.cb710_chip, ptr %data, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #6
  %slots = getelementptr inbounds %struct.cb710_chip, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not12 = icmp eq i32 %1, 0
  br i1 %tobool.not12, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %slot1 = getelementptr inbounds %struct.cb710_chip, ptr %data, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %nr.015 = phi i32 [ %dec, %if.end.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %handled.014 = phi i32 [ %handled.1, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %slot.013 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %slot1, %for.body.preheader ]
  %irq_handler = getelementptr inbounds %struct.cb710_slot, ptr %slot.013, i32 0, i32 2
  %2 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_handler, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %3(ptr noundef %slot.013) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool3.not, i32 %handled.014, i32 1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body.if.end_crit_edge
  %handled.1 = phi i32 [ %handled.014, %for.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %incdec.ptr = getelementptr %struct.cb710_slot, ptr %slot.013, i32 1
  %dec = add i32 %nr.015, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %handled.1, %if.end.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #6
  ret i32 %handled.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cb710_register_slot(ptr noundef %chip, i32 noundef %slot_mask, i32 noundef %io_offset, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slots, align 4
  %arrayidx = getelementptr %struct.cb710_chip, ptr %chip, i32 0, i32 7, i32 %1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cb710_register_slot.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cb710_register_slot, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %platform_id = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 2
  %4 = ptrtoint ptr %platform_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %platform_id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cb710_register_slot.__UNIQUE_ID_ddebug275, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %5, i32 noundef %1, i32 noundef %slot_mask, i32 noundef %io_offset) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %slots, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !66
  %iobase = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 1
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iobase, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %io_offset
  %iobase13 = getelementptr %struct.cb710_chip, ptr %chip, i32 0, i32 7, i32 %1, i32 1
  %10 = ptrtoint ptr %iobase13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %iobase13, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %arrayidx, align 8
  %platform_id15 = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %platform_id15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %platform_id15, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %arrayidx, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %id, align 4
  %15 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %parent = getelementptr inbounds %struct.platform_device, ptr %arrayidx, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.platform_device, ptr %arrayidx, i32 0, i32 3, i32 35
  %18 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @cb710_release_slot, ptr %release, align 4
  %call23 = tail call i32 @platform_device_register(ptr noundef %arrayidx) #6
  %slot_refs_count = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %slot_refs_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %slot_refs_count, i32 1, i32 3, i32 1) #6
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %slot_refs_count, ptr %slot_refs_count, i32 1, ptr elementtype(i32) %slot_refs_count) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end28, label %if.then25

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_device_put(ptr noundef %arrayidx) #6
  %20 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slots, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %slots, align 4
  br label %cleanup

if.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %slot_mask29 = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 4
  %22 = ptrtoint ptr %slot_mask29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slot_mask29, align 8
  %or = or i32 %23, %slot_mask
  store i32 %or, ptr %slot_mask29, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then25
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cb710_unregister_slot(ptr noundef %chip, i32 noundef %slot_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slots = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 5
  %slot_mask1 = getelementptr inbounds %struct.cb710_chip, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %slot_mask1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_mask1, align 8
  %and = and i32 %1, %slot_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slots, align 4
  %sub = add i32 %3, -1
  %arrayidx = getelementptr %struct.cb710_chip, ptr %chip, i32 0, i32 7, i32 %sub
  tail call void @platform_device_unregister(ptr noundef %arrayidx) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !63
  %irq_handler = getelementptr %struct.cb710_chip, ptr %chip, i32 0, i32 7, i32 %sub, i32 2
  %4 = ptrtoint ptr %irq_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_handler, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %do.end19, label %do.body11, !prof !61

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/cb710/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #6, !srcloc !64
  unreachable

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slots, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %slots, align 4
  %neg = xor i32 %slot_mask, -1
  %8 = ptrtoint ptr %slot_mask1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_mask1, align 8
  %and22 = and i32 %9, %neg
  store i32 %and22, ptr %slot_mask1, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cb710_release_slot(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slot_refs_count = getelementptr inbounds %struct.cb710_chip, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %slot_refs_count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %slot_refs_count, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %slot_refs_count, ptr %slot_refs_count, i32 1, ptr elementtype(i32) %slot_refs_count) #6, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_suspend(ptr noundef %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev_d, i32 noundef %3, ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cb710_resume(ptr noundef %dev_d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev_d, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr i8, ptr %dev_d, i32 932
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev_d, i32 noundef %3, ptr noundef nonnull @cb710_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__ksymtab_cb710_pci_update_config_reg, !1, !"__ksymtab_cb710_pci_update_config_reg", i1 false, i1 false}
!1 = !{!"../drivers/misc/cb710/core.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_cb710_set_irq_handler, !3, !"__ksymtab_cb710_set_irq_handler", i1 false, i1 false}
!3 = !{!"../drivers/misc/cb710/core.c", i32 167, i32 1}
!4 = !{ptr @__initcall__kmod_cb710__277_323_cb710_init_module6, !5, !"__initcall__kmod_cb710__277_323_cb710_init_module6", i1 false, i1 false}
!5 = !{!"../drivers/misc/cb710/core.c", i32 323, i32 1}
!6 = !{ptr @__exitcall_cb710_cleanup_module, !7, !"__exitcall_cb710_cleanup_module", i1 false, i1 false}
!7 = !{!"../drivers/misc/cb710/core.c", i32 324, i32 1}
!8 = !{ptr @__UNIQUE_ID_author278, !9, !"__UNIQUE_ID_author278", i1 false, i1 false}
!9 = !{!"../drivers/misc/cb710/core.c", i32 326, i32 1}
!10 = !{ptr @__UNIQUE_ID_description279, !11, !"__UNIQUE_ID_description279", i1 false, i1 false}
!11 = !{!"../drivers/misc/cb710/core.c", i32 327, i32 1}
!12 = !{ptr @__UNIQUE_ID_file280, !13, !"__UNIQUE_ID_file280", i1 false, i1 false}
!13 = !{!"../drivers/misc/cb710/core.c", i32 328, i32 1}
!14 = !{ptr @__UNIQUE_ID_license281, !13, !"__UNIQUE_ID_license281", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/misc/cb710/core.c", i32 305, i32 10}
!17 = !{ptr @cb710_driver, !18, !"cb710_driver", i1 false, i1 false}
!18 = !{!"../drivers/misc/cb710/core.c", i32 304, i32 26}
!19 = !{ptr @cb710_pci_tbl, !20, !"cb710_pci_tbl", i1 false, i1 false}
!20 = !{!"../drivers/misc/cb710/core.c", i32 296, i32 35}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/cb710/core.c", i32 206, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cb710_probe.__UNIQUE_ID_ddebug276, !22, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!26 = !{ptr @cb710_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/misc/cb710/core.c", i32 230, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/misc/cb710/core.c", i32 246, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cb710_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @cb710_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/cb710/core.c", i32 251, i32 26}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/cb710/core.c", i32 258, i32 25}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/cb710/core.c", i32 265, i32 25}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/cb710/core.c", i32 102, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cb710_register_slot.__UNIQUE_ID_ddebug275, !42, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!45 = !{ptr @cb710_pm_ops, !46, !"cb710_pm_ops", i1 false, i1 false}
!46 = !{!"../drivers/misc/cb710/core.c", i32 302, i32 8}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/cb710/core.c", i32 15, i32 8}
!49 = !{ptr @cb710_ida, !48, !"cb710_ida", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i64 2148697399, i64 2148697404, i64 2148697417, i64 2148697461, i64 2148697495, i64 2148697516}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2154913062, i64 2154913552, i64 2154913099, i64 2154913155, i64 2154913189, i64 2154913213, i64 2154913254, i64 2154913275, i64 2154913303, i64 2154913337}
!63 = !{i64 2154901553}
!64 = !{i64 2154901971, i64 2154902461, i64 2154902008, i64 2154902064, i64 2154902098, i64 2154902122, i64 2154902163, i64 2154902184, i64 2154902212, i64 2154902246}
!65 = !{i64 2154914722, i64 2154915212, i64 2154914759, i64 2154914815, i64 2154914849, i64 2154914873, i64 2154914914, i64 2154914935, i64 2154914963, i64 2154914997}
!66 = !{i64 2154901388}
!67 = !{i64 2148215584, i64 2148215610, i64 2148215639, i64 2148215673, i64 2148215704, i64 2148215727}
!68 = !{i64 2148218049, i64 2148218075, i64 2148218104, i64 2148218138, i64 2148218169, i64 2148218192}
