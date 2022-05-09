; ModuleID = '/llk/IR_all_yes/drivers/scsi/elx/efct/efct_driver.c_pt.bc'
source_filename = "../drivers/scsi/elx/efct/efct_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.libefc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.83 = type { ptr }
%struct.efct = type { ptr, [6 x ptr], i32, i8, i8, i8, [16 x %struct.efct_intr_context], i32, [32 x i8], i32, %struct.list_head, %struct.efct_scsi_tgt, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.efct_hw, i32, ptr, i32, %struct.xarray, i32, i32, ptr }
%struct.efct_intr_context = type { ptr, i32 }
%struct.efct_scsi_tgt = type { i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, ptr, %struct.list_head, %struct.spinlock, i64 }
%struct.efct_hw = type { ptr, %struct.sli4, i16, i16, i32, i32, i8, i8, i16, %struct.efct_hw_config, [5 x i32], [32 x %struct.sli4_queue], [32 x %struct.sli4_queue], [32 x i16], [1 x %struct.sli4_queue], [97 x %struct.sli4_queue], [16 x %struct.sli4_queue], i32, i32, i32, i32, i32, i32, %struct.list_head, [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [128 x %struct.efct_queue_hash], [32 x ptr], [32 x ptr], [1 x ptr], [97 x ptr], [16 x ptr], i32, i32, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, ptr, %struct.sli4_link_event, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.efc_dma, %struct.efc_dma, %struct.efc_dma, %struct.atomic_t, [32 x i32], [32 x i32], %struct.atomic_t, ptr }
%struct.sli4 = type { ptr, ptr, [6 x ptr], i32, i32, i32, i16, i16, i16, i16, %struct.sli4_queue_info, i16, i8, i8, [2 x i8], i16, i32, i8, [8 x i8], [8 x i8], [2 x i32], [2 x [16 x i8]], [16 x i8], [3 x i32], [64 x i8], [32 x i8], i32, i32, [5 x %struct.sli4_extent], i32, %struct.sli4_params, i32, i32, i32, ptr, ptr, %struct.efc_dma, ptr, %struct.efc_dma }
%struct.sli4_queue_info = type { [5 x i16], [5 x i32], [5 x i16], [5 x i16], [5 x i32] }
%struct.sli4_extent = type { i32, i32, i32, ptr, ptr, i32 }
%struct.sli4_params = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.efct_hw_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [4 x i32] }
%struct.sli4_queue = type { %struct.efc_dma, %struct.spinlock, i32, i16, i16, i16, i16, i8, ptr, i16, i32, i32, i32, i64, %union.anon.85 }
%union.anon.85 = type { i32 }
%struct.efct_queue_hash = type { i8, i16, i16 }
%struct.sli4_link_event = type { i32, i32, i32, i32, ptr, i32 }
%struct.efc_dma = type { ptr, ptr, i32, i32, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.efc = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.libefc_function_template, %struct.spinlock, i8, i8, i32, ptr, ptr, ptr, i64, i64, i8, i32, i32, ptr, %struct.atomic_t, i8, %struct.spinlock, %struct.list_head, i32 }
%struct.efct_fw_write_result = type { %struct.completion, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.efct_hw_grp_hdr = type { i32, i32, i32, [128 x i8], [12 x i8], [32 x i8] }
%struct.efct_xport = type { ptr, i64, i64, i32, %struct.atomic_t, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.timer_list, %union.efct_xport_stats_u, %struct.efct_xport_fcp_stats }
%union.efct_xport_stats_u = type { %struct.efct_xport_host_statistics }
%struct.efct_xport_host_statistics = type { %struct.completion, %struct.efct_xport_link_stats, %struct.efct_xport_host_stats }
%struct.efct_xport_link_stats = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_host_stats = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.efct_xport_fcp_stats = type { i64, i64, i64, i64, i64 }

@efct_devices = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @efct_devices, ptr @efct_devices }, [24 x i8] zeroinitializer }, align 32
@__param_str_logmask = internal constant [13 x i8] c"efct.logmask\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@logmask = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_logmask = internal constant %struct.kernel_param { ptr @__param_str_logmask, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @logmask } }, section "__param", align 4
@__UNIQUE_ID_logmasktype313 = internal constant [26 x i8] c"efct.parmtype=logmask:int\00", section ".modinfo", align 1
@__UNIQUE_ID_logmask314 = internal constant [46 x i8] c"efct.parm=logmask:logging bitmask (default 0)\00", section ".modinfo", align 1
@efct_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @efct_pci_table, ptr @efct_pci_probe, ptr @efct_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @efct_pci_err_handler, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_efct__322_777_efct_init6 = internal global ptr @efct_init, section ".initcall6.init", align 4
@__exitcall_efct_exit = internal global ptr @efct_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version323 = internal constant [21 x i8] c"efct.version=1.0.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"efct\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.0.0.0\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file324 = internal constant [32 x i8] c"efct.file=drivers/scsi/elx/efct\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [17 x i8] c"efct.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author326 = internal constant [21 x i8] c"efct.author=Broadcom\00", section ".modinfo", align 1
@efct_pci_table = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4319, i32 58119, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4319, i32 62471, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@efct_pci_err_handler = internal global { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @efct_pci_io_error_detected, ptr null, ptr @efct_pci_io_slot_reset, ptr null, ptr null, ptr @efct_pci_io_resume }, [40 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 487, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"efct_pci_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/scsi/elx/efct/efct_driver.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr = internal global ptr @efct_pci_probe._entry, section ".printk_index", align 4
@efct_pci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 497, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pci_set_mwi returned %d\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.10 = internal global ptr @efct_pci_probe._entry.8, section ".printk_index", align 4
@efct_pci_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 503, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pci_request_regions failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.14 = internal global ptr @efct_pci_probe._entry.11, section ".printk_index", align 4
@efct_pci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 510, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Warning Numa node ID is %d\0A\00", [36 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.17 = internal global ptr @efct_pci_probe._entry.15, section ".printk_index", align 4
@efct_pci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 517, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate efct\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.20 = internal global ptr @efct_pci_probe._entry.18, section ".printk_index", align 4
@efct_pci_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 546, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"setting DMA_BIT_MASK failed\0A\00", [35 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.23 = internal global ptr @efct_pci_probe._entry.21, section ".printk_index", align 4
@efct_pci_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 552, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"efct_device_interrupts_required failed\0A\00", [56 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.26 = internal global ptr @efct_pci_probe._entry.24, section ".printk_index", align 4
@efct_pci_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 563, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Can't setup msix\0A\00", [46 x i8] zeroinitializer }, align 32
@efct_pci_probe._entry_ptr.29 = internal global ptr @efct_pci_probe._entry.27, section ".printk_index", align 4
@efct_pci_probe.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.30, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq %d disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@efct_setup_msix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 430, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s : MSI-X not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"efct_setup_msix\00", [16 x i8] zeroinitializer }, align 32
@efct_setup_msix._entry_ptr = internal global ptr @efct_setup_msix._entry, section ".printk_index", align 4
@efct_setup_msix._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 440, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to alloc irq : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@efct_setup_msix._entry_ptr.35 = internal global ptr @efct_setup_msix._entry.33, section ".printk_index", align 4
@efct_setup_msix._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.5, i32 456, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register %d vector: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@efct_setup_msix._entry_ptr.38 = internal global ptr @efct_setup_msix._entry.36, section ".printk_index", align 4
@efct_device_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.5, i32 141, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device is already attached\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_device_attach\00", [45 x i8] zeroinitializer }, align 32
@efct_device_attach._entry_ptr = internal global ptr @efct_device_attach._entry, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[%s%d] \00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fc\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"0x01ff22ff,0,0,0\00", [47 x i8] zeroinitializer }, align 32
@efct_device_attach._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.5, i32 159, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to allocate transport object\0A\00", [59 x i8] zeroinitializer }, align 32
@efct_device_attach._entry_ptr.46 = internal global ptr @efct_device_attach._entry.44, section ".printk_index", align 4
@efct_device_attach._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.40, ptr @.str.5, i32 166, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to attach transport object\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_device_attach._entry_ptr.49 = internal global ptr @efct_device_attach._entry.47, section ".printk_index", align 4
@efct_device_attach._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.5, i32 172, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to initialize transport object\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_device_attach._entry_ptr.52 = internal global ptr @efct_device_attach._entry.50, section ".printk_index", align 4
@efct_libefc_templ = internal constant { %struct.libefc_function_template, [32 x i8] } { %struct.libefc_function_template { ptr @efct_scsi_tgt_new_nport, ptr @efct_scsi_tgt_del_nport, ptr @efct_scsi_new_initiator, ptr @efct_scsi_del_initiator, ptr @efct_issue_mbox_rqst, ptr @efct_els_hw_srrs_send, ptr @efct_efc_bls_send, ptr @efct_efc_hw_sequence_free }, [32 x i8] zeroinitializer }, align 32
@efct_device_attach._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.40, ptr @.str.5, i32 178, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init efclib\0A\00", [41 x i8] zeroinitializer }, align 32
@efct_device_attach._entry_ptr.55 = internal global ptr @efct_device_attach._entry.53, section ".printk_index", align 4
@efct_device_attach.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str.5, ptr @.str.56, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq %d enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LPE31004\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LPE36000\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@efct_efclib_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.5, i32 118, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"efcport_init failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_efclib_config\00", [45 x i8] zeroinitializer }, align 32
@efct_efclib_config._entry_ptr = internal global ptr @efct_efclib_config._entry, section ".printk_index", align 4
@sli_get_max_sgl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.64, i32 3745, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported SGL page sizes %#x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sli_get_max_sgl\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/scsi/elx/efct/../libefc/../libefc_sli/sli4.h\00", [43 x i8] zeroinitializer }, align 32
@sli_get_max_sgl._entry_ptr = internal global ptr @sli_get_max_sgl._entry, section ".printk_index", align 4
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s.grp\00", [25 x i8] zeroinitializer }, align 32
@efct_request_firmware_update.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.67, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efct_request_firmware_update\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Firmware file(%s) not found.\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_request_firmware_update.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.66, ptr @.str.5, ptr @.str.68, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Skip update. Firmware is already up to date.\0A\00", [50 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.5, i32 351, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Firmware update is initiated. %s -> %s\0A\00", [56 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr = internal global ptr @efct_request_firmware_update._entry, section ".printk_index", align 4
@efct_request_firmware_update._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.5, i32 355, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Firmware update failed. rc = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.72 = internal global ptr @efct_request_firmware_update._entry.70, section ".printk_index", align 4
@efct_request_firmware_update._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.5, i32 359, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Firmware updated successfully\0A\00", [33 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.75 = internal global ptr @efct_request_firmware_update._entry.73, section ".printk_index", align 4
@efct_request_firmware_update._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.5, i32 362, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"New firmware is active.\0A\00", [39 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.78 = internal global ptr @efct_request_firmware_update._entry.76, section ".printk_index", align 4
@efct_request_firmware_update._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str.5, i32 366, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"System reboot needed to activate the new firmware\0A\00", [45 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.81 = internal global ptr @efct_request_firmware_update._entry.79, section ".printk_index", align 4
@efct_request_firmware_update._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str.5, i32 371, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"firmware reset to activate the new firmware\0A\00", [51 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.84 = internal global ptr @efct_request_firmware_update._entry.82, section ".printk_index", align 4
@efct_request_firmware_update._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.66, ptr @.str.5, i32 376, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unexpected value change_status:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@efct_request_firmware_update._entry_ptr.87 = internal global ptr @efct_request_firmware_update._entry.85, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@efct_fw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 315, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"efct_fw_reset\00", [18 x i8] zeroinitializer }, align 32
@efct_fw_reset._entry_ptr = internal global ptr @efct_fw_reset._entry, section ".printk_index", align 4
@efct_fw_reset._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.5, i32 319, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"successfully reset firmware.Now resetting port\0A\00", [48 x i8] zeroinitializer }, align 32
@efct_fw_reset._entry_ptr.93 = internal global ptr @efct_fw_reset._entry.91, section ".printk_index", align 4
@efct_device_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.5, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Device is not attached\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efct_device_detach\00", [45 x i8] zeroinitializer }, align 32
@efct_device_detach._entry_ptr = internal global ptr @efct_device_detach._entry, section ".printk_index", align 4
@efct_device_detach._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.5, i32 214, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Transport Shutdown timed out\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_device_detach._entry_ptr.98 = internal global ptr @efct_device_detach._entry.96, section ".printk_index", align 4
@efct_pci_io_error_detected.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.99, ptr @.str.5, ptr @.str.100, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_pci_io_error_detected\00", [37 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown PCI error state:0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@efct_device_prep_for_recover.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.5, ptr @.str.102, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"efct_device_prep_for_recover\00", [35 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PCI channel preparing for recovery\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_device_prep_for_reset.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.103, ptr @.str.5, ptr @.str.104, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"efct_device_prep_for_reset\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"PCI channel disable preparing for reset\0A\00", [55 x i8] zeroinitializer }, align 32
@efct_pci_io_slot_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.5, i32 698, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to enable PCI device after reset\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"efct_pci_io_slot_reset\00", [41 x i8] zeroinitializer }, align 32
@efct_pci_io_slot_reset._entry_ptr = internal global ptr @efct_pci_io_slot_reset._entry, section ".printk_index", align 4
@efct_pci_io_slot_reset._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.5, i32 714, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rc %d returned, IRQ allocation failed\0A\00", [57 x i8] zeroinitializer }, align 32
@efct_pci_io_slot_reset._entry_ptr.109 = internal global ptr @efct_pci_io_slot_reset._entry.107, section ".printk_index", align 4
@efct_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013efct_device_init failed rc=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"efct_init\00", [22 x i8] zeroinitializer }, align 32
@efct_init._entry_ptr = internal global ptr @efct_init._entry, section ".printk_index", align 4
@efct_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.5, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pci_register_driver failed rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@efct_init._entry_ptr.114 = internal global ptr @efct_init._entry.112, section ".printk_index", align 4
@efct_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.5, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013efct_scsi_tgt_init failed rc=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"efct_device_init\00", [47 x i8] zeroinitializer }, align 32
@efct_device_init._entry_ptr = internal global ptr @efct_device_init._entry, section ".printk_index", align 4
@efct_device_init._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.5, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed to register to FC host\0A\00", [63 x i8] zeroinitializer }, align 32
@efct_device_init._entry_ptr.119 = internal global ptr @efct_device_init._entry.117, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"efct_devices\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 13, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [8 x i8] c"logmask\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 15, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"efct_pci_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 743, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 779, i32 1 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"efct_pci_table\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 472, i32 29 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"efct_pci_err_handler\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 737, i32 34 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 487, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 497, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 503, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 510, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 517, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 546, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 552, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 563, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 568, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 429, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 440, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 455, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 141, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 145, i32 43 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 145, i32 54 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 149, i32 21 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 159, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 166, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 172, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant [18 x i8] c"efct_libefc_templ\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 19, i32 40 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 178, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 183, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 129, i32 37 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 130, i32 37 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 131, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 118, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant [46 x i8] c"../drivers/scsi/elx/efct/../libefc_sli/sli4.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 3744, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 333, i32 27 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 337, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 345, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 350, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 355, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 359, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 362, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 365, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 370, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 375, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.368 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 87, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 315, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 319, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 209, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 214, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 681, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 641, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 628, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 698, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 713, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 758, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 764, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 39, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private constant [39 x i8] c"../drivers/scsi/elx/efct/efct_driver.c\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.461, i32 45, i32 3 }
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__UNIQUE_ID_logmask314, ptr @__UNIQUE_ID_logmasktype313, ptr @__UNIQUE_ID_version323, ptr @__exitcall_efct_exit, ptr @__initcall__kmod_efct__322_777_efct_init6, ptr @__modver_attr, ptr @__param_logmask, ptr @efct_device_attach._entry, ptr @efct_device_attach._entry.44, ptr @efct_device_attach._entry.47, ptr @efct_device_attach._entry.50, ptr @efct_device_attach._entry.53, ptr @efct_device_attach._entry_ptr, ptr @efct_device_attach._entry_ptr.46, ptr @efct_device_attach._entry_ptr.49, ptr @efct_device_attach._entry_ptr.52, ptr @efct_device_attach._entry_ptr.55, ptr @efct_device_detach._entry, ptr @efct_device_detach._entry.96, ptr @efct_device_detach._entry_ptr, ptr @efct_device_detach._entry_ptr.98, ptr @efct_device_init._entry, ptr @efct_device_init._entry.117, ptr @efct_device_init._entry_ptr, ptr @efct_device_init._entry_ptr.119, ptr @efct_efclib_config._entry, ptr @efct_efclib_config._entry_ptr, ptr @efct_exit, ptr @efct_fw_reset._entry, ptr @efct_fw_reset._entry.91, ptr @efct_fw_reset._entry_ptr, ptr @efct_fw_reset._entry_ptr.93, ptr @efct_init._entry, ptr @efct_init._entry.112, ptr @efct_init._entry_ptr, ptr @efct_init._entry_ptr.114, ptr @efct_pci_io_slot_reset._entry, ptr @efct_pci_io_slot_reset._entry.107, ptr @efct_pci_io_slot_reset._entry_ptr, ptr @efct_pci_io_slot_reset._entry_ptr.109, ptr @efct_pci_probe._entry, ptr @efct_pci_probe._entry.11, ptr @efct_pci_probe._entry.15, ptr @efct_pci_probe._entry.18, ptr @efct_pci_probe._entry.21, ptr @efct_pci_probe._entry.24, ptr @efct_pci_probe._entry.27, ptr @efct_pci_probe._entry.8, ptr @efct_pci_probe._entry_ptr, ptr @efct_pci_probe._entry_ptr.10, ptr @efct_pci_probe._entry_ptr.14, ptr @efct_pci_probe._entry_ptr.17, ptr @efct_pci_probe._entry_ptr.20, ptr @efct_pci_probe._entry_ptr.23, ptr @efct_pci_probe._entry_ptr.26, ptr @efct_pci_probe._entry_ptr.29, ptr @efct_request_firmware_update._entry, ptr @efct_request_firmware_update._entry.70, ptr @efct_request_firmware_update._entry.73, ptr @efct_request_firmware_update._entry.76, ptr @efct_request_firmware_update._entry.79, ptr @efct_request_firmware_update._entry.82, ptr @efct_request_firmware_update._entry.85, ptr @efct_request_firmware_update._entry_ptr, ptr @efct_request_firmware_update._entry_ptr.72, ptr @efct_request_firmware_update._entry_ptr.75, ptr @efct_request_firmware_update._entry_ptr.78, ptr @efct_request_firmware_update._entry_ptr.81, ptr @efct_request_firmware_update._entry_ptr.84, ptr @efct_request_firmware_update._entry_ptr.87, ptr @efct_setup_msix._entry, ptr @efct_setup_msix._entry.33, ptr @efct_setup_msix._entry.36, ptr @efct_setup_msix._entry_ptr, ptr @efct_setup_msix._entry_ptr.35, ptr @efct_setup_msix._entry_ptr.38, ptr @sli_get_max_sgl._entry, ptr @sli_get_max_sgl._entry_ptr, ptr @efct_devices, ptr @logmask, ptr @efct_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @efct_pci_table, ptr @efct_pci_err_handler, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @efct_libefc_templ, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @init_completion.__key, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_setup_msix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_setup_msix._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_setup_msix._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_attach._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_attach._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_attach._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_libefc_templ to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_attach._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_efclib_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sli_get_max_sgl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_request_firmware_update._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_fw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_fw_reset._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_detach._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_io_slot_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_pci_io_slot_reset._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @efct_device_init._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @efct_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @efct_pci_driver) #12
  tail call void @efct_scsi_release_fc_transport() #12
  %call.i = tail call i32 @efct_scsi_tgt_driver_exit() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @efct_scsi_tgt_driver_init() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %call.i) #15
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @efct_scsi_reg_fc_transport() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #15
  br label %do.end

