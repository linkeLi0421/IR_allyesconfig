; ModuleID = '/llk/IR_all_yes/drivers/memory/fsl_ifc.c_pt.bc'
source_filename = "../drivers/memory/fsl_ifc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fsl_ifc_ctrl_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_ifc_ctrl_dev\09\09\09\09"
module asm "\09.long\09__crc_fsl_ifc_ctrl_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_ifc_ctrl_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_ifc_ctrl_dev\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_ifc_ctrl_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+convert_ifc_address\22, \22a\22\09"
module asm "\09.weak\09__crc_convert_ifc_address\09\09\09\09"
module asm "\09.long\09__crc_convert_ifc_address\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_convert_ifc_address:\09\09\09\09\09"
module asm "\09.asciz \09\22convert_ifc_address\22\09\09\09\09\09"
module asm "__kstrtabns_convert_ifc_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fsl_ifc_find\22, \22a\22\09"
module asm "\09.weak\09__crc_fsl_ifc_find\09\09\09\09"
module asm "\09.long\09__crc_fsl_ifc_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fsl_ifc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22fsl_ifc_find\22\09\09\09\09\09"
module asm "__kstrtabns_fsl_ifc_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fsl_ifc_ctrl = type { ptr, ptr, ptr, i32, i32, %struct.spinlock, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.fsl_ifc_global = type { i32, [2 x i32], [8 x %struct.anon.43], [13 x i32], [8 x %struct.anon.44], [12 x i32], [8 x %struct.anon.45], [12 x i32], [8 x %struct.anon.46], [48 x i32], i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], i32, i32, [2 x i32], i32, i32, i32 }
%struct.anon.43 = type { i32, i32, i32 }
%struct.anon.44 = type { i32, [2 x i32] }
%struct.anon.45 = type { i32, i32, i32 }
%struct.anon.46 = type { [4 x i32], [8 x i32] }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsl_ifc_nand = type { i32, [4 x i32], i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, [8 x i32], [28 x i32], i32, [2 x i32], i32, i32, i32, [28 x i32], i32, i32, i32, i32, [60 x i32] }

