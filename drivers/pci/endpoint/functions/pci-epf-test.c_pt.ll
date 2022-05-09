; ModuleID = '/llk/IR_all_yes/drivers/pci/endpoint/functions/pci-epf-test.c_pt.bc'
source_filename = "../drivers/pci/endpoint/functions/pci-epf-test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_epf_driver = type { ptr, ptr, %struct.device_driver, ptr, ptr, %struct.list_head, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_epf_ops = type { ptr, ptr, ptr }
%struct.pci_epf_device_id = type { [20 x i8], i32 }
%struct.pci_epf_header = type { i16, i16, i8, i8, i8, i8, i8, i16, i16, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_epf = type { %struct.device, ptr, ptr, [6 x %struct.pci_epf_bar], i8, i16, i8, i8, ptr, ptr, ptr, %struct.list_head, %struct.notifier_block, %struct.mutex, ptr, %struct.list_head, [6 x %struct.pci_epf_bar], i8, ptr, i32, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pci_epf_bar = type { i32, ptr, i32, i32, i32 }
%struct.pci_epf_test = type { [6 x ptr], ptr, i32, i32, %struct.delayed_work, ptr, %struct.completion, i8, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.pci_epf_test_reg = type <{ i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }>
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.pci_epc_features = type { i8, i8, i8, [6 x i64], i32 }
%struct.pci_epc = type { %struct.device, %struct.list_head, ptr, ptr, ptr, i32, i8, ptr, ptr, %struct.mutex, i32, %struct.atomic_notifier_head }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }

@__initcall__kmod_pci_epf_test__238_945_pci_epf_test_init6 = internal global ptr @pci_epf_test_init, section ".initcall6.init", align 4
@kpcitest_workqueue = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@test_driver = internal global { %struct.pci_epf_driver, [56 x i8] } { %struct.pci_epf_driver { ptr @pci_epf_test_probe, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ops, ptr null, %struct.list_head zeroinitializer, ptr @pci_epf_test_ids }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pci_epf_test_exit = internal global ptr @pci_epf_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [45 x i8] c"pci_epf_test.description=PCI EPF TEST DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [59 x i8] c"pci_epf_test.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [62 x i8] c"pci_epf_test.file=drivers/pci/endpoint/functions/pci-epf-test\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [28 x i8] c"pci_epf_test.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"kpcitest\00", [23 x i8] zeroinitializer }, align 32
@pci_epf_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Failed to allocate the kpcitest work queue\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_epf_test_init\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/pci/endpoint/functions/pci-epf-test.c\00", [50 x i8] zeroinitializer }, align 32
@pci_epf_test_init._entry_ptr = internal global ptr @pci_epf_test_init._entry, section ".printk_index", align 4
@pci_epf_test_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 939, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Failed to register pci epf test driver --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pci_epf_test_init._entry_ptr.6 = internal global ptr @pci_epf_test_init._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pci_epf_test\00", [19 x i8] zeroinitializer }, align 32
@ops = internal global { %struct.pci_epf_ops, [20 x i8] } { %struct.pci_epf_ops { ptr @pci_epf_test_bind, ptr @pci_epf_test_unbind, ptr null }, [20 x i8] zeroinitializer }, align 32
@pci_epf_test_ids = internal constant { [2 x %struct.pci_epf_device_id], [48 x i8] } { [2 x %struct.pci_epf_device_id] [%struct.pci_epf_device_id { [20 x i8] c"pci_epf_test\00\00\00\00\00\00\00\00", i32 0 }, %struct.pci_epf_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@test_header = internal global { %struct.pci_epf_header, [44 x i8] } { %struct.pci_epf_header { i16 -1, i16 -1, i8 0, i8 0, i8 0, i8 -1, i8 0, i16 0, i16 0, i32 1 }, [44 x i8] zeroinitializer }, align 32
@pci_epf_test_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&epf_test->cmd_handler)->work)\00", [45 x i8] zeroinitializer }, align 32
@pci_epf_test_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&epf_test->cmd_handler)->timer\00", [63 x i8] zeroinitializer }, align 32
@pci_epf_test_cmd_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 542, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to detect IRQ type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_epf_test_cmd_handler\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_epf_test_cmd_handler._entry_ptr = internal global ptr @pci_epf_test_cmd_handler._entry, section ".printk_index", align 4
@pci_epf_test_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 416, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pci_epf_test_write\00", [45 x i8] zeroinitializer }, align 32
@pci_epf_test_write._entry_ptr = internal global ptr @pci_epf_test_write._entry, section ".printk_index", align 4
@pci_epf_test_write._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 425, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to map address\0A\00", [41 x i8] zeroinitializer }, align 32
@pci_epf_test_write._entry_ptr.19 = internal global ptr @pci_epf_test_write._entry.17, section ".printk_index", align 4
@pci_epf_test_write._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 442, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot transfer data using DMA\0A\00", [32 x i8] zeroinitializer }, align 32
@pci_epf_test_write._entry_ptr.22 = internal global ptr @pci_epf_test_write._entry.20, section ".printk_index", align 4
@pci_epf_test_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 450, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to map source buffer addr\0A\00", [62 x i8] zeroinitializer }, align 32
@pci_epf_test_write._entry_ptr.25 = internal global ptr @pci_epf_test_write._entry.23, section ".printk_index", align 4
@pci_epf_test_write._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.3, i32 459, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Data transfer failed\0A\00", [42 x i8] zeroinitializer }, align 32
@pci_epf_test_write._entry_ptr.28 = internal global ptr @pci_epf_test_write._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pci_epf_test_data_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 119, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid DMA memcpy channel\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_epf_test_data_transfer\00", [37 x i8] zeroinitializer }, align 32
@pci_epf_test_data_transfer._entry_ptr = internal global ptr @pci_epf_test_data_transfer._entry, section ".printk_index", align 4
@pci_epf_test_data_transfer._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 125, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare DMA memcpy\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_epf_test_data_transfer._entry_ptr.36 = internal global ptr @pci_epf_test_data_transfer._entry.34, section ".printk_index", align 4
@pci_epf_test_data_transfer._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 136, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to do DMA tx_submit %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pci_epf_test_data_transfer._entry_ptr.39 = internal global ptr @pci_epf_test_data_transfer._entry.37, section ".printk_index", align 4
@pci_epf_test_data_transfer._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.3, i32 144, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA wait_for_completion_timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@pci_epf_test_data_transfer._entry_ptr.42 = internal global ptr @pci_epf_test_data_transfer._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@pci_epf_test_print_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016\0A%s => Size: %llu bytes\09 DMA: %s\09 Time: %llu.%09u seconds\09Rate: %llu KB/s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_epf_test_print_rate\00", [40 x i8] zeroinitializer }, align 32
@pci_epf_test_print_rate._entry_ptr = internal global ptr @pci_epf_test_print_rate._entry, section ".printk_index", align 4
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"YES\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NO\00", [29 x i8] zeroinitializer }, align 32
@pci_epf_test_raise_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 516, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to raise IRQ, unknown type\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_epf_test_raise_irq\00", [41 x i8] zeroinitializer }, align 32
@pci_epf_test_raise_irq._entry_ptr = internal global ptr @pci_epf_test_raise_irq._entry, section ".printk_index", align 4
@pci_epf_test_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.50, ptr @.str.3, i32 328, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_epf_test_read\00", [46 x i8] zeroinitializer }, align 32
@pci_epf_test_read._entry_ptr = internal global ptr @pci_epf_test_read._entry, section ".printk_index", align 4
@pci_epf_test_read._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.50, ptr @.str.3, i32 337, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@pci_epf_test_read._entry_ptr.52 = internal global ptr @pci_epf_test_read._entry.51, section ".printk_index", align 4
@pci_epf_test_read._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.50, ptr @.str.3, i32 351, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@pci_epf_test_read._entry_ptr.54 = internal global ptr @pci_epf_test_read._entry.53, section ".printk_index", align 4
@pci_epf_test_read._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.3, i32 359, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to map destination buffer addr\0A\00", [57 x i8] zeroinitializer }, align 32
@pci_epf_test_read._entry_ptr.57 = internal global ptr @pci_epf_test_read._entry.55, section ".printk_index", align 4
@pci_epf_test_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.50, ptr @.str.3, i32 368, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@pci_epf_test_read._entry_ptr.59 = internal global ptr @pci_epf_test_read._entry.58, section ".printk_index", align 4
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 244, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate source address\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_epf_test_copy\00", [46 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr = internal global ptr @pci_epf_test_copy._entry, section ".printk_index", align 4
@pci_epf_test_copy._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 253, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to map source address\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr.65 = internal global ptr @pci_epf_test_copy._entry.63, section ".printk_index", align 4
@pci_epf_test_copy._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 260, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate destination address\0A\00", [56 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr.68 = internal global ptr @pci_epf_test_copy._entry.66, section ".printk_index", align 4
@pci_epf_test_copy._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.62, ptr @.str.3, i32 269, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to map destination address\0A\00", [61 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr.71 = internal global ptr @pci_epf_test_copy._entry.69, section ".printk_index", align 4
@pci_epf_test_copy._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.62, ptr @.str.3, i32 278, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr.73 = internal global ptr @pci_epf_test_copy._entry.72, section ".printk_index", align 4
@pci_epf_test_copy._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.62, ptr @.str.3, i32 286, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@pci_epf_test_copy._entry_ptr.75 = internal global ptr @pci_epf_test_copy._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"COPY\00", [27 x i8] zeroinitializer }, align 32
@pci_epf_test_bind.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pci_epf_test_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 847, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"epc_features not implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_epf_test_bind\00", [46 x i8] zeroinitializer }, align 32
@pci_epf_test_bind._entry_ptr = internal global ptr @pci_epf_test_bind._entry, section ".printk_index", align 4
@bar_size = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 512, i32 512, i32 1024, i32 16384, i32 131072, i32 1048576], [40 x i8] zeroinitializer }, align 32
@pci_epf_test_alloc_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 788, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocated register space\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_epf_test_alloc_space\00", [39 x i8] zeroinitializer }, align 32
@pci_epf_test_alloc_space._entry_ptr = internal global ptr @pci_epf_test_alloc_space._entry, section ".printk_index", align 4
@pci_epf_test_alloc_space._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 808, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate space for BAR%d\0A\00", [60 x i8] zeroinitializer }, align 32
@pci_epf_test_alloc_space._entry_ptr.83 = internal global ptr @pci_epf_test_alloc_space._entry.81, section ".printk_index", align 4
@pci_epf_test_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 692, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Configuration header write failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_epf_test_core_init\00", [41 x i8] zeroinitializer }, align 32
@pci_epf_test_core_init._entry_ptr = internal global ptr @pci_epf_test_core_init._entry, section ".printk_index", align 4
@pci_epf_test_core_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 705, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MSI configuration failed\0A\00", [38 x i8] zeroinitializer }, align 32
@pci_epf_test_core_init._entry_ptr.88 = internal global ptr @pci_epf_test_core_init._entry.86, section ".printk_index", align 4
@pci_epf_test_core_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.3, i32 716, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"MSI-X configuration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@pci_epf_test_core_init._entry_ptr.91 = internal global ptr @pci_epf_test_core_init._entry.89, section ".printk_index", align 4
@pci_epf_test_set_bar._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 663, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to set BAR%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci_epf_test_set_bar\00", [43 x i8] zeroinitializer }, align 32
@pci_epf_test_set_bar._entry_ptr = internal global ptr @pci_epf_test_set_bar._entry, section ".printk_index", align 4
@pci_epf_test_init_dma_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 172, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get DMA channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pci_epf_test_init_dma_chan\00", [37 x i8] zeroinitializer }, align 32
@pci_epf_test_init_dma_chan._entry_ptr = internal global ptr @pci_epf_test_init_dma_chan._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.96 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pci_epf_test_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 744, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid EPF test notifier event\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pci_epf_test_notifier\00", [42 x i8] zeroinitializer }, align 32
@pci_epf_test_notifier._entry_ptr = internal global ptr @pci_epf_test_notifier._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"kpcitest_workqueue\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 47, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [12 x i8] c"test_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 917, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 929, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 932, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 939, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 918, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 912, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"pci_epf_test_ids\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 887, i32 39 }
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"test_header\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 74, i32 30 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 906, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 542, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 416, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 425, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 442, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 450, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 459, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 470, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 326, i32 6 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 119, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 125, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 136, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 144, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 1169, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 222, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 516, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 328, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 337, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 351, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 359, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 368, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 379, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 244, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 253, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 260, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 269, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 278, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 286, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 291, i32 26 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 847, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [9 x i8] c"bar_size\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 81, i32 15 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 788, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 807, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 692, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 705, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 716, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 663, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 172, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.392, i32 87, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.401 = private constant [49 x i8] c"../drivers/pci/endpoint/functions/pci-epf-test.c\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.401, i32 744, i32 3 }
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_pci_epf_test_exit, ptr @__initcall__kmod_pci_epf_test__238_945_pci_epf_test_init6, ptr @pci_epf_test_alloc_space._entry, ptr @pci_epf_test_alloc_space._entry.81, ptr @pci_epf_test_alloc_space._entry_ptr, ptr @pci_epf_test_alloc_space._entry_ptr.83, ptr @pci_epf_test_bind._entry, ptr @pci_epf_test_bind._entry_ptr, ptr @pci_epf_test_cmd_handler._entry, ptr @pci_epf_test_cmd_handler._entry_ptr, ptr @pci_epf_test_copy._entry, ptr @pci_epf_test_copy._entry.63, ptr @pci_epf_test_copy._entry.66, ptr @pci_epf_test_copy._entry.69, ptr @pci_epf_test_copy._entry.72, ptr @pci_epf_test_copy._entry.74, ptr @pci_epf_test_copy._entry_ptr, ptr @pci_epf_test_copy._entry_ptr.65, ptr @pci_epf_test_copy._entry_ptr.68, ptr @pci_epf_test_copy._entry_ptr.71, ptr @pci_epf_test_copy._entry_ptr.73, ptr @pci_epf_test_copy._entry_ptr.75, ptr @pci_epf_test_core_init._entry, ptr @pci_epf_test_core_init._entry.86, ptr @pci_epf_test_core_init._entry.89, ptr @pci_epf_test_core_init._entry_ptr, ptr @pci_epf_test_core_init._entry_ptr.88, ptr @pci_epf_test_core_init._entry_ptr.91, ptr @pci_epf_test_data_transfer._entry, ptr @pci_epf_test_data_transfer._entry.34, ptr @pci_epf_test_data_transfer._entry.37, ptr @pci_epf_test_data_transfer._entry.40, ptr @pci_epf_test_data_transfer._entry_ptr, ptr @pci_epf_test_data_transfer._entry_ptr.36, ptr @pci_epf_test_data_transfer._entry_ptr.39, ptr @pci_epf_test_data_transfer._entry_ptr.42, ptr @pci_epf_test_exit, ptr @pci_epf_test_init._entry, ptr @pci_epf_test_init._entry.4, ptr @pci_epf_test_init._entry_ptr, ptr @pci_epf_test_init._entry_ptr.6, ptr @pci_epf_test_init_dma_chan._entry, ptr @pci_epf_test_init_dma_chan._entry_ptr, ptr @pci_epf_test_notifier._entry, ptr @pci_epf_test_notifier._entry_ptr, ptr @pci_epf_test_print_rate._entry, ptr @pci_epf_test_print_rate._entry_ptr, ptr @pci_epf_test_raise_irq._entry, ptr @pci_epf_test_raise_irq._entry_ptr, ptr @pci_epf_test_read._entry, ptr @pci_epf_test_read._entry.51, ptr @pci_epf_test_read._entry.53, ptr @pci_epf_test_read._entry.55, ptr @pci_epf_test_read._entry.58, ptr @pci_epf_test_read._entry_ptr, ptr @pci_epf_test_read._entry_ptr.52, ptr @pci_epf_test_read._entry_ptr.54, ptr @pci_epf_test_read._entry_ptr.57, ptr @pci_epf_test_read._entry_ptr.59, ptr @pci_epf_test_set_bar._entry, ptr @pci_epf_test_set_bar._entry_ptr, ptr @pci_epf_test_write._entry, ptr @pci_epf_test_write._entry.17, ptr @pci_epf_test_write._entry.20, ptr @pci_epf_test_write._entry.23, ptr @pci_epf_test_write._entry.26, ptr @pci_epf_test_write._entry_ptr, ptr @pci_epf_test_write._entry_ptr.19, ptr @pci_epf_test_write._entry_ptr.22, ptr @pci_epf_test_write._entry_ptr.25, ptr @pci_epf_test_write._entry_ptr.28, ptr @kpcitest_workqueue, ptr @test_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @ops, ptr @pci_epf_test_ids, ptr @test_header, ptr @pci_epf_test_probe.__key, ptr @.str.8, ptr @pci_epf_test_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.56, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @bar_size, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @init_completion.__key, ptr @.str.96, ptr @.str.97, ptr @.str.98], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kpcitest_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_header to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_cmd_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_write._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_write._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_write._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_data_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_data_transfer._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_data_transfer._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_data_transfer._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_print_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_raise_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_read._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_read._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_read._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_copy._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bar_size to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_alloc_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_alloc_space._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_core_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_core_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_set_bar._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_init_dma_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_epf_test_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0) #7
  store ptr %call, ptr @kpcitest_workqueue, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__pci_epf_register_driver(ptr noundef nonnull @test_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @kpcitest_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #7
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %if.then4 ], [ -12, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @kpcitest_workqueue, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_epf_unregister_driver(ptr noundef nonnull @test_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_epf_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_test_probe(ptr noundef %epf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %epf, i32 noundef 204, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %header = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 2
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @test_header, ptr %header, align 4
  %epf2 = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %epf2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %epf, ptr %epf2, align 4
  %cmd_handler = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %cmd_handler, i32 noundef 0) #7
  %2 = ptrtoint ptr %cmd_handler to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %cmd_handler, align 4
  %lockdep_map = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @pci_epf_test_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry10 = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %3 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pci_epf_test_cmd_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.pci_epf_test, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @pci_epf_test_probe.__key.9) #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_test_cmd_handler(ptr noundef %work) #4 align 64 {
entry:
  %src_phys_addr.i = alloca i32, align 4
  %dst_phys_addr.i = alloca i32, align 4
  %start.i250 = alloca %struct.timespec64, align 8
  %end.i251 = alloca %struct.timespec64, align 8
  %phys_addr.i164 = alloca i32, align 4
  %start.i165 = alloca %struct.timespec64, align 8
  %end.i166 = alloca %struct.timespec64, align 8
  %phys_addr.i = alloca i32, align 4
  %start.i = alloca %struct.timespec64, align 8
  %end.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %epf1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %epc3 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %epc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc3, align 8
  %test_reg_bar4 = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %test_reg_bar4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_reg_bar4, align 4
  %arrayidx = getelementptr [6 x ptr], ptr %add.ptr, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %command6 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %command6 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %command6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.reset_handler_crit_edge, label %if.end

entry.reset_handler_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_handler

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %command6 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %command6, align 1
  %status = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %status, align 1
  %irq_type = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %irq_type to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %irq_type, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp ugt i32 %13, 2
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #10
  br label %reset_handler

if.end9:                                          ; preds = %if.end
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 64, ptr %status, align 1
  %func_no = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %func_no, align 4
  %vfunc_no = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vfunc_no, align 1
  %call = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %18, i32 noundef 1, i16 noundef zeroext 0) #7
  br label %reset_handler

