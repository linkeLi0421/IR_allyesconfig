; ModuleID = '/llk/IR_all_yes/drivers/misc/pci_endpoint_test.c_pt.bc'
source_filename = "../drivers/misc/pci_endpoint_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
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
%struct.pci_endpoint_test_data = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pci_endpoint_test = type { ptr, ptr, [6 x ptr], %struct.completion, i32, i32, i32, %struct.mutex, %struct.miscdevice, i32, i32, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.pci_endpoint_test_xfer_param = type { i32, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__param_str_no_msi = internal constant [25 x i8] c"pci_endpoint_test.no_msi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@no_msi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_no_msi = internal constant %struct.kernel_param { ptr @__param_str_no_msi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @no_msi } }, section "__param", align 4
@__UNIQUE_ID_no_msitype236 = internal constant [39 x i8] c"pci_endpoint_test.parmtype=no_msi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_no_msi237 = internal constant [73 x i8] c"pci_endpoint_test.parm=no_msi:Disable MSI interrupt in pci_endpoint_test\00", section ".modinfo", align 1
@__param_str_irq_type = internal constant [27 x i8] c"pci_endpoint_test.irq_type\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@irq_type = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_irq_type = internal constant %struct.kernel_param { ptr @__param_str_irq_type, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @irq_type } }, section "__param", align 4
@__UNIQUE_ID_irq_typetype238 = internal constant [40 x i8] c"pci_endpoint_test.parmtype=irq_type:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_type239 = internal constant [105 x i8] c"pci_endpoint_test.parm=irq_type:IRQ mode selection in pci_endpoint_test (0 - Legacy, 1 - MSI, 2 - MSI-X)\00", section ".modinfo", align 1
@__initcall__kmod_pci_endpoint_test__240_992_pci_endpoint_test_driver_init6 = internal global ptr @pci_endpoint_test_driver_init, section ".initcall6.init", align 4
@pci_endpoint_test_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pci_endpoint_test_tbl, ptr @pci_endpoint_test_probe, ptr @pci_endpoint_test_remove, ptr null, ptr null, ptr null, ptr @pci_sriov_configure_simple, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pci_endpoint_test_driver_exit = internal global ptr @pci_endpoint_test_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [60 x i8] c"pci_endpoint_test.description=PCI ENDPOINT TEST HOST DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [64 x i8] c"pci_endpoint_test.author=Kishon Vijay Abraham I <kishon@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [54 x i8] c"pci_endpoint_test.file=drivers/misc/pci_endpoint_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [33 x i8] c"pci_endpoint_test.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci_endpoint_test\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pci-endpoint-test\00", [46 x i8] zeroinitializer }, align 32
@pci_endpoint_test_tbl = internal constant { [14 x %struct.pci_device_id], [96 x i8] } { [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4172, i32 46336, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 46337, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 6487, i32 33216, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 6487, i32 32960, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @default_data to i32), i32 0 }, %struct.pci_device_id { i32 5827, i32 60890, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45068, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @am654_data to i32), i32 0 }, %struct.pci_device_id { i32 6418, i32 40, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 43, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 45, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6418, i32 37, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4172, i32 45069, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 45071, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id { i32 4172, i32 45072, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @j721e_data to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@default_data = internal constant { %struct.pci_endpoint_test_data, [20 x i8] } { %struct.pci_endpoint_test_data { i32 0, i32 4096, i32 1 }, [20 x i8] zeroinitializer }, align 32
@am654_data = internal constant { %struct.pci_endpoint_test_data, [20 x i8] } { %struct.pci_endpoint_test_data { i32 2, i32 65536, i32 1 }, [20 x i8] zeroinitializer }, align 32
@j721e_data = internal constant { %struct.pci_endpoint_test_data, [20 x i8] } { %struct.pci_endpoint_test_data { i32 0, i32 256, i32 1 }, [20 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&test->mutex\00", [19 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 797, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot set DMA mask\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_endpoint_test_probe\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/misc/pci_endpoint_test.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr = internal global ptr @pci_endpoint_test_probe._entry, section ".printk_index", align 4
@pci_endpoint_test_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 803, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable PCI device\0A\00", [38 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.10 = internal global ptr @pci_endpoint_test_probe._entry.8, section ".printk_index", align 4
@pci_endpoint_test_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 809, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot obtain PCI resources\0A\00", [35 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.13 = internal global ptr @pci_endpoint_test_probe._entry.11, section ".printk_index", align 4
@pci_endpoint_test_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 824, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to read BAR%d\0A\00", [42 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.16 = internal global ptr @pci_endpoint_test_probe._entry.14, section ".printk_index", align 4
@pci_endpoint_test_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 835, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot perform PCI test without BAR%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.19 = internal global ptr @pci_endpoint_test_probe._entry.17, section ".printk_index", align 4
@pci_endpoint_test_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 844, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unable to get id\0A\00", [46 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.22 = internal global ptr @pci_endpoint_test_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pci-endpoint-test.%d\00", [43 x i8] zeroinitializer }, align 32
@pci_endpoint_test_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pci_endpoint_test_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 872, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_endpoint_test_probe._entry_ptr.26 = internal global ptr @pci_endpoint_test_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@pci_endpoint_test_alloc_irq_vectors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 189, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get Legacy interrupt\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pci_endpoint_test_alloc_irq_vectors\00", [60 x i8] zeroinitializer }, align 32
@pci_endpoint_test_alloc_irq_vectors._entry_ptr = internal global ptr @pci_endpoint_test_alloc_irq_vectors._entry, section ".printk_index", align 4
@pci_endpoint_test_alloc_irq_vectors._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.5, i32 194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get MSI interrupts\0A\00", [34 x i8] zeroinitializer }, align 32
@pci_endpoint_test_alloc_irq_vectors._entry_ptr.32 = internal global ptr @pci_endpoint_test_alloc_irq_vectors._entry.30, section ".printk_index", align 4
@pci_endpoint_test_alloc_irq_vectors._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.29, ptr @.str.5, i32 199, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get MSI-X interrupts\0A\00", [32 x i8] zeroinitializer }, align 32
@pci_endpoint_test_alloc_irq_vectors._entry_ptr.35 = internal global ptr @pci_endpoint_test_alloc_irq_vectors._entry.33, section ".printk_index", align 4
@pci_endpoint_test_alloc_irq_vectors._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.29, ptr @.str.5, i32 202, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid IRQ type selected\0A\00", [37 x i8] zeroinitializer }, align 32
@pci_endpoint_test_alloc_irq_vectors._entry_ptr.38 = internal global ptr @pci_endpoint_test_alloc_irq_vectors._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_endpoint_test_ida.xa_lock\00", [34 x i8] zeroinitializer }, align 32
@pci_endpoint_test_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request IRQ %d for Legacy\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_endpoint_test_request_irq\00", [34 x i8] zeroinitializer }, align 32
@pci_endpoint_test_request_irq._entry_ptr = internal global ptr @pci_endpoint_test_request_irq._entry, section ".printk_index", align 4
@pci_endpoint_test_request_irq._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.5, i32 254, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request IRQ %d for MSI %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pci_endpoint_test_request_irq._entry_ptr.44 = internal global ptr @pci_endpoint_test_request_irq._entry.42, section ".printk_index", align 4
@pci_endpoint_test_request_irq._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request IRQ %d for MSI-X %d\0A\00", [57 x i8] zeroinitializer }, align 32
@pci_endpoint_test_request_irq._entry_ptr.47 = internal global ptr @pci_endpoint_test_request_irq._entry.45, section ".printk_index", align 4
@pci_endpoint_test_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.5, i32 496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get transfer param\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pci_endpoint_test_write\00", [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_write._entry_ptr = internal global ptr @pci_endpoint_test_write._entry, section ".printk_index", align 4
@pci_endpoint_test_write._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.5, i32 509, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid IRQ type option\0A\00", [39 x i8] zeroinitializer }, align 32
@pci_endpoint_test_write._entry_ptr.52 = internal global ptr @pci_endpoint_test_write._entry.50, section ".printk_index", align 4
@pci_endpoint_test_write._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.5, i32 515, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to allocate address\0A\00", [36 x i8] zeroinitializer }, align 32
@pci_endpoint_test_write._entry_ptr.55 = internal global ptr @pci_endpoint_test_write._entry.53, section ".printk_index", align 4
@pci_endpoint_test_write._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.5, i32 525, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to map source buffer address\0A\00", [59 x i8] zeroinitializer }, align 32
@pci_endpoint_test_write._entry_ptr.58 = internal global ptr @pci_endpoint_test_write._entry.56, section ".printk_index", align 4
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@pci_endpoint_test_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.64, ptr @.str.5, i32 594, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_endpoint_test_read\00", [41 x i8] zeroinitializer }, align 32
@pci_endpoint_test_read._entry_ptr = internal global ptr @pci_endpoint_test_read._entry, section ".printk_index", align 4
@pci_endpoint_test_read._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.64, ptr @.str.5, i32 607, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_read._entry_ptr.66 = internal global ptr @pci_endpoint_test_read._entry.65, section ".printk_index", align 4
@pci_endpoint_test_read._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.64, ptr @.str.5, i32 613, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate destination address\0A\00", [56 x i8] zeroinitializer }, align 32
@pci_endpoint_test_read._entry_ptr.69 = internal global ptr @pci_endpoint_test_read._entry.67, section ".printk_index", align 4
@pci_endpoint_test_read._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.64, ptr @.str.5, i32 621, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_read._entry_ptr.71 = internal global ptr @pci_endpoint_test_read._entry.70, section ".printk_index", align 4
@pci_endpoint_test_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.72, ptr @.str.5, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pci_endpoint_test_copy\00", [41 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr = internal global ptr @pci_endpoint_test_copy._entry, section ".printk_index", align 4
@pci_endpoint_test_copy._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.72, ptr @.str.5, i32 375, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr.74 = internal global ptr @pci_endpoint_test_copy._entry.73, section ".printk_index", align 4
@pci_endpoint_test_copy._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.72, ptr @.str.5, i32 381, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate source buffer\0A\00", [62 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr.77 = internal global ptr @pci_endpoint_test_copy._entry.75, section ".printk_index", align 4
@pci_endpoint_test_copy._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.72, ptr @.str.5, i32 390, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr.79 = internal global ptr @pci_endpoint_test_copy._entry.78, section ".printk_index", align 4
@pci_endpoint_test_copy._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.72, ptr @.str.5, i32 414, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr.81 = internal global ptr @pci_endpoint_test_copy._entry.80, section ".printk_index", align 4
@pci_endpoint_test_copy._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.5, i32 422, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to map destination buffer address\0A\00", [54 x i8] zeroinitializer }, align 32
@pci_endpoint_test_copy._entry_ptr.84 = internal global ptr @pci_endpoint_test_copy._entry.82, section ".printk_index", align 4
@pci_endpoint_test_set_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.85, ptr @.str.5, i32 677, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_endpoint_test_set_irq\00", [38 x i8] zeroinitializer }, align 32
@pci_endpoint_test_set_irq._entry_ptr = internal global ptr @pci_endpoint_test_set_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [12 x i64] [i64 10, i64 32, i64 20481, i64 20482, i64 20489, i64 20496, i64 1074024451, i64 1074024452, i64 1074024453, i64 1074024454, i64 1074024455, i64 1074024456]
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"no_msi\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 89, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"irq_type\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 93, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [25 x i8] c"pci_endpoint_test_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 985, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 992, i32 1 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 986, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [22 x i8] c"pci_endpoint_test_tbl\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 951, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"default_data\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 934, i32 44 }
@___asan_gen_.109 = private unnamed_addr constant [11 x i8] c"am654_data\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 940, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"j721e_data\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 946, i32 44 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 793, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 797, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 803, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 809, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 824, i32 5 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 834, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [22 x i8] c"pci_endpoint_test_ida\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 844, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 848, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [23 x i8] c"pci_endpoint_test_fops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 750, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 872, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 87, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 189, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 194, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 199, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 202, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 84, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 248, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 252, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 257, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 496, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 509, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 515, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 525, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 156, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 326, i32 6 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 594, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 607, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 613, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 621, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 362, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 375, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 381, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 390, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 414, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 422, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.326 = private constant [36 x i8] c"../drivers/misc/pci_endpoint_test.c\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.326, i32 677, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_irq_type239, ptr @__UNIQUE_ID_irq_typetype238, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_no_msi237, ptr @__UNIQUE_ID_no_msitype236, ptr @__exitcall_pci_endpoint_test_driver_exit, ptr @__initcall__kmod_pci_endpoint_test__240_992_pci_endpoint_test_driver_init6, ptr @__param_irq_type, ptr @__param_no_msi, ptr @pci_endpoint_test_alloc_irq_vectors._entry, ptr @pci_endpoint_test_alloc_irq_vectors._entry.30, ptr @pci_endpoint_test_alloc_irq_vectors._entry.33, ptr @pci_endpoint_test_alloc_irq_vectors._entry.36, ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr, ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.32, ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.35, ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.38, ptr @pci_endpoint_test_copy._entry, ptr @pci_endpoint_test_copy._entry.73, ptr @pci_endpoint_test_copy._entry.75, ptr @pci_endpoint_test_copy._entry.78, ptr @pci_endpoint_test_copy._entry.80, ptr @pci_endpoint_test_copy._entry.82, ptr @pci_endpoint_test_copy._entry_ptr, ptr @pci_endpoint_test_copy._entry_ptr.74, ptr @pci_endpoint_test_copy._entry_ptr.77, ptr @pci_endpoint_test_copy._entry_ptr.79, ptr @pci_endpoint_test_copy._entry_ptr.81, ptr @pci_endpoint_test_copy._entry_ptr.84, ptr @pci_endpoint_test_driver_exit, ptr @pci_endpoint_test_probe._entry, ptr @pci_endpoint_test_probe._entry.11, ptr @pci_endpoint_test_probe._entry.14, ptr @pci_endpoint_test_probe._entry.17, ptr @pci_endpoint_test_probe._entry.20, ptr @pci_endpoint_test_probe._entry.24, ptr @pci_endpoint_test_probe._entry.8, ptr @pci_endpoint_test_probe._entry_ptr, ptr @pci_endpoint_test_probe._entry_ptr.10, ptr @pci_endpoint_test_probe._entry_ptr.13, ptr @pci_endpoint_test_probe._entry_ptr.16, ptr @pci_endpoint_test_probe._entry_ptr.19, ptr @pci_endpoint_test_probe._entry_ptr.22, ptr @pci_endpoint_test_probe._entry_ptr.26, ptr @pci_endpoint_test_read._entry, ptr @pci_endpoint_test_read._entry.65, ptr @pci_endpoint_test_read._entry.67, ptr @pci_endpoint_test_read._entry.70, ptr @pci_endpoint_test_read._entry_ptr, ptr @pci_endpoint_test_read._entry_ptr.66, ptr @pci_endpoint_test_read._entry_ptr.69, ptr @pci_endpoint_test_read._entry_ptr.71, ptr @pci_endpoint_test_request_irq._entry, ptr @pci_endpoint_test_request_irq._entry.42, ptr @pci_endpoint_test_request_irq._entry.45, ptr @pci_endpoint_test_request_irq._entry_ptr, ptr @pci_endpoint_test_request_irq._entry_ptr.44, ptr @pci_endpoint_test_request_irq._entry_ptr.47, ptr @pci_endpoint_test_set_irq._entry, ptr @pci_endpoint_test_set_irq._entry_ptr, ptr @pci_endpoint_test_write._entry, ptr @pci_endpoint_test_write._entry.50, ptr @pci_endpoint_test_write._entry.53, ptr @pci_endpoint_test_write._entry.56, ptr @pci_endpoint_test_write._entry_ptr, ptr @pci_endpoint_test_write._entry_ptr.52, ptr @pci_endpoint_test_write._entry_ptr.55, ptr @pci_endpoint_test_write._entry_ptr.58, ptr @no_msi, ptr @irq_type, ptr @pci_endpoint_test_driver, ptr @.str, ptr @.str.1, ptr @pci_endpoint_test_tbl, ptr @default_data, ptr @am654_data, ptr @j721e_data, ptr @pci_endpoint_test_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @pci_endpoint_test_ida, ptr @.str.21, ptr @.str.23, ptr @pci_endpoint_test_fops, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.68, ptr @.str.72, ptr @.str.76, ptr @.str.83, ptr @.str.85], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_msi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_type to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_tbl to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am654_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @j721e_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_alloc_irq_vectors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_alloc_irq_vectors._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_alloc_irq_vectors._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_alloc_irq_vectors._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_request_irq._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_request_irq._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_write._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_write._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_write._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_read._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_read._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_read._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_copy._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_endpoint_test_set_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pci_endpoint_test_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pci_endpoint_test_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @pci_endpoint_test_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %name = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %name) #10
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %hdr_type.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 13
  %0 = call ptr @memset(ptr %name, i32 255, i32 24)
  %1 = ptrtoint ptr %hdr_type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hdr_type.i, align 1
  %3 = add i8 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %4 = icmp ult i8 %3, 2
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 244, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %test_reg_bar5 = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %test_reg_bar5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %test_reg_bar5, align 4
  %alignment = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %alignment to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %alignment, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %call.i, align 4
  %irq_type = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq_type, align 4
  %9 = load i8, ptr @no_msi, align 1, !range !191
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %if.then8

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  store i32 0, ptr @irq_type, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end4.if.end9_crit_edge
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end9.if.end17_crit_edge, label %if.then11

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %12 = inttoptr i32 %11 to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %15 = ptrtoint ptr %test_reg_bar5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %test_reg_bar5, align 4
  %alignment14 = getelementptr inbounds %struct.pci_endpoint_test_data, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %alignment14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alignment14, align 4
  %18 = ptrtoint ptr %alignment to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %alignment, align 4
  %irq_type16 = getelementptr inbounds %struct.pci_endpoint_test_data, ptr %12, i32 0, i32 2
  %19 = ptrtoint ptr %irq_type16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_type16, align 4
  store i32 %20, ptr @irq_type, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %if.end9.if.end17_crit_edge
  %test_reg_bar.0 = phi i32 [ %14, %if.then11 ], [ 0, %if.end9.if.end17_crit_edge ]
  %irq_raised = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %irq_raised to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %irq_raised, align 4
  %wait.i = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #10
  %mutex = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @pci_endpoint_test_probe.__key) #10
  %call.i226 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 281474976710655) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp.i = icmp eq i32 %call.i226, 0
  br i1 %cmp.i, label %if.end17.if.end27_crit_edge, label %land.lhs.true

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %call.i227 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %cmp.i228 = icmp eq i32 %call.i227, 0
  br i1 %cmp.i228, label %land.lhs.true.if.end27_crit_edge, label %do.end26

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #13
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %.sink = phi i64 [ 281474976710655, %if.end17.if.end27_crit_edge ], [ 4294967295, %land.lhs.true.if.end27_crit_edge ]
  %call1.i229 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef %.sink) #10
  %call28 = tail call i32 @pci_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end34, label %do.end33

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end34:                                         ; preds = %if.end27
  %call35 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #13
  br label %err_disable_pdev

if.end41:                                         ; preds = %if.end34
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %22 = load i32, ptr @irq_type, align 4
  %call42 = tail call fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr noundef nonnull %call.i, i32 noundef %22)
  br i1 %call42, label %if.end41.for.body_crit_edge, label %if.end41.err_disable_irq_crit_edge