@fsl_ifc_ctrl_dev = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fsl_ifc_ctrl_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_ifc_ctrl_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_ifc_ctrl_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32), ptr @__kstrtab_fsl_ifc_ctrl_dev, ptr @__kstrtabns_fsl_ifc_ctrl_dev }, section "___ksymtab+fsl_ifc_ctrl_dev", align 4
@__kstrtab_convert_ifc_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_convert_ifc_address = external dso_local constant [0 x i8], align 1
@__ksymtab_convert_ifc_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @convert_ifc_address to i32), ptr @__kstrtab_convert_ifc_address, ptr @__kstrtabns_convert_ifc_address }, section "___ksymtab+convert_ifc_address", align 4
@__kstrtab_fsl_ifc_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_fsl_ifc_find = external dso_local constant [0 x i8], align 1
@__ksymtab_fsl_ifc_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fsl_ifc_find to i32), ptr @__kstrtab_fsl_ifc_find, ptr @__kstrtabns_fsl_ifc_find }, section "___ksymtab+fsl_ifc_find", align 4
@__initcall__kmod_fsl_ifc__189_320_fsl_ifc_init4 = internal global ptr @fsl_ifc_init, section ".initcall4.init", align 4
@__UNIQUE_ID_file190 = internal constant [36 x i8] c"fsl_ifc.file=drivers/memory/fsl_ifc\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [20 x i8] c"fsl_ifc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [39 x i8] c"fsl_ifc.author=Freescale Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [65 x i8] c"fsl_ifc.description=Freescale Integrated Flash Controller driver\00", section ".modinfo", align 1
@fsl_ifc_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_ifc_ctrl_probe, ptr @fsl_ifc_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_ifc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl-ifc\00", [24 x i8] zeroinitializer }, align 32
@fsl_ifc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ifc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Freescale Integrated Flash Controller\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_ifc_ctrl_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/memory/fsl_ifc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr = internal global ptr @fsl_ifc_ctrl_probe._entry, section ".printk_index", align 4
@fsl_ifc_ctrl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 221, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get memory region\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr.9 = internal global ptr @fsl_ifc_ctrl_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl_ifc\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IFC REGISTERS are LITTLE endian\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IFC REGISTERS are BIG endian\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 238, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IFC version %d.%d, %d banks\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr.16 = internal global ptr @fsl_ifc_ctrl_probe._entry.14, section ".printk_index", align 4
@fsl_ifc_ctrl_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 253, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get irq resource for IFC\0A\00", [60 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr.19 = internal global ptr @fsl_ifc_ctrl_probe._entry.17, section ".printk_index", align 4
@fsl_ifc_ctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&fsl_ifc_ctrl_dev->nand_wait\00", [35 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 274, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr.23 = internal global ptr @fsl_ifc_ctrl_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl-ifc-nand\00", [19 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 283, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_probe._entry_ptr.26 = internal global ptr @fsl_ifc_ctrl_probe._entry.25, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 157, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"transaction sent to IFC is not mapped to any memory bank 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_ifc_ctrl_irq\00", [47 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr = internal global ptr @fsl_ifc_ctrl_irq._entry, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 167, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Read transaction error CM_ERATTR0 0x%08X\0A\00", [54 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr.31 = internal global ptr @fsl_ifc_ctrl_irq._entry.29, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.3, i32 170, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Write transaction error CM_ERATTR0 0x%08X\0A\00", [53 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr.34 = internal global ptr @fsl_ifc_ctrl_irq._entry.32, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.3, i32 175, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"AXI ID of the error transaction 0x%08X\0A\00", [56 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr.37 = internal global ptr @fsl_ifc_ctrl_irq._entry.35, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 180, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SRC ID of the error transaction 0x%08X\0A\00", [56 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr.40 = internal global ptr @fsl_ifc_ctrl_irq._entry.38, section ".printk_index", align 4
@fsl_ifc_ctrl_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.28, ptr @.str.3, i32 183, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Transaction Address corresponding to error ERADDR 0x%08X\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_irq._entry_ptr.43 = internal global ptr @fsl_ifc_ctrl_irq._entry.41, section ".printk_index", align 4
@nand_irq_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.44, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nand_irq_lock\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"fsl_ifc_ctrl_dev\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 25, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"fsl_ifc_ctrl_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 307, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 309, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"fsl_ifc_match\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 300, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 209, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 221, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 225, i32 46 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 227, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 230, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 237, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 253, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 268, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 273, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 280, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 282, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 156, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 166, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 169, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 174, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 179, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 182, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"nand_irq_lock\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.169 = private constant [28 x i8] c"../drivers/memory/fsl_ifc.c\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.169, i32 110, i32 8 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__initcall__kmod_fsl_ifc__189_320_fsl_ifc_init4, ptr @__ksymtab_convert_ifc_address, ptr @__ksymtab_fsl_ifc_ctrl_dev, ptr @__ksymtab_fsl_ifc_find, ptr @fsl_ifc_ctrl_irq._entry, ptr @fsl_ifc_ctrl_irq._entry.29, ptr @fsl_ifc_ctrl_irq._entry.32, ptr @fsl_ifc_ctrl_irq._entry.35, ptr @fsl_ifc_ctrl_irq._entry.38, ptr @fsl_ifc_ctrl_irq._entry.41, ptr @fsl_ifc_ctrl_irq._entry_ptr, ptr @fsl_ifc_ctrl_irq._entry_ptr.31, ptr @fsl_ifc_ctrl_irq._entry_ptr.34, ptr @fsl_ifc_ctrl_irq._entry_ptr.37, ptr @fsl_ifc_ctrl_irq._entry_ptr.40, ptr @fsl_ifc_ctrl_irq._entry_ptr.43, ptr @fsl_ifc_ctrl_probe._entry, ptr @fsl_ifc_ctrl_probe._entry.14, ptr @fsl_ifc_ctrl_probe._entry.17, ptr @fsl_ifc_ctrl_probe._entry.21, ptr @fsl_ifc_ctrl_probe._entry.25, ptr @fsl_ifc_ctrl_probe._entry.6, ptr @fsl_ifc_ctrl_probe._entry_ptr, ptr @fsl_ifc_ctrl_probe._entry_ptr.16, ptr @fsl_ifc_ctrl_probe._entry_ptr.19, ptr @fsl_ifc_ctrl_probe._entry_ptr.23, ptr @fsl_ifc_ctrl_probe._entry_ptr.26, ptr @fsl_ifc_ctrl_probe._entry_ptr.9, ptr @fsl_ifc_ctrl_dev, ptr @fsl_ifc_ctrl_driver, ptr @.str, ptr @fsl_ifc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @fsl_ifc_ctrl_probe.__key, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @nand_irq_lock, ptr @.str.44], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ctrl_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_irq_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @convert_ifc_address(i32 noundef %addr_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr_base, -65536
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_ifc_find(i32 noundef %addr_base) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup10_crit_edge, label %lor.lhs.false

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

lor.lhs.false:                                    ; preds = %entry
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %gregs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %gregs, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup10_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

for.cond.preheader:                               ; preds = %lor.lhs.false
  %3 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %banks18 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %banks18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %banks18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp19 = icmp sgt i32 %5, 0
  br i1 %cmp19, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup10_crit_edge

for.cond.preheader.cleanup10_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %6 = phi ptr [ %14, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %gregs2 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %gregs2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gregs2, align 4
  %cspr3 = getelementptr %struct.fsl_ifc_global, ptr %8, i32 0, i32 2, i32 %i.020, i32 1
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %little_endian.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cspr3) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %12, %if.then.i ], [ %11, %if.else.i ]
  %and = and i32 %val.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp ne i32 %and, 0
  %13 = xor i32 %val.0.i, %addr_base
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %cmp7 = icmp ult i32 %13, 65536
  %or.cond = and i1 %tobool4.not, %cmp7
  br i1 %or.cond, label %ifc_in32.exit.cleanup10_crit_edge, label %for.inc

ifc_in32.exit.cleanup10_crit_edge:                ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

for.inc:                                          ; preds = %ifc_in32.exit
  %inc = add nuw nsw i32 %i.020, 1
  %14 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %banks = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %banks, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup10_crit_edge

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %ifc_in32.exit.cleanup10_crit_edge, %for.cond.preheader.cleanup10_crit_edge, %lor.lhs.false.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ -19, %lor.lhs.false.cleanup10_crit_edge ], [ -19, %entry.cleanup10_crit_edge ], [ -2, %for.cond.preheader.cleanup10_crit_edge ], [ -2, %for.inc.cleanup10_crit_edge ], [ %i.020, %ifc_in32.exit.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_ifc_ctrl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_ctrl_probe(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 136, i32 noundef 3520) #6
  store ptr %call.i, ptr @fsl_ifc_ctrl_dev, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_iomap(ptr noundef %2, i32 noundef 0) #6
  %3 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gregs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %gregs, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i145 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i145, null
  %7 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian28 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %7, i32 0, i32 11
  br i1 %tobool.i.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %little_endian28 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %little_endian28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_ctrl_probe, %if.then23)) #6
          to label %if.end46 [label %if.then23], !srcloc !105

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug187, ptr noundef %dev1, ptr noundef nonnull @.str.12) #6
  br label %if.end46

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %little_endian28 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %little_endian28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_ctrl_probe, %if.then41)) #6
          to label %if.end46 [label %if.then41], !srcloc !105

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug188, ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.else, %if.then23, %if.then17
  %10 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %gregs47 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %gregs47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gregs47, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %10, i32 0, i32 11
  %13 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %little_endian.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %16, %if.then.i ], [ %15, %if.else.i ]
  %and = and i32 %val.0.i, 252641280
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and)
  %cmp = icmp eq i32 %and, 16777216
  %cond = select i1 %cmp, i32 4, i32 8
  %17 = lshr i32 %and, 24
  %18 = lshr exact i32 %and, 16
  %and54 = and i32 %18, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %17, i32 noundef %and54, i32 noundef %cond) #9
  %19 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %version55 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %version55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and, ptr %version55, align 4
  %banks56 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %19, i32 0, i32 8
  %21 = ptrtoint ptr %banks56 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %banks56, align 4
  %gregs57 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %gregs57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gregs57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %and)
  %cmp58 = icmp ugt i32 %and, 33554431
  %addr.0.v = select i1 %cmp58, i32 65536, i32 4096
  %addr.0 = getelementptr i8, ptr %23, i32 %addr.0.v
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %19, i32 0, i32 2
  %24 = ptrtoint ptr %rregs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %addr.0, ptr %rregs, align 4
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call65 = tail call i32 @irq_of_parse_and_map(ptr noundef %26, i32 noundef 0) #6
  %27 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %irq = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call65, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp67 = icmp eq i32 %call65, 0
  br i1 %cmp67, label %do.end71, label %if.end73