if.end13:                                         ; preds = %if.end9
  %and14 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end26, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr.i) #7
  %19 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %phys_addr.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start.i) #7
  %20 = call ptr @memset(ptr %start.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end.i) #7
  %21 = call ptr @memset(ptr %end.i, i32 255, i32 16)
  %22 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %epf1, align 4
  %epc3.i = getelementptr inbounds %struct.pci_epf, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %epc3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %epc3.i, align 8
  %parent.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 8
  %28 = ptrtoint ptr %test_reg_bar4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %test_reg_bar4, align 4
  %arrayidx.i = getelementptr [6 x ptr], ptr %add.ptr, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i, align 4
  %size.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %size.i, align 1
  %call.i = call ptr @pci_epc_mem_alloc_addr(ptr noundef %25, ptr noundef nonnull %phys_addr.i, i32 noundef %33) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %pci_epf_test_write.exit.thread, label %if.end.i

pci_epf_test_write.exit.thread:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.15) #10
  %status.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %status.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 256, ptr %status.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i) #7
  br label %if.end23

if.end.i:                                         ; preds = %if.then16
  %func_no.i = getelementptr inbounds %struct.pci_epf, ptr %23, i32 0, i32 6
  %35 = ptrtoint ptr %func_no.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %func_no.i, align 4
  %vfunc_no.i = getelementptr inbounds %struct.pci_epf, ptr %23, i32 0, i32 7
  %37 = ptrtoint ptr %vfunc_no.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vfunc_no.i, align 1
  %39 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %phys_addr.i, align 4
  %dst_addr8.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 4
  %41 = ptrtoint ptr %dst_addr8.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %dst_addr8.i, align 1
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %44 = load i32, ptr %size.i, align 1
  %call10.i = call i32 @pci_epc_map_addr(ptr noundef %25, i8 noundef zeroext %36, i8 noundef zeroext %38, i32 noundef %40, i64 noundef %42, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.i.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.18) #10
  %status16.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 2
  %45 = ptrtoint ptr %status16.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 256, ptr %status16.i, align 1
  br label %pci_epf_test_write.exit

if.end8.i.i.i:                                    ; preds = %if.end.i
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %size.i, align 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %47, i32 noundef 3520) #11
  %tobool20.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool20.not.i, label %if.end8.i.i.i.err_map_addr.i_crit_edge, label %if.end22.i

if.end8.i.i.i.err_map_addr.i_crit_edge:           ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_map_addr.i

if.end22.i:                                       ; preds = %if.end8.i.i.i
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %size.i, align 1
  call void @get_random_bytes(ptr noundef nonnull %call9.i.i.i, i32 noundef %49) #7
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 4)
  %51 = load i32, ptr %size.i, align 1
  %call25.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i.i, i32 noundef %51) #12
  %checksum.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 6
  %52 = ptrtoint ptr %checksum.i to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %call25.i, ptr %checksum.i, align 1
  %flags.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %31, i32 0, i32 9
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %flags.i, align 1
  %and.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.i = icmp ne i32 %and.i, 0
  br i1 %tobool26.i, label %if.then29.i, label %if.else.i

if.then29.i:                                      ; preds = %if.end22.i
  %dma_supported.i = getelementptr i8, ptr %work, i32 160
  %55 = ptrtoint ptr %dma_supported.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %dma_supported.i, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool30.not.i = icmp eq i8 %56, 0
  br i1 %tobool30.not.i, label %do.end34.i, label %if.end35.i

do.end34.i:                                       ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.21) #10
  br label %err_map_addr.i

if.end35.i:                                       ; preds = %if.then29.i
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i) #7
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end35.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !209

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %27) #7
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i107.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i107.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %27, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i107.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %60, %if.end.i.i107.i ], [ %58, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #7
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef -1) #7
  br label %do.end43.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end35.i
  call void @debug_dma_map_single(ptr noundef %27, ptr noundef nonnull %call9.i.i.i, i32 noundef %51) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %61 = load ptr, ptr @mem_map, align 4
  %62 = ptrtoint ptr %call9.i.i.i to i32
  %sub.i.i = add i32 %62, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %61, i32 %shr.i.i
  %and.i.i = and i32 %62, 3968
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %27, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %51, i32 noundef 1, i32 noundef 0) #7
  call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call41.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end43.i_crit_edge, label %if.end44.i

dma_map_single_attrs.exit.i.do.end43.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i

do.end43.i:                                       ; preds = %dma_map_single_attrs.exit.i.do.end43.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.24) #10
  br label %err_dma_map.i

if.end44.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @ktime_get_ts64(ptr noundef nonnull %start.i) #7
  %63 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %phys_addr.i, align 4
  %65 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %size.i, align 1
  %call46.i = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %add.ptr, i32 noundef %64, i32 noundef %call41.i.i, i32 noundef %66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end44.i.if.end52.i_crit_edge, label %do.end51.i

if.end44.i.if.end52.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

do.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.27) #10
  br label %if.end52.i