if.end41.err_disable_irq_crit_edge:               ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_irq

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end41.for.body_crit_edge
  %bar.0232 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %bar.0232, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %if.then47

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then47:                                        ; preds = %for.body
  %call48 = tail call ptr @pci_ioremap_bar(ptr noundef %pdev, i32 noundef %bar.0232) #10
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.end53, label %if.then47.if.end79_crit_edge

if.then47.if.end79_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end53:                                         ; preds = %if.then47
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %bar.0232) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %bar.0232, i32 %test_reg_bar.0)
  %cmp54 = icmp eq i32 %bar.0232, %test_reg_bar.0
  br i1 %cmp54, label %do.end66, label %do.end53.if.end79_crit_edge, !prof !192

do.end53.if.end79_crit_edge:                      ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

do.end66:                                         ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 825, i32 noundef 9, ptr noundef null) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end66, %do.end53.if.end79_crit_edge, %if.then47.if.end79_crit_edge
  %arrayidx81 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 %bar.0232
  %25 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call48, ptr %arrayidx81, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end79, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %bar.0232, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %arrayidx84 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 %test_reg_bar.0
  %26 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx84, align 4
  %base85 = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %base85 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %base85, align 4
  %tobool87.not = icmp eq ptr %27, null
  br i1 %tobool87.not, label %if.then88, label %if.end92

if.then88:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %test_reg_bar.0) #13
  br label %err_iounmap

if.end92:                                         ; preds = %for.end
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call93 = tail call i32 @ida_alloc_range(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %if.then95, label %if.end99

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #13
  br label %err_iounmap

if.end99:                                         ; preds = %if.end92
  %call100 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 24, ptr noundef nonnull @.str.23, i32 noundef %call93)
  %call102 = call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #10
  %name103 = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 11
  %30 = ptrtoint ptr %name103 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call102, ptr %name103, align 4
  %tobool105.not = icmp eq ptr %call102, null
  br i1 %tobool105.not, label %if.end99.err_ida_remove_crit_edge, label %if.end107

if.end99.err_ida_remove_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_ida_remove

if.end107:                                        ; preds = %if.end99
  %call108 = call fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef nonnull %call.i)
  br i1 %call108, label %if.end110, label %if.end107.err_kfree_test_name_crit_edge

if.end107.err_kfree_test_name_crit_edge:          ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_kfree_test_name

if.end110:                                        ; preds = %if.end107
  %miscdev = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 8
  %31 = ptrtoint ptr %miscdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 255, ptr %miscdev, align 4
  %call112 = call noalias ptr @kstrdup(ptr noundef nonnull %name, i32 noundef 3264) #10
  %name113 = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %name113 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call112, ptr %name113, align 4
  %tobool115.not = icmp eq ptr %call112, null
  br i1 %tobool115.not, label %if.end110.err_release_irq_crit_edge, label %if.end117

if.end110.err_release_irq_crit_edge:              ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_release_irq

if.end117:                                        ; preds = %if.end110
  %parent = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1, ptr %parent, align 4
  %fops = getelementptr inbounds %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 8, i32 2
  %34 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pci_endpoint_test_fops, ptr %fops, align 4
  %call119 = call i32 @misc_register(ptr noundef %miscdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.end117.cleanup_crit_edge, label %do.end124

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end124:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #13
  %35 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name113, align 4
  call void @kfree(ptr noundef %36) #10
  br label %err_release_irq

err_release_irq:                                  ; preds = %do.end124, %if.end110.err_release_irq_crit_edge
  %err.0 = phi i32 [ %call119, %do.end124 ], [ -12, %if.end110.err_release_irq_crit_edge ]
  call fastcc void @pci_endpoint_test_release_irq(ptr noundef nonnull %call.i)
  br label %err_kfree_test_name

err_kfree_test_name:                              ; preds = %err_release_irq, %if.end107.err_kfree_test_name_crit_edge
  %err.1 = phi i32 [ %err.0, %err_release_irq ], [ -22, %if.end107.err_kfree_test_name_crit_edge ]
  %37 = ptrtoint ptr %name103 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %name103, align 4
  call void @kfree(ptr noundef %38) #10
  br label %err_ida_remove

err_ida_remove:                                   ; preds = %err_kfree_test_name, %if.end99.err_ida_remove_crit_edge
  %err.2 = phi i32 [ %err.1, %err_kfree_test_name ], [ -12, %if.end99.err_ida_remove_crit_edge ]
  call void @ida_free(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef %call93) #10
  br label %err_iounmap

err_iounmap:                                      ; preds = %err_ida_remove, %if.then95, %if.then88
  %err.3 = phi i32 [ %call93, %if.then95 ], [ %err.2, %err_ida_remove ], [ -12, %if.then88 ]
  %arrayidx132 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 0
  %39 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx132, align 4
  %tobool133.not = icmp eq ptr %40, null
  br i1 %tobool133.not, label %err_iounmap.for.inc138_crit_edge, label %if.then134

err_iounmap.for.inc138_crit_edge:                 ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc138

if.then134:                                       ; preds = %err_iounmap
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %40) #10
  br label %for.inc138

for.inc138:                                       ; preds = %if.then134, %err_iounmap.for.inc138_crit_edge
  %arrayidx132.1 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %arrayidx132.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx132.1, align 4
  %tobool133.not.1 = icmp eq ptr %42, null
  br i1 %tobool133.not.1, label %for.inc138.for.inc138.1_crit_edge, label %if.then134.1

for.inc138.for.inc138.1_crit_edge:                ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc138.1

if.then134.1:                                     ; preds = %for.inc138
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %42) #10
  br label %for.inc138.1

for.inc138.1:                                     ; preds = %if.then134.1, %for.inc138.for.inc138.1_crit_edge
  %arrayidx132.2 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %arrayidx132.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx132.2, align 4
  %tobool133.not.2 = icmp eq ptr %44, null
  br i1 %tobool133.not.2, label %for.inc138.1.for.inc138.2_crit_edge, label %if.then134.2

for.inc138.1.for.inc138.2_crit_edge:              ; preds = %for.inc138.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc138.2

if.then134.2:                                     ; preds = %for.inc138.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %44) #10
  br label %for.inc138.2