do.end:                                           ; preds = %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call2.i, %do.end7.i ], [ %call.i, %do.end.i ]
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %retval.0.i.ph) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @efct_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %call2) #15
  tail call void @efct_scsi_release_fc_transport() #12
  %call.i16 = tail call i32 @efct_scsi_tgt_driver_exit() #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_pci_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #15
  %call = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %call1 = tail call i32 @pci_set_mwi(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call1) #15
  br label %mwi_out

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call9) #15
  br label %req_regions_out

if.end16:                                         ; preds = %if.end8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef -1) #15
  %call25 = tail call fastcc ptr @efct_device_alloc()
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #15
  br label %alloc_out

if.end32:                                         ; preds = %if.end16
  %0 = ptrtoint ptr %call25 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call25, align 8
  %numa_node = getelementptr inbounds %struct.efct, ptr %call25, i32 0, i32 7
  %1 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %numa_node, align 4
  br label %for.body

for.body:                                         ; preds = %if.end49.for.body_crit_edge, %if.end32
  %r.0202 = phi i32 [ 0, %if.end32 ], [ %r.1, %if.end49.for.body_crit_edge ]
  %i.0201 = phi i32 [ 0, %if.end32 ], [ %inc58, %if.end49.for.body_crit_edge ]
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0201, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %for.body.if.end49_crit_edge, label %if.then35