do.end71:                                         ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %err

if.end73:                                         ; preds = %ifc_in32.exit
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call76 = tail call i32 @irq_of_parse_and_map(ptr noundef %30, i32 noundef 1) #6
  %31 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand_irq = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %nand_irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call76, ptr %nand_irq, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1, ptr %31, align 4
  %34 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %gregs.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %gregs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %gregs.i, align 4
  %cm_evter_stat.i = getelementptr inbounds %struct.fsl_ifc_global, ptr %36, i32 0, i32 15
  %little_endian.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %34, i32 0, i32 11
  %37 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %little_endian.i.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cm_evter_stat.i) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit.i

if.else.i.i:                                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit.i

ifc_in32.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %40, %if.then.i.i ], [ %39, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.0.i.i)
  %tobool.not.i146 = icmp sgt i32 %val.0.i.i, -1
  br i1 %tobool.not.i146, label %ifc_in32.exit.i.if.end.i_crit_edge, label %if.then.i147

ifc_in32.exit.i.if.end.i_crit_edge:               ; preds = %ifc_in32.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i147:                                     ; preds = %ifc_in32.exit.i
  %41 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i1.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %little_endian.i1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %little_endian.i1.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i2.i = icmp eq i8 %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i2.i, label %do.body.i.i, label %if.then.i3.i