if.end52.i:                                       ; preds = %do.end51.i, %if.end44.i.if.end52.i_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %end.i) #7
  %67 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %size.i, align 1
  call void @dma_unmap_page_attrs(ptr noundef %27, i32 noundef %call41.i.i, i32 noundef %68, i32 noundef 1, i32 noundef 0) #7
  br label %if.end55.i

if.else.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @ktime_get_ts64(ptr noundef nonnull %start.i) #7
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %size.i, align 1
  call void @mmiocpy(ptr noundef nonnull %call.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %70) #7
  call void @ktime_get_ts64(ptr noundef nonnull %end.i) #7
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.else.i, %if.end52.i
  %ret.0.i = phi i32 [ %call46.i, %if.end52.i ], [ 0, %if.else.i ]
  %71 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %size.i, align 1
  %conv.i = zext i32 %72 to i64
  call fastcc void @pci_epf_test_print_rate(ptr noundef nonnull @.str.29, i64 noundef %conv.i, ptr noundef nonnull %start.i, ptr noundef nonnull %end.i, i1 noundef zeroext %tobool26.i) #7
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  br label %err_dma_map.i

err_dma_map.i:                                    ; preds = %if.end55.i, %do.end43.i
  %ret.1.i = phi i32 [ -12, %do.end43.i ], [ %ret.0.i, %if.end55.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %err_map_addr.i

err_map_addr.i:                                   ; preds = %err_dma_map.i, %do.end34.i, %if.end8.i.i.i.err_map_addr.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %err_dma_map.i ], [ -22, %do.end34.i ], [ -12, %if.end8.i.i.i.err_map_addr.i_crit_edge ]
  %73 = ptrtoint ptr %func_no.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %func_no.i, align 4
  %75 = ptrtoint ptr %vfunc_no.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %vfunc_no.i, align 1
  %77 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %phys_addr.i, align 4
  call void @pci_epc_unmap_addr(ptr noundef %25, i8 noundef zeroext %74, i8 noundef zeroext %76, i32 noundef %78) #7
  br label %pci_epf_test_write.exit

pci_epf_test_write.exit:                          ; preds = %err_map_addr.i, %do.end15.i
  %ret.3.i = phi i32 [ 1, %do.end15.i ], [ %ret.2.i, %err_map_addr.i ]
  %79 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %phys_addr.i, align 4
  %81 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %size.i, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %25, i32 noundef %80, ptr noundef nonnull %call.i, i32 noundef %82) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool18.not = icmp eq i32 %ret.3.i, 0
  %spec.select = select i1 %tobool18.not, i32 4, i32 8
  br label %if.end23

if.end23:                                         ; preds = %pci_epf_test_write.exit, %pci_epf_test_write.exit.thread
  %.sink283 = phi i32 [ 8, %pci_epf_test_write.exit.thread ], [ %spec.select, %pci_epf_test_write.exit ]
  %83 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %status, align 1
  %or22 = or i32 %84, %.sink283
  store i32 %or22, ptr %status, align 1
  %85 = ptrtoint ptr %irq_type to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %irq_type, align 1
  %conv = trunc i32 %86 to i8
  %irq_number = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 8
  %87 = ptrtoint ptr %irq_number to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %irq_number, align 1
  %conv25 = trunc i32 %88 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %add.ptr, i8 noundef zeroext %conv, i16 noundef zeroext %conv25)
  br label %reset_handler

if.end26:                                         ; preds = %if.end13
  %and27 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end43, label %if.then29

if.then29:                                        ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys_addr.i164) #7
  %89 = ptrtoint ptr %phys_addr.i164 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %phys_addr.i164, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start.i165) #7
  %90 = call ptr @memset(ptr %start.i165, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end.i166) #7
  %91 = call ptr @memset(ptr %end.i166, i32 255, i32 16)
  %92 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %epf1, align 4
  %epc3.i168 = getelementptr inbounds %struct.pci_epf, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %epc3.i168 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %epc3.i168, align 8
  %parent.i169 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %parent.i169 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent.i169, align 8
  %98 = ptrtoint ptr %test_reg_bar4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %test_reg_bar4, align 4
  %arrayidx.i171 = getelementptr [6 x ptr], ptr %add.ptr, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i171, align 4
  %size.i172 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 5
  %102 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %size.i172, align 1
  %call.i173 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %95, ptr noundef nonnull %phys_addr.i164, i32 noundef %103) #7
  %tobool.not.i174 = icmp eq ptr %call.i173, null
  br i1 %tobool.not.i174, label %pci_epf_test_read.exit.thread, label %if.end.i181

pci_epf_test_read.exit.thread:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.15) #10
  %status.i175 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 2
  %104 = ptrtoint ptr %status.i175 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 4)
  store i32 128, ptr %status.i175, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i166) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i165) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i164) #7
  br label %if.else35

if.end.i181:                                      ; preds = %if.then29
  %func_no.i177 = getelementptr inbounds %struct.pci_epf, ptr %93, i32 0, i32 6
  %105 = ptrtoint ptr %func_no.i177 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %func_no.i177, align 4
  %vfunc_no.i178 = getelementptr inbounds %struct.pci_epf, ptr %93, i32 0, i32 7
  %107 = ptrtoint ptr %vfunc_no.i178 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vfunc_no.i178, align 1
  %109 = ptrtoint ptr %phys_addr.i164 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %phys_addr.i164, align 4
  %src_addr8.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 3
  %111 = ptrtoint ptr %src_addr8.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %src_addr8.i, align 1
  %113 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %113, i32 4)
  %114 = load i32, ptr %size.i172, align 1
  %call10.i179 = call i32 @pci_epc_map_addr(ptr noundef %95, i8 noundef zeroext %106, i8 noundef zeroext %108, i32 noundef %110, i64 noundef %112, i32 noundef %114) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i179)
  %tobool11.not.i180 = icmp eq i32 %call10.i179, 0
  br i1 %tobool11.not.i180, label %if.end8.i.i.i211, label %do.end15.i183

do.end15.i183:                                    ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.18) #10
  %status16.i182 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 2
  %115 = ptrtoint ptr %status16.i182 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 128, ptr %status16.i182, align 1
  br label %pci_epf_test_read.exit

if.end8.i.i.i211:                                 ; preds = %if.end.i181
  %116 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %size.i172, align 1
  %call9.i.i.i210 = call noalias align 128 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #11
  %tobool20.not.i213 = icmp eq ptr %call9.i.i.i210, null
  br i1 %tobool20.not.i213, label %if.end8.i.i.i211.err_map_addr.i246_crit_edge, label %if.end22.i218

if.end8.i.i.i211.err_map_addr.i246_crit_edge:     ; preds = %if.end8.i.i.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_map_addr.i246

if.end22.i218:                                    ; preds = %if.end8.i.i.i211
  %flags.i216 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 9
  %118 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %flags.i216, align 1
  %and.i217 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i217)
  %tobool23.i = icmp ne i32 %and.i217, 0
  br i1 %tobool23.i, label %if.then26.i, label %if.else.i238

if.then26.i:                                      ; preds = %if.end22.i218
  %dma_supported.i219 = getelementptr i8, ptr %work, i32 160
  %120 = ptrtoint ptr %dma_supported.i219 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %dma_supported.i219, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool27.not.i = icmp eq i8 %121, 0
  br i1 %tobool27.not.i, label %do.end31.i, label %if.end32.i

do.end31.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.21) #10
  br label %err_dma_map.i244

if.end32.i:                                       ; preds = %if.then26.i
  %122 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %size.i172, align 1
  %call.i.i220 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i210) #7
  br i1 %call.i.i220, label %land.rhs.i.i222, label %dma_map_single_attrs.exit.i237

land.rhs.i.i222:                                  ; preds = %if.end32.i
  %.b1.i.i221 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i221, label %land.rhs.i.i222.dma_map_single_attrs.exit.thread.i230_crit_edge, label %if.then.i.i226, !prof !209

land.rhs.i.i222.dma_map_single_attrs.exit.thread.i230_crit_edge: ; preds = %land.rhs.i.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread.i230

if.then.i.i226:                                   ; preds = %land.rhs.i.i222
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i223 = call ptr @dev_driver_string(ptr noundef %97) #7
  %init_name.i.i.i224 = getelementptr inbounds %struct.device, ptr %97, i32 0, i32 3
  %124 = ptrtoint ptr %init_name.i.i.i224 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %init_name.i.i.i224, align 8
  %tobool.not.i.i.i225 = icmp eq ptr %125, null
  br i1 %tobool.not.i.i.i225, label %if.end.i.i107.i227, label %if.then.i.i226.dev_name.exit.i.i229_crit_edge

if.then.i.i226.dev_name.exit.i.i229_crit_edge:    ; preds = %if.then.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i229

if.end.i.i107.i227:                               ; preds = %if.then.i.i226
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %97, align 4
  br label %dev_name.exit.i.i229

dev_name.exit.i.i229:                             ; preds = %if.end.i.i107.i227, %if.then.i.i226.dev_name.exit.i.i229_crit_edge
  %retval.0.i.i.i228 = phi ptr [ %127, %if.end.i.i107.i227 ], [ %125, %if.then.i.i226.dev_name.exit.i.i229_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.31, ptr noundef %call16.i.i223, ptr noundef %retval.0.i.i.i228) #7
  br label %dma_map_single_attrs.exit.thread.i230

dma_map_single_attrs.exit.thread.i230:            ; preds = %dev_name.exit.i.i229, %land.rhs.i.i222.dma_map_single_attrs.exit.thread.i230_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %97, i32 noundef -1) #7
  br label %do.end40.i

dma_map_single_attrs.exit.i237:                   ; preds = %if.end32.i
  call void @debug_dma_map_single(ptr noundef %97, ptr noundef nonnull %call9.i.i.i210, i32 noundef %123) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %128 = load ptr, ptr @mem_map, align 4
  %129 = ptrtoint ptr %call9.i.i.i210 to i32
  %sub.i.i231 = add i32 %129, 1073741824
  %shr.i.i232 = lshr i32 %sub.i.i231, 12
  %add.ptr.i.i233 = getelementptr %struct.page, ptr %128, i32 %shr.i.i232
  %and.i.i234 = and i32 %129, 3968
  %call41.i.i235 = call i32 @dma_map_page_attrs(ptr noundef %97, ptr noundef %add.ptr.i.i233, i32 noundef %and.i.i234, i32 noundef %123, i32 noundef 2, i32 noundef 0) #7
  call void @debug_dma_mapping_error(ptr noundef %97, i32 noundef %call41.i.i235) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i235)
  %cmp.i.i236 = icmp eq i32 %call41.i.i235, -1
  br i1 %cmp.i.i236, label %dma_map_single_attrs.exit.i237.do.end40.i_crit_edge, label %if.end41.i

dma_map_single_attrs.exit.i237.do.end40.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

do.end40.i:                                       ; preds = %dma_map_single_attrs.exit.i237.do.end40.i_crit_edge, %dma_map_single_attrs.exit.thread.i230
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.56) #10
  br label %err_dma_map.i244

if.end41.i:                                       ; preds = %dma_map_single_attrs.exit.i237
  call void @ktime_get_ts64(ptr noundef nonnull %start.i165) #7
  %130 = ptrtoint ptr %phys_addr.i164 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %phys_addr.i164, align 4
  %132 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %size.i172, align 1
  %call43.i = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %add.ptr, i32 noundef %call41.i.i235, i32 noundef %131, i32 noundef %133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end41.i.if.end49.i_crit_edge, label %do.end48.i

if.end41.i.if.end49.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.i

do.end48.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.27) #10
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end48.i, %if.end41.i.if.end49.i_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %end.i166) #7
  %134 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %size.i172, align 1
  call void @dma_unmap_page_attrs(ptr noundef %97, i32 noundef %call41.i.i235, i32 noundef %135, i32 noundef 2, i32 noundef 0) #7
  br label %if.end52.i242

if.else.i238:                                     ; preds = %if.end22.i218
  call void @__sanitizer_cov_trace_pc() #9
  call void @ktime_get_ts64(ptr noundef nonnull %start.i165) #7
  %136 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %size.i172, align 1
  call void @mmiocpy(ptr noundef nonnull %call9.i.i.i210, ptr noundef nonnull %call.i173, i32 noundef %137) #7
  call void @ktime_get_ts64(ptr noundef nonnull %end.i166) #7
  br label %if.end52.i242