for.inc138.2:                                     ; preds = %if.then134.2, %for.inc138.1.for.inc138.2_crit_edge
  %arrayidx132.3 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 3
  %45 = ptrtoint ptr %arrayidx132.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx132.3, align 4
  %tobool133.not.3 = icmp eq ptr %46, null
  br i1 %tobool133.not.3, label %for.inc138.2.for.inc138.3_crit_edge, label %if.then134.3

for.inc138.2.for.inc138.3_crit_edge:              ; preds = %for.inc138.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc138.3

if.then134.3:                                     ; preds = %for.inc138.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %46) #10
  br label %for.inc138.3

for.inc138.3:                                     ; preds = %if.then134.3, %for.inc138.2.for.inc138.3_crit_edge
  %arrayidx132.4 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 4
  %47 = ptrtoint ptr %arrayidx132.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx132.4, align 4
  %tobool133.not.4 = icmp eq ptr %48, null
  br i1 %tobool133.not.4, label %for.inc138.3.for.inc138.4_crit_edge, label %if.then134.4

for.inc138.3.for.inc138.4_crit_edge:              ; preds = %for.inc138.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc138.4

if.then134.4:                                     ; preds = %for.inc138.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %48) #10
  br label %for.inc138.4

for.inc138.4:                                     ; preds = %if.then134.4, %for.inc138.3.for.inc138.4_crit_edge
  %arrayidx132.5 = getelementptr %struct.pci_endpoint_test, ptr %call.i, i32 0, i32 2, i32 5
  %49 = ptrtoint ptr %arrayidx132.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx132.5, align 4
  %tobool133.not.5 = icmp eq ptr %50, null
  br i1 %tobool133.not.5, label %for.inc138.4.err_disable_irq_crit_edge, label %if.then134.5

for.inc138.4.err_disable_irq_crit_edge:           ; preds = %for.inc138.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_irq

if.then134.5:                                     ; preds = %for.inc138.4
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %50) #10
  br label %err_disable_irq

err_disable_irq:                                  ; preds = %if.then134.5, %for.inc138.4.err_disable_irq_crit_edge, %if.end41.err_disable_irq_crit_edge
  %err.4 = phi i32 [ -22, %if.end41.err_disable_irq_crit_edge ], [ %err.3, %if.then134.5 ], [ %err.3, %for.inc138.4.err_disable_irq_crit_edge ]
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void @pci_free_irq_vectors(ptr noundef %52) #10
  %53 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %irq_type, align 4
  call void @pci_release_regions(ptr noundef %pdev) #10
  br label %err_disable_pdev

err_disable_pdev:                                 ; preds = %err_disable_irq, %do.end40
  %err.5 = phi i32 [ %call35, %do.end40 ], [ %err.4, %err_disable_irq ]
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pdev, %if.end117.cleanup_crit_edge, %do.end33, %do.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end26 ], [ %call28, %do.end33 ], [ %err.5, %err_disable_pdev ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %name) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_endpoint_test_remove(ptr noundef %pdev) #2 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !193
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %miscdev = getelementptr inbounds %struct.pci_endpoint_test, ptr %2, i32 0, i32 8
  %name = getelementptr inbounds %struct.pci_endpoint_test, ptr %2, i32 0, i32 8, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef nonnull %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @misc_deregister(ptr noundef %miscdev) #10
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %8) #10
  %name7 = getelementptr inbounds %struct.pci_endpoint_test, ptr %2, i32 0, i32 11
  %9 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name7, align 4
  call void @kfree(ptr noundef %10) #10
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  call void @ida_free(ptr noundef nonnull @pci_endpoint_test_ida, i32 noundef %12) #10
  %arrayidx = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end4.for.inc_crit_edge, label %if.then10

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %14) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end4.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %16, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then10.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %16) #10
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %18, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then10.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %18) #10
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %20, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then10.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then10.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %20) #10
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then10.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 4
  %21 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %22, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then10.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.4

if.then10.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %22) #10
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then10.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.pci_endpoint_test, ptr %2, i32 0, i32 2, i32 5
  %23 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %24, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then10.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.5

if.then10.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %24) #10
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then10.5, %for.inc.4.for.inc.5_crit_edge
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %2, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %num_irqs.i = getelementptr inbounds %struct.pci_endpoint_test, ptr %2, i32 0, i32 5
  %27 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10.i = icmp sgt i32 %28, 0
  br i1 %cmp10.i, label %for.inc.5.for.body.i_crit_edge, label %for.inc.5.pci_endpoint_test_release_irq.exit_crit_edge

for.inc.5.pci_endpoint_test_release_irq.exit_crit_edge: ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_release_irq.exit

for.inc.5.for.body.i_crit_edge:                   ; preds = %for.inc.5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.inc.5.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.inc.5.for.body.i_crit_edge ]
  %call.i = call i32 @pci_irq_vector(ptr noundef %26, i32 noundef %i.011.i) #10
  call void @devm_free_irq(ptr noundef %dev2.i, i32 noundef %call.i, ptr noundef %2) #10
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %29 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_irqs.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %30
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pci_endpoint_test_release_irq.exit_crit_edge

for.body.i.pci_endpoint_test_release_irq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_release_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

pci_endpoint_test_release_irq.exit:               ; preds = %for.body.i.pci_endpoint_test_release_irq.exit_crit_edge, %for.inc.5.pci_endpoint_test_release_irq.exit_crit_edge
  %31 = ptrtoint ptr %num_irqs.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %num_irqs.i, align 4
  %32 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %2, align 4
  call void @pci_free_irq_vectors(ptr noundef %33) #10
  %irq_type.i = getelementptr inbounds %struct.pci_endpoint_test, ptr %2, i32 0, i32 6
  %34 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %irq_type.i, align 4
  call void @pci_release_regions(ptr noundef %pdev) #10
  call void @pci_disable_device(ptr noundef %pdev) #10
  br label %cleanup

cleanup:                                          ; preds = %pci_endpoint_test_release_irq.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_sriov_configure_simple(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr nocapture noundef %test, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog.sink.split_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb11
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb:                                            ; preds = %entry
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %call.i38 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 32, i32 noundef 2, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %cmp5 = icmp slt i32 %call.i38, 0
  br i1 %cmp5, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  %call.i39 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %1, i32 noundef 1, i32 noundef 2048, i32 noundef 4, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp13 = icmp slt i32 %call.i39, 0
  br i1 %cmp13, label %sw.bb11.sw.epilog.sink.split_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb11.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11.sw.epilog.sink.split_crit_edge, %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.28, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.31, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ @.str.34, %sw.bb11.sw.epilog.sink.split_crit_edge ], [ @.str.37, %entry.sw.epilog.sink.split_crit_edge ]
  %irq.0.ph = phi i32 [ %call.i, %sw.bb.sw.epilog.sink.split_crit_edge ], [ %call.i38, %sw.bb3.sw.epilog.sink.split_crit_edge ], [ %call.i39, %sw.bb11.sw.epilog.sink.split_crit_edge ], [ -1, %entry.sw.epilog.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull %.str.34.sink) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %irq.0 = phi i32 [ %call.i39, %sw.bb11.sw.epilog_crit_edge ], [ %call.i38, %sw.bb3.sw.epilog_crit_edge ], [ %call.i, %sw.bb.sw.epilog_crit_edge ], [ %irq.0.ph, %sw.epilog.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq.0)
  %cmp22 = icmp sgt i32 %irq.0, -1
  %3 = tail call i32 @llvm.smax.i32(i32 %irq.0, i32 0)
  %irq_type = getelementptr inbounds %struct.pci_endpoint_test, ptr %test, i32 0, i32 6
  %4 = ptrtoint ptr %irq_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %type, ptr %irq_type, align 4
  %num_irqs = getelementptr inbounds %struct.pci_endpoint_test, ptr %test, i32 0, i32 5
  %5 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %num_irqs, align 4
  ret i1 %cmp22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef %test) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %num_irqs = getelementptr inbounds %struct.pci_endpoint_test, ptr %test, i32 0, i32 5
  %2 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp39 = icmp sgt i32 %3, 0
  br i1 %cmp39, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %name = getelementptr inbounds %struct.pci_endpoint_test, ptr %test, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.040) #10
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %call, ptr noundef nonnull @pci_endpoint_test_irqhandler, ptr noundef null, i32 noundef 128, ptr noundef %5, ptr noundef %test) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.inc, label %fail

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.040, 1
  %6 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_irqs, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

fail:                                             ; preds = %for.body
  %8 = load i32, ptr @irq_type, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %8, label %fail.cleanup_crit_edge [
    i32 0, label %do.end
    i32 1, label %do.end8
    i32 2, label %do.end13
  ]

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.040) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.40, i32 noundef %call4) #13
  br label %cleanup

do.end8:                                          ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.040) #10
  %add = add nuw nsw i32 %i.040, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.43, i32 noundef %call9, i32 noundef %add) #13
  br label %cleanup

do.end13:                                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.040) #10
  %add15 = add nuw nsw i32 %i.040, 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.46, i32 noundef %call14, i32 noundef %add15) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end8, %do.end, %fail.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp37 = phi i1 [ false, %do.end ], [ false, %do.end8 ], [ false, %do.end13 ], [ false, %fail.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ true, %for.inc.cleanup_crit_edge ]
  ret i1 %cmp37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pci_endpoint_test_release_irq(ptr noundef %test) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %num_irqs = getelementptr inbounds %struct.pci_endpoint_test, ptr %test, i32 0, i32 5
  %2 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp sgt i32 %3, 0
  br i1 %cmp10, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.011) #10
  tail call void @devm_free_irq(ptr noundef %dev2, i32 noundef %call, ptr noundef %test) #10
  %inc = add nuw nsw i32 %i.011, 1
  %4 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_irqs, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_irqs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_irqhandler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.pci_endpoint_test, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !194
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %last_irq = getelementptr inbounds %struct.pci_endpoint_test, ptr %dev_id, i32 0, i32 4
  %4 = ptrtoint ptr %last_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %irq, ptr %last_irq, align 4
  %irq_raised = getelementptr inbounds %struct.pci_endpoint_test, ptr %dev_id, i32 0, i32 3
  tail call void @complete(ptr noundef %irq_raised) #10
  %and1 = and i32 %3, -65
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg.0 = phi i32 [ %and1, %if.then ], [ %3, %entry.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %reg.0) #10
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %5) #10, !srcloc !197
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_endpoint_test_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %param.i150 = alloca %struct.pci_endpoint_test_xfer_param, align 8
  %param.i70 = alloca %struct.pci_endpoint_test_xfer_param, align 8
  %param.i = alloca %struct.pci_endpoint_test_xfer_param, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -192
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %mutex = getelementptr i8, ptr %1, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %cmd, label %entry.ret34_crit_edge [
    i32 20481, label %sw.bb
    i32 20482, label %sw.bb9
    i32 1074024451, label %entry.sw.bb12_crit_edge
    i32 1074024455, label %entry.sw.bb12_crit_edge258
    i32 1074024452, label %sw.bb18
    i32 1074024453, label %sw.bb21
    i32 1074024454, label %sw.bb24
    i32 1074024456, label %sw.bb27
    i32 20489, label %sw.bb30
    i32 20496, label %sw.bb31
  ]

entry.sw.bb12_crit_edge258:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

entry.ret34_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %arg)
  %cmp = icmp ugt i32 %arg, 5
  br i1 %cmp, label %sw.bb.ret34_crit_edge, label %if.end

sw.bb.ret34_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

if.end:                                           ; preds = %sw.bb
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20468, i16 %6)
  %cmp2 = icmp eq i16 %6, -20468
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp4 = icmp eq i32 %arg, 0
  %or.cond = and i1 %cmp4, %cmp2
  br i1 %or.cond, label %if.end.ret34_crit_edge, label %if.end7

if.end.ret34_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

if.end7:                                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.pci_endpoint_test, ptr %add.ptr, i32 0, i32 2, i32 %arg
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end7.ret34_crit_edge, label %if.end.i

if.end7.ret34_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

if.end.i:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %end.i = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %arg, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %if.end.i.cond.end.i_crit_edge, label %cond.false.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.i = getelementptr %struct.pci_dev, ptr %10, i32 0, i32 47, i32 %arg
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx2.i, align 8
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %14
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.end.i.cond.end.i_crit_edge ]
  %test_reg_bar.i = getelementptr i8, ptr %1, i32 40
  %15 = ptrtoint ptr %test_reg_bar.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %test_reg_bar.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %arg)
  %cmp8.i = icmp eq i32 %16, %arg
  %spec.store.select.i = select i1 %cmp8.i, i32 4, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp1145.i = icmp sgt i32 %spec.store.select.i, 0
  br i1 %cmp1145.i, label %cond.end.i.for.body.i_crit_edge, label %cond.end.i.ret34_crit_edge