for.body.if.end49_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0201
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %i.0201, i32 1
  %6 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp40 = icmp eq i32 %7, 0
  %sub = sub i32 1, %5
  %add = add i32 %sub, %7
  %cond = select i1 %cmp40, i32 0, i32 %add
  %call47 = tail call ptr @ioremap(i32 noundef %5, i32 noundef %cond) #12
  %arrayidx48 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 %r.0202
  %8 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call47, ptr %arrayidx48, align 4
  %inc = add i32 %r.0202, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then35, %for.body.if.end49_crit_edge
  %r.1 = phi i32 [ %inc, %if.then35 ], [ %r.0202, %for.body.if.end49_crit_edge ]
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and53 = lshr i32 %10, 20
  %and53.lobit = and i32 %and53, 1
  %spec.select = add nuw nsw i32 %i.0201, 1
  %inc58 = add nuw nsw i32 %spec.select, %and53.lobit
  %cmp33 = icmp ult i32 %inc58, 6
  br i1 %cmp33, label %if.end49.for.body_crit_edge, label %for.end

if.end49.for.body_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end49
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %driver_data.i.i, align 4
  %call60 = tail call fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #15
  br label %dma_mask_out

if.end67:                                         ; preds = %for.end
  %hw.i = getelementptr inbounds %struct.efct, ptr %call25, i32 0, i32 19
  %12 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call25, align 8
  %call.i = tail call i32 @efct_hw_setup(ptr noundef %hw.i, ptr noundef nonnull %call25, ptr noundef %13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end67.do.end73_crit_edge, label %efct_device_interrupts_required.exit

if.end67.do.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

efct_device_interrupts_required.exit:             ; preds = %if.end67
  %config.i = getelementptr inbounds %struct.efct, ptr %call25, i32 0, i32 19, i32 9
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp69 = icmp slt i32 %15, 0
  br i1 %cmp69, label %efct_device_interrupts_required.exit.do.end73_crit_edge, label %if.end76

efct_device_interrupts_required.exit.do.end73_crit_edge: ; preds = %efct_device_interrupts_required.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end73

do.end73:                                         ; preds = %efct_device_interrupts_required.exit.do.end73_crit_edge, %if.end67.do.end73_crit_edge
  %16 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call25, align 8
  %dev75 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev75, ptr noundef nonnull @.str.25) #15
  br label %dma_mask_out

if.end76:                                         ; preds = %efct_device_interrupts_required.exit
  %call77 = tail call fastcc i32 @efct_setup_msix(ptr noundef nonnull %call25, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %for.cond85.preheader, label %do.end82

for.cond85.preheader:                             ; preds = %if.end76
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %call25, i32 0, i32 2
  %18 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_msix_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp86203.not = icmp eq i32 %19, 0
  br i1 %cmp86203.not, label %for.cond85.preheader.for.end103_crit_edge, label %for.cond85.preheader.do.body88_crit_edge

for.cond85.preheader.do.body88_crit_edge:         ; preds = %for.cond85.preheader
  br label %do.body88

for.cond85.preheader.for.end103_crit_edge:        ; preds = %for.cond85.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end103

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #15
  br label %dma_mask_out

do.body88:                                        ; preds = %do.end98.do.body88_crit_edge, %for.cond85.preheader.do.body88_crit_edge
  %i.2204 = phi i32 [ %inc102, %do.end98.do.body88_crit_edge ], [ 0, %for.cond85.preheader.do.body88_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_pci_probe.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_pci_probe, %if.then93)) #12
          to label %do.end98 [label %if.then93], !srcloc !239

if.then93:                                        ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call25, align 8
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_pci_probe.__UNIQUE_ID_ddebug318, ptr noundef %dev95, ptr noundef nonnull @.str.30, i32 noundef %i.2204) #12
  br label %do.end98

do.end98:                                         ; preds = %if.then93, %do.body88
  %22 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call25, align 8
  %call100 = tail call i32 @pci_irq_vector(ptr noundef %23, i32 noundef %i.2204) #12
  tail call void @disable_irq(i32 noundef %call100) #12
  %inc102 = add nuw i32 %i.2204, 1
  %24 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_msix_vec, align 4
  %cmp86 = icmp ult i32 %inc102, %25
  br i1 %cmp86, label %do.end98.do.body88_crit_edge, label %do.end98.for.end103_crit_edge

do.end98.for.end103_crit_edge:                    ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end103

do.end98.do.body88_crit_edge:                     ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body88