if.end52.i242:                                    ; preds = %if.else.i238, %if.end49.i
  %ret.0.i239 = phi i32 [ %call43.i, %if.end49.i ], [ 0, %if.else.i238 ]
  %138 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %size.i172, align 1
  %conv.i240 = zext i32 %139 to i64
  call fastcc void @pci_epf_test_print_rate(ptr noundef nonnull @.str.60, i64 noundef %conv.i240, ptr noundef nonnull %start.i165, ptr noundef nonnull %end.i166, i1 noundef zeroext %tobool23.i) #7
  %140 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %size.i172, align 1
  %call56.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i.i210, i32 noundef %141) #12
  %checksum.i241 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %101, i32 0, i32 6
  %142 = ptrtoint ptr %checksum.i241 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %checksum.i241, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call56.i, i32 %143)
  %cmp.not.i = icmp eq i32 %call56.i, %143
  %spec.select.i = select i1 %cmp.not.i, i32 %ret.0.i239, i32 -5
  br label %err_dma_map.i244

err_dma_map.i244:                                 ; preds = %if.end52.i242, %do.end40.i, %do.end31.i
  %ret.1.i243 = phi i32 [ -12, %do.end40.i ], [ -22, %do.end31.i ], [ %spec.select.i, %if.end52.i242 ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i210) #7
  br label %err_map_addr.i246

err_map_addr.i246:                                ; preds = %err_dma_map.i244, %if.end8.i.i.i211.err_map_addr.i246_crit_edge
  %ret.2.i245 = phi i32 [ %ret.1.i243, %err_dma_map.i244 ], [ -12, %if.end8.i.i.i211.err_map_addr.i246_crit_edge ]
  %144 = ptrtoint ptr %func_no.i177 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %func_no.i177, align 4
  %146 = ptrtoint ptr %vfunc_no.i178 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %vfunc_no.i178, align 1
  %148 = ptrtoint ptr %phys_addr.i164 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %phys_addr.i164, align 4
  call void @pci_epc_unmap_addr(ptr noundef %95, i8 noundef zeroext %145, i8 noundef zeroext %147, i32 noundef %149) #7
  br label %pci_epf_test_read.exit

pci_epf_test_read.exit:                           ; preds = %err_map_addr.i246, %do.end15.i183
  %ret.3.i247 = phi i32 [ 1, %do.end15.i183 ], [ %ret.2.i245, %err_map_addr.i246 ]
  %150 = ptrtoint ptr %phys_addr.i164 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %phys_addr.i164, align 4
  %152 = ptrtoint ptr %size.i172 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %153 = load i32, ptr %size.i172, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %95, i32 noundef %151, ptr noundef nonnull %call.i173, i32 noundef %153) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i166) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i165) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys_addr.i164) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i247)
  %tobool31.not = icmp eq i32 %ret.3.i247, 0
  br i1 %tobool31.not, label %pci_epf_test_read.exit.if.end38_crit_edge, label %pci_epf_test_read.exit.if.else35_crit_edge

pci_epf_test_read.exit.if.else35_crit_edge:       ; preds = %pci_epf_test_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

pci_epf_test_read.exit.if.end38_crit_edge:        ; preds = %pci_epf_test_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.else35:                                        ; preds = %pci_epf_test_read.exit.if.else35_crit_edge, %pci_epf_test_read.exit.thread
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %pci_epf_test_read.exit.if.end38_crit_edge
  %.sink284 = phi i32 [ 2, %if.else35 ], [ 1, %pci_epf_test_read.exit.if.end38_crit_edge ]
  %154 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %status, align 1
  %or37 = or i32 %155, %.sink284
  store i32 %or37, ptr %status, align 1
  %156 = ptrtoint ptr %irq_type to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %irq_type, align 1
  %conv40 = trunc i32 %157 to i8
  %irq_number41 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 8
  %158 = ptrtoint ptr %irq_number41 to i32
  call void @__asan_loadN_noabort(i32 %158, i32 4)
  %159 = load i32, ptr %irq_number41, align 1
  %conv42 = trunc i32 %159 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %add.ptr, i8 noundef zeroext %conv40, i16 noundef zeroext %conv42)
  br label %reset_handler

if.end43:                                         ; preds = %if.end26
  %and44 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end60, label %if.then46

if.then46:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %src_phys_addr.i) #7
  %160 = ptrtoint ptr %src_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %src_phys_addr.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dst_phys_addr.i) #7
  %161 = ptrtoint ptr %dst_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %dst_phys_addr.i, align 4, !annotation !207
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %start.i250) #7
  %162 = call ptr @memset(ptr %start.i250, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %end.i251) #7
  %163 = call ptr @memset(ptr %end.i251, i32 255, i32 16)
  %164 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %epf1, align 4
  %epc3.i253 = getelementptr inbounds %struct.pci_epf, ptr %165, i32 0, i32 8
  %166 = ptrtoint ptr %epc3.i253 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %epc3.i253, align 8
  %168 = ptrtoint ptr %test_reg_bar4 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %test_reg_bar4, align 4
  %arrayidx.i254 = getelementptr [6 x ptr], ptr %add.ptr, i32 0, i32 %169
  %170 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx.i254, align 4
  %size.i255 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 5
  %172 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %172, i32 4)
  %173 = load i32, ptr %size.i255, align 1
  %call.i256 = call ptr @pci_epc_mem_alloc_addr(ptr noundef %167, ptr noundef nonnull %src_phys_addr.i, i32 noundef %173) #7
  %tobool.not.i257 = icmp eq ptr %call.i256, null
  br i1 %tobool.not.i257, label %pci_epf_test_copy.exit.thread, label %if.end.i262

pci_epf_test_copy.exit.thread:                    ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.61) #10
  %status.i258 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 2
  %174 = ptrtoint ptr %status.i258 to i32
  call void @__asan_storeN_noabort(i32 %174, i32 4)
  store i32 128, ptr %status.i258, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i251) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i250) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_phys_addr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_phys_addr.i) #7
  br label %if.else52

if.end.i262:                                      ; preds = %if.then46
  %func_no.i260 = getelementptr inbounds %struct.pci_epf, ptr %165, i32 0, i32 6
  %175 = ptrtoint ptr %func_no.i260 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %func_no.i260, align 4
  %vfunc_no.i261 = getelementptr inbounds %struct.pci_epf, ptr %165, i32 0, i32 7
  %177 = ptrtoint ptr %vfunc_no.i261 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %vfunc_no.i261, align 1
  %179 = ptrtoint ptr %src_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %src_phys_addr.i, align 4
  %src_addr6.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 3
  %181 = ptrtoint ptr %src_addr6.i to i32
  call void @__asan_loadN_noabort(i32 %181, i32 8)
  %182 = load i64, ptr %src_addr6.i, align 1
  %183 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %183, i32 4)
  %184 = load i32, ptr %size.i255, align 1
  %call8.i = call i32 @pci_epc_map_addr(ptr noundef %167, i8 noundef zeroext %176, i8 noundef zeroext %178, i32 noundef %180, i64 noundef %182, i32 noundef %184) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end15.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.64) #10
  %status14.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 2
  %185 = ptrtoint ptr %status14.i to i32
  call void @__asan_storeN_noabort(i32 %185, i32 4)
  store i32 128, ptr %status14.i, align 1
  br label %pci_epf_test_copy.exit

if.end15.i:                                       ; preds = %if.end.i262
  %186 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %size.i255, align 1
  %call17.i = call ptr @pci_epc_mem_alloc_addr(ptr noundef %167, ptr noundef nonnull %dst_phys_addr.i, i32 noundef %187) #7
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %do.end22.i, label %if.end24.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.67) #10
  %status23.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 2
  %188 = ptrtoint ptr %status23.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 4)
  store i32 256, ptr %status23.i, align 1
  br label %err_src_map_addr.i

if.end24.i:                                       ; preds = %if.end15.i
  %189 = ptrtoint ptr %func_no.i260 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %func_no.i260, align 4
  %191 = ptrtoint ptr %vfunc_no.i261 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %vfunc_no.i261, align 1
  %193 = ptrtoint ptr %dst_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %dst_phys_addr.i, align 4
  %dst_addr27.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 4
  %195 = ptrtoint ptr %dst_addr27.i to i32
  call void @__asan_loadN_noabort(i32 %195, i32 8)
  %196 = load i64, ptr %dst_addr27.i, align 1
  %197 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 4)
  %198 = load i32, ptr %size.i255, align 1
  %call29.i = call i32 @pci_epc_map_addr(ptr noundef %167, i8 noundef zeroext %190, i8 noundef zeroext %192, i32 noundef %194, i64 noundef %196, i32 noundef %198) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i263 = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i263, label %if.end36.i, label %do.end34.i264

do.end34.i264:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.70) #10
  %status35.i = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 2
  %199 = ptrtoint ptr %status35.i to i32
  call void @__asan_storeN_noabort(i32 %199, i32 4)
  store i32 256, ptr %status35.i, align 1
  br label %err_dst_addr.i

if.end36.i:                                       ; preds = %if.end24.i
  call void @ktime_get_ts64(ptr noundef nonnull %start.i250) #7
  %flags.i265 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %171, i32 0, i32 9
  %200 = ptrtoint ptr %flags.i265 to i32
  call void @__asan_loadN_noabort(i32 %200, i32 4)
  %201 = load i32, ptr %flags.i265, align 1
  %and.i266 = and i32 %201, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i266)
  %tobool37.i = icmp ne i32 %and.i266, 0
  br i1 %tobool37.i, label %if.then40.i, label %if.else.i268

if.then40.i:                                      ; preds = %if.end36.i
  %dma_supported.i267 = getelementptr i8, ptr %work, i32 160
  %202 = ptrtoint ptr %dma_supported.i267 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %dma_supported.i267, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool41.not.i = icmp eq i8 %203, 0
  br i1 %tobool41.not.i, label %do.end45.i, label %if.end46.i

do.end45.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.21) #10
  br label %err_map_addr.i272

if.end46.i:                                       ; preds = %if.then40.i
  %204 = ptrtoint ptr %dst_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %dst_phys_addr.i, align 4
  %206 = ptrtoint ptr %src_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %src_phys_addr.i, align 4
  %208 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %208, i32 4)
  %209 = load i32, ptr %size.i255, align 1
  %call48.i = call fastcc i32 @pci_epf_test_data_transfer(ptr noundef %add.ptr, i32 noundef %205, i32 noundef %207, i32 noundef %209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.end46.i.if.end56.i_crit_edge, label %do.end53.i

if.end46.i.if.end56.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

do.end53.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.27) #10
  br label %if.end56.i

if.else.i268:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %210, i32 4)
  %211 = load i32, ptr %size.i255, align 1
  %212 = call ptr @memcpy(ptr %call17.i, ptr %call.i256, i32 %211)
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i268, %do.end53.i, %if.end46.i.if.end56.i_crit_edge
  %ret.0.i269 = phi i32 [ %call48.i, %do.end53.i ], [ 0, %if.end46.i.if.end56.i_crit_edge ], [ 0, %if.else.i268 ]
  call void @ktime_get_ts64(ptr noundef nonnull %end.i251) #7
  %213 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %213, i32 4)
  %214 = load i32, ptr %size.i255, align 1
  %conv.i270 = zext i32 %214 to i64
  call fastcc void @pci_epf_test_print_rate(ptr noundef nonnull @.str.76, i64 noundef %conv.i270, ptr noundef nonnull %start.i250, ptr noundef nonnull %end.i251, i1 noundef zeroext %tobool37.i) #7
  br label %err_map_addr.i272

err_map_addr.i272:                                ; preds = %if.end56.i, %do.end45.i
  %ret.1.i271 = phi i32 [ %ret.0.i269, %if.end56.i ], [ -22, %do.end45.i ]
  %215 = ptrtoint ptr %func_no.i260 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %func_no.i260, align 4
  %217 = ptrtoint ptr %vfunc_no.i261 to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %vfunc_no.i261, align 1
  %219 = ptrtoint ptr %dst_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dst_phys_addr.i, align 4
  call void @pci_epc_unmap_addr(ptr noundef %167, i8 noundef zeroext %216, i8 noundef zeroext %218, i32 noundef %220) #7
  br label %err_dst_addr.i