if.then.i3.i:                                     ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_stat.i, i32 128) #6, !srcloc !106
  br label %if.end.i

do.body.i.i:                                      ; preds = %if.then.i147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_stat.i, i32 -2147483648) #6, !srcloc !106
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i.i, %if.then.i3.i, %ifc_in32.exit.i.if.end.i_crit_edge
  %cm_evter_en.i = getelementptr inbounds %struct.fsl_ifc_global, ptr %36, i32 0, i32 17
  %44 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i4.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %little_endian.i4.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %little_endian.i4.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i5.i = icmp eq i8 %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i5.i, label %do.body.i7.i, label %if.then.i6.i

if.then.i6.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_en.i, i32 128) #6, !srcloc !106
  br label %ifc_out32.exit8.i

do.body.i7.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_en.i, i32 -2147483648) #6, !srcloc !106
  br label %ifc_out32.exit8.i

ifc_out32.exit8.i:                                ; preds = %do.body.i7.i, %if.then.i6.i
  %cm_evter_intr_en.i = getelementptr inbounds %struct.fsl_ifc_global, ptr %36, i32 0, i32 19
  %47 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i9.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %little_endian.i9.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %little_endian.i9.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i10.i = icmp eq i8 %49, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i10.i, label %do.body.i12.i, label %if.then.i11.i

if.then.i11.i:                                    ; preds = %ifc_out32.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_intr_en.i, i32 128) #6, !srcloc !106
  br label %fsl_ifc_ctrl_init.exit

do.body.i12.i:                                    ; preds = %ifc_out32.exit8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_intr_en.i, i32 -2147483648) #6, !srcloc !106
  br label %fsl_ifc_ctrl_init.exit

fsl_ifc_ctrl_init.exit:                           ; preds = %do.body.i12.i, %if.then.i11.i
  %cm_erattr0.i = getelementptr inbounds %struct.fsl_ifc_global, ptr %36, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_erattr0.i, i32 0) #6
  %cm_erattr1.i = getelementptr inbounds %struct.fsl_ifc_global, ptr %36, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_erattr1.i, i32 0) #6
  %50 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand_wait = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %50, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %nand_wait, ptr noundef nonnull @.str.20, ptr noundef nonnull @fsl_ifc_ctrl_probe.__key) #6
  %51 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %irq86 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %irq86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %irq86, align 4
  %call.i148 = tail call i32 @request_threaded_irq(i32 noundef %53, ptr noundef nonnull @fsl_ifc_ctrl_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp88.not = icmp eq i32 %call.i148, 0
  %54 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  br i1 %cmp88.not, label %if.end95, label %do.end92

do.end92:                                         ; preds = %fsl_ifc_ctrl_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq94 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %irq94 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq94, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %56) #9
  br label %err_unmap_nandirq