for.end103:                                       ; preds = %do.end98.for.end103_crit_edge, %for.cond85.preheader.for.end103_crit_edge
  %call104 = tail call fastcc i32 @efct_device_attach(ptr noundef nonnull %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %for.end103.cleanup_crit_edge, label %attach_out

for.end103.cleanup_crit_edge:                     ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

attach_out:                                       ; preds = %for.end103
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @efct_teardown_msix(ptr noundef nonnull %call25)
  br label %dma_mask_out

dma_mask_out:                                     ; preds = %attach_out, %do.end82, %do.end73, %do.end65
  %rc.0 = phi i32 [ %call60, %do.end65 ], [ -1, %do.end73 ], [ %call77, %do.end82 ], [ %call104, %attach_out ]
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %driver_data.i.i, align 4
  %arrayidx112 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 0
  %27 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx112, align 4
  %tobool113.not = icmp eq ptr %28, null
  br i1 %tobool113.not, label %dma_mask_out.for.inc118_crit_edge, label %if.then114

dma_mask_out.for.inc118_crit_edge:                ; preds = %dma_mask_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118

if.then114:                                       ; preds = %dma_mask_out
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %28) #12
  br label %for.inc118

for.inc118:                                       ; preds = %if.then114, %dma_mask_out.for.inc118_crit_edge
  %arrayidx112.1 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx112.1, align 4
  %tobool113.not.1 = icmp eq ptr %30, null
  br i1 %tobool113.not.1, label %for.inc118.for.inc118.1_crit_edge, label %if.then114.1

for.inc118.for.inc118.1_crit_edge:                ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118.1

if.then114.1:                                     ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %30) #12
  br label %for.inc118.1

for.inc118.1:                                     ; preds = %if.then114.1, %for.inc118.for.inc118.1_crit_edge
  %arrayidx112.2 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx112.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx112.2, align 4
  %tobool113.not.2 = icmp eq ptr %32, null
  br i1 %tobool113.not.2, label %for.inc118.1.for.inc118.2_crit_edge, label %if.then114.2

for.inc118.1.for.inc118.2_crit_edge:              ; preds = %for.inc118.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118.2

if.then114.2:                                     ; preds = %for.inc118.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %32) #12
  br label %for.inc118.2

for.inc118.2:                                     ; preds = %if.then114.2, %for.inc118.1.for.inc118.2_crit_edge
  %arrayidx112.3 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %arrayidx112.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx112.3, align 4
  %tobool113.not.3 = icmp eq ptr %34, null
  br i1 %tobool113.not.3, label %for.inc118.2.for.inc118.3_crit_edge, label %if.then114.3

for.inc118.2.for.inc118.3_crit_edge:              ; preds = %for.inc118.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118.3

if.then114.3:                                     ; preds = %for.inc118.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %34) #12
  br label %for.inc118.3

for.inc118.3:                                     ; preds = %if.then114.3, %for.inc118.2.for.inc118.3_crit_edge
  %arrayidx112.4 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %arrayidx112.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx112.4, align 4
  %tobool113.not.4 = icmp eq ptr %36, null
  br i1 %tobool113.not.4, label %for.inc118.3.for.inc118.4_crit_edge, label %if.then114.4

for.inc118.3.for.inc118.4_crit_edge:              ; preds = %for.inc118.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118.4

if.then114.4:                                     ; preds = %for.inc118.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %36) #12
  br label %for.inc118.4

for.inc118.4:                                     ; preds = %if.then114.4, %for.inc118.3.for.inc118.4_crit_edge
  %arrayidx112.5 = getelementptr %struct.efct, ptr %call25, i32 0, i32 1, i32 5
  %37 = ptrtoint ptr %arrayidx112.5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx112.5, align 4
  %tobool113.not.5 = icmp eq ptr %38, null
  br i1 %tobool113.not.5, label %for.inc118.4.for.inc118.5_crit_edge, label %if.then114.5

for.inc118.4.for.inc118.5_crit_edge:              ; preds = %for.inc118.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc118.5

if.then114.5:                                     ; preds = %for.inc118.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %38) #12
  br label %for.inc118.5

for.inc118.5:                                     ; preds = %if.then114.5, %for.inc118.4.for.inc118.5_crit_edge
  tail call fastcc void @efct_device_free(ptr noundef nonnull %call25)
  br label %alloc_out

alloc_out:                                        ; preds = %for.inc118.5, %do.end30
  %rc.1 = phi i32 [ %rc.0, %for.inc118.5 ], [ -12, %do.end30 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  br label %req_regions_out

req_regions_out:                                  ; preds = %alloc_out, %do.end14
  %rc.2 = phi i32 [ %call9, %do.end14 ], [ %rc.1, %alloc_out ]
  tail call void @pci_clear_mwi(ptr noundef %pdev) #12
  br label %mwi_out

mwi_out:                                          ; preds = %req_regions_out, %do.end6
  %rc.3 = phi i32 [ %call1, %do.end6 ], [ %rc.2, %req_regions_out ]
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %mwi_out, %for.end103.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.3, %mwi_out ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end103.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @efct_device_detach(ptr noundef nonnull %1)
  %n_msix_vec.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %n_msix_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_msix_vec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %if.end.efct_teardown_msix.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.efct_teardown_msix.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_teardown_msix.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %i.010.i) #12
  %arrayidx.i = getelementptr %struct.efct, ptr %1, i32 0, i32 6, i32 %i.010.i
  %call1.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %arrayidx.i) #12
  %inc.i = add nuw i32 %i.010.i, 1
  %6 = ptrtoint ptr %n_msix_vec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_msix_vec.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.efct_teardown_msix.exit_crit_edge

for.body.i.efct_teardown_msix.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_teardown_msix.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

efct_teardown_msix.exit:                          ; preds = %for.body.i.efct_teardown_msix.exit_crit_edge, %if.end.efct_teardown_msix.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %9) #12
  %arrayidx = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %efct_teardown_msix.exit.for.inc_crit_edge, label %if.then3

efct_teardown_msix.exit.for.inc_crit_edge:        ; preds = %efct_teardown_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %efct_teardown_msix.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %11) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %efct_teardown_msix.exit.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %13, null
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %13) #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool2.not.2 = icmp eq ptr %15, null
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %15) #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.3, align 4
  %tobool2.not.3 = icmp eq ptr %17, null
  br i1 %tobool2.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %17) #12
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4, align 4
  %tobool2.not.4 = icmp eq ptr %19, null
  br i1 %tobool2.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then3.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then3.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %19) #12
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then3.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.efct, ptr %1, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.5, align 4
  %tobool2.not.5 = icmp eq ptr %21, null
  br i1 %tobool2.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then3.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then3.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iounmap(ptr noundef nonnull %21) #12
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then3.5, %for.inc.4.for.inc.5_crit_edge
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver_data.i.i, align 4
  %list_entry.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.inc.5.efct_device_free.exit_crit_edge

for.inc.5.efct_device_free.exit_crit_edge:        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_device_free.exit

if.end.i.i.i:                                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list_entry.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %efct_device_free.exit

efct_device_free.exit:                            ; preds = %if.end.i.i.i, %for.inc.5.efct_device_free.exit_crit_edge
  %29 = ptrtoint ptr %list_entry.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry.i, align 4
  %prev.i.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #12
  tail call void @pci_release_regions(ptr noundef %pdev) #12
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %efct_device_free.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @efct_device_alloc() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef 26160, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %list_entry = getelementptr inbounds %struct.efct, ptr %call.i.i.i, i32 0, i32 10
  %0 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list_entry, ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.efct, ptr %call.i.i.i, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list_entry, ptr %prev.i, align 16
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @efct_devices, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_entry, ptr noundef %2, ptr noundef nonnull @efct_devices) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %list_entry, ptr getelementptr inbounds (%struct.list_head, ptr @efct_devices, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @efct_devices, ptr %list_entry, align 4
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev.i, align 16
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list_entry, ptr %2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call.i.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_setup_msix(ptr noundef %efct, i32 noundef %num_intrs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct, align 8
  %call = tail call zeroext i8 @pci_find_capability(ptr noundef %1, i32 noundef 17) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #15
  br label %cleanup31

if.end:                                           ; preds = %entry
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 2
  %4 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %num_intrs, ptr %n_msix_vec, align 4
  %5 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %efct, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %6, i32 noundef %num_intrs, i32 noundef %num_intrs, i32 noundef 12, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end7, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_intrs)
  %cmp1166.not = icmp eq i32 %num_intrs, 0
  br i1 %cmp1166.not, label %for.cond.preheader.cleanup31_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup31_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %efct, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.34, i32 noundef %call.i) #15
  br label %cleanup31

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.067 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.efct, ptr %efct, i32 0, i32 6, i32 %i.067
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %efct, ptr %arrayidx, align 4
  %index = getelementptr %struct.efct, ptr %efct, i32 0, i32 6, i32 %i.067, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %i.067, ptr %index, align 4
  %11 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %efct, align 8
  %call14 = tail call i32 @pci_irq_vector(ptr noundef %12, i32 noundef %i.067) #12
  %call15 = tail call i32 @request_threaded_irq(i32 noundef %call14, ptr noundef nonnull @efct_intr_msix, ptr noundef nonnull @efct_intr_thread, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef %arrayidx) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  %13 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %efct, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.37, i32 noundef %i.067, i32 noundef %call15) #15
  %dec68 = add i32 %i.067, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec68)
  %cmp2469 = icmp sgt i32 %dec68, -1
  br i1 %cmp2469, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  br label %while.body

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, %num_intrs
  br i1 %exitcond.not, label %for.inc.cleanup31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup31_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup31