err_dst_addr.i:                                   ; preds = %err_map_addr.i272, %do.end34.i264
  %ret.2.i273 = phi i32 [ %call29.i, %do.end34.i264 ], [ %ret.1.i271, %err_map_addr.i272 ]
  %221 = ptrtoint ptr %dst_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dst_phys_addr.i, align 4
  %223 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %223, i32 4)
  %224 = load i32, ptr %size.i255, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %167, i32 noundef %222, ptr noundef nonnull %call17.i, i32 noundef %224) #7
  br label %err_src_map_addr.i

err_src_map_addr.i:                               ; preds = %err_dst_addr.i, %do.end22.i
  %ret.3.i274 = phi i32 [ %ret.2.i273, %err_dst_addr.i ], [ -12, %do.end22.i ]
  %225 = ptrtoint ptr %func_no.i260 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %func_no.i260, align 4
  %227 = ptrtoint ptr %vfunc_no.i261 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %vfunc_no.i261, align 1
  %229 = ptrtoint ptr %src_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %src_phys_addr.i, align 4
  call void @pci_epc_unmap_addr(ptr noundef %167, i8 noundef zeroext %226, i8 noundef zeroext %228, i32 noundef %230) #7
  br label %pci_epf_test_copy.exit

pci_epf_test_copy.exit:                           ; preds = %err_src_map_addr.i, %do.end13.i
  %ret.4.i275 = phi i32 [ 1, %do.end13.i ], [ %ret.3.i274, %err_src_map_addr.i ]
  %231 = ptrtoint ptr %src_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %src_phys_addr.i, align 4
  %233 = ptrtoint ptr %size.i255 to i32
  call void @__asan_loadN_noabort(i32 %233, i32 4)
  %234 = load i32, ptr %size.i255, align 1
  call void @pci_epc_mem_free_addr(ptr noundef %167, i32 noundef %232, ptr noundef nonnull %call.i256, i32 noundef %234) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %end.i251) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %start.i250) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dst_phys_addr.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %src_phys_addr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4.i275)
  %tobool48.not = icmp eq i32 %ret.4.i275, 0
  br i1 %tobool48.not, label %pci_epf_test_copy.exit.if.end55_crit_edge, label %pci_epf_test_copy.exit.if.else52_crit_edge

pci_epf_test_copy.exit.if.else52_crit_edge:       ; preds = %pci_epf_test_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else52

pci_epf_test_copy.exit.if.end55_crit_edge:        ; preds = %pci_epf_test_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else52:                                        ; preds = %pci_epf_test_copy.exit.if.else52_crit_edge, %pci_epf_test_copy.exit.thread
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %pci_epf_test_copy.exit.if.end55_crit_edge
  %.sink285 = phi i32 [ 32, %if.else52 ], [ 16, %pci_epf_test_copy.exit.if.end55_crit_edge ]
  %235 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %235, i32 4)
  %236 = load i32, ptr %status, align 1
  %or54 = or i32 %236, %.sink285
  store i32 %or54, ptr %status, align 1
  %237 = ptrtoint ptr %irq_type to i32
  call void @__asan_loadN_noabort(i32 %237, i32 4)
  %238 = load i32, ptr %irq_type, align 1
  %conv57 = trunc i32 %238 to i8
  %irq_number58 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 8
  %239 = ptrtoint ptr %irq_number58 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %240 = load i32, ptr %irq_number58, align 1
  %conv59 = trunc i32 %240 to i16
  call fastcc void @pci_epf_test_raise_irq(ptr noundef %add.ptr, i8 noundef zeroext %conv57, i16 noundef zeroext %conv59)
  br label %reset_handler

if.end60:                                         ; preds = %if.end43
  %and61 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end80, label %if.then63

if.then63:                                        ; preds = %if.end60
  %func_no64 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %241 = ptrtoint ptr %func_no64 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %func_no64, align 4
  %vfunc_no65 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %243 = ptrtoint ptr %vfunc_no65 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %vfunc_no65, align 1
  %call66 = tail call i32 @pci_epc_get_msi(ptr noundef %3, i8 noundef zeroext %242, i8 noundef zeroext %244) #7
  %irq_number67 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 8
  %245 = ptrtoint ptr %irq_number67 to i32
  call void @__asan_loadN_noabort(i32 %245, i32 4)
  %246 = load i32, ptr %irq_number67, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %246, i32 %call66)
  %cmp68 = icmp ugt i32 %246, %call66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call66)
  %cmp70 = icmp slt i32 %call66, 1
  %or.cond = or i1 %cmp70, %cmp68
  br i1 %or.cond, label %if.then63.reset_handler_crit_edge, label %if.end73

if.then63.reset_handler_crit_edge:                ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_handler

if.end73:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %247 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %247, i32 4)
  store i32 64, ptr %status, align 1
  %248 = ptrtoint ptr %func_no64 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %func_no64, align 4
  %250 = ptrtoint ptr %vfunc_no65 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %vfunc_no65, align 1
  %conv78 = trunc i32 %246 to i16
  %call79 = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %249, i8 noundef zeroext %251, i32 noundef 2, i16 noundef zeroext %conv78) #7
  br label %reset_handler

if.end80:                                         ; preds = %if.end60
  %and81 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.reset_handler_crit_edge, label %if.then83

if.end80.reset_handler_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_handler

if.then83:                                        ; preds = %if.end80
  %func_no84 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %252 = ptrtoint ptr %func_no84 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %func_no84, align 4
  %vfunc_no85 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %254 = ptrtoint ptr %vfunc_no85 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %vfunc_no85, align 1
  %call86 = tail call i32 @pci_epc_get_msix(ptr noundef %3, i8 noundef zeroext %253, i8 noundef zeroext %255) #7
  %irq_number87 = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 8
  %256 = ptrtoint ptr %irq_number87 to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %257 = load i32, ptr %irq_number87, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %call86)
  %cmp88 = icmp ugt i32 %257, %call86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call86)
  %cmp91 = icmp slt i32 %call86, 1
  %or.cond163 = or i1 %cmp91, %cmp88
  br i1 %or.cond163, label %if.then83.reset_handler_crit_edge, label %if.end94

if.then83.reset_handler_crit_edge:                ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset_handler

if.end94:                                         ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #9
  %258 = ptrtoint ptr %status to i32
  call void @__asan_storeN_noabort(i32 %258, i32 4)
  store i32 64, ptr %status, align 1
  %259 = ptrtoint ptr %func_no84 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %func_no84, align 4
  %261 = ptrtoint ptr %vfunc_no85 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %vfunc_no85, align 1
  %conv99 = trunc i32 %257 to i16
  %call100 = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %260, i8 noundef zeroext %262, i32 noundef 3, i16 noundef zeroext %conv99) #7
  br label %reset_handler

reset_handler:                                    ; preds = %if.end94, %if.then83.reset_handler_crit_edge, %if.end80.reset_handler_crit_edge, %if.end73, %if.then63.reset_handler_crit_edge, %if.end55, %if.end38, %if.end23, %if.then11, %do.end, %entry.reset_handler_crit_edge
  %263 = load ptr, ptr @kpcitest_workqueue, align 4
  %call.i276 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %263, ptr noundef %work, i32 noundef 1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_raise_irq(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_epf_test_raise_irq(ptr nocapture noundef readonly %epf_test, i8 noundef zeroext %irq_type, i16 noundef zeroext %irq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %epf1 = getelementptr inbounds %struct.pci_epf_test, ptr %epf_test, i32 0, i32 1
  %0 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %epf1, align 4
  %epc3 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %epc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc3, align 8
  %test_reg_bar4 = getelementptr inbounds %struct.pci_epf_test, ptr %epf_test, i32 0, i32 2
  %4 = ptrtoint ptr %test_reg_bar4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %test_reg_bar4, align 4
  %arrayidx = getelementptr [6 x ptr], ptr %epf_test, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %status = getelementptr inbounds %struct.pci_epf_test_reg, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %status to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %status, align 1
  %or = or i32 %9, 64
  store i32 %or, ptr %status, align 1
  %10 = zext i8 %irq_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %irq_type, label %do.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %func_no = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %func_no, align 4
  %vfunc_no = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vfunc_no, align 1
  %call = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %12, i8 noundef zeroext %14, i32 noundef 1, i16 noundef zeroext 0) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %func_no7 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %func_no7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %func_no7, align 4
  %vfunc_no8 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %vfunc_no8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %vfunc_no8, align 1
  %call9 = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %18, i32 noundef 2, i16 noundef zeroext %irq) #7
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %func_no11 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %func_no11 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %func_no11, align 4
  %vfunc_no12 = getelementptr inbounds %struct.pci_epf, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %vfunc_no12 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vfunc_no12, align 1
  %call13 = tail call i32 @pci_epc_raise_irq(ptr noundef %3, i8 noundef zeroext %20, i8 noundef zeroext %22, i32 noundef 3, i16 noundef zeroext %irq) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.48) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb6, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_msi(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_msix(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_mem_alloc_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_map_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_epf_test_data_transfer(ptr noundef %epf_test, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_chan = getelementptr inbounds %struct.pci_epf_test, ptr %epf_test, i32 0, i32 5
  %0 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_chan, align 4
  %epf1 = getelementptr inbounds %struct.pci_epf_test, ptr %epf_test, i32 0, i32 1
  %2 = ptrtoint ptr %epf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epf1, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %lor.lhs.false.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32) #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end7_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end7_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end7_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.do.end7_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %7(ptr noundef nonnull %1, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef 3) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_memcpy.exit.do.end7_crit_edge, label %if.end8

dmaengine_prep_dma_memcpy.exit.do.end7_crit_edge: ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end7:                                          ; preds = %dmaengine_prep_dma_memcpy.exit.do.end7_crit_edge, %lor.lhs.false2.i.do.end7_crit_edge, %lor.lhs.false.i.do.end7_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end8:                                          ; preds = %dmaengine_prep_dma_memcpy.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pci_epf_test_dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %epf_test, ptr %callback_param, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_submit, align 4
  %call9 = tail call i32 %11(ptr noundef nonnull %call.i) #7
  %transfer_complete = getelementptr inbounds %struct.pci_epf_test, ptr %epf_test, i32 0, i32 6
  %12 = ptrtoint ptr %transfer_complete to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %transfer_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %tobool11.not = icmp sgt i32 %call9, -1
  br i1 %tobool11.not, label %if.end16, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %call9) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 50
  %15 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %16(ptr noundef nonnull %1) #7
  %call18 = tail call i32 @wait_for_completion_interruptible(ptr noundef %transfer_complete) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then19, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end16
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.then19.dmaengine_terminate_sync.exit_crit_edge, label %dmaengine_terminate_async.exit.i

if.then19.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_async.exit.i:                 ; preds = %if.then19
  %call.i.i = tail call i32 %20(ptr noundef nonnull %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i48 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i48, label %if.end.i49, label %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge

dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.end.i49:                                       ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.43, i32 noundef 1169) #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  %23 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %24, null
  br i1 %tobool.not.i1.i, label %if.end.i49.dmaengine_terminate_sync.exit_crit_edge, label %if.then.i2.i

if.end.i49.dmaengine_terminate_sync.exit_crit_edge: ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_terminate_sync.exit

if.then.i2.i:                                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef nonnull %1) #7
  br label %dmaengine_terminate_sync.exit

dmaengine_terminate_sync.exit:                    ; preds = %if.then.i2.i, %if.end.i49.dmaengine_terminate_sync.exit_crit_edge, %dmaengine_terminate_async.exit.i.dmaengine_terminate_sync.exit_crit_edge, %if.then19.dmaengine_terminate_sync.exit_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41) #10
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_terminate_sync.exit, %if.end16.cleanup_crit_edge, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end15 ], [ -110, %dmaengine_terminate_sync.exit ], [ -5, %do.end7 ], [ 0, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_epf_test_print_rate(ptr noundef %ops, i64 noundef %size, ptr nocapture noundef readonly %start, ptr nocapture noundef readonly %end, i1 noundef zeroext %dma) unnamed_addr #4 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %end to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %end, align 8
  %.elt282 = getelementptr inbounds [2 x i64], ptr %end, i32 0, i32 1
  %1 = ptrtoint ptr %.elt282 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack283 = load i64, ptr %.elt282, align 8
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack284 = load i64, ptr %start, align 8
  %.elt285 = getelementptr inbounds [2 x i64], ptr %start, i32 0, i32 1
  %3 = ptrtoint ptr %.elt285 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack286 = load i64, ptr %.elt285, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack283, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack286, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.unpack284
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #7
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %ts.sroa.0.0.copyload298 = load i64, ptr %tmp, align 8
  %ts.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %6 = ptrtoint ptr %ts.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %ts.sroa.6.0.copyload299 = load i32, ptr %ts.sroa.6.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload298)
  %cmp.i = icmp sgt i64 %ts.sroa.0.0.copyload298, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit.thread_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload298)
  %cmp2.i = icmp slt i64 %ts.sroa.0.0.copyload298, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit.thread_crit_edge, label %timespec64_to_ns.exit