cond.end.i.ret34_crit_edge:                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.i.for.body.i_crit_edge
  %j.046.i = phi i32 [ %add12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.end.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %j.046.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1600085856) #10, !srcloc !197
  %add12.i = add i32 %j.046.i, 4
  %cmp11.i = icmp slt i32 %add12.i, %spec.store.select.i
  br i1 %cmp11.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.body15.i_crit_edge

for.body.i.for.body15.i_crit_edge:                ; preds = %for.body.i
  br label %for.body15.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond13.i:                                     ; preds = %for.body15.i
  %add20.i = add i32 %j.148.i, 4
  %cmp14.i = icmp slt i32 %add20.i, %spec.store.select.i
  br i1 %cmp14.i, label %for.cond13.i.for.body15.i_crit_edge, label %for.cond13.i.ret34_crit_edge

for.cond13.i.ret34_crit_edge:                     ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

for.cond13.i.for.body15.i_crit_edge:              ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.cond13.i.for.body15.i_crit_edge, %for.body.i.for.body15.i_crit_edge
  %j.148.i = phi i32 [ %add20.i, %for.cond13.i.for.body15.i_crit_edge ], [ 0, %for.body.i.for.body15.i_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i44.i = getelementptr i8, ptr %20, i32 %j.148.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44.i) #10, !srcloc !194
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1600085856, i32 %21)
  %cmp16.not.i = icmp eq i32 %21, -1600085856
  br i1 %cmp16.not.i, label %for.cond13.i, label %for.body15.i.ret34_crit_edge

for.body15.i.ret34_crit_edge:                     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %base.i.i = getelementptr i8, ptr %1, i32 -188
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 0) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 0) #10, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 16777216) #10, !srcloc !197
  %irq_raised.i = getelementptr i8, ptr %1, i32 -160
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %irq_raised.i, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i55 = icmp ne i32 %call1.i, 0
  %conv11 = zext i1 %tobool.not.i55 to i32
  br label %ret34

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge258
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074024455, i32 %cmd)
  %cmp14 = icmp eq i32 %cmd, 1074024455
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %cond.i56 = select i1 %cmp14, i32 33554432, i32 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %base.i.i57 = getelementptr i8, ptr %1, i32 -188
  %30 = ptrtoint ptr %base.i.i57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i57, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %31, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 %cond.i56) #10, !srcloc !197
  %conv3.i = and i32 %arg, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #10
  %33 = ptrtoint ptr %base.i.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i57, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %34, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 %32) #10, !srcloc !197
  %cond8.i = select i1 %cmp14, i32 67108864, i32 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %base.i.i57 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i57, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %36, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %cond8.i) #10, !srcloc !197
  %irq_raised.i59 = getelementptr i8, ptr %1, i32 -160
  %call9.i = tail call i32 @wait_for_completion_timeout(ptr noundef %irq_raised.i59, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %sw.bb12.ret34_crit_edge, label %if.end.i61

sw.bb12.ret34_crit_edge:                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

if.end.i61:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i60 = add nsw i32 %conv3.i, -1
  %call12.i = tail call i32 @pci_irq_vector(ptr noundef %29, i32 noundef %sub.i60) #10
  %last_irq.i = getelementptr i8, ptr %1, i32 -104
  %37 = ptrtoint ptr %last_irq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %last_irq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %38)
  %cmp13.i = icmp eq i32 %call12.i, %38
  %phi.cast = zext i1 %cmp13.i to i32
  br label %ret34

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i) #10
  %39 = ptrtoint ptr %param.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 -1, ptr %param.i, align 8, !annotation !193
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %alignment3.i = getelementptr i8, ptr %1, i32 44
  %42 = ptrtoint ptr %alignment3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %alignment3.i, align 4
  %irq_type4.i = getelementptr i8, ptr %1, i32 -96
  %44 = ptrtoint ptr %irq_type4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq_type4.i, align 4
  %46 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 156) #10
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i, label %sw.bb18.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb18.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb18
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 8, i32 -1226833920) #14, !srcloc !200
  %asmresult.i.i.i = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !201

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param.i, i32 noundef 8) #10
  %48 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #8, !srcloc !202
  %and.i.i.i.i.i = and i32 %50, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %param.i, ptr noundef %46, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i64, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !201

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb18.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %sw.bb18.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %param.i, i32 %sub.i.i.i
  %51 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.48) #13
  br label %pci_endpoint_test_write.exit

if.end.i64:                                       ; preds = %if.end.i.i.i
  %52 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %param.i, align 8
  %sub.i63 = xor i32 %43, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub.i63)
  %cmp6.i = icmp ugt i32 %53, %sub.i63
  br i1 %cmp6.i, label %if.end.i64.pci_endpoint_test_write.exit_crit_edge, label %if.end8.i

if.end.i64.pci_endpoint_test_write.exit_crit_edge: ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_write.exit

if.end8.i:                                        ; preds = %if.end.i64
  %flags9.i = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %param.i, i32 0, i32 1
  %54 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %flags9.i, align 4
  %56 = and i8 %55, 1
  %57 = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %58 = icmp ugt i32 %45, 2
  br i1 %58, label %do.end21.i, label %if.end22.i

do.end21.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.51) #13
  br label %pci_endpoint_test_write.exit

if.end22.i:                                       ; preds = %if.end8.i
  %add.i65 = add i32 %53, %43
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i65, i32 noundef 3520) #15
  %tobool24.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool24.not.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.54) #13
  br label %pci_endpoint_test_write.exit

if.end29.i:                                       ; preds = %if.end22.i
  call void @get_random_bytes(ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i65) #10
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i) #10
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end29.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i131.i, !prof !201

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i

if.then.i131.i:                                   ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %dev2.i) #10
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i132.i, label %if.then.i131.i.dev_name.exit.i.i_crit_edge

if.then.i131.i.dev_name.exit.i.i_crit_edge:       ; preds = %if.then.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i

if.end.i.i132.i:                                  ; preds = %if.then.i131.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %dev2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev2.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i132.i, %if.then.i131.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %62, %if.end.i.i132.i ], [ %60, %if.then.i131.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #10
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev2.i, i32 noundef -1) #10
  br label %do.end38.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end29.i
  call void @debug_dma_map_single(ptr noundef %dev2.i, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i65) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %call9.i.i.i to i32
  %sub.i.i = add i32 %64, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i66 = getelementptr %struct.page, ptr %63, i32 %shr.i.i
  %and.i.i = and i32 %64, 3968
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev2.i, ptr noundef %add.ptr.i.i66, i32 noundef %and.i.i, i32 noundef %add.i65, i32 noundef 1, i32 noundef 0) #10
  call void @debug_dma_mapping_error(ptr noundef %dev2.i, i32 noundef %call41.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end38.i_crit_edge, label %if.end39.i

dma_map_single_attrs.exit.i.do.end38.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i

do.end38.i:                                       ; preds = %dma_map_single_attrs.exit.i.do.end38.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.57) #13
  br label %err_phys_addr.i

if.end39.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool40.not.i = icmp eq i32 %43, 0
  br i1 %tobool40.not.i, label %if.end39.i.if.end51.i_crit_edge, label %land.lhs.true.i

if.end39.i.if.end51.i_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

land.lhs.true.i:                                  ; preds = %if.end39.i
  %sub41.i = add i32 %43, -1
  %and42.i = and i32 %call41.i.i, %sub41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp43.i = icmp eq i32 %and42.i, 0
  br i1 %cmp43.i, label %land.lhs.true.i.if.end51.i_crit_edge, label %if.then45.i

land.lhs.true.i.if.end51.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i

if.then45.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %add47.i = add i32 %call41.i.i, %sub41.i
  %neg.i = sub i32 0, %43
  %and49.i = and i32 %add47.i, %neg.i
  %sub50.i = sub i32 %and49.i, %call41.i.i
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 %sub50.i
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then45.i, %land.lhs.true.i.if.end51.i_crit_edge, %if.end39.i.if.end51.i_crit_edge
  %addr.0.i = phi ptr [ %add.ptr.i, %if.then45.i ], [ %call9.i.i.i, %land.lhs.true.i.if.end51.i_crit_edge ], [ %call9.i.i.i, %if.end39.i.if.end51.i_crit_edge ]
  %phys_addr.0.i = phi i32 [ %and49.i, %if.then45.i ], [ %call41.i.i, %land.lhs.true.i.if.end51.i_crit_edge ], [ %call41.i.i, %if.end39.i.if.end51.i_crit_edge ]
  %call52.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.0.i, i32 noundef %53) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %65 = call i32 @llvm.bswap.i32(i32 %call52.i) #10
  %base.i.i67 = getelementptr i8, ptr %1, i32 -188
  %66 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i133.i = getelementptr i8, ptr %67, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133.i, i32 %65) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %68 = call i32 @llvm.bswap.i32(i32 %phys_addr.0.i) #10
  %69 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i135.i = getelementptr i8, ptr %70, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i135.i, i32 %68) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %71 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i137.i = getelementptr i8, ptr %72, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137.i, i32 0) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %73 = call i32 @llvm.bswap.i32(i32 %53) #10
  %74 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i139.i = getelementptr i8, ptr %75, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139.i, i32 %73) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %76 = shl nuw nsw i32 %57, 24
  %77 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %78, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 %76) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %79 = call i32 @llvm.bswap.i32(i32 %45) #10
  %80 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i143.i = getelementptr i8, ptr %81, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143.i, i32 %79) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i145.i = getelementptr i8, ptr %83, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145.i, i32 16777216) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i147.i = getelementptr i8, ptr %85, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147.i, i32 134217728) #10, !srcloc !197
  %irq_raised.i68 = getelementptr i8, ptr %1, i32 -160
  call void @wait_for_completion(ptr noundef %irq_raised.i68) #10
  %86 = ptrtoint ptr %base.i.i67 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i67, align 4
  %add.ptr.i149.i = getelementptr i8, ptr %87, i32 8
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i149.i) #10, !srcloc !194
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %89 = and i32 %88, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool57.i = icmp ne i32 %89, 0
  call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %call41.i.i, i32 noundef %add.i65, i32 noundef 1, i32 noundef 0) #10
  br label %err_phys_addr.i

err_phys_addr.i:                                  ; preds = %if.end51.i, %do.end38.i
  %ret.1.i = phi i1 [ false, %do.end38.i ], [ %tobool57.i, %if.end51.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #10
  br label %pci_endpoint_test_write.exit

pci_endpoint_test_write.exit:                     ; preds = %err_phys_addr.i, %do.end28.i, %do.end21.i, %if.end.i64.pci_endpoint_test_write.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i69 = phi i1 [ false, %if.then11.i.i.i ], [ false, %if.end.i64.pci_endpoint_test_write.exit_crit_edge ], [ false, %do.end21.i ], [ %ret.1.i, %err_phys_addr.i ], [ false, %do.end28.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i) #10
  %conv20 = zext i1 %retval.0.i69 to i32
  br label %ret34

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i70) #10
  %90 = ptrtoint ptr %param.i70 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 -1, ptr %param.i70, align 8, !annotation !193
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr, align 4
  %dev2.i71 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44
  %alignment3.i72 = getelementptr i8, ptr %1, i32 44
  %93 = ptrtoint ptr %alignment3.i72 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %alignment3.i72, align 4
  %irq_type4.i73 = getelementptr i8, ptr %1, i32 -96
  %95 = ptrtoint ptr %irq_type4.i73 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq_type4.i73, align 4
  %97 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 156) #10
  %call.i.i.i74 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i74, label %sw.bb21.if.then11.i.i.i89_crit_edge, label %land.lhs.true.i.i.i77

sw.bb21.if.then11.i.i.i89_crit_edge:              ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i89

land.lhs.true.i.i.i77:                            ; preds = %sw.bb21
  %98 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %97, i32 8, i32 -1226833920) #14, !srcloc !200
  %asmresult.i.i.i75 = extractvalue { i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i75)
  %cmp.i.i.i76 = icmp eq i32 %asmresult.i.i.i75, 0
  br i1 %cmp.i.i.i76, label %if.end.i.i.i85, label %land.lhs.true.i.i.i77.if.then11.i.i.i89_crit_edge, !prof !201

land.lhs.true.i.i.i77.if.then11.i.i.i89_crit_edge: ; preds = %land.lhs.true.i.i.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i89

if.end.i.i.i85:                                   ; preds = %land.lhs.true.i.i.i77
  %call.i.i.i.i78 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param.i70, i32 noundef 8) #10
  %99 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i.i.i.i.i79 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i.i79 to ptr
  %cpu_domain.i.i.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 4
  %101 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i80) #8, !srcloc !202
  %and.i.i.i.i.i81 = and i32 %101, -13
  %or.i.i.i.i.i82 = or i32 %and.i.i.i.i.i81, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i82) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %call1.i.i.i.i83 = call i32 @arm_copy_from_user(ptr noundef nonnull %param.i70, ptr noundef %97, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %101) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i83)
  %tobool4.not.i.i.i84 = icmp eq i32 %call1.i.i.i.i83, 0
  br i1 %tobool4.not.i.i.i84, label %if.end.i92, label %if.end.i.i.i85.if.then11.i.i.i89_crit_edge, !prof !201