while.body:                                       ; preds = %while.body.while.body_crit_edge, %cleanup.while.body_crit_edge
  %dec70 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec68, %cleanup.while.body_crit_edge ]
  %15 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %efct, align 8
  %call26 = tail call i32 @pci_irq_vector(ptr noundef %16, i32 noundef %dec70) #12
  %arrayidx28 = getelementptr %struct.efct, ptr %efct, i32 0, i32 6, i32 %dec70
  %call29 = tail call ptr @free_irq(i32 noundef %call26, ptr noundef %arrayidx28) #12
  %dec = add nsw i32 %dec70, -1
  %cmp24 = icmp sgt i32 %dec70, 0
  br i1 %cmp24, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %cleanup.while.end_crit_edge
  %17 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efct, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %18) #12
  br label %cleanup31

cleanup31:                                        ; preds = %while.end, %for.inc.cleanup31_crit_edge, %do.end7, %for.cond.preheader.cleanup31_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end7 ], [ %call15, %while.end ], [ -5, %do.end ], [ %call.i, %for.cond.preheader.cleanup31_crit_edge ], [ 0, %for.inc.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efct_device_attach(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 3
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attached, align 8, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 8
  %instance_index = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 9
  %4 = ptrtoint ptr %instance_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %instance_index, align 8
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %5)
  %6 = load i32, ptr @logmask, align 4
  %logmask = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 15
  %7 = ptrtoint ptr %logmask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %logmask, align 4
  %filter_def = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 21
  %8 = ptrtoint ptr %filter_def to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.43, ptr %filter_def, align 4
  %max_isr_time_msec = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 16
  %9 = ptrtoint ptr %max_isr_time_msec to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %max_isr_time_msec, align 8
  %10 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %efct, align 8
  %device = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3065, i16 %13)
  %switch.selectcmp.i = icmp eq i16 %13, -3065
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.58, ptr @.str.59
  call void @__sanitizer_cov_trace_const_cmp2(i16 -7417, i16 %13)
  %switch.selectcmp2.i = icmp eq i16 %13, -7417
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.57, ptr %switch.select.i
  %model = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 18
  %14 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %switch.select3.i, ptr %model, align 8
  %efct_req_fw_upgrade = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 5
  %15 = ptrtoint ptr %efct_req_fw_upgrade to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %efct_req_fw_upgrade, align 2
  %call3 = tail call ptr @efct_xport_alloc(ptr noundef %efct) #12
  %xport = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %16 = ptrtoint ptr %xport to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %xport, align 8
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efct, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.45) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call i32 @efct_xport_attach(ptr noundef nonnull %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efct, align 8
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.48) #15
  br label %xport_out

if.end22:                                         ; preds = %if.end12
  %21 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xport, align 8
  %call24 = tail call i32 @efct_xport_initialize(ptr noundef %22) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %efct, align 8
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.51) #15
  br label %xport_out

if.end32:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 320) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end32.do.end38_crit_edge, label %if.end.i

if.end32.do.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end38

if.end.i:                                         ; preds = %if.end32
  %efcport.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 13
  %26 = ptrtoint ptr %efcport.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %efcport.i, align 4
  %tt1.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 15
  %27 = call ptr @memcpy(ptr %tt1.i, ptr @efct_libefc_templ, i32 32)
  %28 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %efct, ptr %call7.i.i.i, align 8
  %29 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %efct, align 8
  %pci2.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %pci2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pci2.i, align 4
  %hw.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %call3.i = tail call i64 @efct_get_wwnn(ptr noundef %hw.i) #12
  %def_wwnn.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %def_wwnn.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call3.i, ptr %def_wwnn.i, align 8
  %call5.i = tail call i64 @efct_get_wwpn(ptr noundef %hw.i) #12
  %def_wwpn.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %def_wwpn.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %call5.i, ptr %def_wwpn.i, align 8
  %enable_tgt.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 18
  %34 = ptrtoint ptr %enable_tgt.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %enable_tgt.i, align 1
  %log_level.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 19
  %35 = ptrtoint ptr %log_level.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %log_level.i, align 4
  %sli7.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1
  %sge_supported_length.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 31
  %36 = ptrtoint ptr %sge_supported_length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sge_supported_length.i, align 4
  %sgl_page_sizes.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 32
  %38 = ptrtoint ptr %sgl_page_sizes.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sgl_page_sizes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.not.i.i = icmp eq i32 %39, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %pci.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 1
  %40 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.62, i32 noundef %39) #15
  br label %sli_get_max_sgl.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_sgl_pages.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 33
  %42 = ptrtoint ptr %max_sgl_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_sgl_pages.i.i, align 4
  %44 = shl i32 %43, 8
  %div5.i.i = and i32 %44, 268435200
  br label %sli_get_max_sgl.exit.i

sli_get_max_sgl.exit.i:                           ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %div5.i.i, %if.end.i.i ]
  %mul.i = mul i32 %retval.0.i.i, %37
  %conv.i = zext i32 %mul.i to i64
  %max_xfer_size.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %max_xfer_size.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv.i, ptr %max_xfer_size.i, align 8
  %sli11.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %sli11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %sli7.i, ptr %sli11.i, align 8
  %fcf_indicator.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 8
  %47 = ptrtoint ptr %fcf_indicator.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %fcf_indicator.i, align 2
  %conv13.i = zext i16 %48 to i32
  %fcfi.i = getelementptr inbounds %struct.efc, ptr %call7.i.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %fcfi.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv13.i, ptr %fcfi.i, align 4
  %call14.i = tail call i32 @efcport_init(ptr noundef nonnull %call7.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.cond.preheader, label %do.end.i

for.cond.preheader:                               ; preds = %sli_get_max_sgl.exit.i
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 2
  %50 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_msix_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp105.not = icmp eq i32 %51, 0
  br i1 %cmp105.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.do.body42_crit_edge

for.cond.preheader.do.body42_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body42

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end.i:                                         ; preds = %sli_get_max_sgl.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %pci2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pci2.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60) #15
  br label %do.end38

do.end38:                                         ; preds = %do.end.i, %if.end32.do.end38_crit_edge
  %retval.0.i100.ph = phi i32 [ %call14.i, %do.end.i ], [ -12, %if.end32.do.end38_crit_edge ]
  %54 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %efct, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.54) #15
  %56 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xport, align 8
  tail call void @efct_xport_detach(ptr noundef %57) #12
  br label %xport_out

do.body42:                                        ; preds = %do.end52.do.body42_crit_edge, %for.cond.preheader.do.body42_crit_edge
  %i.0106 = phi i32 [ %inc, %do.end52.do.body42_crit_edge ], [ 0, %for.cond.preheader.do.body42_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_device_attach.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_device_attach, %if.then47)) #12
          to label %do.end52 [label %if.then47], !srcloc !239

if.then47:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %58 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %efct, align 8
  %dev49 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_device_attach.__UNIQUE_ID_ddebug315, ptr noundef %dev49, ptr noundef nonnull @.str.56, i32 noundef %i.0106) #12
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body42
  %60 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %efct, align 8
  %call54 = tail call i32 @pci_irq_vector(ptr noundef %61, i32 noundef %i.0106) #12
  tail call void @enable_irq(i32 noundef %call54) #12
  %inc = add nuw i32 %i.0106, 1
  %62 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %n_msix_vec, align 4
  %cmp = icmp ult i32 %inc, %63
  br i1 %cmp, label %do.end52.do.body42_crit_edge, label %do.end52.for.end_crit_edge

do.end52.for.end_crit_edge:                       ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.end52.do.body42_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

for.end:                                          ; preds = %do.end52.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %64 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %attached, align 8
  %65 = ptrtoint ptr %efct_req_fw_upgrade to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %efct_req_fw_upgrade, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool57.not = icmp eq i8 %66, 0
  br i1 %tobool57.not, label %for.end.cleanup_crit_edge, label %if.then58

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then58:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @efct_request_firmware_update(ptr noundef %efct)
  br label %cleanup

xport_out:                                        ; preds = %do.end38, %do.end29, %do.end19
  %rc.0 = phi i32 [ %call14, %do.end19 ], [ %call24, %do.end29 ], [ %retval.0.i100.ph, %do.end38 ]
  %67 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xport, align 8
  tail call void @efct_xport_free(ptr noundef %68) #12
  %69 = ptrtoint ptr %xport to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %xport, align 8
  br label %cleanup