if.end.i.timespec64_to_ns.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit.thread

timespec64_to_ns.exit.thread:                     ; preds = %if.end.i.timespec64_to_ns.exit.thread_crit_edge, %entry.timespec64_to_ns.exit.thread_crit_edge
  %retval.0.i.ph = phi i64 [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit.thread_crit_edge ], [ 9223372036854775807, %entry.timespec64_to_ns.exit.thread_crit_edge ]
  %mul311 = mul i64 %size, 1000000000
  br label %while.body.preheader

timespec64_to_ns.exit:                            ; preds = %if.end.i
  %mul.i = mul nsw i64 %ts.sroa.0.0.copyload298, 1000000000
  %conv.i289 = sext i32 %ts.sroa.6.0.copyload299 to i64
  %add.i = add i64 %mul.i, %conv.i289
  %mul = mul i64 %size, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp306 = icmp ugt i64 %add.i, 4294967295
  br i1 %cmp306, label %timespec64_to_ns.exit.while.body.preheader_crit_edge, label %timespec64_to_ns.exit.while.end_crit_edge

timespec64_to_ns.exit.while.end_crit_edge:        ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

timespec64_to_ns.exit.while.body.preheader_crit_edge: ; preds = %timespec64_to_ns.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.preheader

while.body.preheader:                             ; preds = %timespec64_to_ns.exit.while.body.preheader_crit_edge, %timespec64_to_ns.exit.thread
  %ns.0308.ph = phi i64 [ %add.i, %timespec64_to_ns.exit.while.body.preheader_crit_edge ], [ %retval.0.i.ph, %timespec64_to_ns.exit.thread ]
  %rate.0307.ph = phi i64 [ %mul, %timespec64_to_ns.exit.while.body.preheader_crit_edge ], [ %mul311, %timespec64_to_ns.exit.thread ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %ns.0308 = phi i64 [ %shr1, %while.body.while.body_crit_edge ], [ %ns.0308.ph, %while.body.preheader ]
  %rate.0307 = phi i64 [ %shr, %while.body.while.body_crit_edge ], [ %rate.0307.ph, %while.body.preheader ]
  %shr = lshr i64 %rate.0307, 1
  %shr1 = lshr i64 %ns.0308, 1
  %cmp = icmp ugt i64 %ns.0308, 8589934591
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %timespec64_to_ns.exit.while.end_crit_edge
  %rate.0.lcssa = phi i64 [ %mul, %timespec64_to_ns.exit.while.end_crit_edge ], [ %shr, %while.body.while.end_crit_edge ]
  %ns.0.lcssa = phi i64 [ %add.i, %timespec64_to_ns.exit.while.end_crit_edge ], [ %shr1, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ns.0.lcssa)
  %tobool.not = icmp eq i64 %ns.0.lcssa, 0
  br i1 %tobool.not, label %while.end.cleanup_crit_edge, label %if.end

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %while.end
  %conv = trunc i64 %ns.0.lcssa to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate.0.lcssa)
  %cmp175 = icmp ult i64 %rate.0.lcssa, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !209

if.then179:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv180 = trunc i64 %rate.0.lcssa to i32
  %div183 = udiv i32 %conv180, %conv
  %conv184 = zext i32 %div183 to i64
  br label %if.end189

if.else185:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv, i64 %rate.0.lcssa) #13, !srcloc !210
  %asmresult1.i = extractvalue { i64, i64 } %7, 1
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %rate.1 = phi i64 [ %conv184, %if.then179 ], [ %asmresult1.i, %if.else185 ]
  %cond194 = select i1 %dma, ptr @.str.46, ptr @.str.47
  %div195287 = lshr i64 %rate.1, 10
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %ops, i64 noundef %size, ptr noundef nonnull %cond194, i64 noundef %ts.sroa.0.0.copyload298, i32 noundef %ts.sroa.6.0.copyload299, i64 noundef %div195287) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %while.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_unmap_addr(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_mem_free_addr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_test_dma_callback(ptr noundef %param) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %transfer_complete = getelementptr inbounds %struct.pci_epf_test, ptr %param, i32 0, i32 6
  tail call void @complete(ptr noundef %transfer_complete) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_test_bind(ptr noundef %epf) #4 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %epc1 = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 8
  %2 = ptrtoint ptr %epc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b116 = load i1, ptr @pci_epf_test_bind.__already_done, align 1
  br i1 %.b116, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !209

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pci_epf_test_bind.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 842, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end40:                                         ; preds = %entry
  %func_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 6
  %4 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %func_no, align 4
  %vfunc_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 7
  %6 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vfunc_no, align 1
  %call41 = tail call ptr @pci_epc_get_features(ptr noundef nonnull %3, i8 noundef zeroext %5, i8 noundef zeroext %7) #7
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.77) #10
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %8 = ptrtoint ptr %call41 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %call41, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool48.not = icmp sgt i8 %bf.load, -1
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool53.not = icmp eq i8 %9, 0
  %call55 = tail call i32 @pci_epc_get_first_free_bar(ptr noundef nonnull %call41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp = icmp slt i32 %call55, 0
  br i1 %cmp, label %if.end47.cleanup_crit_edge, label %if.end57

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  %bar_fixed_64bit1.i = getelementptr inbounds %struct.pci_epc_features, ptr %call41, i32 0, i32 2
  %10 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %12 = and i8 %11, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end57.if.end.i_crit_edge, label %if.then.i

if.end57.if.end.i_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %flags.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %14, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end57.if.end.i_crit_edge
  %arrayidx4.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 0
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool5.not.i = icmp eq i64 %16, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then6.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.i = trunc i64 %16 to i32
  store i32 %conv9.i, ptr @bar_size, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.1.i = icmp eq i8 %19, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.end.1.i_crit_edge, label %if.then.1.i

for.inc.i.if.end.1.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.1.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 1, i32 4
  %20 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.1.i, align 4
  %or.1.i = or i32 %21, 4
  store i32 %or.1.i, ptr %flags.1.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %for.inc.i.if.end.1.i_crit_edge
  %arrayidx4.1.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx4.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %tobool5.not.1.i = icmp eq i64 %23, 0
  br i1 %tobool5.not.1.i, label %if.end.1.i.for.inc.1.i_crit_edge, label %if.then6.1.i

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.then6.1.i:                                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.1.i = trunc i64 %23 to i32
  store i32 %conv9.1.i, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 1), align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then6.1.i, %if.end.1.i.for.inc.1.i_crit_edge
  %24 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %26 = and i8 %25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.2.i = icmp eq i8 %26, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.end.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.if.end.2.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.2.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 2, i32 4
  %27 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.2.i, align 4
  %or.2.i = or i32 %28, 4
  store i32 %or.2.i, ptr %flags.2.i, align 4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %for.inc.1.i.if.end.2.i_crit_edge
  %arrayidx4.2.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx4.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %30)
  %tobool5.not.2.i = icmp eq i64 %30, 0
  br i1 %tobool5.not.2.i, label %if.end.2.i.for.inc.2.i_crit_edge, label %if.then6.2.i

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.then6.2.i:                                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.2.i = trunc i64 %30 to i32
  store i32 %conv9.2.i, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 2), align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then6.2.i, %if.end.2.i.for.inc.2.i_crit_edge
  %31 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %33 = and i8 %32, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.3.i = icmp eq i8 %33, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.end.3.i_crit_edge, label %if.then.3.i

for.inc.2.i.if.end.3.i_crit_edge:                 ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.3.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 3, i32 4
  %34 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.3.i, align 4
  %or.3.i = or i32 %35, 4
  store i32 %or.3.i, ptr %flags.3.i, align 4
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %if.then.3.i, %for.inc.2.i.if.end.3.i_crit_edge
  %arrayidx4.3.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx4.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %tobool5.not.3.i = icmp eq i64 %37, 0
  br i1 %tobool5.not.3.i, label %if.end.3.i.for.inc.3.i_crit_edge, label %if.then6.3.i

if.end.3.i.for.inc.3.i_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.then6.3.i:                                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.3.i = trunc i64 %37 to i32
  store i32 %conv9.3.i, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 3), align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then6.3.i, %if.end.3.i.for.inc.3.i_crit_edge
  %38 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %40 = and i8 %39, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.4.i = icmp eq i8 %40, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.if.end.4.i_crit_edge, label %if.then.4.i

for.inc.3.i.if.end.4.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.4.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 4, i32 4
  %41 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.4.i, align 4
  %or.4.i = or i32 %42, 4
  store i32 %or.4.i, ptr %flags.4.i, align 4
  br label %if.end.4.i

if.end.4.i:                                       ; preds = %if.then.4.i, %for.inc.3.i.if.end.4.i_crit_edge
  %arrayidx4.4.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %arrayidx4.4.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx4.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %44)
  %tobool5.not.4.i = icmp eq i64 %44, 0
  br i1 %tobool5.not.4.i, label %if.end.4.i.for.inc.4.i_crit_edge, label %if.then6.4.i

if.end.4.i.for.inc.4.i_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.then6.4.i:                                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.4.i = trunc i64 %44 to i32
  store i32 %conv9.4.i, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 4), align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then6.4.i, %if.end.4.i.for.inc.4.i_crit_edge
  %45 = ptrtoint ptr %bar_fixed_64bit1.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %bar_fixed_64bit1.i, align 2
  %47 = and i8 %46, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.5.i = icmp eq i8 %47, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end.5.i_crit_edge, label %if.then.5.i

for.inc.4.i.if.end.5.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags.5.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 5, i32 4
  %48 = ptrtoint ptr %flags.5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.5.i, align 4
  %or.5.i = or i32 %49, 4
  store i32 %or.5.i, ptr %flags.5.i, align 4
  br label %if.end.5.i

if.end.5.i:                                       ; preds = %if.then.5.i, %for.inc.4.i.if.end.5.i_crit_edge
  %arrayidx4.5.i = getelementptr %struct.pci_epc_features, ptr %call41, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %arrayidx4.5.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx4.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool5.not.5.i = icmp eq i64 %51, 0
  br i1 %tobool5.not.5.i, label %if.end.5.i.pci_epf_configure_bar.exit_crit_edge, label %if.then6.5.i

if.end.5.i.pci_epf_configure_bar.exit_crit_edge:  ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_epf_configure_bar.exit

if.then6.5.i:                                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv9.5.i = trunc i64 %51 to i32
  store i32 %conv9.5.i, ptr getelementptr inbounds ([6 x i32], ptr @bar_size, i32 0, i32 5), align 4
  br label %pci_epf_configure_bar.exit

pci_epf_configure_bar.exit:                       ; preds = %if.then6.5.i, %if.end.5.i.pci_epf_configure_bar.exit_crit_edge
  %test_reg_bar58 = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %test_reg_bar58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call55, ptr %test_reg_bar58, align 4
  %epc_features59 = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %epc_features59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call41, ptr %epc_features59, align 4
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %test_reg_bar2.i = getelementptr inbounds %struct.pci_epf_test, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %test_reg_bar2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %test_reg_bar2.i, align 4
  %epc_features3.i = getelementptr inbounds %struct.pci_epf_test, ptr %55, i32 0, i32 8
  %58 = ptrtoint ptr %epc_features3.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %epc_features3.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %59, align 8
  %61 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i118 = icmp eq i8 %61, 0
  br i1 %tobool.not.i118, label %pci_epf_configure_bar.exit.if.end.i120_crit_edge, label %if.then.i119

pci_epf_configure_bar.exit.if.end.i120_crit_edge: ; preds = %pci_epf_configure_bar.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i120