if.end.i.i.i85.if.then11.i.i.i89_crit_edge:       ; preds = %if.end.i.i.i85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i89

if.then11.i.i.i89:                                ; preds = %if.end.i.i.i85.if.then11.i.i.i89_crit_edge, %land.lhs.true.i.i.i77.if.then11.i.i.i89_crit_edge, %sw.bb21.if.then11.i.i.i89_crit_edge
  %res.03.i.i.i86 = phi i32 [ %call1.i.i.i.i83, %if.end.i.i.i85.if.then11.i.i.i89_crit_edge ], [ 8, %sw.bb21.if.then11.i.i.i89_crit_edge ], [ 8, %land.lhs.true.i.i.i77.if.then11.i.i.i89_crit_edge ]
  %sub.i.i.i87 = sub i32 8, %res.03.i.i.i86
  %add.ptr.i.i.i88 = getelementptr i8, ptr %param.i70, i32 %sub.i.i.i87
  %102 = call ptr @memset(ptr %add.ptr.i.i.i88, i32 0, i32 %res.03.i.i.i86)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i71, ptr noundef nonnull @.str.48) #13
  br label %pci_endpoint_test_read.exit

if.end.i92:                                       ; preds = %if.end.i.i.i85
  %103 = ptrtoint ptr %param.i70 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %param.i70, align 8
  %sub.i90 = xor i32 %94, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %sub.i90)
  %cmp.i91 = icmp ugt i32 %104, %sub.i90
  br i1 %cmp.i91, label %if.end.i92.pci_endpoint_test_read.exit_crit_edge, label %if.end7.i

if.end.i92.pci_endpoint_test_read.exit_crit_edge: ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_read.exit

if.end7.i:                                        ; preds = %if.end.i92
  %flags8.i = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %param.i70, i32 0, i32 1
  %105 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %flags8.i, align 4
  %107 = and i8 %106, 1
  %108 = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %96)
  %109 = icmp ugt i32 %96, 2
  br i1 %109, label %do.end21.i93, label %if.end22.i95

do.end21.i93:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i71, ptr noundef nonnull @.str.51) #13
  br label %pci_endpoint_test_read.exit

if.end22.i95:                                     ; preds = %if.end7.i
  %add.i94 = add i32 %104, %94
  %call9.i.i.i118 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i94, i32 noundef 3520) #15
  %tobool24.not.i121 = icmp eq ptr %call9.i.i.i118, null
  br i1 %tobool24.not.i121, label %do.end28.i123, label %if.end29.i125

do.end28.i123:                                    ; preds = %if.end22.i95
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i71, ptr noundef nonnull @.str.68) #13
  br label %pci_endpoint_test_read.exit

if.end29.i125:                                    ; preds = %if.end22.i95
  %call.i.i124 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i118) #10
  br i1 %call.i.i124, label %land.rhs.i.i127, label %dma_map_single_attrs.exit.i140

land.rhs.i.i127:                                  ; preds = %if.end29.i125
  %.b1.i.i126 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i126, label %land.rhs.i.i127.dma_map_single_attrs.exit.thread.i133_crit_edge, label %if.then.i126.i, !prof !201

land.rhs.i.i127.dma_map_single_attrs.exit.thread.i133_crit_edge: ; preds = %land.rhs.i.i127
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i133

if.then.i126.i:                                   ; preds = %land.rhs.i.i127
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i128 = call ptr @dev_driver_string(ptr noundef %dev2.i71) #10
  %init_name.i.i.i129 = getelementptr inbounds %struct.pci_dev, ptr %92, i32 0, i32 44, i32 3
  %110 = ptrtoint ptr %init_name.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i.i.i129, align 8
  %tobool.not.i.i.i130 = icmp eq ptr %111, null
  br i1 %tobool.not.i.i.i130, label %if.end.i.i127.i, label %if.then.i126.i.dev_name.exit.i.i132_crit_edge

if.then.i126.i.dev_name.exit.i.i132_crit_edge:    ; preds = %if.then.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i132

if.end.i.i127.i:                                  ; preds = %if.then.i126.i
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %dev2.i71 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev2.i71, align 4
  br label %dev_name.exit.i.i132

dev_name.exit.i.i132:                             ; preds = %if.end.i.i127.i, %if.then.i126.i.dev_name.exit.i.i132_crit_edge
  %retval.0.i.i.i131 = phi ptr [ %113, %if.end.i.i127.i ], [ %111, %if.then.i126.i.dev_name.exit.i.i132_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %call16.i.i128, ptr noundef %retval.0.i.i.i131) #10
  br label %dma_map_single_attrs.exit.thread.i133

dma_map_single_attrs.exit.thread.i133:            ; preds = %dev_name.exit.i.i132, %land.rhs.i.i127.dma_map_single_attrs.exit.thread.i133_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev2.i71, i32 noundef -1) #10
  br label %do.end37.i

dma_map_single_attrs.exit.i140:                   ; preds = %if.end29.i125
  call void @debug_dma_map_single(ptr noundef %dev2.i71, ptr noundef nonnull %call9.i.i.i118, i32 noundef %add.i94) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %114 = load ptr, ptr @mem_map, align 4
  %115 = ptrtoint ptr %call9.i.i.i118 to i32
  %sub.i.i134 = add i32 %115, 1073741824
  %shr.i.i135 = lshr i32 %sub.i.i134, 12
  %add.ptr.i.i136 = getelementptr %struct.page, ptr %114, i32 %shr.i.i135
  %and.i.i137 = and i32 %115, 3968
  %call41.i.i138 = call i32 @dma_map_page_attrs(ptr noundef %dev2.i71, ptr noundef %add.ptr.i.i136, i32 noundef %and.i.i137, i32 noundef %add.i94, i32 noundef 2, i32 noundef 0) #10
  call void @debug_dma_mapping_error(ptr noundef %dev2.i71, i32 noundef %call41.i.i138) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i138)
  %cmp.i.i139 = icmp eq i32 %call41.i.i138, -1
  br i1 %cmp.i.i139, label %dma_map_single_attrs.exit.i140.do.end37.i_crit_edge, label %if.end38.i

dma_map_single_attrs.exit.i140.do.end37.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37.i

do.end37.i:                                       ; preds = %dma_map_single_attrs.exit.i140.do.end37.i_crit_edge, %dma_map_single_attrs.exit.thread.i133
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i71, ptr noundef nonnull @.str.57) #13
  br label %err_phys_addr.i148

if.end38.i:                                       ; preds = %dma_map_single_attrs.exit.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool39.not.i = icmp eq i32 %94, 0
  br i1 %tobool39.not.i, label %if.end38.i.if.end50.i_crit_edge, label %land.lhs.true.i141

if.end38.i.if.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

land.lhs.true.i141:                               ; preds = %if.end38.i
  %sub40.i = add i32 %94, -1
  %and41.i = and i32 %call41.i.i138, %sub40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %cmp42.i = icmp eq i32 %and41.i, 0
  br i1 %cmp42.i, label %land.lhs.true.i141.if.end50.i_crit_edge, label %if.then44.i

land.lhs.true.i141.if.end50.i_crit_edge:          ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50.i

if.then44.i:                                      ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #12
  %add46.i = add i32 %call41.i.i138, %sub40.i
  %neg.i142 = sub i32 0, %94
  %and48.i = and i32 %add46.i, %neg.i142
  %sub49.i = sub i32 %and48.i, %call41.i.i138
  %add.ptr.i143 = getelementptr i8, ptr %call9.i.i.i118, i32 %sub49.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then44.i, %land.lhs.true.i141.if.end50.i_crit_edge, %if.end38.i.if.end50.i_crit_edge
  %addr.0.i144 = phi ptr [ %add.ptr.i143, %if.then44.i ], [ %call9.i.i.i118, %land.lhs.true.i141.if.end50.i_crit_edge ], [ %call9.i.i.i118, %if.end38.i.if.end50.i_crit_edge ]
  %phys_addr.0.i145 = phi i32 [ %and48.i, %if.then44.i ], [ %call41.i.i138, %land.lhs.true.i141.if.end50.i_crit_edge ], [ %call41.i.i138, %if.end38.i.if.end50.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %116 = call i32 @llvm.bswap.i32(i32 %phys_addr.0.i145) #10
  %base.i.i146 = getelementptr i8, ptr %1, i32 -188
  %117 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i128.i = getelementptr i8, ptr %118, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %116) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %119 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i130.i = getelementptr i8, ptr %120, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 0) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %121 = call i32 @llvm.bswap.i32(i32 %104) #10
  %122 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i132.i = getelementptr i8, ptr %123, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 %121) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %124 = shl nuw nsw i32 %108, 24
  %125 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i134.i = getelementptr i8, ptr %126, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %124) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %127 = call i32 @llvm.bswap.i32(i32 %96) #10
  %128 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %129, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 %127) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %130 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i138.i = getelementptr i8, ptr %131, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 16777216) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %132 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %133, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 268435456) #10, !srcloc !197
  %irq_raised.i147 = getelementptr i8, ptr %1, i32 -160
  call void @wait_for_completion(ptr noundef %irq_raised.i147) #10
  call void @dma_unmap_page_attrs(ptr noundef %dev2.i71, i32 noundef %call41.i.i138, i32 noundef %add.i94, i32 noundef 2, i32 noundef 0) #10
  %call54.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.0.i144, i32 noundef %104) #16
  %134 = ptrtoint ptr %base.i.i146 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base.i.i146, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %135, i32 32
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142.i) #10, !srcloc !194
  %137 = call i32 @llvm.bswap.i32(i32 %136) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  call void @__sanitizer_cov_trace_cmp4(i32 %call54.i, i32 %137)
  %cmp56.i = icmp eq i32 %call54.i, %137
  br label %err_phys_addr.i148

err_phys_addr.i148:                               ; preds = %if.end50.i, %do.end37.i
  %ret.0.i = phi i1 [ false, %do.end37.i ], [ %cmp56.i, %if.end50.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i118) #10
  br label %pci_endpoint_test_read.exit

pci_endpoint_test_read.exit:                      ; preds = %err_phys_addr.i148, %do.end28.i123, %do.end21.i93, %if.end.i92.pci_endpoint_test_read.exit_crit_edge, %if.then11.i.i.i89
  %retval.0.i149 = phi i1 [ false, %if.then11.i.i.i89 ], [ false, %if.end.i92.pci_endpoint_test_read.exit_crit_edge ], [ false, %do.end21.i93 ], [ %ret.0.i, %err_phys_addr.i148 ], [ false, %do.end28.i123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i70) #10
  %conv23 = zext i1 %retval.0.i149 to i32
  br label %ret34

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %param.i150) #10
  %138 = ptrtoint ptr %param.i150 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 -1, ptr %param.i150, align 8, !annotation !193
  %139 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr, align 4
  %dev2.i151 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %alignment3.i152 = getelementptr i8, ptr %1, i32 44
  %141 = ptrtoint ptr %alignment3.i152 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %alignment3.i152, align 4
  %irq_type4.i153 = getelementptr i8, ptr %1, i32 -96
  %143 = ptrtoint ptr %irq_type4.i153 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq_type4.i153, align 4
  %145 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.61, i32 noundef 156) #10
  %call.i.i.i154 = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i.i154, label %sw.bb24.if.then11.i.i.i169_crit_edge, label %land.lhs.true.i.i.i157

sw.bb24.if.then11.i.i.i169_crit_edge:             ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i169

land.lhs.true.i.i.i157:                           ; preds = %sw.bb24
  %146 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %145, i32 8, i32 -1226833920) #14, !srcloc !200
  %asmresult.i.i.i155 = extractvalue { i32, i32 } %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i155)
  %cmp.i.i.i156 = icmp eq i32 %asmresult.i.i.i155, 0
  br i1 %cmp.i.i.i156, label %if.end.i.i.i165, label %land.lhs.true.i.i.i157.if.then11.i.i.i169_crit_edge, !prof !201

land.lhs.true.i.i.i157.if.then11.i.i.i169_crit_edge: ; preds = %land.lhs.true.i.i.i157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i169