cleanup:                                          ; preds = %xport_out, %if.then58, %for.end.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then58 ], [ 0, %for.end.cleanup_crit_edge ], [ %rc.0, %xport_out ], [ -12, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_teardown_msix(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 2
  %0 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_msix_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp9.not = icmp eq i32 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %efct, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %i.010) #12
  %arrayidx = getelementptr %struct.efct, ptr %efct, i32 0, i32 6, i32 %i.010
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %arrayidx) #12
  %inc = add nuw i32 %i.010, 1
  %4 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_msix_vec, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %efct, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_device_free(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %efct, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %list_entry = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_entry) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list_entry, align 4
  %prev.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %efct) #12
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @efct_intr_msix(i32 noundef %irq, ptr nocapture noundef readnone %handle) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_intr_thread(i32 noundef %irq, ptr nocapture noundef readonly %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %hw = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  %index = getelementptr inbounds %struct.efct_intr_context, ptr %handle, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %max_isr_time_msec = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %max_isr_time_msec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_isr_time_msec, align 8
  %call = tail call i32 @efct_hw_process(ptr noundef %hw, i32 noundef %3, i32 noundef %5) #12
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_process(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efct_xport_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_xport_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_xport_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_request_firmware_update(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  %dma.i = alloca %struct.efc_dma, align 4
  %result.i = alloca %struct.efct_fw_write_result, align 4
  %file_name = alloca [256 x i8], align 1
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %file_name) #12
  %0 = call ptr @memset(ptr %file_name, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !241
  %model = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 18
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %model, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %file_name, i32 noundef 256, ptr noundef nonnull @.str.65, ptr noundef %3)
  %4 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call2 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %file_name, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_request_firmware_update.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_request_firmware_update, %if.then7)) #12
          to label %cleanup [label %if.then7], !srcloc !239

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %efct, align 8
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_request_firmware_update.__UNIQUE_ID_ddebug316, ptr noundef %dev9, ptr noundef nonnull @.str.67, ptr noundef nonnull %file_name) #12
  br label %cleanup

if.end11:                                         ; preds = %entry
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %fw_name = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19, i32 1, i32 21
  %revision = getelementptr inbounds %struct.efct_hw_grp_hdr, ptr %11, i32 0, i32 5
  %call16 = call i32 @strnlen(ptr noundef %revision, i32 noundef 16) #18
  %call17 = call i32 @strncmp(ptr noundef %fw_name, ptr noundef %revision, i32 noundef %call16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body20, label %do.end41

do.body20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_request_firmware_update.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_request_firmware_update, %if.then32)) #12
          to label %exit [label %if.then32], !srcloc !239

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %efct, align 8
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_request_firmware_update.__UNIQUE_ID_ddebug317, ptr noundef %dev34, ptr noundef nonnull @.str.68) #12
  br label %exit

do.end41:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %efct, align 8
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev43, ptr noundef nonnull @.str.69, ptr noundef %fw_name, ptr noundef %revision) #15
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %data51 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data51, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dma.i) #12
  %22 = getelementptr inbounds %struct.efc_dma, ptr %dma.i, i32 0, i32 2
  %23 = getelementptr inbounds %struct.efc_dma, ptr %dma.i, i32 0, i32 3
  %24 = call ptr @memset(ptr %dma.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %result.i) #12
  %25 = getelementptr inbounds i8, ptr %result.i, i32 4
  %26 = call ptr @memset(ptr %25, i32 255, i32 64)
  %27 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %result.i, align 4
  call void @__init_swait_queue_head(ptr noundef %25, ptr noundef nonnull @.str.88, ptr noundef nonnull @init_completion.__key) #12
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 65536, ptr %23, align 4
  %29 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %efct, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 65536, ptr noundef %22, i32 noundef 3264, i32 noundef 0) #12
  %31 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i.i, ptr %dma.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %efct_firmware_write.exit.thread, label %while.cond.preheader.i

efct_firmware_write.exit.thread:                  ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %result.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dma.i) #12
  br label %do.end57

while.cond.preheader.i:                           ; preds = %do.end41
  %actual_xfer.i = getelementptr inbounds %struct.efct_fw_write_result, ptr %result.i, i32 0, i32 2
  %status.i = getelementptr inbounds %struct.efct_fw_write_result, ptr %result.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not48.i = icmp eq i32 %21, 0
  br i1 %cmp.not48.i, label %while.cond.preheader.i.efct_firmware_write.exit_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.efct_firmware_write.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_firmware_write.exit

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %hw.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %change_status22.i = getelementptr inbounds %struct.efct_fw_write_result, ptr %result.i, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %fw_change_status.0 = phi i8 [ 0, %while.body.lr.ph.i ], [ %fw_change_status.1, %if.end23.i.while.body.i_crit_edge ]
  %last.051.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %last.1.i, %if.end23.i.while.body.i_crit_edge ]
  %offset.050.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i, %if.end23.i.while.body.i_crit_edge ]
  %bytes_left.049.i = phi i32 [ %21, %while.body.lr.ph.i ], [ %sub.i, %if.end23.i.while.body.i_crit_edge ]
  %32 = call i32 @llvm.umin.i32(i32 %bytes_left.049.i, i32 65536) #12
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %offset.050.i
  %35 = call ptr @memcpy(ptr %34, ptr %add.ptr.i, i32 %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65537, i32 %bytes_left.049.i)
  %cmp7.i = icmp ult i32 %bytes_left.049.i, 65537
  %last.1.i = select i1 %cmp7.i, i32 1, i32 %last.051.i
  %call10.i = call i32 @efct_hw_firmware_write(ptr noundef %hw.i, ptr noundef nonnull %dma.i, i32 noundef %32, i32 noundef %offset.050.i, i32 noundef %last.1.i, ptr noundef nonnull @efct_fw_write_cb, ptr noundef nonnull %result.i) #12
  %call12.i = call i32 @wait_for_completion_interruptible(ptr noundef nonnull %result.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.not.i, label %if.end15.i, label %while.body.i.efct_firmware_write.exit_crit_edge

while.body.i.efct_firmware_write.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_firmware_write.exit

if.end15.i:                                       ; preds = %while.body.i
  %36 = ptrtoint ptr %actual_xfer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %actual_xfer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp16.i = icmp eq i32 %37, 0
  br i1 %cmp16.i, label %if.end15.i.efct_firmware_write.exit_crit_edge, label %lor.lhs.false.i

if.end15.i.efct_firmware_write.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_firmware_write.exit

lor.lhs.false.i:                                  ; preds = %if.end15.i
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp17.not.i = icmp eq i32 %39, 0
  br i1 %cmp17.not.i, label %if.end19.i, label %lor.lhs.false.i.efct_firmware_write.exit_crit_edge

lor.lhs.false.i.efct_firmware_write.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_firmware_write.exit

if.end19.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last.1.i)
  %tobool20.not.i = icmp eq i32 %last.1.i, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %change_status22.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %change_status22.i, align 4
  %conv.i = trunc i32 %41 to i8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %fw_change_status.1 = phi i8 [ %fw_change_status.0, %if.end19.i.if.end23.i_crit_edge ], [ %conv.i, %if.then21.i ]
  %sub.i = sub i32 %bytes_left.049.i, %37
  %add.i = add i32 %37, %offset.050.i
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %if.end23.i.efct_firmware_write.exit_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end23.i.efct_firmware_write.exit_crit_edge:    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_firmware_write.exit

efct_firmware_write.exit:                         ; preds = %if.end23.i.efct_firmware_write.exit_crit_edge, %lor.lhs.false.i.efct_firmware_write.exit_crit_edge, %if.end15.i.efct_firmware_write.exit_crit_edge, %while.body.i.efct_firmware_write.exit_crit_edge, %while.cond.preheader.i.efct_firmware_write.exit_crit_edge
  %fw_change_status.2 = phi i8 [ 0, %while.cond.preheader.i.efct_firmware_write.exit_crit_edge ], [ %fw_change_status.0, %while.body.i.efct_firmware_write.exit_crit_edge ], [ %fw_change_status.0, %lor.lhs.false.i.efct_firmware_write.exit_crit_edge ], [ %fw_change_status.1, %if.end23.i.efct_firmware_write.exit_crit_edge ], [ %fw_change_status.0, %if.end15.i.efct_firmware_write.exit_crit_edge ]
  %tobool53.not = phi i1 [ true, %while.cond.preheader.i.efct_firmware_write.exit_crit_edge ], [ false, %while.body.i.efct_firmware_write.exit_crit_edge ], [ false, %lor.lhs.false.i.efct_firmware_write.exit_crit_edge ], [ true, %if.end23.i.efct_firmware_write.exit_crit_edge ], [ false, %if.end15.i.efct_firmware_write.exit_crit_edge ]
  %rc.0.i = phi i32 [ 0, %while.cond.preheader.i.efct_firmware_write.exit_crit_edge ], [ -6, %while.body.i.efct_firmware_write.exit_crit_edge ], [ -14, %lor.lhs.false.i.efct_firmware_write.exit_crit_edge ], [ 0, %if.end23.i.efct_firmware_write.exit_crit_edge ], [ -14, %if.end15.i.efct_firmware_write.exit_crit_edge ]
  %42 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %efct, align 8
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %43, i32 0, i32 44
  %44 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %23, align 4
  %46 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma.i, align 4
  %48 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %22, align 4
  call void @dma_free_attrs(ptr noundef %dev27.i, i32 noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %result.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dma.i) #12
  br i1 %tobool53.not, label %do.end63, label %efct_firmware_write.exit.do.end57_crit_edge