if.then.i119:                                     ; preds = %pci_epf_configure_bar.exit
  call void @__sanitizer_cov_trace_pc() #9
  %msix_interrupts.i = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 5
  %62 = ptrtoint ptr %msix_interrupts.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %msix_interrupts.i, align 2
  %conv.i = zext i16 %63 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %msix_table_offset.i = getelementptr inbounds %struct.pci_epf_test, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %msix_table_offset.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 128, ptr %msix_table_offset.i, align 4
  %65 = load i16, ptr %msix_interrupts.i, align 2
  %conv6.i = zext i16 %65 to i32
  %sub.i = add nuw nsw i32 %conv6.i, 7
  %div96.i = lshr i32 %sub.i, 3
  %add8.i = add nuw nsw i32 %div96.i, 7
  %and.i = and i32 %add8.i, 32760
  %phi.bo.i = add nuw nsw i32 %mul.i, 128
  %66 = add nuw nsw i32 %phi.bo.i, %and.i
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.then.i119, %pci_epf_configure_bar.exit.if.end.i120_crit_edge
  %add10.i = phi i32 [ %66, %if.then.i119 ], [ 128, %pci_epf_configure_bar.exit.if.end.i120_crit_edge ]
  %arrayidx.i = getelementptr %struct.pci_epc_features, ptr %59, i32 0, i32 3, i32 %57
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool11.not.i = icmp eq i64 %68, 0
  br i1 %tobool11.not.i, label %if.end.i120.if.end18.i_crit_edge, label %if.then12.i

if.end.i120.if.end18.i_crit_edge:                 ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then12.i:                                      ; preds = %if.end.i120
  %arrayidx13.i = getelementptr [6 x i32], ptr @bar_size, i32 0, i32 %57
  %69 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %70)
  %cmp.i = icmp ugt i32 %add10.i, %70
  br i1 %cmp.i, label %if.then12.i.cleanup_crit_edge, label %if.then12.i.if.end18.i_crit_edge

if.then12.i.if.end18.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18.i:                                       ; preds = %if.then12.i.if.end18.i_crit_edge, %if.end.i120.if.end18.i_crit_edge
  %test_reg_size.0.i = phi i32 [ %add10.i, %if.end.i120.if.end18.i_crit_edge ], [ %70, %if.then12.i.if.end18.i_crit_edge ]
  %align.i = getelementptr inbounds %struct.pci_epc_features, ptr %59, i32 0, i32 4
  %71 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %align.i, align 8
  %call19.i = tail call ptr @pci_epf_alloc_space(ptr noundef %epf, i32 noundef %test_reg_size.0.i, i32 noundef %57, i32 noundef %72, i32 noundef 0) #7
  %tobool20.not.i = icmp eq ptr %call19.i, null
  br i1 %tobool20.not.i, label %do.end.i, label %if.end22.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.79) #10
  br label %cleanup

if.end22.i:                                       ; preds = %if.end18.i
  %arrayidx23.i = getelementptr [6 x ptr], ptr %55, i32 0, i32 %57
  %73 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call19.i, ptr %arrayidx23.i, align 4
  %reserved_bar.i = getelementptr inbounds %struct.pci_epc_features, ptr %59, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i122.for.body.i_crit_edge, %if.end22.i
  %bar.097.i = phi i32 [ 0, %if.end22.i ], [ %add50.i, %for.inc.i122.for.body.i_crit_edge ]
  %flags.i121 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 %bar.097.i, i32 4
  %74 = ptrtoint ptr %flags.i121 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flags.i121, align 4
  %and28.i = and i32 %75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond.i = select i1 %tobool29.not.i, i32 1, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %bar.097.i, i32 %57)
  %cmp30.i = icmp eq i32 %bar.097.i, %57
  br i1 %cmp30.i, label %for.body.i.for.inc.i122_crit_edge, label %if.end33.i

for.body.i.for.inc.i122_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i122

if.end33.i:                                       ; preds = %for.body.i
  %76 = ptrtoint ptr %reserved_bar.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reserved_bar.i, align 1
  %conv34.i = zext i8 %77 to i32
  %shl.i = shl nuw nsw i32 1, %bar.097.i
  %and35.i = and i32 %shl.i, %conv34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end33.i.for.inc.i122_crit_edge

if.end33.i.for.inc.i122_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i122

if.end38.i:                                       ; preds = %if.end33.i
  %arrayidx39.i = getelementptr [6 x i32], ptr @bar_size, i32 0, i32 %bar.097.i
  %78 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx39.i, align 4
  %80 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %align.i, align 8
  %call41.i = tail call ptr @pci_epf_alloc_space(ptr noundef %epf, i32 noundef %79, i32 noundef %bar.097.i, i32 noundef %81, i32 noundef 0) #7
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %do.end46.i, label %if.end38.i.if.end47.i_crit_edge

if.end38.i.if.end47.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

do.end46.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.82, i32 noundef %bar.097.i) #10
  br label %if.end47.i

if.end47.i:                                       ; preds = %do.end46.i, %if.end38.i.if.end47.i_crit_edge
  %arrayidx49.i = getelementptr [6 x ptr], ptr %55, i32 0, i32 %bar.097.i
  %82 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call41.i, ptr %arrayidx49.i, align 4
  br label %for.inc.i122

for.inc.i122:                                     ; preds = %if.end47.i, %if.end33.i.for.inc.i122_crit_edge, %for.body.i.for.inc.i122_crit_edge
  %add50.i = add nuw nsw i32 %cond.i, %bar.097.i
  %cmp24.i = icmp ult i32 %add50.i, 6
  br i1 %cmp24.i, label %for.inc.i122.for.body.i_crit_edge, label %if.end63

for.inc.i122.for.body.i_crit_edge:                ; preds = %for.inc.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end63:                                         ; preds = %for.inc.i122
  br i1 %tobool53.not, label %if.then65, label %if.end63.if.end70_crit_edge

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then65:                                        ; preds = %if.end63
  %call66 = tail call fastcc i32 @pci_epf_test_core_init(ptr noundef %epf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then65.if.end70_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then65.if.end70_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end70:                                         ; preds = %if.then65.if.end70_crit_edge, %if.end63.if.end70_crit_edge
  %dma_supported = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 7
  %83 = ptrtoint ptr %dma_supported to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %dma_supported, align 4
  %epf1.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %epf1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %epf1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #7
  %86 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask.i) #7
  %call.i = call ptr @dma_request_chan_by_mask(ptr noundef nonnull %mask.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i123, label %pci_epf_test_init_dma_chan.exit.thread

if.then.i123:                                     ; preds = %if.end70
  %cmp.not.i = icmp eq ptr %call.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %pci_epf_test_init_dma_chan.exit.thread132, label %pci_epf_test_init_dma_chan.exit

pci_epf_test_init_dma_chan.exit.thread132:        ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %if.then73

pci_epf_test_init_dma_chan.exit.thread:           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %transfer_complete.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 6
  %87 = ptrtoint ptr %transfer_complete.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %transfer_complete.i, align 4
  %wait.i.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @init_completion.__key) #7
  %dma_chan7.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 5
  %88 = ptrtoint ptr %dma_chan7.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %dma_chan7.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %if.end75

pci_epf_test_init_dma_chan.exit:                  ; preds = %if.then.i123
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.94) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %if.then73

if.then73:                                        ; preds = %pci_epf_test_init_dma_chan.exit, %pci_epf_test_init_dma_chan.exit.thread132
  %89 = ptrtoint ptr %dma_supported to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %dma_supported, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %pci_epf_test_init_dma_chan.exit.thread
  br i1 %tobool48.not, label %if.else, label %if.then77

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %nb = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 12
  %90 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @pci_epf_test_notifier, ptr %nb, align 4
  %notifier.i = getelementptr inbounds %struct.pci_epc, ptr %3, i32 0, i32 11
  %call.i126 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %nb) #7
  br label %cleanup

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  %91 = load ptr, ptr @kpcitest_workqueue, align 4
  %cmd_handler = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 4
  %call.i127 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %91, ptr noundef %cmd_handler) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then77, %if.then65.cleanup_crit_edge, %do.end.i, %if.then12.i.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end46, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end46 ], [ -22, %if.then ], [ -22, %if.end47.cleanup_crit_edge ], [ %call66, %if.then65.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then77 ], [ -22, %land.rhs.cleanup_crit_edge ], [ -12, %do.end.i ], [ -12, %if.then12.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_epf_test_unbind(ptr noundef %epf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %epc1 = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 8
  %2 = ptrtoint ptr %epc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epc1, align 8
  %cmd_handler = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 4
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %cmd_handler) #7
  %dma_supported.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dma_supported.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dma_supported.i, align 4, !range !208
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.pci_epf_test_clean_dma_chan.exit_crit_edge, label %if.end.i

entry.pci_epf_test_clean_dma_chan.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_epf_test_clean_dma_chan.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dma_chan.i = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %7) #7
  %8 = ptrtoint ptr %dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_chan.i, align 4
  br label %pci_epf_test_clean_dma_chan.exit

pci_epf_test_clean_dma_chan.exit:                 ; preds = %if.end.i, %entry.pci_epf_test_clean_dma_chan.exit_crit_edge
  tail call void @pci_epc_stop(ptr noundef %3) #7
  %func_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 6
  %vfunc_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %pci_epf_test_clean_dma_chan.exit.for.inc_crit_edge, label %if.then