if.end.i.i.i165:                                  ; preds = %land.lhs.true.i.i.i157
  %call.i.i.i.i158 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %param.i150, i32 noundef 8) #10
  %147 = call i32 @llvm.read_register.i32(metadata !181) #10
  %and.i.i.i.i.i.i.i159 = and i32 %147, -16384
  %148 = inttoptr i32 %and.i.i.i.i.i.i.i159 to ptr
  %cpu_domain.i.i.i.i.i.i160 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 4
  %149 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i160) #8, !srcloc !202
  %and.i.i.i.i.i161 = and i32 %149, -13
  %or.i.i.i.i.i162 = or i32 %and.i.i.i.i.i161, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i162) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  %call1.i.i.i.i163 = call i32 @arm_copy_from_user(ptr noundef nonnull %param.i150, ptr noundef %145, i32 noundef 8) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %149) #10, !srcloc !203
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i163)
  %tobool4.not.i.i.i164 = icmp eq i32 %call1.i.i.i.i163, 0
  br i1 %tobool4.not.i.i.i164, label %if.end.i172, label %if.end.i.i.i165.if.then11.i.i.i169_crit_edge, !prof !201

if.end.i.i.i165.if.then11.i.i.i169_crit_edge:     ; preds = %if.end.i.i.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i.i169

if.then11.i.i.i169:                               ; preds = %if.end.i.i.i165.if.then11.i.i.i169_crit_edge, %land.lhs.true.i.i.i157.if.then11.i.i.i169_crit_edge, %sw.bb24.if.then11.i.i.i169_crit_edge
  %res.03.i.i.i166 = phi i32 [ %call1.i.i.i.i163, %if.end.i.i.i165.if.then11.i.i.i169_crit_edge ], [ 8, %sw.bb24.if.then11.i.i.i169_crit_edge ], [ 8, %land.lhs.true.i.i.i157.if.then11.i.i.i169_crit_edge ]
  %sub.i.i.i167 = sub i32 8, %res.03.i.i.i166
  %add.ptr.i.i.i168 = getelementptr i8, ptr %param.i150, i32 %sub.i.i.i167
  %150 = call ptr @memset(ptr %add.ptr.i.i.i168, i32 0, i32 %res.03.i.i.i166)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.48) #13
  br label %pci_endpoint_test_copy.exit

if.end.i172:                                      ; preds = %if.end.i.i.i165
  %151 = ptrtoint ptr %param.i150 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %param.i150, align 8
  %sub.i170 = xor i32 %142, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %sub.i170)
  %cmp.i171 = icmp ugt i32 %152, %sub.i170
  br i1 %cmp.i171, label %if.end.i172.pci_endpoint_test_copy.exit_crit_edge, label %if.end7.i174

if.end.i172.pci_endpoint_test_copy.exit_crit_edge: ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_copy.exit

if.end7.i174:                                     ; preds = %if.end.i172
  %flags8.i173 = getelementptr inbounds %struct.pci_endpoint_test_xfer_param, ptr %param.i150, i32 0, i32 1
  %153 = ptrtoint ptr %flags8.i173 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %flags8.i173, align 4
  %155 = and i8 %154, 1
  %156 = zext i8 %155 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %144)
  %157 = icmp ugt i32 %144, 2
  br i1 %157, label %do.end21.i175, label %if.end22.i177

do.end21.i175:                                    ; preds = %if.end7.i174
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.51) #13
  br label %pci_endpoint_test_copy.exit

if.end22.i177:                                    ; preds = %if.end7.i174
  %add.i176 = add i32 %152, %142
  %call9.i.i.i200 = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i176, i32 noundef 3520) #15
  %tobool24.not.i203 = icmp eq ptr %call9.i.i.i200, null
  br i1 %tobool24.not.i203, label %do.end28.i205, label %if.end29.i207

do.end28.i205:                                    ; preds = %if.end22.i177
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.76) #13
  br label %pci_endpoint_test_copy.exit

if.end29.i207:                                    ; preds = %if.end22.i177
  call void @get_random_bytes(ptr noundef nonnull %call9.i.i.i200, i32 noundef %add.i176) #10
  %call.i.i206 = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i.i200) #10
  br i1 %call.i.i206, label %land.rhs.i.i209, label %dma_map_single_attrs.exit.i222

land.rhs.i.i209:                                  ; preds = %if.end29.i207
  %.b1.i.i208 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i208, label %land.rhs.i.i209.dma_map_single_attrs.exit.thread.i215_crit_edge, label %if.then.i201.i, !prof !201

land.rhs.i.i209.dma_map_single_attrs.exit.thread.i215_crit_edge: ; preds = %land.rhs.i.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit.thread.i215

if.then.i201.i:                                   ; preds = %land.rhs.i.i209
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i210 = call ptr @dev_driver_string(ptr noundef %dev2.i151) #10
  %init_name.i.i.i211 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44, i32 3
  %158 = ptrtoint ptr %init_name.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %init_name.i.i.i211, align 8
  %tobool.not.i.i.i212 = icmp eq ptr %159, null
  br i1 %tobool.not.i.i.i212, label %if.end.i.i202.i, label %if.then.i201.i.dev_name.exit.i.i214_crit_edge

if.then.i201.i.dev_name.exit.i.i214_crit_edge:    ; preds = %if.then.i201.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i.i214

if.end.i.i202.i:                                  ; preds = %if.then.i201.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = ptrtoint ptr %dev2.i151 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev2.i151, align 4
  br label %dev_name.exit.i.i214

dev_name.exit.i.i214:                             ; preds = %if.end.i.i202.i, %if.then.i201.i.dev_name.exit.i.i214_crit_edge
  %retval.0.i.i.i213 = phi ptr [ %161, %if.end.i.i202.i ], [ %159, %if.then.i201.i.dev_name.exit.i.i214_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %call16.i.i210, ptr noundef %retval.0.i.i.i213) #10
  br label %dma_map_single_attrs.exit.thread.i215

dma_map_single_attrs.exit.thread.i215:            ; preds = %dev_name.exit.i.i214, %land.rhs.i.i209.dma_map_single_attrs.exit.thread.i215_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev2.i151, i32 noundef -1) #10
  br label %do.end38.i223

dma_map_single_attrs.exit.i222:                   ; preds = %if.end29.i207
  call void @debug_dma_map_single(ptr noundef %dev2.i151, ptr noundef nonnull %call9.i.i.i200, i32 noundef %add.i176) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %162 = load ptr, ptr @mem_map, align 4
  %163 = ptrtoint ptr %call9.i.i.i200 to i32
  %sub.i.i216 = add i32 %163, 1073741824
  %shr.i.i217 = lshr i32 %sub.i.i216, 12
  %add.ptr.i.i218 = getelementptr %struct.page, ptr %162, i32 %shr.i.i217
  %and.i.i219 = and i32 %163, 3968
  %call41.i.i220 = call i32 @dma_map_page_attrs(ptr noundef %dev2.i151, ptr noundef %add.ptr.i.i218, i32 noundef %and.i.i219, i32 noundef %add.i176, i32 noundef 1, i32 noundef 0) #10
  call void @debug_dma_mapping_error(ptr noundef %dev2.i151, i32 noundef %call41.i.i220) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i220)
  %cmp.i.i221 = icmp eq i32 %call41.i.i220, -1
  br i1 %cmp.i.i221, label %dma_map_single_attrs.exit.i222.do.end38.i223_crit_edge, label %if.end39.i225

dma_map_single_attrs.exit.i222.do.end38.i223_crit_edge: ; preds = %dma_map_single_attrs.exit.i222
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38.i223

do.end38.i223:                                    ; preds = %dma_map_single_attrs.exit.i222.do.end38.i223_crit_edge, %dma_map_single_attrs.exit.thread.i215
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.57) #13
  br label %err_src_phys_addr.i

if.end39.i225:                                    ; preds = %dma_map_single_attrs.exit.i222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool40.not.i224 = icmp eq i32 %142, 0
  br i1 %tobool40.not.i224, label %if.end39.i225.if.end51.i238_crit_edge, label %land.lhs.true.i229

if.end39.i225.if.end51.i238_crit_edge:            ; preds = %if.end39.i225
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i238

land.lhs.true.i229:                               ; preds = %if.end39.i225
  %sub41.i226 = add i32 %142, -1
  %and42.i227 = and i32 %call41.i.i220, %sub41.i226
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i227)
  %cmp43.i228 = icmp eq i32 %and42.i227, 0
  br i1 %cmp43.i228, label %land.lhs.true.i229.if.end51.i238_crit_edge, label %if.then45.i235

land.lhs.true.i229.if.end51.i238_crit_edge:       ; preds = %land.lhs.true.i229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51.i238

if.then45.i235:                                   ; preds = %land.lhs.true.i229
  call void @__sanitizer_cov_trace_pc() #12
  %add47.i230 = add i32 %call41.i.i220, %sub41.i226
  %neg.i231 = sub i32 0, %142
  %and49.i232 = and i32 %add47.i230, %neg.i231
  %sub50.i233 = sub i32 %and49.i232, %call41.i.i220
  %add.ptr.i234 = getelementptr i8, ptr %call9.i.i.i200, i32 %sub50.i233
  br label %if.end51.i238

if.end51.i238:                                    ; preds = %if.then45.i235, %land.lhs.true.i229.if.end51.i238_crit_edge, %if.end39.i225.if.end51.i238_crit_edge
  %src_addr.0.i = phi ptr [ %add.ptr.i234, %if.then45.i235 ], [ %call9.i.i.i200, %land.lhs.true.i229.if.end51.i238_crit_edge ], [ %call9.i.i.i200, %if.end39.i225.if.end51.i238_crit_edge ]
  %src_phys_addr.0.i = phi i32 [ %and49.i232, %if.then45.i235 ], [ %call41.i.i220, %land.lhs.true.i229.if.end51.i238_crit_edge ], [ %call41.i.i220, %if.end39.i225.if.end51.i238_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %164 = call i32 @llvm.bswap.i32(i32 %src_phys_addr.0.i) #10
  %base.i.i236 = getelementptr i8, ptr %1, i32 -188
  %165 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i203.i = getelementptr i8, ptr %166, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i203.i, i32 %164) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %167 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i205.i = getelementptr i8, ptr %168, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i205.i, i32 0) #10, !srcloc !197
  %call54.i237 = call i32 @crc32_le(i32 noundef -1, ptr noundef %src_addr.0.i, i32 noundef %152) #16
  %call9.i.i231.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i176, i32 noundef 3520) #15
  %tobool57.not.i = icmp eq ptr %call9.i.i231.i, null
  br i1 %tobool57.not.i, label %do.end61.i, label %if.end62.i

do.end61.i:                                       ; preds = %if.end51.i238
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.68) #13
  br label %err_dst_addr.i

if.end62.i:                                       ; preds = %if.end51.i238
  %call.i235.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i231.i) #10
  br i1 %call.i235.i, label %land.rhs.i237.i, label %dma_map_single_attrs.exit252.i

land.rhs.i237.i:                                  ; preds = %if.end62.i
  %.b1.i236.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i236.i, label %land.rhs.i237.i.dma_map_single_attrs.exit252.thread.i_crit_edge, label %if.then.i241.i, !prof !201

land.rhs.i237.i.dma_map_single_attrs.exit252.thread.i_crit_edge: ; preds = %land.rhs.i237.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit252.thread.i

if.then.i241.i:                                   ; preds = %land.rhs.i237.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i238.i = call ptr @dev_driver_string(ptr noundef %dev2.i151) #10
  %init_name.i.i239.i = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44, i32 3
  %169 = ptrtoint ptr %init_name.i.i239.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %init_name.i.i239.i, align 8
  %tobool.not.i.i240.i = icmp eq ptr %170, null
  br i1 %tobool.not.i.i240.i, label %if.end.i.i242.i, label %if.then.i241.i.dev_name.exit.i244.i_crit_edge

if.then.i241.i.dev_name.exit.i244.i_crit_edge:    ; preds = %if.then.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i244.i

if.end.i.i242.i:                                  ; preds = %if.then.i241.i
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %dev2.i151 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dev2.i151, align 4
  br label %dev_name.exit.i244.i

dev_name.exit.i244.i:                             ; preds = %if.end.i.i242.i, %if.then.i241.i.dev_name.exit.i244.i_crit_edge
  %retval.0.i.i243.i = phi ptr [ %172, %if.end.i.i242.i ], [ %170, %if.then.i241.i.dev_name.exit.i244.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.62, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.63, ptr noundef %call16.i238.i, ptr noundef %retval.0.i.i243.i) #10
  br label %dma_map_single_attrs.exit252.thread.i

dma_map_single_attrs.exit252.thread.i:            ; preds = %dev_name.exit.i244.i, %land.rhs.i237.i.dma_map_single_attrs.exit252.thread.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev2.i151, i32 noundef -1) #10
  br label %do.end70.i