efct_firmware_write.exit.do.end57_crit_edge:      ; preds = %efct_firmware_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

do.end57:                                         ; preds = %efct_firmware_write.exit.do.end57_crit_edge, %efct_firmware_write.exit.thread
  %retval.0.i410 = phi i32 [ -12, %efct_firmware_write.exit.thread ], [ %rc.0.i, %efct_firmware_write.exit.do.end57_crit_edge ]
  %50 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %efct, align 8
  %dev59 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.71, i32 noundef %retval.0.i410) #15
  br label %exit

do.end63:                                         ; preds = %efct_firmware_write.exit
  %52 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %efct, align 8
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev65, ptr noundef nonnull @.str.74) #15
  %54 = zext i8 %fw_change_status.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i8 %fw_change_status.2, label %do.end86 [
    i8 0, label %do.end68
    i8 1, label %do.end74
    i8 2, label %do.end63.do.end80_crit_edge
    i8 3, label %do.end63.do.end80_crit_edge11
  ]

do.end63.do.end80_crit_edge11:                    ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

do.end63.do.end80_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

do.end68:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %efct, align 8
  %dev70 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.77) #15
  br label %exit

do.end74:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %efct, align 8
  %dev76 = getelementptr inbounds %struct.pci_dev, ptr %58, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev76, ptr noundef nonnull @.str.80) #15
  br label %exit

do.end80:                                         ; preds = %do.end63.do.end80_crit_edge, %do.end63.do.end80_crit_edge11
  %59 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %efct, align 8
  %dev82 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82, ptr noundef nonnull @.str.83) #15
  call fastcc void @efct_fw_reset(ptr noundef %efct)
  br label %exit

do.end86:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %fw_change_status.2 to i32
  %61 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %efct, align 8
  %dev88 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev88, ptr noundef nonnull @.str.86, i32 noundef %conv) #15
  br label %exit