pci_epf_test_clean_dma_chan.exit.for.inc_crit_edge: ; preds = %pci_epf_test_clean_dma_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %pci_epf_test_clean_dma_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 0
  %11 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %func_no, align 4
  %13 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %12, i8 noundef zeroext %14, ptr noundef %arrayidx) #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %16, i32 noundef 0, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %pci_epf_test_clean_dma_chan.exit.for.inc_crit_edge
  %arrayidx4.1 = getelementptr [6 x ptr], ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.1, align 4
  %tobool.not.1 = icmp eq ptr %18, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.1 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %func_no, align 4
  %21 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %20, i8 noundef zeroext %22, ptr noundef %arrayidx.1) #7
  %23 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx4.1, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %24, i32 noundef 1, i32 noundef 0) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx4.2 = getelementptr [6 x ptr], ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4.2, align 4
  %tobool.not.2 = icmp eq ptr %26, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.2 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %func_no, align 4
  %29 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %28, i8 noundef zeroext %30, ptr noundef %arrayidx.2) #7
  %31 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx4.2, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %32, i32 noundef 2, i32 noundef 0) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx4.3 = getelementptr [6 x ptr], ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx4.3, align 4
  %tobool.not.3 = icmp eq ptr %34, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.3 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %func_no, align 4
  %37 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %36, i8 noundef zeroext %38, ptr noundef %arrayidx.3) #7
  %39 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx4.3, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %40, i32 noundef 3, i32 noundef 0) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx4.4 = getelementptr [6 x ptr], ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx4.4, align 4
  %tobool.not.4 = icmp eq ptr %42, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.4 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 4
  %43 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %func_no, align 4
  %45 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %44, i8 noundef zeroext %46, ptr noundef %arrayidx.4) #7
  %47 = ptrtoint ptr %arrayidx4.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx4.4, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %48, i32 noundef 4, i32 noundef 0) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx4.5 = getelementptr [6 x ptr], ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx4.5, align 4
  %tobool.not.5 = icmp eq ptr %50, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.5 = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 5
  %51 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %func_no, align 4
  %53 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vfunc_no, align 1
  tail call void @pci_epc_clear_bar(ptr noundef %3, i8 noundef zeroext %52, i8 noundef zeroext %54, ptr noundef %arrayidx.5) #7
  %55 = ptrtoint ptr %arrayidx4.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx4.5, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %56, i32 noundef 5, i32 noundef 0) #7
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epc_get_features(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_get_first_free_bar(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pci_epf_test_core_init(ptr noundef %epf) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %epf, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %header1 = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 2
  %2 = ptrtoint ptr %header1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %header1, align 4
  %epc2 = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 8
  %4 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %epc2, align 8
  %func_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 6
  %6 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func_no, align 4
  %vfunc_no = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 7
  %8 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vfunc_no, align 1
  %call4 = tail call ptr @pci_epc_get_features(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %call4, align 8
  %11 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5 = icmp ne i8 %11, 0
  %12 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10 = icmp ne i8 %12, 0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %msix_capable.0.off0 = phi i1 [ %tobool5, %if.then ], [ false, %entry.if.end_crit_edge ]
  %msi_capable.0.off0 = phi i1 [ %tobool10, %if.then ], [ true, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vfunc_no, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp = icmp ult i8 %14, 2
  br i1 %cmp, label %if.then14, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then14:                                        ; preds = %if.end
  %15 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %func_no, align 4
  %call17 = tail call i32 @pci_epc_write_header(ptr noundef %5, i8 noundef zeroext %16, i8 noundef zeroext %14, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end21_crit_edge, label %if.then14.cleanup.sink.split_crit_edge

if.then14.cleanup.sink.split_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then14.if.end21_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end21:                                         ; preds = %if.then14.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %17 = ptrtoint ptr %epc2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %epc2, align 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %test_reg_bar3.i = getelementptr inbounds %struct.pci_epf_test, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %test_reg_bar3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %test_reg_bar3.i, align 4
  %epc_features4.i = getelementptr inbounds %struct.pci_epf_test, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %epc_features4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %epc_features4.i, align 4
  %reserved_bar.i = getelementptr inbounds %struct.pci_epc_features, ptr %24, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end21
  %bar.043.i = phi i32 [ 0, %if.end21 ], [ %add17.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 %bar.043.i, i32 4
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %27 = ptrtoint ptr %reserved_bar.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reserved_bar.i, align 1
  %conv.i = zext i8 %28 to i32
  %shl.i = shl nuw nsw i32 1, %bar.043.i
  %and6.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.pci_epf, ptr %epf, i32 0, i32 3, i32 %bar.043.i
  %29 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %func_no, align 4
  %31 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %vfunc_no, align 1
  %call8.i = tail call i32 @pci_epc_set_bar(ptr noundef %18, i8 noundef zeroext %30, i8 noundef zeroext %32, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i:                                      ; preds = %if.end.i
  %arrayidx11.i = getelementptr [6 x ptr], ptr %20, i32 0, i32 %bar.043.i
  %33 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx11.i, align 4
  tail call void @pci_epf_free_space(ptr noundef %epf, ptr noundef %34, i32 noundef %bar.043.i, i32 noundef 0) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull @.str.92, i32 noundef %bar.043.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %bar.043.i, i32 %22)
  %cmp12.i = icmp eq i32 %bar.043.i, %22
  br i1 %cmp12.i, label %if.then10.i.cleanup_crit_edge, label %if.then10.i.for.inc.i_crit_edge

if.then10.i.for.inc.i_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then10.i.cleanup_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i:                                        ; preds = %if.then10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add17.i = add nuw nsw i32 %cond.i, %bar.043.i
  %cmp.i = icmp ult i32 %add17.i, 6
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %if.end25

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end25:                                         ; preds = %for.inc.i
  br i1 %msi_capable.0.off0, label %if.then27, label %if.end25.if.end37_crit_edge

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then27:                                        ; preds = %if.end25
  %35 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %func_no, align 4
  %37 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vfunc_no, align 1
  %msi_interrupts = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 4
  %39 = ptrtoint ptr %msi_interrupts to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %msi_interrupts, align 8
  %call30 = tail call i32 @pci_epc_set_msi(ptr noundef %5, i8 noundef zeroext %36, i8 noundef zeroext %38, i8 noundef zeroext %40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then27.if.end37_crit_edge, label %if.then27.cleanup.sink.split_crit_edge

if.then27.cleanup.sink.split_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %if.then27.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  br i1 %msix_capable.0.off0, label %if.then39, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.end37
  %41 = ptrtoint ptr %func_no to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %func_no, align 4
  %43 = ptrtoint ptr %vfunc_no to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vfunc_no, align 1
  %msix_interrupts = getelementptr inbounds %struct.pci_epf, ptr %epf, i32 0, i32 5
  %45 = ptrtoint ptr %msix_interrupts to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %msix_interrupts, align 2
  %test_reg_bar = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 2
  %47 = ptrtoint ptr %test_reg_bar to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %test_reg_bar, align 4
  %msix_table_offset = getelementptr inbounds %struct.pci_epf_test, ptr %1, i32 0, i32 3
  %49 = ptrtoint ptr %msix_table_offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msix_table_offset, align 4
  %call42 = tail call i32 @pci_epc_set_msix(ptr noundef %5, i8 noundef zeroext %42, i8 noundef zeroext %44, i16 noundef zeroext %46, i32 noundef %48, i32 noundef %50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then39.cleanup_crit_edge, label %if.then39.cleanup.sink.split_crit_edge

if.then39.cleanup.sink.split_crit_edge:           ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then39.cleanup.sink.split_crit_edge, %if.then27.cleanup.sink.split_crit_edge, %if.then14.cleanup.sink.split_crit_edge
  %.str.90.sink = phi ptr [ @.str.84, %if.then14.cleanup.sink.split_crit_edge ], [ @.str.87, %if.then27.cleanup.sink.split_crit_edge ], [ @.str.90, %if.then39.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call17, %if.then14.cleanup.sink.split_crit_edge ], [ %call30, %if.then27.cleanup.sink.split_crit_edge ], [ %call42, %if.then39.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %epf, ptr noundef nonnull %.str.90.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then39.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then10.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call8.i, %if.then10.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_epf_test_notifier(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1084
  %0 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %val, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc i32 @pci_epf_test_core_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr i8, ptr %nb, i32 -920
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = load ptr, ptr @kpcitest_workqueue, align 4
  %cmd_handler = getelementptr inbounds %struct.pci_epf_test, ptr %2, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %cmd_handler, i32 noundef 1) #7
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.97) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 32770, %do.end ], [ 1, %sw.epilog ], [ 32770, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_epf_alloc_space(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_write_header(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msi(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_msix(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_epc_set_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epf_free_space(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan_by_mask(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_epc_clear_bar(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !147, !149, !151, !152, !153, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !193, !194, !195, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @__initcall__kmod_pci_epf_test__238_945_pci_epf_test_init6, !1, !"__initcall__kmod_pci_epf_test__238_945_pci_epf_test_init6", i1 false, i1 false}
!1 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 945, i32 1}
!2 = !{ptr @__exitcall_pci_epf_test_exit, !3, !"__exitcall_pci_epf_test_exit", i1 false, i1 false}
!3 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 953, i32 1}
!4 = !{ptr @__UNIQUE_ID_description239, !5, !"__UNIQUE_ID_description239", i1 false, i1 false}
!5 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 955, i32 1}
!6 = !{ptr @__UNIQUE_ID_author240, !7, !"__UNIQUE_ID_author240", i1 false, i1 false}
!7 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 956, i32 1}
!8 = !{ptr @__UNIQUE_ID_file241, !9, !"__UNIQUE_ID_file241", i1 false, i1 false}
!9 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 957, i32 1}
!10 = !{ptr @__UNIQUE_ID_license242, !9, !"__UNIQUE_ID_license242", i1 false, i1 false}
!11 = !{ptr @kpcitest_workqueue, !12, !"kpcitest_workqueue", i1 false, i1 false}
!12 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 47, i32 33}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 929, i32 39}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 932, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @pci_epf_test_init._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @pci_epf_test_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 939, i32 3}
!23 = !{ptr @pci_epf_test_init._entry.4, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @pci_epf_test_init._entry_ptr.6, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 918, i32 17}
!27 = !{ptr @test_driver, !28, !"test_driver", i1 false, i1 false}
!28 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 917, i32 30}
!29 = !{ptr @pci_epf_test_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 906, i32 2}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @pci_epf_test_probe.__key.9, !30, !"__key", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @test_header, !35, !"test_header", i1 false, i1 false}
!35 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 74, i32 30}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 542, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @pci_epf_test_cmd_handler._entry, !37, !"_entry", i1 false, i1 false}
!42 = !{ptr @pci_epf_test_cmd_handler._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 416, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pci_epf_test_write._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @pci_epf_test_write._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 425, i32 3}
!50 = !{ptr @pci_epf_test_write._entry.17, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pci_epf_test_write._entry_ptr.19, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 442, i32 4}
!54 = !{ptr @pci_epf_test_write._entry.20, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pci_epf_test_write._entry_ptr.22, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 450, i32 4}
!58 = !{ptr @pci_epf_test_write._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pci_epf_test_write._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 459, i32 4}
!62 = !{ptr @pci_epf_test_write._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pci_epf_test_write._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 470, i32 26}
!66 = distinct !{null, !67, !"__already_done", i1 false, i1 false}
!67 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 119, i32 3}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pci_epf_test_data_transfer._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pci_epf_test_data_transfer._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 125, i32 3}
!77 = !{ptr @pci_epf_test_data_transfer._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @pci_epf_test_data_transfer._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 136, i32 3}
!81 = !{ptr @pci_epf_test_data_transfer._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pci_epf_test_data_transfer._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 144, i32 3}
!85 = !{ptr @pci_epf_test_data_transfer._entry.40, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pci_epf_test_data_transfer._entry_ptr.42, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 222, i32 2}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pci_epf_test_print_rate._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @pci_epf_test_print_rate._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 516, i32 3}
!98 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pci_epf_test_raise_irq._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @pci_epf_test_raise_irq._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 328, i32 3}
!103 = !{ptr @pci_epf_test_read._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @pci_epf_test_read._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @pci_epf_test_read._entry.51, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 337, i32 3}
!107 = !{ptr @pci_epf_test_read._entry_ptr.52, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @pci_epf_test_read._entry.53, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 351, i32 4}
!110 = !{ptr @pci_epf_test_read._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 359, i32 4}
!113 = !{ptr @pci_epf_test_read._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @pci_epf_test_read._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @pci_epf_test_read._entry.58, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 368, i32 4}
!117 = !{ptr @pci_epf_test_read._entry_ptr.59, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 379, i32 26}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 244, i32 3}
!122 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @pci_epf_test_copy._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @pci_epf_test_copy._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 253, i32 3}
!127 = !{ptr @pci_epf_test_copy._entry.63, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @pci_epf_test_copy._entry_ptr.65, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 260, i32 3}
!131 = !{ptr @pci_epf_test_copy._entry.66, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @pci_epf_test_copy._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 269, i32 3}
!135 = !{ptr @pci_epf_test_copy._entry.69, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @pci_epf_test_copy._entry_ptr.71, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @pci_epf_test_copy._entry.72, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 278, i32 4}
!139 = !{ptr @pci_epf_test_copy._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @pci_epf_test_copy._entry.74, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 286, i32 4}
!142 = !{ptr @pci_epf_test_copy._entry_ptr.75, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 291, i32 26}
!145 = !{ptr @ops, !146, !"ops", i1 false, i1 false}
!146 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 912, i32 27}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 842, i32 6}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 847, i32 3}
!151 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @pci_epf_test_bind._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @pci_epf_test_bind._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @bar_size, !155, !"bar_size", i1 false, i1 false}
!155 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 81, i32 15}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 788, i32 3}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @pci_epf_test_alloc_space._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @pci_epf_test_alloc_space._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 807, i32 4}
!163 = !{ptr @pci_epf_test_alloc_space._entry.81, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @pci_epf_test_alloc_space._entry_ptr.83, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 692, i32 4}
!167 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @pci_epf_test_core_init._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @pci_epf_test_core_init._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 705, i32 4}
!172 = !{ptr @pci_epf_test_core_init._entry.86, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @pci_epf_test_core_init._entry_ptr.88, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 716, i32 4}
!176 = !{ptr @pci_epf_test_core_init._entry.89, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @pci_epf_test_core_init._entry_ptr.91, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 663, i32 4}
!180 = !{ptr @.str.93, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @pci_epf_test_set_bar._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @pci_epf_test_set_bar._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 172, i32 4}
!185 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @pci_epf_test_init_dma_chan._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @pci_epf_test_init_dma_chan._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @init_completion.__key, !189, !"__key", i1 false, i1 false}
!189 = !{!"../include/linux/completion.h", i32 87, i32 2}
!190 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 744, i32 3}
!193 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @pci_epf_test_notifier._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @pci_epf_test_notifier._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @pci_epf_test_ids, !197, !"pci_epf_test_ids", i1 false, i1 false}
!197 = !{!"../drivers/pci/endpoint/functions/pci-epf-test.c", i32 887, i32 39}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
!208 = !{i8 0, i8 2}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2148011347, i64 2148011627, i64 2148011961, i64 2148012295}