dma_map_single_attrs.exit252.i:                   ; preds = %if.end62.i
  call void @debug_dma_map_single(ptr noundef %dev2.i151, ptr noundef nonnull %call9.i.i231.i, i32 noundef %add.i176) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %173 = load ptr, ptr @mem_map, align 4
  %174 = ptrtoint ptr %call9.i.i231.i to i32
  %sub.i245.i = add i32 %174, 1073741824
  %shr.i246.i = lshr i32 %sub.i245.i, 12
  %add.ptr.i247.i = getelementptr %struct.page, ptr %173, i32 %shr.i246.i
  %and.i248.i = and i32 %174, 3968
  %call41.i249.i = call i32 @dma_map_page_attrs(ptr noundef %dev2.i151, ptr noundef %add.ptr.i247.i, i32 noundef %and.i248.i, i32 noundef %add.i176, i32 noundef 2, i32 noundef 0) #10
  call void @debug_dma_mapping_error(ptr noundef %dev2.i151, i32 noundef %call41.i249.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i249.i)
  %cmp.i253.i = icmp eq i32 %call41.i249.i, -1
  br i1 %cmp.i253.i, label %dma_map_single_attrs.exit252.i.do.end70.i_crit_edge, label %if.end71.i

dma_map_single_attrs.exit252.i.do.end70.i_crit_edge: ; preds = %dma_map_single_attrs.exit252.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end70.i

do.end70.i:                                       ; preds = %dma_map_single_attrs.exit252.i.do.end70.i_crit_edge, %dma_map_single_attrs.exit252.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i151, ptr noundef nonnull @.str.83) #13
  br label %err_dst_phys_addr.i

if.end71.i:                                       ; preds = %dma_map_single_attrs.exit252.i
  br i1 %tobool40.not.i224, label %if.end71.i.if.end87.i_crit_edge, label %land.lhs.true73.i

if.end71.i.if.end87.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

land.lhs.true73.i:                                ; preds = %if.end71.i
  %sub74.i = add i32 %142, -1
  %and75.i = and i32 %call41.i249.i, %sub74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %cmp76.i = icmp eq i32 %and75.i, 0
  br i1 %cmp76.i, label %land.lhs.true73.i.if.end87.i_crit_edge, label %if.then78.i

land.lhs.true73.i.if.end87.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then78.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #12
  %add80.i = add i32 %call41.i249.i, %sub74.i
  %neg82.i = sub i32 0, %142
  %and83.i = and i32 %add80.i, %neg82.i
  %sub84.i = sub i32 %and83.i, %call41.i249.i
  %add.ptr85.i = getelementptr i8, ptr %call9.i.i231.i, i32 %sub84.i
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then78.i, %land.lhs.true73.i.if.end87.i_crit_edge, %if.end71.i.if.end87.i_crit_edge
  %dst_addr.0.i = phi ptr [ %add.ptr85.i, %if.then78.i ], [ %call9.i.i231.i, %land.lhs.true73.i.if.end87.i_crit_edge ], [ %call9.i.i231.i, %if.end71.i.if.end87.i_crit_edge ]
  %dst_phys_addr.0.i = phi i32 [ %and83.i, %if.then78.i ], [ %call41.i249.i, %land.lhs.true73.i.if.end87.i_crit_edge ], [ %call41.i249.i, %if.end71.i.if.end87.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %175 = call i32 @llvm.bswap.i32(i32 %dst_phys_addr.0.i) #10
  %176 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i256.i = getelementptr i8, ptr %177, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256.i, i32 %175) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %178 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i258.i = getelementptr i8, ptr %179, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258.i, i32 0) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %180 = call i32 @llvm.bswap.i32(i32 %152) #10
  %181 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i260.i = getelementptr i8, ptr %182, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260.i, i32 %180) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %183 = shl nuw nsw i32 %156, 24
  %184 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i262.i = getelementptr i8, ptr %185, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262.i, i32 %183) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %186 = call i32 @llvm.bswap.i32(i32 %144) #10
  %187 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i264.i = getelementptr i8, ptr %188, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i, i32 %186) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %189 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i266.i = getelementptr i8, ptr %190, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266.i, i32 16777216) #10, !srcloc !197
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  call void @arm_heavy_mb() #10
  %191 = ptrtoint ptr %base.i.i236 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i.i236, align 4
  %add.ptr.i268.i = getelementptr i8, ptr %192, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268.i, i32 536870912) #10, !srcloc !197
  %irq_raised.i239 = getelementptr i8, ptr %1, i32 -160
  call void @wait_for_completion(ptr noundef %irq_raised.i239) #10
  call void @dma_unmap_page_attrs(ptr noundef %dev2.i151, i32 noundef %call41.i249.i, i32 noundef %add.i176, i32 noundef 2, i32 noundef 0) #10
  %call92.i = call i32 @crc32_le(i32 noundef -1, ptr noundef %dst_addr.0.i, i32 noundef %152) #16
  call void @__sanitizer_cov_trace_cmp4(i32 %call92.i, i32 %call54.i237)
  %cmp93.i = icmp eq i32 %call92.i, %call54.i237
  br label %err_dst_phys_addr.i

err_dst_phys_addr.i:                              ; preds = %if.end87.i, %do.end70.i
  %ret.0.i240 = phi i1 [ false, %do.end70.i ], [ %cmp93.i, %if.end87.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i231.i) #10
  br label %err_dst_addr.i

err_dst_addr.i:                                   ; preds = %err_dst_phys_addr.i, %do.end61.i
  %ret.1.i241 = phi i1 [ %ret.0.i240, %err_dst_phys_addr.i ], [ false, %do.end61.i ]
  call void @dma_unmap_page_attrs(ptr noundef %dev2.i151, i32 noundef %call41.i.i220, i32 noundef %add.i176, i32 noundef 1, i32 noundef 0) #10
  br label %err_src_phys_addr.i

err_src_phys_addr.i:                              ; preds = %err_dst_addr.i, %do.end38.i223
  %ret.2.i = phi i1 [ false, %do.end38.i223 ], [ %ret.1.i241, %err_dst_addr.i ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i200) #10
  br label %pci_endpoint_test_copy.exit

pci_endpoint_test_copy.exit:                      ; preds = %err_src_phys_addr.i, %do.end28.i205, %do.end21.i175, %if.end.i172.pci_endpoint_test_copy.exit_crit_edge, %if.then11.i.i.i169
  %retval.0.i242 = phi i1 [ false, %if.then11.i.i.i169 ], [ false, %if.end.i172.pci_endpoint_test_copy.exit_crit_edge ], [ false, %do.end21.i175 ], [ %ret.2.i, %err_src_phys_addr.i ], [ false, %do.end28.i205 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %param.i150) #10
  %conv26 = zext i1 %retval.0.i242 to i32
  br label %ret34

sw.bb27:                                          ; preds = %entry
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %add.ptr, align 4
  %dev2.i243 = getelementptr inbounds %struct.pci_dev, ptr %194, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %arg)
  %195 = icmp ugt i32 %arg, 2
  br i1 %195, label %do.end.i, label %if.end.i244

do.end.i:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i243, ptr noundef nonnull @.str.51) #13
  br label %ret34

if.end.i244:                                      ; preds = %sw.bb27
  %irq_type.i = getelementptr i8, ptr %1, i32 -96
  %196 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %irq_type.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %arg)
  %cmp4.i = icmp eq i32 %197, %arg
  br i1 %cmp4.i, label %if.end.i244.ret34_crit_edge, label %if.end6.i

if.end.i244.ret34_crit_edge:                      ; preds = %if.end.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

if.end6.i:                                        ; preds = %if.end.i244
  %num_irqs.i.i = getelementptr i8, ptr %1, i32 -100
  %198 = ptrtoint ptr %num_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %num_irqs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp10.i.i = icmp sgt i32 %199, 0
  br i1 %cmp10.i.i, label %if.end6.i.for.body.i.i_crit_edge, label %if.end6.i.pci_endpoint_test_release_irq.exit.i_crit_edge

if.end6.i.pci_endpoint_test_release_irq.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_release_irq.exit.i

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %call.i.i245 = tail call i32 @pci_irq_vector(ptr noundef %194, i32 noundef %i.011.i.i) #10
  tail call void @devm_free_irq(ptr noundef %dev2.i243, i32 noundef %call.i.i245, ptr noundef %add.ptr) #10
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %200 = ptrtoint ptr %num_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %num_irqs.i.i, align 4
  %cmp.i.i246 = icmp slt i32 %inc.i.i, %201
  br i1 %cmp.i.i246, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.pci_endpoint_test_release_irq.exit.i_crit_edge

for.body.i.i.pci_endpoint_test_release_irq.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_release_irq.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

pci_endpoint_test_release_irq.exit.i:             ; preds = %for.body.i.i.pci_endpoint_test_release_irq.exit.i_crit_edge, %if.end6.i.pci_endpoint_test_release_irq.exit.i_crit_edge
  %202 = ptrtoint ptr %num_irqs.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %num_irqs.i.i, align 4
  %203 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %204) #10
  %205 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 -1, ptr %irq_type.i, align 4
  %call.i = tail call fastcc zeroext i1 @pci_endpoint_test_alloc_irq_vectors(ptr noundef %add.ptr, i32 noundef %arg) #10
  br i1 %call.i, label %if.end8.i248, label %pci_endpoint_test_release_irq.exit.i.err.i_crit_edge

pci_endpoint_test_release_irq.exit.i.err.i_crit_edge: ; preds = %pci_endpoint_test_release_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end8.i248:                                     ; preds = %pci_endpoint_test_release_irq.exit.i
  %call9.i247 = tail call fastcc zeroext i1 @pci_endpoint_test_request_irq(ptr noundef %add.ptr) #10
  br i1 %call9.i247, label %if.end8.i248.ret34_crit_edge, label %if.end8.i248.err.i_crit_edge

if.end8.i248.err.i_crit_edge:                     ; preds = %if.end8.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end8.i248.ret34_crit_edge:                     ; preds = %if.end8.i248
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret34

err.i:                                            ; preds = %if.end8.i248.err.i_crit_edge, %pci_endpoint_test_release_irq.exit.i.err.i_crit_edge
  %206 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %207) #10
  %208 = ptrtoint ptr %irq_type.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 -1, ptr %irq_type.i, align 4
  br label %ret34

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %209 = load i32, ptr @irq_type, align 4
  br label %ret34

sw.bb31:                                          ; preds = %entry
  %210 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr, align 4
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %211, i32 0, i32 44
  %num_irqs.i.i250 = getelementptr i8, ptr %1, i32 -100
  %212 = ptrtoint ptr %num_irqs.i.i250 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %num_irqs.i.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp10.i.i251 = icmp sgt i32 %213, 0
  br i1 %cmp10.i.i251, label %sw.bb31.for.body.i.i256_crit_edge, label %sw.bb31.pci_endpoint_test_clear_irq.exit_crit_edge

sw.bb31.pci_endpoint_test_clear_irq.exit_crit_edge: ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_clear_irq.exit

sw.bb31.for.body.i.i256_crit_edge:                ; preds = %sw.bb31
  br label %for.body.i.i256

for.body.i.i256:                                  ; preds = %for.body.i.i256.for.body.i.i256_crit_edge, %sw.bb31.for.body.i.i256_crit_edge
  %i.011.i.i252 = phi i32 [ %inc.i.i254, %for.body.i.i256.for.body.i.i256_crit_edge ], [ 0, %sw.bb31.for.body.i.i256_crit_edge ]
  %call.i.i253 = tail call i32 @pci_irq_vector(ptr noundef %211, i32 noundef %i.011.i.i252) #10
  tail call void @devm_free_irq(ptr noundef %dev2.i.i, i32 noundef %call.i.i253, ptr noundef %add.ptr) #10
  %inc.i.i254 = add nuw nsw i32 %i.011.i.i252, 1
  %214 = ptrtoint ptr %num_irqs.i.i250 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %num_irqs.i.i250, align 4
  %cmp.i.i255 = icmp slt i32 %inc.i.i254, %215
  br i1 %cmp.i.i255, label %for.body.i.i256.for.body.i.i256_crit_edge, label %for.body.i.i256.pci_endpoint_test_clear_irq.exit_crit_edge

for.body.i.i256.pci_endpoint_test_clear_irq.exit_crit_edge: ; preds = %for.body.i.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_endpoint_test_clear_irq.exit

for.body.i.i256.for.body.i.i256_crit_edge:        ; preds = %for.body.i.i256
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i256

pci_endpoint_test_clear_irq.exit:                 ; preds = %for.body.i.i256.pci_endpoint_test_clear_irq.exit_crit_edge, %sw.bb31.pci_endpoint_test_clear_irq.exit_crit_edge
  %216 = ptrtoint ptr %num_irqs.i.i250 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %num_irqs.i.i250, align 4
  %217 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %add.ptr, align 4
  tail call void @pci_free_irq_vectors(ptr noundef %218) #10
  %irq_type.i.i = getelementptr i8, ptr %1, i32 -96
  %219 = ptrtoint ptr %irq_type.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 -1, ptr %irq_type.i.i, align 4
  br label %ret34