if.end95:                                         ; preds = %fsl_ifc_ctrl_init.exit
  %nand_irq96 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %54, i32 0, i32 4
  %57 = ptrtoint ptr %nand_irq96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nand_irq96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool97.not = icmp eq i32 %58, 0
  br i1 %tobool97.not, label %if.end95.cleanup_crit_edge, label %if.then98

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then98:                                        ; preds = %if.end95
  %call.i149 = tail call i32 @request_threaded_irq(i32 noundef %58, ptr noundef nonnull @fsl_ifc_nand_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp101.not = icmp eq i32 %call.i149, 0
  br i1 %cmp101.not, label %if.then98.cleanup_crit_edge, label %do.end105

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end105:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #8
  %59 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand_irq107 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %nand_irq107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nand_irq107, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %61) #9
  %62 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %irq110 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %irq110 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq110, align 4
  %call111 = tail call ptr @free_irq(i32 noundef %64, ptr noundef %62) #6
  br label %err_unmap_nandirq

err_unmap_nandirq:                                ; preds = %do.end105, %do.end92
  %ret.0 = phi i32 [ %call.i148, %do.end92 ], [ %call.i149, %do.end105 ]
  %65 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand_irq112 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %nand_irq112 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nand_irq112, align 4
  tail call void @irq_dispose_mapping(i32 noundef %67) #6
  %68 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %irq113 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %irq113 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq113, align 4
  tail call void @irq_dispose_mapping(i32 noundef %70) #6
  br label %err

err:                                              ; preds = %err_unmap_nandirq, %do.end71
  %ret.1 = phi i32 [ -19, %do.end71 ], [ %ret.0, %err_unmap_nandirq ]
  %71 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %gregs114 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %gregs114 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %gregs114, align 4
  tail call void @iounmap(ptr noundef %73) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then98.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err ], [ -19, %do.end11 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then98.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_ctrl_remove(ptr nocapture noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nand_irq = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nand_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nand_irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %irq = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  %6 = ptrtoint ptr %nand_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nand_irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %7) #6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %9) #6
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %gregs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gregs, align 4
  tail call void @iounmap(ptr noundef %11) #6
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %driver_data.i, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_ctrl_irq(i32 noundef %irqno, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %gregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gregs, align 4
  %cm_evter_stat = getelementptr inbounds %struct.fsl_ifc_global, ptr %1, i32 0, i32 15
  %2 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %little_endian.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cm_evter_stat) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %6, %if.then.i ], [ %5, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool.not = icmp eq i32 %val.0.i, 0
  br i1 %tobool.not, label %ifc_in32.exit.if.end29_crit_edge, label %do.end

ifc_in32.exit.if.end29_crit_edge:                 ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end:                                           ; preds = %ifc_in32.exit
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27, i32 noundef %val.0.i) #9
  %9 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i49 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %little_endian.i49 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %little_endian.i49, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i50 = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i50, label %do.body.i, label %if.then.i51

if.then.i51:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_stat, i32 128) #6, !srcloc !106
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cm_evter_stat, i32 -2147483648) #6, !srcloc !106
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i51
  %cm_erattr0 = getelementptr inbounds %struct.fsl_ifc_global, ptr %1, i32 0, i32 21
  %12 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i52 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %little_endian.i52 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %little_endian.i52, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i53 = icmp eq i8 %14, 0
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cm_erattr0) #6
  br i1 %tobool.not.i53, label %if.else.i55, label %if.then.i54

if.then.i54:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit57

if.else.i55:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit57