exit:                                             ; preds = %do.end86, %do.end80, %do.end74, %do.end68, %do.end57, %if.then32, %do.body20
  %63 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %64) #12
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.then7, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %file_name) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_xport_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_xport_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efct_get_wwnn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efct_get_wwpn(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efcport_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_new_nport(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_tgt_del_nport(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_new_initiator(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_del_initiator(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_issue_mbox_rqst(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_els_hw_srrs_send(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_efc_bls_send(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_efc_hw_sequence_free(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_fw_reset(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %xport = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %0 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xport, align 8
  %pprev.i.i = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 16, i32 0, i32 1
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %stats_timer = getelementptr inbounds %struct.efct_xport, ptr %1, i32 0, i32 16
  %call3 = tail call i32 @del_timer(ptr noundef %stats_timer) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 19
  %call4 = tail call i32 @efct_hw_reset(ptr noundef %hw, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %4 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efct, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  br i1 %tobool5.not, label %do.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.89) #15
  br label %return

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev11, ptr noundef nonnull @.str.92) #15
  tail call fastcc void @efct_device_detach(ptr noundef %efct)
  %call13 = tail call fastcc i32 @efct_device_attach(ptr noundef %efct)
  br label %return

return:                                           ; preds = %do.end9, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_firmware_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_fw_write_cb(i32 noundef %status, i32 noundef %actual_write_length, i32 noundef %change_status, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %status1 = getelementptr inbounds %struct.efct_fw_write_result, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %status1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %status1, align 4
  %actual_xfer = getelementptr inbounds %struct.efct_fw_write_result, ptr %arg, i32 0, i32 2
  %1 = ptrtoint ptr %actual_xfer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %actual_write_length, ptr %actual_xfer, align 4
  %change_status2 = getelementptr inbounds %struct.efct_fw_write_result, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %change_status2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %change_status, ptr %change_status2, align 4
  tail call void @complete(ptr noundef %arg) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_hw_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_device_detach(ptr noundef %efct) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %efct, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %attached = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 3
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %attached, align 8, !range !240
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %xport = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 12
  %2 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xport, align 8
  %call2 = tail call i32 (ptr, i32, ...) @efct_xport_control(ptr noundef %3, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %do.end7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.97) #15
  br label %if.end8

if.end8:                                          ; preds = %do.end7, %if.end.if.end8_crit_edge
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 2
  %6 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_msix_vec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not = icmp eq i32 %7, 0
  br i1 %cmp1.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.02 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %8 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %efct, align 8
  %call10 = tail call i32 @pci_irq_vector(ptr noundef %9, i32 noundef %i.02) #12
  tail call void @disable_irq(i32 noundef %call10) #12
  %inc = add nuw i32 %i.02, 1
  %10 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_msix_vec, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end8.for.end_crit_edge
  %12 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xport, align 8
  tail call void @efct_xport_detach(ptr noundef %13) #12
  %14 = ptrtoint ptr %xport to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xport, align 8
  tail call void @efct_xport_free(ptr noundef %15) #12
  %16 = ptrtoint ptr %xport to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %xport, align 8
  %efcport = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 13
  %17 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %efcport, align 4
  tail call void @efcport_destroy(ptr noundef %18) #12
  %19 = ptrtoint ptr %efcport to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %efcport, align 4
  tail call void @kfree(ptr noundef %20) #12
  %21 = ptrtoint ptr %attached to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %attached, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_xport_control(ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efcport_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_pci_io_error_detected(ptr noundef %pdev, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %state, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %do.body.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_device_prep_for_recover.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_pci_io_error_detected, %if.then4.i)) #12
          to label %do.end.i [label %if.then4.i], !srcloc !239

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_device_prep_for_recover.__UNIQUE_ID_ddebug320, ptr noundef %dev.i, ptr noundef nonnull @.str.102) #12
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %hw.i = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 19
  tail call void @efct_hw_io_abort_all(ptr noundef %hw.i) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @efct_device_prep_for_reset(ptr noundef %1, ptr noundef %pdev)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @efct_device_detach(ptr noundef %1)
  br label %sw.epilog

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_pci_io_error_detected.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_pci_io_error_detected, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !239

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_pci_io_error_detected.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.100, i32 noundef %state) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call fastcc void @efct_device_prep_for_reset(ptr noundef %1, ptr noundef %pdev)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb1, %do.end.i, %sw.bb.sw.epilog_crit_edge
  %rc.0 = phi i32 [ 3, %do.end ], [ 4, %sw.bb2 ], [ 3, %sw.bb1 ], [ 2, %sw.bb.sw.epilog_crit_edge ], [ 2, %do.end.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @efct_pci_io_slot_reset(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_enable_device_mem(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_save_state(ptr noundef %pdev) #12
  tail call void @pci_set_master(ptr noundef %pdev) #12
  %n_msix_vec = getelementptr inbounds %struct.efct, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %n_msix_vec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_msix_vec, align 4
  %call3 = tail call fastcc i32 @efct_setup_msix(ptr noundef %1, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %do.end8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.108, i32 noundef %call3) #15
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %if.end.if.end11_crit_edge
  tail call fastcc void @efct_device_detach(ptr noundef %1)
  %call13 = tail call fastcc i32 @efct_device_attach(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ 4, %do.end ], [ 5, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @efct_pci_io_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @efct_device_detach(ptr noundef %1)
  %call2 = tail call fastcc i32 @efct_device_attach(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @efct_device_prep_for_reset(ptr noundef %efct, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %efct, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efct_device_prep_for_reset.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efct_device_prep_for_reset, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !239

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %efct, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @efct_device_prep_for_reset.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.104) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call fastcc void @efct_device_detach(ptr noundef nonnull %efct)
  %n_msix_vec.i = getelementptr inbounds %struct.efct, ptr %efct, i32 0, i32 2
  %2 = ptrtoint ptr %n_msix_vec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_msix_vec.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %do.end.efct_teardown_msix.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.efct_teardown_msix.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_teardown_msix.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %efct, align 8
  %call.i = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef %i.010.i) #12
  %arrayidx.i = getelementptr %struct.efct, ptr %efct, i32 0, i32 6, i32 %i.010.i
  %call1.i = tail call ptr @free_irq(i32 noundef %call.i, ptr noundef %arrayidx.i) #12
  %inc.i = add nuw i32 %i.010.i, 1
  %6 = ptrtoint ptr %n_msix_vec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_msix_vec.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.efct_teardown_msix.exit_crit_edge

for.body.i.efct_teardown_msix.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %efct_teardown_msix.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

efct_teardown_msix.exit:                          ; preds = %for.body.i.efct_teardown_msix.exit_crit_edge, %do.end.efct_teardown_msix.exit_crit_edge
  %8 = ptrtoint ptr %efct to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %efct, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %9) #12
  br label %if.end6

if.end6:                                          ; preds = %efct_teardown_msix.exit, %entry.if.end6_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_hw_io_abort_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @efct_scsi_release_fc_transport() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_driver_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_tgt_driver_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @efct_scsi_reg_fc_transport() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !91, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !116, !118, !120, !121, !122, !123, !125, !126, !127, !128, !129, !131, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @efct_devices, !1, !"efct_devices", i1 false, i1 false}
!1 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 13, i32 1}
!2 = !{ptr @__param_logmask, !3, !"__param_logmask", i1 false, i1 false}
!3 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 16, i32 1}
!4 = !{ptr @__UNIQUE_ID_logmasktype313, !3, !"__UNIQUE_ID_logmasktype313", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_logmask314, !6, !"__UNIQUE_ID_logmask314", i1 false, i1 false}
!6 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 17, i32 1}
!7 = !{ptr @__initcall__kmod_efct__322_777_efct_init6, !8, !"__initcall__kmod_efct__322_777_efct_init6", i1 false, i1 false}
!8 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 777, i32 1}
!9 = !{ptr @__exitcall_efct_exit, !10, !"__exitcall_efct_exit", i1 false, i1 false}
!10 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 778, i32 1}
!11 = !{ptr @__UNIQUE_ID_version323, !12, !"__UNIQUE_ID_version323", i1 false, i1 false}
!12 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 779, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file324, !18, !"__UNIQUE_ID_file324", i1 false, i1 false}
!18 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 780, i32 1}
!19 = !{ptr @__UNIQUE_ID_license325, !18, !"__UNIQUE_ID_license325", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author326, !21, !"__UNIQUE_ID_author326", i1 false, i1 false}
!21 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 781, i32 1}
!22 = !{ptr @logmask, !23, !"logmask", i1 false, i1 false}
!23 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 15, i32 12}
!24 = !{ptr @__param_str_logmask, !3, !"__param_str_logmask", i1 false, i1 false}
!25 = !{ptr @efct_pci_driver, !26, !"efct_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 743, i32 26}
!27 = !{ptr @efct_pci_table, !28, !"efct_pci_table", i1 false, i1 false}
!28 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 472, i32 29}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 487, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @efct_pci_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @efct_pci_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 497, i32 3}
!39 = !{ptr @efct_pci_probe._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @efct_pci_probe._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 503, i32 3}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @efct_pci_probe._entry.11, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @efct_pci_probe._entry_ptr.14, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 510, i32 3}
!48 = !{ptr @efct_pci_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @efct_pci_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 517, i32 3}
!52 = !{ptr @efct_pci_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @efct_pci_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 546, i32 3}
!56 = !{ptr @efct_pci_probe._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @efct_pci_probe._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 552, i32 3}
!60 = !{ptr @efct_pci_probe._entry.24, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @efct_pci_probe._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 563, i32 3}
!64 = !{ptr @efct_pci_probe._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @efct_pci_probe._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 568, i32 3}
!68 = !{ptr @efct_pci_probe.__UNIQUE_ID_ddebug318, !67, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 429, i32 3}
!71 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @efct_setup_msix._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @efct_setup_msix._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 440, i32 3}
!76 = !{ptr @efct_setup_msix._entry.33, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @efct_setup_msix._entry_ptr.35, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 455, i32 4}
!80 = !{ptr @efct_setup_msix._entry.36, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @efct_setup_msix._entry_ptr.38, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 141, i32 3}
!84 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @efct_device_attach._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @efct_device_attach._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 145, i32 43}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 145, i32 54}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 149, i32 21}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 159, i32 3}
!95 = !{ptr @efct_device_attach._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @efct_device_attach._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 166, i32 3}
!99 = !{ptr @efct_device_attach._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @efct_device_attach._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 172, i32 3}
!103 = !{ptr @efct_device_attach._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @efct_device_attach._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 178, i32 3}
!107 = !{ptr @efct_device_attach._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @efct_device_attach._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 183, i32 3}
!111 = !{ptr @efct_device_attach.__UNIQUE_ID_ddebug315, !110, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 129, i32 37}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 130, i32 37}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 131, i32 20}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 118, i32 3}
!120 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @efct_efclib_config._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @efct_efclib_config._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/elx/efct/../libefc_sli/sli4.h", i32 3744, i32 3}
!125 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @sli_get_max_sgl._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @sli_get_max_sgl._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @efct_libefc_templ, !130, !"efct_libefc_templ", i1 false, i1 false}
!130 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 19, i32 40}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 333, i32 27}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 337, i32 3}
!135 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @efct_request_firmware_update.__UNIQUE_ID_ddebug316, !134, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 345, i32 3}
!139 = !{ptr @efct_request_firmware_update.__UNIQUE_ID_ddebug317, !138, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 350, i32 2}
!142 = !{ptr @efct_request_firmware_update._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @efct_request_firmware_update._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 355, i32 3}
!146 = !{ptr @efct_request_firmware_update._entry.70, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @efct_request_firmware_update._entry_ptr.72, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 359, i32 2}
!150 = !{ptr @efct_request_firmware_update._entry.73, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @efct_request_firmware_update._entry_ptr.75, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 362, i32 3}
!154 = !{ptr @efct_request_firmware_update._entry.76, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @efct_request_firmware_update._entry_ptr.78, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 365, i32 3}
!158 = !{ptr @efct_request_firmware_update._entry.79, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @efct_request_firmware_update._entry_ptr.81, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 370, i32 3}
!162 = !{ptr @efct_request_firmware_update._entry.82, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @efct_request_firmware_update._entry_ptr.84, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.86, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 375, i32 3}
!166 = !{ptr @efct_request_firmware_update._entry.85, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @efct_request_firmware_update._entry_ptr.87, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @init_completion.__key, !169, !"__key", i1 false, i1 false}
!169 = !{!"../include/linux/completion.h", i32 87, i32 2}
!170 = !{ptr @.str.88, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 315, i32 3}
!173 = !{ptr @.str.90, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @efct_fw_reset._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @efct_fw_reset._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 319, i32 2}
!178 = !{ptr @efct_fw_reset._entry.91, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @efct_fw_reset._entry_ptr.93, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 209, i32 3}
!182 = !{ptr @.str.95, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @efct_device_detach._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @efct_device_detach._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.97, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 214, i32 3}
!187 = !{ptr @efct_device_detach._entry.96, !186, !"_entry", i1 false, i1 false}
!188 = !{ptr @efct_device_detach._entry_ptr.98, !186, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @efct_pci_err_handler, !190, !"efct_pci_err_handler", i1 false, i1 false}
!190 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 737, i32 34}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 681, i32 3}
!193 = !{ptr @.str.100, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @efct_pci_io_error_detected.__UNIQUE_ID_ddebug321, !192, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!195 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 641, i32 3}
!197 = !{ptr @.str.102, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @efct_device_prep_for_recover.__UNIQUE_ID_ddebug320, !196, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 628, i32 3}
!201 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @efct_device_prep_for_reset.__UNIQUE_ID_ddebug319, !200, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!203 = !{ptr @.str.105, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 698, i32 3}
!205 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @efct_pci_io_slot_reset._entry, !204, !"_entry", i1 false, i1 false}
!207 = !{ptr @efct_pci_io_slot_reset._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 713, i32 3}
!210 = !{ptr @efct_pci_io_slot_reset._entry.107, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @efct_pci_io_slot_reset._entry_ptr.109, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 758, i32 3}
!214 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @efct_init._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @efct_init._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.113, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 764, i32 3}
!219 = !{ptr @efct_init._entry.112, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @efct_init._entry_ptr.114, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.115, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 39, i32 3}
!223 = !{ptr @.str.116, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @efct_device_init._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @efct_device_init._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/elx/efct/efct_driver.c", i32 45, i32 3}
!228 = !{ptr @efct_device_init._entry.117, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @efct_device_init._entry_ptr.119, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i64 2148970473, i64 2148970478, i64 2148970491, i64 2148970535, i64 2148970569, i64 2148970590}
!240 = !{i8 0, i8 2}
!241 = !{!"auto-init"}