ret34:                                            ; preds = %pci_endpoint_test_clear_irq.exit, %sw.bb30, %err.i, %if.end8.i248.ret34_crit_edge, %if.end.i244.ret34_crit_edge, %do.end.i, %pci_endpoint_test_copy.exit, %pci_endpoint_test_read.exit, %pci_endpoint_test_write.exit, %if.end.i61, %sw.bb12.ret34_crit_edge, %sw.bb9, %for.body15.i.ret34_crit_edge, %for.cond13.i.ret34_crit_edge, %cond.end.i.ret34_crit_edge, %if.end7.ret34_crit_edge, %if.end.ret34_crit_edge, %sw.bb.ret34_crit_edge, %entry.ret34_crit_edge
  %ret.0 = phi i32 [ -22, %entry.ret34_crit_edge ], [ 1, %pci_endpoint_test_clear_irq.exit ], [ %209, %sw.bb30 ], [ %conv26, %pci_endpoint_test_copy.exit ], [ %conv23, %pci_endpoint_test_read.exit ], [ %conv20, %pci_endpoint_test_write.exit ], [ %conv11, %sw.bb9 ], [ -22, %sw.bb.ret34_crit_edge ], [ -22, %if.end.ret34_crit_edge ], [ 0, %if.end7.ret34_crit_edge ], [ 1, %cond.end.i.ret34_crit_edge ], [ 0, %sw.bb12.ret34_crit_edge ], [ %phi.cast, %if.end.i61 ], [ 0, %do.end.i ], [ 0, %err.i ], [ 1, %if.end.i244.ret34_crit_edge ], [ 1, %if.end8.i248.ret34_crit_edge ], [ 1, %for.cond13.i.ret34_crit_edge ], [ 0, %for.body15.i.ret34_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !165, !166, !167, !169, !170, !172, !173, !175, !176, !177, !179, !180}
!llvm.named.register.sp = !{!181}
!llvm.module.flags = !{!182, !183, !184, !185, !186, !187, !188, !189}
!llvm.ident = !{!190}

!0 = !{ptr @__param_no_msi, !1, !"__param_no_msi", i1 false, i1 false}
!1 = !{!"../drivers/misc/pci_endpoint_test.c", i32 90, i32 1}
!2 = !{ptr @__UNIQUE_ID_no_msitype236, !1, !"__UNIQUE_ID_no_msitype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_no_msi237, !4, !"__UNIQUE_ID_no_msi237", i1 false, i1 false}
!4 = !{!"../drivers/misc/pci_endpoint_test.c", i32 91, i32 1}
!5 = !{ptr @__param_irq_type, !6, !"__param_irq_type", i1 false, i1 false}
!6 = !{!"../drivers/misc/pci_endpoint_test.c", i32 94, i32 1}
!7 = !{ptr @__UNIQUE_ID_irq_typetype238, !6, !"__UNIQUE_ID_irq_typetype238", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_irq_type239, !9, !"__UNIQUE_ID_irq_type239", i1 false, i1 false}
!9 = !{!"../drivers/misc/pci_endpoint_test.c", i32 95, i32 1}
!10 = !{ptr @__initcall__kmod_pci_endpoint_test__240_992_pci_endpoint_test_driver_init6, !11, !"__initcall__kmod_pci_endpoint_test__240_992_pci_endpoint_test_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/misc/pci_endpoint_test.c", i32 992, i32 1}
!12 = !{ptr @__exitcall_pci_endpoint_test_driver_exit, !11, !"__exitcall_pci_endpoint_test_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_description241, !14, !"__UNIQUE_ID_description241", i1 false, i1 false}
!14 = !{!"../drivers/misc/pci_endpoint_test.c", i32 994, i32 1}
!15 = !{ptr @__UNIQUE_ID_author242, !16, !"__UNIQUE_ID_author242", i1 false, i1 false}
!16 = !{!"../drivers/misc/pci_endpoint_test.c", i32 995, i32 1}
!17 = !{ptr @__UNIQUE_ID_file243, !18, !"__UNIQUE_ID_file243", i1 false, i1 false}
!18 = !{!"../drivers/misc/pci_endpoint_test.c", i32 996, i32 1}
!19 = !{ptr @__UNIQUE_ID_license244, !18, !"__UNIQUE_ID_license244", i1 false, i1 false}
!20 = !{ptr @no_msi, !21, !"no_msi", i1 false, i1 false}
!21 = !{!"../drivers/misc/pci_endpoint_test.c", i32 89, i32 13}
!22 = !{ptr @__param_str_no_msi, !1, !"__param_str_no_msi", i1 false, i1 false}
!23 = !{ptr @__param_str_irq_type, !6, !"__param_str_irq_type", i1 false, i1 false}
!24 = !{ptr @irq_type, !25, !"irq_type", i1 false, i1 false}
!25 = !{!"../drivers/misc/pci_endpoint_test.c", i32 93, i32 12}
!26 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/pci_endpoint_test.c", i32 986, i32 11}
!29 = !{ptr @pci_endpoint_test_driver, !30, !"pci_endpoint_test_driver", i1 false, i1 false}
!30 = !{!"../drivers/misc/pci_endpoint_test.c", i32 985, i32 26}
!31 = !{ptr @pci_endpoint_test_tbl, !32, !"pci_endpoint_test_tbl", i1 false, i1 false}
!32 = !{!"../drivers/misc/pci_endpoint_test.c", i32 951, i32 35}
!33 = !{ptr @default_data, !34, !"default_data", i1 false, i1 false}
!34 = !{!"../drivers/misc/pci_endpoint_test.c", i32 934, i32 44}
!35 = !{ptr @am654_data, !36, !"am654_data", i1 false, i1 false}
!36 = !{!"../drivers/misc/pci_endpoint_test.c", i32 940, i32 44}
!37 = !{ptr @j721e_data, !38, !"j721e_data", i1 false, i1 false}
!38 = !{!"../drivers/misc/pci_endpoint_test.c", i32 946, i32 44}
!39 = !{ptr @pci_endpoint_test_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/misc/pci_endpoint_test.c", i32 793, i32 2}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/misc/pci_endpoint_test.c", i32 797, i32 3}
!44 = !{ptr @.str.4, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pci_endpoint_test_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @pci_endpoint_test_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/misc/pci_endpoint_test.c", i32 803, i32 3}
!52 = !{ptr @pci_endpoint_test_probe._entry.8, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pci_endpoint_test_probe._entry_ptr.10, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/misc/pci_endpoint_test.c", i32 809, i32 3}
!56 = !{ptr @pci_endpoint_test_probe._entry.11, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pci_endpoint_test_probe._entry_ptr.13, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/pci_endpoint_test.c", i32 824, i32 5}
!60 = !{ptr @pci_endpoint_test_probe._entry.14, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pci_endpoint_test_probe._entry_ptr.16, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/pci_endpoint_test.c", i32 834, i32 3}
!64 = !{ptr @pci_endpoint_test_probe._entry.17, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pci_endpoint_test_probe._entry_ptr.19, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/misc/pci_endpoint_test.c", i32 844, i32 3}
!68 = !{ptr @pci_endpoint_test_probe._entry.20, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @pci_endpoint_test_probe._entry_ptr.22, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/pci_endpoint_test.c", i32 848, i32 31}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/pci_endpoint_test.c", i32 872, i32 3}
!74 = !{ptr @pci_endpoint_test_probe._entry.24, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pci_endpoint_test_probe._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/pci_endpoint_test.c", i32 189, i32 4}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/misc/pci_endpoint_test.c", i32 194, i32 4}
!86 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry.30, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.32, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/pci_endpoint_test.c", i32 199, i32 4}
!90 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry.33, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.35, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/pci_endpoint_test.c", i32 202, i32 3}
!94 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @pci_endpoint_test_alloc_irq_vectors._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/pci_endpoint_test.c", i32 84, i32 8}
!98 = !{ptr @pci_endpoint_test_ida, !97, !"pci_endpoint_test_ida", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/misc/pci_endpoint_test.c", i32 248, i32 3}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pci_endpoint_test_request_irq._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pci_endpoint_test_request_irq._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/misc/pci_endpoint_test.c", i32 252, i32 3}
!106 = !{ptr @pci_endpoint_test_request_irq._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pci_endpoint_test_request_irq._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/misc/pci_endpoint_test.c", i32 257, i32 3}
!110 = !{ptr @pci_endpoint_test_request_irq._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @pci_endpoint_test_request_irq._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @pci_endpoint_test_fops, !113, !"pci_endpoint_test_fops", i1 false, i1 false}
!113 = !{!"../drivers/misc/pci_endpoint_test.c", i32 750, i32 37}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/misc/pci_endpoint_test.c", i32 496, i32 3}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @pci_endpoint_test_write._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @pci_endpoint_test_write._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/pci_endpoint_test.c", i32 509, i32 3}
!121 = !{ptr @pci_endpoint_test_write._entry.50, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @pci_endpoint_test_write._entry_ptr.52, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/misc/pci_endpoint_test.c", i32 515, i32 3}
!125 = !{ptr @pci_endpoint_test_write._entry.53, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @pci_endpoint_test_write._entry_ptr.55, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/misc/pci_endpoint_test.c", i32 525, i32 3}
!129 = !{ptr @pci_endpoint_test_write._entry.56, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @pci_endpoint_test_write._entry_ptr.58, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!133 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!138 = distinct !{null, !139, !"__already_done", i1 false, i1 false}
!139 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!140 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/misc/pci_endpoint_test.c", i32 594, i32 3}
!144 = !{ptr @pci_endpoint_test_read._entry, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @pci_endpoint_test_read._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @pci_endpoint_test_read._entry.65, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/misc/pci_endpoint_test.c", i32 607, i32 3}
!148 = !{ptr @pci_endpoint_test_read._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/misc/pci_endpoint_test.c", i32 613, i32 3}
!151 = !{ptr @pci_endpoint_test_read._entry.67, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @pci_endpoint_test_read._entry_ptr.69, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @pci_endpoint_test_read._entry.70, !154, !"_entry", i1 false, i1 false}
!154 = !{!"../drivers/misc/pci_endpoint_test.c", i32 621, i32 3}
!155 = !{ptr @pci_endpoint_test_read._entry_ptr.71, !154, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/misc/pci_endpoint_test.c", i32 362, i32 3}
!158 = !{ptr @pci_endpoint_test_copy._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @pci_endpoint_test_copy._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @pci_endpoint_test_copy._entry.73, !161, !"_entry", i1 false, i1 false}
!161 = !{!"../drivers/misc/pci_endpoint_test.c", i32 375, i32 3}
!162 = !{ptr @pci_endpoint_test_copy._entry_ptr.74, !161, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/misc/pci_endpoint_test.c", i32 381, i32 3}
!165 = !{ptr @pci_endpoint_test_copy._entry.75, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @pci_endpoint_test_copy._entry_ptr.77, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @pci_endpoint_test_copy._entry.78, !168, !"_entry", i1 false, i1 false}
!168 = !{!"../drivers/misc/pci_endpoint_test.c", i32 390, i32 3}
!169 = !{ptr @pci_endpoint_test_copy._entry_ptr.79, !168, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @pci_endpoint_test_copy._entry.80, !171, !"_entry", i1 false, i1 false}
!171 = !{!"../drivers/misc/pci_endpoint_test.c", i32 414, i32 3}
!172 = !{ptr @pci_endpoint_test_copy._entry_ptr.81, !171, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/misc/pci_endpoint_test.c", i32 422, i32 3}
!175 = !{ptr @pci_endpoint_test_copy._entry.82, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @pci_endpoint_test_copy._entry_ptr.84, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.85, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/misc/pci_endpoint_test.c", i32 677, i32 3}
!179 = !{ptr @pci_endpoint_test_set_irq._entry, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @pci_endpoint_test_set_irq._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{!"sp"}
!182 = !{i32 1, !"wchar_size", i32 2}
!183 = !{i32 1, !"min_enum_size", i32 4}
!184 = !{i32 8, !"branch-target-enforcement", i32 0}
!185 = !{i32 8, !"sign-return-address", i32 0}
!186 = !{i32 8, !"sign-return-address-all", i32 0}
!187 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!188 = !{i32 7, !"uwtable", i32 1}
!189 = !{i32 7, !"frame-pointer", i32 2}
!190 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!191 = !{i8 0, i8 2}
!192 = !{!"branch_weights", i32 1, i32 2000}
!193 = !{!"auto-init"}
!194 = !{i64 5100814}
!195 = !{i64 2154499830}
!196 = !{i64 2154500217}
!197 = !{i64 5100396}
!198 = !{i64 2154501470}
!199 = !{i64 2154501079}
!200 = !{i64 2152201919, i64 2152201944}
!201 = !{!"branch_weights", i32 2000, i32 1}
!202 = !{i64 4697474}
!203 = !{i64 4697671}
!204 = !{i64 2152182904}