ifc_in32.exit57:                                  ; preds = %if.else.i55, %if.then.i54
  %val.0.i56 = phi i32 [ %16, %if.then.i54 ], [ %15, %if.else.i55 ]
  %cm_erattr1 = getelementptr inbounds %struct.fsl_ifc_global, ptr %1, i32 0, i32 22
  %17 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i58 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %little_endian.i58 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %little_endian.i58, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i59 = icmp eq i8 %19, 0
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cm_erattr1) #6
  br i1 %tobool.not.i59, label %if.else.i61, label %if.then.i60

if.then.i60:                                      ; preds = %ifc_in32.exit57
  call void @__sanitizer_cov_trace_pc() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit63

if.else.i61:                                      ; preds = %ifc_in32.exit57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit63

ifc_in32.exit63:                                  ; preds = %if.else.i61, %if.then.i60
  %val.0.i62 = phi i32 [ %21, %if.then.i60 ], [ %20, %if.else.i61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %val.0.i56)
  %tobool4.not = icmp sgt i32 %val.0.i56, -1
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %.str.33..str.30 = select i1 %tobool4.not, ptr @.str.33, ptr @.str.30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull %.str.33..str.30, i32 noundef %val.0.i56) #9
  %and14 = lshr i32 %val.0.i56, 20
  %shr = and i32 %and14, 255
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.36, i32 noundef %shr) #9
  %and19 = lshr i32 %val.0.i56, 8
  %shr20 = and i32 %and19, 255
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.39, i32 noundef %shr20) #9
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.42, i32 noundef %val.0.i62) #9
  br label %if.end29

if.end29:                                         ; preds = %ifc_in32.exit63, %ifc_in32.exit.if.end29_crit_edge
  %ret.0 = phi i32 [ 1, %ifc_in32.exit63 ], [ 0, %ifc_in32.exit.if.end29_crit_edge ]
  %call30 = tail call fastcc i32 @check_nand_stat(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  %spec.select = select i1 %tobool31.not, i32 %ret.0, i32 1
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_nand_irq(i32 noundef %irqno, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @check_nand_stat(ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %. = zext i1 %tobool.not to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_nand_stat(ptr noundef %ctrl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rregs, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @nand_irq_lock) #6
  %nand_evter_stat = getelementptr inbounds %struct.fsl_ifc_nand, ptr %1, i32 0, i32 31
  %2 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %little_endian.i, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nand_evter_stat) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %6, %if.then.i ], [ %5, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i)
  %tobool.not = icmp eq i32 %val.0.i, 0
  br i1 %tobool.not, label %ifc_in32.exit.if.end_crit_edge, label %if.then

ifc_in32.exit.if.end_crit_edge:                   ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ifc_in32.exit
  %7 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i14 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %little_endian.i14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %little_endian.i14, align 4, !range !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i15 = icmp eq i8 %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  br i1 %tobool.not.i15, label %do.body.i, label %if.then.i16

if.then.i16:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %10 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_stat, i32 %10) #6, !srcloc !106
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_stat, i32 %val.0.i) #6, !srcloc !106
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i16
  %nand_stat = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %ctrl, i32 0, i32 9
  %11 = ptrtoint ptr %nand_stat to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val.0.i, ptr %nand_stat, align 4
  %nand_wait = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %ctrl, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %nand_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %ifc_out32.exit, %ifc_in32.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @nand_irq_lock, i32 noundef %call2) #6
  ret i32 %val.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__ksymtab_fsl_ifc_ctrl_dev, !1, !"__ksymtab_fsl_ifc_ctrl_dev", i1 false, i1 false}
!1 = !{!"../drivers/memory/fsl_ifc.c", i32 26, i32 1}
!2 = !{ptr @__ksymtab_convert_ifc_address, !3, !"__ksymtab_convert_ifc_address", i1 false, i1 false}
!3 = !{!"../drivers/memory/fsl_ifc.c", i32 36, i32 1}
!4 = !{ptr @__ksymtab_fsl_ifc_find, !5, !"__ksymtab_fsl_ifc_find", i1 false, i1 false}
!5 = !{!"../drivers/memory/fsl_ifc.c", i32 64, i32 1}
!6 = !{ptr @__initcall__kmod_fsl_ifc__189_320_fsl_ifc_init4, !7, !"__initcall__kmod_fsl_ifc__189_320_fsl_ifc_init4", i1 false, i1 false}
!7 = !{!"../drivers/memory/fsl_ifc.c", i32 320, i32 1}
!8 = !{ptr @__UNIQUE_ID_file190, !9, !"__UNIQUE_ID_file190", i1 false, i1 false}
!9 = !{!"../drivers/memory/fsl_ifc.c", i32 322, i32 1}
!10 = !{ptr @__UNIQUE_ID_license191, !9, !"__UNIQUE_ID_license191", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author192, !12, !"__UNIQUE_ID_author192", i1 false, i1 false}
!12 = !{!"../drivers/memory/fsl_ifc.c", i32 323, i32 1}
!13 = !{ptr @__UNIQUE_ID_description193, !14, !"__UNIQUE_ID_description193", i1 false, i1 false}
!14 = !{!"../drivers/memory/fsl_ifc.c", i32 324, i32 1}
!15 = !{ptr @fsl_ifc_ctrl_dev, !16, !"fsl_ifc_ctrl_dev", i1 false, i1 false}
!16 = !{!"../drivers/memory/fsl_ifc.c", i32 25, i32 22}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/memory/fsl_ifc.c", i32 309, i32 11}
!19 = !{ptr @fsl_ifc_ctrl_driver, !20, !"fsl_ifc_ctrl_driver", i1 false, i1 false}
!20 = !{!"../drivers/memory/fsl_ifc.c", i32 307, i32 31}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/memory/fsl_ifc.c", i32 209, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @fsl_ifc_ctrl_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/memory/fsl_ifc.c", i32 221, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fsl_ifc_ctrl_probe._entry.6, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/fsl_ifc.c", i32 225, i32 46}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/memory/fsl_ifc.c", i32 227, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug187, !37, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/memory/fsl_ifc.c", i32 230, i32 3}
!42 = !{ptr @fsl_ifc_ctrl_probe.__UNIQUE_ID_ddebug188, !41, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/memory/fsl_ifc.c", i32 237, i32 2}
!45 = !{ptr @fsl_ifc_ctrl_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/fsl_ifc.c", i32 253, i32 3}
!49 = !{ptr @fsl_ifc_ctrl_probe._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @fsl_ifc_ctrl_probe.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/memory/fsl_ifc.c", i32 268, i32 2}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/memory/fsl_ifc.c", i32 273, i32 3}
!56 = !{ptr @fsl_ifc_ctrl_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/memory/fsl_ifc.c", i32 280, i32 8}
!60 = !{ptr @fsl_ifc_ctrl_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/memory/fsl_ifc.c", i32 282, i32 4}
!62 = !{ptr @fsl_ifc_ctrl_probe._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/memory/fsl_ifc.c", i32 156, i32 3}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @fsl_ifc_ctrl_irq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/memory/fsl_ifc.c", i32 166, i32 4}
!70 = !{ptr @fsl_ifc_ctrl_irq._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/fsl_ifc.c", i32 169, i32 4}
!74 = !{ptr @fsl_ifc_ctrl_irq._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/fsl_ifc.c", i32 174, i32 3}
!78 = !{ptr @fsl_ifc_ctrl_irq._entry.35, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr.37, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/memory/fsl_ifc.c", i32 179, i32 3}
!82 = !{ptr @fsl_ifc_ctrl_irq._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/memory/fsl_ifc.c", i32 182, i32 3}
!86 = !{ptr @fsl_ifc_ctrl_irq._entry.41, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fsl_ifc_ctrl_irq._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/memory/fsl_ifc.c", i32 110, i32 8}
!90 = !{ptr @nand_irq_lock, !89, !"nand_irq_lock", i1 false, i1 false}
!91 = !{ptr @fsl_ifc_match, !92, !"fsl_ifc_match", i1 false, i1 false}
!92 = !{!"../drivers/memory/fsl_ifc.c", i32 300, i32 34}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i8 0, i8 2}
!103 = !{i64 2152480132}
!104 = !{i64 2153154491}
!105 = !{i64 2148959864, i64 2148959869, i64 2148959882, i64 2148959926, i64 2148959960, i64 2148959981}
!106 = !{i64 4939365}
